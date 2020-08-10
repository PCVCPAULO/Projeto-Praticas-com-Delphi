object DM: TDM
  OldCreateOrder = False
  Height = 378
  Width = 488
  object conexao: TFDConnection
    Params.Strings = (
      'ConnectionDef=BasePDV')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 24
  end
  object FDCliente: TFDQuery
    Active = True
    Connection = conexao
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'select * from clientes')
    Left = 40
    Top = 96
    object FDClienteID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FDClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 10
    end
    object FDClienteLIMITE_CLIENTE: TFloatField
      FieldName = 'LIMITE_CLIENTE'
      Origin = 'LIMITE_CLIENTE'
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 408
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 288
    Top = 24
  end
  object FDItens_Venda: TFDQuery
    Connection = conexao
    UpdateOptions.AutoIncFields = 'ID_ITEM'
    SQL.Strings = (
      'select * from itens_venda'
      '')
    Left = 128
    Top = 224
    object FDItens_VendaID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
    end
    object FDItens_VendaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object FDItens_VendaPRECO_ITEM: TFloatField
      FieldName = 'PRECO_ITEM'
      Origin = 'PRECO_ITEM'
    end
    object FDItens_VendaQUANTIDADE_ITEM: TIntegerField
      FieldName = 'QUANTIDADE_ITEM'
      Origin = 'QUANTIDADE_ITEM'
    end
    object FDItens_VendaTOTAL_ITEM: TFloatField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
    end
    object FDItens_VendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object FDItens_VendaVLRRECEBIDO: TFloatField
      FieldName = 'VLRRECEBIDO'
      Origin = 'VLRRECEBIDO'
    end
    object FDItens_VendaTROCO: TFloatField
      FieldName = 'TROCO'
      Origin = 'TROCO'
    end
  end
  object FDPagamentos: TFDQuery
    Connection = conexao
    UpdateOptions.AutoIncFields = 'ID_PAGAMENTO'
    SQL.Strings = (
      'select * from pagamentos')
    Left = 232
    Top = 224
    object FDPagamentosID_PAGAMENTO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_PAGAMENTO'
      Origin = 'ID_PAGAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDPagamentosNOME_PAGAMENTO: TStringField
      FieldName = 'NOME_PAGAMENTO'
      Origin = 'NOME_PAGAMENTO'
      Size = 30
    end
  end
  object FDProdutos: TFDQuery
    Active = True
    Connection = conexao
    UpdateOptions.AutoIncFields = 'ID_PRODUTO'
    SQL.Strings = (
      'select * from produtos')
    Left = 40
    Top = 160
    object FDProdutosID_PRODUTO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDProdutosCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
      FixedChar = True
      Size = 13
    end
    object FDProdutosNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Origin = 'NOME_PRODUTO'
      Size = 100
    end
    object FDProdutosPRECO_PRODUTO: TFloatField
      FieldName = 'PRECO_PRODUTO'
      Origin = 'PRECO_PRODUTO'
      DisplayFormat = '#,###.00'
    end
  end
  object FDVendas: TFDQuery
    Connection = conexao
    UpdateOptions.AutoIncFields = 'ID_VENDA'
    SQL.Strings = (
      'select * from vendas')
    Left = 40
    Top = 224
    object FDVendasID_VENDA: TFDAutoIncField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FDVendasID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object FDVendasID_PAGAMENTO: TIntegerField
      FieldName = 'ID_PAGAMENTO'
      Origin = 'ID_PAGAMENTO'
    end
    object FDVendasSUBTOTAL_VENDA: TFloatField
      FieldName = 'SUBTOTAL_VENDA'
      Origin = 'SUBTOTAL_VENDA'
    end
    object FDVendasDESCONTO_VENDA: TFloatField
      FieldName = 'DESCONTO_VENDA'
      Origin = 'DESCONTO_VENDA'
    end
    object FDVendasRECEBIDO_VENDA: TFloatField
      FieldName = 'RECEBIDO_VENDA'
      Origin = 'RECEBIDO_VENDA'
    end
    object FDVendasTROCO_VENDA: TFloatField
      FieldName = 'TROCO_VENDA'
      Origin = 'TROCO_VENDA'
    end
  end
end
