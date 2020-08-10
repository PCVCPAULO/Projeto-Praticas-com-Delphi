unit DLContagemDeculas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmDLContagemCedulas = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtValorContagem: TEdit;
    btnProcessar: TSpeedButton;
    mmoCedulas: TMemo;
    procedure btnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDLContagemCedulas: TfrmDLContagemCedulas;

implementation

{$R *.dfm}

Uses
  CLContagemCedulas;

procedure TfrmDLContagemCedulas.btnProcessarClick(Sender: TObject);
var
  oContagem : TContagemCedulas;
begin
  oContagem := TContagemCedulas.Create;

  try
    oContagem.ValorContagem := StrToInt(edtValorContagem.Text);
    mmoCedulas.Clear;
    mmoCedulas.Lines.AddStrings(oContagem.ObterDistribuicao);
  Except
    ShowMessage('Valor de contagem inválido!');
  end;

  oContagem.Free;

end;

end.
