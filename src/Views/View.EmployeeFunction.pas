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
    edDate: TDBEdit;
    DBMemo1: TDBMemo;
    Label10: TLabel;
    edOffice: TDBEdit;
    cbbStore: TDBLookupComboBox;
    dsList: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    function Validate: Boolean;override;
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

function TfrmViewEmployeeFunction.Validate: Boolean;
begin
  Result := True;
  if edName.Text = EmptyStr then
  begin
    MessageDlg('Nome inválido', mtError, [mbOK],0);
    edName.SetFocus;
    Result := False;
  end;

  if Result and (cbbStore.Text = EmptyStr) then
  begin
    MessageDlg('Empresa inválida', mtError, [mbOK],0);
    cbbStore.SetFocus;
    Result := False;
  end;

  if Result and (edOffice.Text = EmptyStr) then
  begin
    MessageDlg('Cargo inválido', mtError, [mbOK],0);
    edOffice.SetFocus;
    Result := False;
  end;

  if Result and (edDate.Text = '  /  /    ') then
  begin
    MessageDlg('Data de Admissão inválida', mtError, [mbOK],0);
    edDate.SetFocus;
    Result := False;
  end;

  if Result and (edAddress.Text = EmptyStr) then
  begin
    MessageDlg('Endereço inválido', mtError, [mbOK],0);
    edAddress.SetFocus;
    Result := False;
  end;

  if Result and (cbbUf.Text = EmptyStr) then
  begin
    MessageDlg('UF inválida', mtError, [mbOK],0);
    cbbUf.SetFocus;
    Result := False;
  end;

  if Result and (edCity.Text = EmptyStr) then
  begin
    MessageDlg('Cidade inválida', mtError, [mbOK],0);
    edCity.SetFocus;
    Result := False;
  end;
end;

end.
