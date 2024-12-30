unit PDVUpdates.Model.Cliente.State.Factory;

interface

uses
  PDVUpdates.Model.Cliente.State.Interfaces,
  PDVUpdates.Model.Cliente.Interfaces;

type

  TModelClienteStateFactory = class(TInterfacedObject,
    iModelClienteStateFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelClienteStateFactory;
    function ClienteState(Value: TStateCliente): iModelClienteMetodos;

  end;

implementation

uses
  PDVUpdates.Model.Cliente.State.Bloqueado,
  PDVUpdates.Model.Cliente.State.Desbloqueado,
  PDVUpdates.Model.Cliente.State.Ativo, PDVUpdates.Model.Cliente.State.Inativo;

{ TModelClienteStateFactory }

function TModelClienteStateFactory.ClienteState(Value: TStateCliente)
  : iModelClienteMetodos;
begin
  case Value of
    Bloqueado:
      Result := TModelClienteStateBloqueado.New;
    Desbloqueado:
      Result := TModelClienteStateDesbloqueado.New;
    Ativo:
      Result := TModelClienteStateAtivo.New;
    Inatino:
      Result := TModelClienteStateInativo.New;
  end;
end;

constructor TModelClienteStateFactory.Create;
begin

end;

destructor TModelClienteStateFactory.Destroy;
begin

  inherited;
end;

class function TModelClienteStateFactory.New: iModelClienteStateFactory;
begin
  Result := Self.Create;
end;

end.
