unit PDVUpdates.Controller.Usuario.Factory;

interface

uses PDVUpdates.Controller.Usuario.Interfaces;

type

  TControllerUsuarioFactory = class(TInterfacedObject,
    iControllerUsuarioFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerUsuarioFactory;
    function Usuario: iControllerUsuario;
  end;

implementation

{ TControllerUsuarioFactory }

uses PDVUpdates.Controller.Usuario;

constructor TControllerUsuarioFactory.Create;
begin

end;

destructor TControllerUsuarioFactory.Destroy;
begin

  inherited;
end;

class function TControllerUsuarioFactory.New: iControllerUsuarioFactory;
begin
  Result := Self.Create;
end;

function TControllerUsuarioFactory.Usuario: iControllerUsuario;
begin
  Result := TControllerUsuario.New;
end;

end.
