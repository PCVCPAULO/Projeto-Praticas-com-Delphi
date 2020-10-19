unit uCadastro.Dizimista.Model;

interface

uses
  System.SysUtils;

type
   TDizimista = class
   private
    FCDFicha: Integer;
    FNome: string;
    FDataNasc: string;
    FCEB: string;
    FSituacao: string;
    FEnd_Rua: string;
    FEnd_NR: string;
    FEnd_Complem: string;
    FEnd_Bairro: string;
    FEnd_Cep: string;
    FEnd_Cidade: string;
    FEnd_UF: string;
    FFone_Fixo: string;
    FFone_Movel: string;
    FEmail: string;
    FGenero: string;
    FEstado_Civil: string;
    FNome_Conjuge: string;
    FNascConjuge: string;
    FDataCasamento: string;
    FDataCadastro: string;
    procedure SetNome(const Value: string);
    procedure SetCDFicha(const Value: Integer);
   public
      property CDFicha: Integer read FCDFicha write SetCDFicha;
      property Nome: string     read FNome    write SetNome;
      property DataNasc: string read FDataNasc write FDataNasc;
      property CEB: string      read FCEB      write FCEB;
      property End_Rua: string  read FEnd_Rua  write FEnd_Rua;
      property End_NR: string   read FEnd_NR   write FEnd_NR;
      property End_Complem: string read FEnd_Complem write FEnd_Complem;
      property End_Bairro: string  read FEnd_Bairro  write FEnd_Bairro;
      property End_Cep: string     read FEnd_Cep     write FEnd_Cep;
      property End_Cidade: string  read FEnd_Cidade  write FEnd_Cidade;
      property End_UF: string      read FEnd_UF      write FEnd_UF;
      property Fone_Fixo: string   read FFone_Fixo  write FFone_Fixo;
      property Fone_Movel: string  read FFone_Movel write FFone_Movel;
      property Email: string       read FEmail      write FEmail;
      property Genero: string      read FGenero     write FGenero;
      property Estado_Civil: string read FEstado_Civil   write FEstado_Civil;
      property Nome_Conjuge: string read FNome_Conjuge   write FNome_Conjuge;
      property NascConjuge: string  read FNascConjuge    write FNascConjuge;
      property DataCasamento: string read FDataCasamento write FDataCasamento;
      property DataCadastro: string  read FDataCadastro  write FDataCadastro;
      property Situacao: string      read FSituacao      write FSituacao;
   end;

implementation

{ TCadPes }

procedure TDizimista.SetCDFicha(const Value: Integer);
begin
   if Value < 0 then
      raise EArgumentException.Create('''Ficha N�'' precisa ser preenchido!');

  FCDFicha := Value;
end;

procedure TDizimista.SetNome(const Value: string);
begin
   if Value = EmptyStr then
      raise EArgumentException.Create('''Nome'' precisa ser preenchido!');

  FNome := Value;
end;

end.