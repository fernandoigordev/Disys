unit View.StoreSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.BaseSearch, Data.DB,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Controller.Store, View.StoreFunction;

type
  TfrmStoreSearch = class(TfrmBaseSearch)
    cdsSearchId: TIntegerField;
    cdsSearchName: TStringField;
    cdsSearchAddress: TStringField;
    cdsSearchNumber: TIntegerField;
    cdsSearchCity: TStringField;
    cdsSearchUf: TStringField;
  private
    { Private declarations }
  protected
    procedure CreateController;override;
    procedure CreatePageFunction;override;
  public
    { Public declarations }
  end;

implementation

uses UDm;

{$R *.dfm}

{ TfrmStoreSearch }

procedure TfrmStoreSearch.CreateController;
begin
  FControllerBase := TControllerStore.Create(cdsSearch);
end;

procedure TfrmStoreSearch.CreatePageFunction;
begin
  FPageFunction := TfrmViewStoreFunction.Create(FControllerBase);
end;

end.
