unit PDVUpdates.Model.Produto.Metodos.Cadastrar;

interface

uses PDVUpdates.Model.Produto.Interfaces;

type

  TModelProdutoMetodosCadastrar = class(TInterfacedObject,
    iModelProdutoMetodosCadastrar)
  private
    FParent: iModelProdutoMetodos;
  public
    constructor Create(Value: iModelProdutoMetodos);
    destructor Destroy; override;
    class function New(Value: iModelProdutoMetodos)
      : iModelProdutoMetodosCadastrar;
    function SetID(Value: Integer): iModelProdutoMetodosCadastrar;
    function GetID: Integer;
  end;

implementation

{ TModelProdutoMetodosCadastrar }

//teste

constructor TModelProdutoMetodosCadastrar.Create(Value: iModelProdutoMetodos);
begin
  FParent := Value;
end;

destructor TModelProdutoMetodosCadastrar.Destroy;
begin

  inherited;
end;

function TModelProdutoMetodosCadastrar.GetID: Integer;
begin

end;

class function TModelProdutoMetodosCadastrar.New(Value: iModelProdutoMetodos)
  : iModelProdutoMetodosCadastrar;
begin
  Result := Self.Create(Value);
end;

function TModelProdutoMetodosCadastrar.SetID(
  Value: Integer): iModelProdutoMetodosCadastrar;
begin

end;

end.
