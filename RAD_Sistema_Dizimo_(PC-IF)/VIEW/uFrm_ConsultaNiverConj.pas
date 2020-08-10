unit uFrm_ConsultaNiverConj;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.AppEvnts, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList;

type
  Tfrm_ConsultaNiverConj = class(TForm)
    Panel1: TPanel;
    lbl_Sistema: TLabel;
    lbl_Matriz: TLabel;
    lbl_Mostrahora: TLabel;
    lbl_CidadeGrau: TLabel;
    lbl_MostraData: TLabel;
    Panel4: TPanel;
    img_Cadastro: TImageList;
    Timer1: TTimer;
    ApplicationEvents1: TApplicationEvents;
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
    cds_ConsultaNiverConj: TClientDataSet;
    ds_Consulta: TDataSource;
    dbg_ConsultaNiverConj: TDBGrid;
    cds_ConsultaNiverConjCDFICHA: TIntegerField;
    cds_ConsultaNiverConjNOME: TStringField;
    cds_ConsultaNiverConjNOME_CONJ: TStringField;
    cds_ConsultaNiverConjNASCONJUGE: TDateField;
    Label2: TLabel;
    edt_QtdAtivos: TEdit;
    procedure btn6_ImprimirClick(Sender: TObject);
    procedure cbx_FiltrarMesClick(Sender: TObject);
    procedure dbg_ConsultaNiverConjDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure brn7_FecharFromClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_LimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ConsultaNiverConj: Tfrm_ConsultaNiverConj;

implementation

{$R *.dfm}

uses uDM_Dados, uDM_Relatorios, uFuncoes;

procedure Tfrm_ConsultaNiverConj.brn7_FecharFromClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_ConsultaNiverConj.btn6_ImprimirClick(Sender: TObject);
begin
  with DM_Relatorios do
    begin
    DM_Relatorios := TDM_Relatorios.Create(nil);
    try
      rel_ConsultaNiverConj.Clear;
      rel_ConsultaNiverConj.LoadFromFile(ExtractFilePath(Application.ExeName)+'Relatorios\rel_ConsultaNiverConj.fr3');
      rel_ConsultaNiverConj.Variables['MesNiverConj'] := QuotedStr(pnl_ExibeMes.Caption);

      rel_ConsultaNiverConj.ShowReport();
    finally
      FreeAndNil(DM_Relatorios);
    end;
  end;
end;

procedure Tfrm_ConsultaNiverConj.btn_LimparClick(Sender: TObject);
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

procedure Tfrm_ConsultaNiverConj.cbx_FiltrarMesClick(Sender: TObject);
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
                    ' where extract(MONTH from NASCONJUGE) = ' + QuotedStr(IntToStr(mesFiltrado)) +
                    ' order by extract(DAY from NASCONJUGE)';
     Open;
     pnl_ExibeMes.Caption := cbx_FiltrarMes.Text;
     edt_QtdAtivos.Text := IntToStr(RecordCount);
   end;

end;

procedure Tfrm_ConsultaNiverConj.dbg_ConsultaNiverConjDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ZebrarDBGrid(ds_Consulta,dbg_ConsultaNiverConj,State,Rect,Column);
  dbg_ConsultaNiverConj.Font.Size := 11;
end;

procedure Tfrm_ConsultaNiverConj.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    TClientDataSet(ds_Consulta.DataSet).Active := False;
    frm_ConsultaNiverConj := nil;
end;

procedure Tfrm_ConsultaNiverConj.FormCreate(Sender: TObject);
begin
    TClientDataSet(ds_Consulta.DataSet).Active := True;
  pnl_ExibeMes.Enabled := True;
end;

procedure Tfrm_ConsultaNiverConj.Timer1Timer(Sender: TObject);
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
