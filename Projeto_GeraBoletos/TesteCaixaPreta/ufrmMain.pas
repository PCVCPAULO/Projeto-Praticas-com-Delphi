unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  GeraBoleto.Container,
  GeraBoleto.Boleto,
  GeraBoleto.Impressao,
  GeraBoleto.Impressao.FastReport,
  GeraBoleto.Impressao.Fortes, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edt_BenNome: TEdit;
    edt_BenCnpj: TEdit;
    edt_BenLogradouro: TEdit;
    edt_BenNumero: TEdit;
    edt_BenBairro: TEdit;
    edt_BenCep: TEdit;
    edt_BenCidade: TEdit;
    edt_BenUF: TEdit;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edt_NumBanco: TEdit;
    edt_Agencia: TEdit;
    edt_Conta: TEdit;
    edt_DigAgencia: TEdit;
    edt_Carteira: TEdit;
    edt_Sequencia: TEdit;
    edt_DigConta: TEdit;
    edt_DigNumero: TEdit;
    edt_Convenio: TEdit;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    edt_Data: TEdit;
    edt_Documento: TEdit;
    edt_Aceite: TEdit;
    edt_Valor: TEdit;
    edt_DataProc: TEdit;
    edt_Vencimento: TEdit;
    GroupBox4: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    edt_PagNome: TEdit;
    edt_PagCnpj: TEdit;
    edt_PagLogradouro: TEdit;
    edt_PagNumero: TEdit;
    edt_PagBairro: TEdit;
    edt_PagCep: TEdit;
    edt_PagCidade: TEdit;
    edt_PagUF: TEdit;
    mem_Obs: TMemo;
    btn_Adiciona: TButton;
    btn_Exclui: TButton;
    btn_ImpNoMemo: TButton;
    btn_Imprime: TButton;
    rgModuloImpressao: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure btn_AdicionaClick(Sender: TObject);
    procedure btn_ImpNoMemoClick(Sender: TObject);
    procedure btn_ImprimeClick(Sender: TObject);
  private
    { Private declarations }
    FContainer: IBoletoContainer;
    procedure PreencheBoleto(ABoleto: IBoleto);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.btn_AdicionaClick(Sender: TObject);
var
  Boleto: IBoleto;
begin
  Boleto := FContainer.Add;
  PreencheBoleto(Boleto);
  Boleto.Gerar;
  ShowMessage('Boleto foi adicionado!');
end;

procedure TfrmMain.btn_ImpNoMemoClick(Sender: TObject);
var
  Boleto: IBoleto;
begin
  if FContainer.Boletos.Count > 0 then // verfica se tem boleto na lista
  begin
    Boleto := FContainer.Boletos[0]; // pegamos o primeiro boleto da lista
    mem_Obs.Lines.Clear;
    mem_Obs.Lines.Add('Nome do Banco: ' + Boleto.GetConta.Banco.Nome);
    mem_Obs.Lines.Add('Nosso N�mero: ' +  Boleto.GetTitulo.NossoNum);
    mem_Obs.Lines.Add('D�gito Nosso N�mero: ' + Boleto.GetTitulo.DigitoNossoNum);
    mem_Obs.Lines.Add('C�digo de Barras: ' + Boleto.GetCodigoBarras);
    mem_Obs.Lines.Add('Linha Digit�vel: ' +  Boleto.GetLinhaDigitavel);
  end;
end;

procedure TfrmMain.btn_ImprimeClick(Sender: TObject);
var
   ModuloImp: IImpressaoBoleto;
   Arquivo: string;
begin
   Arquivo := '..\..\Report\Boleto.fr3';
   if FContainer.Boletos.Count > 0 then  // verifica se tem boleto na lista
   begin
      case rgModuloImpressao.ItemIndex of
        0: ModuloImp := TImpressaoBoletoFast.Create(Arquivo);
        1: ModuloImp := TImpressaoBoletoFortes.Create;
      end;
     FContainer.SetModuloImpressao(ModuloImp);
     FContainer.Imprimir;
   end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FContainer := TBoletoContainer.Create;
  edt_Valor.Text := FormatCurr('###,##0.00',StrToCurr(edt_Valor.Text));
end;

procedure TfrmMain.PreencheBoleto(ABoleto: IBoleto);
begin
  with ABoleto.GetBeneficiario do
  begin
    CnpjCpf             := edt_BenCnpj.Text;
    Nome                := edt_BenNome.Text;
    Endereco.Logradouro := edt_BenLogradouro.Text;
    Endereco.Numero     := edt_BenNumero.Text;
    Endereco.Bairro     := edt_BenBairro.Text;
    Endereco.Cep        := edt_BenCep.Text;
    Endereco.Cidade     := edt_BenCidade.Text;
    Endereco.Uf         := edt_BenUF.Text;
  end;
  with ABoleto.GetConta do
  begin
    Banco.Numero       := edt_NumBanco.Text;
    Banco.DigitoNumero := edt_DigNumero.Text;
    LocalPagto         := 'Pagto em qualquer ag�ncia at� o vencimento!';
    Agencia            := edt_Agencia.Text;
    DigitoAgencia      := edt_DigAgencia.Text;
    Conta              := edt_Conta.Text;
    DigitoConta        := edt_DigConta.Text;
    Carteira           := edt_Carteira.Text;
    Convenio           := edt_Convenio.Text;
    SeqNossoNumero     := StrToInt(edt_Sequencia.Text);
  end;
   with ABoleto.GetTitulo do
  begin
    Emissao    := StrToDate(edt_Data.Text);
    Vencto     := StrToDate(edt_Vencimento.Text);
    Documento  := edt_Documento.Text;
    Aceite     := edt_Aceite.Text;
    DataProc   := StrToDate(edt_DataProc.Text);
    EspecMoeda := 'R$';
    EspecDoc   := 'DM';
    Valor      := StrToCurr(edt_Valor.Text);
    Instrucoes.Add('- Sr. Caixa, cobrar Multa de 2% e Juros de 0,03% ao dia ap�s o vencimento.');
     Instrucoes.Add('Outras instru��es...');
  end;
  with ABoleto.GetPagador do
  begin
    CnpjCpf        := edt_PagCnpj.Text;
    Nome           := edt_PagNome.Text;
    Endereco.Logradouro := edt_PagLogradouro.Text;
    Endereco.Numero     := edt_PagNumero.Text;
    Endereco.Bairro     := edt_PagBairro.Text;
    Endereco.Cep        := edt_PagCep.Text;
    Endereco.Cidade     := edt_PagCidade.Text;
    Endereco.Uf         := edt_PagUF.Text;
  end;
end;

end.
