unit PDVUpdates.Model.Cliente.Metodos.Buscar;

interface

uses
  PDVUpdates.Model.Cliente.Interfaces;

type

  TModelClienteMetodosBuscar = class(TInterfacedObject,
    iModelClienteMetodosBuscar)
  private
    FParent: iModelClienteMetodos;
    FCPF: string;
  public
    constructor Create(Value: iModelClienteMetodos);
    destructor Destroy; override;
    class function New(Value: iModelClienteMetodos): iModelClienteMetodosBuscar;
    function PorCPF(Value: string): iModelClienteMetodosBuscar;
    function &End: iModelClienteMetodos;
  end;

implementation

{ TModelClienteMetodosBuscar }

function TModelClienteMetodosBuscar.&End: iModelClienteMetodos;
begin
  Result := FParent;
end;

constructor TModelClienteMetodosBuscar.Create(Value: iModelClienteMetodos);
begin
  FParent := Value;
end;

destructor TModelClienteMetodosBuscar.Destroy;
begin

  inherited;
end;

class function TModelClienteMetodosBuscar.New(Value: iModelClienteMetodos)
  : iModelClienteMetodosBuscar;
begin
  Result := Self.Create(Value);
end;

function TModelClienteMetodosBuscar.PorCPF(Value: string)
  : iModelClienteMetodosBuscar;
begin
  Result := Self;
  FCPF := Value;
end;

end.
