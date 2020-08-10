inherited frm_CadastroUsuario: Tfrm_CadastroUsuario
  BorderStyle = bsNone
  Caption = 'Cadastro de  Usu'#225'rios'
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
    ExplicitTop = 811
    ExplicitWidth = 1111
  end
  inherited ToolBar1: TToolBar
    Top = 768
    Width = 1111
    ExplicitTop = 768
    ExplicitWidth = 1111
  end
  inherited PageControl1: TPageControl
    Width = 926
    Height = 698
    ExplicitWidth = 926
    ExplicitHeight = 698
    inherited tbs_Cadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 918
      ExplicitHeight = 670
      object lbl_Login: TLabel
        Left = 24
        Top = 110
        Width = 39
        Height = 21
        Caption = 'Login'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMedGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbl_Senha: TLabel
        Left = 24
        Top = 180
        Width = 43
        Height = 21
        Caption = 'Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMedGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbl_Nome: TLabel
        Left = 24
        Top = 48
        Width = 43
        Height = 21
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMedGray
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edt_Nome: TEdit
        Left = 24
        Top = 75
        Width = 369
        Height = 29
        BevelEdges = [beBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 0
      end
      object edt_Login: TEdit
        Left = 24
        Top = 137
        Width = 185
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 20
        ParentFont = False
        TabOrder = 1
      end
      object edt_Senha: TEdit
        Left = 24
        Top = 207
        Width = 185
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 20
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 2
      end
    end
    inherited tbs_Pesquisar: TTabSheet
      ExplicitWidth = 918
      ExplicitHeight = 670
      inherited dbg_Dados: TDBGrid
        Width = 918
        Height = 580
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 424
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGIN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SENHA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DT_CADASTRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Visible = True
          end>
      end
      inherited Panel2: TPanel
        Width = 918
        ExplicitWidth = 918
      end
    end
  end
  inherited Panel1: TPanel
    Width = 1111
    ExplicitWidth = 1111
  end
  inherited Panel3: TPanel
    Left = 926
    Height = 698
    ExplicitLeft = 926
    ExplicitHeight = 698
  end
  inherited Panel4: TPanel
    Width = 1111
    ExplicitWidth = 1111
  end
  inherited ds_Tabela: TDataSource
    DataSet = dm_Dados.cds_Usuarios
  end
  inherited acl_Cadastro: TActionList
    inherited acl_Imprimir: TAction
      OnExecute = acl_ImprimirExecute
    end
  end
end
