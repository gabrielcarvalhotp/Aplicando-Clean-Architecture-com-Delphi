unit Core.Enums.ResponseMessage;

interface

type
  TResponseMessage = (rmRegisteredSuccessfully, rmConsultationCompletedSuccessfully, rmChangedSuccessfully, rmDeletedSuccessfully);

  TResponseMessageHelper = record Helper for TResponseMessage
    function Message: string;
  end;

implementation

{ TResponseMessageHelper }

uses
  TypInfo;

function TResponseMessageHelper.Message: string;
begin
  case Self of
    rmRegisteredSuccessfully: Result := 'Criado com sucesso';
    rmConsultationCompletedSuccessfully: Result := 'Consulta realizada com sucesso';
    rmChangedSuccessfully: Result := 'Altera��o realizada com sucesso';
    rmDeletedSuccessfully: Result := 'Excluido com sucesso';
  end;

  var
  EnumName := GetEnumName(TypeInfo(TResponseMessage), Integer(Self));
  GetEnumValue(TypeInfo(TResponseMessage), EnumName);
end;

end.