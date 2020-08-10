unit uFrm_ConsultaNiverUniao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList;

type
  Tfrm_ConsultaNiverUniao = class(TForm)
    Panel1: TPanel;
    lbl_Sistema: TLabel;
    lbl_Matriz: TLabel;
    lbl_Mostrahora: TLabel;
    lbl_CidadeGrau: TLabel;
    lbl_MostraData: TLabel;
    Panel4: TPanel;
    img_Cadastro: TImageList;
    Timer1: TTimer;
    pnl_ExibeMes: TPanel;
    Panel2: TPanel;
    lbl_Cadastrados: TLabel;
    Panel3: TPanel;
    Label1: TLabel;
    brn7_FecharFrom: TButton;
    btn6_Imprimir: TButton;
    btn_Limpar: TButton;
    MonthCalendar1: TMonthCalendar;
    cbx_FiltrarMes: TComboBox;
    dbg_ConsultaNiverCasam: TDBGrid;
    cds_ConsultaNiverCasam: TClientDataSet;
    ds_Consulta: TDataSource;
    cds_ConsultaNiverCasamCDFICHA: TIntegerField;
    cds_ConsultaNiverCasamNOME: TStringField;
    cds_ConsultaNiverCasamNOME_CONJ: TStringField;
    cds_ConsultaNiverCasamDATACASAMENTO: TDateField;
    Label2: TLabel;
    edt_QtdAtivos: TEdit;
    procedure btn_LimparClick(Sender: TObject);
    procedure btn6_ImprimirClick(Sender: TObject);
    procedure brn7_FecharFromClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure cbx_FiltrarMesChange(Sender: TObject);
    procedure dbg_ConsultaNiverCasamDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaNiverUniao: Tfrm_ConsultaNiverUniao;

implementation

{$R *.dfm}

uses uDM_Dados, uDM_Relatorios, uFuncoes;

procedure Tfrm_ConsultaNiverUniao.brn7_FecharFromClick(Sender: TObject);
begin
  Close
end;

procedure Tfrm_ConsultaNiverUniao.btn6_ImprimirClick(Sender: TObject);
begin
  with DM_Relatorios do
    begin
    DM_Relatorios := TDM_Relatorios.Create(nil);
    try
      rel_ConsultaNiverUniao.Clear;
      rel_ConsultaNiverUniao.LoadFromFile(ExtractFilePath(Application.ExeName)+'Relatorios\rel_ConsultaNiverUniao.fr3');
      rel_ConsultaNiverUniao.Variables['MesNiverUniao'] := QuotedStr(pnl_ExibeMes.Caption);

      rel_ConsultaNiverUniao.ShowReport();
    finally
      FreeAndNil(DM_Relatorios);
    end;
  end;
end;

procedure Tfrm_ConsultaNiverUniao.btn_LimparClick(Sender: TObject);
begin
   with TClientDataSet(ds_Consulta.DataSet) do
   begin
     Close;
     CommandText := '';
     CommandText := 'select * from TBL_PLANDADOS';
     pnl_ExibeMes.Caption := '';
     Open;
   end;
end;

procedure Tfrm_ConsultaNiverUniao.cbx_FiltrarMesChange(Sender: TObject);
Var
  mesFiltrado : Integer;

begin
// Aqui adiciona 1, pois a contagem do Delphi come�a do ZERO.
// Logo o primeiro item � ZERO, por isso adiciona-se 1

   mesFiltrado := cbx_FiltrarMes.ItemIndex + 1;

// a nova maneira de filtrar fica assim
   with TClientDataSet(ds_Consulta.DataSet) do
   begin
     Close;
     CommandText := '';
     CommandText := 'select * from TBL_PLANDADOS' +
                    ' where extract(MONTH from DATACASAMENTO) = ' + QuotedStr(IntToStr(mesFiltrado)) +
                    ' order by extract(DAY from DATACASAMENTO)';
     Open;
     pnl_ExibeMes.Caption := cbx_FiltrarMes.Text;
     edt_QtdAtivos.Text := IntToStr(RecordCount);
   end;

end;

procedure Tfrm_ConsultaNiverUniao.dbg_ConsultaNiverCasamDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  ZebrarDBGrid(ds_Consulta,dbg_ConsultaNiverCasam,State,Rect,Column);
  dbg_ConsultaNiverCasam.Font.Size := 11;
end;

procedure Tfrm_ConsultaNiverUniao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    TClientDataSet(ds_Consulta.DataSet).Active := False;
    frm_ConsultaNiverUniao := nil;
end;

procedure Tfrm_ConsultaNiverUniao.FormCreate(Sender: TObject);
begin
    TClientDataSet(ds_Consulta.DataSet).Active := True;
    pnl_ExibeMes.Enabled := True;
end;

procedure Tfrm_ConsultaNiverUniao.Timer1Timer(Sender: TObject);
var
  MostraHora, MostraData : TDateTime;
  strHora : string;
  strData : String;
begin
  MostraHora := Time; // armazena date e hora atuais
  strHora    := TimeToStr(MostraHora); // converte a hora em uma string
  lbl_MostraHora.Caption := strHora; // exibe a hora na legenda do formul�rio

  MostraData := Date;
  strData := DateToStr(MostraData);
  lbl_MostraData.Caption := strData;

end;

end.
