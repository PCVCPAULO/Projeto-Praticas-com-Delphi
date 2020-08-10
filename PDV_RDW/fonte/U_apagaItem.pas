unit U_apagaItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrm_ApagaItem = class(TForm)
    Panel1: TPanel;
    edt_Item: TEdit;
    Label1: TLabel;
    procedure edt_ItemKeyPress(Sender: TObject; var Key: Char);
    procedure edt_ItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ApagaItem: TFrm_ApagaItem;

implementation

{$R *.dfm}

uses U_pdv;

procedure TFrm_ApagaItem.edt_ItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_F4 then
   begin
     Close;
   end;
end;

procedure TFrm_ApagaItem.edt_ItemKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      if Frm_PDV.cds_Itens.Locate('codigo', edt_Item.Text,[]) then
      begin
        Frm_PDV.cds_Itens.Delete;
        edt_Item.Clear;
      end;

   end;
end;

end.
