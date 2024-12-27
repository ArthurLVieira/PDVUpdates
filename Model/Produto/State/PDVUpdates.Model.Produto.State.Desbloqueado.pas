unit PDVUpdates.Model.Produto.State.Desbloqueado;

interface

uses PDVUpdates.Model.Produto.Interfaces;

type

  TModelProdutoStateDesbloqueado = class(TInterfacedObject,
    iModelprodutoMetodos)
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

{ TModelProdutoStateDesbloqueado }

function TModelProdutoStateDesbloqueado.Bloquear: iModelProdutoMetodosBloquear;
begin

end;

function TModelProdutoStateDesbloqueado.Cadastrar: iModelProdutoMetodosCadastrar;
begin

end;

function TModelProdutoStateDesbloqueado.&End: iModelProduto;
begin

end;

constructor TModelProdutoStateDesbloqueado.Create;
begin

end;

function TModelProdutoStateDesbloqueado.Desbloquer: iModelProdutoMetodosDesbloquear;
begin

end;

destructor TModelProdutoStateDesbloqueado.Destroy;
begin

  inherited;
end;

function TModelProdutoStateDesbloqueado.Editar: iModelProdutoMetodosEditar;
begin

end;

function TModelProdutoStateDesbloqueado.Excluir: iModelProdutoMetodosExcluir;
begin

end;

class function TModelProdutoStateDesbloqueado.New: iModelprodutoMetodos;
begin
  Result := Self.Create;
end;

function TModelProdutoStateDesbloqueado.Vender: iModelProdutoMetodosVender;
begin

end;

end.
