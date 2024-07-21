unit Core.Utils.HandleException;

interface

uses
  Core.Response,
  System.SysUtils;

function Handle(E: Exception): TResponse;

implementation

uses
  Core.Exceptions.CustomerExceptions,
  Core.Exceptions.VehicleExceptions,
  Core.Enums.CustomerErrorCode,
  Core.Enums.VehicleErrorCode;

procedure HandleCustomersException(AClassType: TClass; var AResponse: TResponse);
begin
  if AClassType = TCustomerNameException then
    AResponse.ErrorCode := Integer(TCustomerErrorCode.ecEmptyName);

  if AClassType = TCustomerNameSizeException then
    AResponse.ErrorCode := Integer(TCustomerErrorCode.ecInvalidName);

  if AClassType = TCustomerDocumentException then
    AResponse.ErrorCode := Integer(TCustomerErrorCode.ecEmptyDocument);

  if AClassType = TCustomerDocumentSizeException then
    AResponse.ErrorCode := Integer(TCustomerErrorCode.ecInvalidDocument);

  if AClassType = TCustomerPhoneException then
    AResponse.ErrorCode := Integer(TCustomerErrorCode.ecEmptyPhone);

  if AClassType = TCustomerPhoneSizeException then
    AResponse.ErrorCode := Integer(TCustomerErrorCode.ecInvalidPhone);
end;

procedure HandleVehicleException(AClassType: TClass; var AResponse: TResponse);
begin
  if AClassType = TVehicleNameException then
    AResponse.ErrorCode := Integer(TVehicleErrorCode.ecEmptyName);

  if AClassType = TVehicleNameSizeException then
    AResponse.ErrorCode := Integer(TVehicleErrorCode.ecInvalidName);

  if AClassType = TVehiclePlaceException then
    AResponse.ErrorCode := Integer(TVehicleErrorCode.ecEmptyPlace);

  if AClassType = TVehiclePlaceSizeException then
    AResponse.ErrorCode := Integer(TVehicleErrorCode.ecInvalidPlace);

  if AClassType = TVehiclePriceException then
    AResponse.ErrorCode := Integer(TVehicleErrorCode.ecEmptyPrice);
end;

function Handle(E: Exception): TResponse;
var
  LResponse: TResponse;
begin

  LResponse.Sucess := False;
  LResponse.Message := E.Message;
  LResponse.Data := nil;

  if E is TCustomerException then
    HandleCustomersException(E.ClassType, LResponse);

  if E is TVehicleException then
    HandleVehicleException(E.ClassType, LResponse);

  Result := LResponse;
end;

end.
