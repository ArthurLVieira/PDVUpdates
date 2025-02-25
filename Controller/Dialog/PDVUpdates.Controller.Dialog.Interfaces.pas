unit PDVUpdates.Controller.Dialog.Interfaces;

interface

uses
  System.Classes, PDVUpdates.Controller.Types,
  System.Generics.Collections;

type

  iControllerDialogSenhaUsuario = interface
    ['{797D8628-4EC9-473C-8843-F631B5842AAE}']
    function SetTitle(Value: string): iControllerDialogSenhaUsuario;
    function SetTextConfirm(Value: string): iControllerDialogSenhaUsuario;
    function SetTextCancel(Value: string): iControllerDialogSenhaUsuario;
    function SetOnClickConfirm(Value: TNotifyEvent)
      : iControllerDialogSenhaUsuario;
    function SetOnClickCancel(Value: TNotifyEvent)
      : iControllerDialogSenhaUsuario;
    function Lista(Value: TList<TRecordSenha>): iControllerDialogSenhaUsuario;
    function Result(Value: TRecordSenha): iControllerDialogSenhaUsuario;
    procedure Exibir;
  end;

  iControllerDialogCapturarValor = interface
    ['{EC8DF74D-22D1-4064-937F-AF43601011FE}']
    function SetTitle(Value: string): iControllerDialogCapturarValor;
    function SetTextConfirm(Value: string): iControllerDialogCapturarValor;
    function SetTextCancel(Value: string): iControllerDialogCapturarValor;
    function SetOnClickConfirm(Value: TNotifyEvent)
      : iControllerDialogCapturarValor;
    function SetOnClickCancel(Value: TNotifyEvent)
      : iControllerDialogCapturarValor;
    function GetValor: Currency;
    function ExibirValor: Currency;
  end;

  iControllerDialogFactory = interface
    ['{8774E484-A683-4B6B-88AD-1B04DE471901}']
    function PedirSenha: iControllerDialogSenhaUsuario;
    function CapturaValor: iControllerDialogCapturarValor;
  end;

implementation

end.
