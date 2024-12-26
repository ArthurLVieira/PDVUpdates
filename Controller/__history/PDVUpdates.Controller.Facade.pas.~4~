unit PDVUpdates.Controller.Facade;

interface

uses
  PDVUpdates.Controller.Interfaces, PDVUpdates.Controller.Usuario.Interfaces;

type

  TControllerFacade = class(TInterfacedObject, iControllerFacade)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerFacade;
    function Usuario: iControllerUsuario;
  end;

implementation

{ TControllerFacade }

uses PDVUpdates.Controller.Usuario.Factory;

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

function TControllerFacade.Usuario: iControllerUsuario;
begin
  Result := TControllerUsuarioFactory.New.Usuario;
end;

end.
