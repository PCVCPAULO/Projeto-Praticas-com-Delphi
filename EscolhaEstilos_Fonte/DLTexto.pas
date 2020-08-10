unit DLTexto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmFormatacao = class(TForm)
    btnFormatos: TButton;
    btnAplicar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnFormatosClick(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormatacao: TfrmFormatacao;

implementation

{$R *.dfm}

uses CLTexto;

var
  OFormato1, oFormato2 : TTexto;


procedure TfrmFormatacao.btnAplicarClick(Sender: TObject);
begin
  oFormato1.formataTxT(Label1);
  oFormato1.formataTxT(Label2);
  oFormato2.formataTxT(Label3);
end;

procedure TfrmFormatacao.btnFormatosClick(Sender: TObject);
begin
  oFormato1.Valor          := 'Linha em Arial - 20';
  oFormato1.Estilo.Fonte   := 'Arial';
  oFormato1.Estilo.Tamanho := 20;

  oFormato2.Valor          := 'Linha em Times - 26';
  oFormato2.Estilo.Fonte   := 'Times New Roman';
  oFormato2.Estilo.Tamanho := 26;

  ShowMessage('Formatos criados corretamente!');
end;

procedure TfrmFormatacao.FormCreate(Sender: TObject);
begin
  oFormato1 := TTexto.Create;
  oFormato2 := TTexto.Create;
end;

procedure TfrmFormatacao.FormDestroy(Sender: TObject);
begin
  oFormato1.Free;
  oFormato2.Free;
end;

end.
