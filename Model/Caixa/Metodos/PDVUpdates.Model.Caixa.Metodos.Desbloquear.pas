unit PDVUpdates.Model.Caixa.Metodos.Desbloquear;

interface

uses PDVUpdates.Model.Caixa.Interfaces, PDVUpdates.Model.Usuario.Interfaces;

type

  TModelCaixaMetodosDesbloquear = class(TInterfacedObject,
    iModelCaixaMetodosDesbloquear)
  private
    FParent: iModelCaixa;
    FUsuario: iModelUsuario;
  public
    constructor Create(Value: iModelCaixa);
    destructor Destroy; override;
    class function New(Value: iModelCaixa): iModelCaixaMetodosDesbloquear;
    function SetAutorizadorDesbloqueio(Value: iModelUsuario)
      : iModelCaixaMetodosDesbloquear;
    function &EndDesbloquear: iModelCaixaMetodos;
  end;

implementation

{ TMinhaClasse }

constructor TModelCaixaMetodosDesbloquear.Create(Value: iModelCaixa);
begin
  FParent := Value;
end;

destructor TModelCaixaMetodosDesbloquear.Destroy;
begin

  inherited;
end;

function TModelCaixaMetodosDesbloquear.EndDesbloquear: iModelCaixaMetodos;
begin
  Result := FParent.Metodos;
  // TODO: Implementar metodos de desbloqueio do caixa;
end;

class function TModelCaixaMetodosDesbloquear.New(Value: iModelCaixa)
  : iModelCaixaMetodosDesbloquear;
begin
  Result := Self.Create(Value);
end;

function TModelCaixaMetodosDesbloquear.SetAutorizadorDesbloqueio
  (Value: iModelUsuario): iModelCaixaMetodosDesbloquear;
begin
  Result := Self;
  FUsuario := Value;
end;

end.
