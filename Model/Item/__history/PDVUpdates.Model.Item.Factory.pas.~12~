unit PDVUpdates.Model.Item.Factory;

interface

uses
  PDVUpdates.Model.Item.Factory.Interfaces;

type

  TModelItemFactory = class(TInterfacedObject, iModelItemFactory)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelItemFactory;
  end;

implementation

{ TModelItemFactory }

constructor TModelItemFactory.Create;
begin

end;

destructor TModelItemFactory.Destroy;
begin

  inherited;
end;

class function TModelItemFactory.New: iModelItemFactory;
begin
  Result := Self.Create;
end;

end.
