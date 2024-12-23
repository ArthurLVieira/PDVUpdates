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

uses PDVUpdates.Model.Usuario.Factory, PDVUpdates.Model.Usuario.Tipo.Factory,
  PDVUpdates.Model.Usuario.Tipo.Interfaces,
  PDVUpdates.Controller.Usuario.Factory;

function TControllerUsuario.Caixa: iModelUsuarioMetodos;
begin
  Result := TModelUsuarioFactory.New.Usuario.Metodos
    (TModelUsuarioTipoFactory.New.UsuarioTipo(TUsuarioTipo.Caixa, FModelUsuario,
    TModelUsuarioTipoFactory.New.UsuarioTipo(TUsuarioTipo.Fiscal, FModelUsuario,
    TModelUsuarioTipoFactory.New.UsuarioTipo(TUsuarioTipo.Gerente,
    FModelUsuario).SetOperacao(TControllerUsuarioFactory.New.Operacoes))
    .SetOperacao(TControllerUsuarioFactory.New.Operacoes))
    .SetOperacao(TControllerUsuarioFactory.New.Operacoes));
end;

constructor TControllerUsuario.Create;
begin

end;

destructor TControllerUsuario.Destroy;
begin
  FModelUsuario := TModelUsuarioFactory.New.Usuario;
  inherited;
end;

function TControllerUsuario.Gerente: iModelUsuarioMetodos;
begin
  Result := TModelUsuarioFactory.New.Usuario.Metodos
    (TModelUsuarioTipoFactory.New.UsuarioTipo(TUsuarioTipo.Gerente,
    FModelUsuario).SetOperacao(TControllerUsuarioFactory.New.Operacoes));
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
  Result := TModelUsuarioFactory.New.Usuario.Metodos
    (TModelUsuarioTipoFactory.New.UsuarioTipo(TUsuarioTipo.Fiscal,
    FModelUsuario, TModelUsuarioTipoFactory.New.UsuarioTipo(TUsuarioTipo.Fiscal,
    FModelUsuario).SetOperacao(TControllerUsuarioFactory.New.Operacoes))
    .SetOperacao(TControllerUsuarioFactory.New.Operacoes));
end;

end.
