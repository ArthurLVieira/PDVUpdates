unit PDVUpdates.Model.Caixa.Metodos.Suprimento;

interface

uses PDVUpdates.Model.Caixa.Interfaces, PDVUpdates.Model.Usuario.Interfaces;

type

  TModelCaixaMetodosSuprimento = class(TInterfacedObject,
    iModelCaixaMetodosSuprimento)
  private
    FParent: iModelCaixa;
    FValor: Currency;
    FUsuario: iModelUsuario;
  public
    constructor Create(Value: iModelCaixa);
    destructor Destroy; override;
    class function New(Value: iModelCaixa): iModelCaixaMetodosSuprimento;
    Function SetValorSuprimento(Value: Currency): iModelCaixaMetodosSuprimento;
    function SetAutorizadorSuprimento(Value: iModelUsuario)
      : iModelCaixaMetodosSuprimento;
    function &EndSuprimento: iModelCaixaMetodos;
  end;

implementation

{ TModelCaixaMetodosSuprimento }

constructor TModelCaixaMetodosSuprimento.Create(Value: iModelCaixa);
begin
  FParent := Value;
end;

destructor TModelCaixaMetodosSuprimento.Destroy;
begin

  inherited;
end;

function TModelCaixaMetodosSuprimento.EndSuprimento: iModelCaixaMetodos;
begin
  Result := FParent.Metodos;
  // TODO: Implementar metodos de suprimento do caixa;
end;

class function TModelCaixaMetodosSuprimento.New(Value: iModelCaixa)
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
