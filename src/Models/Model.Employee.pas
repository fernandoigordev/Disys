unit Model.Employee;

interface
uses Model.Base, Model.Store;
Type

TModelEmployee = Class(TModelBase)
  private
    FName: String;
    FOffice: String;
    FAddress: String;
    FNumber: Integer;
    FCity: String;
    FUf: String;
    FStore: TModelStore;
    FAdmissionDate: TDateTime;
    FSummary: String;
  public
    property Name: String read FName Write FName;
    property Office: String read FOffice write FOffice;
    property Address: String read FAddress write FAddress;
    property Number: Integer read FNumber write FNumber;
    property City: String read FCity write FCity;
    property Uf: String read FUf write FUf;
    property Store: TModelStore read FStore write FStore;
    property AdmissionDate: TDateTime read FAdmissionDate write FAdmissionDate;
    property Summary: String read FSummary write FSummary;
End;

implementation

end.
