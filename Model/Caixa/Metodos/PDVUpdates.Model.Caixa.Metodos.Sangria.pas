unit PDVUpdates.Model.Caixa.Metodos.Sangria;

interface

uses PDVUpdates.Model.Caixa.Interfaces, PDVUpdates.Model.Usuario.Interfaces;

type

  TModelCaixaMetodosSangria = class(TInterfacedObject,
    iModelCaixaMetodosSangria)
  private
    FPerent: iModelCaixa;
    FValor: Currency;
    FUsuario: iModelUsuario;
  public
    constructor Create(Value: iModelCaixa);
    destructor Destroy; override;
    class function New(Value: iModelCaixa): iModelCaixaMetodosSangria;
    Function SetValorSangria(Value: Currency): iModelCaixaMetodosSangria;
    function SetAutorizadorSangria(Value: iModelUsuario)
      : iModelCaixaMetodosSangria;
    function &EndSangria: iModelCaixaMetodos;
  end;

implementation

{ TModelCaixaMetodosSangria }

constructor TModelCaixaMetodosSangria.Create(Value: iModelCaixa);
begin
  FPerent := Value;
end;

destructor TModelCaixaMetodosSangria.Destroy;
begin

  inherited;
end;

function TModelCaixaMetodosSangria.EndSangria: iModelCaixaMetodos;
begin
  Result := FPerent.Metodos
  // TODO: Implementar metodos de sangria do caixa;;
end;

class function TModelCaixaMetodosSangria.New(Value: iModelCaixa)
  : iModelCaixaMetodosSangria;
begin
  Result := Self.Create(Value);
end;

function TModelCaixaMetodosSangria.SetAutorizadorSangria(Value: iModelUsuario)
  : iModelCaixaMetodosSangria;
begin
  Result := Self;
  FUsuario := Value;
end;

function TModelCaixaMetodosSangria.SetValorSangria(Value: Currency)
  : iModelCaixaMetodosSangria;
begin
  Result := Self;
  FValor := Value;
end;

end.
