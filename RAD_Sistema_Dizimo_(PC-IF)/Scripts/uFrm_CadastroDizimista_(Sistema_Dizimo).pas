unit uFrm_CadastroDizimista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm_CadastroBasico, Data.DB,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls,
  tpEdit, System.Math, Datasnap.DBClient, Vcl.Mask;

type
  Tfrm_Cad_Dizimista = class(Tfrm_CadastroBasico)
    Label4: TLabel;
    edt_Ficha: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cbx_Complemento: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    Cidade: TLabel;
    cbx_Uf: TComboBox;
    edt_CEP: TEdit;
    edt_Bairro: TEdit;
    edt_NR: TEdit;
    edt_Rua: TEdit;
    edt_Nome: TEdit;
    edt_CEB: TEdit;
    edt_Fixo: TEdit;
    Label17: TLabel;
    edt_Movel: TEdit;
    Label18: TLabel;
    edt_EMail: TEdit;
    Label19: TLabel;
    cbx_Genero: TComboBox;
    cbx_EstadoCivil: TComboBox;
    Label20: TLabel;
    Label21: TLabel;
    edt_Conjuge: TEdit;
    Label22: TLabel;
    edt_NascConj: TEdit;
    rdg_Situacao: TRadioGroup;
    Label23: TLabel;
    edt_Cidade: TEdit;
    edt_Cadastro: TEdit;
    edt_Casamento: TEdit;
    mke_DataNasc: TMaskEdit;
    procedure acl_GravarExecute(Sender: TObject);
    procedure acl_PesquisarExecute(Sender: TObject);
    procedure acl_EditarExecute(Sender: TObject);
    procedure btn_FiltrarClick(Sender: TObject);
    procedure acl_ExcluirExecute(Sender: TObject);
    procedure acl_InserirExecute(Sender: TObject);
    procedure acl_EditarUpdate(Sender: TObject);
    procedure acl_InserirUpdate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Cad_Dizimista: Tfrm_Cad_Dizimista;

implementation

{$R *.dfm}

uses uDM_Dados, uFuncoes;

procedure Tfrm_Cad_Dizimista.acl_EditarExecute(Sender: TObject);
begin
  inherited;
  with DM_Dados do
  begin
    edt_Ficha.Text       := IntToStr(cds_DizimistaCDFICHA.AsInteger);
    edt_Nome.Text        := cds_DizimistaNOME.AsString;
    mke_DataNasc.Text    := DateToStr(cds_DizimistaDT_NASC.AsDateTime);
    edt_CEB.Text         := cds_DizimistaCEB.AsString;
    edt_Rua.Text         := cds_DizimistaEND_RUA.AsString;
    edt_NR.Text          := cds_DizimistaEND_NR.AsString;
    cbx_Complemento.Text := cds_DizimistaEND_COMPTO.AsString;
    edt_Bairro.Text      := cds_DizimistaEND_BAIRRO.AsString;
    edt_Cidade.Text      := cds_DizimistaEND_CIDADE.AsString;
    cbx_UF.Text          := cds_DizimistaEND_UF.AsString;
    edt_Fixo.Text        := cds_DizimistaFONE_FIXO.AsString;
    edt_Movel.Text       := cds_DizimistaFONE_MOVEL.AsString;
    edt_Email.text       := cds_DizimistaEMAIL.AsString;
    cbx_Genero.Text      := cds_DizimistaGENERO.AsString;
    cbx_EstadoCivil.Text := cds_DizimistaEST_CIVIL.AsString;
    edt_Conjuge.Text     := cds_DizimistaNOME_CONJ.AsString;
    edt_NascConj.Text    := DateToStr(cds_DizimistaDT_NASCONJ.AsDateTime);
    edt_Casamento.Text   := DateToStr(cds_DizimistaDT_CASAMENTO.AsDateTime);
    edt_Cadastro.Text    := DateToStr(cds_DizimistaDT_CADASTRO.AsDateTime);
  end;
end;

procedure Tfrm_Cad_Dizimista.acl_EditarUpdate(Sender: TObject);
begin
  inherited;
//  edt_Nome.SetFocus
end;

procedure Tfrm_Cad_Dizimista.acl_ExcluirExecute(Sender: TObject);
begin
 if Application.MessageBox('Deseja realmente Suspender esse Dizimista?','Pergunta',MB_YESNO+MB_ICONQUESTION) = mrYes then
 begin
   try
     TClientDataSet(ds_Tabela.DataSet).Edit;
     Dm_Dados.cds_DizimistaSITUACAO.AsString := 'I';
     TClientDataSet(ds_Tabela.DataSet).ApplyUpdates(0);
     Application.MessageBox('Dizimista Inativado sucesso!','Informação',0+64);
     TClientDataSet(ds_Tabela.DataSet).Open;
   except on E : Exception do
     raise Exception.Create('Erro ao excluir registro: '+E.Message);
   end;
 end;
end;

procedure Tfrm_Cad_Dizimista.acl_GravarExecute(Sender: TObject);
begin
  //Validações
  if trim(edt_Ficha.Text) = '' then
  begin
    Application.MessageBox('Aguarde a geração do Nº de Ficha.','Atenção',MB_OK+MB_ICONWARNING);
    edt_Ficha.SetFocus;
    Abort;
  end;
  if trim(edt_Nome.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo Nome.','Atenção',MB_OK+MB_ICONWARNING);
    edt_Nome.SetFocus;
    Abort;
  end;
//  if StringParaFloat(edt_Valor.Text) <= 0 then
//  begin
//    Application.MessageBox('Informe um valor maior que zero.','Atenção',MB_OK+MB_ICONWARNING);
//    edt_Valor.SetFocus;
//    Abort;
//  end;

  with DM_Dados do
  begin
    if ds_Tabela.State in [dsInsert] then
    begin
      cds_DizimistaCDFICHA.AsInteger        := GetId('CDFICHA','TBL_DADOS');
      cds_DizimistaNOME.AsString            := Trim(edt_Nome.Text);
    end;
    cds_DizimistaDT_NASC.AsDateTime := StrToDate(mke_DataNasc.Text);
    cds_DizimistaCEB.AsString       := Trim(edt_CEB.Text);
    cds_DizimistaEND_RUA.AsString     := Trim(edt_Rua.Text);
    cds_DizimistaEND_NR.AsString      := Trim(edt_NR.Text);
    cds_DizimistaEND_COMPTO.AsString  := Trim(cbx_Complemento.Text);
    cds_DizimistaEND_BAIRRO.AsString  := Trim(edt_Bairro.Text);
    cds_DizimistaEND_CIDADE.AsString  := Trim(edt_Cidade.Text);
    cds_DizimistaEND_UF.AsString      := Trim(cbx_UF.Text);
    cds_DizimistaFONE_FIXO.AsString   := Trim(edt_Fixo.Text);
    cds_DizimistaFONE_MOVEL.AsString  := Trim(edt_Movel.Text);
    cds_DizimistaEMAIL.AsString       := Trim(edt_Email.text);
    cds_DizimistaGENERO.AsString      := Trim(cbx_Genero.Text);
    cds_DizimistaEST_CIVIL.AsString   := Trim(cbx_EstadoCivil.Text);
    cds_DizimistaNOME_CONJ.AsString   := Trim(edt_Conjuge.Text);
    cds_DizimistaDT_NASCONJ.AsDateTime   := StrToDate(edt_NascConj.Text);
    cds_DizimistaDT_CASAMENTO.AsDateTime := StrToDate(edt_Casamento.Text);
    cds_DizimistaDT_CADASTRO.AsDateTime  := StrToDate(edt_Cadastro.Text);

    case rdg_Situacao.ItemIndex of
      0: cds_DizimistaSITUACAO.AsString := 'A';
      1: cds_DizimistaSITUACAO.AsString := 'I';
    end;

  end;
  rdg_Situacao.ItemIndex := 0;

  inherited;

end;

procedure Tfrm_Cad_Dizimista.acl_InserirExecute(Sender: TObject);
begin
  inherited;
  if edt_Pesquisar.Text = '' then
  begin
    edt_Ficha.Text := IntToStr(GetId('CDFICHA','TBL_DADOS'));
    edt_Nome.SetFocus;
    edt_CEB.Text   := 'MATRIZ'
  end;
end;

procedure Tfrm_Cad_Dizimista.acl_InserirUpdate(Sender: TObject);
begin
  inherited;
  acl_Inserir.Enabled := ds_Tabela.State in [dsBrowse,dsInactive];
end;

procedure Tfrm_Cad_Dizimista.acl_PesquisarExecute(Sender: TObject);
begin
  inherited;
  with DM_Dados do
  begin
    cds_Dizimista.Close;
    cds_Dizimista.CommandText := 'SELECT * FROM TBL_DADOS';
    cds_Dizimista.Open;
  end;
end;

procedure Tfrm_Cad_Dizimista.btn_FiltrarClick(Sender: TObject);
begin
  if edt_Pesquisar.Text = '' then
  begin
    Application.MessageBox('Informe um valor a ser pesquisado ou clique em Pesquisar.','Atenção',MB_OK+MB_ICONWARNING);
    edt_Pesquisar.SetFocus;
    Abort;
  end;

  with DM_Dados do
  begin
    cds_Dizimista.Close;
    case cbx_Pesquisar.ItemIndex of
      0 : cds_Dizimista.CommandText := 'SELECT * FROM TBL_DADOS WHERE CDFICHA LIKE '+QuotedStr('%'+edt_Pesquisar.Text+'%');
      1 : cds_Dizimista.CommandText := 'SELECT * FROM TBL_DADOS WHERE NOME LIKE '+QuotedStr('%'+edt_Pesquisar.Text+'%');
    end;
    cds_Dizimista.Open;
  end;
end;

end.
