unit Core.Exceptions.CustomerExceptions;

interface

uses
  System.SysUtils;

type
  TCustomerException = class(Exception);

  TCustomerNameException = class(TCustomerException);
  TCustomerNameSizeException = class(TCustomerException);
  TCustomerDocumentException = class(TCustomerException);
  TCustomerDocumentSizeException = class(TCustomerException);
  TCustomerPhoneException = class(TCustomerException);
  TCustomerPhoneSizeException = class(TCustomerException);

implementation

end.
