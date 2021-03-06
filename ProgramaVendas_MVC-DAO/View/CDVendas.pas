unit CDVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmVendas = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtNumero: TEdit;
    edtValor: TEdit;
    edtData: TDateTimePicker;
    cmbVendedor: TComboBox;
    btnGravar: TButton;
    btnCancelar: TButton;
    DBGrid1: TDBGrid;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtNumeroExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation

{$R *.dfm}

uses CLVendas, CLVendedor, clFuncoes, DMVendas;

var oVenda : TVenda;

procedure TfrmVendas.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmVendas.edtNumeroExit(Sender: TObject);
begin
  if edtNumero.Text = '' then
  begin
      edtData.Date := Date;
      edtValor.Clear;
      cmbVendedor.Text := '';
  end
  else
  begin
     if oVenda.Busca(StrToInt(edtNumero.Text)) then
     begin
        edtData.Date     := oVenda.DataVenda;
        edtValor.Text    := FloatToStr(oVenda.Valor);
        cmbVendedor.Text := oVenda.Vendedor.Nome;
     end;
  end;
end;

procedure TfrmVendas.FormCreate(Sender: TObject);
var
  lstVendedores : TList;
  oVendedor : TVendedor;
  iAux : integer;
begin
  oVenda := TVenda.Create;
  lstVendedores := TVendedor.obterListaVendedoresAtivos;

  for iAux := 0 to lstVendedores.Count -1 do
  begin
    oVendedor := lstVendedores[iAux];
    cmbVendedor.AddItem(oVendedor.Nome, oVendedor);
  end;
end;

procedure TfrmVendas.FormDestroy(Sender: TObject);
begin
  oVenda.Free;
end;

procedure TfrmVendas.btnGravarClick(Sender: TObject);
begin
  if (edtNumero.Text <> '') and
     (edtData.Date <> 0) and
     (edtValor.Text <> '') and
     (cmbVendedor.Text <> '') then
  begin
    oVenda.Numero    := StrToInt(edtNumero.Text);
    oVenda.DataVenda := edtData.Date;
    oVenda.Valor     := StrToFloat(edtValor.Text);
  oVenda.Vendedor := (cmbVendedor.Items.Objects[cmbVendedor.ItemIndex] as TVendedor);

    if oVenda.Grava then
    begin
      edtNumero.Clear;
      edtData.Date := Date;
      edtValor.Clear;
      cmbVendedor.Text := '';
      edtNumero.SetFocus;
      oVenda.Clear;
    end else
      edtData.SetFocus;
  end
  else
  begin
    ShowMessage('Campos Inválidos!');
  end;
end;

procedure TfrmVendas.edtValorKeyPress(Sender: TObject; var Key: Char);
begin
//  Key := Ret_Numero( Key, edtValor.Text );
//   if not (IsNumeric(Key) or (Key = TAB) or (Key = ',') or (Key = BACKSPACE)) then

  if not (Key in ['0'..'9',#8, #13,#26, #32]) then
      Key := #0;
end;

procedure TfrmVendas.edtNumeroKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9',#8, #13,#26, #32]) then
      Key := #0;
end;

procedure TfrmVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

end.
