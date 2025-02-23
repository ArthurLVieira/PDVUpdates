unit PDVUpdates.Model.Entity.Factory;

interface

uses
  PDVUpdates.Model.Entity.Interfaces, PDVUpdates.Model.Entity.Usuario;

type

  TModelEntityFactory = class(TInterfacedObject, iModelEntityFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelEntityFactory;
    function Usuario: TModelEntityUsuario;

  end;

implementation

{ TModelEntityFactory }

constructor TModelEntityFactory.Create;
begin

end;

destructor TModelEntityFactory.Destroy;
begin

  inherited;
end;

class function TModelEntityFactory.New: iModelEntityFactory;
begin
  Result := Self.Create;
end;

function TModelEntityFactory.Usuario: TModelEntityUsuario;
begin
  Result := TModelEntityUsuario.Create;

end;

end.
