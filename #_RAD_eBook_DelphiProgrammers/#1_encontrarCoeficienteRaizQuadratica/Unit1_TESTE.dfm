object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 40
    Width = 188
    Height = 13
    Caption = 'Entre com o valor para o calculo da raiz'
  end
  object lblX1: TLabel
    Left = 72
    Top = 144
    Width = 22
    Height = 13
    Caption = 'lblX1'
  end
  object lblX2: TLabel
    Left = 72
    Top = 184
    Width = 22
    Height = 13
    Caption = 'lblX2'
  end
  object lblNo: TLabel
    Left = 72
    Top = 224
    Width = 154
    Height = 13
    Caption = 'Nenhuma Raiz Real encontrada.'
  end
  object Edit1: TEdit
    Left = 72
    Top = 72
    Width = 57
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 160
    Top = 72
    Width = 57
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 240
    Top = 72
    Width = 57
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 336
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
end
