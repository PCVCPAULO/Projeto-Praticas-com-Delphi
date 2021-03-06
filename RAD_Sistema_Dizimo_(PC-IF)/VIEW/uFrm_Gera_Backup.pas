unit uFrm_Gera_Backup;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  IBX.IBServices, Vcl.FileCtrl, System.ImageList, Vcl.ImgList;

type
  Tfrm_GeraBackup = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    edt_FDB: TEdit;
    Label5: TLabel;
    edt_FBK: TEdit;
    btn_ProcuraFDB: TButton;
    btn_Gera_FDK: TButton;
    mem_Processo: TMemo;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    Label6: TLabel;
    pnl3_DaDireita: TPanel;
    OpenDialog2: TOpenDialog;
    IBBackupService1: TIBBackupService;
    Panel2: TPanel;
    lbl_Cadastrados: TLabel;
    edt_QtdAtivos: TEdit;
    brn7_FecharFrom: TButton;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    ckb_IgnoreChecksums: TCheckBox;
    ckb_IgnoreLimbo: TCheckBox;
    ckb_NonTransportable: TCheckBox;
    ckb_NoGarbageCollection: TCheckBox;
    img_Cadastro: TImageList;
    procedure btn_ProcuraFDBClick(Sender: TObject);
    procedure btn_Gera_FDKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure brn7_FecharFromClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frm_GeraBackup: Tfrm_GeraBackup;

implementation

uses
  Winapi.Windows, uDM_Dados;

{$R *.dfm}


procedure Tfrm_GeraBackup.FormCreate(Sender: TObject);
begin
  DirectoryListBox1.Directory := ExtractFilePath(Application.ExeName);
  edt_FBK.Text := 'Backup'+FormatDateTime('ddmmyyyy', Date)+'.FBK';
end;

procedure Tfrm_GeraBackup.brn7_FecharFromClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_GeraBackup.btn_Gera_FDKClick(Sender: TObject);
begin
  if edt_FDB.Text = '' then
  begin
    Application.MessageBox('Aten��o, Banco n�o foi informado para efetuar o backup.','Aten��o.:', MB_APPLMODAL + MB_OK + MB_ICONWARNING);
    EXIT;
  end;

  if edt_FBK.Text = '' then
  begin
    Application.MessageBox('Aten��o, Nome do Arquivo n�o foi informado para efetuar o backup.','Aten��o.:', MB_APPLMODAL + MB_OK + MB_ICONWARNING);
    EXIT;
  end;




  try
    with IBBackupService1 do
    begin
      ServerName  := 'localhost';
      LoginPrompt := False;
      Params.Add('user_name=SYSDBA');
      Params.Add('password=masterkey');
      Active  := True;
      Verbose := True;
      DataBaseName := edt_FDB.Text;
      BackupFile.Add(DirectoryListBox1.Directory+'\'+edt_FBK.Text);
      Options := [];//limpa a propriedade option

        {o bloco de if abaixo esta adicionando as op��es de restaura��o de acordo }
        {com o� que o usu�rio escolheu.�Ap�s esta listagem voc� encontra um link  }
        {para um outro artigo onde voc� encontra mais informa��es�sobre essas e outras op��es de restaura��o}

      if ckb_IgnoreChecksums.Checked then
           Options := Options + [IgnoreChecksums];

      if ckb_IgnoreLimbo.Checked then
           Options := Options + [IgnoreLimbo];

      if ckb_NoGarbageCollection.Checked then
           Options := Options + [NoGarbageCollection];

      if ckb_NonTransportable.Checked then
           Options := Options  +[NonTransportable];


      ServiceStart;//inicia o processo de backup
      while not Eof do

         {conforme o backup vai sendo executado o nos podemos pegar os detalhes}
         { da sua execu��o�atrav�s da fun��o GetNextLine}

      mem_Processo.Lines.Add(GetNextLine);

      Active:=False;//desativa o servi�o de backup
      mem_Processo.Lines.Add('');
      mem_Processo.Lines.Add('/****FIM****\');
    end;
  finally

      mem_Processo.Lines.Add('');
      mem_Processo.Lines.Add('');
      mem_Processo.Lines.Add('Arquivo ' + edt_FBK.Text + ' de Backup efetuado com sucesso.');
      DM_Dados.Conexao.Connected:=True;//conecta o sistema na base de dados
      btn_Gera_FDK.Enabled:=True;
  end;
  Application.ProcessMessages;


end;

procedure Tfrm_GeraBackup.btn_ProcuraFDBClick(Sender: TObject);
begin
  OpenDialog2.InitialDir := ExtractFilePath(Application.ExeName);
	OpenDialog2.Filter := '*.FDB';
  if OpenDialog2.Execute then
	edt_FDB.Text := OpenDialog2.FileName;
end;


end.
