unit Core.Models.Customer;

interface

type
  TCustomer = class
  private
    FId: Integer;
    FName: string;
    FDocument: string;
    FAddress: string;
    FPhone: string;
  public
    property Id: Integer read FId write FId;
    property Name: string read FName write FName;
    property Document: string read FDocument write FDocument;
    property Address: string read FAddress write FAddress;
    property Phone: string read FPhone write FPhone;

    procedure RulesBusinessValidation;
  end;

implementation

uses
  System.SysUtils, Core.Exceptions.CustomerExceptions;

{ TCustomer }

procedure TCustomer.RulesBusinessValidation;
begin
  if Trim(FName).IsEmpty then
    raise TCustomerNameException.Create('Nome deve ser informado');

  if Length(FName) < 4 then
    raise TCustomerNameSizeException.Create('Nome deve conter no minímo 4 caracteres');

  if Trim(FDocument).IsEmpty then
    raise TCustomerDocumentException.Create('Documento deve ser informado');

  if Length(FDocument) <= 4 then
    raise TCustomerDocumentSizeException.Create('Documento deve conter no minímo 5 caracteres');

  if Trim(FPhone).IsEmpty then
    raise TCustomerPhoneException.Create('Telefone deve ser informado');

  if Length(FPhone) <= 4 then
    raise TCustomerPhoneSizeException.Create('Telefone deve conter no minímo 5 caracteres');
end;

end.
