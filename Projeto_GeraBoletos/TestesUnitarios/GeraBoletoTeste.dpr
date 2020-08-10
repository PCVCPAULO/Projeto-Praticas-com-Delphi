program GeraBoletoTeste;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  GeraBoleto.Conta in '..\Source\GeraBoleto.Conta.pas',
  GeraBoleto.Pessoa in '..\Source\GeraBoleto.Pessoa.pas',
  GeraBoleto.Titulo in '..\Source\GeraBoleto.Titulo.pas',
  GeraBoleto.Boleto in '..\Source\GeraBoleto.Boleto.pas',
  GeraBoleto.Banco in '..\Source\GeraBoleto.Banco.pas',
  TestBanco in 'TestBanco.pas',
  DUnitTestRunner,
  GeraBoleto.Funcoes in '..\Source\GeraBoleto.Funcoes.pas',
  TestConta in 'TestConta.pas',
  GeraBoleto.Base in '..\Source\GeraBoleto.Base.pas',
  GeraBoleto.Factories in '..\Source\GeraBoleto.Factories.pas',
  TestFormata001 in 'TestFormata001.pas',
  GeraBoleto.Banco001 in '..\Source\GeraBoleto.Banco001.pas',
  TestGeraBoletoBuilder in 'TestGeraBoletoBuilder.pas',
  GeraBoleto.Banco237 in '..\Source\GeraBoleto.Banco237.pas',
  GeraBoleto.Container in '..\Source\GeraBoleto.Container.pas',
  TestContainerBoleto in 'TestContainerBoleto.pas',
  GeraBoleto.Impressao in '..\Source\GeraBoleto.Impressao.pas',
  GeraBoleto.Impressao.FastReport in '..\Source\GeraBoleto.Impressao.FastReport.pas',
  udmBoletoFastReport in '..\Source\udmBoletoFastReport.pas' {dmBoletoFastReport: TDataModule},
  udmDadosBoleto in '..\Source\udmDadosBoleto.pas' {dmDadosBoleto: TDataModule},
  GeraBoleto.Impressao.Fortes in '..\Source\GeraBoleto.Impressao.Fortes.pas',
  ufrmBoletoFortesReport in '..\Source\ufrmBoletoFortesReport.pas' {frmBoletoFortesReport};

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

