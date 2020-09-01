unit uFrmDizimo.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.CategoryButtons, Vcl.WinXCtrls, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, dxGDIPlusClasses, cxImageList,
  cxGraphics;

type
  TfrmDizimoPrincipal = class(TForm)
    Panel1: TPanel;
    imgLogo: TImage;
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
    sptZ: TSplitView;
    ListBox1: TListBox;
    imgAreaTrabalho: TImage;
    ImageList2: TImageList;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    procedure imgLogoClick(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action10Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure Action11Execute(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
  private
    { Private declarations }
    a : TComponentClass;
  public
    { Public declarations }
  end;

var
  frmDizimoPrincipal: TfrmDizimoPrincipal;


implementation

{$R *.dfm}


procedure TfrmDizimoPrincipal.Action10Execute(Sender: TObject);
begin
//
end;

procedure TfrmDizimoPrincipal.Action11Execute(Sender: TObject);
begin
//  ControllerProxy.AddForm(TfrmLancamentos, pnl2_AreaTrabalho);
end;

procedure TfrmDizimoPrincipal.Action2Execute(Sender: TObject);
begin
//  ControllerProxy.AddForm(TfrmCadastro, pnl2_AreaTrabalho);
end;

procedure TfrmDizimoPrincipal.Action3Execute(Sender: TObject);
begin
  if sptSecundario.Opened then
    sptSecundario.Close
  else
    sptSecundario.Open;
end;

procedure TfrmDizimoPrincipal.Action7Execute(Sender: TObject);
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

procedure TfrmDizimoPrincipal.imgLogoClick(Sender: TObject);
begin
  if sptPrincipal.Opened then
    sptPrincipal.Close
  else
    sptPrincipal.Open;
end;

procedure TfrmDizimoPrincipal.Image5Click(Sender: TObject);
begin
{  ControllerProxy.ListForms(ListBox1);
  if sptZ.Opened then
    sptZ.Close
  else
    sptZ.Open;
    }
end;

procedure TfrmDizimoPrincipal.ListBox1Click(Sender: TObject);
var
  aForm : TForm;
begin
  aForm := ListBox1.Items.Objects[ListBox1.ItemIndex] as TForm;
  aForm.Show;

  sptZ.Close;
end;


end.
