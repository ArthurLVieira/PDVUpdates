unit PDVUpdates.Model.Caixa.Metodos.Suprimento;

interface

uses PDVUpdates.Model.Caixa.Metodos.Interfaces,
  PDVUpdates.Model.Usuario.Interfaces;

type

  TModelCaixaMetodosSuprimento = class(TInterfacedObject,
    iModelCaixaMetodosSuprimento)
  private
    FMetodos: iModelCaixaMetodos;
    FValor: Currency;
    FUsuario: iModelUsuario;
  public
    constructor Create(Value: iModelCaixaMetodos);
    destructor Destroy; override;
    class function New(Value: iModelCaixaMetodos): iModelCaixaMetodosSuprimento;
    Function SetValorSuprimento(Value: Currency): iModelCaixaMetodosSuprimento;
    function SetAutorizadorSuprimento(Value: iModelUsuario)
      : iModelCaixaMetodosSuprimento;
    function &EndSuprimento: iModelCaixaMetodos;
  end;

implementation

{ TModelCaixaMetodosSuprimento }

constructor TModelCaixaMetodosSuprimento.Create(Value: iModelCaixaMetodos);
begin
  FMetodos := Value;
end;

destructor TModelCaixaMetodosSuprimento.Destroy;
begin

  inherited;
end;

function TModelCaixaMetodosSuprimento.EndSuprimento: iModelCaixaMetodos;
begin
  Result := FMetodos;
end;

class function TModelCaixaMetodosSuprimento.New(Value: iModelCaixaMetodos)
  : iModelCaixaMetodosSuprimento;
begin
  Result := Self.Create(Value);
end;

function TModelCaixaMetodosSuprimento.SetAutorizadorSuprimento
  (Value: iModelUsuario): iModelCaixaMetodosSuprimento;
begin
  Result := Self;
  FUsuario := Value;
end;

function TModelCaixaMetodosSuprimento.SetValorSuprimento(Value: Currency)
  : iModelCaixaMetodosSuprimento;
begin
  Result := Self;
  FValor := Value;
end;

end.