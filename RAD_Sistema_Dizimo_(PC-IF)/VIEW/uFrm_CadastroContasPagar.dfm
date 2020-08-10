inherited frm_CadastroContasPagar: Tfrm_CadastroContasPagar
  BorderStyle = bsNone
  Caption = 'Lan'#231'amento das Contas a Pagar'
  ClientHeight = 830
  ClientWidth = 1111
  Position = poDefault
  WindowState = wsMaximized
  ExplicitWidth = 1111
  ExplicitHeight = 830
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 811
    Width = 1111
    ExplicitTop = 591
    ExplicitWidth = 1090
  end
  inherited ToolBar1: TToolBar
    Top = 768
    Width = 1111
    ExplicitTop = 548
    ExplicitWidth = 1090
  end
  inherited PageControl1: TPageControl
    Width = 926
    Height = 698
    ActivePage = tbs_Cadastro
    ExplicitHeight = 395
    inherited tbs_Cadastro: TTabSheet
      Font.Height = -13
      ExplicitWidth = 897
      ExplicitHeight = 367
      object Label4: TLabel
        Left = 25
        Top = 86
        Width = 84
        Height = 17
        Caption = 'Qtd. Parcelas: '
      end
      object Label5: TLabel
        Left = 25
        Top = 121
        Width = 81
        Height = 17
        Caption = 'Valor Compra'
      end
      object Label7: TLabel
        Left = 231
        Top = 86
        Width = 57
        Height = 17
        Caption = 'Varia'#231#227'o: '
      end
      object Label8: TLabel
        Left = 25
        Top = 156
        Width = 93
        Height = 17
        Caption = 'Dt. da Compra: '
      end
      object Label6: TLabel
        Left = 25
        Top = 16
        Width = 74
        Height = 17
        Caption = 'Documento: '
      end
      object Label9: TLabel
        Left = 25
        Top = 51
        Width = 64
        Height = 17
        Caption = 'Descri'#231#227'o: '
      end
      object edt_Documento: TEdit
        Left = 146
        Top = 13
        Width = 179
        Height = 25
        TabOrder = 0
      end
      object edt_Descricao: TEdit
        Left = 146
        Top = 48
        Width = 503
        Height = 25
        TabOrder = 1
      end
      object edt_Parcela: TEdit
        Left = 146
        Top = 83
        Width = 83
        Height = 25
        TabOrder = 2
      end
      object edt_Variacao: TEdit
        Left = 316
        Top = 83
        Width = 121
        Height = 25
        TabOrder = 3
      end
      object dbg_Parcelas: TDBGrid
        Left = 146
        Top = 223
        Width = 291
        Height = 354
        DataSource = ds_Parcelas
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 8
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = dbg_ParcelasDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'Parcela'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vencimento'
            Width = 88
            Visible = True
          end>
      end
      object edt_ValorCompra: TtpEdit
        Left = 146
        Top = 118
        Width = 176
        Height = 25
        Alignment = taRightJustify
        CharCase = ecUpperCase
        TabOrder = 4
        Text = '0,00'
        Caracter = tcReal
      end
      object btn_GeraParcelas: TButton
        Left = 146
        Top = 188
        Width = 116
        Height = 29
        Caption = 'Gerar Parcelas'
        TabOrder = 6
        OnClick = btn_GeraParcelasClick
      end
      object btn_LimpaParcelas: TButton
        Left = 321
        Top = 188
        Width = 116
        Height = 29
        Caption = 'Limpar Parcelas'
        TabOrder = 7
        OnClick = btn_LimpaParcelasClick
      end
      object edt_DataCompra: TtpEdit
        Left = 146
        Top = 149
        Width = 176
        Height = 25
        Alignment = taRightJustify
        CharCase = ecUpperCase
        MaxLength = 8
        TabOrder = 5
        Check = ckDate
        Caracter = tcNumeric
      end
    end
    inherited tbs_Pesquisar: TTabSheet
      ExplicitLeft = 4
      ExplicitHeight = 367
      inherited dbg_Dados: TDBGrid
        Width = 918
        Height = 580
        Font.Height = -13
        TitleFont.Height = -13
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMERO_DOC'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARCELA'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_PARCELA'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_COMPRA'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_ABATIDO'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_COMPRA'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_VENCTO'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_PAGTO'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_CADASTRO'
            Visible = True
          end>
      end
      inherited Panel2: TPanel
        Width = 918
        ExplicitWidth = 1111
        object Label10: TLabel [2]
          Left = 16
          Top = 66
          Width = 346
          Height = 17
          Caption = '* Legenda (Status): A = Aberto / B = Baixado / C = Cancelado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGrayText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentFont = False
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 1111
  end
  inherited Panel3: TPanel
    Left = 926
    Height = 698
    ExplicitLeft = 905
    ExplicitTop = 153
    ExplicitHeight = 395
  end
  inherited Panel4: TPanel
    Width = 1111
  end
  inherited ds_Tabela: TDataSource
    DataSet = dm_Dados.cds_Contas_Pagar
    Left = 928
    Top = 200
  end
  inherited img_Cadastro: TImageList
    Left = 940
    Top = 128
  end
  inherited acl_Cadastro: TActionList
    Left = 932
    Top = 64
  end
  object cds_Parcelas: TClientDataSet
    PersistDataPacket.Data = {
      5F0000009619E0BD0100000018000000030000000000030000005F0007506172
      63656C6104000100000000000556616C6F720800040000000100075355425459
      50450200490006004D6F6E6579000A56656E63696D656E746F04000600000000
      000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 932
    Top = 256
    object cds_ParcelasParcela: TIntegerField
      FieldName = 'Parcela'
    end
    object cds_ParcelasValor: TCurrencyField
      FieldName = 'Valor'
    end
    object cds_ParcelasVencimento: TDateField
      FieldName = 'Vencimento'
    end
  end
  object ds_Parcelas: TDataSource
    DataSet = cds_Parcelas
    Left = 932
    Top = 304
  end
end
