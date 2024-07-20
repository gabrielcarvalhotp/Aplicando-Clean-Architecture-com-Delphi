unit Core.UseCases.Customer;

interface

uses
  Core.Port.Customer,
  Core.Response,
  Core.Models.Customer,
  Core.DTO.Customer,
  Core.Enums.ResponseMessage;

type
  TCustomerUseCase = class(TInterfacedObject, ICustomerUseCase)
  private
    { private }
  public
    { public }
    constructor Create;
    destructor Destroy; override;
    class function New: ICustomerUseCase;
    function CreateCustomer(ACustomer: TCustomer): TResponse;
    function Find(ACustomerDTO: TCustomerDTO): TResponse;
    function Update(ACustomer: TCustomer): TResponse;
    function Delete(AId: Integer): TResponse;
  end;

implementation

uses
  Core.Utils.HandleException,
  System.SysUtils;

{ TCustomerUseCase }

constructor TCustomerUseCase.Create;
begin

end;

function TCustomerUseCase.CreateCustomer(ACustomer: TCustomer): TResponse;
var
  LResponse: TResponse;
begin
  try
    ACustomer.RulesBusinessValidation;
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

function TCustomerUseCase.Delete(AId: Integer): TResponse;
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

destructor TCustomerUseCase.Destroy;
begin
  inherited;

end;

function TCustomerUseCase.Find(ACustomerDTO: TCustomerDTO): TResponse;
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

class function TCustomerUseCase.New: ICustomerUseCase;
begin
  Result := Self.Create;
end;

function TCustomerUseCase.Update(ACustomer: TCustomer): TResponse;
var
  LResponse: TResponse;
begin
  try
    ACustomer.RulesBusinessValidation;
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
