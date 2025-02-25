unit PDVUpdates.Model.Pagamento.Tipos.CartaoCredito;

interface

uses
  PDVUpdates.Model.Pagamento.Interfaces, PDVUpdates.Model.Venda.Interfaces;

type

  TModelPagamentoTipoCartaoCredito = class(TInterfacedObject,
    iModelPagamentoMetodos)
  private
    FParent: iModelPagamento;
    FVenda: iModelVenda;
  public
    constructor Create(Parent: iModelPagamento; Venda: iModelVenda);
    destructor Destroy; override;
    class function New(Parent: iModelPagamento; Venda: iModelVenda)
      : iModelPagamentoMetodos;
    function Executar: iModelPagamentoMetodosExecutar;
    function Estornar: iModelPagamentoMetodosEstornar;
    function &End: iModelPagamento;
  end;

implementation

{ TModelPagamentoTipoCartaoCredito }

constructor TModelPagamentoTipoCartaoCredito.Create(Parent: iModelPagamento;
  Venda: iModelVenda);
begin
  FParent := Parent;
  Venda := FVenda;
end;

destructor TModelPagamentoTipoCartaoCredito.Destroy;
begin

  inherited;
end;

class function TModelPagamentoTipoCartaoCredito.New(Parent: iModelPagamento;
  Venda: iModelVenda): iModelPagamentoMetodos;
begin
  Result := Self.Create(Parent, Venda);
end;

end.
