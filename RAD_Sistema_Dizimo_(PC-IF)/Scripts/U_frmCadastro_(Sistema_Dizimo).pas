unit U_frmCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons,
  ExtCtrls, DBActns, ActnList, XPStyleActnCtrls, ActnMan, DB, ToolWin,
  ActnCtrls, ImgList;

type
  Tfrm_Cadastro = class(TForm)
    StatusBar1: TStatusBar;
    pgc_CadastroDados: TPageControl;
    tbs_Consultar: TTabSheet;
    tbs_Cadastrar: TTabSheet;
    edt_Busca: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edt_buscaFicha: TEdit;
    ActionManager1: TActionManager;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    Panel1: TPanel;
    spdb_Excluir: TSpeedButton;
    spdb1_Primeiro: TSpeedButton;
    spdb4_Ultimo: TSpeedButton;
    spdb2_Voltar: TSpeedButton;
    Spdb3_Proximo: TSpeedButton;
    spdb_Novo: TSpeedButton;
    spdb_Alterar: TSpeedButton;
    spdb_Cancelar: TSpeedButton;
    spdb_Gravar: TSpeedButton;
    Label3: TLabel;
    dbe_CDFICHA: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    Label22: TLabel;
    dbeDataCad: TDBEdit;
    DBGrid1: TDBGrid;
    dbcbxUF: TDBComboBox;
    dbcbxGenero: TDBComboBox;
    dbcbxEstadoCivil: TDBComboBox;
    spdb_Sair: TSpeedButton;
    ActionToolBar1: TActionToolBar;
    ImageList1: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_BuscaKeyPress(Sender: TObject; var Key: Char);
    procedure edt_buscaFichaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure DataSetPost1Execute(Sender: TObject);
    procedure DataSetInsert1Execute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure spdb_SairClick(Sender: TObject);
    procedure dbe_CDFICHAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcbxUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit14KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcbxGeneroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcbxEstadoCivilKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit18KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit19KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeDataCadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdb_AlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Cadastro: Tfrm_Cadastro;

implementation

uses U_TelaInicial, U_dmDadosDiz;

{$R *.dfm}



procedure Tfrm_Cadastro.edt_BuscaKeyPress(Sender: TObject; var Key: Char);
begin
//----------------buscar Ficha
    if key = #13 then

    begin

    with dm_Diz.sqlqry_Dados do

     begin
      Close;
      dm_Diz.cds_Dados.Close;
      SQL.Clear;
      SQL.Add('select * from TBL_PLANDADOS');
      SQL.Add('where NOME like :pnome');
      ParamByName('pnome').Value := edt_Busca.Text + '%';
      Active := true;
      dm_Diz.cds_Dados.Active := true;
      Open;
      
    end;
    end;
end;

procedure Tfrm_Cadastro.edt_buscaFichaKeyPress(Sender: TObject;
  var Key: Char);
begin
//----------------buscar Ficha
    if key = #13 then

    begin

      dm_Diz.cds_Dados.IndexFieldNames := 'CDFICHA';
      if Not dm_Diz.cds_Dados.FindKey([edt_buscaFicha.Text]) then
            showmessage('Nº de Ficha não cadastrada!');
         dm_Diz.cds_Dados.Open;

     end;

end;

procedure Tfrm_Cadastro.DBGrid1CellClick(Column: TColumn);
begin
    dm_Diz.cdstbl_Cadastro.Locate('CDFICHA',dm_Diz.cds_DadosCDFICHA.Value,[]);
end;

procedure Tfrm_Cadastro.FormCreate(Sender: TObject);
begin
    dm_Diz.sqlqry_Dados.Active    := true;
    dm_Diz.cds_Dados.Active       := true;
    dm_Diz.tbl_Cadastro.Active    := true;
    dm_Diz.cdstbl_Cadastro.Active := true;
end;

procedure Tfrm_Cadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dm_Diz.sqlqry_Dados.Active    := false;
    dm_diz.cds_Dados.Active       := false;
    dm_Diz.tbl_Cadastro.Active    := false;
    dm_Diz.cdstbl_Cadastro.Active := false;
    frm_Cadastro := nil;
end;




procedure Tfrm_Cadastro.DataSetPost1Execute(Sender: TObject);
begin
    If dm_Diz.cdstbl_Cadastro.State in [dsEdit,dsInsert] then
        try
          dm_Diz.cdstbl_Cadastro.Open;
          dm_Diz.cdstbl_Cadastro.Post;
          ShowMessage('Informações enviadas para o Banco de Dados e gravada com sucesso!');
          dm_Diz.cdstbl_Cadastro.ApplyUpdates(0);
        except
            messagedlg('Houve problemas na gravação, verifique os dados...',
                    mtinformation, [mbok],0);

    end;
    dm_Diz.cdstbl_Cadastro.Close;
    dm_Diz.cdstbl_Cadastro.Open;

end;

procedure Tfrm_Cadastro.DataSetInsert1Execute(Sender: TObject);
    procedure LimparCampos(AControl: TComponent);
    var
        vLoop: Integer;
    begin
        For vLoop := 0 to AControl.ComponentCount-1 do
        begin
            if AControl.Components[vLoop].ClassType = TEdit then
               TEdit(Acontrol.Components[vLoop]).Clear
            else
                LimparCampos(AControl.Components[vLoop]);
        end;
    end;
var
    vficha:integer;
    datcad : TDateTime;

begin
    with dm_Diz.cdstbl_Cadastro do
    begin
    Open;
    Last;
    vficha := dm_Diz.cdstbl_Cadastro.FieldByName('cdficha').AsInteger + 1;
    datcad := StrToDate(dbeDataCad.Text);
    Append;

    FieldByName('cdficha').AsInteger:=vficha;
    FieldByName('DATACADASTRO').AsDateTime:=datcad;
    FieldByName('COMUNIDADE').AsString:='MATRIZ';
    FieldByName('END_CIDADE').AsString:='SÃO MATEUS';
    FieldByName('END_UF').AsString:='ES';

    dbe_CDFICHA.SetFocus; // coloca o foco no dbeditCDFICHA
//    tratabotoes;
    end;
end;

procedure Tfrm_Cadastro.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
   vCDFICHA : integer;
   key : char;
begin
 if key = #13 then
 with DBGrid1 do

  begin
     vCDFICHA := StrToInt(edt_buscaFicha.Text);
    if dm_Diz.ds_Dados.DataSet.FieldByName('CDFICHA').AsInteger = vCDFICHA then
    begin
      if (gdSelected in State) then
        Canvas.Brush.Color := clRed
      else
      begin
        Canvas.Font.Style := [fsBold];
        Canvas.Font.Color := clRed;
      end
    end;
    Canvas.FillRect(Rect);
    DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
 end;

procedure Tfrm_Cadastro.DBGrid1DblClick(Sender: TObject);
begin
    tbs_Cadastrar.Show;
    dm_Diz.cdstbl_Cadastro.Locate('CDFICHA',dm_Diz.cds_DadosCDFICHA.Value,[]);
end;

procedure Tfrm_Cadastro.spdb_SairClick(Sender: TObject);
begin
    Close;
end;

procedure Tfrm_Cadastro.dbe_CDFICHAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.dbcbxUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.DBEdit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.DBEdit14KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.dbcbxGeneroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.dbcbxEstadoCivilKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.DBEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.DBEdit18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.DBEdit19KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.dbeDataCadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = Vk_Return then Perform(Wm_NextDlgCtl,0,0);
end;

procedure Tfrm_Cadastro.spdb_AlterarClick(Sender: TObject);
begin
//Inserir o código para alteração-edição dos dados
end;

end.
