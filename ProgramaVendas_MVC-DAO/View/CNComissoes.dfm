object frmConsultaComissoes: TfrmConsultaComissoes
  Left = 0
  Top = 0
  Caption = 'Consulta Comiss'#245'es'
  ClientHeight = 289
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 50
    Height = 13
    Caption = 'Vendedor:'
  end
  object Label2: TLabel
    Left = 80
    Top = 58
    Width = 280
    Height = 16
    Caption = 'Data Inicial e Final de refer'#234'ncia do Faturamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 91
    Top = 187
    Width = 65
    Height = 13
    Caption = 'Sal'#225'rio Bruto:'
  end
  object Label4: TLabel
    Left = 91
    Top = 219
    Width = 72
    Height = 13
    Caption = 'Sal'#225'rio L'#237'quido:'
  end
  object Label5: TLabel
    Left = 91
    Top = 251
    Width = 49
    Height = 13
    Caption = 'Comiss'#227'o:'
  end
  object edtSalBruto: TEdit
    Left = 192
    Top = 184
    Width = 247
    Height = 21
    TabOrder = 0
  end
  object edtSalLiquido: TEdit
    Left = 192
    Top = 216
    Width = 247
    Height = 21
    TabOrder = 1
  end
  object edtComissao: TEdit
    Left = 192
    Top = 243
    Width = 247
    Height = 21
    TabOrder = 2
  end
  object edtData1: TDateTimePicker
    Left = 80
    Top = 80
    Width = 121
    Height = 21
    Date = 43928.000000000000000000
    Time = 0.565997256941045600
    TabOrder = 3
  end
  object edtData2: TDateTimePicker
    Left = 248
    Top = 80
    Width = 112
    Height = 21
    Date = 43928.000000000000000000
    Time = 0.566013530093187000
    TabOrder = 4
  end
  object btnVerificar: TButton
    Left = 144
    Top = 128
    Width = 153
    Height = 33
    Caption = 'Verificar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnVerificarClick
  end
  object cmbVendedor: TComboBox
    Left = 80
    Top = 21
    Width = 321
    Height = 21
    TabOrder = 6
  end
end
