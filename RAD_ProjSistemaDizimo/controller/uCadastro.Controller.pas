unit uCadastro.Controller;

interface

uses uCadastro.Dizimista.Model, System.SysUtils, dmCadastro.DataSets;

type
   TDizimistaController = class
   public
      constructor Create;
      destructor Destroy; override;
      procedure Pesquisar(sNome: string);
      procedure BuscarFicha(iCDFicha: Integer);
      procedure CarregarDizimista(oDizimista: TDizimista; iCDFicha: Integer);
      function Inserir(oDizimista: TDizimista; var sErro: string): Boolean;
      function Alterar(oDizimista: TDizimista; var sErro: string): Boolean;
      function Excluir(iCDFicha: Integer; var sErro: string): Boolean;
   end;

implementation

{ TCadastroControoler }

function TDizimistaController.Alterar(oDizimista: TDizimista;
  var sErro: string): Boolean;
begin
   Result := dmCadastroDataSet.Alterar(oDizimista, sErro);
end;

procedure TDizimistaController.CarregarDizimista(oDizimista: TDizimista;
  iCDFicha: Integer);
begin
   dmCadastroDataSet.CarregarDizimista(oDizimista, iCDFicha);
end;

constructor TDizimistaController.Create;
begin
// dmCadastroDataSet := TdmCadastroDataSet.Create(nil);
end;

destructor TDizimistaController.Destroy;
begin
//   FreeAndnil(dmCadastroDataSet);
  inherited;
end;

function TDizimistaController.Excluir(iCDFicha: Integer; var sErro: string): Boolean;
begin
   Result := dmCadastroDataSet.Excluir(iCDFicha, sErro);
end;

function TDizimistaController.Inserir(oDizimista: TDizimista; var sErro: string): Boolean;
begin
   Result := dmCadastroDataSet.Inserir(oDizimista, sErro);
end;


procedure TDizimistaController.Pesquisar(sNome: string);
begin
   dmCadastroDataSet.Pesquisar(sNome);
end;

procedure TDizimistaController.BuscarFicha(iCDFicha: Integer);
begin
  dmCadastroDataSet.BuscarFicha(iCDFicha);
end;

end.
