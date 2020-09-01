﻿unit UfrmQuadEq;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList, Vcl.ImgList;

type
  TfrmQuadEq = class(TForm)
    edtA: TEdit;
    edtC: TEdit;
    lnlCoefs: TLabel;
    lblX1: TLabel;
    lblX2: TLabel;
    lblNo: TLabel;
    btnFind: TButton;
    edtB: TEdit;
    Button1: TButton;
    ImageList1: TImageList;
    procedure btnFindClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Prn(Xf, Xs: real);
    procedure coefInput(var k1, k2, k3: real);
    procedure Calc(k1, k2, dis: real; var Xf, Xs: Real);
    procedure Init;
    procedure clearEdts;
    procedure Procurar;
  end;

var
  frmQuadEq: TfrmQuadEq;

implementation

{$R *.dfm}

procedure TfrmQuadEq.btnFindClick(Sender: TObject);
begin
   Procurar;
end;

procedure TfrmQuadEq.Button1Click(Sender: TObject);
begin
   clearEdts;
end;

procedure TfrmQuadEq.Calc(k1, k2, dis: real; var Xf, Xs: Real);
begin
   Xf := (-k2 + Sqrt(dis)) / (2 * k1);
   Xs := (-k2 - Sqrt(dis)) / (2 * k1);
end;

procedure TfrmQuadEq.ClearEdts;
begin
   edtA.Clear;
   edtB.Clear;
   edtC.Clear
end;

procedure TfrmQuadEq.coefInput(var k1, k2, k3: real);
begin
   k1 := StrToFloat(frmQuadEq.edtA.text);
   k2 := StrToFloat(frmQuadEq.edtB.Text);
   k3 := StrToFloat(frmQuadEq.edtC.Text);
end;

procedure TfrmQuadEq.Procurar;
var
   A, B, C, D, X1, X2: Real;
begin
//   A := StrToFloat(frmQuadEq.edtA.text);
//   B := StrToFloat(frmQuadEq.edtB.Text);
//   C := StrToFloat(frmQuadEq.edtC.Text);

   coefInput(A, B, C);     // leia os coefeicientes A, B, C
   D := Sqr(B) - 4*A*c;    // computar o discriminante Δ
   if D >= 0  then         // Se Δ >= 0, então
   begin
      calc(A, B, C, X1, X2); // compute as raizes x1, x2 de A, B, e Δ
      prn(X1, X2);           // mostre as raízes x1 e x2
   end
   else // senão ou caso contrário
      lblNo.Visible := True; //Notifique o usuário da falta de solução
end;

procedure TfrmQuadEq.Init;
begin
   with frmQuadEq do
   begin
      lblX1.Visible := false;
      lblX2.Visible := false;
      lblNo.Visible := false;
   end;
end;

procedure TfrmQuadEq.Prn(Xf, Xs: real);
begin
   with frmQuadEq do
   begin
      lblX1.Visible := true;
      lblX1.Caption := 'x1 = ' + FloatToStr(Xf);
      lblx2.Visible := true;
      lblx2.Caption := 'x2 = ' + FloatToStr(Xs);
   end;
end;

end.
