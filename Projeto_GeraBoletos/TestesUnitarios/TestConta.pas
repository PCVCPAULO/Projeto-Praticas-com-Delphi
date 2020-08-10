unit TestConta;

interface

uses
  TestFramework, GeraBoleto.Conta, GeraBoleto.Banco;

type
  // Test methods for class TConta

  TestTConta = class(TTestCase)
  strict private
    FConta: TConta;
  public
    procedure SetUp; override;
    procedure TearDown; override;

  published
    procedure TesteNumercoDaContaComEspacos;
    procedure TesteDigitoDoNumeroDaContaComEspacos;
    procedure TestNumeroDaContaComCaracteresInvalidos;
    procedure TestAgenciaComExpacos;
    procedure TestAgenciaComCaracteresInvalidos;
    procedure TestDigitoAgenciaComEspacos;
  end;

implementation

uses
  System.SysUtils;

procedure TestTConta.SetUp;
begin
  FConta := TConta.Create;
end;

procedure TestTConta.TearDown;
begin
  FConta.Free;
  FConta := nil;
end;

procedure TestTConta.TestAgenciaComCaracteresInvalidos;
begin
  StartExpectingException(Exception);
  FConta.Agencia := 'a0001';
  StopExpectingException('Nenhuma exceção gerada quando número da Agência contém letras ou símobolos');
end;

procedure TestTConta.TestAgenciaComExpacos;
begin
  FConta.Agencia := ' 0001 ';
  CheckEquals('0001', FConta.Agencia, 'Código da Agência inválido!');
end;

procedure TestTConta.TestDigitoAgenciaComEspacos;
begin
  FConta.DigitoAgencia := ' 9 ';
  CheckEquals('9', FConta.DigitoAgencia, 'Dígito da Agência inválido!');
end;

procedure TestTConta.TesteDigitoDoNumeroDaContaComEspacos;
begin
  FConta.DigitoConta := ' 9 ';
  CheckEquals('9', FConta.DigitoConta, 'Dígito do Número da Conta inválido!');
end;

procedure TestTConta.TesteNumercoDaContaComEspacos;
begin
  FConta.Conta := ' 00001 '; // número da conta com espaços em branco
  CheckEquals('00001', FConta.Conta, 'Número da Conta inválido!');
end;

procedure TestTConta.TestNumeroDaContaComCaracteresInvalidos;
begin
  StartExpectingException(Exception);
  FConta.Conta := 'a00001';
  StopExpectingException('Nenhuma exceção gerada quando número da conta contém letras ou símobolos');
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTConta.Suite);
end.

