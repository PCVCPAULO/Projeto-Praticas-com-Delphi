object frmVendas: TfrmVendas
  Left = 0
  Top = 0
  Caption = 'Cadastro de Vendas'
  ClientHeight = 377
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 41
    Height = 13
    Caption = 'N'#250'mero:'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 27
    Height = 13
    Caption = 'Data:'
  end
  object Label3: TLabel
    Left = 24
    Top = 104
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Label4: TLabel
    Left = 24
    Top = 144
    Width = 50
    Height = 13
    Caption = 'Vendedor:'
  end
  object edtNumero: TEdit
    Left = 104
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 0
    OnExit = edtNumeroExit
    OnKeyPress = edtNumeroKeyPress
  end
  object edtValor: TEdit
    Left = 104
    Top = 101
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = edtValorKeyPress
  end
  object edtData: TDateTimePicker
    Left = 104
    Top = 59
    Width = 121
    Height = 21
    Date = 43928.000000000000000000
    Time = 0.546804004632576800
    TabOrder = 2
  end
  object cmbVendedor: TComboBox
    Left = 104
    Top = 141
    Width = 313
    Height = 21
    TabOrder = 3
  end
  object btnGravar: TButton
    Left = 88
    Top = 176
    Width = 137
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 4
    OnClick = btnGravarClick
  end
  object btnCancelar: TButton
    Left = 278
    Top = 176
    Width = 139
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = btnCancelarClick
  end
  object DBGrid1: TDBGrid
    Left = 88
    Top = 232
    Width = 369
    Height = 120
    DataSource = dtmVendas.dtsVenda
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IDVENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDVENDEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end>
  end
end
