unit PDVUpdates.Controller.Caixa.Factory;

interface

uses
  PDVUpdates.Controller.Caixa.Interfaces;

type

  TControllerCaixaFactory = class(TInterfacedObject, iControllerCaixaFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerCaixaFactory;
    function Caixa: iControllerCaixa;

  end;

implementation

{ TControllerCaixaFactory }

uses PDVUpdates.Controller.Caixa;

function TControllerCaixaFactory.Caixa: iControllerCaixa;
begin
  Result := TControllerCaixa.New;
end;

constructor TControllerCaixaFactory.Create;
begin

end;

destructor TControllerCaixaFactory.Destroy;
begin

  inherited;
end;

class function TControllerCaixaFactory.New: iControllerCaixaFactory;
begin
  Result := Self.Create;
end;

end.
