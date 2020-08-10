unit CLVendedor;

interface

uses
  Classes, DateUtils;

  type

  TVendedor = class
  protected
    FId        : integer;
    FMatricula : string;
    FNome      : string;
    FSalarioBruto   : real;
    FSalarioLiquido : real;
    FPercentualComissao : real;
    procedure SetSalarioBruto(rSalario : real);
    procedure SetPercentualComissao(rPercentual : real);
    function obterTotalVendas(dataRef1, dataRef2 : TDateTime) : real;
  public
    constructor Create;
    function CalcularSalarioLiquido(dataRef1, dataRef2 : TDateTime) : real;
    function Busca(sMatricula : string) : boolean;
    function BuscarMatricula(iID : integer) : boolean;

    class function obterListaVendedoresAtivos : TList;

    function Grava : boolean;
    procedure Clear;

    property ID : Integer read FId;
    property Matricula : string  read FMatricula  write FMatricula;
    property Nome : string  read FNome  write FNome;
    property SalarioBruto : real        read FSalarioBruto
                                        write SetSalarioBruto;
    property PercentualComissao : real  read FPercentualComissao
                                        write SetPercentualComissao;

  end;

implementation

{ TVendedor }

uses CLVendas, DMVendedor, DB;

function TVendedor.Busca(sMatricula: string): boolean;
var
  iID : integer;
begin
   if dtmVendedor.Busca(sMatricula, self, iID) then
   begin
     Result := True;
     FID := iID;
   end else
     Result := False;
end;

function TVendedor.BuscarMatricula(iID: integer): boolean;

begin
  if dtmVendedor.BuscarMatricula(iID, Self) then
  begin
    Result := True;
    FId := iID;
  end   else
    Result := False;
end;

function TVendedor.CalcularSalarioLiquido(dataRef1, dataRef2: TDateTime): real;
var
 rTotalVendas : real;
begin
   rTotalVendas := Self.obterTotalVendas(dataRef1, dataRef2);

   FSalarioLiquido := FSalarioBruto + (rTotalVendas * FPercentualComissao);
   Result := FSalarioLiquido;
end;

procedure TVendedor.Clear;
begin
   FId        := 0;
   FMatricula := '';
   FNome      := '';
   FSalarioBruto := 0;
   FPercentualComissao := 0;
end;

constructor TVendedor.Create;
begin
   inherited;
   FSalarioBruto := 0;
   FSalarioLiquido := 0;
   FPercentualComissao := 0;
end;

function TVendedor.Grava: boolean;
begin
  dtmVendedor.Grava(Self);
end;

class function TVendedor.obterListaVendedoresAtivos: TList;
var
  lstVendedores : TList;
  oVendedor : TVendedor;
begin
   lstVendedores := TList.Create;

   dtmVendedor.obterVendedoresAtivos;

   with dtmVendedor.qryAcesso do
   begin
     if RecordCount > 0 then
     begin
       first;
       while not eof do
       begin
         oVendedor               := TVendedor.Create;
         oVendedor.FId           := FieldByName('IdVendedor').AsInteger;
         oVendedor.FMatricula    := FieldByName('Matricula').AsString;
         oVendedor.FNome         := FieldByName('Nome').AsString;
         oVendedor.FSalarioBruto :=  FieldByName('SalarioBruto').AsFloat;
         oVendedor.FPercentualComissao := FieldByName('Percentual').AsFloat;

         lstVendedores.Add(oVendedor);
         Next;
       end;
     end;
   end;

   Result := lstVendedores;

end;

function TVendedor.obterTotalVendas(dataRef1, dataRef2: TDateTime): real;
var
  iAux : integer;
  rTotal : real;
  lstVendas : TList;
  oVenda : TVenda;
begin
   lstVendas := TList.Create;
   lstVendas := TVenda.ObterTotalVendas(dataRef1, dataRef2, Self.ID);
   rTotal := 0;

   for iAux := 0 to lstVendas.Count -1 do
   begin
     oVenda := lstVendas[iAux];
     rTotal := rTotal + oVenda.Valor;
     oVenda.Free;
   end;
   lstVendas.Free;

   Result := rTotal;

end;

procedure TVendedor.SetPercentualComissao(rPercentual: real);
begin
  if rPercentual > 0 then
     if rPercentual > 1 then
        FPercentualComissao := rPercentual / 100
     else
        FPercentualComissao := rPercentual
  else
     FPercentualComissao := 0;
end;

procedure TVendedor.SetSalarioBruto(rSalario: real);
begin
  if rSalario >= 0 then
     FSalarioBruto := rSalario
  else
     FSalarioBruto := 0;

end;

end.
