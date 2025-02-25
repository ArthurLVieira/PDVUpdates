unit PDVUpdates.Controller.Usuario.Operacoes.Interfaces;

interface

uses
  System.Classes, System.Generics.Collections, PDVUpdates.Controller.Types;

type

  iControllerUsuarioOperacoesPedirSenha = interface;
  iControllerUsuarioOperacoesCapturarValor = interface;

  iControllerUsuarioOperacoesFactory = interface
    ['{8774E484-A683-4B6B-88AD-1B04DE471901}']
    function PedirSenha: iControllerUsuarioOperacoesPedirSenha;
    function CapturaValor: iControllerUsuarioOperacoesCapturarValor;
  end;

  iControllerUsuarioOperacoesPedirSenha = interface
    ['{797D8628-4EC9-473C-8843-F631B5842AAE}']
    function SetTitle(Value: string): iControllerUsuarioOperacoesPedirSenha;
    function SetTextConfirm(Value: string)
      : iControllerUsuarioOperacoesPedirSenha;
    function SetTextCancel(Value: string)
      : iControllerUsuarioOperacoesPedirSenha;
    function SetOnClickConfirm(Value: TNotifyEvent)
      : iControllerUsuarioOperacoesPedirSenha;
    function SetOnClickCancel(Value: TNotifyEvent)
      : iControllerUsuarioOperacoesPedirSenha;
    function Lista(Value: TList<TRecordSenha>)
      : iControllerUsuarioOperacoesPedirSenha;
    function Result(Value: TRecordSenha): iControllerUsuarioOperacoesPedirSenha;
    function &End: iControllerUsuarioOperacoesFactory;
  end;

  iControllerUsuarioOperacoesCapturarValor = interface
    ['{EC8DF74D-22D1-4064-937F-AF43601011FE}']
    function SetTitle(Value: string): iControllerUsuarioOperacoesCapturarValor;
    function SetTextConfirm(Value: string)
      : iControllerUsuarioOperacoesCapturarValor;
    function SetTextCancel(Value: string)
      : iControllerUsuarioOperacoesCapturarValor;
    function SetOnClickConfirm(Value: TNotifyEvent)
      : iControllerUsuarioOperacoesCapturarValor;
    function SetOnClickCancel(Value: TNotifyEvent)
      : iControllerUsuarioOperacoesCapturarValor;
    function GetValor: Currency;
    function &End: iControllerUsuarioOperacoesFactory;
  end;

implementation

end.
