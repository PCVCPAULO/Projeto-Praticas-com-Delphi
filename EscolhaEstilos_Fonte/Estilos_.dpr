program Estilos_;

uses
  Vcl.Forms,
  DLTexto in 'DLTexto.pas' {frmFormatacao},
  CLEstilo in 'CLEstilo.pas',
  CLTexto in 'CLTexto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmFormatacao, frmFormatacao);
  Application.Run;
end.
