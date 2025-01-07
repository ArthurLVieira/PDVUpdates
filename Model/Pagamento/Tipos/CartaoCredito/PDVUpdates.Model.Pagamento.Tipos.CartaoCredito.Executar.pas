unit PDVUpdates.Model.Pagamento.Tipos.CartaoCredito.Executar;

interface

uses
  PDVUpdates.Model.Pagamento.Interfaces;

type

  TModelPagamentoTipoCartaoCreditoExecultar = class(TInterfacedObject,
    iModelPagamentoMetodosExecutar)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelPagamentoMetodosExecutar;
    function SetValor(Value: Currency): iModelPagamentoMetodosExecutar;
    function &End: iModelPagamentoMetodos;
  end;

implementation

{ TModelPagamentoTipoCartaoCreditoExecultar }

constructor TModelPagamentoTipoCartaoCreditoExecultar.Create;
begin

end;

destructor TModelPagamentoTipoCartaoCreditoExecultar.Destroy;
begin

  inherited;
end;

class function TModelPagamentoTipoCartaoCreditoExecultar.New
  : iModelPagamentoMetodosExecutar;
begin
  Result := Self.Create;
end;

end.
