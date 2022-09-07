unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, frxClass, frxDBSet;

type
  TfrmViewMain = class(TForm)
    pnlContainer: TPanel;
    pnlMenu: TPanel;
    imgLogo: TImage;
    pnlTop: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    pnlStore: TPanel;
    pnlEmployee: TPanel;
    Image1: TImage;
    Image2: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    pnlClose: TPanel;
    Image3: TImage;
    SpeedButton3: TSpeedButton;
    pnlReport: TPanel;
    Image4: TImage;
    SpeedButton4: TSpeedButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmViewMain: TfrmViewMain;

implementation
uses Router, UDm;

{$R *.dfm}
procedure TfrmViewMain.FormCreate(Sender: TObject);
begin
  GlobalRouter := TRouter.Create(pnlContainer);
end;

procedure TfrmViewMain.SpeedButton1Click(Sender: TObject);
begin
  GlobalRouter.SetRoute(tpStore);
end;

procedure TfrmViewMain.SpeedButton2Click(Sender: TObject);
begin
  GlobalRouter.SetRoute(tpEmployee);
end;

procedure TfrmViewMain.SpeedButton3Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente sair?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
    Application.Terminate;
end;

procedure TfrmViewMain.SpeedButton4Click(Sender: TObject);
begin
  try
    Dm.QReport.Close;
    Dm.QReport.Open;
    frxReport1.ShowReport;
  finally
    Dm.QReport.Open;
  end;
end;

End.                                                                           x
