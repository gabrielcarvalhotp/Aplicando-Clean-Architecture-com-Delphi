program Console;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  MainMenu in 'Src\MainMenu.pas',
  CustomerMenu in 'Src\CustomerMenu.pas',
  Utils.Console in 'Src\Utils\Utils.Console.pas',
  VehiclesMenu in 'Src\VehiclesMenu.pas',
  LocationsMenu in 'Src\LocationsMenu.pas',
  Core.Models.Customer in '..\..\Core\Models\Core.Models.Customer.pas',
  Core.Port.Customer in '..\..\Core\Port\Core.Port.Customer.pas',
  Core.Response in '..\..\Core\Response\Core.Response.pas',
  Core.DTO.Customer in '..\..\Core\DTO\Core.DTO.Customer.pas',
  Core.UseCases.Customer in '..\..\Core\UseCases\Core.UseCases.Customer.pas',
  Core.Enums.ResponseMessage in '..\..\Core\Enums\Core.Enums.ResponseMessage.pas',
  Core.Exceptions.CustomerExceptions in '..\..\Core\Exceptions\Core.Exceptions.CustomerExceptions.pas',
  Core.Enums.CustomerErrorCode in '..\..\Core\Enums\Core.Enums.CustomerErrorCode.pas',
  Core.Utils.HandleException in '..\..\Core\Utils\Core.Utils.HandleException.pas',
  Core.Models.Vehicle in '..\..\Core\Models\Core.Models.Vehicle.pas',
  Core.Enums.VehicleStatus in '..\..\Core\Enums\Core.Enums.VehicleStatus.pas',
  Core.DTO.Vehicle in '..\..\Core\DTO\Core.DTO.Vehicle.pas',
  Core.Port.Vehicle in '..\..\Core\Port\Core.Port.Vehicle.pas',
  Core.UseCases.Vehicle in '..\..\Core\UseCases\Core.UseCases.Vehicle.pas',
  Core.Exceptions.VehicleExceptions in '..\..\Core\Exceptions\Core.Exceptions.VehicleExceptions.pas',
  Core.Enums.VehicleErrorCode in '..\..\Core\Enums\Core.Enums.VehicleErrorCode.pas';

begin
  try
    Menu;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
