unit Controller.Store;

interface
uses Datasnap.DBClient, Controller.Base, Repository.Store.Interfaces,
     Repository.Store.SqlSerrver, UDm;

type
TControllerStore = Class(TControllerBase)
  private
    FRepositoryStore: IRepositoryStore;
  public
    procedure CreateItem;override;
    procedure ReadAllItems;override;
    procedure UpdateItem;override;
    procedure DeleteItem;override;
    procedure SetRepository;override;
End;

implementation

uses
  Vcl.Dialogs, Model.Store, System.SysUtils, System.Generics.Collections;

{ TControllerStore }

procedure TControllerStore.CreateItem;
var
  Store: TModelStore;
begin
  try
    Store := TModelStore.Create;
    Store.Name := FCdsBase.FieldByName('Name').AsString;
    Store.Address := FCdsBase.FieldByName('Address').AsString;
    Store.Number := FCdsBase.FieldByName('Number').AsInteger;
    Store.City := FCdsBase.FieldByName('City').AsString;
    Store.Uf := FCdsBase.FieldByName('Uf').AsString;

    FRepositoryStore.CreateStore(Store)
  Except
    on E: Exception do
    begin
      raise Exception.Create(Concat('Erro ao Salvar a loja', #13#13, E.Message));
    end;
  end;
end;

procedure TControllerStore.DeleteItem;
begin
  try
    FRepositoryStore.DeleteStore(FCdsBase.FieldByName('Id').AsInteger)
  Except
    on E: Exception do
    begin
      raise Exception.Create(Concat('Erro ao Deletar a loja', #13#13, E.Message));
    end;
  end;
end;

procedure TControllerStore.ReadAllItems;
var
  Store: TModelStore;
  ListStore: TObjectList<TModelStore>;
begin
  FCdsBase.EmptyDataSet;
  FCdsBase.DisableControls;
  try
    ListStore := FRepositoryStore.ReadAllStores;
    if ListStore <> nil then
    begin
      FCdsBase.Open;

      for Store in ListStore do
      begin
        FCdsBase.Append;
        FCdsBase.FieldByName('Id').AsInteger := Store.Id;
        FCdsBase.FieldByName('Name').AsString := Store.Name;
        FCdsBase.FieldByName('Address').AsString := Store.Address;
        FCdsBase.FieldByName('Number').AsInteger := Store.Number;
        FCdsBase.FieldByName('City').AsString := Store.City;
        FCdsBase.FieldByName('Uf').AsString := Store.Uf;
        FCdsBase.Post;
      end;
    end;
  finally
    FCdsBase.EnableControls;
  end;
end;

procedure TControllerStore.SetRepository;
begin
  FRepositoryStore := TRepositoryStoreSqlServer.Create(Dm.FDConnection1);
end;

procedure TControllerStore.UpdateItem;
var
  Store: TModelStore;
begin
  try
    Store := TModelStore.Create(FCdsBase.FieldByName('Id').AsInteger);
    Store.Name := FCdsBase.FieldByName('Name').AsString;
    Store.Address := FCdsBase.FieldByName('Address').AsString;
    Store.Number := FCdsBase.FieldByName('Number').AsInteger;
    Store.City := FCdsBase.FieldByName('City').AsString;
    Store.Uf := FCdsBase.FieldByName('Uf').AsString;

    FRepositoryStore.UpdateStore(Store)
  Except
    on E: Exception do
    begin
      raise Exception.Create(Concat('Erro ao Editar a loja', #13#13, E.Message));
    end;
  end;
end;

end.
