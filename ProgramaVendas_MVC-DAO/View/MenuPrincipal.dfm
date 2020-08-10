object frmMenu: TfrmMenu
  Left = 0
  Top = 0
  Caption = 'frmMenu'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 272
    Top = 8
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Vendedor1: TMenuItem
        Caption = 'Vendedor'
        OnClick = Vendedor1Click
      end
      object Vendas1: TMenuItem
        Caption = 'Vendas'
        OnClick = Vendas1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = '&Sair'
        OnClick = Sair1Click
      end
    end
    object Consulta1: TMenuItem
      Caption = 'Consulta'
      object Vendedores1: TMenuItem
        Caption = 'Vendedores'
      end
      object Comisses1: TMenuItem
        Caption = 'Comiss'#245'es'
        OnClick = Comissoes1Click
      end
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      object EmitirFaturamento1: TMenuItem
        Caption = 'Emitir Faturamento'
      end
      object EmitirFolhadePagamentodeComisses1: TMenuItem
        Caption = 'Emitir Folha de Pagamento de Comiss'#245'es'
      end
    end
  end
end
