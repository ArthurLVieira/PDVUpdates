unit PDVUpdates.Model.Produto.State.Bloqueado;

interface

uses PDVUpdates.Model.Produto.Interfaces;

type

  TModelProdutoStateBloqueado = class(TInterfacedObject, iModelprodutoMetodos)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelprodutoMetodos;
    function Cadastrar: iModelProdutoMetodosCadastrar;
    function Excluir: iModelProdutoMetodosExcluir;
    function Editar: iModelProdutoMetodosEditar;
    function Bloquear: iModelProdutoMetodosBloquear;
    function Desbloquer: iModelProdutoMetodosDesbloquear;
    function Vender: iModelProdutoMetodosVender;
    function &End: iModelProduto;
  end;

implementation

uses
  System.SysUtils;

{ TModelProdutoStateBloqueado }

function TModelProdutoStateBloqueado.&End: iModelProduto;
begin

end;

function TModelProdutoStateBloqueado.Bloquear: iModelProdutoMetodosBloquear;
begin
  raise Exception.Create('Produto bloqueado');
end;

function TModelProdutoStateBloqueado.Cadastrar: iModelProdutoMetodosCadastrar;
begin

end;

constructor TModelProdutoStateBloqueado.Create;
begin

end;

function TModelProdutoStateBloqueado.Desbloquer
  : iModelProdutoMetodosDesbloquear;
begin

end;

destructor TModelProdutoStateBloqueado.Destroy;
begin

  inherited;
end;

function TModelProdutoStateBloqueado.Editar: iModelProdutoMetodosEditar;
begin
  raise Exception.Create('Produto bloqueado');
end;

function TModelProdutoStateBloqueado.Excluir: iModelProdutoMetodosExcluir;
begin
  raise Exception.Create('Produto bloqueado');
end;

class function TModelProdutoStateBloqueado.New: iModelprodutoMetodos;
begin
  Result := Self.Create;
end;

function TModelProdutoStateBloqueado.Vender: iModelProdutoMetodosVender;
begin
  raise Exception.Create('Produto bloqueado');
end;

end.
