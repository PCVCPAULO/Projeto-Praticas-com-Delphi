object dtmVendedor: TdtmVendedor
  OldCreateOrder = False
  Height = 246
  Width = 435
  object FDConexao: TFDConnection
    Params.Strings = (
      
        'Database=D:\MeusProjetos_NBAsus\Projetos_Delphi_RAD\ProgramaVend' +
        'as_MVC-DAO\Model\CONTROLEVENDAS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 96
  end
  object FDTransaction: TFDTransaction
    Connection = FDConexao
    Left = 176
    Top = 96
  end
  object qryAcesso: TFDQuery
    Active = True
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
end
