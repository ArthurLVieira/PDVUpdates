unit PDVUpdates.Model.Caixa.Interfaces;

interface

uses PDVUpdates.Model.Usuario.Interfaces;

type

  iModelCaixaMetodos = interface;
  iModelCaixaMetodosAbrir = interface;
  iModelCaixaMetodosFechar = interface;
  iModelCaixaMetodosSuprimento = interface;
  iModelCaixaMetodosSangria = interface;
  iModelCaixaMetodosTrocarOperador = interface;
  iModelCaixaMetodosBloquear = interface;
  iModelCaixaMetodosDesbloquear = interface;

  iModelCaixa = interface
    ['{BFD9C7A1-1465-47C0-980D-A0DF7386DB4F}']
    function Metodos: iModelCaixaMetodos;
    function SetState(Value: iModelCaixaMetodos): iModelCaixa;
    // function Entity: TCAIXA;
  end;

  iModelCaixaMetodos = interface
    ['{664B29D2-BB70-469C-B387-B105C5A79FFD}']
    function Abrir: iModelCaixaMetodosAbrir;
    function Fechar: iModelCaixaMetodosFechar;
    function Suprimento: iModelCaixaMetodosSuprimento;
    function Sangria: iModelCaixaMetodosSangria;
    function TrocarOperador: iModelCaixaMetodosTrocarOperador;
    function BloquearCaixa: iModelCaixaMetodosBloquear;
    function DesbloquearCaixa: iModelCaixaMetodosDesbloquear;
    function &EndMetodos: iModelCaixa;
  end;

  iModelCaixaMetodosAbrir = interface
    ['{3A7B8AFC-D671-4280-AC39-8CA27840E6E0}']
    function SetValorAbertuta(Value: Currency): iModelCaixaMetodosAbrir;
    function SetOperador(Value: iModelUsuario): iModelCaixaMetodosAbrir;
    function &EndAbrir: iModelCaixaMetodos;
  end;

  iModelCaixaMetodosFechar = interface
    ['{3A7B8AFC-D671-4280-AC39-8CA27840E6E0}']
    function SetValorFechamento(Value: Currency): iModelCaixaMetodosFechar;
    function SetFiscal(Value: iModelUsuario): iModelCaixaMetodosFechar;
    function &EndFechar: iModelCaixaMetodos;
  end;

  iModelCaixaMetodosSuprimento = interface
    ['{370B4FE0-4A2C-4B3D-93F7-6696A5449B6C}']
    Function SetValorSuprimento(Value: Currency): iModelCaixaMetodosSuprimento;
    function SetAutorizadorSuprimento(Value: iModelUsuario)
      : iModelCaixaMetodosSuprimento;
    function &EndSuprimento: iModelCaixaMetodos;
  end;

  iModelCaixaMetodosSangria = interface
    ['{370B4FE0-4A2C-4B3D-93F7-6696A5449B6C}']
    Function SetValorSangria(Value: Currency): iModelCaixaMetodosSangria;
    function SetAutorizadorSangria(Value: iModelUsuario)
      : iModelCaixaMetodosSangria;
    function &EndSangria: iModelCaixaMetodos;
  end;

  iModelCaixaMetodosTrocarOperador = interface
    ['{5831AD84-1824-4DD3-AB41-0C00AE5501BF}']
    function SetTrocaOperador(Value: iModelUsuario)
      : iModelCaixaMetodosTrocarOperador;
    function SetAutorizadorTroca(Value: iModelUsuario)
      : iModelCaixaMetodosTrocarOperador;
    function &EndTrocarOperador: iModelCaixaMetodos;
  end;

  iModelCaixaMetodosBloquear = interface
    ['{5831AD84-1824-4DD3-AB41-0C00AE5501BF}']
    function SetAutorizadorBloqueio(Value: iModelUsuario)
      : iModelCaixaMetodosBloquear;
    function &EndBloquear: iModelCaixaMetodos;
  end;

  iModelCaixaMetodosDesbloquear = interface
    ['{1E87665E-2DC8-46D8-A228-D3B0241D33B1}']
    function SetAutorizadorDesbloqueio(Value: iModelUsuario)
      : iModelCaixaMetodosDesbloquear;
    function &EndDesbloquear: iModelCaixaMetodos;
  end;

  iModelCaixaFactory = interface
    ['{819A89CA-59FE-4279-BE15-D419241908A2}']
    function Caixa: iModelCaixa;
  end;

implementation

end.
