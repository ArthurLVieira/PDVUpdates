unit PDVUpdates.Controller.Usuario.Operacoes.PedirSenha;

interface

uses
  PDVUpdates.Controller.Usuario.Operacoes.Interfaces, System.Classes;

type

  TControllerUsuarioOperacoesPedirSenha = class(TInterfacedObject,
    iControllerUsuarioOperacoesPedirSenha)
  private
    FParent: iControllerUsuarioOperacoesFactory;
    FTitle, FTextConfirm, FTextCancel: string;
    FClickConfirm, FClickCancel: TNotifyEvent;
  public
    constructor Create(Value: iControllerUsuarioOperacoesFactory);
    destructor Destroy; override;
    class function New(Value: iControllerUsuarioOperacoesFactory)
      : iControllerUsuarioOperacoesPedirSenha;
    function SetTitle(Value: string): iControllerUsuarioOperacoesPedirSenha;
    function SetTextConfirm(Value: string)
      : iControllerUsuarioOperacoesPedirSenha;
    function SetTextCancel(Value: string)
      : iControllerUsuarioOperacoesPedirSenha;
    function SetOnClickConfirm(Value: TNotifyEvent)
      : iControllerUsuarioOperacoesPedirSenha;
    function SetOnClickCancel(Value: TNotifyEvent)
      : iControllerUsuarioOperacoesPedirSenha;
    function &End: iControllerUsuarioOperacoesFactory;
  end;

implementation

{ TControllerUsuarioOperacoesPedirSenha }

uses PDVUpdates.View.Dialog.SenhaUsuario;

function TControllerUsuarioOperacoesPedirSenha.&End
  : iControllerUsuarioOperacoesFactory;
begin
  Result := FParent;
  TFrmSenhaUsuario.Create(nil).ExibirForm(FTitle, FTextConfirm, FTextCancel,
    FClickConfirm, FClickCancel);
end;

constructor TControllerUsuarioOperacoesPedirSenha.Create
  (Value: iControllerUsuarioOperacoesFactory);
begin
  FParent := Value;
  FTitle := 'Default';
  FTextConfirm := 'Default';
  FTextCancel := 'Default';
end;

destructor TControllerUsuarioOperacoesPedirSenha.Destroy;
begin

  inherited;
end;

class function TControllerUsuarioOperacoesPedirSenha.New
  (Value: iControllerUsuarioOperacoesFactory)
  : iControllerUsuarioOperacoesPedirSenha;
begin
  Result := Self.Create(Value);
end;

function TControllerUsuarioOperacoesPedirSenha.SetOnClickCancel
  (Value: TNotifyEvent): iControllerUsuarioOperacoesPedirSenha;
begin
  Result := Self;
  FClickCancel := Value;
end;

function TControllerUsuarioOperacoesPedirSenha.SetOnClickConfirm
  (Value: TNotifyEvent): iControllerUsuarioOperacoesPedirSenha;
begin
  Result := Self;
  FClickConfirm := Value;
end;

function TControllerUsuarioOperacoesPedirSenha.SetTextCancel(Value: string)
  : iControllerUsuarioOperacoesPedirSenha;
begin
  Result := Self;
  FTextCancel := Value;
end;

function TControllerUsuarioOperacoesPedirSenha.SetTextConfirm(Value: string)
  : iControllerUsuarioOperacoesPedirSenha;
begin
  Result := Self;
  FTextConfirm := Value;
end;

function TControllerUsuarioOperacoesPedirSenha.SetTitle(Value: string)
  : iControllerUsuarioOperacoesPedirSenha;
begin
  Result := Self;
  FTitle := Value;
end;

end.
