unit PDVUpdates.Model.Caixa.Metodos.Abrir;

interface

uses
  PDVUpdates.Model.Usuario.Interfaces,
  PDVUpdates.Model.Caixa.Metodos.Interfaces;

type

  TModelCaixaMetodosAbrir = class(TInterfacedObject, iModelCaixaMetodosAbrir)
  private
    FMetodos: iModelCaixaMetodos;
    FValor: Currency;
    FUsuario: iModelUsuario;
  public
    constructor Create(Value: iModelCaixaMetodos);
    destructor Destroy; override;
    class function New(Value: iModelCaixaMetodos): iModelCaixaMetodosAbrir;
    function SetValorAbertuta(Value: Currency): iModelCaixaMetodosAbrir;
    function SetOperador(Value: iModelUsuario): iModelCaixaMetodosAbrir;
    function &EndAbrir: iModelCaixaMetodos;
  end;

implementation

{ TModelCaixaMetodosAbrir }

constructor TModelCaixaMetodosAbrir.Create(Value: iModelCaixaMetodos);
begin
  FMetodos := Value;
end;

destructor TModelCaixaMetodosAbrir.Destroy;
begin

  inherited;
end;

function TModelCaixaMetodosAbrir.EndAbrir: iModelCaixaMetodos;
begin
  Result := FMetodos;
end;

class function TModelCaixaMetodosAbrir.New(Value: iModelCaixaMetodos)
  : iModelCaixaMetodosAbrir;
begin
  Result := Self.Create(Value);
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
