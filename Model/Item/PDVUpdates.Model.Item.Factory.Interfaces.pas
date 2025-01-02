unit PDVUpdates.Model.Item.Factory.Interfaces;

interface

uses
  PDVUpdates.Model.Item.State.Interfaces;

type

  iModelItemFactory = interface
    ['{FAD3ECAA-3E27-4177-B89D-0C823E7718FB}']
    function State: iModelItemState;
  end;

implementation

end.
