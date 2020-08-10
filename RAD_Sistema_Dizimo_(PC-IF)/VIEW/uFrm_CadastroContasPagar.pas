unit uFrm_CadastroContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm_CadastroBasico, Data.DB,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.ToolWin,
  Datasnap.DBClient, tpEdit, Vcl.ExtCtrls;

type
  Tfrm_CadastroContasPagar = class(Tfrm_CadastroBasico)
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edt_Documento: TEdit;
    edt_Descricao: TEdit;
    edt_Parcela: TEdit;
    edt_Variacao: TEdit;
    dbg_Parcelas: TDBGrid;
    edt_ValorCompra: TtpEdit;
    btn_GeraParcelas: TButton;
    cds_Parcelas: TClientDataSet;
    ds_Parcelas: TDataSource;
    cds_ParcelasParcela: TIntegerField;
    cds_ParcelasValor: TCurrencyField;
    cds_ParcelasVencimento: TDateField;
    btn_LimpaParcelas: TButton;
    edt_DataCompra: TtpEdit;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure btn_FiltrarClick(Sender: TObject);
    procedure acl_PesquisarExecute(Sender: TObject);
    procedure acl_GravarExecute(Sender: TObject);
    procedure dbg_ParcelasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure acl_ExcluirExecute(Sender: TObject);
    procedure btn_GeraParcelasClick(Sender: TObject);
    procedure btn_LimpaParcelasClick(Sender: TObject);
    procedure acl_EditarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastroContasPagar: Tfrm_CadastroContasPagar;

implementation

{$R *.dfm}

uses uDM_Dados, uFuncoes;

procedure Tfrm_CadastroContasPagar.acl_EditarExecute(Sender: TObject);
begin
  Application.MessageBox('O Documento não pode ser Alterado, apenas Excluído!','Informação',0+64);
end;

procedure Tfrm_CadastroContasPagar.acl_ExcluirExecute(Sender: TObject);
begin
 if Application.MessageBox('Deseja realmente cancelar o documento?','Pergunta',MB_YESNO+MB_ICONQUESTION) = mrYes then
 begin
   try
     TClientDataSet(ds_Tabela.DataSet).Edit;
     DM_Dados.cds_Contas_Pagarstatus.AsString := 'C';
     TClientDataSet(ds_Tabela.DataSet).ApplyUpdates(0);
     Application.MessageBox('Documento cancelado com sucesso!','Informação',0+64);
     TClientDataSet(ds_Tabela.DataSet).Open;
   except on E : Exception do
     raise Exception.Create('Erro ao excluir registro: '+E.Message);
   end;
 end;
end;

procedure Tfrm_CadastroContasPagar.acl_GravarExecute(Sender: TObject);
var
  I : Integer;
begin
  if cds_Parcelas.IsEmpty then
  begin
    Application.MessageBox('Você precisa gerar a(s) parcela(s).','Atenção',MB_OK+MB_ICONWARNING);
    edt_Documento.SetFocus;
    Abort;
  end;

  try
    with DM_Dados do
    begin
      cds_Parcelas.First;
      while not cds_Parcelas.Eof do
      begin
        if ds_Tabela.State in [dsBrowse,dsInactive] then
          cds_Contas_Pagar.Insert;

        cds_Contas_Pagarid.AsInteger             := GetId('ID','CONTAS_PAGAR');
        cds_Contas_Pagarnumero_doc.AsString      := trim(edt_Documento.Text);
        cds_Contas_Pagardescricao.AsString       := trim(edt_Descricao.Text);
        cds_Contas_Pagarparcela.AsInteger        := cds_ParcelasParcela.AsInteger;
        cds_Contas_Pagarvlr_parcela.AsCurrency   := cds_ParcelasValor.AsCurrency;
        cds_Contas_Pagarvlr_compra.AsCurrency    := StringParaFloat(edt_ValorCompra.Text);
        cds_Contas_Pagardt_compra.AsDateTime     := StrToDate(edt_DataCompra.Text);
        cds_Contas_Pagardt_vencto.AsDateTime     := cds_ParcelasVencimento.AsDateTime;
        cds_Contas_Pagarstatus.AsString          := 'A';
        cds_Contas_Pagarvlr_abatido.AsCurrency   := 0;
        cds_Contas_Pagardt_cadastro.AsDateTime   := now;
        cds_Contas_Pagar.Post;
        cds_Contas_Pagar.ApplyUpdates(0);
        cds_Parcelas.Next;
      end;
    end;
    Application.MessageBox('Registro inserido com sucesso!','Informação',MB_OK+MB_ICONINFORMATION);
    TClientDataSet(ds_Tabela.DataSet).Open;

    //Limpar
    for I := 0 to ComponentCount -1 do
    begin
      if Components[i] is TCustomEdit then
        TCustomEdit(Components[i]).Clear;
    end;
    if PageControl1.ActivePage = tbs_Cadastro then
    begin
      tbs_Cadastro.TabVisible  := false;
      tbs_Pesquisar.TabVisible := true;
      PageControl1.ActivePage := tbs_Pesquisar;
    end;
    edt_Pesquisar.SetFocus;
    cds_Parcelas.EmptyDataSet;
  except on E : Exception do
    raise Exception.Create('Erro ao salvar registro: '+E.Message);
  end;
end;

procedure Tfrm_CadastroContasPagar.acl_PesquisarExecute(Sender: TObject);
begin
  inherited;
  with DM_Dados do
  begin
    cds_Contas_Pagar.Close;
    cds_Contas_Pagar.CommandText := 'SELECT * FROM CONTAS_PAGAR';
    cds_Contas_Pagar.Open;
  end;
end;

procedure Tfrm_CadastroContasPagar.btn_FiltrarClick(Sender: TObject);
begin
  if edt_Pesquisar.Text = '' then
  begin
    Application.MessageBox('Informe um valor a ser pesquisado ou clique em Pesquisar.','Atenção',MB_OK+MB_ICONWARNING);
    edt_Pesquisar.SetFocus;
    Abort;
  end;

  with DM_Dados do
  begin
    cds_Contas_Pagar.Close;
    case cbx_Pesquisar.ItemIndex of
      0 : cds_Contas_Pagar.CommandText := 'SELECT * FROM CONTAS_PAGAR NUMERO_DOC NOME  LIKE '+QuotedStr('%'+edt_Pesquisar.Text+'%');
      1 : cds_Contas_Pagar.CommandText := 'SELECT * FROM CONTAS_PAGAR WHERE DESCRICAO LIKE '+QuotedStr('%'+edt_Pesquisar.Text+'%');
    end;
    cds_Contas_Pagar.Open;
  end;

end;

procedure Tfrm_CadastroContasPagar.btn_GeraParcelasClick(Sender: TObject);
var
  I: Integer;
begin
  if edt_Documento.Text = '' then
  begin
    Application.MessageBox('Preencha o campo documento.','Atenção',MB_OK+MB_ICONWARNING);
    edt_Documento.SetFocus;
    Abort;
  end;
  if edt_Descricao.Text = '' then
  begin
    Application.MessageBox('Preencha o campo descrição.','Atenção',MB_OK+MB_ICONWARNING);
    edt_Descricao.SetFocus;
    Abort;
  end;
  if edt_Parcela.Text = '' then
  begin
    Application.MessageBox('Preencha o campo quantidade de parcela(s).','Atenção',MB_OK+MB_ICONWARNING);
    edt_Parcela.SetFocus;
    Abort;
  end;
  if edt_Variacao.Text = '' then
  begin
    Application.MessageBox('Preencha o campo variação da(s) parcela(s).','Atenção',MB_OK+MB_ICONWARNING);
    edt_Variacao.SetFocus;
    Abort;
  end;
  if StringParaFloat(edt_ValorCompra.Text) = 0 then
  begin
    Application.MessageBox('Preencha o campo valor da compra.','Atenção',MB_OK+MB_ICONWARNING);
    edt_ValorCompra.SetFocus;
    Abort;
  end;
  if edt_DataCompra.Text = '' then
  begin
    Application.MessageBox('Preencha o campo data da compra.','Atenção',MB_OK+MB_ICONWARNING);
    edt_DataCompra.SetFocus;
    Abort;
  end;

  cds_Parcelas.EmptyDataSet;
  for I := 1 to StrToInt(edt_Parcela.Text) do
  begin
    cds_Parcelas.Insert;
    cds_ParcelasParcela.AsInteger     := i;
    cds_ParcelasValor.AsCurrency      := StringParaFloat(edt_ValorCompra.Text) / StrToInt(edt_Parcela.Text);
    cds_ParcelasVencimento.AsDateTime := StrToDate(edt_DataCompra.Text) + (StrToInt(edt_Variacao.Text) * i);
    cds_Parcelas.Post;
  end;
end;

procedure Tfrm_CadastroContasPagar.btn_LimpaParcelasClick(Sender: TObject);
begin
  cds_Parcelas.EmptyDataSet;
end;

procedure Tfrm_CadastroContasPagar.dbg_ParcelasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ZebrarDBGrid(ds_Parcelas,dbg_Parcelas,State,Rect,Column);
end;

end.
