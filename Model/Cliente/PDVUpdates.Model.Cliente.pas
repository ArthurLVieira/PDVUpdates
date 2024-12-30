unit PDVUpdates.Model.Cliente;

interface

uses
  PDVUpdates.Model.Cliente.Interfaces;

type

  TModelCliente = class(TInterfacedObject, iModelCliente, iModelClienteMetodos)
  private
    FState: iModelClienteMetodos;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelCliente;
    function Metodos: iModelClienteMetodos;
    function SetState(Value: iModelClienteMetodos): iModelCliente;
    function Saldo: iModelClienteMetodosSaldo;
    function Buscar: iModelClienteMetodosBuscar;
    function &End: iModelCliente;
  end;

implementation

uses
  PDVUpdates.Model.Cliente.Metodos.Factory;

{ TModelCliente }

function TModelCliente.Buscar: iModelClienteMetodosBuscar;
begin
  FState.Buscar;
  Result := TModelClienteMetodosFactory.New.Buscar(Self);
end;

function TModelCliente.&End: iModelCliente;
begin
  Result := Self;
end;

constructor TModelCliente.Create;
begin

end;

destructor TModelCliente.Destroy;
begin

  inherited;
end;

function TModelCliente.Metodos: iModelClienteMetodos;
begin
  Result := Self;
end;

class function TModelCliente.New: iModelCliente;
begin
  Result := Self.Create;
end;

function TModelCliente.Saldo: iModelClienteMetodosSaldo;
begin
  FState.Saldo;
  Result := TModelClienteMetodosFactory.New.Saldo(Self);
end;

function TModelCliente.SetState(Value: iModelClienteMetodos): iModelCliente;
begin
  Result := Self;
  FState := Value;
end;

end.
