unit Core.Port.Vehicle;

interface

uses
  Core.Models.Vehicle,
  Core.Response,
  Core.DTO.Vehicle;

type
  IVehicleUseCase = interface
    ['{A71EBA62-F544-4804-B469-3D8300D476BA}']
    function CreateVehicle(AVehicle: TVehicle): TResponse;
    function Find(AVehicleDTO: TVehicleDTO): TResponse;
    function Update(AVehicle: TVehicle): TResponse;
    function Delete(AId: Integer): TResponse;
  end;

implementation

end.
