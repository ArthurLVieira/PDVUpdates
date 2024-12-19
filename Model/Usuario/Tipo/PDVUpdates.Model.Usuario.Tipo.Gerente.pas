unit PDVUpdates.Model.Usuario.Tipo.Gerente;

interface

uses PDVUpdates.Model.Usuario.Interfaces;

type

  TModelUsuarioTipoGerente = class(TInterfacedObject, iModelUsuarioMetodos)
  private
    FParent: iModelUsuario;
    FResponsability: iModelUsuarioMetodos;
  public
    constructor Create(Value: iModelUsuario); overload;
    constructor Create(Value: iModelUsuario;
      NextResponsability: iModelUsuarioMetodos); overload;
    destructor Destroy; override;
    class function New(Value: iModelUsuario): iModelUsuarioMetodos; overload;
    class function New(Value: iModelUsuario;
      NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos; overload;
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

{ TModelUsuarioTipoGerente }

function TModelUsuarioTipoGerente.&End: iModelUsuario;
begin
  Result := FParent;
end;

function TModelUsuarioTipoGerente.AbrirCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.AbrirCaixa;
end;

function TModelUsuarioTipoGerente.Acrescimo: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.Acrescimo;
end;

function TModelUsuarioTipoGerente.CancelamentoCupom: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.CancelamentoCupom;
end;

function TModelUsuarioTipoGerente.CancelamentoItem: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.CancelamentoItem;
end;

constructor TModelUsuarioTipoGerente.Create(Value: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos);
begin
  FParent := Value;
  FResponsability := NextResponsability;
end;

constructor TModelUsuarioTipoGerente.Create(Value: iModelUsuario);
begin
  FParent := Value;
end;

function TModelUsuarioTipoGerente.Desconto: iModelUsuarioMetodos;
begin
  Result := Self;
end;

destructor TModelUsuarioTipoGerente.Destroy;
begin

  inherited;
end;

function TModelUsuarioTipoGerente.DevolucaoCupom: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.DevolucaoCupom;
end;

function TModelUsuarioTipoGerente.DevolucaoItem: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.DevolucaoItem;
end;

function TModelUsuarioTipoGerente.FecharCaixa: iModelUsuarioMetodos;
begin
  Result := Self;
  FResponsability.FecharCaixa;
end;

class function TModelUsuarioTipoGerente.New(Value: iModelUsuario;
  NextResponsability: iModelUsuarioMetodos): iModelUsuarioMetodos;
begin
  Result := Self.Create(Value, NextResponsability);
end;

class function TModelUsuarioTipoGerente.New(Value: iModelUsuario)
  : iModelUsuarioMetodos;
begin
  Result := Self.Create(Value);
end;

end.
