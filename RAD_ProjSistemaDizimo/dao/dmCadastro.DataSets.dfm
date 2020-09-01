object dmCadastroDataSet: TdmCadastroDataSet
  OldCreateOrder = False
  Height = 387
  Width = 639
  object sqlAlterar: TSQLDataSet
    CommandText = 
      'update tbl_plandados'#13#10'set nome = :nome,'#13#10'    nascdizimista = :na' +
      'scdizimista,'#13#10'    comunidade = :comunidade,'#13#10'    end_rua = :end_' +
      'rua,'#13#10'    end_nr = :end_nr,'#13#10'    end_complem = :end_complem,'#13#10'  ' +
      '  end_bairro = :end_bairro,'#13#10'    end_cep = :end_cep,'#13#10'    end_ci' +
      'dade = :end_cidade,'#13#10'    end_uf = :end_uf,'#13#10'    fone_fixo = :fon' +
      'e_fixo,'#13#10'    fone_movel = :fone_movel,'#13#10'    email = :email,'#13#10'   ' +
      ' genero = :genero,'#13#10'    estado_civil = :estado_civil,'#13#10'    nome_' +
      'conj = :nome_conj,'#13#10'    nasconjuge = :nasconjuge,'#13#10'    datacasam' +
      'ento = :datacasamento,'#13#10'    datacadastro = :datacadastro,'#13#10'    s' +
      'ituacao = :situacao'#13#10'where (cdficha = :cdficha)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'nascdizimista'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'comunidade'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'end_rua'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'end_nr'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'end_complem'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'end_bairro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'end_cep'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'end_cidade'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'end_uf'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'fone_fixo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'fone_movel'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'email'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'genero'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'estado_civil'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nome_conj'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'nasconjuge'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'datacasamento'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'datacadastro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'situacao'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cdficha'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.sqlConexao
    Left = 256
    Top = 56
  end
  object sqlInativar: TSQLDataSet
    CommandText = 
      'update tbl_plandados'#13#10'set situacao = '#39'I'#39#13#10'where (cdficha = :cdfi' +
      'cha)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'cdficha'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.sqlConexao
    Left = 344
    Top = 56
  end
  object dspPesquisar: TDataSetProvider
    DataSet = sqlPesquisar
    Left = 40
    Top = 152
  end
  object cdsPesq: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CDFICHA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 85
      end
      item
        Name = 'NASCDIZIMISTA'
        DataType = ftDate
      end
      item
        Name = 'FONE_MOVEL'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'SITUACAO'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cdficha'
        ParamType = ptInput
      end>
    ProviderName = 'dspPesquisar'
    StoreDefs = True
    Left = 40
    Top = 256
    object cdsPesqCDFICHA: TIntegerField
      FieldName = 'CDFICHA'
      Required = True
    end
    object cdsPesqNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 85
    end
    object cdsPesqNASCDIZIMISTA: TDateField
      FieldName = 'NASCDIZIMISTA'
    end
    object cdsPesqFONE_MOVEL: TStringField
      FieldName = 'FONE_MOVEL'
      Size = 16
    end
    object cdsPesqSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
  end
  object sqlNovo: TSQLDataSet
    CommandText = 
      'insert into tbl_plandados (cdficha, nome, nascdizimista, comunid' +
      'ade, end_rua, end_nr, end_complem, end_bairro, end_cep, end_cida' +
      'de, end_uf, fone_fixo, fone_movel, email, genero, estado_civil, ' +
      'nome_conj, nasconjuge, datacasamento, datacadastro, situacao)'#13#10'v' +
      'alues (:cdficha, :nome, :nascdizimista, :comunidade, :end_rua, :' +
      'end_nr, :end_complem, :end_bairro, :end_cep, :end_cidade, :end_u' +
      'f, :fone_fixo, :fone_movel, :email, :genero, :estado_civil, :nom' +
      'e_conj, :nasconjuge, :datacasamento, :datacadastro, :situacao)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdficha'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'nascdizimista'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'comunidade'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'end_rua'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'end_nr'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'end_complem'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'end_bairro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'end_cep'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'end_cidade'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'end_uf'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'fone_fixo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'fone_movel'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'email'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'genero'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'estado_civil'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'nome_conj'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'nasconjuge'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'datacasamento'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'datacadastro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'situacao'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.sqlConexao
    Left = 144
    Top = 56
  end
  object sqlPesquisar: TSQLDataSet
    CommandText = 
      'select cdficha, nome, nascdizimista, fone_Movel, situacao'#13#10'from ' +
      'tbl_plandados'#13#10'where (nome like :nome) or (cdficha like :cdficha' +
      ')'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'nome'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cdficha'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.sqlConexao
    Left = 40
    Top = 56
    object sqlPesquisarCDFICHA: TIntegerField
      FieldName = 'CDFICHA'
      Required = True
    end
    object sqlPesquisarNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 85
    end
    object sqlPesquisarNASCDIZIMISTA: TDateField
      FieldName = 'NASCDIZIMISTA'
    end
    object sqlPesquisarFONE_MOVEL: TStringField
      FieldName = 'FONE_MOVEL'
      Size = 16
    end
    object sqlPesquisarSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
  end
  object sqlBuscarFicha: TSQLDataSet
    CommandText = 
      'select cdficha, nome, nascdizimista, fone_Movel, situacao'#13#10'from ' +
      'tbl_plandados'#13#10'where (cdficha like :cdficha)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cdficha'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.sqlConexao
    Left = 440
    Top = 56
  end
  object dspBuscarFicha: TDataSetProvider
    DataSet = sqlBuscarFicha
    Left = 440
    Top = 152
  end
  object cdsBuscarFicha: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'cdficha'
        ParamType = ptInput
      end>
    ProviderName = 'dspBuscarFicha'
    Left = 440
    Top = 256
    object cdsBuscarFichaCDFICHA: TIntegerField
      FieldName = 'CDFICHA'
      Required = True
    end
    object cdsBuscarFichaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 85
    end
    object cdsBuscarFichaNASCDIZIMISTA: TSQLTimeStampField
      FieldName = 'NASCDIZIMISTA'
    end
    object cdsBuscarFichaFONE_MOVEL: TStringField
      FieldName = 'FONE_MOVEL'
      Size = 16
    end
    object cdsBuscarFichaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 10
    end
  end
  object sqlGravarNull: TSQLConnection
    Left = 552
    Top = 56
  end
  object dspGravarNull: TDataSetProvider
    Left = 552
    Top = 160
  end
  object cdsGravarNull: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 552
    Top = 256
  end
end
