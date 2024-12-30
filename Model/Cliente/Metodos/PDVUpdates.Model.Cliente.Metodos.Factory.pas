unit PDVUpdates.Model.Cliente.Metodos.Factory;

interface

uses
  PDVUpdates.Model.Cliente.Metodos.Interfaces,
  PDVUpdates.Model.Cliente.Interfaces;

type

  TModelClienteMetodosFactory = class(TInterfacedObject,
    iModelClienteMetodosFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelClienteMetodosFactory;
    Function Saldo(Parent: iModelClienteMetodos): iModelClienteMetodosSaldo;
    function Buscar(Parent: iModelClienteMetodos): iModelClienteMetodosBuscar;
  end;

implementation

uses
  PDVUpdates.Model.Cliente.Metodos.Buscar,
  PDVUpdates.Model.Cliente.Metodos.Saldo;

{ TModelClienteMetodosFactory }

function TModelClienteMetodosFactory.Buscar(Parent: iModelClienteMetodos)
  : iModelClienteMetodosBuscar;
begin
  Result := TModelClienteMetodosBuscar.New(Parent);
end;

constructor TModelClienteMetodosFactory.Create;
begin

end;

destructor TModelClienteMetodosFactory.Destroy;
begin

  inherited;
end;

class function TModelClienteMetodosFactory.New: iModelClienteMetodosFactory;
begin
  Result := Self.Create;
end;

function TModelClienteMetodosFactory.Saldo(Parent: iModelClienteMetodos)
  : iModelClienteMetodosSaldo;
begin
  Result := TModelClienteMetodosSaldo.New(Parent);
end;

end.
