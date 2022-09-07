unit Controller.Employee;

interface
uses Datasnap.DBClient, Controller.Base, UDm, Repository.Employee.Interfaces;

type
TControllerEmployee = Class(TControllerBase)
  private
    FRepositoryEmployee: IRepositoryEmployee;
  public
    procedure CreateItem;override;
    procedure ReadAllItems;override;
    procedure UpdateItem;override;
    procedure DeleteItem;override;
    procedure SetRepository;override;
End;

implementation
uses System.SysUtils, Model.Employee, Model.Store, System.Generics.Collections, Repository.Employee.SqlServer;

{ TControllerEmployee }

procedure TControllerEmployee.CreateItem;
var
  Employee: TModelEmployee;
  Store: TModelStore;
begin
  try
    Employee := TModelEmployee.Create;
    Employee.Office := FCdsBase.FieldByName('Office').AsString;
    Employee.Name := FCdsBase.FieldByName('Name').AsString;
    Employee.Address := FCdsBase.FieldByName('Address').AsString;
    Employee.Number := FCdsBase.FieldByName('Number').AsInteger;
    Employee.City := FCdsBase.FieldByName('City').AsString;
    Employee.Uf := FCdsBase.FieldByName('Uf').AsString;
    Employee.AdmissionDate := FCdsBase.FieldByName('AdmissionDate').AsDateTime;
    Employee.Summary := FCdsBase.FieldByName('Summary').AsString;

    Store := TModelStore.Create(FCdsBase.FieldByName('StoreId').AsInteger);
    Employee.Store := Store;

    FRepositoryEmployee.CreateEmployee(Employee);
  Except
    on E: Exception do
    begin
      raise Exception.Create(Concat('Erro ao Salvar Funcionário', #13#13, E.Message));
    end;
  end;
end;

procedure TControllerEmployee.DeleteItem;
begin
  try
    FRepositoryEmployee.DeleteEmployee(FCdsBase.FieldByName('Id').AsInteger)
  Except
    on E: Exception do
    begin
      raise Exception.Create(Concat('Erro ao Excluir Funcionário', #13#13, E.Message));
    end;
  end;

end;

procedure TControllerEmployee.ReadAllItems;
var
  Employee: TModelEmployee;
  ListEmployee: TObjectList<TModelEmployee>;
begin
  FCdsBase.EmptyDataSet;
  FCdsBase.DisableControls;
  try
    ListEmployee := FRepositoryEmployee.ReadAllEmployees;
    if ListEmployee <> nil then
    begin
      FCdsBase.Open;

      for Employee in ListEmployee do
      begin
        FCdsBase.Append;
        FCdsBase.FieldByName('Id').AsInteger := Employee.Id;
        FCdsBase.FieldByName('Office').AsString := Employee.Office;
        FCdsBase.FieldByName('Name').AsString := Employee.Name;
        FCdsBase.FieldByName('Address').AsString := Employee.Address;
        FCdsBase.FieldByName('Number').AsInteger := Employee.Number;
        FCdsBase.FieldByName('City').AsString := Employee.City;
        FCdsBase.FieldByName('Uf').AsString := Employee.Uf;
        FCdsBase.FieldByName('StoreId').AsInteger := Employee.Store.Id;
        FCdsBase.FieldByName('Store').AsString := Employee.Store.Name;
        FCdsBase.FieldByName('AdmissionDate').AsDateTime := Employee.AdmissionDate;
        FCdsBase.FieldByName('Summary').AsString := Employee.Summary;
        FCdsBase.Post;
      end;
    end;
  finally
    FCdsBase.EnableControls;
  end;
end;

procedure TControllerEmployee.SetRepository;
begin
  FRepositoryEmployee := TRepositoryEmployeeSqlServer.Create(Dm.FDConnection1);

end;

procedure TControllerEmployee.UpdateItem;
var
  Employee: TModelEmployee;
  Store: TModelStore;
begin
  try
    Employee := TModelEmployee.Create(FCdsBase.FieldByName('Id').AsInteger);
    Employee.Office := FCdsBase.FieldByName('Office').AsString;
    Employee.Name := FCdsBase.FieldByName('Name').AsString;
    Employee.Address := FCdsBase.FieldByName('Address').AsString;
    Employee.Number := FCdsBase.FieldByName('Number').AsInteger;
    Employee.City := FCdsBase.FieldByName('City').AsString;
    Employee.Uf := FCdsBase.FieldByName('Uf').AsString;
    Employee.AdmissionDate := FCdsBase.FieldByName('AdmissionDate').AsDateTime;
    Employee.Summary := FCdsBase.FieldByName('Summary').AsString;

    Store := TModelStore.Create(FCdsBase.FieldByName('StoreId').AsInteger);
    Employee.Store := Store;

    FRepositoryEmployee.UpdateEmployee(Employee);
  Except
    on E: Exception do
    begin
      raise Exception.Create(Concat('Erro ao Editar Funcionário', #13#13, E.Message));
    end;
  end;
end;

end.
