unit PDVUpdates.Controller.Usuario.Operacoes;

interface

uses
  PDVUpdates.Controller.Usuario.Operacoes.Interfaces, System.Classes;

type

  TControllerUsuarioOperacoes = class(TInterfacedObject,
    iControllerUsuarioOperacoes, iControllerUsuarioOperacoesPedirSenha)
  private
    FTitle, FTextConfirm, FTextCancel: string;
    FClickConfirm, FClickCancel: TNotifyEvent;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerUsuarioOperacoes;
    function PedirSenha: iControllerUsuarioOperacoesPedirSenha;
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

{ TControllerUsuarioOperacoes }

uses PDVUpdates.View.Dialog.SenhaUsuario;

function TControllerUsuarioOperacoes.&End: iControllerUsuarioOperacoes;
begin
  Result := Self;
  TFrmSenhaUsuario.Create(nil).ExibirForm(FTitle, FTextConfirm, FTextCancel,
    FClickConfirm, FClickCancel);
end;

constructor TControllerUsuarioOperacoes.Create;
begin
  FTitle := 'Default';
  FTextConfirm := 'Default';
  FTextCancel := 'Default';
end;

destructor TControllerUsuarioOperacoes.Destroy;
begin

  inherited;
end;

class function TControllerUsuarioOperacoes.New: iControllerUsuarioOperacoes;
begin
  Result := Self.Create;
end;

function TControllerUsuarioOperacoes.PedirSenha
  : iControllerUsuarioOperacoesPedirSenha;
begin
  Result := Self;
end;

function TControllerUsuarioOperacoes.SetOnClickCancel(Value: TNotifyEvent)
  : iControllerUsuarioOperacoesPedirSenha;
begin
  Result := Self;
  FClickCancel := Value;
end;

function TControllerUsuarioOperacoes.SetOnClickConfirm(Value: TNotifyEvent)
  : iControllerUsuarioOperacoesPedirSenha;
begin
  Result := Self;
  FClickConfirm := Value;
end;

function TControllerUsuarioOperacoes.SetTextCancel(Value: string)
  : iControllerUsuarioOperacoesPedirSenha;
begin
  Result := Self;
  FTextCancel := Value;
end;

function TControllerUsuarioOperacoes.SetTextConfirm(Value: string)
  : iControllerUsuarioOperacoesPedirSenha;
begin
  Result := Self;
  FTextConfirm := Value;
end;

function TControllerUsuarioOperacoes.SetTitle(Value: string)
  : iControllerUsuarioOperacoesPedirSenha;
begin
  Result := Self;
  FTitle := Value;
end;

end.