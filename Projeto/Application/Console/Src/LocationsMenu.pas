unit LocationsMenu;

interface

procedure CreateLocations;
procedure GetLocations;
procedure UpdateLocations;
procedure DeleteLocations;

implementation

uses
  Utils.Console,
  Winapi.Windows,
  MainMenu;

procedure CreateLocations;
begin
  CleanConsole;
  Writeln('Cadastro de locação');
  Writeln;
  Sleep(2000);
  Menu;
end;

procedure GetLocations;
begin
  CleanConsole;
  Writeln('Consultar locação');
  Writeln;
  Sleep(2000);
  Menu;
end;

procedure UpdateLocations;
begin
  CleanConsole;
  Writeln('Atualizar locação');
  Writeln;
  Sleep(2000);
  Menu;
end;

procedure DeleteLocations;
begin
  CleanConsole;
  Writeln('Deletar locação');
  Writeln;
  Sleep(2000);
  Menu;
end;

end.
