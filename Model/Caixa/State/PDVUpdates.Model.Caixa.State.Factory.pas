unit PDVUpdates.Model.Caixa.State.Factory;

interface

uses
  PDVUpdates.Model.Caixa.State.Interfaces, PDVUpdates.Model.Caixa.Interfaces;

type

  TModelCaixaStateFactory = class(TInterfacedObject, iModelCaixaStateFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelCaixaStateFactory;
    function Aberto: iModelCaixaMetodos;
    function Fechado: iModelCaixaMetodos;
    function Bloqueado: iModelCaixaMetodos;
  end;

implementation

{ TModelCaixaStateFactory }

uses PDVUpdates.Model.Caixa.State.Aberto, PDVUpdates.Model.Caixa.State.Fechado,
  PDVUpdates.Model.Caixa.State.Bloqueado;

function TModelCaixaStateFactory.Aberto: iModelCaixaMetodos;
begin
  Result := TModelCaixaStateAberto.New;
end;

function TModelCaixaStateFactory.Bloqueado: iModelCaixaMetodos;
begin
  Result := TModelCaixaStateBloqueado.New;
end;

constructor TModelCaixaStateFactory.Create;
begin

end;

destructor TModelCaixaStateFactory.Destroy;
begin

  inherited;
end;

function TModelCaixaStateFactory.Fechado: iModelCaixaMetodos;
begin
  Result := TModelCaixaStateFechado.New;
end;

class function TModelCaixaStateFactory.New: iModelCaixaStateFactory;
begin
  Result := Self.Create;
end;

end.
