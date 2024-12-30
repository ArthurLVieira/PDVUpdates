unit PDVUpdates.Model.Cliente.State.Inativo;

interface

uses
  PDVUpdates.Model.Cliente.Interfaces;

type

  TModelClienteStateInativo = class(TInterfacedObject, iModelClienteMetodos)
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

{ TModelClienteStateInativo }

function TModelClienteStateInativo.Buscar: iModelClienteMetodosBuscar;
begin

end;

function TModelClienteStateInativo.&End: iModelCliente;
begin

end;

constructor TModelClienteStateInativo.Create;
begin

end;

destructor TModelClienteStateInativo.Destroy;
begin

  inherited;
end;

class function TModelClienteStateInativo.New: iModelClienteMetodos;
begin
  Result := Self.Create;
end;

function TModelClienteStateInativo.Saldo: iModelClienteMetodosSaldo;
begin
  raise Exception.Create('Cliente Inativo');
end;

end.
