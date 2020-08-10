unit DMVendas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Dialogs, CLVendas,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  TdtmVendas = class(TDataModule)
    FDConexao: TFDConnection;
    FDTransaction: TFDTransaction;
    dtsVenda: TDataSource;
    qryAcessoVenda: TFDQuery;
  private
    { Private declarations }
  public
    function Grava(oVenda : TVenda) : Boolean;
    function Busca(iNum : integer; oVenda : TVenda; var Id : integer) : Boolean;
    procedure ObterTotalVendas(dataRef1, DataRef2 : TDateTime; IdVendedor : integer);

    { Public declarations }
  end;

var
  dtmVendas: TdtmVendas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses CLVendedor;

{ TdtmVendas }

function TdtmVendas.Busca(iNum: integer; oVenda: TVenda;
  var Id: integer): Boolean;
begin
   Result := False;

   try
      if not FDConexao.Connected then
      begin
         FDConexao.Open;
         FDTransaction.StartTransaction;
      end;

      if qryAcessoVenda.Active then
         qryAcessoVenda.Close;
         qryAcessoVenda.SQL.Clear;
         qryAcessoVenda.SQL.Add('select ven.IDVenda, ven.IDVendedor, ven.Numero, ' +
         'ven.Data, ven.Valor');
         qryAcessoVenda.SQL.Add('from venda ven');
         qryAcessoVenda.SQL.Add('where ven.Numero = :num');

         qryAcessoVenda.Params.ParamByName('num').Value := iNum;

         qryAcessoVenda.Open;

         if qryAcessoVenda.RecordCount <> 0 then
         begin
            Result           := True;
            oVenda.Numero    := iNum;
            oVenda.DataVenda := qryAcessoVenda.FieldByName('Data').AsDateTime;
            oVenda.Valor     := qryAcessoVenda.FieldByName('Valor').AsFloat;
            oVenda.Vendedor.BuscarMatricula(qryAcessoVenda.FieldByName('IDVendedor').AsInteger);
            Id := qryAcessoVenda.FieldByName('IDVenda').AsInteger;
         end;
   except on e:exception do
      ShowMessage('Problemas no acesso ao Banco de Dados. ' + #13 + e.Message);

   end;
end;

function TdtmVendas.Grava(oVenda: TVenda): Boolean;
begin
    Result := False;
    try

      if not FDConexao.Connected then
      begin
         FDConexao.Open;
         FDTransaction.Options.Isolation := xiReadCommitted;
         FDTransaction.Options.AutoCommit := False;
      end;

      if qryAcessoVenda.Active then
         qryAcessoVenda.Close;

      qryAcessoVenda.SQL.Clear;

      if oVenda.ID <> 0 then
      begin
        qryAcessoVenda.SQL.Add('update venda ven');
        qryAcessoVenda.SQL.Add('set ven.IDVendedor = :prmVend,');
        qryAcessoVenda.SQL.Add('    ven.Numero = :prmNum,');
        qryAcessoVenda.SQL.Add('    ven.Data = :prmData,');
        qryAcessoVenda.SQL.Add('    ven.Valor = :prmValor,');
        qryAcessoVenda.SQL.Add('where (ven.IDVenda = :prmId),');

        qryAcessoVenda.Params.ParamByName('prmId').Value    := oVenda.ID;
        qryAcessoVenda.Params.ParamByName('prmVend').Value  := oVenda.Vendedor.ID;
        qryAcessoVenda.Params.ParamByName('prmNum').Value   := oVenda.Numero;
        qryAcessoVenda.Params.ParamByName('prmData').Value  := oVenda.DataVenda;
        qryAcessoVenda.Params.ParamByName('prmValor').Value := OVenda.Valor;

      end else
      begin
         qryAcessoVenda.SQL.Add('insert into venda');
         qryAcessoVenda.SQL.Add('(IDVendedor, Numero, Data, Valor)');
         qryAcessoVenda.SQL.Add('Values');
         qryAcessoVenda.SQL.Add('(:prmVend, :prmNum, :prmData, :prmValor)');


         qryAcessoVenda.Params.ParamByName('prmVend').Value  := oVenda.Vendedor.ID;
         qryAcessoVenda.Params.ParamByName('prmNum').Value   := OVenda.Numero;
         qryAcessoVenda.Params.ParamByName('prmData').Value  := oVenda.DataVenda;
         qryAcessoVenda.Params.ParamByName('prmValor').Value := oVenda.Valor;

      end;

      qryAcessoVenda.ExecSQL;
       FDTransaction.StartTransaction;
       FDTransaction.Commit;
      Result := True;

    except on e:exception do
       ShowMessage('Problemas no acesso ao Banco de Dados. ' + #13 + e.Message);
    end;
end;

procedure TdtmVendas.ObterTotalVendas(dataRef1, DataRef2: TDateTime;
  IdVendedor: integer);
begin
   try
      if not FDConexao.Connected then
      begin
         FDConexao.Open;
         FDTransaction.Options.Isolation := xiReadCommitted;
         FDTransaction.Options.AutoCommit := False;
      end;

      if qryAcessoVenda.Active then
         qryAcessoVenda.Close;

      qryAcessoVenda.SQL.Clear;
      qryAcessoVenda.SQL.Add('select ven.IDVenda, ven.IDVendedor, ven.Numero,' +
      'ven.Data, ven.Valor');
      qryAcessoVenda.SQL.Add('from venda ven');
      qryAcessoVenda.SQL.Add('where (IDVendedor = :prmNum and ven.Data' +
                        '(between :prmData1 and :prmData2)');

      qryAcessoVenda.Params.ParamByName('prmNum').Value   := IdVendedor;
      qryAcessoVenda.Params.ParamByName('prmData1').Value := dataRef1;
      qryAcessoVenda.Params.ParamByName('prmData2').Value := dataRef2;

      qryAcessoVenda.Open;

    except on e:exception do
       ShowMessage('Problemas no acesso ao Banco de Dados. ' + #13 + e.Message);

   end;
end;

end.
