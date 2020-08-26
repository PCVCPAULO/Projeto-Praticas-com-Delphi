unit MenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Vendedor1: TMenuItem;
    Vendas1: TMenuItem;
    Consulta1: TMenuItem;
    Vendedores1: TMenuItem;
    Comisses1: TMenuItem;
    Relatrio1: TMenuItem;
    EmitirFaturamento1: TMenuItem;
    EmitirFolhadePagamentodeComisses1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    procedure Vendedor1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Comissoes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses
    CDVendedores, CDVendas, CNComissoes;

procedure TfrmMenu.Comissoes1Click(Sender: TObject);
var
   formConsulta : TfrmConsultaComissoes;
begin
   formConsulta :=  TfrmConsultaComissoes.Create(Application);
   formConsulta.Show;
end;

procedure TfrmMenu.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmMenu.Vendas1Click(Sender: TObject);
var
   formCadastro : TfrmVendas;
begin
   formCadastro := TfrmVendas.Create(Application);
   formcadastro.Show;
end;

procedure TfrmMenu.Vendedor1Click(Sender: TObject);
var
   formCadastro : TfrmVendedores;
begin
   formCadastro := TfrmVendedores.Create(Application);
   formcadastro.Show;
end;

end.
