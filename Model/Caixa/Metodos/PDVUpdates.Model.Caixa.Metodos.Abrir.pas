unit PDVUpdates.Model.Caixa.Metodos.Abrir;

interface

uses
  PDVUpdates.Model.Caixa.Metodos.Interfaces,
  PDVUpdates.Model.Usuario.Interfaces;

type

  TModelCaixaMetodosAbrir = class(TInterfacedObject, iModelCaixaMetodosAbrir)
  private
    FValor: Currency;
    FUsuario: iModelUsuario;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelCaixaMetodosAbrir;
    function SetValorAbertuta(Value: Currency): iModelCaixaMetodosAbrir;
    function SetOperador(Value: iModelUsuario): iModelCaixaMetodosAbrir;
    function &EndAbrir: iModelCaixaMetodosFactory;
  end;

implementation

{ TModelCaixaMetodosAbrir }

constructor TModelCaixaMetodosAbrir.Create;
begin

end;

destructor TModelCaixaMetodosAbrir.Destroy;
begin

  inherited;
end;

function TModelCaixaMetodosAbrir.EndAbrir: iModelCaixaMetodosFactory;
begin
  Result := tmodelcaixa
end;

class function TModelCaixaMetodosAbrir.New: iModelCaixaMetodosAbrir;
begin
  Result := Self.Create;
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
