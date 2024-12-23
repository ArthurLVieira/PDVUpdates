unit PDVUpdates.Model.Caixa.Metodos.Factory;

interface

uses PDVUpdates.Model.Caixa.Metodos.Interfaces;

type

  TModelCaixaMetodosFactory = class(TInterfacedObject,
    iModelCaixaMetodosFactory)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelCaixaMetodosFactory;
    function Metodos(Value: iModelCaixaMetodos): iModelCaixaMetodos;
  end;

implementation

uses
  PDVUpdates.Model.Caixa.Metodos;

{ TModelCaixaMetodosFactory }

constructor TModelCaixaMetodosFactory.Create;
begin

end;

destructor TModelCaixaMetodosFactory.Destroy;
begin

  inherited;
end;

function TModelCaixaMetodosFactory.Metodos(Value: iModelCaixaMetodos)
  : iModelCaixaMetodos;
begin
  Result := TModelCaixaMetodos.New(Value);
end;

class function TModelCaixaMetodosFactory.New: iModelCaixaMetodosFactory;
begin
  Result := Self.Create;
end;

end.
