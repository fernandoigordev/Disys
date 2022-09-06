unit Model.Store;

interface
uses Model.Base;
Type

TModelStore = Class(TModelBase)
  private
    FName: String;
    FAddress: String;
    FNumber: Integer;
    FCity: String;
    FUf: String;
  public
    property Name: String read FName Write FName;
    property Address: String read FAddress write FAddress;
    property Number: Integer read FNumber write FNumber;
    property City: String read FCity write FCity;
    property Uf: String read FUf write FUf;
End;

implementation

end.
