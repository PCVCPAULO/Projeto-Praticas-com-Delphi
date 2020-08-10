unit uFrm_Gera_Restore;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.FileCtrl, Vcl.ExtCtrls, IBX.IBServices;

type
  Tfrm_RestauraBanco = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edt_FBK: TEdit;
    edt_FDB: TEdit;
    btn_ProcuraFBK: TButton;
    btn_Restaura_FDB: TButton;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    ckb_Replace: TCheckBox;
    ckb_NoValidityCheck: TCheckBox;
    pnl3_DaDireita: TPanel;
    brn7_FecharFrom: TButton;
    img_Cadastro: TImageList;
    Panel2: TPanel;
    lbl_Cadastrados: TLabel;
    edt_QtdAtivos: TEdit;
    IBRestoreService1: TIBRestoreService;
    mem_Process: TMemo;
    OpenDialog1: TOpenDialog;
    btn_Local_FDB: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btn_Restaura_FDBClick(Sender: TObject);
    procedure btn_ProcuraFBKClick(Sender: TObject);
    procedure brn7_FecharFromClick(Sender: TObject);
    procedure btn_Local_FDBClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DirectoryListBox1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_RestauraBanco: Tfrm_RestauraBanco;

implementation

{$R *.dfm}

uses uDM_Dados;

procedure Tfrm_RestauraBanco.brn7_FecharFromClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_RestauraBanco.btn_ProcuraFBKClick(Sender: TObject);
begin
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
	OpenDialog1.Filter := '*.FBK';
  if OpenDialog1.Execute then
  edt_FBK.Text := OpenDialog1.FileName;
end;

procedure Tfrm_RestauraBanco.btn_Restaura_FDBClick(Sender: TObject);
begin
  if edt_FBK.Text = '' then
  begin
    Application.MessageBox('Aten��o, o Arquivo de Backup n�o foi informado.','Aten��o.:', MB_APPLMODAL + MB_OK + MB_ICONWARNING);
    EXIT;
  end;

  if edt_FDB.Text = '' then
  begin
    Application.MessageBox('Aten��o, local do Banco n�o foi informado para efetuar a Restaura��o.','Aten��o.:', MB_APPLMODAL + MB_OK + MB_ICONWARNING);
    EXIT;
  end;

  try
    Screen.Cursor := crHourGlass;
    if Application.MessageBox('Tem certeza?','Confirmar',MB_APPLMODAL+MB_ICONQUESTION+MB_YESNO) = MRYES then
    begin

      with IBRestoreService1 do
      begin
        ServerName := 'localhost';
        LoginPrompt := False;
        Params.Add('user_name=SYSDBA');
        Params.Add('password=masterkey');
        Active  := True;
        Verbose := True;
        DataBaseName.Add(edt_FDB.Text);
        BackupFile.Add(edt_FBK.Text);

        Options := [];
        if ckb_Replace.Checked then
           Options := Options+[Replace];
        if ckb_NoValidityCheck.Checked then
           Options := Options+[NoValidityCheck];

        PageSize := 2048;

        ServiceStart;//inicia o processo de backup
        while not Eof do

        mem_Process.Lines.Add(GetNextLine);

        Active:=False;//desativa o servi�o de backup
        mem_Process.Lines.Add('');
        mem_Process.Lines.Add('/****FIM****\');
      end;


    end;

  finally
      mem_Process.Lines.Add('');
      mem_Process.Lines.Add('');
      mem_Process.Lines.Add('Restaura��o do Banco efetuado com sucesso!!!!');
      DM_Dados.Conexao.Connected:=True;//conecta o sistema na base de dados
      btn_Restaura_FDB.Enabled:=True;
      Screen.Cursor := crDefault;
  end;
    Application.ProcessMessages;

end;

procedure Tfrm_RestauraBanco.DirectoryListBox1DblClick(Sender: TObject);
begin
  edt_FBK.Text := DirectoryListBox1.Directory;
end;

procedure Tfrm_RestauraBanco.FormCreate(Sender: TObject);
begin
  edt_FBK.Clear;
end;

procedure Tfrm_RestauraBanco.btn_Local_FDBClick(Sender: TObject);
begin
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenDialog1.Execute then
  edt_FDB.Text := OpenDialog1.FileName;
end;

end.
