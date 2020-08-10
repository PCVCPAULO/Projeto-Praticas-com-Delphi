unit CLEstilo;

interface

uses Classes;

type
  TEstilo = class
  protected
    FFonte : String;
    FTamanho : integer;
    procedure SetTamanho(valor : integer);
  public
    constructor Create;
    property Fonte : string read FFonte write FFonte;
    property Tamanho : integer read FTamanho write SetTamanho;
  end;

implementation



{ TEstilo }

constructor TEstilo.Create;
begin
  Fonte := 'MS Sans Serif';
  Tamanho := 12;
end;

procedure TEstilo.SetTamanho(valor: integer);
begin
  if valor > 4 then
     FTamanho := valor
  else
    FTamanho := 4;

end;

end.
