unit Model.Base;

interface
type

TModelBase = Class
  private
    FId: Integer;
  public
    property Id: Integer read FId;
    Constructor Create(AId: Integer = 0);
End;

implementation

{ TModelBase }

constructor TModelBase.Create(AId: Integer);
begin
  FId := AId;
end;

end.
