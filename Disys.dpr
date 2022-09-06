program Disys;

uses
  Vcl.Forms,
  View.Main in 'src\Views\View.Main.pas' {frmViewMain},
  Vcl.Themes,
  Vcl.Styles,
  View.BaseSearch in 'src\Views\View.BaseSearch.pas' {frmBaseSearch},
  View.BaseFunction in 'src\Views\View.BaseFunction.pas' {frmViewBaseFunction},
  View.Container in 'src\Views\View.Container.pas' {frmContainer},
  Router in 'src\Router.pas',
  View.StoreSearch in 'src\Views\View.StoreSearch.pas' {frmStoreSearch},
  View.StoreFunction in 'src\Views\View.StoreFunction.pas' {frmViewStoreFunction},
  Model.Store in 'src\Models\Model.Store.pas',
  Controller.Store in 'src\Controllers\Controller.Store.pas',
  Controller.Base in 'src\Controllers\Controller.Base.pas',
  Repository.Store.Interfaces in 'src\Repositories\Store\Repository.Store.Interfaces.pas',
  Repository.Store.SqlSerrver in 'src\Repositories\Store\Repository.Store.SqlSerrver.pas',
  UDm in 'src\UDm.pas' {Dm: TDataModule},
  Model.Base in 'src\Models\Model.Base.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TfrmContainer, frmContainer);
  Application.Run;
end.

