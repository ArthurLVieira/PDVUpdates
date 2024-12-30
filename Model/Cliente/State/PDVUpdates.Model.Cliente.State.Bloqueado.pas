unit PDVUpdates.Model.Cliente.State.Bloqueado;

interface

uses
  PDVUpdates.Model.Cliente.Interfaces;

type

  TModelClienteStateBloqueado = class(TInterfacedObject, iModelClienteMetodos)
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

uses
  System.SysUtils;

{ TModelClienteStateBloqueado }

function TModelClienteStateBloqueado.Buscar: iModelClienteMetodosBuscar;
begin

end;

function TModelClienteStateBloqueado.&End: iModelCliente;
begin

end;

constructor TModelClienteStateBloqueado.Create;
begin

end;

destructor TModelClienteStateBloqueado.Destroy;
begin

  inherited;
end;

class function TModelClienteStateBloqueado.New: iModelClienteMetodos;
begin
  Result := Self.Create;
end;

function TModelClienteStateBloqueado.Saldo: iModelClienteMetodosSaldo;
begin
  raise Exception.Create('Cliente Bloqueado');
end;

end.
