unit udmDadosBoleto;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  GeraBoleto.Impressao,
  GeraBoleto.Boleto;

type
  TdmDadosBoleto = class(TDataModule)
    Boletos: TFDMemTable;
    BoletosBancoNumero: TStringField;
    BoletosBancoDigito: TStringField;
    BoletosBancoNome: TStringField;
    BoletosContaLocalPagto: TStringField;
    BoletosContaCodBeneficiario: TStringField;
    BoletosContaCarteira: TStringField;
    BoletosBenCnpjCpf: TStringField;
    BoletosBenNome: TStringField;
    BoletosBenLogradouro: TStringField;
    BoletosBenNumero: TStringField;
    BoletosBenBairro: TStringField;
    BoletosBenCep: TStringField;
    BoletosBenCidade: TStringField;
    BoletosBenUF: TStringField;
    BoletosBenFone: TStringField;
    BoletosTitData: TDateTimeField;
    BoletosTitVencimento: TDateTimeField;
    BoletosTitNossoNumero: TStringField;
    BoletosTitDataProc: TDateTimeField;
    BoletosTitDocumento: TStringField;
    BoletosTitAceite: TStringField;
    BoletosTitEspecDoc: TStringField;
    BoletosTitEspecMoeda: TStringField;
    BoletosTitValor: TCurrencyField;
    BoletosTitInstrucoes: TMemoField;
    BoletosPagCnpjCpf: TStringField;
    BoletosPagNome: TStringField;
    BoletosPagLogradouro: TStringField;
    BoletosPagNumero: TStringField;
    BoletosPagBairro: TStringField;
    BoletosPagCep: TStringField;
    BoletosPagCidade: TStringField;
    BoletosPagUF: TStringField;
    BoletosPagFone: TStringField;
    BoletosCodigoBarras: TStringField;
    BoletosLinhaDigitavel: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AdicionaDadosNoMemTable(Aboleto: IBoleto);
  end;

var
  dmDadosBoleto: TdmDadosBoleto;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

{ TdmDadosBoleto }

procedure TdmDadosBoleto.AdicionaDadosNoMemTable(Aboleto: IBoleto);
begin
   Boletos.Append;
   BoletosBancoNumero.AsString := ABoleto.GetConta.Banco.Numero;
   BoletosBancoNome.AsString   := ABoleto.GetConta.Banco.Nome;
   BoletosBancoDigito.AsString := ABoleto.GetConta.Banco.DigitoNumero;

   BoletosContaLocalPagto.AsString := ABoleto.GetConta.LocalPagto;
   BoletosContaCodBeneficiario.AsString := ABoleto.GetCodBeneficiarioFormatado;//**
   BoletosContaCarteira.AsString   := ABoleto.GetConta.Carteira;

   BoletosBenCnpjCpf.AsString    := ABoleto.GetBeneficiario.CnpjCpf;
   BoletosBenNome.AsString       := ABoleto.GetBeneficiario.Nome;
   BoletosBenLogradouro.AsString := ABoleto.GetBeneficiario.Endereco.Logradouro;
   BoletosBenNumero.AsString     := ABoleto.GetBeneficiario.Endereco.Numero;
   BoletosBenBairro.AsString     := ABoleto.GetBeneficiario.Endereco.Bairro;
   BoletosBenCep.AsString        := ABoleto.GetBeneficiario.Endereco.Cep;
   BoletosBenCidade.AsString     := ABoleto.GetBeneficiario.Endereco.Cidade;
   BoletosBenUF.AsString         := ABoleto.GetBeneficiario.Endereco.Uf;
   BoletosBenFone.AsString       := ABoleto.GetBeneficiario.Telefone;

   BoletosTitData.AsDateTime       := Aboleto.GetTitulo.Emissao;
   BoletosTitVencimento.AsDateTime := Aboleto.GetTitulo.Vencto;
   BoletosTitDataProc.AsDateTime   := Aboleto.GetTitulo.DataProc;
   BoletosTitNossoNumero.AsString  := Aboleto.GetNossoNumeroFormatado;
   BoletosTitDocumento.AsString    := Aboleto.GetTitulo.Documento;
   BoletosTitAceite.AsString       := Aboleto.GetTitulo.Aceite;
   BoletosTitEspecDoc.AsString     := Aboleto.GetTitulo.EspecDoc;
   BoletosTitEspecMoeda.AsString   := Aboleto.GetTitulo.EspecMoeda;
   BoletosTitValor.AsCurrency      := Aboleto.GetTitulo.Valor;
   BoletosTitInstrucoes.AsString   := Aboleto.GetTitulo.Instrucoes.Text;

   BoletosPagCnpjCpf.AsString      := ABoleto.GetPagador.CnpjCpf;
   BoletosPagNome.AsString         := ABoleto.GetPagador.Nome;
   BoletosPagLogradouro.AsString   := ABoleto.GetPagador.Endereco.Logradouro;
   BoletosPagNumero.AsString       := ABoleto.GetPagador.Endereco.Numero;
   BoletosPagBairro.AsString       := ABoleto.GetPagador.Endereco.Bairro;
   BoletosPagCep.AsString          := ABoleto.GetPagador.Endereco.Cep;
   BoletosPagCidade.AsString       := ABoleto.GetPagador.Endereco.Cidade;
   BoletosPagUF.AsString           := ABoleto.GetPagador.Endereco.Uf;
   BoletosPagFone.AsString         := ABoleto.GetPagador.Telefone;

   BoletosCodigoBarras.AsString    := ABoleto.GetCodigoBarras;
   BoletosLinhaDigitavel.AsString  := Aboleto.GetLinhaDigitavel;
   Boletos.Post;
end;

procedure TdmDadosBoleto.DataModuleCreate(Sender: TObject);
begin
   Boletos.Close; // refresh da tabela em memória
   Boletos.Open;
end;

end.
