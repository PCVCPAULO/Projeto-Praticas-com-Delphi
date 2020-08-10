object DM_Relatorios: TDM_Relatorios
  OldCreateOrder = False
  Height = 504
  Width = 592
  object frxDBD_Cadastro: TfrxDBDataset
    UserName = 'cds_ConsultaCadastro'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CDFICHA=CDFICHA'
      'NOME=NOME'
      'DT_NASC=DT_NASC'
      'COMUNIDADE=COMUNIDADE'
      'END_RUA=END_RUA'
      'END_NR=END_NR'
      'END_COMPLEM=END_COMPLEM'
      'END_BAIRRO=END_BAIRRO'
      'END_CEP=END_CEP'
      'END_CIDADE=END_CIDADE'
      'END_UF=END_UF'
      'FONE_FIXO=FONE_FIXO'
      'FONE_MOVEL=FONE_MOVEL'
      'EMAIL=EMAIL'
      'GENERO=GENERO'
      'ESTADO_CIVIL=ESTADO_CIVIL'
      'NOME_CONJ=NOME_CONJ'
      'NASCONJUGE=NASCONJUGE'
      'DATACASAMENTO=DATACASAMENTO'
      'DATACADASTRO=DATACADASTRO'
      'SITUACAO=SITUACAO')
    DataSet = frm_ConsultaCadastro.cds_ConsultaCadastro
    BCDToCurrency = False
    Left = 72
    Top = 56
  end
  object frxDBD_Lancam: TfrxDBDataset
    UserName = 'DS_Lancam'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CDFICHA=CDFICHA'
      'NOMEDIZ=NOMEDIZ'
      'VLRDOACAO=VLRDOACAO'
      'ID_REFERENCIA=ID_REFERENCIA'
      'REFERENCIA=REFERENCIA'
      'DTLANCAMENTO=DTLANCAMENTO')
    DataSet = frm_ConsultaLancam.cds_ConsultaLancam
    BCDToCurrency = False
    Left = 504
    Top = 56
  end
  object rel_Lancam: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43770.619456064800000000
    ReportOptions.LastChange = 43777.616579942100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '                                   '
      'begin'
      '                                '
      'end.              ')
    Left = 504
    Top = 128
    Datasets = <
      item
        DataSet = frxDBD_Lancam
        DataSetName = 'DS_Lancam'
      end>
    Variables = <
      item
        Name = ' Variaveias de Dados'
        Value = Null
      end
      item
        Name = 'Qtd_Dizimista'
        Value = Null
      end
      item
        Name = 'Vlr_Periodo'
        Value = Null
      end
      item
        Name = 'Total_Mes'
        Value = Null
      end
      item
        Name = 'VlrTotal_Mes'
        Value = Null
      end
      item
        Name = 'Fechamento'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object rel_Lancam_Dizimo: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 64.251997800000000000
        Top = 41.574830000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 39.000000000000000000
          Width = 64.252010000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ficha N'#186)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 39.000000000000000000
          Width = 419.527830000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome do Dizimista')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 398.732530000000000000
          Top = 39.000000000000000000
          Width = 71.811070000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor (R$)')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 483.779527560000000000
          Top = 39.000000000000000000
          Width = 162.519685040000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Refer'#234'ncia')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 20.118120000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Comunidade Matriz "Santo Ant'#244'nio"')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 710.551640000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTROLE DE RECEBIMENTO DO D'#205'ZIMO')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 38.818897640000000000
          Width = 68.031540000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 39.015770000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 61.252010000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object md_Campos: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897637795275600000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        DataSet = frxDBD_Lancam
        DataSetName = 'DS_Lancam'
        RowCount = 0
        object lbl_ZebrarLinha: TfrxMemoView
          AllowVectorExport = True
          Top = 1.889763780000000000
          Width = 718.110236220000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 13421772
          Highlight.Frame.Typ = []
          ParentFont = False
        end
        object DS_LancamCDFICHA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.669291340000000000
          Top = 2.645669290000000000
          Width = 56.692913390000000000
          Height = 15.118120000000000000
          DataField = 'CDFICHA'
          DataSet = frxDBD_Lancam
          DataSetName = 'DS_Lancam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DS_Lancam."CDFICHA"]')
          ParentFont = False
        end
        object DS_LancamNOMEDIZ: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 74.590551180000000000
          Top = 2.645669290000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          DataField = 'NOMEDIZ'
          DataSet = frxDBD_Lancam
          DataSetName = 'DS_Lancam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DS_Lancam."NOMEDIZ"]')
          ParentFont = False
        end
        object DS_LancamVLRDOACAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 405.512060000000000000
          Top = 4.157480310000000000
          Width = 60.472440944881900000
          Height = 15.118120000000000000
          DataSet = frxDBD_Lancam
          DataSetName = 'DS_Lancam'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DS_Lancam."VLRDOACAO"]')
          ParentFont = False
        end
        object DS_LancamREFERENCIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 485.559370000000000000
          Top = 2.645669290000000000
          Width = 170.078740160000000000
          Height = 18.897650000000000000
          DataField = 'REFERENCIA'
          DataSet = frxDBD_Lancam
          DataSetName = 'DS_Lancam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DS_Lancam."REFERENCIA"]')
          ParentFont = False
        end
        object DS_LancamDTLANCAMENTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 657.527559060000000000
          Top = 2.645669290000000000
          Width = 60.472440940000000000
          Height = 15.118110240000000000
          DataField = 'DTLANCAMENTO'
          DataSet = frxDBD_Lancam
          DataSetName = 'DS_Lancam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DS_Lancam."DTLANCAMENTO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677167800000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 627.401980000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 632.165740000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'g.: [Page]')
          ParentFont = False
        end
        object TotalPages: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '/[TotalPages#]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Top = 7.559055120000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Per'#237'odo do Fechamento: ')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Width = 718.110236220472000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 169.008040000000000000
          Top = 52.913385830000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Dizimistas no M'#234's: ')
        end
        object lbl_QtdDizimista: TfrxMemoView
          AllowVectorExport = True
          Left = 238.819110000000000000
          Top = 29.559055120000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Qtd. Dizimistas: ')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 490.236550000000000000
          Top = 29.559055120000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor do Per'#237'odo:')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 414.645950000000000000
          Top = 52.913385830000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total do D'#237'zimo no M'#234's:')
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 4.559060000000000000
          Width = 718.110236220472000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Qtd_Dizimista: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 347.393940000000000000
          Top = 29.480314960000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Qtd_Dizimista]')
        end
        object Vlr_Periodo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 30.236240000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Vlr_Periodo]')
        end
        object Total_Mes: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 347.393940000000000000
          Top = 52.913385830000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Total_Mes]')
        end
        object VlrTotal_Mes: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 52.913385830000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[VlrTotal_Mes]')
        end
        object Fechamento: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Fechamento]')
        end
      end
    end
  end
  object rel_Cadastro: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43777.372061932900000000
    ReportOptions.LastChange = 43781.415111550920000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 72
    Top = 144
    Datasets = <
      item
        DataSet = frxDBD_Cadastro
        DataSetName = 'cds_ConsultaCadastro'
      end>
    Variables = <
      item
        Name = ' Variavel do DB'
        Value = Null
      end
      item
        Name = 'var_Total'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 15.118110240000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        DataSet = frxDBD_Cadastro
        DataSetName = 'cds_ConsultaCadastro'
        RowCount = 0
        object lbl_ZebrarLinhas: TfrxMemoView
          AllowVectorExport = True
          Top = 0.755905511811024000
          Width = 718.110700000000000000
          Height = 15.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 15000804
          Highlight.Frame.Typ = []
          ParentFont = False
        end
        object cds_ConsultaCadastroCDFICHA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 0.661410000000000000
          Width = 49.133858270000000000
          Height = 15.118120000000000000
          DataField = 'CDFICHA'
          DataSet = frxDBD_Cadastro
          DataSetName = 'cds_ConsultaCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[cds_ConsultaCadastro."CDFICHA"]')
          ParentFont = False
        end
        object cds_ConsultaCadastroNOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 0.661410000000000000
          Width = 393.071120000000000000
          Height = 15.118110240000000000
          DataField = 'NOME'
          DataSet = frxDBD_Cadastro
          DataSetName = 'cds_ConsultaCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cds_ConsultaCadastro."NOME"]')
          ParentFont = False
        end
        object cds_ConsultaCadastroDT_NASC: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 0.661410000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DataField = 'DT_NASC'
          DataSet = frxDBD_Cadastro
          DataSetName = 'cds_ConsultaCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cds_ConsultaCadastro."DT_NASC"]')
          ParentFont = False
        end
        object cds_ConsultaCadastroFONE_MOVEL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 0.661410000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          DataField = 'FONE_MOVEL'
          DataSet = frxDBD_Cadastro
          DataSetName = 'cds_ConsultaCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cds_ConsultaCadastro."FONE_MOVEL"]')
          ParentFont = False
        end
        object cds_ConsultaCadastroSITUACAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 691.653990000000000000
          Top = 0.661410000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          DataField = 'SITUACAO'
          DataSet = frxDBD_Cadastro
          DataSetName = 'cds_ConsultaCadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[cds_ConsultaCadastro."SITUACAO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 631.181510000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'g.: [Page]')
          ParentFont = False
        end
        object TotalPages: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 683.110700000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '/[TotalPages#]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 68.031527800000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 46.000000000000000000
          Width = 56.692950000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Ficha N'#186)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 46.000000000000000000
          Width = 393.071120000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome do Dizimista')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 46.000000000000000000
          Width = 94.488250000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nascimento')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 46.000000000000000000
          Width = 124.724490000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186' Celular')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 691.653990000000000000
          Top = 46.000000000000000000
          Width = 22.677180000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'A/I')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 65.007874020000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTROLE DE RECEBIMENTO DO D'#205'ZIMO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Comunidade Matriz "Santo Ant'#244'nio"')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 43.354360000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Top = 4.000000000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Dizimistas Ativos: ')
        end
        object var_Total: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 4.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[var_Total]')
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 2.000000000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDBD_ConsultaNiver: TfrxDBDataset
    UserName = 'cds_ConsultaNiver'
    CloseDataSource = False
    DataSet = frm_ConsultaNiver.cds_ConsultaNiver
    BCDToCurrency = False
    Left = 224
    Top = 56
  end
  object rel_ConsultaNiver: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43780.483296562500000000
    ReportOptions.LastChange = 43780.661863240740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 224
    Top = 144
    Datasets = <
      item
        DataSet = frxDBD_ConsultaNiver
        DataSetName = 'cds_ConsultaNiver'
      end>
    Variables = <
      item
        Name = ' Variavel do DB'
        Value = Null
      end
      item
        Name = 'MesNiver'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SISTEMA DE CONTROLE DE RECEBIMENTO DO D'#205'ZIMO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Comunidade Matriz "Santo Ant'#244'nio"')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 216.535560000000000000
          Top = 52.913420000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Aniversariantes do M'#234's:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 106.141764020000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 84.488250000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 88.283528030000000000
          Width = 56.692950000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Ficha N'#186)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 88.283528030000000000
          Width = 408.189240000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome do Dizimista')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 88.283528030000000000
          Width = 94.488250000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nascimento')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 88.267780000000000000
          Width = 124.724490000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186' Celular')
          ParentFont = False
        end
        object MesNiver: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 52.913420000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MesNiver]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        DataSet = frxDBD_ConsultaNiver
        DataSetName = 'cds_ConsultaNiver'
        RowCount = 0
        object cds_ConsultaNiverCDFICHA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'CDFICHA'
          DataSet = frxDBD_ConsultaNiver
          DataSetName = 'cds_ConsultaNiver'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[cds_ConsultaNiver."CDFICHA"]')
          ParentFont = False
        end
        object cds_ConsultaNiverNOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 64.252010000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxDBD_ConsultaNiver
          DataSetName = 'cds_ConsultaNiver'
          Frame.Typ = []
          Memo.UTF8W = (
            '[cds_ConsultaNiver."NOME"]')
        end
        object cds_ConsultaNiverDT_NASC: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 480.000310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'DT_NASC'
          DataSet = frxDBD_ConsultaNiver
          DataSetName = 'cds_ConsultaNiver'
          Frame.Typ = []
          Memo.UTF8W = (
            '[cds_ConsultaNiver."DT_NASC"]')
        end
        object cds_ConsultaNiverDT_NASC1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 585.827150000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'DT_NASC'
          DataSet = frxDBD_ConsultaNiver
          DataSetName = 'cds_ConsultaNiver'
          Frame.Typ = []
          Memo.UTF8W = (
            '[cds_ConsultaNiver."DT_NASC"]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 1.220470000000000000
          Width = 627.401980000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 632.165740000000000000
          Top = 1.220470000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'g.: [Page]')
          ParentFont = False
        end
        object TotalPages: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 684.094930000000000000
          Top = 1.220470000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '/[TotalPages#]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBD_ConsultaNiverConj: TfrxDBDataset
    UserName = 'cds_ConsultaNiverConj'
    CloseDataSource = False
    DataSet = frm_ConsultaNiverConj.cds_ConsultaNiverConj
    BCDToCurrency = False
    Left = 72
    Top = 200
  end
  object rel_ConsultaNiverConj: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43780.553843553200000000
    ReportOptions.LastChange = 43780.661092777780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 72
    Top = 256
    Datasets = <
      item
        DataSet = frxDBD_ConsultaNiverConj
        DataSetName = 'cds_ConsultaNiverConj'
      end>
    Variables = <
      item
        Name = ' Variavel do DB'
        Value = Null
      end
      item
        Name = 'MesNiverConj'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SISTEMA DE CONTROLE DE RECEBIMENTO DO D'#205'ZIMO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Comunidade Matriz "Santo Ant'#244'nio"')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 156.094488188976400000
          Top = 52.913420000000000000
          Width = 313.700990000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#244'njuges Aniversariantes do M'#234's:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 84.488250000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object MesNiverConj: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 52.913420000000000000
          Width = 143.622140000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[MesNiverConj]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        DataSet = frxDBD_ConsultaNiverConj
        DataSetName = 'cds_ConsultaNiverConj'
        RowCount = 0
        object cds_ConsultaNiverConjCDFICHA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'CDFICHA'
          DataSet = frxDBD_ConsultaNiverConj
          DataSetName = 'cds_ConsultaNiverConj'
          Frame.Typ = []
          Memo.UTF8W = (
            '[cds_ConsultaNiverConj."CDFICHA"]')
        end
        object cds_ConsultaNiverConjNOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 207.874015750000000000
          Top = 7.559055120000000000
          Width = 393.071120000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxDBD_ConsultaNiverConj
          DataSetName = 'cds_ConsultaNiverConj'
          Frame.Typ = []
          Memo.UTF8W = (
            '[cds_ConsultaNiverConj."NOME"]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 30.236240000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome do(a) C'#244'njuge:')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Ficha N'#186)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 7.559060000000000000
          Width = 132.283550000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome do Dizimista:')
          ParentFont = False
        end
        object cds_ConsultaNiverConjNOME_CONJ: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 30.236240000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_CONJ'
          DataSet = frxDBD_ConsultaNiverConj
          DataSetName = 'cds_ConsultaNiverConj'
          Frame.Typ = []
          Memo.UTF8W = (
            '[cds_ConsultaNiverConj."NOME_CONJ"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 30.236240000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Nascimento: ')
        end
        object cds_ConsultaNiverConjNASCONJUGE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 612.283860000000000000
          Top = 30.236240000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'NASCONJUGE'
          DataSet = frxDBD_ConsultaNiverConj
          DataSetName = 'cds_ConsultaNiverConj'
          Frame.Typ = []
          Memo.UTF8W = (
            '[cds_ConsultaNiverConj."NASCONJUGE"]')
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 54.472480000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 287.244280000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = -3.779530000000000000
          Width = 627.401980000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 632.165740000000000000
          Top = -3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'g.: [Page]')
          ParentFont = False
        end
        object TotalPages: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 684.094930000000000000
          Top = -3.779530000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '/[TotalPages#]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBD_ConsultaNiverUniao: TfrxDBDataset
    UserName = 'cds_ConsultaNiverUniao'
    CloseDataSource = False
    DataSet = frm_ConsultaNiverUniao.cds_ConsultaNiverCasam
    BCDToCurrency = False
    Left = 224
    Top = 200
  end
  object rel_ConsultaNiverUniao: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43780.553843553200000000
    ReportOptions.LastChange = 43780.660369247690000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 224
    Top = 256
    Datasets = <
      item
        DataSet = frxDBD_ConsultaNiverUniao
        DataSetName = 'cds_ConsultaNiverUniao'
      end>
    Variables = <
      item
        Name = ' Variavel do DB'
        Value = Null
      end
      item
        Name = 'MesNiverUniao'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = -3.779530000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SISTEMA DE CONTROLE DE RECEBIMENTO DO D'#205'ZIMO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 18.897650000000000000
          Width = 710.551640000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Comunidade Matriz "Santo Ant'#244'nio"')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 156.063080000000000000
          Top = 49.133890000000000000
          Width = 328.819110000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Anivers'#225'rios de Casamento do M'#234's:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 80.708720000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 41.574830000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object MesNiverUniao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 487.559370000000000000
          Top = 49.133890000000000000
          Width = 143.622140000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[MesNiverUniao]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frxDBD_ConsultaNiverUniao
        DataSetName = 'cds_ConsultaNiverUniao'
        RowCount = 0
        object cds_ConsultaNiverUniaoCDFICHA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 28.015770000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'CDFICHA'
          DataSet = frxDBD_ConsultaNiverUniao
          DataSetName = 'cds_ConsultaNiverUniao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[cds_ConsultaNiverUniao."CDFICHA"]')
        end
        object cds_ConsultaNiverUniaoNOME_CONJ: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 145.511811023622000000
          Top = 24.236240000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_CONJ'
          DataSet = frxDBD_ConsultaNiverUniao
          DataSetName = 'cds_ConsultaNiverUniao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[cds_ConsultaNiverUniao."NOME_CONJ"]')
        end
        object cds_ConsultaNiverUniaoDATACASAMENTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 24.236240000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'DATACASAMENTO'
          DataSet = frxDBD_ConsultaNiverUniao
          DataSetName = 'cds_ConsultaNiverUniao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[cds_ConsultaNiverUniao."DATACASAMENTO"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 1.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Ficha N'#186)
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 1.779530000000000000
          Width = 64.251968503937000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Dizimista: ')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 24.236240000000000000
          Width = 64.251968503937000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#244'njuge: ')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 24.236240000000000000
          Width = 132.283464566929000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data do Casamento:')
        end
        object cds_ConsultaNiverUniaoNOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 145.511811023622000000
          Top = 1.779530000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxDBD_ConsultaNiverUniao
          DataSetName = 'cds_ConsultaNiverUniao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[cds_ConsultaNiverUniao."NOME"]')
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 46.692950000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 352
    Top = 56
  end
end
