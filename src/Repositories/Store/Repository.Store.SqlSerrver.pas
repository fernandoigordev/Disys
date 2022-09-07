unit Repository.Store.SqlSerrver;

interface
uses Repository.Store.Interfaces, Model.Store, System.Generics.Collections,
     FireDAC.Comp.Client, FireDAC.DApt;

type
TRepositoryStoreSqlServer = Class(TInterfacedObject, IRepositoryStore)
  private
    FQuery: TFDQuery;
  public
    Constructor Create(AConnection: TFDConnection);
    procedure CreateStore(AModelStore: TModelStore);
    function ReadAllStores: TObjectList<TModelStore>;
    procedure UpdateStore(AModelStore: TModelStore);
    procedure DeleteStore(AId: Integer);
End;

implementation

{ TRepositoryStoreSqlServer }

constructor TRepositoryStoreSqlServer.Create(AConnection: TFDConnection);
begin
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := AConnection;
end;

procedure TRepositoryStoreSqlServer.CreateStore(AModelStore: TModelStore);
begin
  FQuery.Close;
  FQuery.SQL.Text := Concat('INSERT INTO STORE (Name, Address, HouseNumber, City, Uf) ',
                            'VALUES (:Name, :Address, :HouseNumber, :City, :Uf)');
  FQuery.ParamByName('Name').AsString := AModelStore.Name;
  FQuery.ParamByName('Address').AsString := AModelStore.Address;
  FQuery.ParamByName('HouseNumber').AsInteger := AModelStore.Number;
  FQuery.ParamByName('City').AsString := AModelStore.City;
  FQuery.ParamByName('Uf').AsString := AModelStore.Uf;
  FQuery.ExecSQL;
end;

procedure TRepositoryStoreSqlServer.DeleteStore(AId: Integer);
begin
  FQuery.Close;
  FQuery.SQL.Text := 'DELETE FROM STORE WHERE Id =:Id';
  FQuery.ParamByName('Id').AsInteger := AId;
  FQuery.ExecSQL;
end;

function TRepositoryStoreSqlServer.ReadAllStores: TObjectList<TModelStore>;
var
  Index: Integer;
  List: TObjectList<TModelStore>;
begin
  FQuery.Close;
  FQuery.SQL.Text := 'SELECT * FROM STORE';
  FQuery.Open;

  if FQuery.RecordCount > 0 then
  begin
    List := TObjectList<TModelStore>.Create;
    FQuery.First;
    while not FQuery.Eof do
    begin
      Index := List.Add(TModelStore.Create(FQuery.FieldByName('Id').AsInteger));
      List.Items[Index].Name := FQuery.FieldByName('Name').AsString;
      List.Items[Index].Address := FQuery.FieldByName('Address').AsString;
      List.Items[Index].Number := FQuery.FieldByName('HouseNumber').AsInteger;
      List.Items[Index].City := FQuery.FieldByName('City').AsString;
      List.Items[Index].Uf := FQuery.FieldByName('Uf').AsString;
      FQuery.Next;
    end;
    Result := List;
  end
  else
    Result := Nil;
end;

procedure TRepositoryStoreSqlServer.UpdateStore(AModelStore: TModelStore);
begin
  FQuery.Close;
  FQuery.SQL.Text := Concat('UPDATE STORE SET Name=:Name, Address=:Address, HouseNumber=:HouseNumber, City=:City, Uf=:Uf ',
                            'WHERE Id=:Id');
  FQuery.ParamByName('Id').AsInteger := AModelStore.Id;
  FQuery.ParamByName('Name').AsString := AModelStore.Name;
  FQuery.ParamByName('Address').AsString := AModelStore.Address;
  FQuery.ParamByName('HouseNumber').AsInteger := AModelStore.Number;
  FQuery.ParamByName('City').AsString := AModelStore.City;
  FQuery.ParamByName('Uf').AsString := AModelStore.Uf;
  FQuery.ExecSQL;
end;

end.
