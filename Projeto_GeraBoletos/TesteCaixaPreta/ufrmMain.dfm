object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Gera'#231#227'o de Boletos: Teste'
  ClientHeight = 651
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 732
    Height = 113
    Align = alTop
    Caption = 'Benefici'#225'rio'
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 15
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 255
      Top = 15
      Width = 48
      Height = 13
      Caption = 'CNPJ/CPF'
    end
    object Label3: TLabel
      Left = 9
      Top = 59
      Width = 57
      Height = 13
      Caption = 'Logradoudo'
    end
    object Label4: TLabel
      Left = 255
      Top = 59
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label5: TLabel
      Left = 309
      Top = 59
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object Label6: TLabel
      Left = 447
      Top = 59
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object Label7: TLabel
      Left = 536
      Top = 59
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label8: TLabel
      Left = 631
      Top = 59
      Width = 13
      Height = 13
      Caption = 'UF'
    end
    object edt_BenNome: TEdit
      Left = 8
      Top = 32
      Width = 231
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'Teste Benefici'#225'rio'
    end
    object edt_BenCnpj: TEdit
      Left = 255
      Top = 32
      Width = 146
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '99.999.999/9999-99'
    end
    object edt_BenLogradouro: TEdit
      Left = 9
      Top = 78
      Width = 230
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = 'Rua Ayn Rand'
    end
    object edt_BenNumero: TEdit
      Left = 255
      Top = 78
      Width = 48
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = '99'
    end
    object edt_BenBairro: TEdit
      Left = 309
      Top = 78
      Width = 132
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Text = 'Centro'
    end
    object edt_BenCep: TEdit
      Left = 447
      Top = 78
      Width = 82
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Text = '99999-999'
    end
    object edt_BenCidade: TEdit
      Left = 536
      Top = 78
      Width = 90
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Text = 'Balsas'
    end
    object edt_BenUF: TEdit
      Left = 631
      Top = 78
      Width = 34
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Text = 'MA'
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 113
    Width = 732
    Height = 72
    Align = alTop
    Caption = 'Conta'
    TabOrder = 1
    object Label9: TLabel
      Left = 9
      Top = 15
      Width = 84
      Height = 13
      Caption = 'N'#250'mero do Banco'
    end
    object Label10: TLabel
      Left = 111
      Top = 15
      Width = 38
      Height = 13
      Caption = 'Ag'#234'ncia'
    end
    object Label11: TLabel
      Left = 201
      Top = 13
      Width = 29
      Height = 13
      Caption = 'Conta'
    end
    object Label12: TLabel
      Left = 309
      Top = 15
      Width = 39
      Height = 13
      Caption = 'Carteira'
    end
    object Label13: TLabel
      Left = 367
      Top = 15
      Width = 45
      Height = 13
      Caption = 'Conv'#234'nio'
    end
    object Label14: TLabel
      Left = 465
      Top = 15
      Width = 49
      Height = 13
      Caption = 'Sequ'#234'ncia'
    end
    object edt_NumBanco: TEdit
      Left = 8
      Top = 32
      Width = 41
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '001'
    end
    object edt_Agencia: TEdit
      Left = 111
      Top = 32
      Width = 50
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = '9999'
    end
    object edt_Conta: TEdit
      Left = 201
      Top = 32
      Width = 64
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Text = '99999'
    end
    object edt_DigAgencia: TEdit
      Left = 164
      Top = 32
      Width = 26
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = '1'
    end
    object edt_Carteira: TEdit
      Left = 309
      Top = 34
      Width = 39
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Text = '17'
    end
    object edt_Sequencia: TEdit
      Left = 464
      Top = 34
      Width = 48
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Text = '1'
    end
    object edt_DigConta: TEdit
      Left = 268
      Top = 32
      Width = 24
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Text = '9'
    end
    object edt_DigNumero: TEdit
      Left = 55
      Top = 32
      Width = 26
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '9'
    end
    object edt_Convenio: TEdit
      Left = 367
      Top = 34
      Width = 84
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      Text = '123456'
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 185
    Width = 732
    Height = 72
    Align = alTop
    Caption = 'T'#237'tulo'
    TabOrder = 2
    object Label15: TLabel
      Left = 9
      Top = 15
      Width = 38
      Height = 13
      Caption = 'Emiss'#227'o'
    end
    object Label16: TLabel
      Left = 111
      Top = 15
      Width = 55
      Height = 13
      Caption = 'Vencimento'
    end
    object Label17: TLabel
      Left = 210
      Top = 13
      Width = 54
      Height = 13
      Caption = 'Documento'
    end
    object Label18: TLabel
      Left = 318
      Top = 13
      Width = 30
      Height = 13
      Caption = 'Aceite'
    end
    object Label19: TLabel
      Left = 372
      Top = 15
      Width = 48
      Height = 13
      Caption = 'Data/Proc'
    end
    object Label20: TLabel
      Left = 478
      Top = 13
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object edt_Data: TEdit
      Left = 8
      Top = 32
      Width = 90
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '15/04/2019'
    end
    object edt_Documento: TEdit
      Left = 210
      Top = 32
      Width = 99
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = 'Dup0230/3'
    end
    object edt_Aceite: TEdit
      Left = 318
      Top = 32
      Width = 39
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = 'N'
    end
    object edt_Valor: TEdit
      Left = 478
      Top = 32
      Width = 91
      Height = 24
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Text = '300'
    end
    object edt_DataProc: TEdit
      Left = 367
      Top = 32
      Width = 99
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Text = '15/04/2019'
    end
    object edt_Vencimento: TEdit
      Left = 108
      Top = 32
      Width = 90
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '15/06/2019'
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 257
    Width = 732
    Height = 113
    Align = alTop
    Caption = 'Pagador'
    TabOrder = 3
    object Label21: TLabel
      Left = 9
      Top = 15
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label22: TLabel
      Left = 255
      Top = 15
      Width = 48
      Height = 13
      Caption = 'CNPJ/CPF'
    end
    object Label23: TLabel
      Left = 9
      Top = 59
      Width = 57
      Height = 13
      Caption = 'Logradoudo'
    end
    object Label24: TLabel
      Left = 255
      Top = 59
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label25: TLabel
      Left = 309
      Top = 59
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object Label26: TLabel
      Left = 447
      Top = 59
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object Label27: TLabel
      Left = 536
      Top = 59
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label28: TLabel
      Left = 631
      Top = 59
      Width = 13
      Height = 13
      Caption = 'UF'
    end
    object edt_PagNome: TEdit
      Left = 8
      Top = 32
      Width = 231
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'Teste Pagador'
    end
    object edt_PagCnpj: TEdit
      Left = 255
      Top = 32
      Width = 146
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '99.999.999/9999-99'
    end
    object edt_PagLogradouro: TEdit
      Left = 9
      Top = 78
      Width = 230
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = 'Rua Ludwig von Mises'
    end
    object edt_PagNumero: TEdit
      Left = 255
      Top = 78
      Width = 48
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = '99'
    end
    object edt_PagBairro: TEdit
      Left = 309
      Top = 78
      Width = 132
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Text = 'Centro'
    end
    object edt_PagCep: TEdit
      Left = 447
      Top = 78
      Width = 82
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Text = '88888-888'
    end
    object edt_PagCidade: TEdit
      Left = 536
      Top = 78
      Width = 90
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Text = 'S'#227'o Paulo'
    end
    object edt_PagUF: TEdit
      Left = 631
      Top = 78
      Width = 34
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Text = 'SP'
    end
  end
  object mem_Obs: TMemo
    Left = 0
    Top = 370
    Width = 732
    Height = 219
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'mem_Obs')
    ParentFont = False
    TabOrder = 4
  end
  object btn_Adiciona: TButton
    Left = 1
    Top = 600
    Width = 114
    Height = 46
    Caption = 'Adiciona Boleto'
    TabOrder = 5
    OnClick = btn_AdicionaClick
  end
  object btn_Exclui: TButton
    Left = 121
    Top = 600
    Width = 122
    Height = 45
    Caption = 'Exclui Boleto'
    TabOrder = 6
  end
  object btn_ImpNoMemo: TButton
    Left = 249
    Top = 600
    Width = 114
    Height = 46
    Caption = 'Ver no Memo'
    TabOrder = 7
    OnClick = btn_ImpNoMemoClick
  end
  object btn_Imprime: TButton
    Left = 369
    Top = 600
    Width = 113
    Height = 46
    Caption = 'Imprime'
    TabOrder = 8
    OnClick = btn_ImprimeClick
  end
  object rgModuloImpressao: TRadioGroup
    Left = 496
    Top = 595
    Width = 185
    Height = 50
    Caption = 'M'#243'dulo de Impress'#227'o'
    Items.Strings = (
      'M'#243'dulo Fast Report'
      'M'#243'dulo Fortes Report')
    TabOrder = 9
  end
end
