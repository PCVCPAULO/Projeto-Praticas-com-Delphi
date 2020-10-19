unit uFrmCadastro.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.CategoryButtons, Vcl.WinXPanels, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, cxImageList, cxGraphics, Data.DB, Vcl.Grids,
  Vcl.DBGrids, System.UITypes,
  uCadastro.Dizimista.Model,
  uCadastro.Controller, dmCadastro.DataSets, dmCadastro.Conexao, Vcl.ComCtrls;

type

  TOperacao = (opNovo, opAlterar, opNavegar);

  TfrmDados = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnl3AreaTrab: TPanel;
    act3Botoes: TActionList;
    cxImageList1: TcxImageList;
    act4Botoes: TActionList;
    act1Novo: TAction;
    act2Detalhar: TAction;
    act3Excluir: TAction;
    cdp2Botoes: TCardPanel;
    Card1: TCard;
    Card2: TCard;
    btn1Novo: TCategoryButtons;
    btn2Detalhar: TCategoryButtons;
    btn3Inativar: TCategoryButtons;
    btn1Listar: TCategoryButtons;
    btn2Alterar: TCategoryButtons;
    btn3Gravar: TCategoryButtons;
    btn4Cancelar: TCategoryButtons;
    act1Listar: TAction;
    act2Alterar: TAction;
    act3Gravar: TAction;
    act4Cancelar: TAction;
    Panel3: TPanel;
    dsPesq: TDataSource;
    pgcPrincipal: TPageControl;
    tbPesq: TTabSheet;
    Panel4: TPanel;
    Panel6: TPanel;
    Label3: TLabel;
    cbx_Pesquisar: TComboBox;
    btn_Pesquisar: TButton;
    edt_Pesquisar: TEdit;
    DBGrid2: TDBGrid;
    tbDados: TTabSheet;
    Panel5: TPanel;
    edtFicha: TLabeledEdit;
    edtNome: TLabeledEdit;
    edtDataNasc: TLabeledEdit;
    edtCEB: TLabeledEdit;
    edtLogradouro: TLabeledEdit;
    edtNum: TLabeledEdit;
    edtCompl: TLabeledEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure act1ListarExecute(Sender: TObject);
    procedure act1NovoExecute(Sender: TObject);
    procedure act4CancelarExecute(Sender: TObject);
    procedure act2DetalharExecute(Sender: TObject);
    procedure btn_PClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure act2AlterarExecute(Sender: TObject);
    procedure act3GravarExecute(Sender: TObject);
    procedure act3ExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
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
  end;

var
  frmDados: TfrmDados;

implementation

{$R *.dfm}

{ TfrmDados }

procedure TfrmDados.act1ListarExecute(Sender: TObject);
begin
   Listar;
end;

procedure TfrmDados.act1NovoExecute(Sender: TObject);
begin
   Novo;
   HabilitarControles(opNovo);
end;

procedure TfrmDados.act2AlterarExecute(Sender: TObject);
begin
   FOperacao := opAlterar;
   HabilitarControles(opAlterar);
end;

procedure TfrmDados.act2DetalharExecute(Sender: TObject);
begin
   Detalhar;
end;

procedure TfrmDados.act3ExcluirExecute(Sender: TObject);
begin
   Excluir;
end;

procedure TfrmDados.act3GravarExecute(Sender: TObject);
begin
   Gravar;
   HabilitarControles(opNavegar);
end;

procedure TfrmDados.act4CancelarExecute(Sender: TObject);
begin
   Listar;
   HabilitarControles(opNavegar);
//   cdp1Dados.ActiveCard := card1Pesquisar;
end;

procedure TfrmDados.Alterar;
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
         CDFicha := StrToIntDef(edtFicha.Text, 0);
         Nome    := edtNome.Text;
         CEB     := edtCEB.Text;
         End_Rua := edtLogradouro.Text;
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

procedure TfrmDados.btn_PClick(Sender: TObject);
begin
   Pesquisar;
end;

procedure TfrmDados.CarregarDizimista;
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
         edtFicha.Text := IntToStr(CDFicha);
         edtNome.Text  := Nome;
         edtDataNasc.Text   := 'VERIFICAR!';
         edtCEB.Text   := CEB;
         edtLogradouro.Text := End_Rua;
      end;
   finally
      FreeAndNil(oDizimista);
      FreeAndNil(oDizimistaController);
   end;
end;

procedure TfrmDados.Configuracoes;
begin
   tbPesq.TabVisible       := False;
   tbDados.TabVisible      := False;
   pgcPrincipal.ActivePage := tbPesq;

//   cdp1Dados.Cards[0].Active := False;
//   cdp1Dados.Cards[1].Active := False;
//   cdp1Dados.ActiveCard := card1Pesquisar;
end;

procedure TfrmDados.DBGrid1DblClick(Sender: TObject);
begin
   Detalhar;
   cdp2Botoes.ActiveCard := card2;
end;

procedure TfrmDados.Detalhar;
begin
   CarregarDizimista;
   HabilitarControles(opNavegar);
   pgcPrincipal.ActivePage := tbDados;
//   if cdp1Dados.ActiveCard = card1Pesquisar then
//   begin
//      cdp1Dados.ActiveCard := card2Dados;
//      cdp2Botoes.ActiveCard := card2;
//   end;

   FOperacao := opNavegar;
end;

procedure TfrmDados.Excluir;
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

procedure TfrmDados.FormCreate(Sender: TObject);
begin
   dmCadastroDataSet := TdmCadastroDataSet.Create(nil);
end;

procedure TfrmDados.FormDestroy(Sender: TObject);
begin
   FreeAndNil(dmCadastroDataSet);
end;

procedure TfrmDados.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TfrmDados.FormShow(Sender: TObject);
begin
   Configuracoes;
end;

procedure TfrmDados.Gravar;
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

procedure TfrmDados.HabilitarControles(aOperacao: TOperacao);
begin
    case aOperacao of
      opAlterar:
      begin
         edtNome.Enabled       := True;
         edtCEB.Enabled        := True;
         edtLogradouro.Enabled := True;
//         edtTelefone.Enabled  := True;
//         cdp1Dados.ActiveCard.Active := True;
         btn1Listar.Enabled   := False;
         btn2Alterar.Enabled  := False;
         btn3Gravar.Enabled   := True;
         btn4Cancelar.Enabled := True;
      end;

      opNovo:
      begin
         edtNome.Text   := '';
         edtCEB.Text    := '';
         edtLogradouro.Text := '';
         edtNum.Text        := '';
//         edtTelefone.Enabled  := True;
//         cdp1Dados.ActiveCard.Active := True;
         btn1Listar.Enabled   := False;
         btn2Alterar.Enabled  := False;
         btn3Gravar.Enabled   := True;
         btn4Cancelar.Enabled := True;
      end;

      opNavegar:
      begin
         edtNome.Enabled       := False;
         edtCEB.Enabled        := False;
         edtLogradouro.Enabled := False;
//         edtTelefone.Enabled  := False;
//         cdp1Dados.ActiveCard.Active := False;
         btn1Listar.Enabled   := True;
         btn2Alterar.Enabled  := True;
         btn3Gravar.Enabled   := False;
         btn4Cancelar.Enabled := False;
      end;
   end;
end;

procedure TfrmDados.Inserir;
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
         CDFicha := 0;
         Nome    := edtNome.Text;
         CEB     := edtCEB.Text;
         End_Rua := edtLogradouro.Text;
      end;
      if oDizimistaController.Inserir(oDizimista, sErro) = False then
         raise Exception.Create(sErro)
      else
         ShowMessage('Dizimista cadastrado com sucesso!');
   finally
   end;
end;

procedure TfrmDados.Listar;
begin
   pgcPrincipal.ActivePage := tbPesq;

//   cdp1Dados.ActiveCard:= card1Pesquisar;
//   cdp2Botoes.ActiveCard := card1;
end;

procedure TfrmDados.Novo;
begin
   FOperacao := opNovo;
   pgcPrincipal.ActivePage := tbDados;

//   cdp1Dados.ActiveCard := card2Dados;
//   cdp2Botoes.ActiveCard := card2;
end;

procedure TfrmDados.Pesquisar;
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

end.