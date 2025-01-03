unit PDVUpdates.Controller.Usuario;

interface

uses
  PDVUpdates.Controller.Usuario.Interfaces,
  PDVUpdates.Model.Usuario.Interfaces;

type

  TControllerUsuario = class(TInterfacedObject, iControllerUsuario)
  private
    FModelUsuario: iModelUsuario;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerUsuario;
    function Model: iModelUsuario;
    function Caixa: iModelUsuarioMetodos;
    function Fiscal: iModelUsuarioMetodos;
    function Gerente: iModelUsuarioMetodos;
  end;

implementation

{ TControllerUsuario }

uses
  PDVUpdates.Controller.Usuario.Factory, PDVUpdates.Model.Facade,
  PDVUpdates.Controller.Facade, PDVUpdates.Model.Usuario.Tipo.Interfaces;

function TControllerUsuario.Caixa: iModelUsuarioMetodos;
begin
  Result := TModelFacade.New.Usuario.Usuario.Metodos
    (TModelFacade.New.Usuario.Tipos.UsuarioTipo(TUsuarioTipo.Caixa,
    FModelUsuario, TModelFacade.New.Usuario.Tipos.UsuarioTipo
    (TUsuarioTipo.Fiscal, FModelUsuario,
    TModelFacade.New.Usuario.Tipos.UsuarioTipo(TUsuarioTipo.Gerente,
    FModelUsuario).SetOperacao(TControllerFacade.New.Usuario.Operacoes))
    .SetOperacao(TControllerFacade.New.Usuario.Operacoes))
    .SetOperacao(TControllerFacade.New.Usuario.Operacoes));
end;

constructor TControllerUsuario.Create;
begin

end;

destructor TControllerUsuario.Destroy;
begin
  FModelUsuario := TModelFacade.New.Usuario.Usuario;
  inherited;
end;

function TControllerUsuario.Gerente: iModelUsuarioMetodos;
begin
  Result := TModelFacade.New.Usuario.Usuario.Metodos
    (TModelFacade.New.Usuario.Tipos.UsuarioTipo(TUsuarioTipo.Gerente,
    FModelUsuario).SetOperacao(TControllerFacade.New.Usuario.Operacoes));
end;

function TControllerUsuario.Model: iModelUsuario;
begin
  Result := FModelUsuario;
end;

class function TControllerUsuario.New: iControllerUsuario;
begin
  Result := Self.Create;
end;

function TControllerUsuario.Fiscal: iModelUsuarioMetodos;
begin
  Result := TModelFacade.New.Usuario.Usuario.Metodos
    (TModelFacade.New.Usuario.Tipos.UsuarioTipo(TUsuarioTipo.Fiscal,
    FModelUsuario, TModelFacade.New.Usuario.Tipos.UsuarioTipo
    (TUsuarioTipo.Fiscal, FModelUsuario)
    .SetOperacao(TControllerFacade.New.Usuario.Operacoes))
    .SetOperacao(TControllerFacade.New.Usuario.Operacoes));
end;

end.
