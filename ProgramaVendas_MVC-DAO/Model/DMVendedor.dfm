object dtmVendedor: TdtmVendedor
  OldCreateOrder = False
  Height = 246
  Width = 435
  object FDConexao: TFDConnection
    Params.Strings = (
      
        'Database=D:\Projeto-Praticas-com-Delphi_(GitHub)\ProgramaVendas_' +
        'MVC-DAO\Model\CONTROLVENDAS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 16
  end
  object FDTransaction: TFDTransaction
    Connection = FDConexao
    Left = 56
    Top = 104
  end
  object qryAcesso: TFDQuery
    Connection = FDConexao
    Transaction = FDTransaction
    SQL.Strings = (
      'SELECT * FROM VENDEDOR')
    Left = 312
    Top = 96
  end
  object dtsVendedor: TDataSource
    DataSet = qryAcesso
    Left = 312
    Top = 168
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 304
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 176
    Top = 24
  end
end
