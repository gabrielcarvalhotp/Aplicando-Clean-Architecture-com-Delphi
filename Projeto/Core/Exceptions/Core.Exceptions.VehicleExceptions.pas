unit Core.Exceptions.VehicleExceptions;

interface

uses
  System.SysUtils;

type
  TVehicleException = class(Exception);

  TVehicleNameException = class(TVehicleException);
  TVehicleNameSizeException = class(TVehicleException);
  TVehiclePlaceException = class(TVehicleException);
  TVehiclePlaceSizeException = class(TVehicleException);
  TVehiclePriceException = class(TVehicleException);

implementation

end.
