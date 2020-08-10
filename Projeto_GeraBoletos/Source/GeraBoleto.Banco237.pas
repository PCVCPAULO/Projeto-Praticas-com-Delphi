unit GeraBoleto.Banco237;

interface

  uses GeraBoleto.Boleto, GeraBoleto.Base;

  const
    NOME_BANCO = 'Bradesco S/A.';
    DIGITO_NUM = '2';

type
  TFormata237 = class(TInterfacedObject, IFormatacao)
  private
    FBoleto: IBoleto;
  public
    constructor Create(ABoleto: IBoleto);
    procedure FormataCamposConta;
    procedure ValidaDados;
    procedure FormataCampoLivre;
    procedure FormataCamposParaImpressao;

  end;


implementation

uses
  System.SysUtils, GeraBoleto.Funcoes;

{ TFormata237 }


constructor TFormata237.Create(ABoleto: IBoleto);
begin
  FBoleto := ABoleto;
end;

procedure TFormata237.FormataCampoLivre;
  function DigitoNossoNumBradesco: string;
  begin
    Result := Modulo11(FBoleto.GetConta.Carteira + FBoleto.GetTitulo.NossoNum, 7);
    if Result = '10' then
       Result := 'P';
  end;
begin
  FBoleto.GetTitulo.NossoNum := LeftPad(FBoleto.GetConta.SeqNossoNumero.ToString, 11);
  FBoleto.GetTitulo.DigitoNossoNum := DigitoNossoNumBradesco;
  FBoleto.SetCampoLivre(FBoleto.GetConta.Agencia + FBoleto.GetConta.Carteira +
    FBoleto.GetTitulo.NossoNum + FBoleto.GetConta.Conta + '0');
end;

procedure TFormata237.FormataCamposConta;
begin
  FBoleto.GetConta.Banco.Nome := NOME_BANCO;
   FBoleto.GetConta.Agencia := LeftPad(FBoleto.GetConta.Agencia, 4);
   FBoleto.GetConta.Conta := LeftPad(FBoleto.GetConta.Conta, 7);
end;

procedure TFormata237.FormataCamposParaImpressao;
begin
   FBoleto.SetCodBeneficiarioFormatado(
      FBoleto.GetConta.Carteira + '/' + FBoleto.GetTitulo.NossoNum + '-' +
        FBoleto.GetTitulo.DigitoNossoNum
      );

   FBoleto.SetCodBeneficiarioFormatado(
      FBoleto.GetConta.Agencia + '-' + FBoleto.GetConta.DigitoAgencia + '/' +
        FBoleto.GetConta.Conta + '-' + FBoleto.GetConta.DigitoConta
      );
end;

procedure TFormata237.ValidaDados;
begin
  if FBoleto.GetConta.Banco.DigitoNumero <> DIGITO_NUM then
    raise Exception.Create('D�gito do N�mero do Banco inv�lido!');
  if not (FBoleto.GetConta.Carteira.Length = 2) then
    raise Exception.Create('Carteira inv�lida!');
end;

end.
