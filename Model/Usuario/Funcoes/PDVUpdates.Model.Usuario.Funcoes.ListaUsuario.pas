unit PDVUpdates.Model.Usuario.Funcoes.ListaUsuario;

interface

uses
  PDVUpdates.Model.Usuario.Funcoes.Interfaces,
  PDVUpdates.Model.Usuario.Interfaces;

type

  TModelUsuarioFuncoesListaUsuario = class(TInterfacedObject,
    iModelUsuarioFuncoesListaUsuario)
  private
    FParent: iModelUsuario;
  public
    constructor Create(Value: iModelUsuario);
    destructor Destroy; override;
    class function New(Value: iModelUsuario): iModelUsuarioFuncoesListaUsuario;
  end;

implementation

{ TModelUsuarioFuncoesListaUsuario }

constructor TModelUsuarioFuncoesListaUsuario.Create(Value: iModelUsuario);
begin
  FParent := Value;
end;

destructor TModelUsuarioFuncoesListaUsuario.Destroy;
begin

  inherited;
end;

class function TModelUsuarioFuncoesListaUsuario.New(Value: iModelUsuario)
  : iModelUsuarioFuncoesListaUsuario;
begin
  Result := Self.Create(Value);
end;

end.
