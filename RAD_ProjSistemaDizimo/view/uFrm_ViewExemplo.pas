unit uFrm_ViewExemplo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.CategoryButtons, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, acPNG, Vcl.Buttons,
  dxGDIPlusClasses;

type
  Tfrm_Padrao = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    lbl_Mostrahora: TLabel;
    lbl_CidadeGrau: TLabel;
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
    Action2: TAction;
    Action3: TAction;
    lbl_Sistema: TLabel;
    lbl_Matriz: TLabel;
    lbl_MostraData: TLabel;
    Panel2: TPanel;
    lbl_NomeUsuario: TLabel;
    procedure act_CadastrosExecute(Sender: TObject);
    procedure act_Sair_Execute(Sender: TObject);
    procedure img_AbreFecha_SPV_Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Padrao: Tfrm_Padrao;

implementation

{$R *.dfm}


procedure Tfrm_Padrao.act_CadastrosExecute(Sender: TObject);
begin
  if spv2_MenuPrincipal.Opened then
		 spv2_MenuPrincipal.close
	else
		spv2_MenuPrincipal.Open;
end;

procedure Tfrm_Padrao.act_Sair_Execute(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_Padrao.img_AbreFecha_SPV_Click(Sender: TObject);
begin
  if spv1_Menu.Opened then
		 spv1_Menu.close
	else
		spv1_Menu.Open;
end;

end.