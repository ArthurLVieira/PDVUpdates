unit PDVUpdates.Model.Caixa.Metodos.Bloquear;

interface

uses PDVUpdates.Model.Caixa.Interfaces, PDVUpdates.Model.Usuario.Interfaces;

type

  TModelCaixaMetodosBloquear = class(TInterfacedObject,
    iModelCaixaMetodosBloquear)
  private
    FParent: iModelCaixa;
    FUsuario: iModelUsuario;
  public
    constructor Create(Value: iModelCaixa);
    destructor Destroy; override;
    class function New(Value: iModelCaixa): iModelCaixaMetodosBloquear;
    function SetAutorizadorBloqueio(Value: iModelUsuario)
      : iModelCaixaMetodosBloquear;
    function &EndBloquear: iModelCaixaMetodos;
  end;

implementation

{ TModelCaixaMetodosBloquear }

constructor TModelCaixaMetodosBloquear.Create(Value: iModelCaixa);
begin
  FParent := Value;
end;

destructor TModelCaixaMetodosBloquear.Destroy;
begin

  inherited;
end;

function TModelCaixaMetodosBloquear.EndBloquear: iModelCaixaMetodos;
begin
  Result := FParent.Metodos;
  // TODO: Implementar metodos de bloqueio do caixa;
end;

class function TModelCaixaMetodosBloquear.New(Value: iModelCaixa)
  : iModelCaixaMetodosBloquear;
begin
  Result := Self.Create(Value);
end;

function TModelCaixaMetodosBloquear.SetAutorizadorBloqueio(Value: iModelUsuario)
  : iModelCaixaMetodosBloquear;
begin
  Result := Self;
  FUsuario := Value;
end;

end.
