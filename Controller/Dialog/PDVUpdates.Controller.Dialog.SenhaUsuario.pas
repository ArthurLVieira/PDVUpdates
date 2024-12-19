unit PDVUpdates.Controller.Dialog.SenhaUsuario;

interface

uses
  PDVUpdates.Controller.Dialog.SenhaUsuario.Interfaces;

type

  TControllerDialogSenhaUsuario = class(TInterfacedObject,
    iControllerDialogSenhaUsuario)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerDialogSenhaUsuario;
  end;

implementation

{ TControllerDialogSenhaUsuario }

constructor TControllerDialogSenhaUsuario.Create;
begin

end;

destructor TControllerDialogSenhaUsuario.Destroy;
begin

  inherited;
end;

class function TControllerDialogSenhaUsuario.New: iControllerDialogSenhaUsuario;
begin
  Result := Self.Create;
end;

end.
