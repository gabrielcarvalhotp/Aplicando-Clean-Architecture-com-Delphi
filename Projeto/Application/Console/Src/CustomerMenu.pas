unit CustomerMenu;

interface

procedure CreateCustomer;
procedure GetCustomer;
procedure UpdateCustomer;
procedure DeleteCustomer;

implementation

uses
  Utils.Console, Winapi.Windows, MainMenu;

procedure CreateCustomer;
begin
  CleanConsole;
  Writeln('Cadastro de cliente');
  Writeln;
  Sleep(2000);
  Menu;
end;

procedure GetCustomer;
begin
  CleanConsole;
  Writeln('Consultar cliente');
  Writeln;
  Sleep(2000);
  Menu;
end;

procedure UpdateCustomer;
begin
  CleanConsole;
  Writeln('Atualizar cliente');
  Writeln;
  Sleep(2000);
  Menu;
end;

procedure DeleteCustomer;
begin
  CleanConsole;
  Writeln('Deletar cliente');
  Writeln;
  Sleep(2000);
  Menu;
end;

end.
