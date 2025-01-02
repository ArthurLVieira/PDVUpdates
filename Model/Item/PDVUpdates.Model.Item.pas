unit PDVUpdates.Model.Item;

interface

uses
  PDVUpdates.Model.Item.Interfaces;

type

  TModelItem = class(TInterfacedObject, iModelItem, iModelItemMetodos)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelItem;
    function Metodos: iModelItemMetodos;
    function SetState(Value: iModelItemMetodos): iModelItem;
    function Iterator: iModelItemIterator;

    //Item Metodos
    function Vender: iModelItemMetodosVender;
    function Cancelar: iModelItemMetodosCancelar;
    function Desconto: iModelItemMetodosDesconto;
    function Acrescimo: iModelItemMetodosAcrescimo;
    function Repetir: iModelItemMetodosRepetir;
    function &End: iModelItem;
  end;

implementation

{ TModelItem }

function TModelItem.Acrescimo: iModelItemMetodosAcrescimo;
begin

end;

function TModelItem.Cancelar: iModelItemMetodosCancelar;
begin

end;

function TModelItem.&End: iModelItem;
begin

end;

constructor TModelItem.Create;
begin

end;

function TModelItem.Desconto: iModelItemMetodosDesconto;
begin

end;

destructor TModelItem.Destroy;
begin

  inherited;
end;

function TModelItem.Iterator: iModelItemIterator;
begin

end;

function TModelItem.Metodos: iModelItemMetodos;
begin

end;

class function TModelItem.New: iModelItem;
begin
  Result := Self.Create;
end;

function TModelItem.Repetir: iModelItemMetodosRepetir;
begin

end;

function TModelItem.SetState(Value: iModelItemMetodos): iModelItem;
begin

end;

function TModelItem.Vender: iModelItemMetodosVender;
begin

end;

end.
