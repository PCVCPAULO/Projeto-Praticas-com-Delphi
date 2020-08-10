unit U_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrm_Principal = class(TForm)
    pnl_Botoes: TPanel;
    pnl_Imagem: TPanel;
    spb_CadCliente: TSpeedButton;
    spd_PDV: TSpeedButton;
    btn_Sair: TSpeedButton;
    procedure spd_PDVClick(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses U_pesquisaProd, U_pdv;

procedure TFrm_Principal.spd_PDVClick(Sender: TObject);
begin
  try
     Frm_PDV := TFrm_PDV.Create(Application);
     Frm_PDV.ShowModal;
  finally
     FreeAndNil(Frm_PDV);
  end;
end;

procedure TFrm_Principal.btn_SairClick(Sender: TObject);
begin
   Close;
end;

end.
