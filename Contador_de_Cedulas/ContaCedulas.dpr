program ContaCedulas;

uses
  Vcl.Forms,
  DLContagemDeculas in 'DLContagemDeculas.pas' {frmDLContagemCedulas},
  CLContagemCedulas in 'CLContagemCedulas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDLContagemCedulas, frmDLContagemCedulas);
  Application.Run;
end.
