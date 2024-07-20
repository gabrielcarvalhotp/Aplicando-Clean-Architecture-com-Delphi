program Console;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  MainMenu in 'Src\MainMenu.pas',
  ClientMenu in 'Src\ClientMenu.pas',
  Utils.Console in 'Src\Utils\Utils.Console.pas',
  VehiclesMenu in 'Src\VehiclesMenu.pas',
  LocationsMenu in 'Src\LocationsMenu.pas';

begin
  try
    MainMenu.Menu;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
