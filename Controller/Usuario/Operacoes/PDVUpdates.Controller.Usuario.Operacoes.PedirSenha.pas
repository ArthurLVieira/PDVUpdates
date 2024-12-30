unit PDVUpdates.Controller.Usuario.Operacoes.PedirSenha;

interface

uses
  PDVUpdates.Controller.Usuario.Operacoes.Interfaces, System.Classes,
  System.Generics.Collections, PDVUpdates.Controller.Types;

type

  TControllerUsuarioOperacoesPedirSenha = class(TInterfacedObject,
    iControllerUsuarioOperacoesPedirSenha)
  private
    FParent: iControllerUsuarioOperacoesFactory;
    FClickConfirm, FClickCancel: TNotifyEvent;
    Flista: TList<TRecordSenha>;
    FResult: TRecordSenha;
    FTitle, FTextConfirm, FTextCancel: string;
    procedure validarSenha;
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
    function Lista(Value: TList<TRecordSenha>)
      : iControllerUsuarioOperacoesPedirSenha;
    function Result(Value: TRecordSenha): iControllerUsuarioOperacoesPedirSenha;
    function &End: iControllerUsuarioOperacoesFactory;
  end;

implementation

{ TControllerUsuarioOperacoesPedirSenha }

uses PDVUpdates.View.Dialog.SenhaUsuario, System.SysUtils;

function TControllerUsuarioOperacoesPedirSenha.&End
  : iControllerUsuarioOperacoesFactory;
begin
  Result := FParent;
  TFrmSenhaUsuario.Create(nil).ExibirForm(FTitle, FTextConfirm, FTextCancel,
    Flista, FResult);
  validarSenha;
end;

function TControllerUsuarioOperacoesPedirSenha.Lista(Value: TList<TRecordSenha>)
  : iControllerUsuarioOperacoesPedirSenha;
begin
  Result := Self;
  Flista := Value;
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

function TControllerUsuarioOperacoesPedirSenha.Result(Value: TRecordSenha)
  : iControllerUsuarioOperacoesPedirSenha;
begin
  Result := Self;
  FResult := Value;
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

procedure TControllerUsuarioOperacoesPedirSenha.validarSenha;
var
  I: Integer;
begin
  for I := 0 to Pred(Flista.Count) do
    if (Flista.Items[I].User = FResult.User) and
      (Flista.Items[I].Password <> FResult.Password) then
       raise Exception.Create('Senha Invalida');

end;

end.
