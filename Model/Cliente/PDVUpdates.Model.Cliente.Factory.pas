unit PDVUpdates.Model.Cliente.Factory;

interface

uses
  PDVUpdates.Model.Cliente.Interfaces;

type

  TModelClienteFactory = class(TInterfacedObject, iModelClienteFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelClienteFactory;
    function Cliente: iModelCliente;

  end;

implementation

uses
  PDVUpdates.Model.Cliente;

{ TModelClienteFactory }

function TModelClienteFactory.Cliente: iModelCliente;
begin
  Result := TModelCliente.New;
end;

constructor TModelClienteFactory.Create;
begin

end;

destructor TModelClienteFactory.Destroy;
begin

  inherited;
end;

class function TModelClienteFactory.New: iModelClienteFactory;
begin
  Result := Self.Create;
end;

end.
