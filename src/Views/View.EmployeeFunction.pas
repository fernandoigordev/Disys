unit View.EmployeeFunction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.BaseFunction, Data.DB, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmViewEmployeeFunction = class(TfrmViewBaseFunction)
    Label2: TLabel;
    edName: TDBEdit;
    Label3: TLabel;
    edAddress: TDBEdit;
    Label4: TLabel;
    cbbUf: TDBComboBox;
    Label6: TLabel;
    Label5: TLabel;
    EdNumber: TDBEdit;
    edCity: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    Label10: TLabel;
    edOffice: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    dsList: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmViewEmployeeFunction: TfrmViewEmployeeFunction;

implementation
uses UDm;

{$R *.dfm}

procedure TfrmViewEmployeeFunction.FormShow(Sender: TObject);
begin
  inherited;
  dsList.DataSet.Close;
  dsList.DataSet.Open;
end;

end.
