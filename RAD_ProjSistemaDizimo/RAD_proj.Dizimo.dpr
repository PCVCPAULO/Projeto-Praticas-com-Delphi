program RAD_proj.Dizimo;

uses
  Vcl.Forms,
  uFrm.Dizimo.View.Principal in 'view\uFrm.Dizimo.View.Principal.pas' {frmDizimoPrincipal},
  uFrm.PesqCad.View in 'view\uFrm.PesqCad.View.pas' {frmCadastro},
  uCadastro.Model.Interfaces in 'model\uCadastro.Model.Interfaces.pas',
  uCadastro.Controller.Proxy in 'controller\uCadastro.Controller.Proxy.pas',
  uCadastro.Dizimista.Model in 'model\uCadastro.Dizimista.Model.pas',
  uCadastro.Controller in 'controller\uCadastro.Controller.pas',
  dmCadastro.Conexao in 'dao\dmCadastro.Conexao.pas' {dmConexao: TDataModule},
  dmCadastro.DataSets in 'dao\dmCadastro.DataSets.pas' {dmCadastroDataSet: TDataModule},
  uFrmCadastro.View in 'view\uFrmCadastro.View.pas' {frmDados};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDizimoPrincipal, frmDizimoPrincipal);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.Run;
end.
