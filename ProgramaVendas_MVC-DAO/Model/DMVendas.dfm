object dtmVendas: TdtmVendas
  OldCreateOrder = False
  Height = 309
  Width = 407
  object FDConexao: TFDConnection
    Params.Strings = (
      
        'Database=D:\MeusProjetos_NBAsus\Projetos_Delphi_RAD\ProgramaVend' +
        'as_MVC-DAO\Model\CONTROLEVENDAS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 128
  end
  object FDTransaction: TFDTransaction
    Connection = FDConexao
    Left = 176
    Top = 128
  end
  object dtsVenda: TDataSource
    DataSet = qryAcessoVenda
    Left = 312
    Top = 200
  end
  object qryAcessoVenda: TFDQuery
    Active = True
    Connection = FDConexao
    Transaction = FDTransaction
    SQL.Strings = (
      'select * from VENDA')
    Left = 304
    Top = 128
  end
end
