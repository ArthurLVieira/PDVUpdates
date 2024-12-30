unit PDVUpdates.Model.Cliente.Metodos.Saldo;

interface

uses
  PDVUpdates.Model.Cliente.Interfaces;

type

  TModelClienteMetodosSaldo = class(TInterfacedObject,
    iModelClienteMetodosSaldo)
  private
    FParent: iModelClienteMetodos;
    FValor: Currency;
  public
    constructor Create(Value: iModelClienteMetodos);
    destructor Destroy; override;
    class function New(Value: iModelClienteMetodos): iModelClienteMetodosSaldo;
    function GetSaldo(var Value: Currency): iModelClienteMetodosSaldo;
    function SetSaldo(Value: Currency): iModelClienteMetodosSaldo;
    function &End: iModelClienteMetodos;
  end;

implementation

{ TModelClienteMetodosSaldo }

function TModelClienteMetodosSaldo.&End: iModelClienteMetodos;
begin
  Result := FParent;
end;

constructor TModelClienteMetodosSaldo.Create(Value: iModelClienteMetodos);
begin
  FParent := Value;
end;

destructor TModelClienteMetodosSaldo.Destroy;
begin

  inherited;
end;

function TModelClienteMetodosSaldo.GetSaldo(var Value: Currency)
  : iModelClienteMetodosSaldo;
begin
  Result := Self;
  FValor := Value;
end;

class function TModelClienteMetodosSaldo.New(Value: iModelClienteMetodos)
  : iModelClienteMetodosSaldo;
begin
  Result := Self.Create(Value);
end;

function TModelClienteMetodosSaldo.SetSaldo(Value: Currency)
  : iModelClienteMetodosSaldo;
begin
  Result := Self;
  FValor := Value;
end;

end.
