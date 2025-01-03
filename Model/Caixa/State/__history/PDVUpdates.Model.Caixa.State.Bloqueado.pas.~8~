unit PDVUpdates.Model.Caixa.State.Bloqueado;

interface

uses
  PDVUpdates.Model.Caixa.Interfaces;

type

  TModelCaixaStateBloqueado = class(TInterfacedObject, iModelCaixaMetodos)
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

{ iModelCaixaStateBloqueado }

function TModelCaixaStateBloqueado.Abrir: iModelCaixaMetodosAbrir;
begin
  raise Exception.Create('O caixa esta Bloquedo');
end;

function TModelCaixaStateBloqueado.BloquearCaixa: iModelCaixaMetodosBloquear;
begin
  raise Exception.Create('O caixa esta Bloquedo');
end;

constructor TModelCaixaStateBloqueado.Create;
begin

end;

function TModelCaixaStateBloqueado.DesbloquearCaixa
  : iModelCaixaMetodosDesbloquear;
begin

end;

destructor TModelCaixaStateBloqueado.Destroy;
begin

  inherited;
end;

function TModelCaixaStateBloqueado.EndMetodos: iModelCaixa;
begin

end;

function TModelCaixaStateBloqueado.Fechar: iModelCaixaMetodosFechar;
begin
  raise Exception.Create('O caixa esta Bloquedo');
end;

class function TModelCaixaStateBloqueado.New: iModelCaixaMetodos;
begin
  Result := Self.Create;
end;

function TModelCaixaStateBloqueado.Sangria: iModelCaixaMetodosSangria;
begin
  raise Exception.Create('O caixa esta Bloquedo');
end;

function TModelCaixaStateBloqueado.Suprimento: iModelCaixaMetodosSuprimento;
begin
  raise Exception.Create('O caixa esta Bloquedo');
end;

function TModelCaixaStateBloqueado.TrocarOperador
  : iModelCaixaMetodosTrocarOperador;
begin
  raise Exception.Create('O caixa esta Bloquedo');
end;

end.
