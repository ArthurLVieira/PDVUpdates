unit PDVUpdates.Model.Fiscal;

interface

uses
  PDVUpdates.Model.Fiscal.Interfaces;

type

  TModelFiscal = class(TInterfacedObject, iModelFiscal)
  private
    FProxy: iModelFiscalProxy;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelFiscal;
    function Proxy(Value: iModelFiscalComponente): iModelFiscalProxy; overload;
    function Proxy: iModelFiscalProxy; overload;
    function NFCe: iModelFiscalComponente;
  end;

implementation

{ TModelFiscal }

constructor TModelFiscal.Create;
begin

end;

destructor TModelFiscal.Destroy;
begin

  inherited;
end;

class function TModelFiscal.New: iModelFiscal;
begin
  Result := Self.Create;
end;

end.
