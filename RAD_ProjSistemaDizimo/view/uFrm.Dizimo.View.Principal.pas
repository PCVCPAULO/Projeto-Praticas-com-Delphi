unit uFrm.Dizimo.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.CategoryButtons, Vcl.WinXCtrls, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, dxGDIPlusClasses, cxImageList,
  cxGraphics, uCadastro.Controller.Proxy;

type

  TfrmDizimoPrincipal = class(TForm)
    Panel1: TPanel;
    img_Logo: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image4: TImage;
    Image5: TImage;
    Label6: TLabel;
    Label7: TLabel;
    sptPrincipal: TSplitView;
    Image6: TImage;
    CategoryButtons1: TCategoryButtons;
    ImageList1: TImageList;
    CategoryButtons2: TCategoryButtons;
    sptSecundario: TSplitView;
    CategoryButtons3: TCategoryButtons;
    pnl2_AreaTrabalho: TPanel;
    imgAreaTrabalho: TImage;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    ActionList1: TActionList;
    acl1Cadastro: TAction;
    acl2Lancamentos: TAction;
    acl3Relatorios: TAction;
    acl4Usuarios: TAction;
    ActionList2: TActionList;
    actConfig: TAction;
    actSair: TAction;
    actLRelatorios: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    procedure img_LogoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acl1CadastroExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure acl3RelatoriosExecute(Sender: TObject);
  private
    { Private declarations }
//    a : TComponentClass;

  public
    { Public declarations }

  end;

var
  frmDizimoPrincipal: TfrmDizimoPrincipal;


implementation

{$R *.dfm}

uses uFrmCadastro.View, uFrm.PesqCad.View;

procedure TfrmDizimoPrincipal.acl1CadastroExecute(Sender: TObject);
begin
  CadastroControllerProxy.AddForm(TfrmCadastro, pnl2_AreaTrabalho);
end;


procedure TfrmDizimoPrincipal.acl3RelatoriosExecute(Sender: TObject);
begin
  if sptSecundario.Opened then
     sptSecundario.Close
  else
     sptSecundario.Open;
end;

procedure TfrmDizimoPrincipal.actSairExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmDizimoPrincipal.FormCreate(Sender: TObject);
var
   d, t: TDateTime;
begin
   d := Date;
   t := Time;
   label3.Caption := FormatDateTime('hh:mm', t);
   label4.Caption := DateToStr(d);
end;

procedure TfrmDizimoPrincipal.img_LogoClick(Sender: TObject);
begin
  if sptPrincipal.Opened then
     sptPrincipal.Close
  else
     sptPrincipal.Open;
end;

end.
