unit uFrm.PesqCad.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.WinXPanels,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.CategoryButtons, Vcl.WinXCtrls,
  System.ImageList, Vcl.ImgList, cxImageList, cxGraphics,
  uCadastro.Dizimista.Model,
  uCadastro.Controller,
  dmCadastro.DataSets, System.Actions, Vcl.ActnList, System.UITypes;

type

  TOperacao = (opNovo, opAlterar, opNavegar);

  TfrmCadastro = class(TForm)
    Panel1Cabecalho: TPanel;
    cdp3Bottons: TCardPanel;
    card1FrmPesquisa: TCard;
    Panel1Buttons: TPanel;
    cdp1AreaTrabalho: TCardPanel;
    card1Pesquisar: TCard;
    DBGrid1: TDBGrid;
    card2Dados: TCard;
    Card2FrmDados: TCard;
    Panel4Buttons: TPanel;
    Panel4AreaTrabalho: TPanel;
    pnlPesquisar: TPanel;
    Label28: TLabel;
    cbx_Pesquisar: TComboBox;
    Label29: TLabel;
    edt_Pesquisar: TEdit;
    btn_Pesquisar: TButton;
    cxImageList1: TcxImageList;
    spvPanel1Buttons: TSplitView;
    btn3Fechar: TCategoryButtons;
    ctgButtons4Fechar: TCategoryButtons;
    btn2Detalhar: TCategoryButtons;
    btn1Novo: TCategoryButtons;
    Panel1: TPanel;
    edtFicha: TLabeledEdit;
    edtNome: TLabeledEdit;
    edtDataNasc: TLabeledEdit;
    edtCEB: TLabeledEdit;
    edtLogradouro: TLabeledEdit;
    edtNum: TLabeledEdit;
    edtCompl: TLabeledEdit;
    edtCEP: TLabeledEdit;
    edtUF: TLabeledEdit;
    edtCidade: TLabeledEdit;
    edtBairro: TLabeledEdit;
    edtFixo: TLabeledEdit;
    edtCelular: TLabeledEdit;
    edtEmail: TLabeledEdit;
    edtGenero: TLabeledEdit;
    edtEstCivil: TLabeledEdit;
    edtDataCasa: TLabeledEdit;
    edtNomeConj: TLabeledEdit;
    edtDataNascto: TLabeledEdit;
    edtSituacao: TLabeledEdit;
    edtDataCad: TLabeledEdit;
    spvPanel4Buttons: TSplitView;
    btn1Listar: TCategoryButtons;
    btn2Alterar: TCategoryButtons;
    btn4Cancelar: TCategoryButtons;
    btn5Fechar: TCategoryButtons;
    btn3Gravar: TCategoryButtons;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dsPesq: TDataSource;
    ActionList1: TActionList;
    btnListar: TAction;
    btnAlterar: TAction;
    btnGravar: TAction;
    btnCancelar: TAction;
    btnNovo: TAction;
    btnDetalhar: TAction;
    btnExcluir: TAction;
    btnFechar: TAction;
    Panel4: TPanel;
    dsBuscarFicha: TDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btn_PesquisarClick(Sender: TObject);
    procedure btnNovoExecute(Sender: TObject);
    procedure btnDetalharExecute(Sender: TObject);
    procedure btnExcluirExecute(Sender: TObject);
    procedure btnFecharExecute(Sender: TObject);
    procedure btnListarExecute(Sender: TObject);
    procedure btnAlterarExecute(Sender: TObject);
    procedure btnGravarExecute(Sender: TObject);
    procedure btnCancelarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    FOperacao: TOperacao;
    procedure Novo;
    procedure Detalhar;
    procedure Configuracoes;
    procedure Pesquisar;
    procedure CarregarDizimista;
    procedure Listar;
    procedure Alterar;
    procedure Excluir;
    procedure Inserir;
    procedure Gravar;
    procedure HabilitarControles(aOperacao: TOperacao);
    procedure BuscarFicha;
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}

uses uFrm.Dizimo.View.Principal;

procedure TfrmCadastro.FormCreate(Sender: TObject);
begin
   dmCadastroDataSet := TdmCadastroDataSet.Create(nil);
end;

procedure TfrmCadastro.FormDestroy(Sender: TObject);
begin
   FreeAndNil(dmCadastroDataSet);
end;

procedure TfrmCadastro.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TfrmCadastro.FormShow(Sender: TObject);
begin
   Configuracoes;
end;

procedure TfrmCadastro.Gravar;
var
   oDizimistaController: TDizimistaController;
begin
   oDizimistaController := TDizimistaController.Create;
   try
      case FOperacao of
         opNovo: Inserir;
         opAlterar: Alterar;
      end;
      oDizimistaController.Pesquisar(edt_Pesquisar.Text);
   finally
      FreeAndNil(oDizimistaController);
   end;
end;

procedure TfrmCadastro.HabilitarControles(aOperacao: TOperacao);
begin
    case aOperacao of
      opNovo, opAlterar:
      begin
         edtNome.Enabled       := True;
         edtDataNasc.Enabled   := True;
         edtCEB.Enabled        := True;
         edtLogradouro.Enabled := True;
         edtNum.Enabled        := True;
         edtCompl.Enabled      := True;
         edtBairro.Enabled := True;
         edtCEP.Enabled    := True;
         edtCidade.Enabled := True;
         edtUF.Enabled     := True;
         edtFixo.Enabled     := True;
         edtCelular.Enabled  := True;
         edtEmail.Enabled    := True;
         edtGenero.Enabled   := True;
         edtEstCivil.Enabled := True;
         edtNomeConj.Enabled := True;
         edtDataNascto.Enabled := True;
         edtDataCasa.Enabled   := True;
         edtDataCad.Enabled    := True;
         edtSituacao.Enabled   := True;
         btn1Listar.Enabled := False;
         btn5Fechar.Enabled := True;
         btn2Alterar.Enabled  := False;
         btn3Gravar.Enabled   := True;
         btn4Cancelar.Enabled := True;
      end ;
      opNavegar:
      begin
         edtNome.Enabled       := False;
         edtDataNasc.Enabled   := False;
         edtCEB.Enabled        := False;
         edtLogradouro.Enabled := False;
         edtNum.Enabled        := False;
         edtCompl.Enabled      := False;
         edtBairro.Enabled := False;
         edtCEP.Enabled    := False;
         edtCidade.Enabled := False;
         edtUF.Enabled     := False;
         edtFixo.Enabled     := False;
         edtCelular.Enabled  := False;
         edtEmail.Enabled    := False;
         edtGenero.Enabled   := False;
         edtEstCivil.Enabled := False;
         edtNomeConj.Enabled := False;
         edtDataNascto.Enabled := False;
         edtDataCasa.Enabled   := False;
         edtDataCad.Enabled    := False;
         edtSituacao.Enabled   := False;
         btn1Listar.Enabled   := True;
         btn5Fechar.Enabled   := True;
         btn2Alterar.Enabled  := True;
         btn3Gravar.Enabled   := False;
         btn4Cancelar.Enabled := False;
      end;
   end;
end;

procedure TfrmCadastro.Novo;
begin
   FOperacao := opNovo;
   if cdp1AreaTrabalho.ActiveCard = card1Pesquisar then
   begin
      cdp1AreaTrabalho.ActiveCard := card2Dados;
      edtFicha.Text := IntToStr(dmCadastroDataSet.GerarFicha);
      cdp3Bottons.ActiveCard := Card2FrmDados;
   end;
end;


procedure TfrmCadastro.Inserir;
var
   oDizimista : TDizimista;
   oDizimistaController : TDizimistaController;
   sErro: string;
begin
   oDizimista := TDizimista.Create;
   oDizimistaController := TDizimistaController.Create;
   try
      with oDizimista do
      begin
         Nome     := edtNome.Text;

         DataNasc := edtDataNasc.Text;


         CEB      := edtCEB.Text;
         End_Rua  := edtLogradouro.Text;
         End_NR   := edtNum.Text;
         End_Complem := edtCompl.Text;
         End_Bairro  := edtBairro.Text;
         End_CEP     := edtCEP.Text;
         End_Cidade  := edtCidade.Text;
         End_UF      := edtUF.Text;
         Fone_Fixo   := edtFixo.Text;
         Fone_Movel  := edtCelular.Text;
         Email       := edtEmail.Text;
         Genero      := edtGenero.Text;
         Estado_Civil  := edtEstCivil.Text;
         Nome_Conjuge  := edtNomeConj.Text;
         NascConjuge   := edtDataNascto.Text;
         DataCasamento := edtDataCasa.Text;
         DataCadastro  := edtDataCad.Text;
         Situacao      := edtSituacao.Text;
      end;
      if oDizimistaController.Inserir(oDizimista, sErro) = False then
         raise Exception.Create(sErro)
      else
         ShowMessage('Dizimista cadastrado com sucesso!');
   finally
   end;
end;

procedure TfrmCadastro.Listar;
begin
   cdp1AreaTrabalho.ActiveCard:= card1Pesquisar;
   cdp3Bottons.ActiveCard := card1FrmPesquisa;
end;

procedure TfrmCadastro.DBGrid1DblClick(Sender: TObject);
begin
   Detalhar;
end;

procedure TfrmCadastro.Detalhar;
begin
   CarregarDizimista;
   HabilitarControles(opNavegar);
   if cdp1AreaTrabalho.ActiveCard = card1Pesquisar then
   begin
      cdp1AreaTrabalho.ActiveCard := card2Dados;
      cdp3Bottons.ActiveCard := Card2FrmDados;
   end;
   FOperacao := opNavegar;
end;

procedure TfrmCadastro.Excluir;
var
   oDizimistaController : TDizimistaController;
   sErro: string;
begin
   oDizimistaController := TDizimistaController.Create;
   try
      if (dmCadastroDataSet.cdsPesq.Active) and (dmCadastroDataSet.cdsPesq.RecordCount > 0) then
      begin
         if MessageDlg('Deseja realmente Desativar esse Dizimista?', mtConfirmation, [mbYes, mbNo], 0) = IDYES then
         begin
            if oDizimistaController.Excluir(dmCadastroDataSet.cdsPesqCDFicha.AsInteger, sErro) = False then
               raise Exception.Create(sErro);
            oDizimistaController.Pesquisar(edt_Pesquisar.Text);
         end;
      end
      else
         raise Exception.Create('N�o h� registro para ser desativado!');
   finally
      FreeAndNil(oDizimistaController);
   end;
end;

procedure TfrmCadastro.Pesquisar;
var
   oDizimistaController : TDizimistaController;
begin
   oDizimistaController := TDizimistaController.Create;
   try
      oDizimistaController.Pesquisar(edt_Pesquisar.Text);
   finally
      FreeAndNil(oDizimistaController);
   end;
end;

procedure TfrmCadastro.btnListarExecute(Sender: TObject);
begin
   Listar;
end;

procedure TfrmCadastro.btnAlterarExecute(Sender: TObject);
begin
   FOperacao := opAlterar;
   HabilitarControles(opAlterar);
end;

procedure TfrmCadastro.btnGravarExecute(Sender: TObject);
begin
   Gravar;
   HabilitarControles(opNavegar);
end;

procedure TfrmCadastro.btnCancelarExecute(Sender: TObject);
begin
   Listar;
   HabilitarControles(opNavegar);
end;

procedure TfrmCadastro.btnNovoExecute(Sender: TObject);
begin
   Novo;
   HabilitarControles(opNovo);
end;

procedure TfrmCadastro.btnDetalharExecute(Sender: TObject);
begin
   Detalhar;
end;

procedure TfrmCadastro.btnExcluirExecute(Sender: TObject);
begin
   Excluir;
end;

procedure TfrmCadastro.btnFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastro.Alterar;
var
   oDizimista : TDizimista;
   oDizimistaController : TDizimistaController;
   sErro: string;
begin
   oDizimista := TDizimista.Create;
   oDizimistaController := TDizimistaController.Create;
   try
      with oDizimista do
      begin
         CDFicha  := StrToIntDef(edtFicha.Text, 0);
         Nome     := edtNome.Text;
         DataNasc := edtDataNasc.Text;
         CEB      := edtCEB.Text;
         End_Rua     := edtLogradouro.Text;
         End_NR      := edtNum.Text;
         End_Complem := edtCompl.Text;
         End_Bairro  := edtBairro.Text;
         End_CEP     := edtCEP.Text;
         End_Cidade  := edtCidade.Text;
         End_UF      := edtUF.Text;
         Fone_Fixo   := edtFixo.Text;
         Fone_Movel  := edtCelular.Text;
         Email       := edtEmail.Text;
         Genero      := edtGenero.Text;
         Estado_Civil  := edtEstCivil.Text;
         Nome_Conjuge  := edtNomeConj.Text;
         NascConjuge   := edtDataNascto.Text;
         DataCasamento := edtDataCasa.Text;
         DataCadastro  := edtDataCad.Text;
         Situacao      := edtSituacao.Text;

       end;
      if oDizimistaController.Alterar(oDizimista, sErro) = False then
         raise Exception.Create(sErro)
      else
      ShowMessage('Registro alterado com sucesso!');
   finally
      FreeAndNil(oDizimistaController);
      FreeAndNil(oDizimista);
   end;
end;

procedure TfrmCadastro.btn_PesquisarClick(Sender: TObject);
begin
   Pesquisar;
end;

procedure TfrmCadastro.BuscarFicha;
var
   oDizimistaController : TDizimistaController;
begin
   oDizimistaController := TDizimistaController.Create;
   try
      oDizimistaController.BuscarFicha(StrToInt(edt_Pesquisar.Text));
   finally
      FreeAndNil(oDizimistaController);
   end;

end;

procedure TfrmCadastro.CarregarDizimista;
var
   oDizimista : TDizimista;
   oDizimistaController : TDizimistaController;
begin
   ODizimista := TDizimista.Create;
   oDizimistaController := TDizimistaController.Create;
   try
      oDizimistaController.CarregarDizimista(oDizimista, dsPesq.DataSet.FieldByName('cdficha').AsInteger);
      with oDizimista do
      begin
         edtFicha.Text    := IntToStr(CDFicha);
         edtNome.Text     := Nome;
         edtDataNasc.Text := DataNasc;
         edtCEB.Text      := CEB;
         edtLogradouro.Text := End_Rua;
         edtNum.Text    := End_NR;
         edtCompl.Text  := End_Complem;
         edtBairro.Text := End_Bairro;
         edtCEP.Text    := End_CEP;
         edtCidade.Text := End_Cidade;
         edtUF.Text     := End_UF;
         edtFixo.Text     := Fone_Fixo;
         edtCelular.Text  := Fone_Movel;
         edtEmail.Text    := Email;
         edtGenero.Text   := Genero;
         edtEstCivil.Text := Estado_Civil;
         edtNomeConj.Text := Nome_Conjuge;
         edtDataNascto.Text := NascConjuge;
         edtDataCasa.Text := DataCasamento;
         edtDataCad.Text  := DataCadastro;
         edtSituacao.Text := Situacao;
      end;
   finally
      FreeAndNil(oDizimista);
      FreeAndNil(oDizimistaController);
   end;
end;

procedure TfrmCadastro.Configuracoes;
begin
   cdp1AreaTrabalho.Cards[0].Active := False;
   cdp1AreaTrabalho.Cards[1].Active := False;
   cdp1AreaTrabalho.ActiveCard := card1Pesquisar;
end;

end.