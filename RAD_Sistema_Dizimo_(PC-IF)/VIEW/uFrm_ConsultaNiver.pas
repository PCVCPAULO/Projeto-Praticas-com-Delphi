unit uFrm_ConsultaNiver;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.AppEvnts, System.ImageList,
  Vcl.ImgList, Datasnap.DBClient;

type
  Tfrm_ConsultaNiver = class(TForm)
    Panel1: TPanel;
    lbl_Sistema: TLabel;
    lbl_Matriz: TLabel;
    lbl_Mostrahora: TLabel;
    lbl_CidadeGrau: TLabel;
    lbl_MostraData: TLabel;
    Panel4: TPanel;
    Panel3: TPanel;
    ds_Consulta: TDataSource;
    cds_ConsultaNiver: TClientDataSet;
    cds_ConsultaNiverCDFICHA: TIntegerField;
    cds_ConsultaNiverNOME: TStringField;
    cds_ConsultaNiverDT_NASC: TDateField;
    cds_ConsultaNiverFONE_MOVEL: TStringField;
    Timer1: TTimer;
    img_Cadastro: TImageList;
    Panel2: TPanel;
    lbl_Cadastrados: TLabel;
    brn7_FecharFrom: TButton;
    btn6_Imprimir: TButton;
    btn_Limpar: TButton;
    pnl_ExibeMes: TPanel;
    ApplicationEvents1: TApplicationEvents;
    MonthCalendar1: TMonthCalendar;
    cbx_FiltrarMes: TComboBox;
    dbg_ConsultaNiver: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    edt_QtdAtivos: TEdit;
    cds_ConsultaNiverSITUACAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure cbx_FiltrarMesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure brn7_FecharFromClick(Sender: TObject);
    procedure dbg_ConsultaNiverDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Timer1Timer(Sender: TObject);
    procedure btn6_ImprimirClick(Sender: TObject);
    procedure btn_LimparClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frm_ConsultaNiver: Tfrm_ConsultaNiver;


implementation

{$R *.dfm}

uses uFuncoes, uDM_Relatorios;

procedure Tfrm_ConsultaNiver.brn7_FecharFromClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_ConsultaNiver.btn6_ImprimirClick(Sender: TObject);
begin
  with DM_Relatorios do
    begin
    DM_Relatorios := TDM_Relatorios.Create(nil);
    try
      rel_ConsultaNiver.Clear;
      rel_ConsultaNiver.LoadFromFile(ExtractFilePath(Application.ExeName)+'Relatorios\rel_ConsultaNiver.fr3');
      rel_ConsultaNiver.Variables['MesNiver'] := QuotedStr(pnl_ExibeMes.Caption);

      rel_ConsultaNiver.ShowReport();
    finally
      FreeAndNil(DM_Relatorios);
    end;
  end;
end;

procedure Tfrm_ConsultaNiver.btn_LimparClick(Sender: TObject);
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

procedure Tfrm_ConsultaNiver.cbx_FiltrarMesClick(Sender: TObject);
Var
  mesFiltrado : Integer;

begin
// Aqui adiciona 1, pois a contagem do Delphi começa do ZERO.
// Logo o primeiro item é ZERO, por isso adiciona-se 1

   mesFiltrado := cbx_FiltrarMes.ItemIndex + 1;

// a nova maneira de filtrar fica assim
   with TClientDataSet(ds_Consulta.DataSet) do
   begin
    Close;
     CommandText := '';
     CommandText := 'select * from TBL_PLANDADOS' +
                    ' where extract(MONTH from DT_NASC) = ' + QuotedStr(IntToStr(mesFiltrado)) +
                    ' and SITUACAO = ' + QuotedStr('A') +
                    ' order by extract(DAY from DT_NASC)';
     Open;
     pnl_ExibeMes.Caption := cbx_FiltrarMes.Text;
     edt_QtdAtivos.Text := IntToStr(RecordCount);
   end;
end;

procedure Tfrm_ConsultaNiver.dbg_ConsultaNiverDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ZebrarDBGrid(ds_Consulta,dbg_ConsultaNiver,State,Rect,Column);
  dbg_ConsultaNiver.Font.Size := 11;

end;

procedure Tfrm_ConsultaNiver.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    TClientDataSet(ds_Consulta.DataSet).Active := False;
    frm_ConsultaNiver := nil;
end;

procedure Tfrm_ConsultaNiver.FormCreate(Sender: TObject);
begin
    TClientDataSet(ds_Consulta.DataSet).Active := True;
  pnl_ExibeMes.Enabled := True;
end;


procedure Tfrm_ConsultaNiver.Timer1Timer(Sender: TObject);
var
  MostraHora, MostraData : TDateTime;
  strHora : string;
  strData : String;
begin
  MostraHora := Time; // armazena date e hora atuais
  strHora    := TimeToStr(MostraHora); // converte a hora em uma string
  lbl_MostraHora.Caption := strHora; // exibe a hora na legenda do formulário

  MostraData := Date;
  strData := DateToStr(MostraData);
  lbl_MostraData.Caption := strData;

end;

end.
