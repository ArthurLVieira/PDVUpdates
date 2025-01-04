unit PDVUpdates.Controller.Dialog.CapturaValor;

interface

uses
  PDVUpdates.Controller.Dialog.Interfaces, System.Classes;

type

  TControllerDialogCapturaValor = class(TInterfacedObject,
    iControllerDialogCapturarValor)
  private
    FTitle, FTextConfirm, FTextCancel: string;
    FClickConfirm, FClickCancel: TNotifyEvent;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerDialogCapturarValor;
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

implementation

uses
  PDVUpdates.View.Dialog.CapturaValor;

{ TControllerDialogCapturaValor }

constructor TControllerDialogCapturaValor.Create;
begin
  FTextConfirm := 'OK';
  FTextCancel := 'Cancelar';
end;

destructor TControllerDialogCapturaValor.Destroy;
begin

  inherited;
end;

function TControllerDialogCapturaValor.ExibirValor: Currency;
begin

end;

function TControllerDialogCapturaValor.GetValor: Currency;
begin
  Result := TFrmCapturaValor.Create(nil).ExibirForm(FTitle, FTextConfirm,
    FTextCancel);
end;

class function TControllerDialogCapturaValor.New
  : iControllerDialogCapturarValor;
begin
  Result := Self.Create;
end;

function TControllerDialogCapturaValor.SetOnClickCancel(Value: TNotifyEvent)
  : iControllerDialogCapturarValor;
begin

end;

function TControllerDialogCapturaValor.SetOnClickConfirm(Value: TNotifyEvent)
  : iControllerDialogCapturarValor;
begin
  Result := Self;
  FClickConfirm := Value;
end;

function TControllerDialogCapturaValor.SetTextCancel(Value: string)
  : iControllerDialogCapturarValor;
begin
  Result := Self;
  FTextCancel := Value;
end;

function TControllerDialogCapturaValor.SetTextConfirm(Value: string)
  : iControllerDialogCapturarValor;
begin
  Result := Self;
  FTextConfirm := Value;
end;

function TControllerDialogCapturaValor.SetTitle(Value: string)
  : iControllerDialogCapturarValor;
begin
  Result := Self;
  FTitle := Value;
end;

end.
