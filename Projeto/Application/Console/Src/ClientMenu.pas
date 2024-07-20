unit ClientMenu;

interface

procedure CreateClient;
procedure GetClient;
procedure UpdateClient;
procedure DeleteClient;

implementation

uses
  Utils.Console, Winapi.Windows, MainMenu;

procedure CreateClient;
begin
  CleanConsole;
  Writeln('Cadastro de cliente');
  Writeln;
  Sleep(2000);
  Menu;
end;

procedure GetClient;
begin
  CleanConsole;
  Writeln('Consultar cliente');
  Writeln;
  Sleep(2000);
  Menu;
end;

procedure UpdateClient;
begin
  CleanConsole;
  Writeln('Atualizar cliente');
  Writeln;
  Sleep(2000);
  Menu;
end;

procedure DeleteClient;
begin
  CleanConsole;
  Writeln('Deletar cliente');
  Writeln;
  Sleep(2000);
  Menu;
end;

end.
