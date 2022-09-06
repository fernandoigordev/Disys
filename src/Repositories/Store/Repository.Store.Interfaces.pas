unit Repository.Store.Interfaces;

interface
uses Model.Store, System.Generics.Collections;

type
IRepositoryStore = interface
  procedure CreateStore(AModelStore: TModelStore);
  function ReadAllStores: TObjectList<TModelStore>;
  procedure UpdateStore(AModelStore: TModelStore);
  procedure DeleteStore(AId: Integer);
end;

implementation

end.
