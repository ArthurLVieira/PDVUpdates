unit PDVUpdates.Model.Usuario.Tipo.Fiscal;

interface

uses PDVUpdates.Model.Usuario.Interfaces,
  PDVUpdates.Controller.Usuario.Operacoes.Interfaces;

type

  TModelUsuarioTipoFiscal = class(TInterfacedObject, iModelUsuarioMetodos)
  private
    FParent: iModelUsuario;
    FResponsability: iModelUsuarioMetodos;
    FOperacoes: iControllerUsuarioOperacoes;
    procedure OnConfirmSenha(Sender: TObject);
    procedure OnCancelSenha(Sender: TObject);
  public
    constructor Create(Value: iModelUsuario); overload;
    constructor Create(Value: iModelUsuario;
      NextResponsability: iModelUsuarioMetodos); overload;
    destructor Destroy; override;
    class function New(Value: iModelUsuario): iModelUsuarioMetodos; overload;
    class function New(Value: iModelUsuario;
      NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos; overload;
    function SetOperacao(Value: iControllerUsuarioOperacoes)
      : iModelUsuarioMetodos;
    function AbrirCaixa: iModelUsuarioMetodos;
    function FecharCaixa: iModelUsuarioMetodos;
    function Desconto: iModelUsuarioMetodos;
    function Acrescimo: iModelUsuarioMetodos;
    function DevolucaoCupom: iModelUsuarioMetodos;
    function CancelamentoCupom: iModelUsuarioMetodos;
    function CancelamentoItem: iModelUsuarioMetodos;
    function DevolucaoItem: iModelUsuarioMetodos;
    function &End: iModelUsuario;

  end;

implementation

uses
  System.SysUtils;

{ TModelUsuarioTipoFiscal }

function TModelUsuarioTipoFiscal.&End: iModelUsuario;
begin
  Result := FParent;
end;

function TModelUsuarioTipoFiscal.AbrirCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
  FOperacoes.PedirSenha.SetTitle('Entre com a senha do Fiscal')
    .SetTextConfirm('OK').SetTextCancel('Cancelar')
    .SetOnClickConfirm(OnConfirmSenha).SetOnClickCancel(OnCancelSenha).&End;

  // FResponsability.AbrirCaixa;
end;

function TModelUsuarioTipoFiscal.Acrescimo: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.Acrescimo;
end;

function TModelUsuarioTipoFiscal.CancelamentoCupom: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.CancelamentoCupom;
end;

function TModelUsuarioTipoFiscal.CancelamentoItem: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.CancelamentoItem;
end;

constructor TModelUsuarioTipoFiscal.Create(Value: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos);
begin
  FParent := Value;
  FResponsability := NextResponsability;
end;

constructor TModelUsuarioTipoFiscal.Create(Value: iModelUsuario);
begin
  FParent := Value;
end;

function TModelUsuarioTipoFiscal.Desconto: iModelUsuarioMetodos;
begin
  Result := Self;
end;

destructor TModelUsuarioTipoFiscal.Destroy;
begin

  inherited;
end;

function TModelUsuarioTipoFiscal.DevolucaoCupom: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.DevolucaoCupom;
end;

function TModelUsuarioTipoFiscal.DevolucaoItem: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.DevolucaoItem;
end;

function TModelUsuarioTipoFiscal.FecharCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.FecharCaixa;
end;

class function TModelUsuarioTipoFiscal.New(Value: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos;
begin
  Result := Self.Create(Value, NextResponsability);
end;

procedure TModelUsuarioTipoFiscal.OnCancelSenha(Sender: TObject);
begin
  raise Exception.Create('Cancelar');
end;

procedure TModelUsuarioTipoFiscal.OnConfirmSenha(Sender: TObject);
begin
  raise Exception.Create('Confirmar');
end;

function TModelUsuarioTipoFiscal.SetOperacao(Value: iControllerUsuarioOperacoes)
  : iModelUsuarioMetodos;
begin
  Result := Self;
  FOperacoes := Value;
end;

class function TModelUsuarioTipoFiscal.New(Value: iModelUsuario)
  : iModelUsuarioMetodos;
begin
  Result := Self.Create(Value);
end;

end.