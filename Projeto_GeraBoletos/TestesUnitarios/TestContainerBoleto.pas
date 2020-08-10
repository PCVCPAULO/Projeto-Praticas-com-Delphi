unit TestContainerBoleto;

interface

uses
  TestFramework,
  GeraBoleto.Container,
  GeraBoleto.Boleto;

type
  TestTBoletoContainer = class(TTestCase)
    strict private
      FContainer: IBoletoContainer;
    public
      procedure SetUp; override;
      procedure TearDown; override;
    published
      // aqui vir�o os testes
      procedure TestAdicaoDeBoletoNoContainer;
      procedure TestListaDeBoletosDoContainer;
      procedure TestExcluiBoletoDoContainer;
  end;

implementation

{ TestBoletoContainer }

procedure TestTBoletoContainer.SetUp;
begin
  FContainer := TBoletoContainer.Create;
end;

procedure TestTBoletoContainer.TearDown;
begin
  //;
end;

procedure TestTBoletoContainer.TestAdicaoDeBoletoNoContainer;
var
  Boleto: IBoleto;
begin
  Boleto := FContainer.Add;
  CheckTrue((Boleto is TBoleto), 'Nenhum boleto retornado');
end;

procedure TestTBoletoContainer.TestExcluiBoletoDoContainer;
begin
  // adicionar 3 boletos
  FContainer.Add;
  FContainer.Add;
  FContainer.Add;
  // deleta boleto
  FContainer.Delete(1); // exclui o segundo boleto da lista (�ndice 1)
  // teste
  CheckEquals(2, FContainer.Boletos.Count, 'M�todo Deleta n�o exclui o Boleto corretamente!');
end;


procedure TestTBoletoContainer.TestListaDeBoletosDoContainer;
begin
  // adicionar 3 boletos
  FContainer.Add;
  FContainer.Add;
  FContainer.Add;
  CheckEquals(3, FContainer.Boletos.Count, 'Lista de Boletos com erro!');
end;

initialization
  RegisterTest(TestTBoletoContainer.Suite);

end.
