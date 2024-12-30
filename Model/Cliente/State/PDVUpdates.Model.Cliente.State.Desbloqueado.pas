unit PDVUpdates.Model.Cliente.State.Desbloqueado;

interface

uses
  PDVUpdates.Model.Cliente.Interfaces;

type

  TModelClienteStateDesbloqueado = class(TInterfacedObject,
    iModelClienteMetodos)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelClienteMetodos;
    function Saldo: iModelClienteMetodosSaldo;
    function Buscar: iModelClienteMetodosBuscar;
    function &End: iModelCliente;
  end;

implementation

{ TModelClienteStateDesbloqueado }

function TModelClienteStateDesbloqueado.Buscar: iModelClienteMetodosBuscar;
begin

end;

function TModelClienteStateDesbloqueado.&End: iModelCliente;
begin

end;

constructor TModelClienteStateDesbloqueado.Create;
begin

end;

destructor TModelClienteStateDesbloqueado.Destroy;
begin

  inherited;
end;

class function TModelClienteStateDesbloqueado.New: iModelClienteMetodos;
begin
  Result := Self.Create;
end;

function TModelClienteStateDesbloqueado.Saldo: iModelClienteMetodosSaldo;
begin

end;

end.
