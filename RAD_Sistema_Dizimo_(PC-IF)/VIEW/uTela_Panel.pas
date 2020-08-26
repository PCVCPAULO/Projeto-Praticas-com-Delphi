unit uTela_Panel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.CategoryButtons, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, acPNG, Vcl.Buttons;

type
  Tfrm_Padrao = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    lbl_Mostrahora: TLabel;
    lbl_CidadeGrau: TLabel;
    Image4: TImage;
    lbl_Usuario: TLabel;
    lbl_NomeUsuario: TLabel;
    spv1_Menu: TSplitView;
    Image6: TImage;
    ActionList1: TActionList;
    ImageList1: TImageList;
    cgb1_Menu: TCategoryButtons;
    Action1: TAction;
    act_Cadastros: TAction;
    act_Relatorios: TAction;
    cgb2_Sistema: TCategoryButtons;
    Action6: TAction;
    act_Sair_: TAction;
    Image3: TImage;
    spv2_MenuPrincipal: TSplitView;
    cgb3_MenuPrincipal: TCategoryButtons;
    act_Usuarios_: TAction;
    act_Lancamentos: TAction;
    act_CadDizimista_: TAction;
    act_ConsultaRecebiveis_: TAction;
    img_AbreFecha_SPV_: TImage;
    Timer1_: TTimer;
    pnl2_ExibiForms: TPanel;
    act_ConsultaPagtos: TAction;
    Panel2: TPanel;
    Action2: TAction;
    Action3: TAction;
    lbl_Sistema: TLabel;
    lbl_Matriz: TLabel;
    lbl_MostraData: TLabel;
    procedure act_CadastrosExecute(Sender: TObject);
    procedure img_AbreFecha_SPV_Click(Sender: TObject);
    procedure Timer1_Timer(Sender: TObject);
    procedure act_Sair_Execute(Sender: TObject);
    procedure act_Usuarios_Execute(Sender: TObject);
    procedure act_CadDizimista_Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure act_LancamentosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Padrao: Tfrm_Padrao;

implementation

{$R *.dfm}

uses uClasses, uFrm_CadastroUsuarios, uFrm_CadastroDizimista,
  uFrm_CadastroBasico, uFuncoes, ufrm_Cad_Lancamentos;


procedure Tfrm_Padrao.act_Sair_Execute(Sender: TObject);
begin
   if Application.MessageBox('Deseja realmente sair?', 'Informação',MB_YESNO+MB_ICONQUESTION) = mrYes then
      Application.Terminate
   else
      Abort;
end;


procedure Tfrm_Padrao.act_Usuarios_Execute(Sender: TObject);
begin
{
    frm_CadastroBasico := Tfrm_CadastroBasico.Create(Self);
    frm_CadastroBasico.Parent := pnl2_ExibiForms;
    frm_CadastroBasico.Show;

//  if TestarPermissao('frm_CadastroUsuarios') = False then
//  Exit;

  // chamar o form Cadastro de Usuarios
  if pnl2_ExibiForms.Enabled = False then
  begin
  pnl2_ExibiForms.Enabled := True;
  frm_CadastroUsuarios := Tfrm_CadastroUsuarios.Create(Self);
  frm_CadastroUsuarios.Parent := pnl2_ExibiForms;
  frm_CadastroUsuarios.Show;
  cgb3_MenuPrincipal.Enabled := False;
  end;  }
end;

procedure Tfrm_Padrao.img_AbreFecha_SPV_Click(Sender: TObject);
begin
	if spv1_Menu.Opened then
	   spv1_Menu.close
	else
		spv1_Menu.Open;
end;

procedure Tfrm_Padrao.Timer1_Timer(Sender: TObject);
var
  MostraHora, MostraData : TDateTime;
  strHora : string;
  strData : String;
begin
  MostraHora := Time; // armazena date e hora atuais
  strHora := TimeToStr(MostraHora); // converte a hora em uma string
  lbl_MostraHora.Caption := strHora; // exibe a hora na legenda do formulário

//  MostraData := Date;
//  strData := DateToStr(MostraData);
//  lbl_MostraData.Caption := strData;

end;

procedure Tfrm_Padrao.act_CadDizimista_Execute(Sender: TObject);
begin
  frm_Cad_Dizimista        := Tfrm_Cad_Dizimista.Create(Self);
  frm_Cad_Dizimista.Parent := pnl2_ExibiForms;
  frm_Cad_Dizimista.Show;
end;

procedure Tfrm_Padrao.act_LancamentosExecute(Sender: TObject);
begin
  frm_Cad_Lancamentos        := Tfrm_Cad_Lancamentos.Create(Self);
  frm_Cad_Lancamentos.Parent := pnl2_ExibiForms;
  frm_Cad_Lancamentos.Show;
end;

procedure Tfrm_Padrao.Action6Execute(Sender: TObject);
begin
//
end;

procedure Tfrm_Padrao.act_CadastrosExecute(Sender: TObject);
begin
  if spv2_MenuPrincipal.Opened then
		 spv2_MenuPrincipal.close
	else
		spv2_MenuPrincipal.Open;
end;

end.
