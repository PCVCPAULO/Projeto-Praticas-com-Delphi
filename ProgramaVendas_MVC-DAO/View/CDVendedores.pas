unit CDVendedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Classes, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Menus;

type
  TfrmVendedores = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtMatricula: TEdit;
    edtNome: TEdit;
    edtSalBruto: TEdit;
    edtPercentualComissao: TEdit;
    btnGravar: TButton;
    btnCancelar: TButton;
    dbgVendedores: TDBGrid;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtSalBrutoKeyPress(Sender: TObject; var Key: Char);
    procedure edtPercentualComissaoKeyPress(Sender: TObject; var Key: Char);
    procedure edtSalBrutoExit(Sender: TObject);
    procedure edtPercentualComissaoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtMatriculaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendedores: TfrmVendedores;

implementation

{$R *.dfm}

uses CLVendedor;

var
  oVendedor : TVendedor;


procedure TfrmVendedores.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmVendedores.edtMatriculaChange(Sender: TObject);
begin
  if Length(edtMatricula.Text) <> 6 then
  begin
    edtNome.Clear;
    edtSalBruto.Clear;
    edtPercentualComissao.Clear;
    OVendedor.Clear;
  end
  else
  begin
    if oVendedor.Busca(edtMatricula.Text) then
    begin
      edtNome.Text     := oVendedor.Nome;
      edtSalBruto.Text := FormatFloat('#,###.00',oVendedor.SalarioBruto);
      edtPercentualComissao.Text := FormatFloat('#,###.00',oVendedor.PercentualComissao);
    end;
  end;
end;

procedure TfrmVendedores.FormCreate(Sender: TObject);
begin
  oVendedor := TVendedor.Create;
end;

procedure TfrmVendedores.FormDestroy(Sender: TObject);
begin
  oVendedor.Free;
end;

procedure TfrmVendedores.btnGravarClick(Sender: TObject);
begin
  if (edtMatricula.Text <> '') and
     (edtNome.Text <> '') and
     (edtSalBruto.Text <> '') and
     (edtPercentualComissao.Text <> '') then
  begin
    oVendedor.Matricula    := edtMatricula.Text;
    oVendedor.Nome         := edtNome.Text;
    oVendedor.SalarioBruto := StrToFloat(edtSalBruto.Text);
    oVendedor.PercentualComissao := StrToFloat(edtPercentualComissao.Text);

    if oVendedor.Grava then
    begin
      edtMatricula.Clear;
      edtNome.Clear;
      edtSalBruto.Clear;
      edtPercentualComissao.Clear;
      edtMatricula.SetFocus;
      oVendedor.Clear;
    end
    else
      edtNome.SetFocus;
  end
  else
     ShowMessage('Campos inválidos!');
end;

procedure TfrmVendedores.edtSalBrutoKeyPress(Sender: TObject;
  var Key: Char);
begin
//  Key := Ret_Numero( Key, edtSalBruto.Text );
//   if not (IsNumeric(Key) or (Key = TAB) or (Key = ',') or (Key = BACKSPACE)) then
  if not (Key in ['0'..'9',#8, #13,#26, #32]) then
      Key := #0;
end;

procedure TfrmVendedores.edtPercentualComissaoKeyPress(Sender: TObject;
  var Key: Char);
begin
//  Key := Ret_Numero( Key, edtPercentualComissao.Text );
//   if not (IsNumeric(Key) or (Key = TAB) or (Key = ',') or (Key = BACKSPACE)) then
  if not (Key in ['0'..'9',#8, #13,#26, #32]) then
      Key := #0;
end;

procedure TfrmVendedores.edtSalBrutoExit(Sender: TObject);
begin
  if edtSalBruto.Text <> '' then
  begin
    try
       StrToFloat(edtSalBruto.Text);
    except
       begin
         ShowMessage('Valor Inválido!');
         edtSalBruto.SetFocus;
       end;
    end;
  end;
end;

procedure TfrmVendedores.edtPercentualComissaoExit(Sender: TObject);
begin
  if edtPercentualComissao.Text <> '' then
  begin
    try
       StrToFloat(edtPercentualComissao.Text);
    except
       begin
         ShowMessage('Valor Inválido!');
         edtPercentualComissao.SetFocus;
       end;
    end;
  end;
end;


procedure TfrmVendedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;


end.
