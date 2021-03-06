unit uFrm_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, MidasLib,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, Vcl.Buttons, sSkinManager, sComboBoxes,
  acPNG, System.ImageList, Vcl.ImgList, Vcl.Menus, Vcl.Imaging.jpeg;

type
  Tfrm_Principal = class(TForm)
    img_Usuario: TImage;
    img_Lancamento: TImage;
    img_Cadastro: TImage;
    img_Rel: TImage;
    img_ConsultaNiver: TImage;
    img_ConsultaNiverConj: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    img_ConsultaCadastro: TImage;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    ImageList1: TImageList;
    CategoryPanelGroup1: TCategoryPanelGroup;
    sSkinSelector1: TsSkinSelector;
    mm_Principal: TMainMenu;
    MenuPrincipal1: TMenuItem;
    Usurios1: TMenuItem;
    Dizimistas1: TMenuItem;
    Lanamentos1: TMenuItem;
    Relatrios1: TMenuItem;
    mnu_Cadastro: TMenuItem;
    mnu_Lancamentos: TMenuItem;
    mnu_ConsultaNiver: TMenuItem;
    mnu_NiverConj: TMenuItem;
    Sistema1: TMenuItem;
    N12: TMenuItem;
    N22: TMenuItem;
    ctgp_Usuarios: TCategoryPanel;
    ctgp_Cadastro: TCategoryPanel;
    ImageList_16x16: TImageList;
    btn_CadUsuarios: TButton;
    ctgp_Lancamentos: TCategoryPanel;
    btn_CadDizimo: TButton;
    btn_Lancamento: TButton;
    ctgp_Relatorios: TCategoryPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    img_ConsultaNiverUniao: TImage;
    ctgp_Sistema: TCategoryPanel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    sSkinManager1: TsSkinManager;
    mnu_NiverUniao: TMenuItem;
    RestauraBackup1: TMenuItem;
    Sobre1: TMenuItem;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    img_RestauraBanco: TImage;
    img_GeraBackup: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image11Click(Sender: TObject);
    procedure img_NavegadorClick(Sender: TObject);
    procedure img_UsuarioClick(Sender: TObject);
    procedure img_CadastroClick(Sender: TObject);
    procedure img_LancamentoClick(Sender: TObject);
    procedure btn_LancamentoClick(Sender: TObject);
    procedure btn_CadUsuariosClick(Sender: TObject);
    procedure btn_CadDizimoClick(Sender: TObject);
    procedure Lanamentos1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure Dizimistas1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure img_ConsultaCadastroClick(Sender: TObject);
    procedure img_RelClick(Sender: TObject);
    procedure img_ConsultaNiverClick(Sender: TObject);
    procedure img_ConsultaNiverConjClick(Sender: TObject);
    procedure img_ConsultaNiverUniaoClick(Sender: TObject);
    procedure mnu_CadastroClick(Sender: TObject);
    procedure mnu_LancamentosClick(Sender: TObject);
    procedure mnu_ConsultaNiverClick(Sender: TObject);
    procedure mnu_NiverConjClick(Sender: TObject);
    procedure mnu_NiverUniaoClick(Sender: TObject);
    procedure img_GeraBackupClick(Sender: TObject);
    procedure img_RestauraBancoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Principal: Tfrm_Principal;

implementation

{$R *.dfm}

uses uFrm_CadastroDizimista, ufrm_Cad_Lancamentos, uFrm_CadastroUsuarios,
  uFuncoes, uFrm_ConsultaLancamentos, uFrm_ConsultaNiver,
  uFrm_ConsultaNiverConj, uFrm_ConsultaNiverUniao, uFrm_ConsultaCadastro,
  uFrm_Gera_Backup, uFrm_Gera_Restore;

procedure Tfrm_Principal.btn_CadUsuariosClick(Sender: TObject);
begin
  CriarForm(Tfrm_CadastroUsuarios,frm_CadastroUsuarios);
end;

procedure Tfrm_Principal.btn_LancamentoClick(Sender: TObject);
begin
  CriarForm(Tfrm_Cad_Lancamentos,frm_Cad_Lancamentos);
end;

procedure Tfrm_Principal.Dizimistas1Click(Sender: TObject);
begin
 CriarForm(Tfrm_Cad_Dizimista,frm_Cad_Dizimista);
end;

procedure Tfrm_Principal.mnu_NiverUniaoClick(Sender: TObject);
begin
  CriarForm(Tfrm_ConsultaNiverUniao,frm_ConsultaNiverUniao);
end;

procedure Tfrm_Principal.btn_CadDizimoClick(Sender: TObject);
begin
 CriarForm(Tfrm_Cad_Dizimista,frm_Cad_Dizimista);
end;

procedure Tfrm_Principal.FormActivate(Sender: TObject);
begin
   sSkinManager1.Active := True;
end;

procedure Tfrm_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  begin
   if Application.MessageBox('Deseja realmente sair?', 'Informação',MB_YESNO+MB_ICONQUESTION) = mrYes then
      Application.Terminate
   else
      Abort;
  end;
  Action := caFree;
  frm_Principal := nil;
end;

procedure Tfrm_Principal.FormShow(Sender: TObject);
begin
  StatusBar1.Panels.Items[1].Text := FormatDateTime(' dddd ", " dd " de " mmmm " de " yyyy'+'.',now);
end;

procedure Tfrm_Principal.Image11Click(Sender: TObject);
begin

//

end;

procedure Tfrm_Principal.img_GeraBackupClick(Sender: TObject);
begin
 CriarForm(Tfrm_GeraBackup,frm_GeraBackup);
end;

procedure Tfrm_Principal.img_CadastroClick(Sender: TObject);
begin
 CriarForm(Tfrm_Cad_Dizimista,frm_Cad_Dizimista);
end;

procedure Tfrm_Principal.img_RestauraBancoClick(Sender: TObject);
begin
 CriarForm(Tfrm_RestauraBanco,frm_RestauraBanco);
end;

procedure Tfrm_Principal.img_ConsultaCadastroClick(Sender: TObject);
begin
  CriarForm(Tfrm_ConsultaCadastro,frm_ConsultaCadastro);
end;

procedure Tfrm_Principal.img_ConsultaNiverClick(Sender: TObject);
begin
  CriarForm(Tfrm_ConsultaNiver,frm_ConsultaNiver);
end;

procedure Tfrm_Principal.img_LancamentoClick(Sender: TObject);
begin
  CriarForm(Tfrm_Cad_Lancamentos,frm_Cad_Lancamentos);
end;

procedure Tfrm_Principal.img_NavegadorClick(Sender: TObject);
begin
   if Application.MessageBox('Deseja realmente sair?', 'Informação',MB_YESNO+MB_ICONQUESTION) = mrYes then
      Application.Terminate
   else
      Abort;
end;

procedure Tfrm_Principal.img_ConsultaNiverConjClick(Sender: TObject);
begin
  CriarForm(Tfrm_ConsultaNiverConj,frm_ConsultaNiverConj);
end;

procedure Tfrm_Principal.img_ConsultaNiverUniaoClick(Sender: TObject);
begin
  CriarForm(Tfrm_ConsultaNiverUniao,frm_ConsultaNiverUniao);
end;

procedure Tfrm_Principal.img_RelClick(Sender: TObject);
begin
  CriarForm(Tfrm_ConsultaLancam,frm_ConsultaLancam);
end;

procedure Tfrm_Principal.img_UsuarioClick(Sender: TObject);
begin
  CriarForm(Tfrm_CadastroUsuarios,frm_CadastroUsuarios);
end;

procedure Tfrm_Principal.Lanamentos1Click(Sender: TObject);
begin
  CriarForm(Tfrm_Cad_Lancamentos,frm_Cad_Lancamentos);
end;

procedure Tfrm_Principal.mnu_CadastroClick(Sender: TObject);
begin
 CriarForm(Tfrm_Cad_Dizimista,frm_Cad_Dizimista);
end;

procedure Tfrm_Principal.mnu_LancamentosClick(Sender: TObject);
begin
  CriarForm(Tfrm_ConsultaLancam,frm_ConsultaLancam);
end;

procedure Tfrm_Principal.mnu_NiverConjClick(Sender: TObject);
begin
  CriarForm(Tfrm_ConsultaNiverConj,frm_ConsultaNiverConj);
end;

procedure Tfrm_Principal.mnu_ConsultaNiverClick(Sender: TObject);
begin
  CriarForm(Tfrm_ConsultaNiver,frm_ConsultaNiver);
end;

procedure Tfrm_Principal.SpeedButton1Click(Sender: TObject);
begin
  CriarForm(Tfrm_ConsultaNiverUniao,frm_ConsultaNiverUniao);
end;

procedure Tfrm_Principal.SpeedButton2Click(Sender: TObject);
begin
  CriarForm(Tfrm_ConsultaNiverConj,frm_ConsultaNiverConj);
end;

procedure Tfrm_Principal.SpeedButton3Click(Sender: TObject);
begin
  CriarForm(Tfrm_ConsultaNiver,frm_ConsultaNiver);
end;

procedure Tfrm_Principal.SpeedButton4Click(Sender: TObject);
begin
  CriarForm(Tfrm_ConsultaLancam,frm_ConsultaLancam);
end;

procedure Tfrm_Principal.SpeedButton5Click(Sender: TObject);
begin
  CriarForm(Tfrm_ConsultaCadastro,frm_ConsultaCadastro);
end;

procedure Tfrm_Principal.SpeedButton7Click(Sender: TObject);
begin
   if Application.MessageBox('Deseja realmente sair?', 'Informação',MB_YESNO+MB_ICONQUESTION) = mrYes then
      Application.Terminate
   else
      Abort;
end;

procedure Tfrm_Principal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

procedure Tfrm_Principal.Usurios1Click(Sender: TObject);
begin
  CriarForm(Tfrm_CadastroUsuarios,frm_CadastroUsuarios);
end;

end.
