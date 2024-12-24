unit PDVUpdates.Model.Usuario.Tipo.Padrao;

interface

uses PDVUpdates.Model.Usuario.Interfaces,
  PDVUpdates.Controller.Usuario.Operacoes.Interfaces;

type

  TModelUsuarioTipoPadrao = class(TInterfacedObject, iModelUsuarioMetodos)
  private
    FParent: iModelUsuario;
    FResponsability: iModelUsuarioMetodos;
    FOperacoes: iControllerUsuarioOperacoes;
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

{ TModelUsuarioTipoPadrao }

function TModelUsuarioTipoPadrao.&End: iModelUsuario;
begin
  Result := FParent;
end;

function TModelUsuarioTipoPadrao.AbrirCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.AbrirCaixa;
end;

function TModelUsuarioTipoPadrao.Acrescimo: iModelUsuarioMetodos;
begin
  Result := Self;
end;

function TModelUsuarioTipoPadrao.CancelamentoCupom: iModelUsuarioMetodos;
begin

end;

function TModelUsuarioTipoPadrao.CancelamentoItem: iModelUsuarioMetodos;
begin
  Result := Self;
end;

constructor TModelUsuarioTipoPadrao.Create(Value: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos);
begin
  FParent := Value;
  FResponsability := NextResponsability;
end;

constructor TModelUsuarioTipoPadrao.Create(Value: iModelUsuario);
begin
  FParent := Value;
end;

function TModelUsuarioTipoPadrao.Desconto: iModelUsuarioMetodos;
begin
  Result := Self;
end;

destructor TModelUsuarioTipoPadrao.Destroy;
begin

  inherited;
end;

function TModelUsuarioTipoPadrao.DevolucaoCupom: iModelUsuarioMetodos;
begin
  Result := Self;
end;

function TModelUsuarioTipoPadrao.DevolucaoItem: iModelUsuarioMetodos;
begin
  Result := Self;
end;

function TModelUsuarioTipoPadrao.FecharCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
end;

class function TModelUsuarioTipoPadrao.New(Value: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos;
begin
  Result := Self.Create(Value, NextResponsability);
end;

function TModelUsuarioTipoPadrao.SetOperacao(Value: iControllerUsuarioOperacoes)
  : iModelUsuarioMetodos;
begin
  Result := Self;
  FOperacoes := Value;
end;

class function TModelUsuarioTipoPadrao.New(Value: iModelUsuario)
  : iModelUsuarioMetodos;
begin
  Result := Self.Create(Value);
end;

end.