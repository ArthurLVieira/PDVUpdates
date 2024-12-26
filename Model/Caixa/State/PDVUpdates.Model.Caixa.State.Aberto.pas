unit PDVUpdates.Model.Caixa.State.Aberto;

interface

uses
  PDVUpdates.Model.Caixa.Interfaces;

type

  TModelCaixaStateAberto = class(TInterfacedObject, iModelCaixaMetodos)
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

{ iModelCaixaStateAberto }

function TModelCaixaStateAberto.Abrir: iModelCaixaMetodosAbrir;
begin
  raise Exception.Create('O caixa esta aberto!');
end;

function TModelCaixaStateAberto.BloquearCaixa: iModelCaixaMetodosBloquear;
begin

end;

constructor TModelCaixaStateAberto.Create;
begin

end;

function TModelCaixaStateAberto.DesbloquearCaixa: iModelCaixaMetodosDesbloquear;
begin
  raise Exception.Create('O caixa esta aberto!');
end;

destructor TModelCaixaStateAberto.Destroy;
begin

  inherited;
end;

function TModelCaixaStateAberto.EndMetodos: iModelCaixa;
begin

end;

function TModelCaixaStateAberto.Fechar: iModelCaixaMetodosFechar;
begin

end;

class function TModelCaixaStateAberto.New: iModelCaixaMetodos;
begin
  Result := Self.Create;
end;

function TModelCaixaStateAberto.Sangria: iModelCaixaMetodosSangria;
begin

end;

function TModelCaixaStateAberto.Suprimento: iModelCaixaMetodosSuprimento;
begin

end;

function TModelCaixaStateAberto.TrocarOperador
  : iModelCaixaMetodosTrocarOperador;
begin

end;

end.
