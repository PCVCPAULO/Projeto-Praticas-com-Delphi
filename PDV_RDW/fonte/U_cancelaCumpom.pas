unit U_cancelaCumpom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrm_CancelaCupom = class(TForm)
    Panel1: TPanel;
    edt_Senha: TEdit;
    Label1: TLabel;
    procedure edt_SenhaKeyPress(Sender: TObject; var Key: Char);
    procedure edt_SenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CancelaCupom: TFrm_CancelaCupom;

implementation

{$R *.dfm}

uses U_pdv;

procedure TFrm_CancelaCupom.edt_SenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_F5 then
   begin
     Close;
   end;
end;

procedure TFrm_CancelaCupom.edt_SenhaKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
     if not (edt_Senha.Text = 'admin') then
      begin
         ShowMessage('Senha Inválida, tente novamente!');
         edt_Senha.Clear;
         edt_Senha.SetFocus;
         Exit;
      end else
         Frm_pdv.cds_Itens.EmptyDataSet;
         Frm_pdv.edt_CODIGO.Clear;
         Frm_pdv.edt_QTD.Clear;
         Frm_pdv.edt_Preco.Clear;
         Frm_pdv.edt_TotalItem.Caption := '';
         Frm_pdv.lbl_pdv.Caption := 'CAIXA PDV-CUPOM CANCELADO / F3 NOVA VENDA';
         ShowMessage('CUMPOM CANCELADO COM CONSUSSO!');
   end;
end;

end.
