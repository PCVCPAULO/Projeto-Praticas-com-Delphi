unit uFrm_CadastroDizimista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm_CadastroBasico, Data.DB,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls,
  tpEdit, System.Math, Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls, Data.FMTBcd,
  Data.SqlExpr, Vcl.AppEvnts, sSkinManager;

type
  Tfrm_Cad_Dizimista = class(Tfrm_CadastroBasico)
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cbx_Complemento: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    Cidade: TLabel;
    cbx_Uf: TComboBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cbx_Genero: TComboBox;
    cbx_EstadoCivil: TComboBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    rdg_Situacao: TRadioGroup;
    Label23: TLabel;
    edt_Ficha: TDBEdit;
    edt_Nome: TEdit;
    edt_RUA: TEdit;
    edt_NR: TEdit;
    edt_Bairro: TEdit;
    edt_CEP: TEdit;
    edt_Cidade: TEdit;
    edt_Fixo: TEdit;
    edt_Movel: TEdit;
    edt_Email: TEdit;
    edt_Conjuge: TEdit;
    edt_CEB: TEdit;
    edt_DataNasc: TMaskEdit;
    edt_Casamento: TMaskEdit;
    edt_NascConj: TMaskEdit;
    edt_Cadastro: TMaskEdit;
    ds_TabelaBanco: TDataSource;

    procedure acl_EditarExecute(Sender: TObject);
    procedure acl_ImprimirExecute(Sender: TObject);
    procedure acl_InserirExecute(Sender: TObject);
    procedure acl_PesquisarExecute(Sender: TObject);
    procedure acl_GravarExecute(Sender: TObject);
    procedure acl_ExcluirExecute(Sender: TObject);
    procedure acl_CancelarExecute(Sender: TObject);
    procedure acl_CancelarUpdate(Sender: TObject);
    procedure btn_FiltrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbx_PesquisarClick(Sender: TObject);
    procedure dbg_DadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edt_NomeKeyPress(Sender: TObject; var Key: Char);
    procedure edt_DataNascKeyPress(Sender: TObject; var Key: Char);
    procedure edt_CEBKeyPress(Sender: TObject; var Key: Char);
    procedure edt_NRKeyPress(Sender: TObject; var Key: Char);
    procedure cbx_ComplementoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_CEPKeyPress(Sender: TObject; var Key: Char);
    procedure edt_CidadeKeyPress(Sender: TObject; var Key: Char);
    procedure cbx_UfKeyPress(Sender: TObject; var Key: Char);
    procedure edt_FixoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_MovelKeyPress(Sender: TObject; var Key: Char);
    procedure edt_EmailKeyPress(Sender: TObject; var Key: Char);
    procedure cbx_GeneroKeyPress(Sender: TObject; var Key: Char);
    procedure cbx_EstadoCivilKeyPress(Sender: TObject; var Key: Char);
    procedure edt_CasamentoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_ConjugeKeyPress(Sender: TObject; var Key: Char);
    procedure edt_NascConjKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edt_PesquisarKeyPress(Sender: TObject; var Key: Char);
  private

    iModo : Integer;
//    procedure LimparTudo;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Cad_Dizimista: Tfrm_Cad_Dizimista;

implementation

{$R *.dfm}

uses uDM_Dados, uFuncoes, uTela_Panel, uDM_Relatorios, uFrm_ConsultaCadastro;

procedure Tfrm_Cad_Dizimista.acl_CancelarExecute(Sender: TObject);
begin
  inherited;
  acl_Gravar.Enabled := ds_TabelaBanco.State in [dsInsert,dsEdit];
end;

procedure Tfrm_Cad_Dizimista.acl_CancelarUpdate(Sender: TObject);
begin
  inherited;
//
end;

procedure Tfrm_Cad_Dizimista.acl_EditarExecute(Sender: TObject);
begin
  inherited;
  with DM_Dados.cds_BancoDizimo do
  begin
    edt_Nome.SetFocus;
    edt_Ficha.Text  := InttoStr(FieldByName('CDFICHA').AsInteger);
    edt_Ficha.Enabled := False;
    edt_Nome.Text   := FieldByName('NOME').AsString;
    edt_CEB.Text    := FieldByName('COMUNIDADE').AsString;
    edt_Rua.Text    := FieldByName('END_RUA').AsString;
    cbx_Complemento.Text := FieldByName('END_COMPLEM').AsString;
    edt_NR.Text     := FieldByName('END_NR').AsString;
    edt_Bairro.Text := FieldByName('END_BAIRRO').AsString;
    edt_CEP.Text     := FieldByName('END_CEP').AsString;
    edt_Cidade.Text := FieldByName('END_CIDADE').AsString;
    cbx_UF.Text     := FieldByName('END_UF').AsString;
    edt_Fixo.Text   := FieldByName('FONE_FIXO').AsString;
    edt_Movel.Text  := FieldByName('FONE_MOVEL').AsString;
    edt_Email.Text  := FieldByName('EMAIL').AsString;
    cbx_Genero.Text := FieldByName('GENERO').AsString;
    cbx_EstadoCivil.Text :=  FieldByName('ESTADO_CIVIL').AsString;
    edt_Conjuge.Text     :=  FieldByName('NOME_CONJ').AsString;

    edt_DataNasc.Text := FieldByName('DT_NASC').AsAnsiString;
    edt_Cadastro.Text := FieldByName('DATACADASTRO').AsAnsiString;
    edt_NascConj.Text := FieldByName('NASCONJUGE').AsAnsiString;
    edt_Casamento.Text:= FieldByName('DATACASAMENTO').AsAnsiString;

    case rdg_Situacao.ItemIndex of
       0 : FieldByName('SITUACAO').AsAnsiString := 'A';
       1 : FieldByName('SITUACAO').AsAnsiString := 'I';
    end;
    end;

end;



procedure Tfrm_Cad_Dizimista.acl_ImprimirExecute(Sender: TObject);
begin
  CriarForm(TFrm_ConsultaCadastro,Frm_ConsultaCadastro);
end;

procedure Tfrm_Cad_Dizimista.acl_InserirExecute(Sender: TObject);
begin
  inherited;

  if edt_Pesquisar.Text = '' then
  begin
    edt_Ficha.Text  := IntToStr(GetId('CDFICHA','TBL_PLANDADOS'));
    edt_Nome.SetFocus;
    edt_CEB.Text    := 'MATRIZ';
    edt_Cidade.Text := 'S�O MATEUS';
    cbx_UF.Text          := 'ES';
    cbx_Complemento.Text := '';
    cbx_Genero.Text      := '';
    cbx_EstadoCivil.Text := '';
  end;
end;

procedure Tfrm_Cad_Dizimista.acl_PesquisarExecute(Sender: TObject);
begin
  inherited;
  edt_Pesquisar.Clear;
  with TClientDataSet(ds_TabelaBanco.DataSet) do
  begin
    Close;
    CommandText := '';
	  CommandText := 'SELECT * FROM TBL_PLANDADOS ORDER BY CDFICHA';
	  Open;
    stb_CadBasico.Panels[3].Text := 'Total de Registros: '+IntToStr(TClientDataSet(ds_TabelaBanco.DataSet).RecordCount);
  end;
end;


procedure Tfrm_Cad_Dizimista.btn_FiltrarClick(Sender: TObject);
var
  strSQLAno, strSQLMes : String;
  strSQLMesAno, strSQLTexto: String;
  dtNasc: TDate;
  dtFormatada: String;

begin
  inherited;
  if (edt_Pesquisar.Text = '') then
  begin
    Application.MessageBox('Informe um valor a ser pesquisado ou clique em Pesquisar.','Aten��o',0+48);
    edt_Pesquisar.SetFocus;
    Abort;
  end;

  with TClientDataSet(ds_TabelaBanco.DataSet) do
  begin
    dtNasc    := StrToDate(edt_Pesquisar.Text);
    dtFormatada := FormatDateTime('DD.MM.YYYY', dtNasc);

    Close;
    strSQLAno    := 'select * from  TBL_PLANDADOS where Extract(year from DT_NASC) = ';
    strSQLMesAno := 'select * from  TBL_PLANDADOS where Extract(Month from DT_NASC) = ';
    case cbx_Pesquisar.ItemIndex of
      0 : CommandText := 'SELECT * FROM TBL_PLANDADOS WHERE CDFICHA  = '+ #39 + edt_Pesquisar.Text + #39;
      1 : CommandText := 'SELECT * FROM TBL_PLANDADOS WHERE NOME LIKE '+QuotedStr('%'+edt_Pesquisar.Text+'%');
      2 : CommandText := 'SELECT * FROM TBL_PLANDADOS WHERE DT_NASC = '+ #39 + dtFormatada + #39;
      3 : CommandText := 'SELECT * FROM TBL_PLANDADOS NOME_CONJ WHERE NOME_CONJ LIKE '+QuotedStr('%'+edt_Pesquisar.Text+'%');
    end;
    Open;
  end;
end;

procedure Tfrm_Cad_Dizimista.cbx_ComplementoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    edt_Bairro.SetFocus;
  end;
end;

procedure Tfrm_Cad_Dizimista.cbx_EstadoCivilKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    edt_Casamento.SetFocus;
  end;
end;

procedure Tfrm_Cad_Dizimista.cbx_GeneroKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    cbx_EstadoCivil.SetFocus;
  end;
end;

procedure Tfrm_Cad_Dizimista.cbx_PesquisarClick(Sender: TObject);
begin
  with TClientDataSet(ds_TabelaBanco.DataSet) do
  begin
    if (cbx_Pesquisar.ItemIndex = 4) then
    begin
      Close;
      CommandText := '';
      CommandText := 'SELECT * FROM TBL_PLANDADOS where SITUACAO =' + QuotedStr('A') +
                       ' order by CDFICHA';
      Open;
    stb_CadBasico.Panels[3].Text := 'Total de Registros: '+ IntToStr(RecordCount);
    end
    else

//    if (cbx_Pesquisar.ItemIndex = 5) then;
    begin
      Close;
      CommandText := '';
      CommandText := 'SELECT * FROM TBL_PLANDADOS where SITUACAO =' + QuotedStr('I') +
                     ' order by CDFICHA';
      Open;
    end;
  end;

end;

procedure Tfrm_Cad_Dizimista.cbx_UfKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    edt_Fixo.SetFocus;
  end;
end;

procedure Tfrm_Cad_Dizimista.dbg_DadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ZebrarDBGrid(ds_TabelaBanco,dbg_Dados,State,Rect,Column);
end;

procedure Tfrm_Cad_Dizimista.edt_CasamentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    edt_Conjuge.SetFocus;
  end;
end;

procedure Tfrm_Cad_Dizimista.edt_CEBKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    edt_CEP.SetFocus;
  end;
end;

procedure Tfrm_Cad_Dizimista.edt_CEPKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    edt_Cidade.SetFocus;
  end;
end;

procedure Tfrm_Cad_Dizimista.edt_CidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    cbx_UF.SetFocus;
  end;
end;

procedure Tfrm_Cad_Dizimista.edt_ConjugeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    edt_NascConj.SetFocus;
  end;
end;

procedure Tfrm_Cad_Dizimista.edt_DataNascKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    edt_CEB.SetFocus;
  end;
end;

procedure Tfrm_Cad_Dizimista.edt_EmailKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    cbx_Genero.SetFocus;
  end;
end;

procedure Tfrm_Cad_Dizimista.edt_FixoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    edt_Movel.SetFocus;
  end;
end;

procedure Tfrm_Cad_Dizimista.edt_MovelKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    edt_EMail.SetFocus;
  end;
end;

procedure Tfrm_Cad_Dizimista.edt_NascConjKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    SpeedButton3.Click;
  end;
end;

procedure Tfrm_Cad_Dizimista.edt_NomeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    edt_DataNasc.SetFocus;
  end;

end;

procedure Tfrm_Cad_Dizimista.edt_NRKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    cbx_Complemento.SetFocus;
  end;
end;

procedure Tfrm_Cad_Dizimista.edt_PesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    btn_Filtrar.Click;
  end;
end;

procedure Tfrm_Cad_Dizimista.FormActivate(Sender: TObject);
begin
  inherited;
//
end;

procedure Tfrm_Cad_Dizimista.FormShow(Sender: TObject);
begin
  inherited;
  SpeedButton2.Click;
end;

procedure Tfrm_Cad_Dizimista.acl_ExcluirExecute(Sender: TObject);
begin
	if Application.MessageBox('Deseja alterar a Situa��o desse Dizimista?','Pergunta',MB_YESNO+MB_ICONQUESTION) = mrYes then
	begin
  with TClientDataSet(ds_TabelaBanco.DataSet) do
	  try
		  Edit;
      FieldByName('SITUACAO').AsString := 'I';
      ApplyUpdates(0);
      Application.MessageBox('Dizimista posto em Inatividade com sucesso!','Informa��o',0+64);
		  Open;
		except on E : Exception do
		  raise Exception.Create('Erro ao Alterar  a Situa��o do registro: '+E.Message);
		end;
	end;
end;

procedure Tfrm_Cad_Dizimista.acl_GravarExecute(Sender: TObject);
begin

  if Trim(edt_Nome.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo NOME.','Aten��o!',MB_OK+MB_ICONWARNING);
    edt_Nome.SetFocus;
    Abort;
  end;

  begin
    with DM_Dados.cds_BancoDizimo do
    begin
         FieldByName('NOME')        .AsString := Trim(edt_Nome.Text);
         FieldByName('COMUNIDADE')  .AsString := Trim(edt_CEB.Text);
         FieldByName('END_RUA')     .AsString := Trim(edt_Rua.Text);
         FieldByName('END_NR')      .AsString := Trim(edt_NR.Text);
         FieldByName('END_COMPLEM') .AsString := Trim(cbx_Complemento.Text);
         FieldByName('END_BAIRRO')  .AsString := Trim(edt_Bairro.Text);
         FieldByName('END_CEP')     .AsString := Trim(edt_CEP.Text);
         FieldByName('END_CIDADE')  .AsString := Trim(edt_Cidade.Text);
         FieldByName('END_UF')      .AsString := Trim(cbx_UF.Text);
         FieldByName('FONE_FIXO')   .AsString := Trim(edt_Fixo.Text);
         FieldByName('FONE_MOVEL')  .AsString := Trim(edt_Movel.Text);
         FieldByName('EMAIL')       .AsString := Trim(edt_Email.Text);
         FieldByName('GENERO')      .AsString := Trim(cbx_Genero.Text);
         FieldByName('ESTADO_CIVIL').AsString := Trim(cbx_EstadoCivil.Text);
         FieldByName('NOME_CONJ')   .AsString := Trim(edt_Conjuge.Text);

        case rdg_Situacao.ItemIndex of
           0 : FieldByName('SITUACAO').AsAnsiString := 'A';
           1 : FieldByName('SITUACAO').AsAnsiString := 'I';
        end;

         if (Trim(edt_DataNasc.Text) = '') or (Trim(edt_DataNasc.Text) = '/  /') then
         begin
            FieldByName('DT_NASC').AsVariant := Null
         end
         else
            FieldByName('DT_NASC').AsDateTime := StrTODate(edt_DataNasc.Text);

         if (Trim(edt_Cadastro.Text) = '') or (Trim(edt_Cadastro.Text) = '/  /') then
         begin
            FieldByName('DATACADASTRO').AsVariant := Null
         end
         else
            FieldByName('DATACADASTRO').AsDateTime := StrTODate(edt_Cadastro.Text);

         if (Trim(edt_NascConj.Text) = '') or (Trim(edt_NascConj.Text) = '/  /') then
         begin
            FieldByName('NASCONJUGE').AsVariant := Null
         end
         else
            FieldByName('NASCONJUGE').AsDateTime := StrTODate(edt_NascConj.Text);

         if (Trim(edt_Casamento.Text) = '') or (Trim(edt_Casamento.Text) = '/  /') then
         begin
            FieldByName('DATACASAMENTO').AsVariant := Null
         end
         else
            FieldByName('DATACASAMENTO').AsDateTime := StrTODate(edt_Casamento.Text);

    end;

  end;
  LimparTudo;
  inherited;


end;





end.
