unit PDVUpdates.Model.Usuario.Tipo.Caixa;

interface

uses PDVUpdates.Model.Usuario.Interfaces,
  PDVUpdates.Controller.Usuario.Interfaces,
  PDVUpdates.Controller.Usuario.Operacoes.Interfaces;

type

  TModelUsuarioTipoCAixa = class(TInterfacedObject, iModelUsuarioMetodos)
  private
    FParent: iModelUsuario;
    FResponsability: iModelUsuarioMetodos;
    FOperacoes: iControllerUsuarioOperacoesFactory;
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
    function &End: iModelUsuario;
    function BloquearCaixa: iModelUsuarioMetodos;
    function DesbloquearCaixa: iModelUsuarioMetodos;
  end;

implementation

{ TModelUsuarioTipoCAixa }

function TModelUsuarioTipoCAixa.&End: iModelUsuario;
begin
  Result := FParent;
end;

function TModelUsuarioTipoCAixa.AbrirCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.AbrirCaixa;
end;

function TModelUsuarioTipoCAixa.Acrescimo: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.Acrescimo;
end;

function TModelUsuarioTipoCAixa.BloquearCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
end;

function TModelUsuarioTipoCAixa.CancelamentoCupom: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.CancelamentoCupom;
end;

function TModelUsuarioTipoCAixa.CancelamentoItem: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.CancelamentoItem;
end;

constructor TModelUsuarioTipoCAixa.Create(Value: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos);
begin
  FParent := Value;
  FResponsability := NextResponsability;
end;

constructor TModelUsuarioTipoCAixa.Create(Value: iModelUsuario);
begin
  FParent := Value;
end;

function TModelUsuarioTipoCAixa.DesbloquearCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
end;

function TModelUsuarioTipoCAixa.Desconto: iModelUsuarioMetodos;
begin
  Result := Self;
end;

destructor TModelUsuarioTipoCAixa.Destroy;
begin

  inherited;
end;

function TModelUsuarioTipoCAixa.DevolucaoCupom: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.DevolucaoCupom;
end;

function TModelUsuarioTipoCAixa.DevolucaoItem: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.DevolucaoItem;
end;

function TModelUsuarioTipoCAixa.FecharCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.FecharCaixa;
end;

class function TModelUsuarioTipoCAixa.New(Value: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos;
begin
  Result := Self.Create(Value, NextResponsability);
end;

function TModelUsuarioTipoCAixa.SetOperacao
  (Value: iControllerUsuarioOperacoesFactory): iModelUsuarioMetodos;
begin
  Result := Self;
  FOperacoes := Value;
end;

class function TModelUsuarioTipoCAixa.New(Value: iModelUsuario)
  : iModelUsuarioMetodos;
begin
  Result := Self.Create(Value);
end;

end.
