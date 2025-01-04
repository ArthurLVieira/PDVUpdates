unit PDVUpdates.Controller.Dialog.SenhaUsuario;

interface

uses PDVUpdates.Controller.Dialog.Interfaces, System.Classes,
  System.Generics.Collections, PDVUpdates.Controller.Types;

type

  TControllerDialogSenhaUsuario = class(TInterfacedObject,
    iControllerDialogSenhaUsuario)
  private
    FClickConfirm, FClickCancel: TNotifyEvent;
    Flista: TList<TRecordSenha>;
    FResult: TRecordSenha;
    FTitle, FTextConfirm, FTextCancel: string;
    procedure validarSenha;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerDialogSenhaUsuario;
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

implementation

uses
  PDVUpdates.View.Dialog.SenhaUsuario;

{ TControllerDialogSenhaUsuario }

constructor TControllerDialogSenhaUsuario.Create;
begin

end;

destructor TControllerDialogSenhaUsuario.Destroy;
begin

  inherited;
end;

procedure TControllerDialogSenhaUsuario.Exibir;
begin
  TFrmSenhaUsuario.Create(nil).ExibirForm(FTitle, FTextConfirm, FTextCancel,
    Flista, FResult)
end;

function TControllerDialogSenhaUsuario.Lista(Value: TList<TRecordSenha>)
  : iControllerDialogSenhaUsuario;
begin
  Result := Self;
  Flista := Value;
end;

class function TControllerDialogSenhaUsuario.New: iControllerDialogSenhaUsuario;
begin
  Result := Self.Create;
end;

function TControllerDialogSenhaUsuario.Result(Value: TRecordSenha)
  : iControllerDialogSenhaUsuario;
begin
  Result := Self;
  FResult := Value;
end;

function TControllerDialogSenhaUsuario.SetOnClickCancel(Value: TNotifyEvent)
  : iControllerDialogSenhaUsuario;
begin
  Result := Self;
  FClickCancel := Value;
end;

function TControllerDialogSenhaUsuario.SetOnClickConfirm(Value: TNotifyEvent)
  : iControllerDialogSenhaUsuario;
begin
  Result := Self;
  FClickConfirm := Value;
end;

function TControllerDialogSenhaUsuario.SetTextCancel(Value: string)
  : iControllerDialogSenhaUsuario;
begin
  Result := Self;
  FTextCancel := Value;
end;

function TControllerDialogSenhaUsuario.SetTextConfirm(Value: string)
  : iControllerDialogSenhaUsuario;
begin
  Result := Self;
  FTextConfirm := Value;
end;

function TControllerDialogSenhaUsuario.SetTitle(Value: string)
  : iControllerDialogSenhaUsuario;
begin
  Result := Self;
  FTitle := Value;
end;

procedure TControllerDialogSenhaUsuario.validarSenha;
begin

end;

end.
