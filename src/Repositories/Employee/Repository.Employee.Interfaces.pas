unit Repository.Employee.Interfaces;

interface
uses Model.Employee, System.Generics.Collections;

type
IRepositoryEmployee = interface
  procedure CreateEmployee(AModelEmployee: TModelEmployee);
  function ReadAllEmployees: TObjectList<TModelEmployee>;
  procedure UpdateEmployee(AModelEmployee: TModelEmployee);
  procedure DeleteEmployee(AId: Integer);
end;
implementation

end.
