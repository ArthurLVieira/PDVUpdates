unit PDVUpdates.Model.Item.Iterator;

interface

uses
  PDVUpdates.Model.Item.Interfaces, System.Generics.Collections;

type

  TModelItemIterator = class(TInterfacedObject, iModelItemIterator)
  private
    FLista: TList<iModelItem>;
    Fparent: iModelItem;
    FCount: Integer;
  public
    constructor Create(Value: iModelItem);
    destructor Destroy; override;
    class function New(Value: iModelItem): iModelItemIterator;
    function hasNext: Boolean;
    function Next: iModelItem;
    function Add(Value: iModelItem): iModelItemIterator;
    function &End: iModelItem;
  end;

implementation

uses
  System.SysUtils;

{ TModelItemIterator }

function TModelItemIterator.Add(Value: iModelItem): iModelItemIterator;
begin
  Result := Self;
  FLista.Add(Value);
end;

function TModelItemIterator.&End: iModelItem;
begin
  Result := Fparent;
end;

constructor TModelItemIterator.Create(Value: iModelItem);
begin
  FLista := TList<iModelItem>.Create;
  Fparent := Value;
  FCount := 0;
end;

destructor TModelItemIterator.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TModelItemIterator.hasNext: Boolean;
begin
  Result := not(FCount = FLista.Count);
end;

class function TModelItemIterator.New(Value: iModelItem): iModelItemIterator;
begin
  Result := Self.Create(Value);
end;

function TModelItemIterator.Next: iModelItem;
begin
  Result := FLista.Items[FCount];
  Inc(FCount);
end;

end.
