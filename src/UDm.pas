unit UDm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Phys.MSSQLDef, FireDAC.Phys.ODBCBase,
  FireDAC.Phys.MSSQL, Data.DB, FireDAC.Comp.Client;

type
  TDm = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ConfigConnection;
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation
uses IniFiles, Vcl.Forms, Vcl.Dialogs;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDm }

procedure TDm.ConfigConnection;
var
  Config: TIniFile;
  PathFile: String;
begin
  PathFile := Concat(ExtractFilePath(Application.ExeName), 'config.ini');
  if FileExists(PathFile) then
  begin
    Config := TIniFile.Create(PathFile);
    try
      FDConnection1.Connected := False;
      FDConnection1.LoginPrompt := False;
      FDConnection1.Params.DriverID := Config.ReadString('Database', 'Drive_id', '');

      if SameText(FDConnection1.Params.DriverID, 'SQLite') then
        FDConnection1.Params.Database := Config.ReadString('Database', 'Database', '')
      else
      begin
        FDConnection1.Params.Database := Config.ReadString('Database', 'Database', '');
        FDConnection1.Params.UserName := Config.ReadString('Database', 'User_name', '');
        FDConnection1.Params.Password := Config.ReadString('Database', 'Password', '');
        FDConnection1.Params.Add(Concat('Server=',Config.ReadString('Database', 'Server', '')));
        FDConnection1.Params.Add(Concat('Port=',Config.ReadString('Database', 'Port', '')));
      end;

      try
        FDConnection1.Connected := True;
      Except
        on E: Exception do
        begin
          MessageDlg(Concat(E.Message, #13#13, 'Erro ao conectar com o banco de dados revise as configurações no arquivo de configuração e execute novamente o sistema!'), mtError, [TMsgDlgBtn.mbOK], 0);
          Application.Terminate;
        end;
      end;
    finally
      Config.Free;
    end;
  end
  else
  begin
    MessageDlg(Concat('Arquivo de configuração não encontrado no caminho: ', PathFile), mtError, [TMsgDlgBtn.mbOK], 0);
    Application.Terminate;
  end;
end;

procedure TDm.DataModuleCreate(Sender: TObject);
begin
  ConfigConnection;
end;

end.
