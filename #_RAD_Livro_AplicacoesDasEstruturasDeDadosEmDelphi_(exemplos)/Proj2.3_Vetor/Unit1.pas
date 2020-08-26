// Aplica��o com Vetor N�o Ordenado e com Repeti��es
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
  // vetor com identificador VET, com dez posi��es para armazenar n�meros
  // inteiros
  vet:array[1..10] of integer;

  // vari�vel com identificar POSLIVRE que mostra se o vetor j� foi carregado
  // ou n�o
  posLivre: integer;


implementation

{$R *.dfm}

procedure TForm1.btn1CarregarClick(Sender: TObject);
var
   quantidade: integer;
   num, texto: String;
   numero: Integer;
begin
  // este procedimento vai carregar o vetor com n�meros digitados pelo
  // usu�rio;
  // a vari�vel QUANTIDADE exige a digita��o de 10 n�meros

   quantidade := 1;
   while quantidade <= 10 do
   begin
      texto := 'Digite o ' + InttoStr(quantidade)+ '� n�mero';
      num   := inputBox(texto, 'Ordena��o por SELE��O', '');
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
   // a vari�vel POSLIVRE marca que o vetor foi carregado
   posLivre := 1;
end;

procedure TForm1.btn2OrdenarClick(Sender: TObject);
var
  i, j, aux, eleito, posi, menor: Integer;
begin
  // este procedimento vai exectuar o algoritmo de ordena��coa por SELE��O;
  // a vari�vel POSLIVRE mostra se o vetor est� vazio ou n�o
  // POSLIVRE = 0 - vetor vazio
  // POSLIVRE = 1 - vetor com dados

   if posLivre = 0 then
      ShowMessage('O vetor est� vazio, � necess�rio digitar os n�meros no bot�o Carregar!')
   else
   begin
    // O la�o abaixo vai repetir o n�mero de vezes
    // igual ao n�mero de elementos do vetor - 1;
    // neste caso, tem-se um vetor com 10 elemetnos,
    // logo, o la�o ser� com 9 repeti��es
    // a vari�vel I guarda a posi��o do n�mero eleito

    for i := 1 to 9 do
       begin
          // elei��o do n�mero que ser� comparado

          eleito := vet[i];

          // a vari�vel POSI guarda a posi��o do menor n�mero
          // � direita do n�mero eleito;
          // a vair�vel MENOR guarda o menor n�mero entre
          // os n�m�ros que est�o � direita do n�mero eleito

          posi := i + 1;
          menor := vet[i + 1];

          // o la�o abaixo ser� executado da posi��o posterior
          // a posi��o do n�mero eleito;
          // logo, i + 1, at� a �ltima posi��o, neste exempl
          // de vetor com 10 posi��es, at� a posi��o 10

          for j := i + 1 to 10 do
          begin
             if vet[j] < menor then
             begin
                menor := vet [j];
                posi := j;
             end;
          end;
          if vet[i] > menor then
          begin
             // as linhas abaixo mostram
             // a troca de posi��es dos n�meros;
             // a vari�vel AUX auxilia na troca
             aux := vet[i];
             vet[i] := menor;
             vet[posi] := aux;
          end;

       end;

       // as linhas abaixo ir�o atualizar os n�mero da tela com o
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
   // a vari�vel POSLIVRE mostra se o vetor est� vazio ou n�o
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
   // fechar o formul�rio
   Close;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  // mostrando no edit denominado posLivre a posi��o 1,
  //pois o vetor est� vazio
//  posLivre.Text := '1';

  // colocando o valor 1 na vari�vel PL que representa
  // a posi��o livre quando o vetor est� vazio
//  pl := 1;
end;

end.
