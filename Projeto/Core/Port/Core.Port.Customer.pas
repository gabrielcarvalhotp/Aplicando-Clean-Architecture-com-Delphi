unit Core.Port.Customer;

interface

uses
  Core.Models.Customer,
  Core.Response,
  Core.DTO.Customer;

type
  ICustomerUseCase = interface
    ['{A71EBA62-F544-4804-B469-3D8300D476BA}']
    function CreateCustomer(ACustomer: TCustomer): TResponse;
    function Find(ACustomerDTO: TCustomerDTO): TResponse;
    function Update(ACustomer: TCustomer): TResponse;
    function Delete(AId: Integer): TResponse;
  end;

implementation

end.