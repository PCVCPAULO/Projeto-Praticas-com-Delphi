unit CLMediaPonderada;

interface

uses Classes, CLMedia;

type

  TMediaPonderada = class(TMedia)
    protected
      FPeso1 : integer;
      FPeso2 : integer;
      procedure SetPeso1(valor : integer);
      procedure SetPeso2(valor : integer);
    public
      constructor Create;
      function CalcularMedia : real; override;

      property Peso1 : integer read FPeso1 write SetPeso1;
      property Peso2 : integer read FPeso2 write SetPeso2;
  end;


implementation

{ TMediaPonderada }

function TMediaPonderada.CalcularMedia: real;
var
  rMedia : real;
  iSomaPesos : integer;
begin
  rMedia     := (Valor1 * Peso1) + (Valor2 * Peso2);
  iSomaPesos := Peso1 + Peso2;

  rMedia := rMedia / iSomaPesos;
  Result := rMedia;
end;

constructor TMediaPonderada.Create;
begin
  inherited;
  FPeso1 := 1;
  FPeso2 := 1;
end;

procedure TMediaPonderada.SetPeso1(valor: integer);
begin
   if valor > 1 then
      Fpeso1 := valor
   else
      Fpeso1 := 1;
end;

procedure TMediaPonderada.SetPeso2(valor: integer);
begin
  if valor > 1 then
     FPeso2 := valor
  else
     FPeso2 := 1;
end;

end.
