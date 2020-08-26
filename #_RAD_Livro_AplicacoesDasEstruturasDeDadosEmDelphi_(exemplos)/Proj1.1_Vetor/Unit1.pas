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
    btn1Incluir: TButton;
    btn2Excluir: TButton;
    btn3Limpar: TButton;
    btn4Fechar: TButton;
    Label1: TLabel;
    posLivre: TEdit;
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
    procedure btn1IncluirClick(Sender: TObject);
    procedure btn2ExcluirClick(Sender: TObject);
    procedure btn3LimparClick(Sender: TObject);
    procedure btn4FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  // vetor com identifiar VET, dez posi��es e armazenando n�meros
  // do tipo inteiro
  vet:array[1..10] of integer;

  // vari�vel com identificar NUMERO que receber� os n�meros a serem
  // inseridos
  numero: integer;

  // vari�vel com identificador PL que mostra a pr�xima posi��o livre
  pl: integer;


implementation

{$R *.dfm}

procedure TForm1.btn1IncluirClick(Sender: TObject);
var
  num: String;
begin
  // verifica se o Vetor est� cheio, ou seja, se est� com as dez
  // posi��es ocupadas
  if pl = 11 then
    showmessage('O vetor est� cheio, ou seja, com as dez poisi��es ocupadas!')
  else
  begin
    // recebe o n�mero a ser inserido no vetor
    num := InputBox('Aplica��o 1 - Vetores', 'Digite o n�mero a ser inclu�do','');
    if num <> '' then
      begin
        numero := StrToInt(num);

        //coloca o n�mero digitado no vetor
        vet[pl] := numero;

        // verifica a posi��o em que o n�mero foi colocado
        // para mostrar tamb�m na tela
        if pl = 1 then
        begin
           pos1.Text := IntToStr(numero);
//           pos1.Visible := true;
        end;
        if pl = 2 then
        begin
          pos2.Text := IntToStr(numero);
//        pos2.Visible := true;
        end;
        if pl = 3 then
        begin
           pos3.Text := IntToStr(numero);
//          pos3.Visible := true;
        end;
        if pl = 4 then
        begin
          pos4.Text := IntToStr(numero);
//          pos4.Visible := true;
        end;
        if pl = 5 then
        begin
           pos5.Text := IntToStr(numero);
//           pos5.Visible := true;
        end;
        if pl = 6 then
        begin
          pos6.Text := IntToStr(numero);
//          pos6.Visible := true;
        end;
        if pl = 7 then
        begin
           pos7.Text := IntToStr(numero);
//           pos7.Visible := true;
        end;
        if pl = 8 then
        begin
          pos8.Text := IntToStr(numero);
//          pos8.Visible := true;
        end;
        if pl = 9 then
        begin
           pos9.Text := IntToStr(numero);
//           pos9.Visible := true;
        end;
        if pl = 10 then
        begin
          pos10.Text := IntToStr(numero);
//          pos10.Visible := true;
        end;

        // atualiza a posi��o livre ap�s a inclus�o do novo n�mero
        // atualiza a vari�vel PL
        pl := pl + 1;

        // mostra a nova posi��o livre
        posLivre.Text := IntToStr(pl);
      end;
  end;
end;

procedure TForm1.btn2ExcluirClick(Sender: TObject);
var
  i, j, achou, encontrou: Integer;
    num: String;
begin
  // verifica se o vetor est� vazio, ou seja,
  // se a pr�xima posi��o livre � a 1.
  if pl = 1 then
    ShowMessage('O vetor est� vazio, logo, nenhum n�mero poder� ser exclu�do!')
  else
  begin
    // a vari�vel ENCONTROU verifica a exist�ncia de
    // pelo menos uma ocorr�ncia do n�mero digitado no vetor
    encontrou := 0;

    // receb o n�mero a ser esclu�do do vetor
    num := InputBox('Aplica��o 1 - Vetores', 'Digite o n�mero a ser exclu�do', '');
    if num <> '' then
    begin
      numero := StrToInt(num);

        // percorre todas as posi��es ocupadas do vetor
        // para verificar se o n�mero a ser exclupido existe
        // caso o n�mero exista poder� ocorrer
        // o deslocamento de posi��es no vetor
      i := 1;
      achou := 0;
      while i < pl do
      begin
        if vet[i] = numero then
        begin
            // marca a exist�ncia do n�mero a ser exlu�do
          encontrou := 1;

            // realiza o deslocamento
          for j := i to pl - 2 do
          begin
              vet[j] := vet[j + 1];
          end;
          i := 1;
          achou := 1;
          end
          else
          i := i + 1;

        if achou = 1 then
        begin
          achou := 0;
          if pl = 2
          then pos1.Text := '';
          if pl = 3
          then pos2.Text := '';
          if pl = 4
          then pos3.Text := '';
          if pl = 5
          then pos4.Text := '';
          if pl = 6
          then pos5.Text := '';
          if pl = 7
          then pos6.Text := '';
          if pl = 8
          then pos7.Text := '';
          if pl = 9
          then pos8.Text := '';
          if pl = 10
          then pos9.Text := '';
          if pl = 11
          then pos10.Text := '';
          // atualiza o valor da posi��o livre
          pl := pl - 1;
        posLivre.Text := IntToStr(pl);

        // atualizando os n�meros na tela
        for j := 1 to pl -1 do
          begin
            if j = 1
            then pos1.Text := IntToStr(vet[j]);
            if j = 2
            then pos2.Text := IntToStr(vet[j]);
            if j = 3
            then pos3.Text := IntToStr(vet[j]);
            if j = 4
            then pos4.Text := IntToStr(vet[j]);
            if j = 5
            then pos5.Text := IntToStr(vet[j]);
            if j = 6
            then pos6.Text := IntToStr(vet[j]);
            if j = 7
            then pos7.Text := IntToStr(vet[j]);
            if j = 8
            then pos8.Text := IntToStr(vet[j]);
            if j = 9
            then pos9.Text := IntToStr(vet[j]);
             if j = 10
            then pos10.Text := IntToStr(vet[j]);
          end;
         end;
      end;
      if encontrou = 0 then
         ShowMessage('O n�mero digitado para exclus�o n�o existe no vetor!');
    end;
  end;
end;

procedure TForm1.btn3LimparClick(Sender: TObject);
begin
   // mostrando no Edit denominda posLivre a posi��o 1, ou seja,
   // esvaziando o vetor
   posLivre.Text := '1';

   // colocando o valor 1 na vari�vel PL que representa
   // a posi��o livre quando o vetor est� vazio
   pl := 1;

   // limpa os n�meros antriormente inclu�dos
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
  posLivre.Text := '1';

  // colocando o valor 1 na vari�vel PL que representa
  // a posi��o livre quando o vetor est� vazio
  pl := 1;
end;

end.
