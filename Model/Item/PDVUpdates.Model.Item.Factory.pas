unit PDVUpdates.Model.Item.Factory;

interface

uses
  PDVUpdates.Model.Item.Factory.Interfaces,
  PDVUpdates.Model.Item.State.Interfaces;

type

  TModelItemFactory = class(TInterfacedObject, iModelItemFactory)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelItemFactory;
    function State: iModelItemState;

  end;

implementation

uses
  PDVUpdates.Model.Item.State;

{ TModelItemFactory }

constructor TModelItemFactory.Create;
begin

end;

destructor TModelItemFactory.Destroy;
begin

  inherited;
end;

function TModelItemFactory.State: iModelItemState;
begin
  Result := TModelItemStateFactory.New;
end;

class function TModelItemFactory.New: iModelItemFactory;
begin
  Result := Self.Create;
end;

end.
