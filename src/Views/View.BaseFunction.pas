unit View.BaseFunction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    pnlTop: TPanel;
    Label1: TLabel;
    pnlbuttonsTop: TPanel;
    Image1: TImage;
    pnlButtonRight: TPanel;
    btnClose: TSpeedButton;
    btnOk: TSpeedButton;
    btnRestore: TSpeedButton;
    DBNavigator: TDBNavigator;
    pnlContainer: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
