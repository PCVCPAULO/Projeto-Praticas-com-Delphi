unit CLContagemCedulas;

interface

{    Se��o interface
   - a estrutra de uma Unit determina que as defini��es de Procedures,
     Function ou dos m�todos da classe fiquem aqui. }

uses Classes, Dialogs, SysUtils;

{  Criaremos uma Classe que simule uma Contador de C�dulas
   Os objetivos dessa clase � emitir a quantidade de notas necess�rias para
   compor um determinado valor.

   Afim de simplificar a classe, n�o aceitaremos centavos e a sa�da da
   distribui��o de nota ser� na realidade uma String Descritiva.

   A interface que se comunicar� com a classe deve solicitar ao usu�rio
   um valor para contagem de c�dulas.  }

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

{  Heran�a
   Na defini��o da classe TContagemCedulas, a classe-pai foi omitida, por ser
   automaticamente a classe TObject.

   Visibilidade de atributos e Opera��es
   Para a classe TContagemCedulas, estaremos definindo seus elementos
   privados, protegidos e p�blicos, por meio das declara��es
   Private, Protected e Public.

   - tudo que for definido como PRIVATE s� poder� ser acessado dentro da
     pr�pria classe, e no caso de uma heran�a, n�o ser� enxergado.

   - nas declara��es abaixo da declara��o PROTECTED ser�o acessadas dentro
     da pr�pria classe e pelas classes descendentes.

   - as defini��es feitas na declara��o PUBLIC ser�o acessadas dentro e fora
     da classe. }

implementation

{  Aqui ficam os c�digos pripriamente ditos. As opera��es criam vidas.
   A defini��o do m�todo na Se��o Implementation deve ser feito assim:
   - Escopo Tipo-do-m�todo Nome-da-Classe.Assinatura-da-Opera��o

   Onde:
   ESCOPO corresponde ao escopo da opera��o (de inst�ncia ou de classe).
   Se nada for colocado, � considerado como inst�ncia.

   Para definir um escopo de classe deve-se colocar a palavra CLASS.

   Tipo-do-m�todo corresponde � PROCEDURE ou FUNCTION.
   Nome-da-Classe � o mesmo nome definido na declara��o TYPE.
   Assinatura-da-Opera��o � a mesma assintatura definida na se��o Interface. }

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
