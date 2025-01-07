unit PDVUpdates.Model.Pagamento.Tipos.CartaoCredito.Executar;

interface

uses
  PDVUpdates.Model.Pagamento.Interfaces, PDVUpdates.Model.Venda.Interfaces;

type

  TModelPagamentoTipoCartaoCreditoExecultar = class(TInterfacedObject,
    iModelPagamentoMetodosExecutar)
  private
    FValor: Currency;
    FParent: iModelPagamentoMetodos;
    FVenda: iModelVenda;
    procedure Gravar;
    procedure Fiscal;
  public
    constructor Create(Parent: iModelPagamentoMetodos; Venda: iModelVenda);
    destructor Destroy; override;
    class function New(Parent: iModelPagamentoMetodos; Venda: iModelVenda)
      : iModelPagamentoMetodosExecutar;
    function SetValor(Value: Currency): iModelPagamentoMetodosExecutar;
    function &End: iModelPagamentoMetodos;
  end;

implementation

{ TModelPagamentoTipoCartaoCreditoExecultar }

function TModelPagamentoTipoCartaoCreditoExecultar.&End: iModelPagamentoMetodos;
begin
  Result := FParent;
end;

procedure TModelPagamentoTipoCartaoCreditoExecultar.Fiscal;
begin

end;

procedure TModelPagamentoTipoCartaoCreditoExecultar.Gravar;
begin

end;

constructor TModelPagamentoTipoCartaoCreditoExecultar.Create
  (Parent: iModelPagamentoMetodos; Venda: iModelVenda);
begin
  FParent := Parent;
  FVenda := FVenda;
end;

destructor TModelPagamentoTipoCartaoCreditoExecultar.Destroy;
begin

  inherited;
end;

class function TModelPagamentoTipoCartaoCreditoExecultar.New
  (Parent: iModelPagamentoMetodos; Venda: iModelVenda)
  : iModelPagamentoMetodosExecutar;
begin
  Result := Self.Create(Parent, Venda);
end;

function TModelPagamentoTipoCartaoCreditoExecultar.SetValor(Value: Currency)
  : iModelPagamentoMetodosExecutar;
begin
  Result := Self;
  FValor := Value;
end;

end.
