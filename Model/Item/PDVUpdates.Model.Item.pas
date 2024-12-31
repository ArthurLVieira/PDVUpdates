unit PDVUpdates.Model.Item;

interface

uses
  PDVUpdates.Model.Item.Interfaces;

type

  TModelItem = class(TInterfacedObject, iModelItem)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelItem;
  end;

implementation

{ TModelItem }

constructor TModelItem.Create;
begin

end;

destructor TModelItem.Destroy;
begin

  inherited;
end;

class function TModelItem.New: iModelItem;
begin
  Result := Self.Create;
end;

end.
