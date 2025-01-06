unit PDVUpdates.Model.Usuario.Funcoes.Factory;

interface

uses
  PDVUpdates.Model.Usuario.Funcoes.Interfaces,
  PDVUpdates.Model.Usuario.Interfaces;

type

  TModelUsuarioFuncoesFactory = class(TInterfacedObject,
    iModelUsuarioFuncoesFactory)
  private

  public
    constructor Create(Value: imodelusuario);
    destructor Destroy; override;
    class function New: iModelUsuarioFuncoesFactory;
  end;

implementation

{ TModelUsuarioFuncoesFactory }

constructor TModelUsuarioFuncoesFactory.Create;
begin

end;

destructor TModelUsuarioFuncoesFactory.Destroy;
begin

  inherited;
end;

class function TModelUsuarioFuncoesFactory.New: iModelUsuarioFuncoesFactory;
begin
  Result := Self.Create;
end;

end.
