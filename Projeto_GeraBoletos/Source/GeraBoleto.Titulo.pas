unit GeraBoleto.Titulo;

interface

uses
   System.Classes;

type
  TTitulo = class
  private
    FNossoNum: string;
    FEspecMoeda: string;
    FValor: Currency;
    FAceite: string;
    FEspecDoc: string;
    FDocumento: string;
    FEmissao: TDate;
    FDate: TDate;
    FDataProc: TDate;
    FDigitoNossoNum: string;
    FInstrucoes: TStrings;
  public
    constructor Create;
    destructor Destroy; override;
    property Emissao: TDate     read FEmissao    write FEmissao;
    property Vencto:  TDate     read FDate       write FDate;
    property Documento: string  read FDocumento  write FDocumento;
    property EspecMoeda: string read FEspecMoeda write FEspecMoeda;
    property EspecDoc: string   read FEspecDoc write FEspecDoc;
    property Aceite: string     read FAceite   write FAceite;
    property DataProc: TDate    read FDataProc write FDataProc;
    property NossoNum: string   read FNossoNum write FNossoNum;
    property DigitoNossoNum: string read FDigitoNossoNum write FDigitoNossoNum;
    property Valor: Currency    read FValor    write FValor;
    property Instrucoes: TStrings read FInstrucoes write FInstrucoes;
  end;

implementation

{ TTitulo }

constructor TTitulo.Create;
begin
   FInstrucoes := TStringList.Create;
end;

destructor TTitulo.Destroy;
begin
  FInstrucoes.Free;
  inherited;
end;

end.
