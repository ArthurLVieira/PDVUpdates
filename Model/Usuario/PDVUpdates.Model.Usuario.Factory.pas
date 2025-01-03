unit PDVUpdates.Model.Usuario.Factory;

interface

uses
  PDVUpdates.Model.Usuario.Tipo.Interfaces,
  PDVUpdates.Model.Usuario.Factory.Interfaces,
  PDVUpdates.Model.Usuario.Interfaces;

type

  TModelUsuarioFactory = class(TInterfacedObject, iModelUsuarioFactory)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelUsuarioFactory;
    function Usuario: iModelUsuario;
    function Iterator(Parent: iModelUsuario): iModelUsuarioIterator;
    function Tipos: iModelUsuarioTipoFactory;
  end;

implementation

{ TModelUsuarioFactory }

uses PDVUpdates.Model.Usuario, PDVUpdates.Model.Usuario.Iterator,
  PDVUpdates.Model.Usuario.Tipo.Factory;

constructor TModelUsuarioFactory.Create;
begin

end;

destructor TModelUsuarioFactory.Destroy;
begin

  inherited;
end;

function TModelUsuarioFactory.Iterator(Parent: iModelUsuario)
  : iModelUsuarioIterator;
begin
  Result := TModelUsuarioIterator.New(Parent);
end;

class function TModelUsuarioFactory.New: iModelUsuarioFactory;
begin
  Result := Self.Create;

end;

function TModelUsuarioFactory.Tipos: iModelUsuarioTipoFactory;
begin
  Result := TModelUsuarioTipoFactory.New;
end;

function TModelUsuarioFactory.Usuario: iModelUsuario;
begin
  Result := TModelUsuario.New;
end;

end.
