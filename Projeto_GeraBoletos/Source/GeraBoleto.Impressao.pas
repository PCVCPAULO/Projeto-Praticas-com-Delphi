unit GeraBoleto.Impressao;

interface

uses
   GeraBoleto.Boleto, System.Generics.Collections;
type
   IImpressaoBoleto = interface
     procedure Imprime(ABoletos: TList<IBoleto>);
   end;

implementation

end.
