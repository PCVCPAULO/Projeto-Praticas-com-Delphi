unit uClasses;

interface

uses Vcl.Forms, System.SysUtils, System.Classes,
     Vcl.DBGrids, Vcl.Grids, System.Types,
     Data.DB, Datasnap.DBClient;

  procedure CriarForm(T : TComponentClass ;Form : TForm);
  procedure ZebrarDBGrid(DataSource : TDataSource; Sender : TDBGrid; State : TGridDrawState; Rect : TRect; Column : TColumn);

implementation


procedure CriarForm(T : TComponentClass ;Form : TForm);
begin
    Application.CreateForm(T,Form);
    try
      Form.ShowModal;
    finally
      FreeAndNil(Form);
    end;
end;


procedure ZebrarDBGrid(DataSource : TDataSource; Sender : TDBGrid; State : TGridDrawState; Rect : TRect; Column : TColumn);
begin
  If not odd(DataSource.DataSet.RecNo) then
  begin
    If not (gdSelected in State) then
	begin
	  Sender.Canvas.Brush.Color := $00FFEFDF;
	  Sender.Canvas.FillRect(Rect);
	  Sender.DefaultDrawDataCell(rect,Column.Field,State);
	end;
  end;
end;



end.
