unit GeraBoleto.Conta;

interface

uses
  GeraBoleto.Banco;

type
  TConta = class
    private
      FBanco:         TBanco;
      FLocalPagto:    string;
      FConta:         string;
      FDigitoConta:   string;
      FCarteira:      string;
      FAgencia:       string;
      FDigitoAgencia: string;
      FConvenio: string;
      FSeqNossoNumero: Integer;
      procedure SetNumeroConta(const Value: string);
      procedure SetDigitoConta(const Value: string);
      procedure SetAgencia(const Value: string);
      procedure SetDigitoAgencia(const Value: string);
      procedure SetConvenio(const Value: string);
    public
      constructor Create;
      destructor Destroy; override;

      property Banco: TBanco         read FBanco write FBanco;
      property LocalPagto: string    read FLocalPagto write FLocalPagto;
      property Agencia: string       read FAgencia write SetAgencia;
      property DigitoAgencia: string read FDigitoAgencia write SetDigitoAgencia;
      property Conta: string  read FConta write SetNumeroConta;
      property DigitoConta: string read FDigitoConta write SetDigitoConta;
      property Carteira: string    read FCarteira write FCarteira;
      property Convenio: String    read FConvenio write SetConvenio;
      property SeqNossoNumero: Integer read FSeqNossoNumero write FSeqNossoNumero;
  end;

implementation

uses
  System.SysUtils, GeraBoleto.Funcoes;

{ TConta }

constructor TConta.Create;
begin
  Banco := TBanco.Create;
end;

destructor TConta.Destroy;
begin
  FBanco.Free;
  inherited;
end;



procedure TConta.SetAgencia(const Value: string);
begin
  FAgencia := Trim(Value);
  if not IsNumber(FAgencia) then
     raise Exception.Create('N�mero da Ag�ncia inv�lido!');

end;

procedure TConta.SetConvenio(const Value: string);
begin
  FConvenio := Trim(Value);
end;

procedure TConta.SetDigitoAgencia(const Value: string);
begin
  FDigitoAgencia := Trim(Value);
end;

procedure TConta.SetDigitoConta(const Value: string);
begin
  FDigitoConta := Trim(Value);
  if not IsNumber(FDigitoConta) then
     raise Exception.Create('D�gito da Conta Banco inv�lido!');
end;

procedure TConta.SetNumeroConta(const Value: string);
begin
  FConta := Trim(Value);
  if not IsNumber(FConta) then
    raise Exception.Create('N�mero do Conta Inv�lido!');

end;

end.
