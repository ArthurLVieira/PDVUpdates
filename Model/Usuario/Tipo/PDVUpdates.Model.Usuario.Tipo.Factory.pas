unit PDVUpdates.Model.Usuario.Tipo.Factory;

interface

uses PDVUpdates.Model.Usuario.Tipo.Interfaces,
  PDVUpdates.Model.Usuario.Interfaces;

type

  TModelUsuarioTipoFactory = class(TInterfacedObject, iModelUsuarioTipoFactory)
  private
    FResponsability: iModelUsuarioMetodos;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelUsuarioTipoFactory;
    function UsuarioTipo(Value: TUsuarioTipo; Parent: iModelUsuario;
      Responsability: iModelUsuarioMetodos = nil): iModelUsuarioMetodos;
  end;

implementation

{ TModelUsuarioTipoFactory }

uses PDVUpdates.Model.Usuario.Tipo.Caixa, PDVUpdates.Model.Usuario.Tipo.Fiscal,
  PDVUpdates.Model.Usuario.Tipo.Gerente, PDVUpdates.Model.Usuario.Tipo.Padrao;

constructor TModelUsuarioTipoFactory.Create;
begin

end;

destructor TModelUsuarioTipoFactory.Destroy;
begin

  inherited;
end;

class function TModelUsuarioTipoFactory.New: iModelUsuarioTipoFactory;
begin
  Result := Self.Create;
end;

function TModelUsuarioTipoFactory.UsuarioTipo(Value: TUsuarioTipo;
  Parent: iModelUsuario; Responsability: iModelUsuarioMetodos = nil)
  : iModelUsuarioMetodos;
begin
  if not Assigned(Responsability) then
    FResponsability := TModelUsuarioTipoPadrao.New(Parent);

  case Value of
    Caixa:
      Result := TModelUsuarioTipoCAixa.New(Parent, Responsability);
    Fiscal:
      Result := TModelUsuarioTipoFiscal.New(Parent, Responsability);
    Gerente:
      Result := TModelUsuarioTipoGerente.New(Parent, Responsability);
  end;
end;

end.
