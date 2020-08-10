unit uFrm_CadastroBasico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ToolWin, System.ImageList,
  Vcl.ImgList, Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList,
  Vcl.Buttons, Datasnap.DBClient, Vcl.StdCtrls, Vcl.ExtCtrls;


type
  Tfrm_CadastroBasico = class(TForm)
    ds_Tabela: TDataSource;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    PageControl1: TPageControl;
    tbs_Cadastro: TTabSheet;
    tbs_Pesquisar: TTabSheet;
    dbg_Dados: TDBGrid;
    img_Cadastro: TImageList;
    acl_Cadastro: TActionList;
    acl_Inserir: TAction;
    acl_Editar: TAction;
    acl_Excluir: TAction;
    acl_Gravar: TAction;
    acl_Cancelar: TAction;
    acl_Pesquisar: TAction;
    acl_Imprimir: TAction;
    acl_Fechar: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Panel1: TPanel;
    Label2: TLabel;
    lbl_Atividade: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    cbx_Pesquisar: TComboBox;
    Label1: TLabel;
    edt_Pesquisar: TEdit;
    btn_Filtrar: TButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure acl_InserirExecute(Sender: TObject);
    procedure acl_EditarExecute(Sender: TObject);
    procedure acl_ExcluirExecute(Sender: TObject);
    procedure acl_GravarExecute(Sender: TObject);
    procedure acl_CancelarExecute(Sender: TObject);
    procedure acl_PesquisarExecute(Sender: TObject);
    procedure acl_FecharExecute(Sender: TObject);
    procedure acl_CancelarUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure acl_InserirUpdate(Sender: TObject);
    procedure acl_GravarUpdate(Sender: TObject);
    procedure acl_ExcluirUpdate(Sender: TObject);
    procedure acl_EditarUpdate(Sender: TObject);
    procedure dbg_DadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }

    iModo : Integer;
    procedure LimparTudo;
  public
    { Public declarations }
  end;

var
  frm_CadastroBasico: Tfrm_CadastroBasico;

implementation

{$R *.dfm}

uses uDM_Dados, uFuncoes, uDM_Relatorios;



procedure Tfrm_CadastroBasico.acl_CancelarExecute(Sender: TObject);
begin
  TClientDataSet(ds_Tabela.DataSet).Cancel;
  LimparTudo;
  lbl_Atividade.Caption := 'Pesquisa';
end;

procedure Tfrm_CadastroBasico.acl_CancelarUpdate(Sender: TObject);
begin
  acl_Cancelar.Enabled := acl_Gravar.Enabled = true;
end;

procedure Tfrm_CadastroBasico.acl_EditarExecute(Sender: TObject);
begin
  iModo := 1;
  if PageControl1.ActivePage = tbs_Pesquisar then
  begin
    tbs_Cadastro.TabVisible  := true;
    tbs_Pesquisar.TabVisible := false;
    PageControl1.ActivePage := tbs_Cadastro;
    lbl_Atividade.Caption := 'Alteração';
  end;
  TClientDataSet(ds_Tabela.DataSet).Edit;
end;

procedure Tfrm_CadastroBasico.acl_EditarUpdate(Sender: TObject);
begin
  if not TClientDataSet(ds_Tabela.DataSet).IsEmpty then
    acl_Editar.Enabled := ds_Tabela.State in [dsBrowse];
end;

procedure Tfrm_CadastroBasico.acl_ExcluirExecute(Sender: TObject);
begin

  if Application.MessageBox('Deseja realmente excluir o registro?','Pergunta',MB_YESNO+MB_ICONQUESTION) = mrYes then
  begin
    try
      TClientDataSet(ds_Tabela.DataSet).Delete;
      TClientDataSet(ds_Tabela.DataSet).ApplyUpdates(0);
      Application.MessageBox('Registro excluído com sucesso!','Informação',0+64);
      TClientDataSet(ds_Tabela.DataSet).Open;
    except on E : Exception do
      raise Exception.Create('Erro ao excluir registro: '+E.Message);
    end;
  end;
end;

procedure Tfrm_CadastroBasico.acl_ExcluirUpdate(Sender: TObject);
begin
  if not TClientDataSet(ds_Tabela.DataSet).IsEmpty then
    acl_Excluir.Enabled := ds_Tabela.State in [dsBrowse];
end;

procedure Tfrm_CadastroBasico.acl_FecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_CadastroBasico.acl_GravarExecute(Sender: TObject);
begin
  try
    TClientDataSet(ds_Tabela.DataSet).Post;
    TClientDataSet(ds_Tabela.DataSet).ApplyUpdates(0);

    case iModo of
      0 : Application.MessageBox('Registro inserido com sucesso!','Informação',MB_OK+MB_ICONINFORMATION);
      1 : Application.MessageBox('Registro Alterado/Atualizado com sucesso!','Informação',MB_OK+MB_ICONINFORMATION);
    end;
    //Limpar os campos
    LimparTudo;
    TClientDataSet(ds_Tabela.DataSet).Open;
  except on E : Exception do
    raise Exception.Create('Erro ao salvar registro: '+E.Message);
  end;
end;

procedure Tfrm_CadastroBasico.acl_GravarUpdate(Sender: TObject);
begin
  acl_Gravar.Enabled := ds_Tabela.State in [dsInsert,dsEdit];
end;

procedure Tfrm_CadastroBasico.acl_InserirExecute(Sender: TObject);
begin
  iModo := 0;
  if PageControl1.ActivePage = tbs_Pesquisar then
  begin
    tbs_Cadastro.TabVisible  := true;
    lbl_Atividade.Caption    := 'Cadastro';
    tbs_Pesquisar.TabVisible := false;
    PageControl1.ActivePage  := tbs_Cadastro;
  end;
  if not TClientDataSet(ds_Tabela.DataSet).Active then
    TClientDataSet(ds_Tabela.DataSet).Open;
    TClientDataSet(ds_Tabela.DataSet).Insert;
end;

procedure Tfrm_CadastroBasico.acl_InserirUpdate(Sender: TObject);
begin
  acl_Inserir.Enabled := ds_Tabela.State in [dsBrowse,dsInactive];
end;

procedure Tfrm_CadastroBasico.acl_PesquisarExecute(Sender: TObject);
begin
  edt_Pesquisar.Clear;
  lbl_Atividade.Caption    := 'Pesquisa';
  tbs_Cadastro.TabVisible  := false;
  PageControl1.ActivePage  := tbs_Pesquisar;
end;

procedure Tfrm_CadastroBasico.dbg_DadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ZebrarDBGrid(ds_Tabela,dbg_Dados,State,Rect,Column);
end;

procedure Tfrm_CadastroBasico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TClientDataSet(ds_Tabela.DataSet).Cancel;
  TClientDataSet(ds_Tabela.DataSet).Close;
end;

procedure Tfrm_CadastroBasico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    Close;
  if key = #13 then
    Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrm_CadastroBasico.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := tbs_Pesquisar;
end;

procedure Tfrm_CadastroBasico.LimparTudo;
var
  I: Integer;
begin
  for I := 0 to ComponentCount -1 do
  begin
    if Components[i] is TCustomEdit then
      TCustomEdit(Components[i]).Clear;
  end;
  if PageControl1.ActivePage = tbs_Cadastro then
  begin
    tbs_Cadastro.TabVisible  := false;

    PageControl1.ActivePage := tbs_Pesquisar;
  end;
  edt_Pesquisar.SetFocus;
end;

end.
