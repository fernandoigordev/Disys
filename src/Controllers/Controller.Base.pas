unit Controller.Base;

interface
uses Datasnap.DBClient;

type
TControllerBase = Class
  protected
    FCdsBase: TClientDataSet;
  public
    Constructor Create(ACdsBase: TClientDataSet);
    procedure CreateItem;virtual;abstract;
    procedure ReadAllItems;virtual;abstract;
    procedure UpdateItem;virtual;abstract;
    procedure DeleteItem;virtual;abstract;
    procedure SetRepository;virtual;abstract;
    property CdsBase: TClientDataSet read FCdsBase;
End;

implementation

{ TControllerBase }

constructor TControllerBase.Create(ACdsBase: TClientDataSet);
begin
  FCdsBase := ACdsBase;
  SetRepository;
end;

end.
