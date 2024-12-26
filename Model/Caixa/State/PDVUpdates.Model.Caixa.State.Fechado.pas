unit PDVUpdates.Model.Caixa.State.Fechado;

interface

uses
  PDVUpdates.Model.Caixa.Interfaces;

type

  TModelCaixaStateFechado = class(TInterfacedObject, iModelCaixaMetodos)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelCaixaMetodos;
    function Abrir: iModelCaixaMetodosAbrir;
    function Fechar: iModelCaixaMetodosFechar;
    function Suprimento: iModelCaixaMetodosSuprimento;
    function Sangria: iModelCaixaMetodosSangria;
    function TrocarOperador: iModelCaixaMetodosTrocarOperador;
    function BloquearCaixa: iModelCaixaMetodosBloquear;
    function &EndMetodos: iModelCaixa;
    function DesbloquearCaixa: iModelCaixaMetodosDesbloquear;
  end;

implementation

uses
  System.SysUtils;

{ iModelCaixaStateFechado }

function TModelCaixaStateFechado.Abrir: iModelCaixaMetodosAbrir;
begin

end;

function TModelCaixaStateFechado.BloquearCaixa: iModelCaixaMetodosBloquear;
begin
  raise Exception.Create('O caixa esta fechado!');
end;

constructor TModelCaixaStateFechado.Create;
begin

end;

function TModelCaixaStateFechado.DesbloquearCaixa
  : iModelCaixaMetodosDesbloquear;
begin
  raise Exception.Create('O caixa esta fechado!');
end;

destructor TModelCaixaStateFechado.Destroy;
begin

  inherited;
end;

function TModelCaixaStateFechado.EndMetodos: iModelCaixa;
begin

end;

function TModelCaixaStateFechado.Fechar: iModelCaixaMetodosFechar;
begin
  raise Exception.Create('O caixa esta fechado!');
end;

class function TModelCaixaStateFechado.New: iModelCaixaMetodos;
begin
  Result := Self.Create;
end;

function TModelCaixaStateFechado.Sangria: iModelCaixaMetodosSangria;
begin
  raise Exception.Create('O caixa esta fechado!');
end;

function TModelCaixaStateFechado.Suprimento: iModelCaixaMetodosSuprimento;
begin
  raise Exception.Create('O caixa esta fechado!');
end;

function TModelCaixaStateFechado.TrocarOperador
  : iModelCaixaMetodosTrocarOperador;
begin
  raise Exception.Create('O caixa esta fechado!');
end;

end.
