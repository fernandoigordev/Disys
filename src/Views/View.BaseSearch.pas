unit View.BaseSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Datasnap.DBClient, System.ImageList, Vcl.ImgList, Controller.Base, View.BaseFunction;

type
  TfrmBaseSearch = class(TForm)
    pnlTop: TPanel;
    pnlbuttonsTop: TPanel;
    Label1: TLabel;
    pnlContainer: TPanel;
    pnlButtonRight: TPanel;
    DBGrid1: TDBGrid;
    cdsSearch: TClientDataSet;
    dsSearch: TDataSource;
    pnlFilter: TPanel;
    imgFilter: TImage;
    ShapeFilter: TShape;
    btnFilter: TSpeedButton;
    pnlAll: TPanel;
    imgAll: TImage;
    ShapeAll: TShape;
    btnAll: TSpeedButton;
    pnlAdd: TPanel;
    imgAdd: TImage;
    ShapeAdd: TShape;
    btnAdd: TSpeedButton;
    pnlAlter: TPanel;
    imgAlter: TImage;
    ShapeAlter: TShape;
    btnAlter: TSpeedButton;
    pnlDelete: TPanel;
    imgDelete: TImage;
    ShapeDelete: TShape;
    btnDelete: TSpeedButton;
    pnlSearch: TPanel;
    imgSearch: TImage;
    ShapeSearch: TShape;
    btnSearch: TSpeedButton;
    pnlClose: TPanel;
    imgClose: TImage;
    ShapeClose: TShape;
    btnClose: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnAllClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnAlterClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  protected
    FControllerBase: TControllerBase;
    FPageFunction: TfrmViewBaseFunction;
  public
    { Public declarations }
    procedure CreateController;virtual;abstract;
    procedure CreatePageFunction;virtual;abstract;
  end;

var
  frmBaseSearch: TfrmBaseSearch;

implementation
uses Router;

{$R *.dfm}

procedure TfrmBaseSearch.btnAddClick(Sender: TObject);
begin
  FPageFunction.SetOperation(tcCreate);
  FControllerBase.ReadAllItems;
end;

procedure TfrmBaseSearch.btnAllClick(Sender: TObject);
begin
  FControllerBase.ReadAllItems;
end;

procedure TfrmBaseSearch.btnAlterClick(Sender: TObject);
begin
  FPageFunction.SetOperation(tcUpdate);
  FControllerBase.ReadAllItems;
end;

procedure TfrmBaseSearch.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBaseSearch.btnDeleteClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este item?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
  begin
    FControllerBase.DeleteItem;
    FControllerBase.ReadAllItems;
  end;
end;

procedure TfrmBaseSearch.btnFilterClick(Sender: TObject);
begin
  FPageFunction.SetOperation(tcFilter);
end;

procedure TfrmBaseSearch.btnSearchClick(Sender: TObject);
begin
  FPageFunction.SetOperation(tcSearch);
end;

procedure TfrmBaseSearch.FormCreate(Sender: TObject);
begin
  CreateController;
  CreatePageFunction;
end;

End.
