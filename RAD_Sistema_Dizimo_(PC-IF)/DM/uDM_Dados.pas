unit uDM_Dados;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Phys.SQLiteVDataSet, FireDAC.Comp.DataSet,
  FireDAC.Comp.UI, Data.DBXFirebird, Datasnap.Win.TConnect;

type
  TDM_Dados = class(TDataModule)
    qry_Usuarios: TSQLQuery;
    qry_BancoDizimo: TSQLQuery;
    dsp_Usuarios: TDataSetProvider;
    dsp_BancoDizimo: TDataSetProvider;
    cds_Usuarios: TClientDataSet;
    cds_BancoDizimo: TClientDataSet;
    Conexao: TSQLConnection;
    qry_Lancamento: TSQLQuery;
    dsp_Lancamento: TDataSetProvider;
    cds_Lancamento: TClientDataSet;
    qry_Referencia: TSQLQuery;
    dsp_Referencia: TDataSetProvider;
    cds_Referencia: TClientDataSet;
    cds_ReferenciaID: TIntegerField;
    cds_ReferenciaDESCRICAO: TStringField;
    cds_BancoDizimoCDFICHA: TIntegerField;
    cds_BancoDizimoNOME: TStringField;
    cds_BancoDizimoDT_NASC: TDateField;
    cds_BancoDizimoCOMUNIDADE: TStringField;
    cds_BancoDizimoEND_RUA: TStringField;
    cds_BancoDizimoEND_NR: TIntegerField;
    cds_BancoDizimoEND_COMPLEM: TStringField;
    cds_BancoDizimoEND_BAIRRO: TStringField;
    cds_BancoDizimoEND_CEP: TStringField;
    cds_BancoDizimoEND_CIDADE: TStringField;
    cds_BancoDizimoEND_UF: TStringField;
    cds_BancoDizimoFONE_FIXO: TStringField;
    cds_BancoDizimoFONE_MOVEL: TStringField;
    cds_BancoDizimoEMAIL: TStringField;
    cds_BancoDizimoGENERO: TStringField;
    cds_BancoDizimoESTADO_CIVIL: TStringField;
    cds_BancoDizimoNOME_CONJ: TStringField;
    cds_BancoDizimoNASCONJUGE: TDateField;
    cds_BancoDizimoDATACASAMENTO: TDateField;
    cds_BancoDizimoDATACADASTRO: TDateField;
    cds_BancoDizimoSITUACAO: TStringField;
    cds_UsuariosID: TIntegerField;
    cds_UsuariosNOME: TStringField;
    cds_UsuariosLOGIN: TStringField;
    cds_UsuariosSENHA: TStringField;
    cds_UsuariosDATA: TDateField;
    sql_Consultas: TSQLQuery;
    dsp_Consultas: TDataSetProvider;
    cds_LancamentoID: TIntegerField;
    cds_LancamentoCDFICHA: TIntegerField;
    cds_LancamentoNOMEDIZ: TStringField;
    cds_LancamentoVLRDOACAO: TFMTBCDField;
    cds_LancamentoID_REFERENCIA: TIntegerField;
    cds_LancamentoREFERENCIA: TStringField;
    cds_LancamentoDTLANCAMENTO: TDateField;
    sql_ConsultaLancam: TSQLQuery;
    dsp_ConsultaLancam: TDataSetProvider;
    LocalConnection1: TLocalConnection;
    sql_ConsultasCDFICHA: TIntegerField;
    sql_ConsultasNOME: TStringField;
    sql_ConsultasDT_NASC: TDateField;
    sql_ConsultasCOMUNIDADE: TStringField;
    sql_ConsultasEND_RUA: TStringField;
    sql_ConsultasEND_NR: TIntegerField;
    sql_ConsultasEND_COMPLEM: TStringField;
    sql_ConsultasEND_BAIRRO: TStringField;
    sql_ConsultasEND_CEP: TStringField;
    sql_ConsultasEND_CIDADE: TStringField;
    sql_ConsultasEND_UF: TStringField;
    sql_ConsultasFONE_FIXO: TStringField;
    sql_ConsultasFONE_MOVEL: TStringField;
    sql_ConsultasEMAIL: TStringField;
    sql_ConsultasGENERO: TStringField;
    sql_ConsultasESTADO_CIVIL: TStringField;
    sql_ConsultasNOME_CONJ: TStringField;
    sql_ConsultasNASCONJUGE: TDateField;
    sql_ConsultasDATACASAMENTO: TDateField;
    sql_ConsultasDATACADASTRO: TDateField;
    sql_ConsultasSITUACAO: TStringField;
    sql_ConsultaLancamID: TIntegerField;
    sql_ConsultaLancamCDFICHA: TIntegerField;
    sql_ConsultaLancamNOMEDIZ: TStringField;
    sql_ConsultaLancamVLRDOACAO: TFMTBCDField;
    sql_ConsultaLancamID_REFERENCIA: TIntegerField;
    sql_ConsultaLancamREFERENCIA: TStringField;
    sql_ConsultaLancamDTLANCAMENTO: TDateField;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Dados: TDM_Dados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM_Dados }




end.
