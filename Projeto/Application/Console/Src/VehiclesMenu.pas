unit VehiclesMenu;

interface

procedure CreateVehicles;
procedure GetVehicles;
procedure UpdateVehicles;
procedure DeleteVehicles;

implementation

uses
  Utils.Console, Winapi.Windows, MainMenu;

procedure CreateVehicles;
begin
  CleanConsole;
  Writeln('Cadastro de Ve�culo');
  Writeln;
  Sleep(2000);
  Menu;
end;

procedure GetVehicles;
begin
  CleanConsole;
  Writeln('Consultar Ve�culo');
  Writeln;
  Sleep(2000);
  Menu;
end;

procedure UpdateVehicles;
begin
  CleanConsole;
  Writeln('Atualizar Ve�culo');
  Writeln;
  Sleep(2000);
  Menu;
end;

procedure DeleteVehicles;
begin
  CleanConsole;
  Writeln('Deletar Ve�culo');
  Writeln;
  Sleep(2000);
  Menu;
end;

end.
