unit PDVUpdates.Model.Caixa.Metodos.Interfaces;

interface

uses
  PDVUpdates.Model.Usuario.Interfaces, PDVUpdates.Model.Caixa.Interfaces;

type

  iModelCaixaMetodosFactory = interface
    ['{D8780329-8A17-41F8-A529-9580A54148CE}']
    function Abrir(Value: iModelCaixa): iModelCaixaMetodosAbrir;
    function Fechar(Value: iModelCaixa): iModelCaixaMetodosFechar;
    function Suprimento(Value: iModelCaixa): iModelCaixaMetodosSuprimento;
    function Sangria(Value: iModelCaixa): iModelCaixaMetodosSangria;
    function TrocarOperador(Value: iModelCaixa)
      : iModelCaixaMetodosTrocarOperador;
    function BloquearCaixa(Value: iModelCaixa): iModelCaixaMetodosBloquear;
    function DesbloquearCaixa(Value: iModelCaixa)
      : iModelCaixaMetodosDesbloquear;
  end;

implementation

end.
