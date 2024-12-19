unit PDVUpdates.Model.Usuario;

interface

uses PDVUpdates.Model.Usuario.Interfaces, PDVUpdates.Model.Entity.Usuario;

type

  TModelUsuario = class(TInterfacedObject, iModelUsuario)
  private
    FTipoMetodo: iModelUsuarioMetodos;
    FIterator: iModelUsuarioIterator;
    FEntity: TModelEntityUsuario;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelUsuario;
    function Metodos(Value: iModelUsuarioMetodos): iModelUsuarioMetodos;
    function Iterator: iModelUsuarioIterator;
    function Entity: TModelEntityUsuario;
  end;

implementation

{ TModelUsuario }

uses PDVUpdates.Model.Usuario.Factory, PDVUpdates.Model.Entity.Factory;

constructor TModelUsuario.Create;
begin
  FEntity := TModelEntityFactory.New.Usuario;
  FIterator := TModelUsuarioFactory.New.Iterator(Self);
end;

destructor TModelUsuario.Destroy;
begin

  inherited;
end;

function TModelUsuario.Entity: TModelEntityUsuario;
begin
  Result := FEntity;
end;

function TModelUsuario.Iterator: iModelUsuarioIterator;
begin
  Result := FIterator;
end;

function TModelUsuario.Metodos(Value: iModelUsuarioMetodos)
  : iModelUsuarioMetodos;
begin
  FTipoMetodo := Value;
  Result := FTipoMetodo;
end;

class function TModelUsuario.New: iModelUsuario;
begin
  Result := Self.Create;
end;

end.
