unit PDVUpdates.Controller.Usuario.Factory;

interface

uses PDVUpdates.Controller.Usuario.Interfaces,
  PDVUpdates.Controller.Usuario.Operacoes.Interfaces;

type

  TControllerUsuarioFactory = class(TInterfacedObject,
    iControllerUsuarioFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerUsuarioFactory;
    function Usuario: iControllerUsuario;
    function Operacoes: iControllerUsuarioOperacoes;
  end;

implementation

{ TControllerUsuarioFactory }

uses PDVUpdates.Controller.Usuario, PDVUpdates.Controller.Usuario.Operacoes;

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

function TControllerUsuarioFactory.Operacoes: iControllerUsuarioOperacoes;
begin
  Result := TControllerUsuarioOperacoes.New;
end;

function TControllerUsuarioFactory.Usuario: iControllerUsuario;
begin
  Result := TControllerUsuario.New;
end;

end.