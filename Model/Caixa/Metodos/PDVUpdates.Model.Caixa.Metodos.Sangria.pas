unit PDVUpdates.Model.Caixa.Metodos.Sangria;

interface

uses PDVUpdates.Model.Caixa.Metodos.Interfaces,
  PDVUpdates.Model.Usuario.Interfaces;

type

  TModelCaixaMetodosSangria = class(TInterfacedObject,
    iModelCaixaMetodosSangria)
  private
    FMetodos: iModelCaixaMetodos;
    FValor: Currency;
    FUsuario: iModelUsuario;
  public
    constructor Create(Value: iModelCaixaMetodos);
    destructor Destroy; override;
    class function New(Value: iModelCaixaMetodos): iModelCaixaMetodosSangria;
    Function SetValorSangria(Value: Currency): iModelCaixaMetodosSangria;
    function SetAutorizadorSangria(Value: iModelUsuario)
      : iModelCaixaMetodosSangria;
    function &EndSangria: iModelCaixaMetodos;
  end;

implementation

{ TModelCaixaMetodosSangria }

constructor TModelCaixaMetodosSangria.Create(Value: iModelCaixaMetodos);
begin
  FMetodos := Value;
end;

destructor TModelCaixaMetodosSangria.Destroy;
begin

  inherited;
end;

function TModelCaixaMetodosSangria.EndSangria: iModelCaixaMetodos;
begin
  Result := FMetodos;
end;

class function TModelCaixaMetodosSangria.New(Value: iModelCaixaMetodos)
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
