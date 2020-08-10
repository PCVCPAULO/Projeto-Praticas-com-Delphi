unit clFuncoes;

interface

uses Vcl.Forms, System.SysUtils, System.Classes;

  procedure CriarForm(T : TComponentClass ;Form : TForm);
  procedure FechaFormEsc(var Key : Char; Form : TForm);
  function Ret_Numero(Key: Char; Texto: string; EhDecimal: Boolean = False): Char;

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

procedure FechaFormEsc(var Key : Char; Form : TForm);
begin
  if key = #27 then Form.Close;
end;


function  Ret_Numero(Key: Char; Texto: string; EhDecimal: Boolean = False): Char;
begin
  if  not EhDecimal then

    begin

      { Chr(8) = Back Space }

      if  not ( Key in ['0'..'9', Chr(8)] ) then
          Key := #0
    end
    else
    begin
       if  Key = #46 then
           Key := ',';

       if  not ( Key in ['0'..'9', Chr(8), ','] ) then
           Key := #0
       else
       if  ( Key = ',') and ( Pos( Key, Texto ) > 0 ) then
           Key := #0 ;
    end;

  Result := Key;

end;

end.
