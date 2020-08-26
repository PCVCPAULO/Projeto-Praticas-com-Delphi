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

{  Inicialmente foi criada uma variável oCONTAGEM que é do tipo Classe
   TContagemCedulas. Essa definição da variável não cria efetivamente
   o objeto na memória.}

var
  oContagem : TContagemCedulas;
begin
  oContagem := TContagemCedulas.Create;

{  O códigi acima, efetivamente, ESTANCIA um objeto da Classe TContagemCedulas
   e o indentifica com oCONTAGEM.

   A seguir preencheremos o valor do atributo VALORCONTAGEM, com o valor]
   informado pelo usuário no campo edtValorContagem.}

  try
    oContagem.ValorContagem := StrToInt(edtValorContagem.Text);

  {  Logo a seguir, o Campo MEMO (mmoCedulas) é limpo e preenchido com o
     resultado do método ObeterDistribuição, que retornar uma Strint (AddStrings)
     contendo a distribuição das notas.}
    mmoCedulas.Clear;
    mmoCedulas.Lines.AddStrings(oContagem.ObterDistribuicao);
  Except
    ShowMessage('Valor de contagem inválido!');
  end;

{  Essa estrutura try...Except, captura qualquer erro gerado no acesso à
   classe ou nas informações recebidas pelo usuário. Por não precisar mais
   do objeto, no final do código chamamos o método que o destrói (Free).}

  oContagem.Free;

end;

end.
