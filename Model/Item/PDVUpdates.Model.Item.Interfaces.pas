unit PDVUpdates.Model.Item.Interfaces;

interface

type

  iModelItemMetodosVender = interface;
  iModelItemMetodosCancelar = interface;
  iModelItemMetodosDesconto = interface;
  iModelItemMetodosAcrescimo = interface;
  iModelItemMetodosRepetir = interface;
  iModelItemMetodos = interface;
  iModelItemIterator = interface;

  iModelItem = interface
    ['{46356C71-FDE0-4E64-A36D-70AE837C8827}']
    function Metodos: iModelItemMetodos;
    function SetState(Value: iModelItemMetodos): iModelItem;
    function Iterator: iModelItemIterator;


  end;

  iModelItemMetodos = interface
    ['{FDD0C411-DBB2-4C04-964E-660C97D74B5C}']
    function Vender: iModelItemMetodosVender;
    function Cancelar: iModelItemMetodosCancelar;
    function Desconto: iModelItemMetodosDesconto;
    function Acrescimo: iModelItemMetodosAcrescimo;
    function Repetir: iModelItemMetodosRepetir;
    function &End: iModelItem;
  end;

  iModelItemMetodosVender = interface
    ['{EDDA87CC-B650-428A-A445-E4FB6C804236}']
    function SetItem(Value: Integer): iModelItemMetodosVender;
    function SetQuantidade(Value: Double): iModelItemMetodosVender;
    function &End: iModelItemMetodos;
  end;

  iModelItemMetodosCancelar = interface
    ['{9E9E2720-9843-4593-BF02-2694BB728EA2}']
    function SetItem(Value: Integer): iModelItemMetodosCancelar;
    function &End: iModelItemMetodos;
  end;

  iModelItemMetodosDesconto = interface
    ['{C352459D-8771-4F48-8FF2-D839BFBE10A8}']
    function SetItem(Value: Integer): iModelItemMetodosDesconto;
    function SetValor(Value: Currency): iModelItemMetodosDesconto;
    function SetPercentual(Value: Currency): iModelItemMetodosDesconto;
    function &End: iModelItemMetodos;
  end;

  iModelItemMetodosAcrescimo = interface
    ['{E141B25B-B89B-443B-A35C-4048461CD6AB}']
    function SetValor(Value: Currency): iModelItemMetodosAcrescimo;
    function SetPercentual(Value: Currency): iModelItemMetodosAcrescimo;
    function &End: iModelItemMetodos;
  end;

  iModelItemMetodosRepetir = interface
    ['{5C38A093-6710-4A10-8B12-ED40A41C5BFD}']
    function SetItem(Value: Integer): iModelItemMetodosRepetir;
    function &End: iModelItemMetodos;
  end;

  iModelItemIterator = interface
    ['{6062B395-17A7-4721-8842-D6B582759BCF}']
    function hasNext: Boolean;
    function Next: iModelItem;
    function Add(Value: iModelItem): iModelItemIterator;
    function &End: iModelItem;
  end;

implementation

end.
