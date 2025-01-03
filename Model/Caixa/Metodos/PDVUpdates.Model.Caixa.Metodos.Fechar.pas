unit PDVUpdates.Model.Caixa.Metodos.Fechar;

interface

uses PDVUpdates.Model.Caixa.Interfaces, PDVUpdates.Model.Usuario.Interfaces;

type

  TModelCaixaMetodosFechar = class(TInterfacedObject, iModelCaixaMetodosFechar)
  private
    FParent: iModelCaixa;
    FValor: Currency;
    FUsuario: iModelUsuario;
  public
    constructor Create(Value: iModelCaixa);
    destructor Destroy; override;
    class function New(Value: iModelCaixa): iModelCaixaMetodosFechar;
    function SetValorFechamento(Value: Currency): iModelCaixaMetodosFechar;
    function SetFiscal(Value: iModelUsuario): iModelCaixaMetodosFechar;
    function &EndFechar: iModelCaixaMetodos;
  end;

implementation

{ TModelCaixaMetodosFechar }

constructor TModelCaixaMetodosFechar.Create(Value: iModelCaixa);
begin
  FParent := Value;
end;

destructor TModelCaixaMetodosFechar.Destroy;
begin

  inherited;
end;

function TModelCaixaMetodosFechar.EndFechar: iModelCaixaMetodos;
begin
  Result := FParent.Metodos;
  // TODO: Implementar metodos de fechamento do caixa;
end;

class function TModelCaixaMetodosFechar.New(Value: iModelCaixa)
  : iModelCaixaMetodosFechar;
begin
  Result := Self.Create(Value);
end;

function TModelCaixaMetodosFechar.SetFiscal(Value: iModelUsuario)
  : iModelCaixaMetodosFechar;
begin
  Result := Self;
  FUsuario := Value;
end;

function TModelCaixaMetodosFechar.SetValorFechamento(Value: Currency)
  : iModelCaixaMetodosFechar;
begin
  Result := Self;
  FValor := Value;
end;

end.
