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
  Core.Enums.ErrorCode in '..\..\Core\Enums\Core.Enums.ErrorCode.pas',
  Core.Utils.HandleException in '..\..\Core\Utils\Core.Utils.HandleException.pas';

begin
  try
    Menu;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
