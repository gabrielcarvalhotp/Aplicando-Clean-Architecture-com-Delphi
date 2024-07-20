unit Core.Utils.HandleException;

interface

uses
  Core.Response,
  System.SysUtils;

function Handle(E: Exception): TResponse;

implementation

uses
  Core.Exceptions.CustomerExceptions,
  Core.Enums.ErrorCode;

function Handle(E: Exception): TResponse;
var
  LResponse: TResponse;
begin

  LResponse.Sucess := False;
  LResponse.Message := E.Message;
  LResponse.Data := nil;

  if E.ClassType = TCustomerNameException then
    LResponse.ErrorCode := Integer(ecEmptyName);

  if E.ClassType = TCustomerNameSizeException then
    LResponse.ErrorCode := Integer(ecInvalidName);

  if E.ClassType = TCustomerDocumentException then
    LResponse.ErrorCode := Integer(ecEmptyDocument);

  if E.ClassType = TCustomerDocumentSizeException then
    LResponse.ErrorCode := Integer(ecInvalidDocument);

  if E.ClassType = TCustomerPhoneException then
    LResponse.ErrorCode := Integer(ecEmptyPhone);

  if E.ClassType = TCustomerPhoneSizeException then
    LResponse.ErrorCode := Integer(ecInvalidPhone);

  Result := LResponse;
end;

end.