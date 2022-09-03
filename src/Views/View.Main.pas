unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage;

type
  TfrmViewMain = class(TForm)
    pnlContainer: TPanel;
    pnlMenu: TPanel;
    imgLogo: TImage;
    pnlTop: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    shpStore: TShape;
    imgStore: TImage;
    btnStore: TSpeedButton;
    btnEmployee: TSpeedButton;
    imgEmployee: TImage;
    shpEmployee: TShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmViewMain: TfrmViewMain;

implementation

{$R *.dfm}

end.
