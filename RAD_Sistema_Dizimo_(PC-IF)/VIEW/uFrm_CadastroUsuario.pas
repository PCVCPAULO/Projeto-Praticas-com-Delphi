unit uFrm_CadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm_CadastroBasico, Data.DB,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls;

type
  Tfrm_CadastroUsuario = class(Tfrm_CadastroBasico)
    lbl_Login: TLabel;
    lbl_Senha: TLabel;
    edt_Nome: TEdit;
    edt_Login: TEdit;
    edt_Senha: TEdit;
    lbl_Nome: TLabel;
    procedure acl_GravarExecute(Sender: TObject);
    procedure btn_FiltrarClick(Sender: TObject);
    procedure acl_EditarExecute(Sender: TObject);
    procedure acl_PesquisarExecute(Sender: TObject);
    procedure acl_ImprimirExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CadastroUsuario: Tfrm_CadastroUsuario;

implementation

{$R *.dfm}

uses uDM_Dados, uFuncoes, uDM_Relatorios;

procedure Tfrm_CadastroUsuario.acl_EditarExecute(Sender: TObject);
begin
  edt_Nome.Text  := DM_Dados.cds_Usuariosnome.AsString;
  edt_Login.Text := DM_Dados.cds_Usuarioslogin.AsString;
  edt_Senha.Text := DM_Dados.cds_Usuariossenha.AsString;

end;

procedure Tfrm_CadastroUsuario.acl_GravarExecute(Sender: TObject);
begin
  if Trim(edt_Nome.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo nome.','Atenção',MB_OK+MB_ICONWARNING);
    edt_Nome.SetFocus;
    Abort;
  end;
  if Trim(edt_Login.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo login.','Atenção',MB_OK+MB_ICONWARNING);
    edt_Login.SetFocus;
    Abort;
  end;
  if (ds_Tabela.State in [dsInsert]) and (GetLoginCadastrado(trim(edt_Login.Text))) then
  begin
    Application.MessageBox('Login encontra-se cadastrado.','Atenção',MB_OK+MB_ICONWARNING);
    edt_Login.SetFocus;
    Abort;
  end;
  if Trim(edt_Senha.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo senha.','Atenção',MB_OK+MB_ICONWARNING);
    edt_Senha.SetFocus;
    Abort;
  end;
  with DM_Dados do
  begin
    if ds_Tabela.State in [dsInsert] then
      cds_Usuariosid.AsInteger           := GetId('ID','USUARIOS');
      cds_Usuariosnome.AsString          := trim(edt_Nome.Text);
      cds_Usuarioslogin.AsString         := trim(edt_Login.Text);
      cds_Usuariossenha.AsString         := trim(edt_Senha.Text);
      cds_Usuariosstatus.AsString        := 'A';
      cds_Usuariosdt_cadastro.AsDateTime := now;
  end;
  inherited;

end;

procedure Tfrm_CadastroUsuario.acl_ImprimirExecute(Sender: TObject);
begin
  dm_Relatorios := Tdm_Relatorios.Create(nil);
  try
    dm_Relatorios.frxReport.LoadFromFile(ExtractFilePath(Application.ExeName)+'rel_cadUsuarios.fr3');
    dm_Relatorios.frxReport.ShowReport();
  finally
    FreeAndNil(dm_Relatorios);
  end;

end;

procedure Tfrm_CadastroUsuario.acl_PesquisarExecute(Sender: TObject);
begin
  inherited;
  with DM_Dados do
  begin
    cds_Usuarios.Close;
    cds_Usuarios.CommandText := 'SELECT * FROM USUARIOS';
    cds_Usuarios.Open;
  end;

end;

procedure Tfrm_CadastroUsuario.btn_FiltrarClick(Sender: TObject);
begin
  if edt_Pesquisar.Text = '' then
  begin
    Application.MessageBox('Informe um valor a ser pesquisado ou clique em Pesquisar.','Atenção',MB_OK+MB_ICONWARNING);
    edt_Pesquisar.SetFocus;
    Abort;
  end;

  with DM_Dados do
  begin
    cds_Usuarios.Close;
    case cbx_Pesquisar.ItemIndex of
      0 : cds_Usuarios.CommandText := 'SELECT * FROM USUARIOS WHERE NOME  LIKE '+QuotedStr('%'+edt_Pesquisar.Text+'%');
      1 : cds_Usuarios.CommandText := 'SELECT * FROM USUARIOS WHERE LOGIN LIKE '+QuotedStr('%'+edt_Pesquisar.Text+'%');
    end;
    cds_Usuarios.Open;
  end;
end;

end.
