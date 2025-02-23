unit PDVUpdates.Model.Caixa.Metodos.Abrir;

interface

uses PDVUpdates.Model.Caixa.Interfaces, PDVUpdates.Model.Usuario.Interfaces;

type

  TModelCaixaMetodosAbrir = class(TInterfacedObject, iModelCaixaMetodosAbrir)
  private
    FParent: iModelCaixa;
    FValor: Currency;
    FUsuario, FFiscal: iModelUsuario;
  public
    constructor Create(Value: iModelCaixa);
    destructor Destroy; override;
    class function New(Value: iModelCaixa): iModelCaixaMetodosAbrir;
    function SetValorAbertuta(Value: Currency): iModelCaixaMetodosAbrir;
    function SetOperador(Value: iModelUsuario): iModelCaixaMetodosAbrir;
    function SetFiscal(Value: iModelUsuario): iModelCaixaMetodosAbrir;
    function &EndAbrir: iModelCaixaMetodos;
  end;

implementation

{ TModelCaixaMetodosAbrir }

constructor TModelCaixaMetodosAbrir.Create(Value: iModelCaixa);
begin
  FParent := Value;
end;

destructor TModelCaixaMetodosAbrir.Destroy;
begin

  inherited;
end;

function TModelCaixaMetodosAbrir.EndAbrir: iModelCaixaMetodos;
begin
  Result := FParent.Metodos;
  // TODO: Implementar metodos de abertura do caixa;
end;

class function TModelCaixaMetodosAbrir.New(Value: iModelCaixa)
  : iModelCaixaMetodosAbrir;
begin
  Result := Self.Create(Value);
end;

function TModelCaixaMetodosAbrir.SetFiscal(Value: iModelUsuario)
  : iModelCaixaMetodosAbrir;
begin
  Result := Self;
  FFiscal := Value;
end;

function TModelCaixaMetodosAbrir.SetOperador(Value: iModelUsuario)
  : iModelCaixaMetodosAbrir;
begin
  Result := Self;
  FUsuario := Value;
end;

function TModelCaixaMetodosAbrir.SetValorAbertuta(Value: Currency)
  : iModelCaixaMetodosAbrir;
begin
  Result := Self;
  FValor := Value;
end;

end.
