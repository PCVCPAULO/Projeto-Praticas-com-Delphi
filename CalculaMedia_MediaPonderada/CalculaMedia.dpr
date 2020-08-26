program CalculaMedia;

uses
  Vcl.Forms,
  DLMedia in 'DLMedia.pas' {frmMedia},
  CLMedia in 'CLMedia.pas',
  CLMediaPonderada in 'CLMediaPonderada.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMedia, frmMedia);
  Application.Run;
end.
