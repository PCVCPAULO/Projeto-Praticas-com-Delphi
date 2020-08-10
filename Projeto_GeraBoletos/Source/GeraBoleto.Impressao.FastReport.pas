unit GeraBoleto.Impressao.FastReport;

interface

uses
   GeraBoleto.Impressao,
   GeraBoleto.Boleto,
   udmBoletoFastReport,
   System.Generics.Collections, SysUtils;

type
   TImpressaoBoletoFast = class(TInterfacedObject, IImpressaoBoleto)
     private
       FReportFile: string;
     public
       constructor Create(AReportFile: string);
       procedure Imprime(ABoletos: TList<IBoleto>);
   end;

implementation

{ TImpressaoBoletoFast }


constructor TImpressaoBoletoFast.Create(AReportFile: string);
begin
   FReportFile := AReportFile;
   if FReportFile.IsEmpty then
      raise Exception.Create('Arquivo do FastReport não informado!');
   if not FileExists(FReportFile) then
      raise Exception.Create('Arquivo do FastReport não encontrado!');
end;

procedure TImpressaoBoletoFast.Imprime(ABoletos: TList<IBoleto>);
var
   I: Integer;
   Dm: TdmBoletoFastReport;
begin
   Dm := TdmBoletoFastReport.Create(nil);
   try
      for I := 0 to ABoletos.Count - 1 do
        Dm.AdicionaDadosNoMemTable(ABoletos[I]);
      Dm.Report.LoadFromFile(FReportFile);
      Dm.Report.ShowReport;
   finally
     FreeAndNil(Dm);
   end;
//
end;

end.
