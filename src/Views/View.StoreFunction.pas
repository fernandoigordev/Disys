unit View.StoreFunction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.BaseFunction, Data.DB,
  Datasnap.DBClient, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmViewStoreFunction = class(TfrmViewBaseFunction)
    edName: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    edAddress: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    edNumber: TDBEdit;
    Label6: TLabel;
    edCity: TDBEdit;
    cbbUf: TDBComboBox;
  private
    { Private declarations }
  protected
    function Validate: Boolean;override;
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

{ TfrmViewStoreFunction }

function TfrmViewStoreFunction.Validate: Boolean;
begin
  Result := True;
  if edName.Text = EmptyStr then
  begin
    MessageDlg('Nome da empresa inválido', mtError, [mbOK],0);
    edName.SetFocus;
    Result := False;
  end;

  if Result and (edAddress.Text = EmptyStr) then
  begin
    MessageDlg('Endereço da empresa inválido', mtError, [mbOK],0);
    edAddress.SetFocus;
    Result := False;
  end;

  if Result and (cbbUf.Text = EmptyStr) then
  begin
    MessageDlg('UF da empresa inválida', mtError, [mbOK],0);
    cbbUf.SetFocus;
    Result := False;
  end;

  if Result and (edCity.Text = EmptyStr) then
  begin
    MessageDlg('Cidade da empresa inválida', mtError, [mbOK],0);
    edCity.SetFocus;
    Result := False;
  end;
end;

end.
