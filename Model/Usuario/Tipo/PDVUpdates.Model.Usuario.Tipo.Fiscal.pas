unit PDVUpdates.Model.Usuario.Tipo.Fiscal;

interface

uses PDVUpdates.Model.Usuario.Interfaces,
  PDVUpdates.Controller.Usuario.Operacoes.Interfaces,
  System.Generics.Collections, PDVUpdates.Controller.Types;

type

  TModelUsuarioTipoFiscal = class(TInterfacedObject, iModelUsuarioMetodos)
  private
    Flista: TList<TRecordSenha>;
    FRetorno: TRecordSenha;
    FParent: iModelUsuario;
    FResponsability: iModelUsuarioMetodos;
    FOperacoes: iControllerUsuarioOperacoesFactory;
    procedure OnConfirmSenha(Sender: TObject);
    procedure OnCancelSenha(Sender: TObject);
    procedure PedirSenha;
  public
    constructor Create(Value: iModelUsuario); overload;
    constructor Create(Value: iModelUsuario;
      NextResponsability: iModelUsuarioMetodos); overload;
    destructor Destroy; override;
    class function New(Value: iModelUsuario): iModelUsuarioMetodos; overload;
    class function New(Value: iModelUsuario;
      NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos; overload;
    function SetOperacao(Value: iControllerUsuarioOperacoesFactory)
      : iModelUsuarioMetodos;
    function AbrirCaixa: iModelUsuarioMetodos;
    function FecharCaixa: iModelUsuarioMetodos;
    function Desconto: iModelUsuarioMetodos;
    function Acrescimo: iModelUsuarioMetodos;
    function DevolucaoCupom: iModelUsuarioMetodos;
    function CancelamentoCupom: iModelUsuarioMetodos;
    function CancelamentoItem: iModelUsuarioMetodos;
    function DevolucaoItem: iModelUsuarioMetodos;
    function BloquearCaixa: iModelUsuarioMetodos;
    function DesbloquearCaixa: iModelUsuarioMetodos;
    function Sangria: iModelUsuarioMetodos;
    function Suprimento: iModelUsuarioMetodos;
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

procedure TModelUsuarioTipoFiscal.PedirSenha;
begin
  FOperacoes.PedirSenha.SetTitle('Entre com a senha do Fiscal')
    .SetTextConfirm('OK').SetTextCancel('Cancelar').Lista(Flista)
    .Result(FRetorno).&End;
end;

function TModelUsuarioTipoFiscal.AbrirCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
  PedirSenha;

  // FResponsability.AbrirCaixa;
end;

function TModelUsuarioTipoFiscal.Acrescimo: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.Acrescimo;
end;

function TModelUsuarioTipoFiscal.BloquearCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
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
var
  Usuario: TRecordSenha;
begin
  FParent := Value;
  FResponsability := NextResponsability;

  Flista := TList<TRecordSenha>.Create;

  Usuario.User := 'Arthur';
  Usuario.Password := '123';
  Flista.Add(Usuario);
end;

constructor TModelUsuarioTipoFiscal.Create(Value: iModelUsuario);
var
  Usuario: TRecordSenha;
begin
  FParent := Value;

  Flista := TList<TRecordSenha>.Create;

  Usuario.User := 'Arthur';
  Usuario.Password := '123';
  Flista.Add(Usuario);
end;

function TModelUsuarioTipoFiscal.DesbloquearCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
  PedirSenha;
end;

function TModelUsuarioTipoFiscal.Desconto: iModelUsuarioMetodos;
begin
  Result := Self;
end;

destructor TModelUsuarioTipoFiscal.Destroy;
begin
  FreeAndNil(Flista);

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
  FOperacoes.PedirSenha.SetTitle('Entre com a senha do Fiscal')
    .SetTextConfirm('OK').SetTextCancel('Cancelar').Lista(Flista)
    .Result(FRetorno).&End;
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

function TModelUsuarioTipoFiscal.Sangria: iModelUsuarioMetodos;
begin
  Result := Self;
  FOperacoes.PedirSenha.SetTitle('Entre com a senha do Fiscal')
    .SetTextConfirm('OK').SetTextCancel('Cancelar').Lista(Flista)
    .Result(FRetorno).&End;
end;

function TModelUsuarioTipoFiscal.SetOperacao
  (Value: iControllerUsuarioOperacoesFactory): iModelUsuarioMetodos;
begin
  Result := Self;
  FOperacoes := Value;
end;

function TModelUsuarioTipoFiscal.Suprimento: iModelUsuarioMetodos;
begin
  Result := Self;
  FOperacoes.PedirSenha.SetTitle('Entre com a senha do Fiscal')
    .SetTextConfirm('OK').SetTextCancel('Cancelar').Lista(Flista)
    .Result(FRetorno).&End;
end;

class function TModelUsuarioTipoFiscal.New(Value: iModelUsuario)
  : iModelUsuarioMetodos;
begin
  Result := Self.Create(Value);
end;

end.
