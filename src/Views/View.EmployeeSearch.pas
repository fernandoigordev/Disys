unit View.EmployeeSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.BaseSearch, Data.DB,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls;

type
  TfrmEmployeeSearch = class(TfrmBaseSearch)
    cdsSearchName: TStringField;
    cdsSearchOffice: TStringField;
    cdsSearchAddress: TStringField;
    cdsSearchNumber: TIntegerField;
    cdsSearchCity: TStringField;
    cdsSearchUf: TStringField;
    cdsSearchStore: TStringField;
    cdsSearchStoreId: TIntegerField;
    cdsSearchAdmissionDate: TDateField;
    cdsSearchSummary: TStringField;
    cdsSearchId: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreateController;override;
    procedure CreatePageFunction;override;
  end;

var
  frmEmployeeSearch: TfrmEmployeeSearch;

implementation
uses View.EmployeeFunction, Controller.Employee;

{$R *.dfm}

{ TfrmEmployeeSearch }

procedure TfrmEmployeeSearch.CreateController;
begin
  FControllerBase := TControllerEmployee.Create(cdsSearch);
end;

procedure TfrmEmployeeSearch.CreatePageFunction;
begin
  FPageFunction := TfrmViewEmployeeFunction.Create(FControllerBase);
end;

end.
