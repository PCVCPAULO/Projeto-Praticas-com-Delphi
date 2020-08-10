inherited frm_CadastroReceber: Tfrm_CadastroReceber
  BorderStyle = bsNone
  Caption = 'frm_CadastroReceber'
  ClientHeight = 832
  ClientWidth = 1106
  Position = poDefault
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 813
    Width = 1106
  end
  inherited ToolBar1: TToolBar
    Top = 770
    Width = 1106
  end
  inherited PageControl1: TPageControl
    Width = 921
    Height = 700
    ActivePage = tbs_Cadastro
    inherited tbs_Cadastro: TTabSheet
      ExplicitWidth = 897
      ExplicitHeight = 633
      object Label6: TLabel
        Left = 12
        Top = 16
        Width = 88
        Height = 21
        Caption = 'Documento: '
      end
      object Label9: TLabel
        Left = 12
        Top = 51
        Width = 74
        Height = 21
        Caption = 'Descri'#231#227'o: '
      end
      object Label4: TLabel
        Left = 12
        Top = 86
        Width = 96
        Height = 21
        Caption = 'Qtd. Parcelas: '
      end
      object Label5: TLabel
        Left = 12
        Top = 121
        Width = 96
        Height = 21
        Caption = 'Valor Compra'
      end
      object Label8: TLabel
        Left = 12
        Top = 156
        Width = 107
        Height = 21
        Caption = 'Dt. da Compra: '
      end
      object edt_Documento: TEdit
        Left = 133
        Top = 13
        Width = 179
        Height = 25
        TabOrder = 0
      end
      object edt_Descricao: TEdit
        Left = 133
        Top = 48
        Width = 503
        Height = 25
        TabOrder = 1
      end
      object edt_Parcela: TEdit
        Left = 133
        Top = 83
        Width = 83
        Height = 25
        TabOrder = 2
      end
      object edt_Variacao: TEdit
        Left = 303
        Top = 83
        Width = 121
        Height = 25
        TabOrder = 3
        OnChange = edt_VariacaoChange
      end
      object edt_ValorCompra: TtpEdit
        Left = 133
        Top = 118
        Width = 176
        Height = 29
        Alignment = taRightJustify
        CharCase = ecUpperCase
        TabOrder = 4
        Text = '0,00'
        Caracter = tcReal
      end
      object edt_DataCompra: TtpEdit
        Left = 133
        Top = 149
        Width = 176
        Height = 29
        Alignment = taRightJustify
        CharCase = ecUpperCase
        MaxLength = 8
        TabOrder = 5
        Check = ckDate
        Caracter = tcNumeric
      end
      object btn_GeraParcelas: TButton
        Left = 133
        Top = 188
        Width = 116
        Height = 29
        Caption = 'Gerar Parcelas'
        TabOrder = 6
        OnClick = btn_GeraParcelasClick
      end
      object btn_LimpaParcelas: TButton
        Left = 308
        Top = 188
        Width = 116
        Height = 29
        Caption = 'Limpar Parcelas'
        TabOrder = 7
      end
      object dbg_Parcelas: TDBGrid
        Left = 133
        Top = 223
        Width = 291
        Height = 354
        DataSource = ds_Parcelas
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 8
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = dbg_ParcelasDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'Parcela'
            Width = 79
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
            Width = 92
            Visible = True
          end>
      end
    end
    inherited tbs_Pesquisar: TTabSheet
      ExplicitLeft = 4
      ExplicitHeight = 633
      inherited dbg_Dados: TDBGrid
        Width = 913
        Height = 582
      end
      inherited Panel2: TPanel
        Width = 913
        inherited btn_Filtrar: TButton
          OnClick = btn_FiltrarClick
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 1106
  end
  inherited Panel3: TPanel
    Left = 921
    Height = 700
  end
  inherited Panel4: TPanel
    Width = 1106
  end
  inherited ds_Tabela: TDataSource
    DataSet = dm_Dados.cds_Contas_Receber
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
