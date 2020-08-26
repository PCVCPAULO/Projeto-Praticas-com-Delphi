unit CLTexto;

interface

uses Classes, StdCtrls, CLEstilo;

type
  TTexto = class
    protected
      FValor : string;
      FEstilo : TEstilo;

{  M�TODOS CONSTRUCTOR E DESTRUCTOR
   Toda classe possui seus m�tods construtores e destrutoroes.

   Um m�todo construtor cria uma �REA em mem�ria para o objeto,
   colocando nesta �rea a estrutra da classe, ou seja, INSTANCIA um objeto
   a partir da classe.

   Um m�todo destrutor serve para eliminar o objeto da mem�ria, liberando
   o espa�o ocupado. }

    public
      constructor Create;
      destructor Destroy; override;

    procedure formataTxT(componente : TLabel);

    property Valor : string   read FValor write FValor;
    property Estilo: TEstilo  read FEstilo write FEstilo;
  end;

implementation

{ TTexto }

constructor TTexto.Create;
begin
  FValor := '';
  FEstilo := TEstilo.Create;
end;

destructor TTexto.Destroy;
begin
  FEstilo.Free;
  inherited;
end;

procedure TTexto.formataTxT(componente: TLabel);
begin
  componente.Caption   := Valor;
  componente.Font.Name := FEstilo.Fonte;
  componente.Font.Size := FEstilo.Tamanho;
end;

end.
