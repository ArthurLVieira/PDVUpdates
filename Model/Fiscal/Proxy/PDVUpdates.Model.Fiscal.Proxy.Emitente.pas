unit PDVUpdates.Model.Fiscal.Proxy.Emitente;

interface

uses
  PDVUpdates.Model.Fiscal.Interfaces;

type

  TModelFiscalProxyEmitente = class(TInterfacedObject,
    iModelFiscalProxyEmitente)
  private
    FParent: iModelFiscalProxy;
    FContribuinte: iModelFiscalProxyContribuinte<iModelFiscalProxyEmitente>;
    FEndereco: iModelFiscalProxyEndereco<iModelFiscalProxyEmitente>;
  public
    constructor Create(Parent: iModelFiscalProxy);
    destructor Destroy; override;
    class function New(Parent: iModelFiscalProxy): iModelFiscalProxyEmitente;
    function Contribuinte
      : iModelFiscalProxyContribuinte<iModelFiscalProxyEmitente>;
    function Endereco: iModelFiscalProxyEndereco<iModelFiscalProxyEmitente>;
    function &End: iModelFiscalProxy;
  end;

implementation

uses
  PDVUpdates.Model.Fiscal.Proxy.Endereco,
  PDVUpdates.Model.Fiscal.Proxy.Contribuinte;

{ TModelFiscalProxyEmitente }

function TModelFiscalProxyEmitente.Contribuinte
  : iModelFiscalProxyContribuinte<iModelFiscalProxyEmitente>;
begin
  Result := FContribuinte;
end;

function TModelFiscalProxyEmitente.&End: iModelFiscalProxy;
begin
  Result := FParent;
end;

constructor TModelFiscalProxyEmitente.Create(Parent: iModelFiscalProxy);
begin
  FParent := Parent;
  FContribuinte :=
    TModelFiscalProxyContribuinte<iModelFiscalProxyEmitente>.New(Self);
  FEndereco := TModelFiscalProxyEndereco<iModelFiscalProxyEmitente>.New(Self);

end;

destructor TModelFiscalProxyEmitente.Destroy;
begin

  inherited;
end;

function TModelFiscalProxyEmitente.Endereco
  : iModelFiscalProxyEndereco<iModelFiscalProxyEmitente>;
begin
  Result := FEndereco;
end;

class function TModelFiscalProxyEmitente.New(Parent: iModelFiscalProxy)
  : iModelFiscalProxyEmitente;
begin
  Result := Self.Create(Parent);
end;

end.
