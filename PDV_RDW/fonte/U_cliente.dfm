object Frm_Cliente: TFrm_Cliente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cliente'
  ClientHeight = 462
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 168
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 232
    Width = 431
    Height = 201
    DataSource = dsCliente
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dsCliente: TDataSource
    DataSet = DM.FDCliente
    Left = 80
    Top = 16
  end
end
