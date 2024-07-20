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
  Writeln('Cadastro de loca��o');
  Writeln;
  Sleep(2000);
  Menu;
end;

procedure GetLocations;
begin
  CleanConsole;
  Writeln('Consultar loca��o');
  Writeln;
  Sleep(2000);
  Menu;
end;

procedure UpdateLocations;
begin
  CleanConsole;
  Writeln('Atualizar loca��o');
  Writeln;
  Sleep(2000);
  Menu;
end;

procedure DeleteLocations;
begin
  CleanConsole;
  Writeln('Deletar loca��o');
  Writeln;
  Sleep(2000);
  Menu;
end;

end.
