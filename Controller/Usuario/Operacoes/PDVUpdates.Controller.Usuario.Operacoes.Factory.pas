unit PDVUpdates.Controller.Usuario.Operacoes.Factory;

interface

uses
  PDVUpdates.Controller.Usuario.Operacoes.Interfaces;

type

  TContrllerUsuarioOperacoesFactory = class(TInterfacedObject,
    iControllerUsuarioOperacoesFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerUsuarioOperacoesFactory;
    function PedirSenha: iControllerUsuarioOperacoesPedirSenha;
    function CapturaValor: iControllerUsuarioOperacoesCapturarValor;

  end;

implementation

uses
  PDVUpdates.Controller.Usuario.Operacoes.PedirSenha,
  PDVUpdates.Controller.Usuario.Operacoes.CapturaValor;

{ TContrllerUsuarioOperacoesFactory }

function TContrllerUsuarioOperacoesFactory.CapturaValor
  : iControllerUsuarioOperacoesCapturarValor;
begin
  Result := TContrllerUsuarioOperacoesCapturaValor.New(Self);
end;

constructor TContrllerUsuarioOperacoesFactory.Create;
begin

end;

destructor TContrllerUsuarioOperacoesFactory.Destroy;
begin

  inherited;
end;

class function TContrllerUsuarioOperacoesFactory.New
  : iControllerUsuarioOperacoesFactory;
begin
  Result := Self.Create;
end;

function TContrllerUsuarioOperacoesFactory.PedirSenha
  : iControllerUsuarioOperacoesPedirSenha;
begin
  Result := TControllerUsuarioOperacoesPedirSenha.New(Self);
end;

end.
