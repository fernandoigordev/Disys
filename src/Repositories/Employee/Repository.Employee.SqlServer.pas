unit Repository.Employee.SqlServer;

interface
uses Model.Employee, System.Generics.Collections, Repository.Employee.Interfaces,
     FireDAC.Comp.Client, FireDAC.DApt, Model.Store;

type
TRepositoryEmployeeSqlServer = Class(TInterfacedObject, IRepositoryEmployee)
  private
    FQuery: TFDQuery;
  public
    Constructor Create(AConnection: TFDConnection);
    procedure CreateEmployee(AModelEmployee: TModelEmployee);
    function ReadAllEmployees: TObjectList<TModelEmployee>;
    procedure UpdateEmployee(AModelEmployee: TModelEmployee);
    procedure DeleteEmployee(AId: Integer);
End;

implementation

{ TRepositoryEmployee }

constructor TRepositoryEmployeeSqlServer.Create(AConnection: TFDConnection);
begin
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := AConnection;
end;

procedure TRepositoryEmployeeSqlServer.CreateEmployee(AModelEmployee: TModelEmployee);
begin
  FQuery.Close;
  FQuery.SQL.Text := Concat('INSERT INTO EMPLOYEE (Name, Office, Address, HouseNumber, City, Uf, AdmissionDate, Summary, Store_Id) ',
                            'VALUES (:Name, :Office, :Address, :HouseNumber, :City, :Uf, :AdmissionDate, :Summary, :Store_Id)');

  FQuery.ParamByName('Name').AsString   := AModelEmployee.Name;
  FQuery.ParamByName('Office').AsString := AModelEmployee.Office;
  FQuery.ParamByName('Address').AsString    := AModelEmployee.Address;
  FQuery.ParamByName('HouseNumber').AsInteger := AModelEmployee.Number;
  FQuery.ParamByName('City').AsString := AModelEmployee.City;
  FQuery.ParamByName('Uf').AsString   := AModelEmployee.Uf;
  FQuery.ParamByName('AdmissionDate').AsDateTime := AModelEmployee.AdmissionDate;
  FQuery.ParamByName('Summary').AsString  := AModelEmployee.Summary;
  FQuery.ParamByName('Store_Id').AsInteger := AModelEmployee.Store.Id;
  FQuery.ExecSQL;
end;

procedure TRepositoryEmployeeSqlServer.DeleteEmployee(AId: Integer);
begin
  FQuery.Close;
  FQuery.SQL.Text := 'DELETE FROM EMPLOYEE WHERE Id =:Id';
  FQuery.ParamByName('Id').AsInteger := AId;
  FQuery.ExecSQL;
end;

function TRepositoryEmployeeSqlServer.ReadAllEmployees: TObjectList<TModelEmployee>;
var
  Index: Integer;
  List: TObjectList<TModelEmployee>;
  Store: TModelStore;
begin
  FQuery.Close;
  FQuery.SQL.Text := 'SELECT * FROM EMPLOYEE';
  FQuery.Open;

  if FQuery.RecordCount > 0 then
  begin
    List := TObjectList<TModelEmployee>.Create;
    FQuery.First;
    while not FQuery.Eof do
    begin
      Index := List.Add(TModelEmployee.Create(FQuery.FieldByName('Id').AsInteger));
      List.Items[Index].Office := FQuery.FieldByName('Office').AsString;
      List.Items[Index].Name := FQuery.FieldByName('Name').AsString;
      List.Items[Index].Address := FQuery.FieldByName('Address').AsString;
      List.Items[Index].Number := FQuery.FieldByName('HouseNumber').AsInteger;
      List.Items[Index].City := FQuery.FieldByName('City').AsString;
      List.Items[Index].Uf := FQuery.FieldByName('Uf').AsString;
      List.Items[Index].AdmissionDate := FQuery.FieldByName('AdmissionDate').AsDateTime;
      List.Items[Index].Summary := FQuery.FieldByName('Summary').AsString;

      Store := TModelStore.Create(FQuery.FieldByName('Store_Id').AsInteger);
      List.Items[Index].Store := Store;

      FQuery.Next;
    end;
    Result := List;
  end
  else
    Result := Nil;
end;

procedure TRepositoryEmployeeSqlServer.UpdateEmployee(AModelEmployee: TModelEmployee);
begin
  FQuery.Close;
  FQuery.SQL.Text := Concat('UPDATE EMPLOYEE SET Name=:Name, Office=:Office, Address=:Address, HouseNumber=:HouseNumber, ',
                            'City=:City, Uf=:Uf, AdmissionDate=:AdmissionDate, Summary=:Summary, Store_Id=:Store_Id ',
                            'WHERE Id=:Id');

  FQuery.ParamByName('Id').AsInteger := AModelEmployee.Id;
  FQuery.ParamByName('Name').AsString   := AModelEmployee.Name;
  FQuery.ParamByName('Office').AsString := AModelEmployee.Office;
  FQuery.ParamByName('Address').AsString    := AModelEmployee.Address;
  FQuery.ParamByName('HouseNumber').AsInteger := AModelEmployee.Number;
  FQuery.ParamByName('City').AsString := AModelEmployee.City;
  FQuery.ParamByName('Uf').AsString   := AModelEmployee.Uf;
  FQuery.ParamByName('AdmissionDate').AsDateTime := AModelEmployee.AdmissionDate;
  FQuery.ParamByName('Summary').AsString  := AModelEmployee.Summary;
  FQuery.ParamByName('Store_Id').AsInteger := AModelEmployee.Store.Id;
  FQuery.ExecSQL;
end;

end.
