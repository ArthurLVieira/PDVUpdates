unit PDVUpdates.Controller.Usuario.Operacoes.CapturaValor;

interface

uses
  PDVUpdates.Controller.Usuario.Operacoes.Interfaces, System.Classes;

type

  TContrllerUsuarioOperacoesCapturaValor = class(TInterfacedObject,
    iControllerUsuarioOperacoesCapturarValor)
  private
    FParent: iControllerUsuarioOperacoesFactory;
    FTitle, FTextConfirm, FTextCancel: string;
    FClickConfirm, FClickCancel: TNotifyEvent;
  public
    constructor Create(Value: iControllerUsuarioOperacoesFactory);
    destructor Destroy; override;
    class function New(Value: iControllerUsuarioOperacoesFactory)
      : iControllerUsuarioOperacoesCapturarValor;
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

uses
  PDVUpdates.View.Dialog.CapturaValor;

{ TContrllerUsuarioOperacoesCapturaValor }

function TContrllerUsuarioOperacoesCapturaValor.&End
  : iControllerUsuarioOperacoesFactory;
begin
  Result := FParent;
end;

constructor TContrllerUsuarioOperacoesCapturaValor.Create
  (Value: iControllerUsuarioOperacoesFactory);
begin
  FParent := Value;
end;

destructor TContrllerUsuarioOperacoesCapturaValor.Destroy;
begin

  inherited;
end;

function TContrllerUsuarioOperacoesCapturaValor.GetValor: Currency;
begin
  Result := TFrmCapturaValor.Create(nil).ExibirForm(FTitle, FTextConfirm,
    FTextCancel);
end;

class function TContrllerUsuarioOperacoesCapturaValor.New
  (Value: iControllerUsuarioOperacoesFactory)
  : iControllerUsuarioOperacoesCapturarValor;
begin
  Result := Self.Create(Value);
end;

function TContrllerUsuarioOperacoesCapturaValor.SetOnClickCancel
  (Value: TNotifyEvent): iControllerUsuarioOperacoesCapturarValor;
begin
  Result := Self;
  FClickCancel := Value;
end;

function TContrllerUsuarioOperacoesCapturaValor.SetOnClickConfirm
  (Value: TNotifyEvent): iControllerUsuarioOperacoesCapturarValor;
begin
  Result := Self;
  FClickConfirm := Value;
end;

function TContrllerUsuarioOperacoesCapturaValor.SetTextCancel(Value: string)
  : iControllerUsuarioOperacoesCapturarValor;
begin
  Result := Self;
  FTextCancel := Value;
end;

function TContrllerUsuarioOperacoesCapturaValor.SetTextConfirm(Value: string)
  : iControllerUsuarioOperacoesCapturarValor;
begin
  Result := Self;
  FTextConfirm := Value;
end;

function TContrllerUsuarioOperacoesCapturaValor.SetTitle(Value: string)
  : iControllerUsuarioOperacoesCapturarValor;
begin
  Result := Self;
  FTitle := Value;
end;

end.
