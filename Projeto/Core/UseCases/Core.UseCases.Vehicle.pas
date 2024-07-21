unit Core.UseCases.Vehicle;

interface

uses
  Core.Port.Vehicle,
  Core.Response,
  Core.Models.Vehicle,
  Core.DTO.Vehicle,
  Core.Enums.ResponseMessage;

type
  TVehicleUseCase = class(TInterfacedObject, IVehicleUseCase)
  private
    { private }
  public
    { public }
    constructor Create;
    destructor Destroy; override;
    class function New: IVehicleUseCase;
    function CreateVehicle(AVehicle: TVehicle): TResponse;
    function Find(AVehicleDTO: TVehicleDTO): TResponse;
    function Update(AVehicle: TVehicle): TResponse;
    function Delete(AId: Integer): TResponse;
  end;

implementation

uses
  Core.Utils.HandleException,
  System.SysUtils;

{ TVehicleUseCase }

constructor TVehicleUseCase.Create;
begin

end;

function TVehicleUseCase.CreateVehicle(AVehicle: TVehicle): TResponse;
var
  LResponse: TResponse;
begin
  try
    AVehicle.RulesBusinessValidation;
    LResponse.Sucess := True;
    LResponse.ErrorCode := 0;
    LResponse.Message := rmRegisteredSuccessfully.Message;
    LResponse.Data := nil;
  except
    on E: Exception do
      LResponse := Handle(E);
  end;
  Result := LResponse;
end;

function TVehicleUseCase.Delete(AId: Integer): TResponse;
var
  LResponse: TResponse;
begin
  try
    LResponse.Sucess := True;
    LResponse.ErrorCode := 0;
    LResponse.Message := rmDeletedSuccessfully.Message;
    LResponse.Data := nil;
  except
    on E: Exception do
      LResponse := Handle(E);
  end;
  Result := LResponse;
end;

destructor TVehicleUseCase.Destroy;
begin
  inherited;

end;

function TVehicleUseCase.Find(AVehicleDTO: TVehicleDTO): TResponse;
var
  LResponse: TResponse;
begin
  try
    LResponse.Sucess := True;
    LResponse.ErrorCode := 0;
    LResponse.Message := rmConsultationCompletedSuccessfully.Message;
    LResponse.Data := nil;
  except
    on E: Exception do
      LResponse := Handle(E);
  end;
  Result := LResponse;
end;

class function TVehicleUseCase.New: IVehicleUseCase;
begin
  Result := Self.Create;
end;

function TVehicleUseCase.Update(AVehicle: TVehicle): TResponse;
var
  LResponse: TResponse;
begin
  try
    AVehicle.RulesBusinessValidation;
    LResponse.Sucess := True;
    LResponse.ErrorCode := 0;
    LResponse.Message := rmChangedSuccessfully.Message;
    LResponse.Data := nil;
  except
    on E: Exception do
      LResponse := Handle(E);
  end;
  Result := LResponse;
end;

end.
