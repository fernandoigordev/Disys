unit View.BaseFunction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, Data.DB, Datasnap.DBClient, Controller.Base;

type
  TTypeControls = (tcFilter, tcCreate, tcUpdate, tcSearch);

  TfrmViewBaseFunction = class(TForm)
    pnlTop: TPanel;
    Label1: TLabel;
    pnlbuttonsTop: TPanel;
    pnlButtonRight: TPanel;
    DBNavigator: TDBNavigator;
    pnlContainer: TPanel;
    dsFunction: TDataSource;
    pnlClose: TPanel;
    imgClose: TImage;
    ShapeClose: TShape;
    SpeedButton1: TSpeedButton;
    pnlOk: TPanel;
    imgOk: TImage;
    ShapeOk: TShape;
    btnOk: TSpeedButton;
    pnlRestore: TPanel;
    imgRestore: TImage;
    ShapeRestore: TShape;
    btnRestore: TSpeedButton;
    procedure Image1Click(Sender: TObject);
    procedure btnRestoreClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
    FCurrentControl: TTypeControls;
    FController: TControllerBase;
  public
    { Public declarations }
    Constructor Create(AController: TControllerBase);
    procedure SetOperation(ATypeControls: TTypeControls);
  end;

var
  frmViewBaseFunction: TfrmViewBaseFunction;

implementation
uses Router;

{$R *.dfm}

procedure TfrmViewBaseFunction.btnOkClick(Sender: TObject);
begin
  case FCurrentControl of
    tcCreate:
    begin
      dsFunction.DataSet.Post;
      FController.CreateItem;
    end;
    tcUpdate:
    begin
      dsFunction.DataSet.Post;
      FController.UpdateItem;
    end;
    tcSearch:
    begin
      dsFunction.DataSet.First;
    end;
  end;
  Close;
end;

procedure TfrmViewBaseFunction.btnRestoreClick(Sender: TObject);
begin
  dsFunction.DataSet.Cancel;
  dsFunction.DataSet.Edit;
end;

Constructor TfrmViewBaseFunction.Create(AController: TControllerBase);
begin
  inherited Create(Application);
  FController := AController;
  dsFunction.DataSet := FController.CdsBase;
end;

procedure TfrmViewBaseFunction.Image1Click(Sender: TObject);
begin
  Close;
end;


procedure TfrmViewBaseFunction.SetOperation(ATypeControls: TTypeControls);
begin
  FCurrentControl := ATypeControls;
  case ATypeControls of
    tcFilter, tcCreate:
    begin
      DBNavigator.Visible := False;
      pnlRestore.Visible := False;
      if ATypeControls = tcCreate then
        dsFunction.DataSet.Append;
    end;
    tcUpdate:
    begin
      DBNavigator.Visible := False;
      pnlRestore.Visible := True;
      dsFunction.DataSet.Edit;
    end;
    tcSearch:
    begin
      DBNavigator.Visible := True;
      pnlRestore.Visible := False;
    end;
  end;
  Self.ShowModal;
end;

End.
