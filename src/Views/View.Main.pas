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
    procedure btnStoreClick(Sender: TObject);
    procedure btnEmployeeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
uses Router;

{$R *.dfm}


procedure TfrmViewMain.btnEmployeeClick(Sender: TObject);
begin
  GlobalRouter.SetRoute(tpEmployee);
end;

procedure TfrmViewMain.btnStoreClick(Sender: TObject);
begin
  GlobalRouter.SetRoute(tpStore);
end;

End.
