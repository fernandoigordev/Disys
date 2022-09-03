program Disys;

uses
  Vcl.Forms,
  View.Main in 'src\Views\View.Main.pas' {frmViewMain},
  Vcl.Themes,
  Vcl.Styles,
  View.BaseSearch in 'src\Views\View.BaseSearch.pas' {frmBaseSearch},
  View.BaseFunction in 'src\Views\View.BaseFunction.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmViewMain, frmViewMain);
  Application.CreateForm(TfrmBaseSearch, frmBaseSearch);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
