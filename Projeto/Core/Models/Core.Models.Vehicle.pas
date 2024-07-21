unit Core.Models.Vehicle;

interface

uses
  Core.Enums.VehicleStatus,
  Core.Exceptions.VehicleExceptions;

type
  TVehicle = class
  private
    { Private declarations }
    FId: Integer;
    FName: string;
    FLicensePlate: string;
    FStatus: TVehicleStatus;
    FValue: Currency;
  public
    { Public declarations }
    constructor Create;
    destructor Destroy; override;
    property Id: Integer read FId write FId;
    property Name: string read FName write FName;
    property LicensePlate: string read FLicensePlate write FLicensePlate;
    property Value: Currency read FValue write FValue;
    property Status: TVehicleStatus read FStatus write FStatus;

    procedure RulesBusinessValidation;
  end;

implementation

{ TVehicle }

uses
  System.SysUtils,
  System.StrUtils;

constructor TVehicle.Create;
begin

end;

destructor TVehicle.Destroy;
begin
  inherited;

end;

procedure TVehicle.RulesBusinessValidation;
begin
  if Trim(FName).IsEmpty then
    raise TVehicleNameException.Create('Nome deve ser informado');

  if Trim(FName).Length < 3 then
    raise TVehicleNameSizeException.Create('Nome deve ser maior que 3 caracteres');

  if Trim(FLicensePlate).IsEmpty then
    raise TVehiclePlaceException.Create('Placa deve ser informada');

  if Trim(FLicensePlate).Length < 6  then
    raise TVehiclePlaceSizeException.Create('Placa deve ser maior que 6 caracteres');

  if FValue <= 0 then
    raise TVehiclePriceException.Create('Valor deve ser informado');
end;

end.
