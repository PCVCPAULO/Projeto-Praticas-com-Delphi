program Project1_CoesfEqQuadr;

uses
  Vcl.Forms,
  UfrmQuadEq in 'UfrmQuadEq.pas' {frmQuadEq},
  Unit1_TESTE in 'Unit1_TESTE.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
