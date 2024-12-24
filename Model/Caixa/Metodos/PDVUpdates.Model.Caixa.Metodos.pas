unit PDVUpdates.Model.Caixa.Metodos;

interface

uses PDVUpdates.Model.Caixa.Metodos.Interfaces;

type

  TModelCaixaMetodos = class(TInterfacedObject, iModelCaixaMetodos)
  private
    FMetodos: iModelCaixaMetodos;
  public
    constructor Create(Value: iModelCaixaMetodos);
    destructor Destroy; override;
    class function New(Value: iModelCaixaMetodos): iModelCaixaMetodos;
  end;

implementation

{ TModelCaixaMetodos }

constructor TModelCaixaMetodos.Create(Value: iModelCaixaMetodos);
begin
  FMetodos := Value;
end;

destructor TModelCaixaMetodos.Destroy;
begin

  inherited;
end;

class function TModelCaixaMetodos.New(Value: iModelCaixaMetodos)
  : iModelCaixaMetodos;
begin
  Result := Self.Create(Value);
end;

end.
