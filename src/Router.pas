unit Router;

interface
uses Vcl.Controls, Vcl.Forms, View.StoreSearch, View.EmployeeSearch;

type

TPage = (tpStore, tpEmployee);

TRouter = Class
  private
    FContainer: TWinControl;
    FPageStoreSearch: TfrmStoreSearch;
    FPageEmployeeSearch: TfrmEmployeeSearch;
  public
    Constructor Create(AContainer: TWinControl);
    Destructor Destroy;override;
    procedure SetRoute(APage: TPage);
End;

var
  GlobalRouter: TRouter;

implementation


{ TRouter }

constructor TRouter.Create(AContainer: TWinControl);
begin
  FContainer := AContainer;
end;

destructor TRouter.Destroy;
begin
  inherited;
end;

procedure TRouter.SetRoute(APage: TPage);
begin
  case APage of
    tpStore:
    begin
      if (not Assigned(FPageStoreSearch)) or (FPageStoreSearch = nil) then
      begin
        FPageStoreSearch := TfrmStoreSearch.Create(Application);
        FPageStoreSearch.Parent := FContainer;
        FPageStoreSearch.Align := alClient;
      end;
      if Not FPageStoreSearch.Showing then
        FPageStoreSearch.Show;

      FPageStoreSearch.BringToFront;
    end;
    tpEmployee:
    begin
      if (not Assigned(FPageEmployeeSearch)) or (FPageEmployeeSearch = nil) then
      begin
        FPageEmployeeSearch := TfrmEmployeeSearch.Create(Application);
        FPageEmployeeSearch.Parent := FContainer;
        FPageEmployeeSearch.Align := alClient;
      end;

      if Not FPageEmployeeSearch.Showing then
        FPageEmployeeSearch.Show;
      FPageEmployeeSearch.BringToFront;
    end;
  end;

end;


end.
