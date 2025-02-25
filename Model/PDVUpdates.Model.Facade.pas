unit PDVUpdates.Model.Facade;

interface

uses
  PDVUpdates.Model.Interfaces, PDVUpdates.Model.Caixa.Interfaces,
  PDVUpdates.Model.Usuario.Interfaces, PDVUpdates.Model.Entity.Interfaces,
  PDVUpdates.Model.Usuario.Factory.Interfaces;

type

  TModelFacade = class(TInterfacedObject, iModelFacade)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelFacade;
    function Caixa: iModelCaixaFactory;
    function Usuario: iModelUsuarioFactory;
    function Entity: iModelEntityFactory;

  end;

implementation

uses
  PDVUpdates.Model.Caixa.Factory, PDVUpdates.Model.Usuario.Factory,
  PDVUpdates.Model.Entity.Factory;

{ TModelFacade }

function TModelFacade.Caixa: iModelCaixaFactory;
begin
  Result := TModelCaixaFactory.New;
end;

constructor TModelFacade.Create;
begin

end;

destructor TModelFacade.Destroy;
begin

  inherited;
end;

function TModelFacade.Entity: iModelEntityFactory;
begin
  Result := TModelEntityFactory.New;
end;

class function TModelFacade.New: iModelFacade;
begin
  Result := Self.Create;
end;

function TModelFacade.Usuario: iModelUsuarioFactory;
begin
  Result := TModelUsuarioFactory.New;

end;

end.
