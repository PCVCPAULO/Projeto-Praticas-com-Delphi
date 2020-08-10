program ControleVendas;

uses
  Vcl.Forms,
  MenuPrincipal in 'View\MenuPrincipal.pas' {frmMenu},
  CDVendedores in 'View\CDVendedores.pas' {frmVendedores},
  CDVendas in 'View\CDVendas.pas' {frmVendas},
  CNComissoes in 'View\CNComissoes.pas' {frmConsultaComissoes},
  CLVendedor in 'Controller\CLVendedor.pas',
  CLVendas in 'Controller\CLVendas.pas',
  DMVendedor in 'Model\DMVendedor.pas' {dtmVendedor: TDataModule},
  DMVendas in 'Model\DMVendas.pas' {dtmVendas: TDataModule},
  clFuncoes in 'Controller\clFuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TdtmVendedor, dtmVendedor);
  Application.CreateForm(TdtmVendas, dtmVendas);
  Application.Run;
end.
