unit MainMenu;

interface

procedure Menu;

procedure CallCustomersMenu;

procedure CallVehiclesMenu;

procedure CallLocationsMenu;

type
  TModelType = (mtNull, mtCustomers, mtVehicles, mtLocations, mtExit);
  TOptionsCrud = (ocNull, ocCreate, ocRead, ocUpdate, ocDelete, ocExit);

const OPTIONS_CRUD = ' 1 - Cadastrar ' + #13#10 +
                     ' 2 - Consultar ' + #13#10 +
                     ' 3 - Alterar  ' + #13#10 +
                     ' 4 - Excluir ' + #13#10 +
                     ' 5 - Voltar ';

implementation

uses
  Winapi.Windows,
  Utils.Console,
  CustomerMenu,
  VehiclesMenu,
  LocationsMenu;

procedure Menu;
var
  LModelType: Integer;
  LModules: string;
begin
  CleanConsole;
  Writeln('Menu Principal');
  Writeln;
  LModules := '1 - Customeres' + #13#10 +
              '2 - Ve�culos' + #13#10 +
              '3 - Loca��es' + #13#10 +
              '4 - Sair';
  Writeln(LModules);
  Write(Output, 'Op��o: ');
  Readln(Input, LModelType);

  case TModelType(LModelType) of
    mtCustomers: CallCustomersMenu;
    mtVehicles: CallVehiclesMenu;
    mtLocations: CallLocationsMenu;
    mtExit: ;
    else
    begin
      writeln('Op��o inv�lida');
      readln;
    end;
  end;
end;

procedure CallCustomersMenu;
var
  LOption: Integer;
begin
  CleanConsole;
  Writeln('Menu Customeres');
  Writeln(OPTIONS_CRUD);
  Write(Output, 'Op��o: ');
  Readln(Input, LOption);

  case TOptionsCrud(LOption) of
    ocCreate: CreateCustomer;
    ocRead: GetCustomer;
    ocUpdate: UpdateCustomer;
    ocDelete: DeleteCustomer;
    ocExit: Menu;
    else
    begin
      writeln('Op��o inv�lida');
      readln;
    end;
  end;
  Sleep(2000);
end;

procedure CallVehiclesMenu;
var
  LOption: Integer;
begin
  CleanConsole;
  Writeln('Menu Ve�culos');
  Writeln(OPTIONS_CRUD);
  Write(Output, 'Op��o: ');
  Readln(Input, LOption);

  case TOptionsCrud(LOption) of
    ocCreate: CreateVehicles;
    ocRead: GetVehicles;
    ocUpdate: UpdateVehicles;
    ocDelete: DeleteVehicles;
    ocExit: Menu;
    else
    begin
      writeln('Op��o inv�lida');
      readln;
    end;
  end;
  Sleep(2000);
end;

procedure CallLocationsMenu;
var
  LOption: Integer;
begin
  CleanConsole;
  Writeln('Menu Loca��es');
  Writeln(OPTIONS_CRUD);
  Write(Output, 'Op��o: ');
  Readln(Input, LOption);

  case TOptionsCrud(LOption) of
    ocCreate: CreateLocations;
    ocRead: GetLocations;
    ocUpdate: UpdateLocations;
    ocDelete: DeleteLocations;
    ocExit: Menu;
    else
    begin
      writeln('Op��o inv�lida');
      readln;
    end;
  end;
  Sleep(2000);
end;

end.
