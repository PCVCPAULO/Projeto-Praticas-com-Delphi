unit GeraBoleto.Container;

interface

uses
  GeraBoleto.Boleto,
  GeraBoleto.Impressao,
  System.Generics.Collections, System.SysUtils;

type
  IBoletoContainer = interface
    ['{66918555-E64C-47C9-B3AE-98C951A68D36}']
    function Add: IBoleto;
    procedure Delete(Index: Integer);
    function Boletos: TList<IBoleto>;
    procedure SetModuloImpressao(Value: IImpressaoBoleto);
    function GetModuloImpressao: IImpressaoBoleto;
    procedure Imprimir;
  end;

  TBoletoContainer = class(TInterfacedObject, IBoletoContainer)
    private
      FBoletos: TList<IBoleto>;
      FModuloImpressao: IImpressaoBoleto;
    public
      constructor Create;
      destructor Destroy; override;
      function Add: IBoleto;
      procedure Delete(Index: Integer);
      function Boletos: TList<IBoleto>;
      procedure SetModuloImpressao(Value: IImpressaoBoleto);
      function GetModuloImpressao: IImpressaoBoleto;
      procedure Imprimir;

  end;

implementation

{ TBoletoContainer }


constructor TBoletoContainer.Create;
begin
  FBoletos := TList<IBoleto>.Create;
end;

destructor TBoletoContainer.Destroy;
begin
   FBoletos.Free;
   inherited;
end;

function TBoletoContainer.GetModuloImpressao: IImpressaoBoleto;
begin
   Result := FModuloImpressao;
end;

function TBoletoContainer.Add: IBoleto;
begin
  Result := TBoleto.Create;
  FBoletos.Add(Result); // adiciona o boleto criado
end;

function TBoletoContainer.Boletos: TList<IBoleto>;
begin
   Result := FBoletos;
end;

procedure TBoletoContainer.Delete(Index: Integer);
begin
  if (Index + 1) <= FBoletos.Count then
    FBoletos.Delete(Index);
end;


procedure TBoletoContainer.Imprimir;
begin
   if not Assigned(FModuloImpressao) then
      raise Exception.Create('Módulo de Impressao não selecionado!');

   FModuloImpressao.Imprime(FBoletos);
end;

procedure TBoletoContainer.SetModuloImpressao(Value: IImpressaoBoleto);
begin
  FModuloImpressao := Value;
end;

end.
