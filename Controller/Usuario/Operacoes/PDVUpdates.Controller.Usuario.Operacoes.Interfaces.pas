unit PDVUpdates.Controller.Usuario.Operacoes.Interfaces;

interface

uses
  System.Classes;

type

  iControllerUsuarioOperacoesPedirSenha = interface;

  iControllerUsuarioOperacoes = interface
    ['{8774E484-A683-4B6B-88AD-1B04DE471901}']
    function PedirSenha: iControllerUsuarioOperacoesPedirSenha;
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
    function &End: iControllerUsuarioOperacoes;
  end;

implementation

end.