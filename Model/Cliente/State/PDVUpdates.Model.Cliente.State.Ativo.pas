unit PDVUpdates.Model.Cliente.State.Ativo;

interface

uses
  PDVUpdates.Model.Cliente.Interfaces;

type

  TModelClienteStateAtivo = class(TInterfacedObject, iModelClienteMetodos)
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

{ TModelClienteStateAtivo }

function TModelClienteStateAtivo.Buscar: iModelClienteMetodosBuscar;
begin

end;

function TModelClienteStateAtivo.&End: iModelCliente;
begin

end;

constructor TModelClienteStateAtivo.Create;
begin

end;

destructor TModelClienteStateAtivo.Destroy;
begin

  inherited;
end;

class function TModelClienteStateAtivo.New: iModelClienteMetodos;
begin
  Result := Self.Create;
end;

function TModelClienteStateAtivo.Saldo: iModelClienteMetodosSaldo;
begin

end;

end.
