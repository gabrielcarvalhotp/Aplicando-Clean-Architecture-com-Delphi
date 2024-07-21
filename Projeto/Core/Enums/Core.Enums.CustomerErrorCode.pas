unit Core.Enums.CustomerErrorCode;

interface

type
{$SCOPEDENUMS ON}
   TCustomerErrorCode = (
   ecEmptyName = 100,
   ecInvalidName = 101,
   ecEmptyDocument = 102,
   ecInvalidDocument = 103,
   ecEmptyPhone = 104,
   ecInvalidPhone = 105
   );
{$SCOPEDENUMS OFF}

implementation

{ TCustomerErrorCodeHelper }

end.
