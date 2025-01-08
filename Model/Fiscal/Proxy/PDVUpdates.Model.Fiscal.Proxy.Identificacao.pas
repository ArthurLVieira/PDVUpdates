unit PDVUpdates.Model.Fiscal.Proxy.Identificacao;

interface

uses
  PDVUpdates.Model.Fiscal.Interfaces;

type

  TModelFiscalProxyIdentificacao = class(TInterfacedObject,
    iModelFiscalProxyIdentificacao)
  private
    FParent: iModelFiscalProxy;
    FNumero: Integer;
    FSerie: Integer;
    FData: TDateTime;
  public
    constructor Create(Parent: iModelFiscalProxy);
    destructor Destroy; override;
    class function New(Parent: iModelFiscalProxy)
      : iModelFiscalProxyIdentificacao;
    function Numero(Value: Integer): iModelFiscalProxyIdentificacao; overload;
    function Data(Value: TDateTime): iModelFiscalProxyIdentificacao; overload;
    function Serie(Value: Integer): iModelFiscalProxyIdentificacao; overload;
    function Serie: Integer; overload;
    function Numero: Integer; overload;
    function Data: TDateTime; overload;
    function &End: iModelFiscalProxy;
  end;

implementation

{ TModelFiscalProxyIdentificacao }

function TModelFiscalProxyIdentificacao.&End: iModelFiscalProxy;
begin
  Result := FParent;
end;

constructor TModelFiscalProxyIdentificacao.Create(Parent: iModelFiscalProxy);
begin
  FParent := Parent;
end;

function TModelFiscalProxyIdentificacao.Data: TDateTime;
begin
  Result := FData;
end;

function TModelFiscalProxyIdentificacao.Data(Value: TDateTime)
  : iModelFiscalProxyIdentificacao;
begin
  Result := Self;
  FData := Value;
end;

destructor TModelFiscalProxyIdentificacao.Destroy;
begin

  inherited;
end;

class function TModelFiscalProxyIdentificacao.New(Parent: iModelFiscalProxy)
  : iModelFiscalProxyIdentificacao;
begin
  Result := Self.Create(Parent);
end;

function TModelFiscalProxyIdentificacao.Numero(Value: Integer)
  : iModelFiscalProxyIdentificacao;
begin
  Result := Self;
  FNumero := Value;
end;

function TModelFiscalProxyIdentificacao.Numero: Integer;
begin
  Result := FNumero;
end;

function TModelFiscalProxyIdentificacao.Serie: Integer;
begin
  Result := FSerie;
end;

function TModelFiscalProxyIdentificacao.Serie(Value: Integer)
  : iModelFiscalProxyIdentificacao;
begin
  Result := Self;
  FSerie := Value;
end;

end.
