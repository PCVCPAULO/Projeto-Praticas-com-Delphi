unit udmBoletoFastReport;

interface

uses
  System.SysUtils, System.Classes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxBarcode, frxClass, frxDBSet,
  GeraBoleto.Boleto,
  udmDadosBoleto;

type
  TdmBoletoFastReport = class(TDataModule)
    Report: TfrxReport;
    TfrxDBDataset: TfrxDBDataset;
    frxBarCode: TfrxBarCodeObject;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure AdicionaDadosNoMemTable(Aboleto: IBoleto);
  end;

var
  dmBoletoFastReport: TdmBoletoFastReport;

implementation


{$R *.dfm}

{ TdmBoletoFastReport }

procedure TdmBoletoFastReport.AdicionaDadosNoMemTable(Aboleto: IBoleto);
begin
   dmDadosBoleto.AdicionaDadosNoMemTable(ABoleto);
end;

procedure TdmBoletoFastReport.DataModuleCreate(Sender: TObject);
begin
   dmDadosBoleto := TdmDadosBoleto.Create(Self);
end;

end.
