unit uFrm_ViewExemplo2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, MidasLib,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, Vcl.Buttons, sSkinManager, sComboBoxes,
  acPNG, System.ImageList, Vcl.ImgList, Vcl.Menus, Vcl.Imaging.jpeg, dxGDIPlusClasses;

type
  Tfrm_Principal = class(TForm)
    Timer1: TTimer;
    ImageList1: TImageList;
    ImageList_16x16: TImageList;
    sSkinManager1: TsSkinManager;
    Image1: TImage;
    Panel1: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure img_NavegadorClick(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Principal: Tfrm_Principal;

implementation

{$R *.dfm}

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

procedure Tfrm_Principal.img_NavegadorClick(Sender: TObject);
begin
   if Application.MessageBox('Deseja realmente sair?', 'Informação',MB_YESNO+MB_ICONQUESTION) = mrYes then
      Application.Terminate
   else
      Abort;
end;

procedure Tfrm_Principal.SpeedButton7Click(Sender: TObject);
begin
   if Application.MessageBox('Deseja realmente sair?', 'Informação',MB_YESNO+MB_ICONQUESTION) = mrYes then
      Application.Terminate
   else
      Abort;
end;

procedure Tfrm_Principal.Usurios1Click(Sender: TObject);
begin
//
end;

end.
