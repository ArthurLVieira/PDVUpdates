unit PDVUpdates.Model.Caixa.Metodos.Interfaces;

interface

uses
  PDVUpdates.Model.Usuario.Interfaces, PDVUpdates.Model.Caixa.Interfaces;

type

  iModelCaixaMetodosFactory = interface;

  iModelCaixaMetodosAbrir = interface
    ['{3A7B8AFC-D671-4280-AC39-8CA27840E6E0}']
    function SetValorAbertuta(Value: Currency): iModelCaixaMetodosAbrir;
    function SetOperador(Value: iModelUsuario): iModelCaixaMetodosAbrir;
    function &EndAbrir: iModelCaixaMetodosFactory;
  end;

  iModelCaixaMetodosFechar = interface
    ['{3A7B8AFC-D671-4280-AC39-8CA27840E6E0}']
    function SetValorFechamento(Value: Currency): iModelCaixaMetodosFechar;
    function SetFiscal(Value: iModelUsuario): iModelCaixaMetodosFechar;
    function &EndFechar: iModelCaixaMetodosFactory;
  end;

  iModelCaixaMetodosSuprimento = interface
    ['{370B4FE0-4A2C-4B3D-93F7-6696A5449B6C}']
    Function SetValorSuprimento(Value: Currency): iModelCaixaMetodosSuprimento;
    function SetAutorizadorSuprimento(Value: iModelUsuario)
      : iModelCaixaMetodosSuprimento;
    function &EndSuprimento: iModelCaixaMetodosFactory;
  end;

  iModelCaixaMetodosSangria = interface
    ['{370B4FE0-4A2C-4B3D-93F7-6696A5449B6C}']
    Function SetValorSangria(Value: Currency): iModelCaixaMetodosSangria;
    function SetAutorizadorSangria(Value: iModelUsuario)
      : iModelCaixaMetodosSangria;
    function &EndSangria: iModelCaixaMetodosFactory;
  end;

  iModelCaixaMetodosTrocarOperador = interface
    ['{5831AD84-1824-4DD3-AB41-0C00AE5501BF}']
    function SetTrocaOperador(Value: iModelUsuario)
      : iModelCaixaMetodosTrocarOperador;
    function SetAutorizadorTroca(Value: iModelUsuario)
      : iModelCaixaMetodosTrocarOperador;
    function &EndTrocarOperador: iModelCaixaMetodosFactory;
  end;

  iModelCaixaMetodosBloquearCaixa = interface
    ['{5831AD84-1824-4DD3-AB41-0C00AE5501BF}']
    function SetAutorizadorBloqueio(Value: iModelUsuario)
      : iModelCaixaMetodosBloquearCaixa;
    function &EndBloquear: iModelCaixaMetodosFactory;
  end;

  iModelCaixaMetodosFactory = interface
    ['{664B29D2-BB70-469C-B387-B105C5A79FFD}']
    function Abrir: iModelCaixaMetodosAbrir;
    function Fechar: iModelCaixaMetodosFechar;
    function Suprimento: iModelCaixaMetodosSuprimento;
    function Sangria: iModelCaixaMetodosSangria;
    function TrocarOperador: iModelCaixaMetodosTrocarOperador;
    function BloquearCaixa: iModelCaixaMetodosBloquearCaixa;
    function &EndMetodos: iModelCaixa;
  end;

implementation

end.