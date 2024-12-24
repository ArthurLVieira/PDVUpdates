unit PDVUpdates.Model.Caixa.Metodos.Factory;

interface

uses
  PDVUpdates.Model.Caixa.Metodos.Interfaces;

type

  TModelCaixaMetodosFactory = class(TInterfacedObject,
    iModelCaixaMetodosFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelCaixaMetodosFactory;
    function Abrir: iModelCaixaMetodosAbrir;
    function Fechar: iModelCaixaMetodosFechar;
    function Suprimento: iModelCaixaMetodosSuprimento;
    function Sangria: iModelCaixaMetodosSangria;
    function TrocarOperador: iModelCaixaMetodosTrocarOperador;
    function BloquearCaixa: iModelCaixaMetodosBloquearCaixa;
    function &EndMetodos: iModelCaixa;
  end;

implementation

{ TModelCaixaMetodosFactory }

constructor TModelCaixaMetodosFactory.Create;
begin

end;

destructor TModelCaixaMetodosFactory.Destroy;
begin

  inherited;
end;

class function TModelCaixaMetodosFactory.New: iModelCaixaMetodosFactory;
begin
  Result := Self.Create;
end;

end.
