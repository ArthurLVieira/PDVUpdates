unit PDVUpdates.Model.Usuario.Factory;

interface

uses PDVUpdates.Model.Usuario.Interfaces;

type

  TModelUsuarioFactory = class(TInterfacedObject, iModelUsuarioFactory)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelUsuarioFactory;
    function Usuario: iModelUsuario;
    function Iterator(Parent: iModelUsuario): iModelUsuarioIterator;
  end;

implementation

{ TModelUsuarioFactory }

uses PDVUpdates.Model.Usuario, PDVUpdates.Model.Usuario.Iterator;

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

function TModelUsuarioFactory.Usuario: iModelUsuario;
begin
  Result := TModelUsuario.New;
end;

end.