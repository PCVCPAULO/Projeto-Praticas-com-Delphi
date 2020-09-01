unit Unit3.Dizimo.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.CategoryButtons,
  Vcl.WinXCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.WinXPanels, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Datasnap.DBClient;

type
  TfrmLancamentos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel4: TPanel;
    CardPanel1: TCardPanel;
    Card1: TCard;
    Panel2: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Card4: TCard;
    Panel3: TPanel;
    Image5: TImage;
    Image6: TImage;
    Image8: TImage;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    CardPanel2: TCardPanel;
    Card2: TCard;
    DBGrid1: TDBGrid;
    Card3: TCard;
    StackPanel1: TStackPanel;
    StackPanel2: TStackPanel;
    Card5: TCard;
    StackPanel3: TStackPanel;
    SplitView1: TSplitView;
    CategoryButtons1: TCategoryButtons;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLancamentos: TfrmLancamentos;

implementation

{$R *.dfm}

end.
