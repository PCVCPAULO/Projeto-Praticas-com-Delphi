object dmBoletoFastReport: TdmBoletoFastReport
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 336
  Width = 461
  object Report: TfrxReport
    Tag = 1
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40401.475989294000000000
    ReportOptions.LastChange = 43614.384283078700000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 32
    Top = 16
  end
  object TfrxDBDataset: TfrxDBDataset
    UserName = 'frxDsBoletos'
    CloseDataSource = False
    DataSet = dmDadosBoleto.Boletos
    BCDToCurrency = False
    Left = 256
    Top = 16
  end
  object frxBarCode: TfrxBarCodeObject
    Left = 128
    Top = 16
  end
end
