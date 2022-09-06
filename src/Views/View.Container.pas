unit View.Container;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmContainer = class(TForm)
    pnlContainer: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContainer: TfrmContainer;

implementation

uses Router;

{$R *.dfm}

procedure TfrmContainer.FormCreate(Sender: TObject);
begin
  GlobalRouter := TRouter.Create(pnlContainer);
end;

procedure TfrmContainer.FormShow(Sender: TObject);
begin
  GlobalRouter.SetRoute(tpMain);
end;

end.
