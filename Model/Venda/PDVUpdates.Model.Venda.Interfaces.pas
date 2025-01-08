unit PDVUpdates.Model.Venda.Interfaces;

interface

uses
  PDVUpdates.Model.Cliente.Interfaces, PDVUpdates.Model.Item.Interfaces,
  PDVUpdates.Model.Caixa.Interfaces, PDVUpdates.Model.Pagamento.Interfaces,
  PDVUpdates.Model.Empresa.Interfaces;

type
  iModelVendaMetodos = interface;
  iModelVendaMetodosAbrir = interface;
  iModelVendaMetodosPagar = interface;
  iModelVendaMetodosFinaliza = interface;

  iModelVenda = interface
    ['{4D88ED9E-7887-44B7-8C2A-05759CDAEE0A}']
    function Metodos: iModelVendaMetodos;
    function Clientes: iModelCliente; overload;
    function Clientes(Value: iModelCliente): iModelVenda; overload;
    function Itens: iModelItem;
    function Caixa: iModelCaixa;
    function Pagamento: iModelPagamento;
    function Empresa: iModelEmpresa;
    function SetState(Value: iModelVendaMetodos): iModelVendaMetodos;
    function ModalidadeFiscal(Value: iModelFiscal): iModelVenda; overload;
    function ModalidadeFiscal: iModelFiscal; overload;

  end;

  iModelVendaMetodos = interface
    ['{299DFF57-078B-444E-8709-96195A94F6B5}']
    function Abrir: iModelVendaMetodosAbrir;
    function Pagar: iModelVendaMetodosPagar;
    function Finalizar: iModelVendaMetodosFinaliza;
    function &End: iModelVenda;
  end;

  iModelVendaMetodosAbrir = interface
    ['{AEA4947A-E671-4CB3-9A74-B6ADEE893684}']
    function &End: iModelVenda;
  end;

  iModelVendaMetodosPagar = interface
    ['{B0D73FAD-1BB6-4069-81B8-F5396821EE33}']
    function &End: iModelVenda;
  end;

  iModelVendaMetodosFinaliza = interface
    ['{B0D73FAD-1BB6-4069-81B8-F5396821EE33}']
    function &End: iModelVenda;
  end;

implementation

end.
