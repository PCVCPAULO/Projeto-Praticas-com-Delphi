object dtmVendas: TdtmVendas
  OldCreateOrder = False
  Height = 309
  Width = 407
  object FDConexao: TFDConnection
    Params.Strings = (
      
        'Database=D:\Projeto-Praticas-com-Delphi_(GitHub)\ProgramaVendas_' +
        'MVC-DAO\Model\CONTROLVENDAS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 40
  end
  object FDTransaction: TFDTransaction
    Connection = FDConexao
    Left = 48
    Top = 136
  end
  object dtsVenda: TDataSource
    DataSet = qryAcessoVenda
    Left = 312
    Top = 200
  end
  object qryAcessoVenda: TFDQuery
    Connection = FDConexao
    Transaction = FDTransaction
    SQL.Strings = (
      'select * from VENDA')
    Left = 304
    Top = 128
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 304
    Top = 32
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 176
    Top = 40
  end
end
