unit Router;

interface
uses Vcl.Controls, Vcl.Forms, View.Main, View.StoreSearch;

type

TPage = (tpMain, tpStore, tpEmployee);

TRouter = Class
  private
    FContainer: TWinControl;
    FPageMain: TfrmViewMain;
    FPageStoreSearch: TfrmStoreSearch;
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
    tpMain:
    begin
      if not Assigned(FPageMain) then
      begin
        FPageMain := TfrmViewMain.Create(Application);
        FPageMain.Parent := FContainer;
        FPageMain.Align := alClient;
        FPageMain.Show;
      end;
     FPageMain.BringToFront;
    end;
    tpStore:
    begin
      if not Assigned(FPageStoreSearch) then
      begin
        FPageStoreSearch := TfrmStoreSearch.Create(Application);
        FPageStoreSearch.Parent := FContainer;
        FPageStoreSearch.Align := alClient;
        FPageStoreSearch.Show;
      end;
     FPageStoreSearch.BringToFront;
    end;
    tpEmployee: ;
  end;

end;


end.
