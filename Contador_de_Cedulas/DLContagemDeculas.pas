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

uses CLContagemCedulas;


procedure TfrmDLContagemCedulas.btnProcessarClick(Sender: TObject);

{  Inicialmente foi criada uma vari�vel oCONTAGEM que � do tipo Classe
   TContagemCedulas. Essa defini��o da vari�vel n�o cria efetivamente
   o objeto na mem�ria.}

var
  oContagem : TContagemCedulas;
begin
  oContagem := TContagemCedulas.Create;

{  O c�digi acima, efetivamente, ESTANCIA um objeto da Classe TContagemCedulas
   e o indentifica com oCONTAGEM.

   A seguir preencheremos o valor do atributo VALORCONTAGEM, com o valor]
   informado pelo usu�rio no campo edtValorContagem.}

  try
    oContagem.ValorContagem := StrToInt(edtValorContagem.Text);

  {  Logo a seguir, o Campo MEMO (mmoCedulas) � limpo e preenchido com o
     resultado do m�todo ObeterDistribui��o, que retornar uma Strint (AddStrings)
     contendo a distribui��o das notas.}
    mmoCedulas.Clear;
    mmoCedulas.Lines.AddStrings(oContagem.ObterDistribuicao);
  Except
    ShowMessage('Valor de contagem inv�lido!');
  end;

{  Essa estrutura try...Except, captura qualquer erro gerado no acesso �
   classe ou nas informa��es recebidas pelo usu�rio. Por n�o precisar mais
   do objeto, no final do c�digo chamamos o m�todo que o destr�i (Free).}

  oContagem.Free;

end;

end.
