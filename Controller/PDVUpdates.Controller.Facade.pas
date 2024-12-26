unit PDVUpdates.Controller.Facade;

interface

uses
  PDVUpdates.Controller.Interfaces, PDVUpdates.Controller.Usuario.Interfaces,
  PDVUpdates.Controller.Caixa.Interfaces;

type

  TControllerFacade = class(TInterfacedObject, iControllerFacade)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerFacade;
    function Usuario: iControllerUsuarioFactory;
    function Caixa: iControllerCaixaFactory;
  end;

implementation

{ TControllerFacade }

uses PDVUpdates.Controller.Usuario.Factory, PDVUpdates.Controller.Caixa.Factory;

function TControllerFacade.Caixa: iControllerCaixaFactory;
begin
  Result := TControllerCaixaFactory.New;
end;

constructor TControllerFacade.Create;
begin

end;

destructor TControllerFacade.Destroy;
begin

  inherited;
end;

class function TControllerFacade.New: iControllerFacade;
begin
  Result := Self.Create;
end;

function TControllerFacade.Usuario: iControllerUsuarioFactory;
begin
  Result := TControllerUsuarioFactory.New;
end;

end.
