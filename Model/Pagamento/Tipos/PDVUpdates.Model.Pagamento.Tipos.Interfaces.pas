unit PDVUpdates.Model.Pagamento.Tipos.Interfaces;

interface

uses
  PDVUpdates.Model.Pagamento.Interfaces;

type

  iModelPagamentoTipoFactory = interface
    ['{F8AD4BB9-1D86-45C3-9470-49BD3E6235A5}']
    function Dinheiro: iModelPagamentoMetodos;
    function CartaoCredito: iModelPagamentoMetodos;
  end;

implementation

end.
