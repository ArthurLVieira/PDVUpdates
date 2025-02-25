unit PDVUpdates.Model.Pagamento.Tipos.Factory;

interface

uses
  PDVUpdates.Model.Pagamento.Tipos.Interfaces,
  PDVUpdates.Model.Pagamento.Interfaces;

type

  TModelPagamentoTipoFactory = class(TInterfacedObject,
    iModelPagamentoTipoFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelPagamentoTipoFactory;
    function Dinheiro: iModelPagamentoMetodos;
    function CartaoCredito: iModelPagamentoMetodos;
  end;

implementation

{ TModelPagamentoTipoFactory }

function TModelPagamentoTipoFactory.CartaoCredito: iModelPagamentoMetodos;
begin

end;

constructor TModelPagamentoTipoFactory.Create;
begin

end;

destructor TModelPagamentoTipoFactory.Destroy;
begin

  inherited;
end;

function TModelPagamentoTipoFactory.Dinheiro: iModelPagamentoMetodos;
begin

end;

class function TModelPagamentoTipoFactory.New: iModelPagamentoTipoFactory;
begin
  Result := Self.Create;
end;

end.
