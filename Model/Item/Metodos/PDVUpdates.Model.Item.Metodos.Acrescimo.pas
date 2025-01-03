unit PDVUpdates.Model.Item.Metodos.Acrescimo;

interface

uses
  PDVUpdates.Model.Item.Interfaces;

type

  TModelItemMetodosAcrescimo = class(TInterfacedObject,
    iModelItemMetodosAcrescimo)
  private
    FParent: iModelItem;
    FItem: Integer;
    FPercentual, FValor: Currency;
  public
    constructor Create(Value: iModelItem);
    destructor Destroy; override;
    class function New(Value: iModelItem): iModelItemMetodosAcrescimo;
    function SetItem(Value: Integer): iModelItemMetodosAcrescimo;
    function SetValor(Value: Currency): iModelItemMetodosAcrescimo;
    function SetPercentual(Value: Currency): iModelItemMetodosAcrescimo;
    function &End: iModelItemMetodos;
  end;

implementation


{ TModelItemMetodosAcrescimo }

function TModelItemMetodosAcrescimo.&End: iModelItemMetodos;
begin
  Result := FParent.Metodos;
end;

constructor TModelItemMetodosAcrescimo.Create(Value: iModelItem);
begin
  FParent := Value;
end;

destructor TModelItemMetodosAcrescimo.Destroy;
begin

  inherited;
end;

class function TModelItemMetodosAcrescimo.New(Value: iModelItem)
  : iModelItemMetodosAcrescimo;
begin
  Result := Self.Create(Value);
end;

function TModelItemMetodosAcrescimo.SetItem(Value: Integer)
  : iModelItemMetodosAcrescimo;
begin
  Result := Self;
  FItem := Value;
end;

function TModelItemMetodosAcrescimo.SetPercentual(Value: Currency)
  : iModelItemMetodosAcrescimo;
begin
  Result := Self;
  FPercentual := Value;
end;

function TModelItemMetodosAcrescimo.SetValor(Value: Currency)
  : iModelItemMetodosAcrescimo;
begin
  Result := Self;
  FValor := Value;
end;

end.
