unit Core.Response;

interface

uses
  System.Generics.Collections;

type
//  IResponse<T: class> = interface
//    ['{427D9901-8CEF-4A03-9B3E-14A0761D2852}']
//    function Sucess(AValue: Boolean): IResponse<T>; overload;
//    function Sucess: Boolean; overload;
//    function ErrorCode(AValue: Integer): IResponse<T>; overload;
//    function ErrorCode: Integer; overload;
//    function Message(AValue: string): IResponse<T>; overload;
//    function Message: string; overload;
//    function Data(AValue: TObjectList<T>): IResponse<T>; overload;
//    function Data: TObjectList<T>; overload;
//  end;

  TResponse = record
    Sucess: Boolean;
    ErrorCode: Integer;
    Message: string;
    Data: TObjectList<TObject>;
  end;

implementation

end.
