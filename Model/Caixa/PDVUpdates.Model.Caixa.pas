unit PDVUpdates.Model.Caixa;

interface

uses
  PDVUpdates.Model.Caixa.Interfaces, PDVUpdates.Model.Usuario.Interfaces,
  PDVUpdates.Model.Caixa.Metodos.Interfaces,
  PDVUpdates.Model.Caixa.State.Factory,
  PDVUpdates.Model.Caixa.State.Interfaces;

type

  TModelCaixa = class(TInterfacedObject, iModelCaixa, iModelCaixaMetodos)
  private
    FMetodosFactory: iModelCaixaMetodosFactory;
    FState: iModelCaixaMetodos;

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelCaixa;
    function Metodos: iModelCaixaMetodos;
    function SetState(Value: iModelCaixaMetodos): iModelCaixa;

    // ModelCaixaMetodos
    function Abrir: iModelCaixaMetodosAbrir;
    function Fechar: iModelCaixaMetodosFechar;
    function Suprimento: iModelCaixaMetodosSuprimento;
    function Sangria: iModelCaixaMetodosSangria;
    function TrocarOperador: iModelCaixaMetodosTrocarOperador;
    function BloquearCaixa: iModelCaixaMetodosBloquear;
    function DesbloquearCaixa: iModelCaixaMetodosDesbloquear;
    function &EndMetodos: iModelCaixa;

  end;

implementation

uses
  PDVUpdates.Model.Caixa.Metodos.Abrir, PDVUpdates.Model.Caixa.Metodos.Factory;

{ TModelCaixa }

function TModelCaixa.Abrir: iModelCaixaMetodosAbrir;
begin
  FState.Abrir;
  Result := FMetodosFactory.Abrir(Self);
end;

function TModelCaixa.BloquearCaixa: iModelCaixaMetodosBloquear;
begin
  FState.BloquearCaixa;
  Result := FMetodosFactory.BloquearCaixa(Self);
end;

constructor TModelCaixa.Create;
begin
  FMetodosFactory := TModelCaixaMetodosFactory.New;
  FState := TModelCaixaStateFactory.New.Fechado;
end;

function TModelCaixa.DesbloquearCaixa: iModelCaixaMetodosDesbloquear;
begin
  FState.DesbloquearCaixa;
  Result := FMetodosFactory.DesbloquearCaixa(Self);
end;

destructor TModelCaixa.Destroy;
begin

  inherited;
end;

function TModelCaixa.EndMetodos: iModelCaixa;
begin
  Result := Self;
end;

function TModelCaixa.Fechar: iModelCaixaMetodosFechar;
begin
  FState.Fechar;
  Result := FMetodosFactory.Fechar(Self);
end;

function TModelCaixa.Metodos: iModelCaixaMetodos;
begin
  Result := Self;
end;

class function TModelCaixa.New: iModelCaixa;
begin
  Result := Self.Create;
end;

function TModelCaixa.Sangria: iModelCaixaMetodosSangria;
begin
  FState.Sangria;
  Result := FMetodosFactory.Sangria(Self);
end;

function TModelCaixa.SetState(Value: iModelCaixaMetodos): iModelCaixa;
begin
  Result := Self;
  FState := Value;
end;

function TModelCaixa.Suprimento: iModelCaixaMetodosSuprimento;
begin
  FState.Suprimento;
  Result := FMetodosFactory.Suprimento(Self);
end;

function TModelCaixa.TrocarOperador: iModelCaixaMetodosTrocarOperador;
begin
  FState.TrocarOperador;
  Result := FMetodosFactory.TrocarOperador(Self);
end;

end.
