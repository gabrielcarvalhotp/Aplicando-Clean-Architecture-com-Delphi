unit Core.UseCases.Customer;

interface

uses
  Core.Port.Customer, Core.Response, Core.Models.Customer, Core.DTO.Customer;

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

{ TCustomerUseCase }

constructor TCustomerUseCase.Create;
begin

end;

function TCustomerUseCase.CreateCustomer(ACustomer: TCustomer): TResponse;
begin

end;

function TCustomerUseCase.Delete(AId: Integer): TResponse;
begin

end;

destructor TCustomerUseCase.Destroy;
begin
  inherited;

end;

function TCustomerUseCase.Find(ACustomerDTO: TCustomerDTO): TResponse;
begin

end;

class function TCustomerUseCase.New: ICustomerUseCase;
begin
  result := self.Create;
end;

function TCustomerUseCase.Update(ACustomer: TCustomer): TResponse;
begin

end;

end.
