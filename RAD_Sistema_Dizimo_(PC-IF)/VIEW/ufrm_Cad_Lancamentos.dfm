object frm_Cad_Lancamentos: Tfrm_Cad_Lancamentos
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Registro dos Lan'#231'amento do D'#237'zimo'
  ClientHeight = 690
  ClientWidth = 1325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_Executando: TPanel
    Left = 0
    Top = 0
    Width = 1325
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 14
      Width = 110
      Height = 25
      Caption = 'Executando...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMedGray
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbl_Atividade: TLabel
      Left = 150
      Top = 14
      Width = 5
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMedGray
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  object pnl3_DaDireita: TPanel
    Left = 1176
    Top = 105
    Width = 149
    Height = 545
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitHeight = 735
  end
  object pnl_ToolBar_Botoes: TPanel
    Left = 0
    Top = 50
    Width = 1325
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object pnl_ToolBar: TToolBar
      Left = 0
      Top = 0
      Width = 1325
      Height = 50
      BorderWidth = 2
      ButtonHeight = 42
      ButtonWidth = 105
      Caption = 'pnl_ToolBar'
      TabOrder = 0
      object btn0_Inserir: TButton
        Left = 0
        Top = 0
        Width = 105
        Height = 42
        Caption = '&Novo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageIndex = 0
        Images = img_Cadastro
        ParentFont = False
        TabOrder = 2
        OnClick = btn0_InserirClick
      end
      object btn1_Editar: TButton
        Left = 105
        Top = 0
        Width = 105
        Height = 42
        Align = alClient
        Caption = 'Editar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageIndex = 1
        Images = img_Cadastro
        ParentFont = False
        TabOrder = 1
        OnClick = btn1_EditarClick
      end
      object btn2_Excluir: TButton
        Left = 210
        Top = 0
        Width = 105
        Height = 42
        Caption = 'Excluir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageIndex = 2
        Images = img_Cadastro
        ParentFont = False
        TabOrder = 0
        OnClick = btn2_ExcluirClick
      end
      object btn3_Gravar: TButton
        Left = 315
        Top = 0
        Width = 105
        Height = 42
        Caption = 'Gravar'
        ImageIndex = 3
        Images = img_Cadastro
        TabOrder = 3
        OnClick = btn3_GravarClick
        OnExit = btn3_GravarExit
        OnKeyDown = btn3_GravarKeyDown
      end
      object btn4_Cancelar: TButton
        Left = 420
        Top = 0
        Width = 105
        Height = 42
        Caption = 'Cancelar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageIndex = 4
        Images = img_Cadastro
        ParentFont = False
        TabOrder = 4
        OnClick = btn4_CancelarClick
      end
      object btn5_Pesquisar: TButton
        Left = 525
        Top = 0
        Width = 105
        Height = 42
        Caption = 'Pesquisar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageIndex = 5
        Images = img_Cadastro
        ParentFont = False
        TabOrder = 5
        OnClick = btn5_PesquisarClick
      end
      object ToolButton1: TToolButton
        Left = 630
        Top = 0
        Width = 15
        Caption = 'ToolButton1'
        Style = tbsSeparator
      end
      object btn6_Imprimir: TButton
        Left = 645
        Top = 0
        Width = 105
        Height = 42
        Caption = 'Imprimir'
        ImageIndex = 6
        Images = img_Cadastro
        TabOrder = 7
        OnClick = btn6_ImprimirClick
      end
      object ToolButton2: TToolButton
        Left = 750
        Top = 0
        Width = 15
        Caption = 'ToolButton2'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object brn7_FecharFrom: TButton
        Left = 765
        Top = 0
        Width = 105
        Height = 42
        Caption = '&Sair'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ImageIndex = 7
        Images = img_Cadastro
        ParentFont = False
        TabOrder = 6
        OnClick = brn7_FecharFromClick
      end
    end
  end
  object pnl_Fundo: TPanel
    Left = 0
    Top = 105
    Width = 1176
    Height = 545
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitHeight = 735
    object pgc_Lancam: TPageControl
      Left = 0
      Top = 25
      Width = 1176
      Height = 520
      ActivePage = tbs_Lancamentos
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 710
      object tbs_Lancamentos: TTabSheet
        ExplicitHeight = 662
        object Label9: TLabel
          Left = 1006
          Top = 57
          Width = 32
          Height = 21
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 729
          Top = 57
          Width = 116
          Height = 21
          Caption = 'Refer'#234'ncia (M'#234's)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 604
          Top = 57
          Width = 69
          Height = 21
          Caption = 'Valor (R$)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 95
          Top = 57
          Width = 133
          Height = 21
          Caption = 'Nome do Dizimista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 16
          Top = 57
          Width = 59
          Height = 21
          Caption = 'N'#186' Ficha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object pnl_Data_Abertura: TPanel
          Left = 0
          Top = 0
          Width = 1168
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 5
          DesignSize = (
            1168
            41)
          object Label11: TLabel
            Left = 16
            Top = 10
            Width = 509
            Height = 26
            AutoSize = False
            BiDiMode = bdLeftToRight
            Caption = 'Entre com a Data em que as Carteirinhas foram abertas:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            WordWrap = True
          end
          object edt_DataAbertura: TMaskEdit
            Left = 564
            Top = 13
            Width = 97
            Height = 27
            Alignment = taRightJustify
            Anchors = [akRight, akBottom]
            BorderStyle = bsNone
            EditMask = '!99/99/9999;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
            Text = '  /  /    '
            OnKeyPress = edt_DataAberturaKeyPress
          end
        end
        object dbg_Lancamentos: TDBGrid
          Left = 0
          Top = 116
          Width = 1168
          Height = 376
          Align = alBottom
          DataSource = ds_Tabela
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDrawColumnCell = dbg_LancamentosDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'CDFICHA'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMEDIZ'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 510
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDOACAO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 128
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REFERENCIA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 271
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTLANCAMENTO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = []
              Width = 147
              Visible = True
            end>
        end
        object edt_CDFicha: TEdit
          Left = 15
          Top = 81
          Width = 74
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = edt_CDFichaKeyPress
        end
        object edt_Nome: TEdit
          Left = 95
          Top = 81
          Width = 504
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edt_Valor: TtpEdit
          Left = 603
          Top = 81
          Width = 124
          Height = 29
          Alignment = taRightJustify
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = '0,00'
          OnKeyPress = edt_ValorKeyPress
          Caracter = tcReal
        end
        object cbx_Referencia: TsComboBox
          Left = 733
          Top = 81
          Width = 267
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ItemIndex = -1
          TabOrder = 3
          OnKeyPress = cbx_ReferenciaKeyPress
        end
        object edt_DataLancam: TMaskEdit
          Left = 1006
          Top = 81
          Width = 132
          Height = 29
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 10
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 6
          Text = '  /  /    '
        end
      end
      object tbs_Pesquisa: TTabSheet
        ImageIndex = 1
        ExplicitHeight = 682
        object Label3: TLabel
          Left = 17
          Top = 9
          Width = 43
          Height = 21
          Caption = 'Filtros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 130
          Top = 9
          Width = 66
          Height = 21
          Caption = 'Pesquisar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 128
          Top = 69
          Width = 310
          Height = 13
          Caption = '(Aten'#231#227'o!! Entre com a data no seguinte formato: DD/MM/AAAA)'
          Color = clCream
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clOlive
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsItalic]
          ParentColor = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 724
          Top = 9
          Width = 146
          Height = 21
          Caption = 'Data do Lan'#231'amento.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object cbx_Pesquisar: TComboBox
          Left = 16
          Top = 31
          Width = 106
          Height = 29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'Por Ficha'
          OnClick = cbx_PesquisarClick
          Items.Strings = (
            'Por Ficha'
            'Por Data'
            'Valor (R$)')
        end
        object edt_Pesquisar: TEdit
          Left = 128
          Top = 31
          Width = 458
          Height = 29
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = edt_PesquisarKeyPress
        end
        object btn_Filtrar: TButton
          Left = 592
          Top = 29
          Width = 89
          Height = 36
          Caption = 'Filtrar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMedGray
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ImageIndex = 12
          Images = img_Cadastro
          ParentFont = False
          TabOrder = 2
          OnClick = btn_FiltrarClick
        end
        object dbg_PesqLancamentos: TDBGrid
          Left = 0
          Top = 88
          Width = 1168
          Height = 404
          Align = alBottom
          DataSource = ds_Tabela
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDrawColumnCell = dbg_PesqLancamentosDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'CDFICHA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMEDIZ'
              Width = 480
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRDOACAO'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              Width = 5
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REFERENCIA'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTLANCAMENTO'
              Width = 115
              Visible = True
            end>
        end
        object Edit1: TMaskEdit
          Left = 724
          Top = 31
          Width = 132
          Height = 29
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          EditMask = '!99/99/9999;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 10
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 4
          Text = '  /  /    '
          OnKeyPress = Edit1KeyPress
        end
      end
    end
    object pnl_Cacalho: TPanel
      Left = 0
      Top = 0
      Width = 1176
      Height = 25
      Align = alTop
      TabOrder = 1
    end
  end
  object pnl_StatusBar: TPanel
    Left = 0
    Top = 650
    Width = 1325
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    ExplicitTop = 840
    object edt_Hora: TEdit
      Left = 2
      Top = 3
      Width = 79
      Height = 29
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edt_ContaRegistros: TEdit
      Left = 405
      Top = 3
      Width = 185
      Height = 29
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edt_Data: TEdit
      Left = 85
      Top = 3
      Width = 316
      Height = 29
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edt_VLR_Total: TEdit
      Left = 728
      Top = 3
      Width = 146
      Height = 29
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edt_Total: TEdit
      Left = 595
      Top = 3
      Width = 128
      Height = 29
      Alignment = taRightJustify
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object img_Cadastro: TImageList
    Height = 32
    Width = 32
    Left = 916
    Top = 56
    Bitmap = {
      494C01010D001800040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000008000000001002000000000000000
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000969190FF736E6EFFAF7D7EFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000979291FF6C6C70FF174B82FF326089FFAF7B7BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000838686FF3A79B1FF1A81FFFF0D62BCFF3B5F7FFFB07D7DFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002698FFFF3DB0FFFF349DFFFF1C7EF8FF0C62BAFF395E7FFFB07B
      7DFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002996FFFF42ADFEFF349AFFFF1C7EF8FF0C60B8FF405F
      7FFFB17D7BFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002A96FEFF41AFFEFF349AFFFF1C7EF8FF0C5F
      B8FF3E5F7EFFB07B7BFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002A97FEFF41AFFEFF349AFFFF1A7B
      F8FF0B5FB7FF44627FFFA97A7EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002C98FEFF41ADFEFF349C
      FFFF197BF6FF0C5EB6FF2B587FFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002D99FEFF41AD
      FEFF339CFFFF287FE7FF3D607BFF00000000F4F0F015CEB9B963AD8989A79364
      64DC844E4EFB936464DCAD8989A7CEB9B963F4F0F01500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002D9A
      FEFF4BB5FFFF8CBDEDFFAC9F96FF725352FFA98383B08B5654FFBC9D88FFEDE3
      C4FFFCFCD7FFEDE3C1FFC4A18FFF8B5654FFA98383B0DECFCF43000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BC928BFF94605EF1B58B77FFFFFFD3FFFFFFD3FFFFFF
      D0FFFFFFCFFFFFFFD0FFFFFFD3FFFFFFE2FFBA9587FF8E5B5AF1DECFCF430000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4F0F015936261E7BA8E78FFFFEFB0FFFBEDB8FFFFFFCFFFFFFF
      CEFFFFFFCFFFFFFFD7FFFFFFDCFFFFFFEAFFFFFFFFFFB89695FFA98383B0F4F0
      F015000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CEB9B9638B5654FFFFEAA6FFF2C78FFFFAEBB6FFFFFFD0FFFFFF
      CFFFFFFFD3FFFFFFE5FFFFFFF2FFFFFFFAFFFFFFFCFFFFFFFEFF8B5654FFCEB9
      B963000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD8989A7C29A81FFF6CA8BFFEEBA7FFFFBE7B4FFFFFFD0FFFFFF
      CFFFFFFFD7FFFFFFEBFFFFFFFEFFFFFFFCFFFFFFF2FFFFFFE5FFB89884FFAD89
      89A7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000936464DCEDD79FFFF0BC7DFFEBB075FFF7DDA7FFFEFCCBFFFFFF
      D1FFFFFFD5FFFFFFE6FFFFFFF6FFFFFFF6FFFFFFE6FFFFFFD7FFEDE3C5FF9364
      64DC000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000844E4EFBFCEEADFFEFBA7BFFE9A56AFFF2C98FFFFCEFBCFFFFFF
      D1FFFFFFD3FFFFFFD9FFFFFFE1FFFFFFE2FFFFFFD9FFFFFFD3FFFCFCD8FF844E
      4EFB000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000936464DCEDD8A3FFF3C484FFE99E63FFEDB57AFFF4D79FFFFCF4
      C2FFFFFFD1FFFFFFD3FFFFFFD3FFFFFFD3FFFFFFD0FFFFFFCFFFEDE3C2FF9364
      64DC000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD8989A7C29A81FFFCDE9EFFEFBA7EFFEEB779FFEFC284FFF6DA
      A1FFFBF2BFFFFFFFCFFFFFFFD1FFFFFFD0FFFFFFD0FFFFFFD1FFBA9884FFAD89
      89A7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CEB9B9638B5654FFFFFEC2FFFBEBCAFFF6D7ACFFF0C186FFEFBF
      82FFF3CC95FFFAE3ADFFFCF0BCFFFBF4C1FFFEF6C4FFFFFFD4FF8B5654FFCEB9
      B963000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4F0F015936261E7BB9682FFFFFFFFFFFEF7EEFFF6D8ACFFEDB4
      74FFE9A76BFFEDB478FFF0C48AFFF6D49CFFFFF4B6FFB89380FFA98383B0F4F0
      F015000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DECFCF438E5B5AF1B5928EFFFFFFFFFFFFF4CBFFF6CF
      90FFF0BC7DFFF2BF81FFF7CE90FFFFEDA9FFBA8F7BFF8E5B5AF1DECFCF430000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DECFCF43A98383B08B5654FFBF9A81FFEDDD
      A5FFFCEFADFFEDD8A1FFC49D83FF8B5654FF936261E7DECFCF43000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F0F015CEB9B963AD8989A79364
      64DC844E4EFB936464DCAD8989A7CEB9B963F4F0F01500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005C5C5C005555
      5500626262007D7D7D0093939300A1A1A100B5B5B500C9C9C900CDCDCD00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535353002F2F2F00323232004444
      44005A5A5A007E7E7E009C9C9C00AEAEAE00C8C8C800E3E3E300F1F1F100E3E3
      E300B7B7B700B7B7B70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009098D0011119D000A0A9000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000020287000202910002028500000000000000
      000000000000000000000000000000000000000000007A7A7A007A7A7A007A7A
      7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A
      7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A7A007A7A
      7A007A7A7A007A7A7A007A7A7A007A7A7A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000081818100535353002E2E2E00333333004848
      48005F5F5F0088888800A5A5A500B4B4B400C9C9C900DFDFDF00EDEDED00E3E3
      E300C8C8C800AEAEAE0097979700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBC
      BC00BDBCBC00B6B3B300B6B2B200B4B1B100B4B1B100B6B3B300B6B3B3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000707
      90002A2ABE003E3EE3002727C400080891000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002028A000404B2000303CA000303A900020289000000
      0000000000000000000000000000000000000000000081818100FCFCFC00F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800FCFCFC00818181000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A7A7A700818181005B5B5B005E5E5E008B8B8B00B2B2
      B200C2C2C200CFCFCF00D0D0D000D0D0D000CFCFCF00DDDDDD00D9D9D900D4D4
      D400C7C7C700B1B1B10096969600979797000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3C0C000C3C0C000C3C0C000D4D0
      D000D1CDCD00CEC9C900C9C5C500C7C2C200C4BFBF00C1BBBB00BEB8B800ADA9
      A900ADA9A900ADA9A90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080891003131
      C1003A3ADF000F0FC1002D2DD8002727C4000808910000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002028B000505B3000404C1000101A6000303C0000303A9000202
      8900000000000000000000000000000000000000000089898900F2F2F200E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E5E5E500E5E5E500E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400F2F2F200888888000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A7A7A700A7A7A700CAC9C900DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00EAEA
      EA00E7E7E700D4D4D400B1B1B100979797000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CCCACA00CCCACA00DBD9DB00DEDBDB00B6B3C4008380
      C1006A69CC007472D0007474DB007A7ADB007B7AD3007270D0008380C100ADA9
      BB00BEB7B700B7B1B100ADA8A800ADA8A8000000000000000000000000000000
      00000000000000000000000000000000000000000000090992003737C4004343
      E4001313C8001212C7001212C6002E2EDC002929C50008089200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003038B000808B4000505C1000101A6000101A6000101A6000303C0000303
      A90002028900000000000000000000000000000000008F8F8F00F2F2F200E5E5
      E500E5E5E500E6E6E600E6E6E600E6E6E600E5E5E500E3E3E300DBDBDB00D8D8
      D800E1E1E100E6E6E600E5E5E500E5E5E500E5E5E500E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400F2F2F2008F8F8F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9CDC100C1C1C100DADAD900E4E4E400DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00ECEC
      EC00F1F1F100EDEDED00DCDCDC00A9A9A900DBD4CD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CFCDCD00E1DFDF00E8E6E600ADAAC5005351C4004949EC007474
      F9009797F800B0B0F900BFBFFA00C2C2FA00B5B5F9009C9CF9007878F9004C4C
      EC004E4CC800A5A1BD00B9B3B300B3ADAD00B8B5B50000000000000000000000
      0000000000000000000000000000000000000E0E94003D3DC7004C4CE9001616
      CE001616CD001515CD001515CB001414CA003030DC002A2AC500080892000000
      0000000000000000000000000000000000000000000000000000000000000303
      8C000A0AB5000909C3000101A6000101A6000101A6000101A6000101A6000303
      C0000303A9000202850000000000000000000000000095959500F2F2F200E6E6
      E600E7E7E700E7E7E700E7E7E700E7E7E700E3E3E300D2D2D2008F7F73007F37
      0F00BDB5AF00E6E6E600E7E7E700E7E7E700E6E6E600E6E6E600E5E5E500E4E4
      E400E4E4E400E4E4E400F2F2F200949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9CDC100E0E0E000DEDEDE00D6D6D600CCCCCB00D5D5D500DBDB
      DA00DDDDDD00E2E1E100E9E9E900EEEEEE00EEEEEE00EEEEEE00EAEAEA00EFEF
      EF00E5E5E500DCDCDC00DCDCDC00D4D4D300F5F5F500DBD4CD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D4D4D400EEEDED00E8E5E5006C6ABD002D2DEB006565F5008A8AF5009595
      F600A1A1F700ACACF900B4B4F900B5B5F900AFAFF900A5A5F8009999F7008E8E
      F5006767F5003131EB006866C700C4BFBF00B5AFAF00B5B1B100000000000000
      0000000000000000000000000000000000001717A2006767F2001919D4001919
      D4001919D3001818D2001818D1001717D0001616CE003131E0002B2BC6000808
      920000000000000000000000000000000000000000000000000004048D000E0E
      B7000D0DC5000101A6000101A6000101A6000101A6000101A6000101A6000101
      A6000303CA00020291000000000000000000000000009A9A9A00F3F3F300E8E8
      E800E8E8E800E9E9E900E8E8E800E2E2E200CECECE007E644B00C36B0F00BA4A
      0C00AEA39C00E7E7E700E8E8E800E7E7E700E8E8E800E7E7E700E7E7E700E6E6
      E600E5E5E500E4E4E400F2F2F2009A9A9A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9CDC100FAFAF900E5E5E500D4D4D400C8C8C700CECDCD00D4D3
      D300DADADA00DDDCDC00D8D8D800D1D0D000C6C6C500BEBEBD00BEBEBD00D8D8
      D700DADADA00DBDBDA00DCDCDB00E2E2E100F1F0F000DBD4CD00000000000000
      000000000000000000000000000000000000000000000000000000000000DDDC
      DC00EFEFF300DFDDE6005553C4003B3BF4006A6AF1007979F3008383F4008E8E
      F5009898F700A0A0F700A6A6F800A7A7F800A2A2F7009B9BF7009191F5008787
      F4007C7CF3006D6DF2003737F4004545CA00B7B2BB00B6B0B000B9B6B6000000
      00000000000000000000000000000000000014149D004949CF004D4DEC001C1C
      D9001B1BD9001B1BD8001A1AD7001A1AD5001919D3001818D1003232E1002C2C
      C700080892000000000000000000000000000000000005058E001515BB001313
      CB000303AA000101A6000101A6000101A6000101A6000101A6000101A6000404
      C1000404B20002028700000000000000000000000000A0A0A000F4F4F400E9E9
      E900EAEAEA00E8E8E800E0E0E000BFBCBB0080603000DEA51A00EC941900C05F
      0F009C918A00CECECE00D9D9D900E3E3E300E7E7E700E9E9E900E8E8E800E7E7
      E700E7E7E700E6E6E600F2F2F2009F9F9F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9CDC100FFFCFC00FFFDFD00F0EFEF00D9D9D800D1D0D000D3BD
      B100DADADA00DDDCDC00D8D8D800D1D0D000C6C6C500BEBDBD00BEBDBD00D7D7
      D600DCDCDC00E1E1E100EEECEC00FFFCFC00F1F0F000DBD4CD00000000000000
      0000000000000000000000000000000000000000000000000000DAD9D900EAEA
      EA00F1F0F0005452C4003636EE005D5DEC006868F0007171F2007B7BF3008484
      F4008D8DF5009393F6009797F7009898F7009595F6008F8FF5008787F5007E7E
      F3007474F2006B6BF1006161EE003131ED005454D000C7C3C300B5AFAF00B0AB
      AB0000000000000000000000000000000000000000000F0F9A004A4ACF004F4F
      EF001F1FDF001E1EDE001D1DDC001C1CDB001B1BD9001A1AD6001919D4003333
      E2002C2CC700080892000000000000000000060690001B1BBF001B1BD2000707
      B2000505AD000202A9000101A6000101A6000101A6000101A6000505C1000505
      B30002028A0000000000000000000000000000000000A4A4A400F5F5F500EBEB
      EB00EAEAEA00E3E3E300ABA39D0095732500EABE2500F0B22100EFAB1E00EFA0
      1900D9851500B65D0D008E471B0095847900DADADA00E6E6E600E9E9E900E9E9
      E900E8E8E800E7E7E700F3F3F300A4A4A4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9CDC100FCFBFB00FFFCFC00FFFCFC00FFFCFA00FEFCFA00F0D7C700CF7A
      4B00CF794A00CF794A00D08B6400E7E6E600DDDCDB00E5E4E300E5E4E200F4F2
      F200FAF8F700FFFCFC00FFFCFC00FFFCFC00F5F5F500DBD4CD00000000000000
      0000000000000000000000000000000000000000000000000000DDDCDC00F3F2
      F2006C6ABE002A2AEB004D4DE0005757E8006060EE006666EE006666E5007878
      F1008181F4008686F5008989F5008989F5008888F5008383F4007A7AF1006868
      E5006868EE006363EF005A5AE9005050E2002424E6007473C800BDB7B700B0AB
      AB000000000000000000000000000000000000000000000000000F0F9A004C4C
      D0005252F1002121E3002020E2001F1FE0001E1EDE001D1DDB001B1BD9001A1A
      D5003434E3002C2CC70008089200070791002323C2002626D7000B0BBA000909
      B5000707B1000404AC000202A8000101A6000101A6000909C3000808B4000202
      8B000000000000000000000000000000000000000000A8A8A800F5F5F500ECEC
      EC00ECECEC00DADADA00926F2000F6CE2D00F4C52700F3C42600F2BA2300EFAC
      1E00EC931900E37C1700D8651400B83F0C0082503A00CECBCA00E8E8E800EAEA
      EA00E9E9E900E9E9E900F3F3F300A8A8A8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9CDC100F5F4F300FCF6F200E7C5AB00D79C7500EFD5C300D7926A00CF7A
      4B00CF794A00CF794A00CF794A00DFA58500FEFBF800FEFBF800FEFBF800FFFD
      FB00FFFCFB00FFFCFC00FFFCFC00FFFCFC00F9F7F600DBD4CD00000000000000
      00000000000000000000000000000000000000000000D5D5D500E8E7E700BEBB
      CD001A1ADC003B3BD4004646DA004E4EE2005555E6005454D5007B7BCE005C5B
      D8007272F1007979F3007B7BF3007C7CF4007A7AF3007474F1005D5DD8007C7C
      CE005150D4005858E8005151E4004949DD003D3DD6000D0DD600B9B6C800BDB7
      B700B2AEAE000000000000000000000000000000000000000000000000000F0F
      9A004C4CD1005353F4002323E7002222E5002121E3002020E0001E1EDD001C1C
      DA001A1AD7003434E4002C2CC7002929C6002E2EDF001010C2000D0DBE000B0B
      B9000808B4000606AF000303AB000101A6000D0DC5000A0AB50003038B000000
      00000000000000000000000000000000000000000000ACACAC00F6F6F600EDED
      ED00EDEDED00E4E4E4009F907C00B8982400F7D83100F6D02B00F4C42600F2B6
      1F00EE9E1B00E5821700D86B1500CB551400BA320C0080574500DDDDDD00EAEA
      EA00EBEBEB00EAEAEA00F4F4F400ABABAB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9CDC100F8F8F600ECD4C000DAA98400D79C7500EFD4C300D58D6300CF7A
      4B00CF794A00CF794A00CF794A00CF794A00F5E1D500FEFAF700FEFAF700FFFC
      FA00FFFDFA00FFFDFA00FFFCFA00FFFCFA00F8F7F600DBD4CD00000000000000
      00000000000000000000000000000000000000000000D2D1D100E7E5E5005250
      C4002727D8003636CC003E3ED4004545D9004848CD00BFBFCB00C6C6C600B2B2
      CB005857D8006A6AF0006E6EF2006E6EF2006A6AF0005858D800B3B3CB00C6C6
      C600B7B7CB004545CD004848DB004141D7003939CE002323D3005756CD00C4BE
      BE00B2AEAE000000000000000000000000000000000000000000000000000000
      00000F0F9A004D4DD1005555F5002525EA002424E8002222E5002020E2001F1F
      DF001D1DDB001B1BD7003535E4003535E3001414CA001111C6000F0FC1000D0D
      BC000A0AB7000808B2000505AD001111C7000E0EB70003038C00000000000000
      00000000000000000000000000000000000000000000AFAFAF00F7F7F700EFEF
      EF00EFEFEF00EEEEEE00E3E3E300A89D95009D7F2600F8DB3000F4C62600D396
      17008F632600A5590C00CB5C1000CD511200BC41120099200800A99E9700E7E7
      E700ECECEC00EBEBEB00F5F5F500AFAFAF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9CDC100F8F7F600DFBA9A00DAA98400D89F7800FAF0E800EDCCB900DA97
      7200E2AD9000CF794A00CF794A00CF794A00F5E1D400FEFAF600FEFAF600FEFC
      F900FEFCF900FEFDF900FEFDF900FEFDF900F8F6F400DBD4CD00000000000000
      00000000000000000000000000000000000000000000D2D1D100C8C5CD001515
      D5002727C1002F2FC6003636CE003636C7007C7CC700C6C6C600C6C6C600C6C6
      C600B2B2CB005251D6005E5EEE005E5EEE005251D700B2B2CB00C6C6C600C6C6
      C600C6C6C6008181CC003838C8003838D0003131C8002A2AC0000505CF00C2BD
      C600B2AEAE000000000000000000000000000000000000000000000000000000
      00000000000010109A004F4FD1005757F5002727EB002525EA002323E7002121
      E3001F1FDF001D1DDB001A1AD7001818D2001616CE001313C9001111C4000E0E
      BF000C0CBA000909B5001919CE001313BA0004048C0000000000000000000000
      00000000000000000000000000000000000000000000B2B2B200F7F7F700F0F0
      F000F0F0F000F1F1F100EFEFEF00E8E8E800BEB9B50087692C00EBBF2100C783
      1300ABA09800DADADA009D8C810080412500B12C0A00AD270D007D4B3900DFDF
      DF00ECECEC00ECECEC00F5F5F500B1B1B1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9CDC100F5F0EC00DDB59300E4C1A600FEFAF700FEFAF600FEFAF600F5E1
      D400D07C4E00CF794A00CF794A00DC9C7900FEFAF600FEFAF600FEFAF600FDFB
      F800FEFCF900FEFCF900FEFCF900FEFCF900F9F8F500DBD4CD00000000000000
      000000000000000000000000000000000000D3D1D100DBD8D8008583BD001C1C
      DA002020B7002727BF002E2EC7003433CB003C3CC300BEBECA00C6C6C600C6C6
      C600C6C6C600B1B1CB004A4AD1004A4AD100B1B1CB00C6C6C600C6C6C600C6C6
      C600B6B6CA003838C2003535CD003030C9002929C1002323B9000C0CCF008582
      C200C6C1C100BCB9B90000000000000000000000000000000000000000000000
      0000000000000000000010109A005050D1005959F5002929EB002626EA002323
      E7002121E3001F1FDF001C1CDB001A1AD6001818D1001515CC001212C7001010
      C2000D0DBD002222D4001919BD0005058E000000000000000000000000000000
      00000000000000000000000000000000000000000000B4B4B400F8F8F800F1F1
      F100F1F1F100F1F1F100EFEFEF00F0F0F000EDEDED00CFCCCA008A6E4A009F5A
      0A00BAAFA700F0F0F000EDEDED00E1E1E100805D4B009B1E08007A1C0400D8D8
      D800EDEDED00EDEDED00F6F6F600B4B4B4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9CDC100EFE1D500DDB59300DAA98400F3E1D200FEFAF500FEFAF500F9EC
      E400D9967000CF794A00D07C4E00F9ECE400FEFAF500FEFAF500FEFAF500FDFB
      F700FDFBF800FDFBF800FEFBF800FEFCF900FEFCF800DBD4CD00000000000000
      000000000000000000000000000000000000D3D1D100D8D5D500615EC0001818
      C5001919B0001F1FB8002525BF002B2BC5003131C9003838C100BEBECA00C6C6
      C600C6C6C600C6C6C600B3B3CD00B3B3CD00C6C6C600C6C6C600C6C6C600B5B5
      CA003535C0003333CA002D2DC7002727C1002121BA001B1BB3001010BC005E5C
      C500CAC6C600BCB9B90000000000000000000000000000000000000000000000
      000000000000000000000000000010109A005151D1005A5AF5002929EC002626
      EB002323E7002121E3001E1EDE001C1CD9001919D4001717CF001414CA001111
      C5002C2CDA002121C00006068F00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B6B6B600F8F8F800F2F2
      F200F2F2F200EAEAEA00C1B9B300DFDCDA00F2F2F200EFEFEF00E6E6E600BDB2
      AB00ECECEC00F0F0F000F1F1F100F0F0F000E8E8E800815F4D007F1A0400C8C2
      BF00EEEEEE00EEEEEE00F6F6F600B6B6B6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9CDC100F8EFE700DDB59300DEB39200FEF9F400FEF8F400FEF8F400F0D4
      C300F5DFD200F5DFD200F5DFD200FEF8F400FEF8F400FEF8F400FEF8F400FEFA
      F600FEFAF700FDFAF700FDFAF700FDFAF700FEFAF800DBD4CD00000000000000
      000000000000000000000000000000000000C5C3C300D4D0D0004342CF001313
      B7001212A9001818B0001D1DB6002222BC002727C2002C2CC6003434BE00BEBD
      CA00C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800B6B6CA003131
      BD002E2EC7002929C4002424BE001F1FB8001919B2001414AB000C0CB3003635
      C800CFCACA00BCB9B90000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010109B005353D2005A5AF5002929
      EC002525EA002222E6002020E1001D1DDC001B1BD7001818D2001515CD003232
      DF002626C4000707900000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B8B8B800F9F9F900F3F3
      F300F3F3F300DDDDDD008F610F0088684400E9E9E900F3F3F300F4F4F400F4F4
      F400EBEBEB00B9AEA600E2E2E200EDEDED00F1F1F100DEDBD900B8ADA600E8E8
      E800EFEFEF00EFEFEF00F7F7F700B8B8B8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9CDC100F8EFE500DEB79600ECD2BE00EAC9B200EED0BC00D1835700CF7A
      4B00D5896000FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF8F100FEF9
      F400FEFAF500FEFAF500FEFAF500FDFAF500FDFAF600DBD4CD00000000000000
      000000000000000000000000000000000000C5C3C300D0CCCC004544D1000909
      A2000B0BA1001010A7001515AD001919B4001E1EB9002222BD002626C0003030
      B900D3D3D300D1D1D100D1D1D100D1D1D100D1D1D100C9C9D2002C2BB8002727
      C1002323BF001F1FBA001B1BB5001616AF001111A9000C0CA20008089E003534
      C600D3CFCF00BCB9B90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001D1DA1007474D9007979F8002E2E
      EC002828EB002424E9002121E4001F1FDF001C1CD9001919D4001616CF003030
      DD002929C5000808910000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BABABA00F9F9F900F4F4
      F400F4F4F400DCDCDC00A0761500D5AE200084694D00E2E2E200EFEFEF00F3F3
      F300BAAFA800A8640C0083523100CBC9C700EBEBEB00F0F0F000F0F0F000F1F1
      F100F1F1F100F0F0F000F7F7F700BABABA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9CDC100FDF9F300FEF8F200DDB18F00D79C7500E5B89B00D1835700CF7A
      4B00CF794A00E5B49800FEF7EF00FEF7EF00FEF7EF00FEF7EF00FEF7EF00FEF7
      F100FEF8F200FEF8F200FEF9F200FEF8F300FEF8F300F5F1EE00DBD4CD000000
      000000000000000000000000000000000000C5C2C200CCC8C8005D5CD3009292
      E3007676DF004444CC003030C3002222BB001C1CB7001818B4001B1BB6002525
      B200C1C1DB00DEDEDE00DEDEDE00DEDEDE00DEDEDE00C1C1DB002626B3001C1C
      B7001919B5001E1EB8002626BC003636C5004949CD007878DF009B9BE700504F
      C500D7D3D300BEBCBC0000000000000000000000000000000000000000000000
      00000000000000000000000000002323A3008181DC009393FA006060F1005555
      F0003B3BED002626EB002323E6002020E1001D1DDC001A1AD6001717D1001414
      CB002F2FDC002828C40008089100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBBBBB00FAFAFA00F5F5
      F500F4F4F400E7E7E70084663F00F5CC2900ECC425008D6520009B8A7F00D2CF
      CD00ACA19A00C57F1100DA5A0F008A371700B4ABA600E7E7E700F1F1F100F2F2
      F200F2F2F200F1F1F100F8F8F800BBBBBB000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9CD
      C100FCFBF900FEF8F000EDD3BF00DAA98400D79C7500D5926800D1835700CF7A
      4B00DC9B7600F5DDCC00FEF5EB00FEF5EB00FEF5EB00FEF5EB00FEF5EB00FEF6
      EE00FEF6EE00FEF7EF00FEF7EF00FEF7EF00FEF7F000F3EFE900DBD4CD000000
      000000000000000000000000000000000000C5C3C300C8C4C4007574C700ADAD
      F0007E7EE0005D5DD8004C4CD4004444D4003C3CD4003535D1002E2EBF00CBCB
      E600EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00CCCCE600302F
      BF003A3AD3004242D5004B4BD5005353D6006262D8008282E000ACACEF007776
      C800DBD7D700BEBCBC0000000000000000000000000000000000000000000000
      000000000000000000002626A6008E8EDF00A3A3FB007070F3006A6AF2006363
      F1005E5EF0005555EF003F3FEC002A2AE4001E1EDE001B1BD8001818D2001515
      CD001212C7002D2DD9002727C400080891000000000000000000000000000000
      00000000000000000000000000000000000000000000BCBCBC00FAFAFA00F6F6
      F600F6F6F600F1F1F100AFA49D00CDB02500F5CE2A00F5C72600DFA01900A85F
      0A008D522200D0831200E2721400D5500E0091300E0095847900E2E2E200F0F0
      F000F3F3F300F2F2F200F8F8F800BCBCBC000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9CD
      C100F3ECE500FEF6ED00F5E2D200DAA98400D79C7500D4906600D1835700D484
      5900FEF3E800FEF3E800FEF3E800FEF3E800FEF3E800FEF3E800FEF3E800FEF4
      EA00FEF4EA00FEF4EB00FEF5EC00FEF5EC00FEF5ED00F3EDE600DBD4CD000000
      000000000000000000000000000000000000CCCACA00C5C0C0007D7BBE00B5B5
      F3008686E1006868D9005858D6004F4FD4004646D2003D3DC300D6D6F000FDFD
      FD00FDFDFD00FDFDFD00EDEDF600FDFDFD00FDFDFD00FDFDFD00FDFDFD00D7D7
      F0004140C4004C4CD3005555D5005E5ED7006F6FDA008C8CE200B3B3F1008380
      BD00DFDCDC00BEBCBC0000000000000000000000000000000000000000000000
      0000000000002929A7009999E200AFAFFC007D7DF4007878F3007373F2006D6D
      F2006767F1006060F1005B5BEF005656EB004B4BE5003838DE002626D6001616
      CE001313C8001010C3002B2BD6002727C3000707900000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00FBFBFB00F7F7
      F700F7F7F700F6F6F600E9E9E9008D744F00EDCD2900F5CC2900F3C12500F0B2
      2000ED9A1A00E9811500E2731400D6611200C74A0E009326060082645400E6E6
      E600F2F2F200F3F3F300F8F8F800BDBDBD000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9CD
      C100F3EAE200FEF4E900FDF4E800DDAF8B00D79C7500DA9C7500DB9C7600F9E5
      D500FDF1E400FDF1E400FDF1E400FDF1E400FDF1E400FDF1E400FDF1E400FDF2
      E500FDF2E600FDF2E600FDF3E700FDF3E800FEF3E800F2EAE100DBD4CD000000
      000000000000000000000000000000000000CCCACA00C0BBBB006664AD00BCBC
      F8009393E4007373DB006363D7005A5AD4004A4AC500D8D8F000FEFEFE00FEFE
      FE00FEFEFE00DFDFF2003939C1003F3FC400EDEDF900FEFEFE00FEFEFE00FEFE
      FE00D8D8F0004E4DC5005F5FD5006A6AD8007979DB009898E400BBBBF500807E
      BA00E3E0E000BEBCBC0000000000000000000000000000000000000000000000
      00002E2EAA00A4A4E400BCBCFD008B8BF5008585F5008080F4007A7AF4007474
      F3006F6FF2006969F2008E8EF9008181F6005959E8005454E3004F4FDF004A4A
      DA003D3DD3002F2FCC002222C4003232D5002A2AC30007079000000000000000
      00000000000000000000000000000000000000000000BEBEBE00FBFBFB00F7F7
      F700F8F8F800F8F8F800F5F5F500E5E5E500977E4F00D8AA1C00F3BE2200F0B1
      2000ED9D1B00E9861700E0721400D5601200C84F1000B4390D00651A0200D8D5
      D300F3F3F300F3F3F300F9F9F900BEBEBE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9CD
      C100F1E7DD00FDF1E400FDF1E300FDF0E200FDF0E000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEFE000FDEF
      E000FDEFE000FDEFE100FDF0E100FDF0E200FDF1E300F1E7DC00DBD4CD000000
      00000000000000000000000000000000000000000000BFBBBB009B98BB008A8A
      D500A7A7EA008484DE007070D9005757C9009595D800FEFEFE00FEFEFE00FEFE
      FE00E0E0F2004242C2004B4BD2004B4BD2004A49C500EEEEF900FEFEFE00FEFE
      FE00FEFEFE009090D6005F5FCC007777DA008989DF00A9A9E9008786D500CFCB
      D200E0DDDD000000000000000000000000000000000000000000000000003333
      AD00AEAEE600C6C6FD009797F6009393F6008D8DF5008888F4008282F4007D7D
      F3007777F3009C9CFA008484DF007F7FDE008383F4005D5DE5005858E0005353
      DB004E4ED7004949D2004444CD003F3FC8005151D9004B4BCB00121294000000
      00000000000000000000000000000000000000000000BFBFBF00FBFBFB00F8F8
      F800F8F8F800F9F9F900F9F9F900F6F6F600EAEAEA00A08F840098621E00BC6B
      0D00E1771200E8731300DD6D1400D25C1200BF3F0C007C280E00A4968D00EDED
      ED00F4F4F400F4F4F400F9F9F900BFBFBF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9CD
      C100F0E4D700FDEFDF00FDEEDE00FDEEDC00FDEDDB00FDEDDB00FDEDDB00FDED
      DB00FDEDDB00FDEDDB00FDEDDB00FDEDDB00FDEDDB00FDEDDB00FDEDDB00FDED
      DB00FDEDDB00FDEDDB00FDEDDC00FDEEDD00FDEEDE00FDEFE000DBD4CD000000
      00000000000000000000000000000000000000000000C4C1C100B0AAB4007F7D
      C200C6C6F5009999E3008080DC006F6FD4006262C700FAFAFC00FEFEFE00E1E1
      F2004E4EC3005A5AD4005B5BD6005B5BD6005B5BD4005555C700EFEFF900FEFE
      FE00FAFAFC006565C7007373D5008686DD009E9EE400BBBBF2007775B700EEEC
      EC00CDCCCC0000000000000000000000000000000000000000003535A800B7B7
      E800D0D0FD00A3A3F7009E9EF7009999F6009494F6008F8FF6008A8AF5008484
      F400AAAAFB009090E1002323A4002222A1008181DE008686F3006060E3005B5B
      DE005656D9005151D4004C4CCF004747CA004141C5005454D7004D4DCC001212
      94000000000000000000000000000000000000000000BFBFBF00FCFCFC00F8F8
      F800F9F9F900F9F9F900FAFAFA00FAFAFA00F9F9F900F4F4F400EAEAEA00C4BB
      B60088726300C2751100D8651300C33D0B007F3C2300BBB3AD00EEEEEE00F5F5
      F500F5F5F500F4F4F400F9F9F900BFBFBF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9CD
      C100FDECDA00FDEBD900FDEAD700FDEAD600FDEAD600FDEAD600FDEAD600FDEA
      D600FDEAD600FDEAD600FDEAD600FDEAD600FDEAD600FDEAD600FDEAD600FDEA
      D600FDEAD600FDEAD600FDEAD600FDEAD700FDEBD700FDEBD900DBD4CD000000
      00000000000000000000000000000000000000000000C4C1C100B8B2B200928F
      B8009898DA00B6B6ED009595E1008585DC006B6BCE006767C700A0A0DA005A5A
      C5006A6AD7006B6BD8006A6AD8006B6BD8006C6CD9006C6CD7006161C800A1A1
      DA006969C8006F6ECF008989DD009B9BE200B6B6ED008382D400BDBBCF00EFEE
      EE00CDCCCC00000000000000000000000000000000003535A800BFBFEA00D7D7
      FE00ACACF800A8A8F800A4A4F7009F9FF7009A9AF6009595F6009090F500B5B5
      FC009C9CE3002828A60000000000000000002323A2008686DF008989F1006363
      DF005E5EDB005858D5005252D0004D4DCC004747C6004141C1005454D6005050
      CD001313950000000000000000000000000000000000BFBFBF00FCFCFC00F9F9
      F900F9F9F900FAFAFA00FAFAFA00FAFAFA00FBFBFB00FBFBFB00FAFAFA00F9F9
      F900BBB0A900BF6C1000BE430B0085523B00D6D3D100E8E8E800EFEFEF00F7F7
      F700F6F6F600F5F5F500FAFAFA00C5C5C5000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9CD
      C100FDE9D300FDE8D100FDE7D100FDE7D100FDE7D100FDE7D100FDE7D100FDE7
      D100FDE7D100FDE7D100FDE7D100FDE7D100FDE7D100FDE7D100FDE7D100FDE7
      D100FDE7D100FDE7D100FDE7D100FDE7D100FDE8D100FDE8D200F9F6F100DBD4
      CD00000000000000000000000000000000000000000000000000C7C4C400B5AF
      B2007473B900C8C8F300B2B2E9009A9AE1008D8DDE007D7DD6006868CA007C7C
      D8007C7CDB007A7ADB007A7ADA007A7ADA007B7BDB007E7EDB007E7DD8006A6A
      CA008181D7009191DE009E9EE200B4B4EA00AEAEE8007875B300F9F9F900D8D7
      D700000000000000000000000000000000003535A800C5C5EC00DCDCFE00B4B4
      F900B1B1F800ADADF800A9A9F800A5A5F800A0A0F7009B9BF600C0C0FC00A7A7
      E6002B2BA800000000000000000000000000000000002323A2008888DF008989
      EF006262DC005B5BD6005555D1004F4FCC004949C7004545C2004040BD005555
      D5005353CE0017179600000000000000000000000000C0C0C000FCFCFC00F9F9
      F900FAFAFA00FAFAFA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FAFA
      FA00CBC3BD008E49090094786700E7E7E700F5F5F500B5B5B5007E7E7E008686
      860098989800C1C1C100E5E5E500CACACA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9CDC100F9F4
      F000FDE5CD00FDE4CB00FDE4CB00FDE4CB00FDE4CB00FDE4CB00FDE4CB00FDE4
      CB00FDE4CB00FDE4CB00FDE4CB00FDE4CB00FDE4CB00FDE4CB00FDE4CB00FDE4
      CB00FDE4CB00FDE4CB00FDE4CB00FDE4CB00FDE4CB00FDE5CB00EDD9C500DBD4
      CD00000000000000000000000000000000000000000000000000C7C4C400BDB9
      B900B3AFB9008080C600C9C9F200B8B8EA00A3A3E3009797DF009191DE008E8E
      DE008B8BDD008A8ADD008989DD008989DD008B8BDD008D8DDD009090DE009494
      DE009B9BE000A7A7E300BABAEB00B9B9EC005C5BAD00EBE9EC00EEEEEE00DAD9
      D900000000000000000000000000000000003535A800EBEBFF00B9B9F900B7B7
      F900B4B4F900B1B1F800ADADF800AAAAF800A5A5F700C9C9FD00B1B1E8002F2F
      AB000000000000000000000000000000000000000000000000002323A2008888
      DF008787ED005E5ED7005858D1005252CD004C4CC8004747C2004242BE004141
      BD006868E4002F2FA800000000000000000000000000C0C0C000FCFCFC00FAFA
      FA00FAFAFA00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FBFBFB00FBFB
      FB00F5F5F500EDEDED00F0F0F000F8F8F800F8F8F800B8B8B800D3D3D300FCFC
      FC00FBFBFB00EFEFEF00CACACA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9CDC100ECD6
      BF00E9D4BC00BBAD9E0092887C004F4A450049443F00363534003A3A3A004242
      42004C4C4C006C6C6C008D8D8D00AAAAAA00BBBBBB00C0C0C000BFBFBF00B8B8
      B800B3B2B100B5B0AB00B0ABA600BEB4A900C9BBAC00DFCCB600ECD6BE00DBD4
      CD0000000000000000000000000000000000000000000000000000000000CFCE
      CE00B8B3B300B1ACBA007F7EC300CECEF000C7C7F000B1B1E700A6A6E3009F9F
      E1009B9BE0009999DF009999DF009999DF009A9ADF009C9CE000A1A1E100A8A8
      E300B4B4E700C5C5EF00B5B5E6006461AD00E0DEE100EFEEEE00D3D2D2000000
      0000000000000000000000000000000000003535A800A6A6DD00E1E1FE00BABA
      F900B8B8F900B5B5F900B1B1F800AEAEF800D1D1FD00B9B9EA003333AC000000
      0000000000000000000000000000000000000000000000000000000000002323
      A2008585DF008282EB005959D1005353CD004E4EC7004949C2004444BF006666
      DE005555CB000E0E9000000000000000000000000000C0C0C000FCFCFC00FAFA
      FA00FAFAFA00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FBFBFB00FAFAFA00FAFAFA00FAFAFA00FAFAFA00CACACA00D5D5D500FBFB
      FB00EEEEEE00CACACA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9CDC100BCBA
      B900A1A1A10082828200848484006767670096969600989898009C9C9C00BCB9
      B500CAC6C100D4CFCA00DED9D400E6E1DC00EBE7E100EDE8E300E8E3DE00DCDC
      DC00D8D8D800D5D5D500C1C1C100B7B7B7009A9A9A009797970097959400AEAE
      AE00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00B8B3B300ADA8B2008583BE00A5A5D900E0E0F800C6C6ED00BABA
      E800B3B3E600AEAEE400ADADE400ADADE400AFAFE400B4B4E600BCBCE800C7C7
      ED00D9D9F6009B9AD3007875B000DEDBDE00E7E6E600D4D4D400000000000000
      000000000000000000000000000000000000000000001B1BA000A8A8DE00E2E2
      FE00BBBBF900B9B9F900B5B5F900D8D8FE00C1C1EC003535AF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002323A1008383DE007E7EE8005353CC004D4DC7004949C2006C6CE1005D5D
      CE000D0D920000000000000000000000000000000000C0C0C000FCFCFC00FAFA
      FA00FAFAFA00FBFBFB00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FBFBFB00FBFBFB00FAFAFA00FAFAFA00D5D5D500F1F1F100EEEE
      EE00CACACA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A6A29E00E1E0
      DF00EAE4DD00FEF3E800FDECD800FDECD800FDE2C600FDE2C600FDE2C600FDE2
      C600FDE2C600FDE2C600FDE2C600FDE2C600FDE2C600FDE2C600FDE2C600FDE2
      C600FDE2C600FDE2C600FEE9D400FDECD800FEF3E800EFE9E200D5D4D300AEAE
      AE00000000000000000000000000000000000000000000000000000000000000
      000000000000D0CECE00BEBABA00B7B1B1009793B6007F7EBF009898D000CDCD
      EC00D0D0ED00D6D6F200D3D3F100D3D3F100D5D5F100CFCFED00C3C3E8009594
      CE007F7DB800AEACC200E2DFDF00DDDCDC00D1D0D00000000000000000000000
      00000000000000000000000000000000000000000000000000003535A800ACAC
      DF00E3E3FE00BCBCF900DEDEFE00C8C8EE003A3AB00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002121A0008080DE007979E5004E4EC7007676E4006363D1000E0E
      94000000000000000000000000000000000000000000C0C0C000FCFCFC00FAFA
      FA00FBFBFB00FBFBFB00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FBFBFB00FBFBFB00FAFAFA00FAFAFA00E6E6E600EEEEEE00CACA
      CA00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6A2
      9E00B5ADA500C9BBAD00DCC9B500F2D8BD00F0D7BE00FDE1C600FDE1C600FDE1
      C600FDE1C600FDE1C600FDE1C600FDE1C600FDE1C600FDE1C600FDE1C600FDE1
      C600FDE1C600EDD5BC00F2D8BD00DAC6B200CBBCAC00B5ACA300A6A29E000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C8C5C500C8C5C500B9B3B300B2ADB200A6A2BB008482
      B4007B79B9007876B8007C7BC1007B7BC0007B79B8007875B4008A87B400B5B2
      C100CFCCD200D7D5D500D2D0D000D2D0D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003535
      A800B0B0E100EEEEFF00D0D0F0003C3CB3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002121A1007F7FDD008E8EF0006A6AD4000F0F95000000
      00000000000000000000000000000000000000000000C0C0C000FEFEFE00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FCFCFC00EDEDED00CACACA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A29E00A6A29E00A6A29E00A6A29E00B7B5B200C2BDB800C7C2BD00CDC8
      C300D1CBC500D5CAC000D1C7BC00CCC2B700C7BCB100B7AFA700ACA7A200A6A2
      9E00A6A29E00A6A29E00A6A29E00A6A29E00A6A29E00A6A29E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CAC8C800CAC8C800C0BBBB00B9B3
      B300BCB7B700BFBABA00C2BDBD00C4C0C000C7C3C300CAC6C600CCC8C800D0CD
      CD00C9C8C800C9C8C80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003535A8003535A8002727A400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002727A4002727A40015159700000000000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C5C5C500CACACA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A6A29E00A6A29E00A6A29E00A6A2
      9E00A6A29E00A6A29E00A6A29E00A6A29E00A6A29E00A6A29E00A6A29E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2D0
      D000D2D0D000BAB8B800BFBCBC00C0BDBD00BDBCBC00CDCBCB00CDCBCB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000060A550010
      1AAB00060A7B0004074800030520000102090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000014A4FF0014A4FF0014A4FF0014A4FF0014A4FF0014A4
      FF0014A4FF0014A4FF0014A4FF0014A4FF0014A4FF0014A4FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000798083007980830000000000000000000000000000000000000000000000
      0000000000000000000099969700999697009996970000000000000000000000
      0000000000000000000000000000000000009996970099969700999697000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000324CC30060
      92FF005887FE004C75FD003756F0001F32D2000E17A600060972000407400002
      041B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014A4FF0014A4FF003FBAFF004BC1FF0041C0FF0033BFFF002EC1FF0031C2
      FF0033C4FF0035C5FF002DC0FF0024B8FF0027B7FF001EB0FF0014A4FF0014A4
      FF00000000000000000000000000000000000000000000000000000000007980
      8300D4D5D5008A8A8A00605E5F00000000000000000000000000000000000000
      00000000000099969700ABA8A900A7A5A500A29FA0009B989900999697009996
      970000000000000000009996970099969700D9D7D800DFDEDE00BEBCBD009996
      9700999697009996970000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000004074200080C7300080C7300080C730008
      0C7300080C7300080C7300080C7300080C7300080C7300080C73003B5BE30065
      9AFF00659AFF00659AFF006499FF006498FF005F91FF005784FE004971FC0033
      4FED001C2CCC000C139E000507640303040A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000014A4FF0014A4
      FF0041B5FF006DCFFF008ADCFF0080DCFF006CD9FF0055D4FF004AD1FF004ED4
      FF0051D5FF0053D7FF0055D7FF0055D8FF0048D0FF003BC9FF0028BBFF001DAA
      FF0014A4FF0014A4FF000000000000000000000000000000000079808300BDBF
      BF00A7A7A700676868007B7D7D00000000000000000000000000000000000000
      000099969700A9A7A700EFEFEF00B5B3B300B5B3B300B5B3B300B0AEAF00A4A2
      A3008987880093919200BBB9BA00DCDCDC00E2E2E200E4E3E300E5E5E500E6E5
      E500D7D7D700BBB9B90099969700999697009996970000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000002535C700131FFF00161FFF00161FFF0013
      1FFF00131FFF00131FFF00131FFF00131FFF00131FFF00131FFF004064FF0066
      9BFF00669BFF00669BFF00669BFF00669BFF00669BFF00669BFF00669BFF0066
      9BFF006499FF005F91FF00537FFE1E282D5F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF000D9EFF0019A9
      FF004EC7FF0078D9FF0090E1FF0083DEFF006AD8FF0050D0FF0043CEFF0047D0
      FF004AD1FF004CD3FF004DD3FF004DD3FF004DD3FF0047D0FF003DC9FF002EBF
      FF0018AAFF0011A0FF0014A4FF00000000000000000000000000A5A6A600B7B7
      B700636464009597970000000000000000000000000000000000000000009996
      9700B8B6B700E9E8E800EFEFEF00BFBEBE00B5B3B300B5B3B300B5B3B300B5B3
      B3009E9D9D002828280078787800BDBCBC00D7D7D700D8D8D800DAD9D900DBD9
      DA00DBDBDB00DCDCDC00DEDDDD00D1D0D000B7B5B50099969700999697009996
      9700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000202FC9000000FF002400FF025B04FF0014
      00FF000000FF000000FF000000FF000000FF000000FF000000FF003D5EFF0067
      9CFF00679CFF00679CFF00679CFF006295FF00679CFF00679CFF00679BFF0067
      9CFF00679CFF00679CFF00659AFF283D49810000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B1BEF550173FE2EF0732DFFF0000
      0000000000000000000000000000000000000000000014A4FF0010A0FF0021B7
      FF004ECAFF0076D9FF008EE1FF0081DEFF0066D7FF004ACEFF003ECAFF0041CC
      FF0043CEFF0045CFFF0046CFFF0046CFFF0045CFFF0041CCFF0036C5FF002DBF
      FF0024B7FF000F9EFF0014A4FF00000000000000000079808300C2C2C2005F5F
      5F0090929200000000000000000000000000000000000000000099969700BBB9
      B900E8E7E700E9E8E800E9E8E800BBBABA00B5B3B300B5B3B300B5B3B300B5B3
      B300888686000000000000000000000000002828280078787800BBBBBB00D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D7D7D700D7D7D700CBCBCB00B4B2
      B300999697009996970099969700000000000000000000000000000000000000
      000000000000000000000000000000202FC9000000FF002600FF12941BFF0D85
      14FF003B01FF000400FF000000FF000000FF000000FF000000FF003D5EFF0068
      9DFF00689DFF00689DFF00689CFF004C74FF00689DFF005F90FF005987FF0068
      9DFF005C8CFF00689DFF00679BFF293E4A820000000000000000000000000000
      00000000000000000000C1CBF640D0D8F8300000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A1B2F4600732E2FF0732E0FF173FE1EF0000
      0000000000000000000000000000000000000000000014A4FF002CB8FF001FB7
      FF004CCAFF0074D9FF008CE1FF007FDEFF0063D5FF0045CCFF0037C7FF003AC9
      FF003CCAFF003ECAFF003FCBFF003FCBFF003FCBFF003AC7FF0031C1FF0028BB
      FF0021B6FF0011A1FF0014A4FF000000000079808300C2C2C200626262008C8F
      8F00000000000000000000000000000000000000000099969700C5C4C400E1E1
      E100E2E2E200E2E2E200DAD9D900AEACAC00AEACAC00AEACAC00B0AEAF00B5B3
      B300717070000000000000000000000000000000000000000000000000002828
      280078787800BBBBBB00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600B0AEAF009996970099969700000E007700130099001300990013
      0099001300990013009900130099002913E9001F00FF003B00FF199E26FF1CA5
      2BFF199E26FF096C0EFF001B00FF000000FF000000FF000000FF003E5FFF006A
      9FFF006A9FFF006A9FFF00699DFF004C73FF006A9FFF005E8EFF005783FF0069
      9DFF004C73FF006A9FFF00699DFF293E4A820000000000000000000000000000
      0000000000005572E8AF0732DEFF0732DEFFA2B2F26000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A1B2F4600633E3FF0732E2FF173FE2EFD0D8F9300000
      0000000000000000000000000000000000000000000014A4FF0038BDFF0022B7
      FF004BCAFF0072D8FF008AE1FF007BDEFF005ED5FF0041CBFF0033C7FF0035C7
      FF0036C7FF0037C7FF0038C7FF0038C7FF0037C7FF0035C6FF002DC0FF0027BB
      FF0028BCFF0017AAFF0014A4FF0079808300B7B8B80067686800868889000000
      00000000000000000000000000000000000099969700C5C4C400DBDBDB00DBDB
      DB00DCDCDC00D0CFD0009D9B9C00A09D9E00A09D9E00A09D9E009D9A9B009996
      97009996970073717100605E5E004D4B4C002626260000000000000000000000
      000000000000000000002828280078787800BBBBBB00D6D6D600D6D6D600C7C6
      C600A4A2A3009996970000000000000000000B7412EC1EA12EFF1EA12EFF1EA1
      2EFF1EA12EFF1EA12EFF1EA12EFF1EA12EFF1EA12EFF1EA22FFF24AF38FF25AF
      38FF25AF38FF24AF38FF199727FF034606FF000600FF000000FF003F60FF006C
      A0FF006CA0FF006CA0FF006B9FFF004C74FF006CA0FF005F8FFF005884FF006B
      9FFF004C74FF006CA0FF006A9EFF293E4A820000000000000000000000000000
      0000000000004566E6BF0732DEFF0732DEFF0732DEFFA2B2F260000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000738DF08F0633E4FF0633E3FF163FE3EFD0D8F930000000000000
      0000000000000000000000000000000000000000000014A4FF0041C0FF0025B8
      FF0053CAFF0078D9FF008EE1FF007DDEFF005DD5FF003ECBFF002FC6FF0030C6
      FF0032C6FF0033C6FF0033C7FF0031B1E000429CBC004D9FBD004799B8002F8B
      B0002AAAE00016A7FF002E95D100A6A7A700707272007E808000000000000000
      00000000000000000000000000000000000099969700D6D6D600D6D6D600D6D6
      D600CBCBCB009D9A9B00A8A4A400C6C4C400B5B3B300B5B3B300B5B3B300B5B3
      B300B3B1B100AEACAC00A9A7A700A4A2A3009E9B9C00999697007C7A7B004D4B
      4C001D1C1C0000000000000000000000000000000000282828007E7E7E009996
      97009B989900000000000000000000000000137F1DED2EBB47FF2EBB47FF2EBB
      47FF2EBB47FF2EBB47FF2EBB47FF2EBB47FF2EBB47FF2EBB47FF2EBB47FF2EBB
      47FF2EBB47FF2EBB47FF2EBB47FF2BB542FF137E1DFF002200FF004060FF006E
      A2FF006EA2FF006EA2FF006DA1FF004D74FF006EA2FF006190FF005985FF006D
      A1FF004D74FF006EA2FF006CA0FF293E4A820000000000000000000000000000
      000000000000A2B2F2600732DEFF0732DEFF0732DEFF0732E0FFA2B2F3600000
      0000000000000000000000000000000000000000000000000000000000000000
      00006480F09F0633E6FF0633E4FF1640E4EFD0D8F93000000000000000000000
      0000000000000000000000000000000000000000000014A4FF0048C4FF0023B7
      FF0051CAFF0079D9FF0092E2FF0087E0FF006EDAFF0055D4FF004AD1FF004ED4
      FF0051D5FF005AC4E300799CA700747B81005D7983006095A7005C8392006470
      78004F5C65002D5C760092A1AA00808080007376760000000000000000000000
      00000000000000000000000000000000000099969700D6D6D600D6D6D600CBCB
      CB009D9A9B00ACAAAA00E9E8E800F9F8F800F7F6F600E5E5E500D7D7D700C8C6
      C600B8B6B700B5B3B300B5B3B300B5B3B300B5B3B300B3B1B100ACAAAA00A4A1
      A2009B98990086838400434242001313130000000000000000002C2B2B00A4A1
      A200A4A1A200999697000000000000000000188524ED38C756FF38C756FF38C7
      56FF38C756FF38C756FF38C756FF38C756FF38C756FF38C756FF38C756FF38C7
      56FF38C756FF38C756FF38C756FF38C756FF38C755FF2AAE40FF025866FF0070
      A4FF0070A4FF0070A4FF006FA2FF004E75FF0070A4FF006291FF005A86FF006F
      A3FF004D75FF0070A4FF006FA2FF293E4A820000000000000000000000000000
      00000000000000000000C1CBF640173FE0EF0732DFFF0732E1FF0632E2FF8299
      F180000000000000000000000000000000000000000000000000000000006480
      F09F0633E7FF0633E6FF1640E5EFD0D8F9300000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF0051C7FF0022B7
      FF004FCAFF0077D9FF0090E1FF0083DEFF006AD8FF0050D1FF0044CEFF0048D0
      FF007BD3F0006973770043889D004CC9F0004ED4FF0049D0FF003ECAFF0032C0
      FC00389ECC0055778E006D6A6B00656565000000000000000000000000000000
      00000000000000000000000000000000000099969700D6D6D600D2D2D200A4A2
      A300B3B1B200F2F1F100F9F8F800F9F8F800F8F7F700F6F5F500F3F3F300F1F1
      F100EFEFEF00E2E2E200D2D2D200C5C4C400B8B6B700B5B3B300B5B3B300B5B3
      B300B5B3B300ACAAAA00A4A1A20099969700605E5E001313130039383800B5B3
      B300B5B3B3009D9A9B0000000000000000001B892AED42D365FF42D365FF42D3
      65FF42D365FF42D365FF42D365FF42D365FF42D365FF42D365FF42D365FF42D3
      65FF42D365FF42D365FF42D365FF42D365FF3DCD5DFF1DA62CFF015D65FF0072
      A6FF006FA2FF0072A6FF0071A4FF004E76FF0072A6FF006493FF005B87FF0071
      A5FF004E75FF0072A6FF0071A4FF293E4A820000000000000000000000000000
      0000000000000000000000000000E0E5FB203659E6CF0632E2FF0633E3FF0633
      E5FF6480EF9F00000000000000000000000000000000EFF2FD10345AEDCF0633
      E8FF0633E7FF1640E7EFD0D8FA30000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF005ACBFF0020B7
      FF004DCAFF0076D9FF008EE1FF0081DEFF0066D7FF004ACEFF003ECBFF006ED1
      F4006F7E840042ABCE0047CCFA0047CFFB0047CEFB0042CBFC0038C5FC002EBF
      FC0025B6FA000F91E500568BAD005D595B000000000000000000000000000000
      00000000000000000000000000000000000099969700D2D2D200A4A2A300BDBB
      BB00F6F5F500F9F8F800F9F8F800F9F8F800F8F7F700F6F5F500F4F3F300F2F1
      F100EFEFEF00EEEDED00EBEBEB00E9E9E900E7E7E700D9D7D800C9C8C800BDBC
      BC00B5B3B300B5B3B300B5B3B300B2AFB000A7A5A5009B9899008D8B8B00B2AF
      B000B5B3B3009996970000000000000000001F9031EE4CDF74FF4CDF74FF4CDF
      74FF4CDF74FF4CDF74FF4CDF74FF4CDF74FF4CDF74FF4CDF74FF4CDF74FF4CDF
      74FF4CDF74FF4CDF74FF4BDF73FF33C14EFF109518FF057609FF004F63FF0069
      99FF003D5DFF00618DFF0073A7FF004F76FF0074A8FF006594FF005C88FF0073
      A7FF004F76FF0074A8FF0073A7FF293E4A820000000000000000000000000000
      000000000000000000000000000000000000EFF2FD105473EBAF0633E4FF0633
      E6FF0633E7FF6480F09F0000000000000000EFF2FD10345AEECF0533EAFF0633
      E8FF1640E8EFD0D8FA3000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF0064CFFF001FB7
      FF004BCAFF0089DDFF00A1E5FF00A3E3FF0097E0FF0081D8FF0083D7FC007E83
      88006DAFC5007AD0EB007AD3F3007BD4F40080D7F40065CFF60047C5F6002ABA
      F60022B4F7000F9DF7001292E100A59FA0005D595B0000000000000000000000
      00000000000000000000000000000000000099969700A4A2A300D0CECE00F9F8
      F800F9F8F800F9F8F800F9F8F800F9F8F800F8F7F700F6F5F500C9C5C600AEA6
      A800D0CECE00EEEDED00ECEBEB00EAE9E900E8E7E700E5E5E500E4E3E300E1E1
      E100DBD9DA00CCCBCB00C1C0C000B5B3B300B5B3B300B3B1B100A4A1A2009B98
      9900A29FA0009996970000000000000000000F7A17EC25AF38FF25AF38FF25AF
      38FF25AF38FF25AF38FF25AF38FF25AF38FF25AF38FF2AB640FF54EA81FF54EA
      81FF54EA81FF4BDE72FF1FA930FF0B8E10FF036505FF001300FF004364FF0058
      82FF006597FF00537CFF0075A9FF005077FF0077AAFF006796FF005E8AFF0075
      A9FF004F77FF0076AAFF0076A9FF293E4A820000000000000000000000000000
      00000000000000000000000000000000000000000000000000008299F2800633
      E7FF0633E8FF0533EAFF6380F29FD0D8FB30345AEFCF0533EBFF0533EAFF1640
      E9EFD0D8FA300000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF006ED3FF005DCB
      FF00A3E0FF0082D4FF0069CEFF0052C6FF004AC4FF0048C2FF0082C4E2003F6E
      82003FB5E0003CB5E30039B7EE0035B6EE003DBAEE004ABDEF0065C5EF007BCC
      EF004EBFEF000E99F000149DEE00D8D4CF005D595B0000000000000000000000
      00000000000000000000000000000000000099969700E1E1E100F9F8F800F9F8
      F800F9F8F800F9F8F800F9F8F800F9F8F800F8F7F700DBD9DA00A69FA0009388
      8A007F7072007D6F71009E959700C4C1C100DEDDDD00E6E5E500E4E3E300E2E1
      E100E0DFDF00DEDDDD00DBDBDB00D7D7D700C9C7C800BBBABA00B5B3B300B0AE
      AF00A09D9E00999697000000000000000000046D07EB0B9011FF0B9011FF0B90
      11FF0B9011FF0B9011FF0B9011FF0B9011FF0B9011FF149B1FFF5CF38CFF5BF2
      8BFF38C756FF0F9517FF0A8A0FFF015002FF000700FF000000FF004465FF005C
      86FF0083B8FF005E89FF0077AAFF005078FF0079ACFF006998FF005F8BFF0078
      ABFF005077FF0079ACFF0078ABFF293E4A820000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A1B2
      F6601540EAEF0533EBFF0533ECFF0534EDFF0533ECFF0533EBFF1540EBEFD0D8
      FA30000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF00C0E9FF0093D8
      FF006FCBFF006BCCFF0073D0FF006BD0FF0056CAFF003CC1FF0077929E002B8B
      A60033B5D50034B6DD0031B8E70034BAE70035B7E70037B6E70034B1E90031AB
      E9005CBBE90049ADEA00149DEA00E6DED7009A9393005D595B00000000000000
      00000000000000000000000000000000000099969700C9C7C800F9F8F800F9F8
      F800F9F8F800F9F8F800F9F8F800F9F8F800C6C3C300BEBCBD00C7C5C600C5C4
      C400BEBBBC00B1ABAC00A09798008C8082008072750093888A00B3ADAE00D4D3
      D300E0DFDF00DEDDDD00DCDBDB00DAD9D900D7D7D700D6D6D600CECDCD00C1C0
      C000AEACAC009996970000000000000000000032007E003D0095003D0095003D
      0095003D0095003D0095003D0095004A16E8003F00FF035505FF4BDC73FF1EA8
      2EFF0B9011FF08820CFF003900FF000100FF000000FF000000FF004465FF0067
      92FF0AA7D7FF006E9AFF0079ACFF005178FF007BAFFF006B99FF00618CFF007A
      ADFF005178FF007BAFFF007BADFF293E4A820000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D8FB30254DEEDF0534EDFF0534EFFF0534EEFF1540ECEFD0D8FB300000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF00D4EFFF0060C6
      FF0051C1FF006DCEFF0089DCFF007FDCFF0069D7FF0054D4FF00808689003F98
      A30051C0CB0053C5D50054CAE0004EC7E10047C4E10036BAE10024ACE20025A9
      E2002DA7E20092CBE300149AE300EFE5D900BFB5B2005D595B00000000000000
      000000000000000000000000000000000000000000009996970099969700E1E1
      E100F9F8F800F9F8F800F9F8F800A69D9F00776769008C7F82009F969800AFA9
      AA00BBB9B900C4C2C300C7C6C600C4C2C300BAB6B700ABA5A600998F9100897C
      7F008A7F8100A59D9F00C4C2C300D5D5D500D8D8D800D6D6D600D6D6D600D6D6
      D600B7B6B6009996970000000000000000000000000000000000000000000000
      000000000000000000000000000000202FC9000000FF002400FF0B8C11FF0B90
      11FF057608FF002300FF000000FF000000FF000000FF000000FF004566FF0067
      92FF45D9F5FF08759DFF007CAFFF005279FF007EB1FF006C9BFF00628DFF007D
      AFFF005279FF007EB1FF007DB0FF293E4A820000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A0B2F9601541F0EF0534EEFF0534F0FF0434F1FF345AF4CFEFF2FE100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF002EADFF001CA9
      FF0050C9FF0079D9FF0091E2FF0082DEFF0069D8FF004FD0FF007E8E93003A93
      990048B6C0004CBDCC004DC2D9004DC4DA004CC4DA0046C0DA003CBADC002DB1
      DC00179DDC0031A5D9001E9CD700F2E3D300BFB5B2005D595B00000000000000
      0000000000000000000000000000000000000000000000000000000000009996
      970099969700D5D3D400D8C9C900A48A7C006B535100574044005E494C006B59
      5D007E6F710093888A00A59D9F00B3AEAF00BEBCBD00C5C4C400C7C5C600C1BF
      BF00B5B1B200A59E9F00958B8D00D2D1D100D8D8D800D6D6D600D6D6D600BFBE
      BE00999697000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000202FC9000000FF002300FF09880EFF0365
      05FF001200FF000000FF000000FF000000FF000000FF000000FF004667FF006F
      9EFF309AB6FF016A97FF007FB2FF00537AFF0080B3FF006E9DFF00638FFF007F
      B2FF00527AFF0080B3FF0080B2FF293E4A820000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A0B2
      FA600434F1FF0534F0FF0534EFFF0434F0FF0434F2FF0434F4FF345AF6CFEFF2
      FE10000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF000FA0FF0023B7
      FF0050CBFF0078D9FF008FE2FF0080DEFF0065D5FF0049CEFF00808386002C77
      7D0041AFB70043B5C10045BACC0045BACC0045BACE0040B7CE0035AFC9002CAA
      CA0023A4CB000F8FD1001497D700EADACA00C0B4B0005D595B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009D969700A99B9A00FFDFBD00FFDCB700EBC4A700C09E8500876B
      63006148490059424600624D5100715F630085787A00998F9100AAA3A400B7B5
      B500C1C0C000C4C2C300CECDCD00DBD9DA00D8D8D800D6D6D600B0AEAF009996
      9700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000202FC9000000FF002000FF004C01FF0007
      00FF000000FF030101FF0C0706FF010000FF000000FF000000FF004768FF0083
      B5FF007AABFF0082B5FF0081B4FF00537AFF0083B6FF00709EFF006590FF0081
      B4FF00537AFF0083B5FF0082B5FF293E4A820000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A0B2FA600434
      F3FF0434F1FF0534F0FF345AF2CFEFF2FD10A0B2FA600434F5FF0434F6FF345B
      F8CFEFF2FE100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF002BBAFF0022B7
      FF004FCBFF0076D9FF008CE2FF007DDEFF0060D5FF0044CCFF00819AA5002258
      5F0039A5AF003CAFBA003EB4C5003FB4C5003EB4C60039B2CB0030AFD10028AB
      D30020A6D3001193D3001496D300DACEBD005D595B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CC9A9900FFE0C000FFDEBB00FFDBB600FFD9B100FFD6
      AB00FFD3A600D5AC8900A07E6A00765A5300563F43005B454900665356007867
      6A008E838500C8C6C600DCDCDC00DBD9DA00D0CFD000A4A2A300999697000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000002030C9000000FF000000FF000000FF0000
      00FF000000FF614133FFEBA786FFCC9275FF926651FF805846FF1E5F7BFF0085
      B8FF0085B8FF0085B8FF0084B6FF00547BFF0085B8FF0072A0FF006691FF0084
      B6FF00547BFF0085B8FF0085B7FF293F4B820000000000000000000000000000
      000000000000000000000000000000000000000000006380F89F0434F4FF0434
      F3FF0434F1FF345AF2CFEFF2FE100000000000000000CFD8FD301442F7EF0335
      F9FF335BFACFEFF2FE1000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF0037BDFF0023B8
      FF004ECBFF0074D9FF008AE1FF007ADEFF005DD5FF0041CBFF0072CAEA003448
      4E0026787F0035A9B50037B5D10037B6D30037B6D30033B4D3002CAFD30026AB
      D30028ABD300169AD300138FCA00CFC2B4005D595B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CC9A9900FFE3C600FFE0C000FFDEBB00FFDBB500FFD8
      AF00FFD5AA00FFD3A500FFD09F00FFCE9A00F4C49400C0987900876B63006B59
      5D00C2BEBF00DFDEDE00DCDCDC00BEBCBD009D9A9B0099969700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000021F30C9000000FF000000FF000000FF0000
      00FF000000FF2E1F26FF9F718EFFB58593FFC79496FFC69395FF236487FF0088
      BAFF0088BAFF0088BAFF0086B8FF00557CFF0088BAFF0073A1FF006792FF0086
      B8FF00557CFF0088BAFF0087B9FF293F4B820000000000000000000000000000
      0000000000000000000000000000000000006381F99F0434F5FF0434F4FF0434
      F3FF345AF3CFEFF2FE1000000000000000000000000000000000DFE5FE20335B
      FACF0335FBFF335BFBCFEFF2FE10000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF0040C1FF0028B8
      FF0055CBFF0079D9FF008EE2FF007DDEFF005AD5FF003CCBFF0037C6FB007788
      8F001F4D5400267F880031B0C60035B7D3003CBBD3003FBBD3003EBAD3003BB7
      D3002FB0D3001492CB000F73A3005D595B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CC9A9900FFE5CA00FFE2C500FFE0BF00FFDDBA00FFDA
      B300FFD8AF00FFD5A900FFD3A500FFCF9E00FFCD9A00FFCD9900C6A598009D96
      9700999697009996970099969700999697000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003000009311C18D86E2809FF421202FF060100FF0000
      00FF000000FF00000AFF000392FF000AA8FF000AA8FF0008A3FF004B8AFF008A
      BCFF008ABCFF008ABCFF0088BAFF00557CFF008ABCFF0075A3FF006994FF0089
      BAFF00557CFF008ABCFF008ABBFF293F4B820000000000000000000000000000
      00000000000000000000EFF2FE106281FA9F0435F7FF0434F5FF0434F4FF345A
      F5CFEFF2FE10000000000000000000000000000000000000000000000000EFF2
      FE106281FC9F0335FBFF335BFBCFEFF2FE100000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF0048C4FF0026B8
      FF0054CBFF007BDAFF0092E2FF0087E0FF006DD9FF0055D4FF004BD1FF005DCC
      F2006E757A002E545600377776004AABB50052C0CC004FC1D30042BCD30035B0
      CE002491B100156C9200537589005D595B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC9A9900ECCCBE00FFE7CF00FFE5C900FFE2C500FFDFBE00FFDD
      B900FFDAB300FFD7AD00FFD4A700FFD2A200FFCF9E00FFCD9900D2A19A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000007121F081FBDD27426FEED9533FFE1862DFFA64D16FF2F0D
      01FF000000FF000000FF00003EFF0015C2FF000FB2FF00003FFF004B73FF008C
      BEFF008CBEFF008CBEFF008ABCFF00567DFF008CBEFF0077A4FF006A95FF008B
      BCFF00567DFF008CBEFF008CBEFF293F4B820000000000000000000000000000
      000000000000EFF2FE10335BFACF0335F8FF0435F7FF0434F5FF345AF6CFEFF2
      FE10000000000000000000000000000000000000000000000000000000000000
      000000000000819AFD800335FBFF1342FBEFDFE5FE2000000000000000000000
      0000000000000000000000000000000000000000000014A4FF0051C7FF0024B7
      FF0052CBFF0079D9FF0091E2FF0083DEFF0069D8FF004FD1FF0045CFFF0048D0
      FF005CC9EE007D889000475D63002F5D620029656A002D737A00246D7A001C62
      700044778800677079002B688B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC9A9900F4DCCD00FFEAD300FFE7CF00FFE4C700FFE1C300FFDF
      BD00FFDCB700FFD9B200FFD7AD00FFD4A700FFD2A200FCCB9C00CC9A99000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000215C6C2A45FFF6A940FFAB511CFFCA7327FFAB6724FF7D31
      0DFF2E0C01FF000000FF00000AFF0015BEFF001DD3FF000023FF004C6CFF008E
      C0FF008EC0FF008EC0FF008DBEFF00577EFF008EC0FF0078A6FF006B96FF008D
      BEFF00577EFF008EC0FF008EC0FF293F4B820000000000000000000000000000
      000000000000335BFACF0335F9FF0335F8FF0435F7FF345AF6CFEFF2FE100000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B0BFFD501342FBEF6281FC9F00000000000000000000
      0000000000000000000000000000000000000000000014A4FF005ACBFF0023B7
      FF0050CBFF0077D9FF008FE2FF0080DEFF0065D5FF004ACEFF003FCBFF0041CC
      FF0044CEFF004BCBF80063ACC700728691006C6E7300656F750058656B00676B
      70003A6E86001591E20014A4FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CF9F9D00FFEEDD00FFECD800FFE9D200FFE6CD00FFE4C700FFE1
      C300FFDEBB00FFDBB600FFD9B100FFD6AB00FFD3A600EFC09F00CC9A99000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000062200001B9400003AC00000
      31B700001E9A000167D9110F9CFF6A2F53FF1D084CFF3D1002FFC15414FFD369
      1BFFC85D17FF842E09FF2E0C05FF000FACFF0020DAFF000891FF004C70FF0090
      C2FF0090C2FF0090C2FF008FC0FF00587EFF0090C2FF007AA7FF006C97FF008F
      C0FF00577EFF0090C2FF0090C2FF293F4B820000000000000000000000000000
      0000000000000335FBFF0335F9FF0335F8FF345BF8CFEFF2FE10000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFF2FE10CFD9FE3000000000000000000000
      0000000000000000000000000000000000000000000014A4FF0064CFFF0021B7
      FF004ECBFF0086DCFF00A4E6FF009CE2FF0092DEFF0088DAFF007DD7FF007DD7
      FF007BD8FF007BD8FF007BD8FF0081DCFF0074D8FF005FD1FF0042C7FF002ABC
      FF0022B6FF000F9EFF0014A4FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC9A9900FFF1E200FFEEDD00FFEBD700FFE9D100FFE6CD00FFE3
      C600FFE0C000FFDEBB00FFDBB500FFD8AF00FFD5AA00CC9A9900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000035ABD071BC3FF0D21C8FF041D
      CBFF0017C7FF0019CCFF001ACFFF000788FE000010FF2E0C01FFD46F21FFE789
      2BFFE7892BFFE6882AFFD67423FFA3583EFFA96549FF411E67FF004E75FF0092
      C4FF0092C4FF0092C4FF0091C2FF00587FFF0092C4FF007BA9FF006D98FF0091
      C2FF00587FFF0092C4FF0092C4FF293F4B820000000000000000000000000000
      000000000000335BFACF0335F9FF335BF9CFEFF2FE1000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF006DD3FF005ECB
      FF009DDEFF0089D7FF006DCFFF005BCAFF0049C2FF0046C2FF0043C2FF0041C1
      FF003EC0FF003BBFFF0038BFFF0035BCFF0042C2FF004FC6FF006BCEFF007DD4
      FF0041C1FF000E9EFF0014A4FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9A9900EED5CD00FFF3E700FFF0E100FFEDDB00FFEBD700FFE7CF00FFE5
      CA00FFE2C500FFE0BF00FFDDBA00FFDAB300FFD8AF00CC9A9900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000825C78D7E6AA96FFEDA98DFFDEA3
      95FFB790A7FF8A72B1FF7762B0FF162553FB000000FF0C0200FFB7571AFFF2A2
      3DFFE89A40FFAA9963FF998461FFD0833EFFED9836FFCB6A22FF0B516FFF0094
      C6FF0094C6FF0094C6FF0092C3FF00597FFF0094C6FF007DAAFF006E99FF0093
      C5FF0074A0FF0094C5FF0094C5FF293F4B820000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF00BFE9FF0097D9
      FF006DCBFF0067CAFF0066CCFF0064CCFF0060CCFF005DCBFF005ACAFF0057C9
      FF0053C7FF004FC6FF004BC5FF0047C4FF0042C1FF003CBDFF0032B7FF002FB2
      FF0062C6FF0048B6FF0014A4FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9A9900FCF2EB00FFF4EA00FFF2E500FFF0E100FFEDDB00FFEAD400FFE7
      CF00FFE5C900FFE2C500FFDFBE00FFDDB900EBC4A700CC9A9900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000035241C385A3D305F3D2920405137
      2C569B6E58A2D7A387DFDDA688E7273640E3000000FF000000FF36101CFF2727
      A4FF0D26C4FF089CD6FF0AAFDFFF142C8DFF441306FF391002FF004F6FFF0096
      C7FF0096C7FF0096C7FF0094C5FF005C83FF0096C7FF008ABAFF0082B0FF0096
      C7FF0096C7FF0096C7FF0096C7FF293F4B820000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF00D4EFFF008BD4
      FF0088D5FF0086D5FF0082D7FF0080D7FF007BD5FF0077D4FF0074D3FF006FD1
      FF006BD0FF0067CFFF0063CEFF005DCBFF0058CAFF0051C6FF0048C0FF0040BA
      FF0036B4FF0091D7FF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC9A
      9900DFBEBB00FFFAF500FFF7EE00FFF4EA00FFF2E500FFEFDF00FFECD800FFEA
      D300FFE7CF00FFE4C700FFE2C300FFDFBD00D2A29D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000032133C9000000FF000000FF000021FF3952
      E1FF2B47D9FF005992FF009BBCFF001F5DFF000002FF000000FF004F70FF0097
      C8FF0097C8FF0097C8FF0097C8FF0092C3FF0097C8FF0097C8FF0097C8FF0097
      C8FF0097C8FF0097C8FF0097C8FF283E4A7F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF009DDCFF00C1E9
      FF00ACE2FF00A6E1FF00A1E1FF009EE1FF0099E0FF0095DEFF008FDCFF008ADA
      FF0086D9FF0081D8FF007BD5FF0077D4FF0072D3FF006ACFFF0062CAFF005DC6
      FF0084D4FF0060C5FF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC9A
      9900F9EFEB00FFFBF700FFF9F400FFF7EE00FFF4EA00FFF1E200FFEEDD00FFEC
      D800FFE9D200FFE6CD00FFE4C700ECC7B300CC9A990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000213499002133D2002133D2002039D21525
      83D8001E4FD2002134D2002336D2002134D2002133D2002133D2005478F60099
      CAFF0099CAFF0099CAFF0099CAFF0099CAFF0099CAFF0099CAFF0099CAFF0099
      CAFF0093C4FF0082B0FF00648DF1141F25410000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000014A4FF0014A4
      FF00D5EDFF00D9F2FF00CCEFFF00C2EDFF00BAEAFF00B4E7FF00AFE6FF00A9E5
      FF00A4E3FF009EE1FF0098E0FF0093DDFF0093DDFF009CE0FF00A5E1FF00A1DB
      FF0014A4FF0014A4FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC9A9900DCB8
      B600F5E9E500FFFBF700FFFBF700FFF9F300FFF7EE00FFF3E700FFF1E200FFEE
      DD00FFEBD700FFE9D100F9DCC600CF9F9D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004867CC009A
      CAFF009ACBFF009ACAFF009ACBFF0096C7FF0085B3FE006F99F7005071D40036
      4EA10027386C001720370006080D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014A4FF0014A4FF0074CEFF009FDEFF00B2E5FF00E5F7FF00E1F6FF00DDF4
      FF00D9F3FF00D7F2FF00D7F2FF00A0DEFF008FD8FF0067C9FF0014A4FF0014A4
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC9A9900CC9A
      9900CC9A9900CC9A9900CC9A9900CC9A9900DFBEBB00E6C8C200EED5CD00F4DC
      CD00FFEEDB00FCE6D200D8ABA400CC9A99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003B56B70088
      B7FF00749FFA005578DB003650A9002638750019234000080B12000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000014A4FF0014A4FF0014A4FF0014A4FF0014A4FF0014A4
      FF0014A4FF0014A4FF0014A4FF0014A4FF0014A4FF0014A4FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC9A9900CC9A9900CC9A9900CC9A
      9900CC9A9900CC9A9900CC9A9900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C10131E1D27
      2C460A0D0F180000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000026B7FF0026B7FF0026B7FF0026B7FF0026B7FF0026B7
      FF0026B7FF0026B7FF0026B7FF0026B7FF0026B7FF0026B7FF00000000000000
      000000000000000000000EA00E000EA00E000EA00E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000026B7FF0026B7FF0026B7FF0026B7FF0026B7FF0026B7
      FF0026B7FF0026B7FF0025B1F700A99C8A00A99C8A00A99C8A00A99C8A00A99C
      8A00A99C8A00A99C8A00A99C8A00A99C8A00A99C8A00A99C8A00A99C8A00A99C
      8A00A99C8A00A99C8A0000000000000000000000000000000000000000000000
      0000000000000000000014A4FF0014A4FF0014A4FF0014A4FF0014A4FF0014A4
      FF0014A4FF0014A4FF0014A4FF0014A4FF0014A4FF0014A4FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026B7FF0026B7FF0059C9FF0066CFFF005CCEFF004CCDFF0047CFFF004AD0
      FF004CD1FF004ED2FF0046CEFF003BC8FF003EC7FF0033C1FF0026B7FF0026B7
      FF00000000000EA00E002BC536001DB524001FC02A000EA00E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026B7FF0026B7FF0059C9FF0066CFFF005CCEFF004CCDFF0047CFFF004AD0
      FF004CD1FF004ED2FF0044C8F700A99C8A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F2E5DF00BF806000C68D7000F9F2EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A99C8A0000000000000000000000000000000000000000000000
      000014A4FF0014A4FF003FBAFF004BC1FF0041C0FF0033BFFF002EC1FF0031C2
      FF0033C4FF0035C5FF002DC0FF0024B8FF0027B7FF001EB0FF0014A4FF0014A4
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000884811009F5514009F55
      150096501300753C0300AB6B3E00F3F3F300FBFBFB00FEFEFE00F9F9F900ECEC
      EC00DFDFDF00D2D2D200C5C5C500B8B8B800ACACAC00A6A6A6009C9C9C008D8D
      8D007B7B7B005F5F5F0075350300964004009640040000000000794009009447
      0D0099490E00000000000000000000000000000000000000000026B7FF0026B7
      FF005BC5FF0087DAFF00A1E4FF0098E4FF0086E2FF0070DEFF0065DCFF0069DE
      FF006CDFFF006EE0FF0070E0FF0070E1FF0063DBFF0055D5FF0040CAFF0030BC
      FF0026B7FF000EA00E003BC7430022AB22002DC236000EA00E00000000000000
      000000000000000000000000000000000000000000000000000026B7FF0026B7
      FF005BC5FF0087DAFF00A1E4FF0098E4FF0086E2FF0070DEFF0065DCFF0069DE
      FF006CDFFF006EE0FF006CD9F700A99C8A00FFFFFF00EAEAE400E8E8E200E7E6
      E000AC5F3800B15B2900A6481300BD886B00E0DCD500DEDAD300DDD9D000DBD7
      CE00FFFFFF00A99C8A000000000000000000000000000000000014A4FF0014A4
      FF0041B5FF006DCFFF008ADCFF0080DCFF006CD9FF0055D4FF004AD1FF004ED4
      FF0051D5FF0053D7FF0055D7FF0055D8FF0048D0FF003BC9FF0028BBFF001DAA
      FF0014A4FF0014A4FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A75B1700C2681B00C46A1B00C56A
      1C00C0681B009B57130078470B00ECECEC00F7F7F700FEFEFE00F9F9F900ECEC
      EC00DFDFDF00DFDFDF00D6D6D600CBCBCB00BFBFBF00B5B5B500AFAFAF00A4A4
      A40097979700727272007535030096400400964004009640040084460A00B455
      110099490E000000000000000000000000000000000026B7FF001CB2FF002DBB
      FF0069D4FF0091E2FF00A6E8FF009BE6FF0084E1FF006BDBFF005ED9FF0062DB
      FF0065DCFF0067DDFF0068DDFF0068DDFF0068DDFF0062DBFF0057D5FF0047CD
      FF002CBCFF000EA00E004DCE540033B433003DC845000EA00E00000000000000
      0000000000000000000000000000000000000000000026B7FF001CB2FF002DBB
      FF0069D4FF0091E2FF00A6E8FF009BE6FF0084E1FF006BDBFF005ED9FF0062DB
      FF0065DCFF0067DDFF0065D6F700A99C8A00FFFFFF00E8E8E200FFFEFD00E5CA
      BC00AB511D00C57C4800B9652C00A6481600F5E9DF00FAF3EB00FAF2E900DAD5
      CC00FFFFFF00A99C8A0000000000000000000000000014A4FF000D9EFF0019A9
      FF004EC7FF0078D9FF0090E1FF0083DEFF006AD8FF0050D0FF0043CEFF0047D0
      FF004AD1FF004CD3FF004DD3FF004DD3FF004DD3FF0047D0FF003DC9FF002EBF
      FF0018AAFF0011A0FF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000A75B1700C66C1D00C66C1D00C76D
      1D00C76D1D00C76D1D008E520F00E4E4E400F0F0F00075350300964004009640
      040096400400E6E6E600DEDEDE00D3D3D300C7C7C700BCBCBC00B3B3B300ACAC
      AC00A1A1A1007D7D7D007535030096400400964004009640040084460A00B455
      110099490E000000000000000000000000000000000026B7FF0020B4FF0037C7
      FF0069D6FF008FE2FF00A4E8FF0099E6FF0080E0FF0065D9FF0058D6FF005BD8
      FF005ED9FF0060DAFF0061DAFF0061DAFF0060DAFF005BD8FF0050D2FF0045CD
      FF003BC7FF000EA00E005ED5650043BC43004CCE53000EA00E00000000000000
      0000000000000000000000000000000000000000000026B7FF0020B4FF0037C7
      FF0069D6FF008FE2FF00A4E8FF0099E6FF0080E0FF0065D9FF0058D6FF005BD8
      FF005ED9FF0060DAFF005ED3F700A99C8A00FFFFFF00E7E6E000FEFCFB00BF7E
      5D00CC834A00D08C5200C87B3F00B3581B00C9937500FAF2E900F9F0E600D8D3
      CA00FFFFFF00A99C8A0000000000000000000000000014A4FF0010A0FF0021B7
      FF004ECAFF0076D9FF008EE1FF0081DEFF0066D7FF004ACEFF003ECAFF0041CC
      FF0043CEFF0045CFFF0046CFFF0046CFFF0045CFFF0041CCFF0036C5FF002DBF
      FF0024B7FF000F9EFF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000A95D1800C86E1E00C96F1E00C96F
      1E00C96F1E00C9701E008F531000DCDCDC00E9E9E90075350300964004009640
      040096400400F0F0F000E6E6E600DBDBDB00D0D0D000C4C4C400B9B9B900B2B2
      B200A9A9A900888888007535030096400400964004009640040084470A00B455
      110099490E000000000000000000000000000000000026B7FF0044C8FF0035C7
      FF0067D6FF008DE2FF00A3E8FF0097E6FF007DDFFF0060D8FF0051D4FF0054D5
      FF0056D6FF0058D6FF0059D7FF0059D7FF0020AE4A000EA00E000EA00E000EA0
      0E000EA00E0041BE430071DC760052C4520058D35F0025B429000EA00E000EA0
      0E000EA00E000EA00E0000000000000000000000000026B7FF0044C8FF0035C7
      FF0067D6FF008DE2FF00A3E8FF0097E6FF007DDFFF0060D8FF0051D4FF0054D5
      FF0056D6FF0058D6FF0056D0F700A99C8A00FFFFFF00E5E4DE00F0E2D900AE55
      1E00DC9C5C00DA985900D0874A00C6753200A84B1600F3E4D800F8EFE400D7D1
      C700FFFFFF00A99C8A0000000000000000000000000014A4FF002CB8FF001FB7
      FF004CCAFF0074D9FF008CE1FF007FDEFF0063D5FF0045CCFF0037C7FF003AC9
      FF003CCAFF003ECAFF003FCBFF003FCBFF00122B9F0007078200070782000707
      8200070782000707820007078200070782000707820007078200070782000707
      820007078200070782000000000000000000AA5F1900CA711F00CB721F00CB72
      2000CB722000CB72200090551100D2D2D200DFDFDF0075350300964004009640
      040096400400F9F9F900EEEEEE00E3E3E300D8D8D800CCCCCC00C1C1C100B6B6
      B600B0B0B000919191007535030096400400964004009640040085470A00B556
      120099490E000000000000000000000000000000000026B7FF0052CCFF0038C7
      FF0066D6FF008BE1FF00A1E8FF0094E6FF0079DFFF005CD7FF004CD4FF004ED4
      FF0050D4FF0051D4FF0052D4FF0052D4FF000EA00E00A5EEA900ABEEAE00AEEF
      B100ABEFAE00A2EDA5008AE58C0062CE61005ED3630053D15B0043CB4B0032C4
      3B001FBD2A000FBA1C000EA00E00000000000000000026B7FF0052CCFF0038C7
      FF0066D6FF008BE1FF00A1E8FF0094E6FF0079DFFF005CD7FF004CD4FF004ED4
      FF0050D4FF0051D4FF004FCDF700A99C8A00FFFFFF00E4E2DC00BF7E5C00D18F
      5B00E2AC7500CF895000B2592100D1874300B95F1D00C8917200F8EDE100D5CF
      C500FFFFFF00A99C8A0000000000000000000000000014A4FF0038BDFF0022B7
      FF004BCAFF0072D8FF008AE1FF007BDEFF005ED5FF0041CBFF0033C7FF0035C7
      FF0036C7FF0037C7FF0038C7FF0038C7FF00070782009797FB007575F3007272
      F3006E6EF3006A6AF3004141E9002C2CDC002323D3001919C6001010B8000707
      AA0002029F000101A6000707820000000000AC611A00CC742000CD742100CD75
      2100CD752100CD75210091561100C7C7C700D6D6D60075350300964004009640
      040096400400FEFEFE00F6F6F600EBEBEB00E0E0E000D5D5D500C9C9C900BEBE
      BE00B4B4B400989898007535030096400400964004009640040086480B00B658
      1200994A0E000000000000000000000000000000000026B7FF005BCEFF003CC8
      FF006ED6FF0091E2FF00A4E8FF0095E6FF0078DFFF0058D7FF0048D3FF0049D3
      FF004BD3FF004CD3FF004CD4FF0052D6FF000EA00E00A9ECAA00A4E7A400A8E9
      A800A5E9A5009AE49A0089DE890076DA750062CF62004EC24E003EB93E002DB0
      2D001BA71B0010B017000EA00E00000000000000000026B7FF005BCEFF003CC8
      FF006ED6FF0091E2FF00A4E8FF0095E6FF0078DFFF0058D7FF0048D3FF0049D3
      FF004BD3FF004CD3FF004ACDF700A99C8A00FFFFFF00E3E0D900A84D1B00E8BE
      9300E8BC9000AC532100AB572C00D1884700CA793300A84B1600F1DFD000D4CD
      C300FFFFFF00A99C8A0000000000000000000000000014A4FF0041C0FF0025B8
      FF0053CAFF0078D9FF008EE1FF007DDEFF005DD5FF003ECBFF002FC6FF0030C6
      FF0032C6FF0033C6FF0033C7FF0038CAFF00070782008F8FFA005252EE005050
      EE004B4BED004C4CEF005050F0003232E5001111CF000A0AC0000606B1000303
      A1000000930000009E000707820000000000AD631B00CE762200CF772200CF77
      2200CF772200CF77220092571200BBBBBB00CACACA0075350300964004009640
      040096400400FDFDFD00FDFDFD00F3F3F300E8E8E800DDDDDD00D1D1D100C6C6
      C600BABABA009D9D9D007535030096400400964004009640040086490B00B85A
      13009A4B0F000000000000000000000000000000000026B7FF0063D1FF003AC7
      FF006CD6FF0092E2FF00A8E9FF009EE7FF0088E3FF0070DEFF0065DCFF0069DE
      FF006CDFFF006FE0FF0070E1FF0071E1FF000EA00E00BFF6C100C5F7C600C9F8
      CA00C5F7C700BBF4BD00A6ECA80085DB850082E1860076E17B005DD6640044CC
      4D0028C1320018BE25000EA00E00000000000000000026B7FF0063D1FF003AC7
      FF006CD6FF0092E2FF00A8E9FF009EE7FF0088E3FF0070DEFF0065DCFF0069DE
      FF006CDFFF006FE0FF006CDAF700A99C8A00FFFFFF00E1DED700A4491900AE58
      2900AE582800C4876600E1C1AC00B25A2100D1864100B75C1A00C78E6E00D2CB
      C100FFFFFF00A99C8A0000000000000000000000000014A4FF0048C4FF0023B7
      FF0051CAFF0079D9FF0092E2FF0087E0FF006EDAFF0055D4FF004AD1FF004ED4
      FF0051D5FF0054D7FF0055D8FF0056D8FF00070782009D9DFC007E7EF6007E7E
      F6007979F6007676F6007272F6007070F6006A6AF2004141DE002222CB000D0D
      B8000303A6000101A6000707820000000000AF651C00D0792300D1792300D17A
      2300D17A2400D17A240093591300B0B0B000BDBDBD0075350300964004009640
      040096400400F9F9F900FEFEFE00FBFBFB00F0F0F000E5E5E500DADADA00CECE
      CE00C3C3C300A3A3A30075350300964004009640040096400400874A0B00B95B
      14009B4C10000000000000000000000000000000000026B7FF006CD4FF0038C7
      FF006AD6FF0090E2FF00A6E8FF009BE6FF0084E1FF006BDCFF005FD9FF0063DB
      FF0065DCFF0068DDFF0069DEFF0069DEFF0026B04C000EA00E000EA00E000EA0
      0E000EA00E0059C45A00B6F2B80093E1930091E796003EBF41000EA00E000EA0
      0E000EA00E000EA00E0000000000000000000000000026B7FF006CD4FF0038C7
      FF006AD6FF0090E2FF00A6E8FF009BE6FF0084E1FF006BDCFF005FD9FF0063DB
      FF0065DCFF0068DDFF0066D7F700A99C8A00FFFFFF00E0DCD500FBF5EE00FAF3
      EB00FAF2E900F9F0E600F8EFE400B1623800CD824200C36F2C00A6481300CDC0
      B300FFFFFF00A99C8A0000000000000000000000000014A4FF0051C7FF0022B7
      FF004FCAFF0077D9FF0090E1FF0083DEFF006AD8FF0050D1FF0044CEFF0048D0
      FF004AD1FF004DD3FF004ED4FF004ED4FF00162D9F0007078200070782000707
      8200070782000707820007078200070782000707820007078200070782000707
      820007078200070782000000000000000000B1671E00D27C2600D37D2800D37F
      2A00D37F2B00D47F2B00945B1700AEAEAE00AFAFAF0075350300753503007535
      030075350300F4F4F400FCFCFC00FEFEFE00F8F8F800EDEDED00E2E2E200D6D6
      D600CBCBCB00ABABAB0075350300964004009640040096400400884B0C00BA5C
      15009C4D10000000000000000000000000000000000026B7FF0075D7FF0036C7
      FF0068D6FF008FE2FF00A4E8FF0099E6FF0080E0FF0065D9FF0058D7FF005CD8
      FF005ED9FF0060DAFF0062DAFF0062DBFF0062DAFF005DD8FF0052D3FF0047CE
      FF003CC8FF000EA00E00BAF4BD009BE39B0098E99C000EA00E00000000000000
      0000000000000000000000000000000000000000000026B7FF0075D7FF0036C7
      FF0068D6FF008FE2FF00A4E8FF0099E6FF0080E0FF0065D9FF0058D7FF005CD8
      FF005ED9FF0060DAFF005FD3F700A99C8A00FFFFFF00DEDAD300FAF3EB00FAF2
      E900F9F0E600F8EFE400F8EDE100DFBDA600AF551E00C6773800AB4C1100B47D
      5E00FFFFFF00A99C8A0000000000000000000000000014A4FF005ACBFF0020B7
      FF004DCAFF0076D9FF008EE1FF0081DEFF0066D7FF004ACEFF003ECBFF0041CC
      FF0043CEFF0045CFFF0047CFFF0047D0FF0047CFFF0042CCFF0038C6FF002EC0
      FF0025B8FF0011A0FF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000B26C2500D4823000D5843300D585
      3500D6863600D6863600955E1C00A2A09D00A7A7A700A7A7A700B5B5B500C5BE
      B800D9D4D000EDEDED00F8F8F800FDFDFD00FEFEFE00F5F5F500E8E8E800DADA
      DA00CECECE00AFAFAF00753503009640040096400400923F0400884B0C00BB5E
      15009D4E11000000000000000000000000000000000026B7FF007EDAFF0034C7
      FF0066D6FF00A0E5FF00B5EBFF00B6EAFF00ACE7FF0099E1FF0096E0FF0095E0
      FF0095E1FF0094E1FF0094E1FF0095E2FF0099E4FF0080DDFF0062D5FF0042CB
      FF0038C6FF000EA00E00BAF3BC009CE39C0099E89D000EA00E00000000000000
      0000000000000000000000000000000000000000000026B7FF007EDAFF0034C7
      FF0066D6FF00A0E5FF00B5EBFF00B6EAFF00ACE7FF0099E1FF0096E0FF0095E0
      FF0095E1FF0094E1FF008FDAF700A99C8A00FFFFFF00DDD9D000FAF2E900F9F0
      E600F8EFE400F8EDE100F7EBDE00F6EADC00B0603600C1723900B35A20009E3E
      0E00F9F2EF00A99C8A0000000000000000000000000014A4FF0064CFFF001FB7
      FF004BCAFF0089DDFF00A1E5FF00A3E3FF0097E0FF0081D8FF007ED7FF007DD7
      FF007DD8FF007BD8FF007BD8FF007DD9FF0081DCFF0066D3FF0047C9FF002ABC
      FF0022B6FF000F9FFF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000B4712D00D7893B00D78B3E00D88C
      4000D88D4100D88D4100BF7D3600966222009661210095601F00955F1D00955E
      1B00945C1800935A150093591300925812009157120091561200905511008F54
      11008E5310008D520F008D510F008C500E008B4F0E008A4E0D00B55D1500BC5F
      16009E4F11000000000000000000000000000000000026B7FF0088DDFF0078D7
      FF00B6E7FF009ADEFF0083D9FF006DD3FF0065D1FF0063D0FF0060D0FF005DD0
      FF005ACFFF0057CEFF0053CDFF004FCCFF0057CEFF0065D1FF007FD7FF0095DD
      FF0069D2FF000EA00E00B3F1B50096E0960093E798000EA00E00000000000000
      0000000000000000000000000000000000000000000026B7FF0088DDFF0078D7
      FF00B6E7FF009ADEFF0083D9FF006DD3FF0065D1FF0063D0FF0060D0FF005DD0
      FF005ACFFF0057CEFF0050C7F700A99C8A00FFFFFF00DBD7CE00DAD5CC00D8D3
      CA00D7D1C700D5CFC500D4CDC300D2CBC100C3A38F00A84C1900B45F2A009F3C
      0800CC997F00A99C8A0000000000000000000000000014A4FF006ED3FF005DCB
      FF00A3E0FF0082D4FF0069CEFF0052C6FF004AC4FF0048C2FF0045C2FF0042C2
      FF0040C1FF003DC0FF0039BFFF0035BDFF003DC0FF004AC4FF0065CBFF007DD3
      FF004EC5FF000E9EFF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000B6763600D98F4500D9914800DC98
      5400DC995600DC995600DC995500DC985400DB965100DA944E00DA924A00D98F
      4500D88C4000D6883A00D5843300D4823000D2802F00D17E2E00D07C2D00CE7A
      2C00CC782B00CB762A00C9742900C8722800C6702700C46E2600BF631800BD60
      17009E5012000000000000000000000000000000000026B7FF00CEEEFF00A9E1
      FF0089D7FF0085D8FF008CDBFF0085DBFF0071D6FF0056CFFF0048CFFF004AD0
      FF004DD2FF004ED1FF004BCFFF004ED0FF0050CEFF0051CDFF004DC9FF004AC4
      FF0077D1FF000EA00E00A8EFAC0094E497008AE590000EA00E00000000000000
      0000000000000000000000000000000000000000000026B7FF00CEEEFF00A9E1
      FF0089D7FF0085D8FF008CDBFF0085DBFF0071D6FF0056CFFF0048CFFF004AD0
      FF004DD2FF004ED1FF0049C9F700A99C8A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B3664000B05B2C00A243
      12009F401000A99C8A0000000000000000000000000014A4FF00C0E9FF0093D8
      FF006FCBFF006BCCFF0073D0FF006BD0FF0056CAFF003CC1FF002FC1FF0031C2
      FF0034C5FF0035C4FF0032C1FF0035C2FF0036C0FF0037BFFF0034BAFF0031B4
      FF005CC4FF0049B5FF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000B77B3E00DB955000CF864000CA83
      4200C1773700C1773700C1773700C1773700C1773700C1773700C1773700C177
      3700C1773700C1773700C1773700C1773700C1773700C1773700C1773700C177
      3700BE723200BE723200BE723200BD6E2E00BA692700B7652200BD611600BE61
      17009F5112000000000000000000000000000000000026B7FF00DEF3FF007BD3
      FF006CCFFF0087D9FF00A0E4FF0097E4FF0083E0FF006FDEFF0065DCFF0069DE
      FF006DDFFF006FE0FF0070E1FF006ADEFF0063DBFF0051D3FF003BC7FF003CC3
      FF0046C2FF0035B04A000EA00E000EA00E000EA00E0000000000000000000000
      0000000000000000000000000000000000000000000026B7FF00DEF3FF007BD3
      FF006CCFFF0087D9FF00A0E4FF0097E4FF0083E0FF006FDEFF0065DCFF0069DE
      FF006DDFFF006FE0FF006CDAF700A99C8A00A99C8A00A99C8A00A99C8A00A99C
      8A00A99C8A00A99C8A00A99C8A00A99C8A00A99C8A00A58267009D3F0F009C39
      07009A3A0A00A99C8A0000000000000000000000000014A4FF00D4EFFF0060C6
      FF0051C1FF006DCEFF0089DCFF007FDCFF0069D7FF0054D4FF004AD1FF004ED4
      FF0052D5FF0054D7FF0055D8FF004FD4FF0048D0FF0037C6FF0024B7FF0025B2
      FF002DB1FF0093D8FF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000B9804600DD9B5A00C1783800EFEF
      EF00EEEEEE00ECECEC00EAEAEA00E8E8E800E6E6E600E5E5E500E3E3E300E1E1
      E100DFDFDF00DDDDDD00DCDCDC00DADADA00D8D8D800D7D7D700D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600B85C1400BF63
      1800A05212000000000000000000000000000000000026B7FF0047BFFF0030BB
      FF006BD5FF0092E2FF00A7E9FF009AE6FF0083E1FF006ADBFF005FD9FF0063DB
      FF0065DCFF0068DDFF0069DDFF0069DEFF0068DDFF0062DAFF0057D5FF0046CD
      FF002ABBFF004BC3FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026B7FF0047BFFF0030BB
      FF006BD5FF0092E2FF00A7E9FF009AE6FF0083E1FF006ADBFF005FD9FF0063DB
      FF0065DCFF0068DDFF0067D9FA005CC2DF005CC3E10057C2E3004DBDE3003FBA
      E70027AEEE0048BCF60029B6FC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF002EADFF001CA9
      FF0050C9FF0079D9FF0091E2FF0082DEFF0069D8FF004FD0FF0044CEFF0048D0
      FF004AD1FF004DD3FF004ED3FF004ED4FF004DD3FF0047CFFF003DC9FF002DBF
      FF0017A9FF0032B2FF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000BA844D00DFA16400BB723600E0E0
      E000DFDFDF00DDDDDD00DCDCDC00DADADA00D9D9D900D8D8D800D6D6D600D5D5
      D500D4D4D400D2D2D200D1D1D100D0D0D000CECECE00CDCDCD00CBCBCB00CBCB
      CB00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00AF561100BF63
      1800A05213000000000000000000000000000000000026B7FF001EB4FF003AC7
      FF006BD7FF0091E2FF00A5E9FF0098E6FF007FDFFF0064D9FF0058D7FF005CD8
      FF005ED9FF0060DAFF0061DAFF0061DAFF0061DAFF005BD7FF0050D2FF0045CD
      FF003BC7FF001FB2FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026B7FF001EB4FF003AC7
      FF006BD7FF0091E2FF00A5E9FF0098E6FF007FDFFF0064D9FF0058D7FF005CD8
      FF005ED9FF0060DAFF0061DAFF0061DAFF0061DAFF005BD7FF0050D1FE0044C9
      FA0039C0F6001EACF70026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF000FA0FF0023B7
      FF0050CBFF0078D9FF008FE2FF0080DEFF0065D5FF0049CEFF003ECBFF0041CC
      FF0043CEFF0045CFFF0046CFFF0046CFFF0046CFFF0041CBFF0036C5FF002DBF
      FF0024B7FF000F9EFF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000BC895500E1A76E00BC753B00F7F7
      F700F6F6F600F4F4F400F2F2F200F0F0F000EEEEEE00EDEDED00EBEBEB00E9E9
      E900E7E7E700E5E5E500E4E4E400E2E2E200E0E0E000DEDEDE00DCDCDC00DBDB
      DB00D9D9D900D7D7D700D6D6D600D6D6D600D6D6D600D6D6D600AC530F00C064
      1900A15313000000000000000000000000000000000026B7FF0043C9FF0038C7
      FF006AD7FF008FE2FF00A3E9FF0095E6FF007BDFFF005FD8FF0052D4FF0054D5
      FF0057D6FF0058D7FF0059D7FF005AD7FF0059D7FF0054D4FF004ACFFF0040CA
      FF0037C6FF0021B5FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026B7FF0043C9FF0038C7
      FF006AD7FF008FE2FF00A3E9FF0095E6FF007BDFFF005FD8FF0052D4FF0054D5
      FF0057D6FF0058D7FF0059D7FF005AD7FF0059D7FF0054D4FF004ACFFF0040CA
      FF0037C6FF0021B4FE0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF002BBAFF0022B7
      FF004FCBFF0076D9FF008CE2FF007DDEFF0060D5FF0044CCFF0038C7FF003AC9
      FF003DCAFF003ECBFF003FCBFF0040CBFF003FCBFF003AC7FF0031C1FF0028BB
      FF0021B6FF0011A1FF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000BD8D5C00E3AD7700BD784000E6E6
      E600E5E5E500E3E3E300E2E2E200E0E0E000DFDFDF00DEDEDE00DCDCDC00DBDB
      DB00DADADA00D8D8D800D7D7D700D6D6D600D4D4D400D3D3D300D1D1D100D0D0
      D000CFCFCF00CECECE00CCCCCC00CBCBCB00CACACA00CACACA00AC530F00C165
      1900A15413000000000000000000000000000000000026B7FF0051CCFF003AC8
      FF0069D7FF008DE2FF00A1E8FF0093E6FF0078DFFF005BD7FF004DD4FF004FD4
      FF0050D4FF0051D4FF0052D4FF0052D4FF0052D4FF004DD2FF0045CEFF003ECA
      FF0040CBFF0029BBFF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026B7FF0051CCFF003AC8
      FF0069D7FF008DE2FF00A1E8FF0093E6FF0078DFFF005BD7FF004DD4FF004FD4
      FF0050D4FF0051D4FF0052D4FF0052D4FF0052D4FF004DD2FF0045CEFF003ECA
      FF0040CBFF0029BBFF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF0037BDFF0023B8
      FF004ECBFF0074D9FF008AE1FF007ADEFF005DD5FF0041CBFF0034C7FF0035C7
      FF0036C7FF0037C7FF0038C7FF0038C7FF0038C7FF0034C5FF002DC0FF0027BB
      FF0028BCFF0016A9FF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000BF916300E5B28000BE7B4400FEFE
      FE00FDFDFD00FCFCFC00FAFAFA00F8F8F800F6F6F600F5F5F500F3F3F300F1F1
      F100EFEFEF00EDEDED00ECECEC00EAEAEA00E8E8E800E6E6E600E4E4E400E3E3
      E300E1E1E100DFDFDF00DDDDDD00DBDBDB00DADADA00DADADA00AC540F00C166
      1900A25414000000000000000000000000000000000026B7FF005ACFFF003FC8
      FF0070D7FF0092E2FF00A4E9FF0095E6FF0075DFFF0056D7FF0048D3FF004AD3
      FF004BD3FF004CD3FF004CD4FF004FD5FF0057D8FF005AD8FF0059D7FF0056D5
      FF0049CFFF0028BAFF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026B7FF005ACFFF003FC8
      FF0070D7FF0092E2FF00A4E9FF0095E6FF0075DFFF0056D7FF0048D3FF004AD3
      FF004BD3FF004CD3FF004CD4FF004FD5FF0057D8FF005AD8FF0059D7FF0056D5
      FF0049CFFF0028BAFF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF0040C1FF0028B8
      FF0055CBFF0079D9FF008EE2FF007DDEFF005AD5FF003CCBFF002FC6FF0031C6
      FF0032C6FF0033C6FF0033C7FF0035C9FF003DCCFF0040CCFF003FCBFF003CC9
      FF0030C1FF0016A7FF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000C0956800E6B78800BF7D4900E8E8
      E800E8E8E800E8E8E800E7E7E700E6E6E600E5E5E500E4E4E400E2E2E200E1E1
      E100E0E0E000DEDEDE00DDDDDD00DCDCDC00DADADA00D9D9D900D8D8D800D6D6
      D600D5D5D500D4D4D400D2D2D200D1D1D100D0D0D000D0D0D000AD540F00C266
      1A00A25414000000000000000000000000000000000026B7FF0063D1FF003DC8
      FF006FD7FF0094E3FF00A8E9FF009EE7FF0087E2FF0070DEFF0066DCFF0065DC
      FF0068DEFF006FE0FF0071E1FF0071E1FF0071E1FF006BDEFF005ED9FF0051D3
      FF0045CDFF0026B9FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026B7FF0063D1FF003DC8
      FF006FD7FF0094E3FF00A8E9FF009EE7FF0087E2FF0070DEFF0066DCFF0065DC
      FF0068DEFF006FE0FF0071E1FF0071E1FF0071E1FF006BDEFF005ED9FF0051D3
      FF0045CDFF0026B9FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF0048C4FF0026B8
      FF0054CBFF007BDAFF0092E2FF0087E0FF006DD9FF0055D4FF004BD1FF004AD1
      FF004DD4FF0054D7FF0056D8FF0056D8FF0056D8FF0050D4FF0043CEFF0037C6
      FF002DBFFF0014A6FF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000C1976D00E8BB8F00C0804D00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00F9F9
      F900F7F7F700F5F5F500F4F4F400F2F2F200F0F0F000EEEEEE00ECECEC00EBEB
      EB00E9E9E900E7E7E700E5E5E500E3E3E300E2E2E200E2E2E200AD540F00C266
      1A00A25514000000000000000000000000000000000026B7FF006CD4FF003BC7
      FF006DD7FF0092E2FF00A7E9FF009BE6FF0083E1FF006ADCFF0060DAFF0063DB
      FF0066DCFF0068DDFF006ADEFF006ADEFF0069DEFF0064DBFF0058D6FF004CD0
      FF0041CAFF0024B6FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026B7FF006CD4FF003BC7
      FF006DD7FF0092E2FF00A7E9FF009BE6FF0083E1FF006ADCFF0060DAFF0063DB
      FF0066DCFF0068DDFF006ADEFF006ADEFF0069DEFF0064DBFF0058D6FF004CD0
      FF0041CAFF0024B6FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF0051C7FF0024B7
      FF0052CBFF0079D9FF0091E2FF0083DEFF0069D8FF004FD1FF0045CFFF0048D0
      FF004BD1FF004DD3FF004FD4FF004FD4FF004ED4FF0049D0FF003ECAFF0033C2
      FF0029BBFF0013A3FF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000C29A7100E9BF9400C0825000E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E7E7
      E700E6E6E600E4E4E400E3E3E300E2E2E200E0E0E000DFDFDF00DEDEDE00DCDC
      DC00DBDBDB00DADADA00D8D8D800D7D7D700D6D6D600D6D6D600AD541000C267
      1A00A35514000000000000000000000000000000000026B7FF0075D7FF0039C7
      FF006BD7FF0090E2FF00A5E9FF0098E6FF007FDFFF0065D9FF0059D7FF005CD8
      FF005FD9FF0061DAFF0062DBFF0062DBFF0062DBFF005DD8FF0052D3FF0047CE
      FF003CC8FF0021B4FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026B7FF0075D7FF0039C7
      FF006BD7FF0090E2FF00A5E9FF0098E6FF007FDFFF0065D9FF0059D7FF005CD8
      FF005FD9FF0061DAFF0062DBFF0062DBFF0062DBFF005DD8FF0052D3FF0047CE
      FF003CC8FF0021B4FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF005ACBFF0023B7
      FF0050CBFF0077D9FF008FE2FF0080DEFF0065D5FF004ACEFF003FCBFF0041CC
      FF0044CEFF0046CFFF0047D0FF0047D0FF0047D0FF0042CCFF0038C6FF002EC0
      FF0025B8FF0011A0FF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000C29B7300EAC19800C1835200FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FDFDFD00FCFCFC00FAFAFA00F8F8F800F6F6F600F4F4F400F3F3
      F300F1F1F100EFEFEF00EDEDED00EBEBEB00EAEAEA00EAEAEA00AD541000C267
      1A00A35514000000000000000000000000000000000026B7FF007EDAFF0037C7
      FF0069D7FF009DE4FF00B7ECFF00B0E9FF00A8E6FF009FE3FF0095E0FF0095E0
      FF0094E1FF0094E1FF0094E1FF0099E4FF008DE1FF007ADCFF005DD4FF0042CB
      FF0038C6FF001FB2FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026B7FF007EDAFF0037C7
      FF0069D7FF009DE4FF00B7ECFF00B0E9FF00A8E6FF009FE3FF0095E0FF0095E0
      FF0094E1FF0094E1FF0094E1FF0099E4FF008DE1FF007ADCFF005DD4FF0042CB
      FF0038C6FF001FB2FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF0064CFFF0021B7
      FF004ECBFF0086DCFF00A4E6FF009CE2FF0092DEFF0088DAFF007DD7FF007DD7
      FF007BD8FF007BD8FF007BD8FF0081DCFF0074D8FF005FD1FF0042C7FF002ABC
      FF0022B6FF000F9EFF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000C29B7300EAC19800C1835200E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E7E7E700E6E6E600E5E5E500E4E4E400E2E2
      E200E1E1E100E0E0E000DEDEDE00DDDDDD00DCDCDC00DCDCDC00AD541000C267
      1A00A35514000000000000000000000000000000000026B7FF0087DDFF0079D7
      FF00B1E6FF00A0E0FF0087DAFF0076D6FF0064D0FF0061D0FF005ED0FF005BCF
      FF0058CEFF0055CDFF0052CDFF004ECBFF005DD0FF006AD3FF0085D9FF0095DE
      FF005CCFFF001DB2FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026B7FF0087DDFF0079D7
      FF00B1E6FF00A0E0FF0087DAFF0076D6FF0064D0FF0061D0FF005ED0FF005BCF
      FF0058CEFF0055CDFF0052CDFF004ECBFF005DD0FF006AD3FF0085D9FF0095DE
      FF005CCFFF001DB2FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF006DD3FF005ECB
      FF009DDEFF0089D7FF006DCFFF005BCAFF0049C2FF0046C2FF0043C2FF0041C1
      FF003EC0FF003BBFFF0038BFFF0035BCFF0042C2FF004FC6FF006BCEFF007DD4
      FF0041C1FF000E9EFF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000C29A7200E9BF9600C0825100FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFB
      FB00F9F9F900F7F7F700F5F5F500F3F3F300F2F2F200F2F2F200AD541000C267
      1A00A35514000000000000000000000000000000000026B7FF00CDEEFF00ACE2
      FF0087D7FF0081D6FF0080D8FF007ED8FF007BD8FF0078D7FF0075D6FF0072D5
      FF006ED4FF006AD3FF0066D2FF0062D1FF005DCFFF0056CCFF004BC7FF0048C3
      FF007CD3FF0063C6FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026B7FF00CDEEFF00ACE2
      FF0087D7FF0081D6FF0080D8FF007ED8FF007BD8FF0078D7FF0075D6FF0072D5
      FF006ED4FF006AD3FF0066D2FF0062D1FF005DCFFF0056CCFF004BC7FF0048C3
      FF007CD3FF0063C6FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF00BFE9FF0097D9
      FF006DCBFF0067CAFF0066CCFF0064CCFF0060CCFF005DCBFF005ACAFF0057C9
      FF0053C7FF004FC6FF004BC5FF0047C4FF0042C1FF003CBDFF0032B7FF002FB2
      FF0062C6FF0048B6FF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000C1986F00E8BC9100C0804E00E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E7E7E700E6E6E600E4E4E400E3E3E300E2E2E200E2E2E200AD540F00C266
      1A00A25514000000000000000000000000000000000026B7FF00DEF3FF00A2DE
      FF009FDFFF009DDFFF009AE0FF0098E0FF0094DFFF0090DEFF008DDDFF0089DC
      FF0085DBFF0081DAFF007DD9FF0078D7FF0073D6FF006CD3FF0063CEFF005AC9
      FF0050C4FF00A7E0FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026B7FF00DEF3FF00A2DE
      FF009FDFFF009DDFFF009AE0FF0098E0FF0094DFFF0090DEFF008DDDFF0089DC
      FF0085DBFF0081DAFF007DD9FF0078D7FF0073D6FF006CD3FF0063CEFF005AC9
      FF0050C4FF00A7E0FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF00D4EFFF008BD4
      FF0088D5FF0086D5FF0082D7FF0080D7FF007BD5FF0077D4FF0074D3FF006FD1
      FF006BD0FF0067CFFF0063CEFF005DCBFF0058CAFF0051C6FF0048C0FF0040BA
      FF0036B4FF0091D7FF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000C0956A00E7B88A00BF7E4A00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FDFDFD00FBFBFB00FAFAFA00FAFAFA00AD540F00C266
      1A00A25514000000000000000000000000000000000026B7FF00B1E4FF00CFEE
      FF00BEE9FF00B9E8FF00B5E8FF00B2E8FF00AEE7FF00AAE6FF00A5E4FF00A1E3
      FF009DE2FF0099E1FF0094DFFF0090DEFF008BDDFF0084DAFF007CD6FF0078D3
      FF009CDEFF007BD2FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026B7FF00B1E4FF00CFEE
      FF00BEE9FF00B9E8FF00B5E8FF00B2E8FF00AEE7FF00AAE6FF00A5E4FF00A1E3
      FF009DE2FF0099E1FF0094DFFF0090DEFF008BDDFF0084DAFF007CD6FF0078D3
      FF009CDEFF007BD2FF0026B7FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF009DDCFF00C1E9
      FF00ACE2FF00A6E1FF00A1E1FF009EE1FF0099E0FF0095DEFF008FDCFF008ADA
      FF0086D9FF0081D8FF007BD5FF0077D4FF0072D3FF006ACFFF0062CAFF005DC6
      FF0084D4FF0060C5FF0014A4FF00000000000000000000000000000000000000
      000000000000000000000000000000000000976337009C5C2D0095491400E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E7E7E700E7E7E7009C470900A954
      110090470E00000000000000000000000000000000000000000026B7FF0026B7
      FF00DFF1FF00E2F5FF00D8F3FF00D0F1FF00C9EFFF00C4EDFF00C0ECFF00BBEB
      FF00B7EAFF00B2E8FF00ADE7FF00A9E5FF00A9E5FF00B0E7FF00B8E8FF00B5E2
      FF0026B7FF0026B7FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000026B7FF0026B7
      FF00DFF1FF00E2F5FF00D8F3FF00D0F1FF00C9EFFF00C4EDFF00C0ECFF00BBEB
      FF00B7EAFF00B2E8FF00ADE7FF00A9E5FF00A9E5FF00B0E7FF00B8E8FF00B5E2
      FF0026B7FF0026B7FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000014A4FF0014A4
      FF00D5EDFF00D9F2FF00CCEFFF00C2EDFF00BAEAFF00B4E7FF00AFE6FF00A9E5
      FF00A4E3FF009EE1FF0098E0FF0093DDFF0093DDFF009CE0FF00A5E1FF00A1DB
      FF0014A4FF0014A4FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000895125000000000087380300FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE008A3903000000
      00007E3A08000000000000000000000000000000000000000000000000000000
      000026B7FF0026B7FF008DD9FF00B3E6FF00C3EBFF00EBF9FF00E8F8FF00E5F7
      FF00E2F6FF00E0F5FF00E0F5FF00B4E6FF00A5E1FF0081D5FF0026B7FF0026B7
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026B7FF0026B7FF008DD9FF00B3E6FF00C3EBFF00EBF9FF00E8F8FF00E5F7
      FF00E2F6FF00E0F5FF00E0F5FF00B4E6FF00A5E1FF0081D5FF0026B7FF0026B7
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014A4FF0014A4FF0074CEFF009FDEFF00B2E5FF00E5F7FF00E1F6FF00DDF4
      FF00D9F3FF00D7F2FF00D7F2FF00A0DEFF008FD8FF0067C9FF0014A4FF0014A4
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AF7B4900C78A5400AF662D007969
      AF007969AF007969AF007969AF007969AF007969AF007969AF007969AF007969
      AF007969AF007969AF007969AF007969AF007969AF007969AF007969AF007969
      AF007969AF007969AF007969AF007969AF007969AF007969AF00A24C0C00AE57
      1300984D10000000000000000000000000000000000000000000000000000000
      0000000000000000000026B7FF0026B7FF0026B7FF0026B7FF0026B7FF0026B7
      FF0026B7FF0026B7FF0026B7FF0026B7FF0026B7FF0026B7FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000026B7FF0026B7FF0026B7FF0026B7FF0026B7FF0026B7
      FF0026B7FF0026B7FF0026B7FF0026B7FF0026B7FF0026B7FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000014A4FF0014A4FF0014A4FF0014A4FF0014A4FF0014A4
      FF0014A4FF0014A4FF0014A4FF0014A4FF0014A4FF0014A4FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8774600A9744200AE6930002F0C
      96002F0C96002F0C96002F0C96002F0C96002F0C96002F0C96002F0C96002F0C
      96002F0C96002F0C96002F0C96002F0C96002F0C96002F0C96002F0C96002F0C
      96002F0C96002F0C96002F0C96002F0C96002F0C96002F0C9600A14D0D00A451
      1000934B1000000000000000000000000000424D3E000000000000003E000000
      2800000080000000800000000100010000000000000800000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FC7FFFFF000000000000000000000000F83FFFFF000000000000000000000000
      F81FFFFF000000000000000000000000F80FFFFF000000000000000000000000
      FC07FFFF000000000000000000000000FE03FFFF000000000000000000000000
      FF01FFFF000000000000000000000000FF81FFFF000000000000000000000000
      FFC1007F000000000000000000000000FFE0003F000000000000000000000000
      FFFC001F000000000000000000000000FFF8000F000000000000000000000000
      FFF8000F000000000000000000000000FFF8000F000000000000000000000000
      FFF8000F000000000000000000000000FFF8000F000000000000000000000000
      FFF8000F000000000000000000000000FFF8000F000000000000000000000000
      FFF8000F000000000000000000000000FFF8000F000000000000000000000000
      FFFC001F000000000000000000000000FFFE003F000000000000000000000000
      FFFF007F000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFC00FFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF0003FFFFFFFFFFF1FFFE3F800000FFFE0001FFFFE01FFF
      E0FFFC1F800000FFFC0000FFFF0003FFC07FF80F800000FFFC0000FFFC0000FF
      803FF007800000FFF800007FF800007F001FE003800000FFF800003FF000003F
      000FC003800000FFF800003FE000001F00078003800000FFF800003FC000000F
      80030007800000FFF000003FC000000FC000000F800000FFF000003F80000007
      E000001F800000FFF000003F80000007F000003F800000FFF000003F80000007
      F800007F800000FFF000003F00000003FC0000FF800000FFF000003F00000003
      FE0001FF800000FFF000003F00000003FF0003FF800000FFF000003F00000003
      FF0003FF800000FFF000001F00000003FE0001FF800000FFE000001F00000003
      FC0000FF800000FFE000001F00000003F800007F800000FFE000001F00000003
      F000003F800000FFE000001F80000007E000001F800000FFE000001F80000007
      C000000F800000FFE000001F8000000780030007800000FFE000000FC000000F
      00078003800000FFC000000FC000000F000FC003800001FFC000000FE000001F
      001FE003800003FFC000000FF000003F803FF007800007FFC000000FF800007F
      C07FF80F80000FFFE000001FFC0000FFE0FFFC1F80001FFFF000003FFF0003FF
      F1FFFE3F80003FFFFF001FFFFFE01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FF
      FFFFFFFFFC003FF3FC7F1FFFFFFFC00FFFFFFFFFF0000FE1F80C03FFFE000000
      FFFFFFFFC00003C1F000007FFE000000FFFFFFFF800001C3E000000FFE000000
      FFFFFF1F80000187C0000001FE000000FCFFFE1F8000010F8000000000000000
      F87FFC1F8000001F0000000300000000F83FF83F8000003F0000000700000000
      F81FF07F8000007F0000000300000000FC0FE0FF800000FF0000000300000000
      FE0781FF800000FF0000000300000000FF0303FF8000007F0000000300000000
      FFC007FF8000007F0000000300000000FFE00FFF8000003F0000000300000000
      FFF01FFF8000003F80000003FE000000FFF01FFF8000003FE0000007FE000000
      FFE00FFF8000003FF800000FFE000000FFC007FF8000007FFC00001FFE000000
      FF8183FF8000007FFC00003FFE000000FF03C1FF800000FFFC0000FFFC000000
      FC07E0FF800000FFF8001FFFF8000000F80FF87F800001FFF8001FFFF8000000
      F81FFC7F800001FFF8001FFF00000000F83FFE7F800001FFF8003FFF00000000
      F87FFFFF800001FFF0003FFF00000000FFFFFFFF800001FFF0003FFF00000000
      FFFFFFFF800001FFE0007FFFFE000000FFFFFFFF800001FFE0007FFFFE000000
      FFFFFFFFC00003FFC000FFFFFFFFC001FFFFFFFFF0000FFFC000FFFFFFFFC03F
      FFFFFFFFFC003FFFFF01FFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FC003C7FFC000003FC003FFFFFFFFFFFF000083FF0000003F0000FFF80000047
      C000003FC0000003C00003FF000000078000003F80000003800001FF00000007
      8000003F80000003800001FF0000000780000003800000038000000300000007
      8000000180000003800000010000000780000001800000038000000100000007
      8000000180000003800000010000000780000003800000038000000300000007
      8000003F80000003800001FF000000078000003F80000003800001FF00000007
      8000003F80000003800001FF000000078000003F80000003800001FF00000007
      8000007F80000003800001FF00000007800001FF800001FF800001FF00000007
      800001FF800001FF800001FF00000007800001FF800001FF800001FF00000007
      800001FF800001FF800001FF00000007800001FF800001FF800001FF00000007
      800001FF800001FF800001FF00000007800001FF800001FF800001FF00000007
      800001FF800001FF800001FF00000007800001FF800001FF800001FF00000007
      800001FF800001FF800001FF00000007800001FF800001FF800001FF00000007
      800001FF800001FF800001FF00000007800001FF800001FF800001FF00000007
      C00003FFC00003FFC00003FF40000017F0000FFFF0000FFFF0000FFF00000007
      FC003FFFFC003FFFFC003FFF0000000700000000000000000000000000000000
      000000000000}
  end
  object ds_Referencia: TDataSource
    DataSet = DM_Dados.cds_Referencia
    Left = 768
    Top = 8
  end
  object ds_Banco_Dizimo: TDataSource
    DataSet = DM_Dados.cds_BancoDizimo
    Left = 888
    Top = 8
  end
  object tmr_Lancam: TTimer
    OnTimer = tmr_LancamTimer
    Left = 1179
    Top = 105
  end
  object ds_Tabela: TDataSource
    DataSet = DM_Dados.cds_Lancamento
    Left = 984
    Top = 8
  end
end
