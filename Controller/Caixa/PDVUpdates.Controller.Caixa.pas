unit PDVUpdates.Controller.Caixa;

interface

uses
  PDVUpdates.Controller.Caixa.Interfaces;

type

  TControllerCaixa = class(TInterfacedObject, iControllerCaixa)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerCaixa;
    function Metodos: iControllerCaixaMetodos;

  end;

implementation

{ TControllerCaixa }

uses PDVUpdates.Controller.Caixa.Metodos;

constructor TControllerCaixa.Create;
begin

end;

destructor TControllerCaixa.Destroy;
begin

  inherited;
end;

function TControllerCaixa.Metodos: iControllerCaixaMetodos;
begin
  Result := TControllerCaixaMetodos.New(Self);
end;

class function TControllerCaixa.New: iControllerCaixa;
begin
  Result := Self.Create;
end;

end.
