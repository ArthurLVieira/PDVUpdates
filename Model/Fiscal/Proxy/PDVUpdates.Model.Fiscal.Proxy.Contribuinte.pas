unit PDVUpdates.Model.Fiscal.Proxy.Contribuinte;

interface

uses
  PDVUpdates.Model.Fiscal.Interfaces;

type

  TModelFiscalProxyContribuinte<T> = class(TInterfacedObject,
    iModelFiscalProxyContribuinte<T>)
  private
    FParent: T;
    FNome: String;
    FNomeFantasia: String;
    FCPFCNPJ: String;
    FIE: String;
    FTelefone: String;
  public
    constructor Create(Parent: T);
    destructor Destroy; override;
    class function New(Parent: T): iModelFiscalProxyContribuinte<T>;
    function Nome(Value: String): iModelFiscalProxyContribuinte<T>; overload;
    function CPFCNPJ(Value: String): iModelFiscalProxyContribuinte<T>; overload;
    function IE(Value: String): iModelFiscalProxyContribuinte<T>; overload;
    function Telefone(Value: String): iModelFiscalProxyContribuinte<T>;
      overload;
    function NomeFantasia(Value: String)
      : iModelFiscalProxyContribuinte<T>; overload;
    function NomeFantasia: String; overload;
    function Nome: String; overload;
    function CPFCNPJ: String; overload;
    function IE: String; overload;
    function Telefone: String; overload;
    function &End: T;
  end;

implementation

{ TModelFiscalProxyContribuinte<T> }

function TModelFiscalProxyContribuinte<T>.CPFCNPJ(Value: String)
  : iModelFiscalProxyContribuinte<T>;
begin
  Result := Self;
  FCPFCNPJ := Value;
end;

function TModelFiscalProxyContribuinte<T>.CPFCNPJ: String;
begin
  Result := FCPFCNPJ;
end;

function TModelFiscalProxyContribuinte<T>.&End: T;
begin
  Result := FParent;
end;

constructor TModelFiscalProxyContribuinte<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

destructor TModelFiscalProxyContribuinte<T>.Destroy;
begin

  inherited;
end;

function TModelFiscalProxyContribuinte<T>.IE(Value: String)
  : iModelFiscalProxyContribuinte<T>;
begin
  Result := Self;
  FIE := Value;
end;

function TModelFiscalProxyContribuinte<T>.IE: String;
begin
  Result := FIE;
end;

class function TModelFiscalProxyContribuinte<T>.New(Parent: T)
  : iModelFiscalProxyContribuinte<T>;
begin
  Result := Self.Create(Parent);
end;

function TModelFiscalProxyContribuinte<T>.Nome(Value: String)
  : iModelFiscalProxyContribuinte<T>;
begin
  Result := Self;
  FNome := Value;
end;

function TModelFiscalProxyContribuinte<T>.Nome: String;
begin
  Result := FNome;
end;

function TModelFiscalProxyContribuinte<T>.NomeFantasia(Value: String)
  : iModelFiscalProxyContribuinte<T>;
begin
  Result := Self;
  FNomeFantasia := Value;
end;

function TModelFiscalProxyContribuinte<T>.NomeFantasia: String;
begin
  Result := FNomeFantasia;
end;

function TModelFiscalProxyContribuinte<T>.Telefone(Value: String)
  : iModelFiscalProxyContribuinte<T>;
begin
  Result := Self;
  FTelefone := Value;
end;

function TModelFiscalProxyContribuinte<T>.Telefone: String;
begin
  Result := FTelefone;
end;

end.
