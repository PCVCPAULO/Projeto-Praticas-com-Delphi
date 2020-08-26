unit CLContagemCedulas;

interface

{    Seção interface
   - a estrutra de uma Unit determina que as definições de Procedures,
     Function ou dos métodos da classe fiquem aqui. }

uses Classes, Dialogs, SysUtils;

{  Criaremos uma Classe que simule uma Contador de Cédulas
   Os objetivos dessa clase é emitir a quantidade de notas necessárias para
   compor um determinado valor.

   Afim de simplificar a classe, não aceitaremos centavos e a saída da
   distribuição de nota será na realidade uma String Descritiva.

   A interface que se comunicará com a classe deve solicitar ao usuário
   um valor para contagem de cédulas.  }

type
  TContagemCedulas = class
  protected
    FValorContagem : integer;
    FQtdNotas100   : integer;
    FQtdNotas50    : integer;
    FQtdNotas20    : integer;
    FQtdNotas10    : integer;
    FQtdNotas5     : integer;
    FQtdNotas2     : integer;
    FQtdNotas1     : integer;

    procedure Distribuicao;
    procedure DefineValorContagem(valor: integer);
  public
    function ObterDistribuicao: TStringList;
    property ValorContagem: integer read FValorContagem
                                    write DefineValorContagem;

end;

{  Herança
   Na definição da classe TContagemCedulas, a classe-pai foi omitida, por ser
   automaticamente a classe TObject.

   Visibilidade de atributos e Operações
   Para a classe TContagemCedulas, estaremos definindo seus elementos
   privados, protegidos e públicos, por meio das declarações
   Private, Protected e Public.

   - tudo que for definido como PRIVATE só poderá ser acessado dentro da
     própria classe, e no caso de uma herança, não será enxergado.

   - nas declarações abaixo da declaração PROTECTED serão acessadas dentro
     da própria classe e pelas classes descendentes.

   - as definições feitas na declaração PUBLIC serão acessadas dentro e fora
     da classe. }

implementation

{  Aqui ficam os códigos pripriamente ditos. As operações criam vidas.
   A definição do método na Seção Implementation deve ser feito assim:
   - Escopo Tipo-do-método Nome-da-Classe.Assinatura-da-Operação

   Onde:
   ESCOPO corresponde ao escopo da operação (de instância ou de classe).
   Se nada for colocado, é considerado como instância.

   Para definir um escopo de classe deve-se colocar a palavra CLASS.

   Tipo-do-método corresponde à PROCEDURE ou FUNCTION.
   Nome-da-Classe é o mesmo nome definido na declaração TYPE.
   Assinatura-da-Operação é a mesma assintatura definida na seção Interface. }

uses Math;

{ TContagemCedulas }

procedure TContagemCedulas.DefineValorContagem(valor: integer);
begin
  if valor < 0 then
     FValorContagem := 0
  else
  begin
    FValorContagem := valor;
    Distribuicao();
  end;
end;

procedure TContagemCedulas.Distribuicao;
var
  iAux: integer;
begin
  iAux := FValorContagem;

  FQtdNotas100 := iAux div 100;
  iAux := iAux mod 100;

  if iAux > 0 then
  begin
    FqtdNotas50 := iAux div 50;
    iAux := iAux mod 50;

    if iAux > 0 then
      begin
        FQtdNotas20 := iAux div 20;
        iAux := iAux mod 20;

       if iAux > 0 then
        begin
          FQtdNotas10 := iAux div 10;
          iAux := iAux mod 10;

          if iAux >0 then
          begin
            FQtdNotas5 := iAux div 5;
            iAux := iAux mod 5;

            if iAux > 0  then
            begin
              FQtdNotas2 := iAux div 2;
              iAux := iAux mod 2;

              FQtdNotas1 := iAux;
            end;
          end;
       end;
    end;
  end;
end;

function TContagemCedulas.ObterDistribuicao: TStringList;
var
  lista : TStringList;
begin
  lista := TStringList.Create;

  lista.Add(IntToStr(FQtdNotas100) + ' nota(s) de 100');
  lista.Add(IntToStr(FQtdNotas50) + ' nota(s) de 50');
  lista.Add(IntToStr(FQtdNotas20) + ' nota(s) de 20');
  lista.Add(IntToStr(FQtdNotas10) + ' nota(s) de 10');
  lista.Add(IntToStr(FQtdNotas5) + ' nota(s) de 5');
  lista.Add(IntToStr(FQtdNotas2) + ' nota(s) de 2');
  lista.Add(IntToStr(FQtdNotas1) + ' nota(s) de 1');

  result := lista;
end;

end.
