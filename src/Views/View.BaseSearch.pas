unit View.BaseSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmBaseSearch = class(TForm)
    pnlTop: TPanel;
    pnlbuttonsTop: TPanel;
    Image1: TImage;
    Label1: TLabel;
    pnlContainer: TPanel;
    pnlButtonRight: TPanel;
    btnClose: TSpeedButton;
    btnSearch: TSpeedButton;
    btnDelete: TSpeedButton;
    btnAlter: TSpeedButton;
    btnAdd: TSpeedButton;
    btnAll: TSpeedButton;
    btnFilter: TSpeedButton;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseSearch: TfrmBaseSearch;

implementation

{$R *.dfm}

end.
