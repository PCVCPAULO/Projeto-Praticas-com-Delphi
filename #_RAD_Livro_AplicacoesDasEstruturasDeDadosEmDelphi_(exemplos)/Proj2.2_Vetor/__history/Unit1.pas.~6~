// Aplicação com Vetor Não Ordenado e com Repetições
unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btn1Carregar: TButton;
    btn2Ordenar: TButton;
    btn3Limpar: TButton;
    btn4Fechar: TButton;
    pos1: TEdit;
    pos2: TEdit;
    pos3: TEdit;
    pos4: TEdit;
    pos5: TEdit;
    pos6: TEdit;
    pos7: TEdit;
    pos8: TEdit;
    pos9: TEdit;
    pos10: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btn1CarregarClick(Sender: TObject);
    procedure btn2OrdenarClick(Sender: TObject);
    procedure btn3LimparClick(Sender: TObject);
    procedure btn4FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  // vetor com identificador VET, com dez posições para armazenar números
  // inteiros
  vet:array[1..10] of integer;

  // variável com identificar POSLIVRE que mostra se o vetor já foi carregado
  // ou não
  posLivre: integer;


implementation

{$R *.dfm}

procedure TForm1.btn1CarregarClick(Sender: TObject);
var
   quantidade: integer;
   num, texto: String;
   numero: Integer;
begin
  // este procedimento vai carregar o vetor com números digitados pelo
  // usuário;
  // a variável QUANTIDADE exige a digitação de 10 números
   quantidade := 1;
   while quantidade <= 10 do
   begin
      texto := 'Digite o ' + InttoStr(quantidade)+ 'º número';
      num   := inputBox(texto, 'Ordenação por Troca', '');
      if num <> '' then
      begin
         numero := StrToInt(num);
         if quantidade = 1 then
         begin
            pos1.Text := '';
            pos1.Text := num;
            vet[quantidade] := numero;
         end;
         if quantidade = 2 then
         begin
            pos2.Text := '';
            pos2.Text := num;
            vet[quantidade] := numero;
         end;
         if quantidade = 3 then
         begin
            pos3.Text := '';
            pos3.Text := num;
            vet[quantidade] := numero;
         end;
         if quantidade = 4 then
         begin
            pos4.Text := '';
            pos4.Text := num;
            vet[quantidade] := numero;
         end;
         if quantidade = 5 then
         begin
            pos5.Text := '';
            pos5.Text := num;
            vet[quantidade] := numero;
         end;
         if quantidade = 6 then
         begin
            pos6.Text := '';
            pos6.Text := num;
            vet[quantidade] := numero;
         end;
         if quantidade = 7 then
         begin
            pos7.Text := '';
            pos7.Text := num;
            vet[quantidade] := numero;
         end;
         if quantidade = 8 then
         begin
            pos8.Text := '';
            pos8.Text := num;
            vet[quantidade] := numero;
         end;
         if quantidade = 9 then
         begin
            pos9.Text := '';
            pos9.Text := num;
            vet[quantidade] := numero;
         end;
         if quantidade = 10 then
         begin
            pos10.Text := '';
            pos10.Text := num;
            vet[quantidade] := numero;
         end;
         quantidade := quantidade + 1;
      end;
   end;
   // a variável POSLIVRE marca que o vetor foi carregado
   posLivre := 1;
end;

procedure TForm1.btn2OrdenarClick(Sender: TObject);
var
  i, j, aux: Integer;
begin
  // este procedimento vai exectuar o algoritmo de ordenaçãcoa por troca;
  // a variável POSLIVRE mostra se o vetor está vazio ou não
  // POSLIVRE = 0 - vetor vazio
  // POSLIVRE = 1 - vetor com dados

   if posLivre = 0 then
      ShowMessage('O vetor está vazio, é necessário digitar os números no botão Carregar!')
   else
   begin
    // o laço abaixo deve repetir uma quantidade de vezes
    // igual ao tamanho do vetor menos 1
    // neste caso, tem-se um vetor com 10 posições, logo, 9 repetições

    for i := 1 to 9 do
       begin
          // o laço abaixo vai comparar uma posição com a próxima.
          // Como a comparação é sempre com a próxima, o laço vai até 9,
          // pois, se fose até 10, teríamos uma comparação entre
          // a posição 10 e 11 que não existe

          for j := 1 to 9 do
             begin
                if vet[j] > vet[j + 1] then
                begin
                   // a troca está sendo realizada com a ajuda da variável AUX
                   aux := vet[j];
                   vet[j] := vet[j + 1];
                   vet[j + 1] := aux;
                end;
             end;
       end;
       // as linhas abaixo irão atualizar os número da tela com o
       // vetor ordenado

      for i := 1 to 10 do
      begin
         if i = 1
         then pos1.Text := IntToStr(vet[i]);
         if i = 2
         then pos2.Text := IntToStr(vet[i]);
         if i = 3
         then pos3.Text := IntToStr(vet[i]);
         if i = 4
         then pos4.Text := IntToStr(vet[i]);
         if i = 5
         then pos5.Text := IntToStr(vet[i]);
         if i = 6
         then pos6.Text := IntToStr(vet[i]);
         if i = 7
         then pos7.Text := IntToStr(vet[i]);
         if i = 8
         then pos8.Text := IntToStr(vet[i]);
         if i = 9
         then pos9.Text := IntToStr(vet[i]);
          if i = 10
         then pos10.Text := IntToStr(vet[i]);
      end;
   end;
end;


procedure TForm1.btn3LimparClick(Sender: TObject);
begin
   // a variável POSLIVRE mostra se o vetor está vazio ou não
   // POSLIVRE = 0 - vetor vazio
   // POSLIVRE = 1 - vetor com dados

   posLivre := 0;
   pos1.Text := '';
   pos2.Text := '';
   pos3.Text := '';
   pos4.Text := '';
   pos5.Text := '';
   pos6.Text := '';
   pos7.Text := '';
   pos8.Text := '';
   pos9.Text := '';
   pos10.Text := '';
end;

procedure TForm1.btn4FecharClick(Sender: TObject);
begin
   // fechar o formulário
   Close;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  // mostrando no edit denominado posLivre a posição 1,
  //pois o vetor está vazio
//  posLivre.Text := '1';

  // colocando o valor 1 na variável PL que representa
  // a posição livre quando o vetor está vazio
//  pl := 1;
end;

end.
