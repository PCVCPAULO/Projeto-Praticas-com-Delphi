unit DLMedia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmMedia = class(TForm)
    lblValor1: TLabel;
    lblValor2: TLabel;
    lblPeso1: TLabel;
    lblPeso2: TLabel;
    edtValor1: TEdit;
    edtValor2: TEdit;
    edtPeso1: TEdit;
    edtPeso2: TEdit;
    btnMedia: TBitBtn;
    procedure btnMediaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMedia: TfrmMedia;

implementation

uses CLMedia, CLMediaPonderada;

{$R *.dfm}

procedure TfrmMedia.btnMediaClick(Sender: TObject);
var
  oMedia : TMedia;
  rMedia : real;
begin
  // verifica se o cálculo tem peso ou não
  try
    if (edtPeso1.Text = '') and (edtPeso2.Text = '')then
    begin
      oMedia        := TMedia.Create;
      oMedia.Valor1 := StrToFloat(edtValor1.Text);
      oMedia.Valor2 := StrToFloat(edtValor2.Text);
    end
    else
    begin
      oMedia := TMediaPonderada.Create;
      with (oMedia as TmediaPonderada) do
      begin
        Valor1 := StrToFloat(edtValor1.Text);
        Valor2 := StrToFloat(edtValor2.Text);
        Peso1  := StrToInt(edtPeso1.Text);
        Peso2  := StrToInt(edtPeso2.Text);
      end;
    end;
    rMedia := oMedia.CalcularMedia;
    ShowMessage('A média é ' + FloatToStr(rMedia));
  except
    Showmessage('Problemas na associação dos valores!');
  end;
end;

end.
