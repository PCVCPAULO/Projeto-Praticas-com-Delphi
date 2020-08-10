unit GeraBoleto.Impressao.Fortes;

interface

uses
   System.Generics.Collections, System.SysUtils,
   GeraBoleto.Impressao,
   GeraBoleto.Boleto;
  // ufrmBoletoFortesReport;
type
   TImpressaoBoletoFortes = class(TInterfacedObject, IImpressaoBoleto)
   public
      procedure Imprime(ABoletos: TList<IBoleto>);
   end;

implementation

uses
  ufrmBoletoFortesReport;

{ TImpressaoBoletoFortes }

procedure TImpressaoBoletoFortes.Imprime(ABoletos: TList<IBoleto>);
var
   I: Integer;
   frmFortesReport: TfrmBoletoFortesReport;
begin
   frmFortesReport := TfrmBoletoFortesReport.Create(nil);
   try
     for I := 0 to ABoletos.Count - 1 do
       frmFortesReport.AdicionaDadosNoMemTable(ABoletos[I]);
     frmFortesReport.BoletoFortes.PreviewModal;
   finally
      FreeAndNil(frmFortesReport);
   end;
end;

end.
