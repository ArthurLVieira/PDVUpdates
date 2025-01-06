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
    constructor Create;
    destructor Destroy; override;
    class function New: iModelUsuarioFuncoesFactory;
    function ListarUsuario(Value: iModelUsuario)
      : iModelUsuarioFuncoesListaUsuario;
  end;

implementation

uses
  PDVUpdates.Model.Usuario.Funcoes.ListaUsuario;

{ TModelUsuarioFuncoesFactory }

constructor TModelUsuarioFuncoesFactory.Create;
begin

end;

destructor TModelUsuarioFuncoesFactory.Destroy;
begin

  inherited;
end;

function TModelUsuarioFuncoesFactory.ListarUsuario(Value: iModelUsuario)
  : iModelUsuarioFuncoesListaUsuario;
begin
  Result := TModelUsuarioFuncoesListaUsuario.New(Value);
end;

class function TModelUsuarioFuncoesFactory.New: iModelUsuarioFuncoesFactory;
begin
  Result := Self.Create;
end;

end.
