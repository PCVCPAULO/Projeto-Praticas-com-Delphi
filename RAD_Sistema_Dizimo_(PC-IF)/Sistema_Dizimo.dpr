program Sistema_Dizimo;

uses
  Vcl.Forms,
  uFrm_Principal in 'VIEW\uFrm_Principal.pas' {frm_Principal},
  uFuncoes in 'CLASSES\uFuncoes.pas',
  uDM_Dados in 'DM\uDM_Dados.pas' {DM_Dados: TDataModule},
  uFrm_CadastroBasico in 'VIEW\uFrm_CadastroBasico.pas' {frm_CadastroBasico},
  uFrm_CadastroUsuarios in 'VIEW\uFrm_CadastroUsuarios.pas' {frm_CadastroUsuarios},
  uClasses in 'CLASSES\uClasses.pas',
  uFrm_Login in 'VIEW\uFrm_Login.pas' {frm_Login},
  uFrm_CadastroDizimista in 'VIEW\uFrm_CadastroDizimista.pas' {frm_Cad_Dizimista},
  uTela_Panel in 'VIEW\uTela_Panel.pas' {frm_Padrao},
  uDM_Relatorios in 'DM\uDM_Relatorios.pas' {DM_Relatorios: TDataModule},
  ufrm_Cad_Lancamentos in 'VIEW\ufrm_Cad_Lancamentos.pas' {frm_Cad_Lancamentos},
  uFrm_ConsultaCadastro in 'VIEW\uFrm_ConsultaCadastro.pas' {frm_ConsultaCadastro},
  uFrm_ConsultaLancamentos in 'VIEW\uFrm_ConsultaLancamentos.pas' {frm_ConsultaLancam},
  uFrm_ConsultaNiver in 'VIEW\uFrm_ConsultaNiver.pas' {frm_ConsultaNiver},
  uFrm_ConsultaNiverConj in 'VIEW\uFrm_ConsultaNiverConj.pas' {frm_ConsultaNiverConj},
  uFrm_ConsultaNiverUniao in 'VIEW\uFrm_ConsultaNiverUniao.pas' {frm_ConsultaNiverUniao},
  uFrm_Gera_Backup in 'VIEW\uFrm_Gera_Backup.pas' {frm_GeraBackup},
  uFrm_Gera_Restore in 'VIEW\uFrm_Gera_Restore.pas' {frm_RestauraBanco};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM_Dados, DM_Dados);
  Application.CreateForm(Tfrm_Principal, frm_Principal);
  Application.Run;
end.
