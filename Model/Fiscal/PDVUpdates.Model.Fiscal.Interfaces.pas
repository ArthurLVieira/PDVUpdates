unit PDVUpdates.Model.Fiscal.Interfaces;

interface

uses
  System.Generics.Collections;

type
  iModelFiscalComponente = interface;
  iModelFiscalProxy = interface;
  iModelFiscalProxyProdutoLista = interface;
  iModelFiscalProxyProduto = interface;
  iModelFiscalProxyProdutoIterator = interface;
  iModelFiscalProxyPagamentoLista = interface;
  iModelFiscalProxyPagamentoIterator = interface;
  iModelFiscalProxyPagamento = interface;
  iModelFiscalProxyIdentificacao = interface;
  iModelFiscalProxyContribuinte<T> = interface;
  iModelFiscalProxyEndereco<T> = interface;
  iModelFiscalProxyEmitente = interface;
  iModelFiscalProxyDestinatario = interface;

  iModelFiscal = interface
    ['{5CBE1A1D-9DE8-4187-81B2-3958F007F131}']
    function Proxy(Value: iModelFiscalComponente): iModelFiscalProxy; overload;
    function Proxy: iModelFiscalProxy; overload;
    function NFCe: iModelFiscalComponente;
  end;

  iModelFiscalComponente = interface
    ['{E11931EA-B2CD-4EC5-BCF4-9F6824C83B57}']
    function Emitir(Proxy: iModelFiscalProxy): iModelFiscalComponente;
  end;

  iModelFiscalProxyFactory = interface
    ['{E1F0DA4B-05F0-4B8E-9395-3FB823092EBF}']
    function Identificacao(Value: iModelFiscalProxy)
      : iModelFiscalProxyIdentificacao;
    function Emitente(Value: iModelFiscalProxy): iModelFiscalProxyEmitente;
    function Destinatario(Value: iModelFiscalProxy)
      : iModelFiscalProxyDestinatario;
    function Produto(Value: iModelFiscalProxyProdutoLista)
      : iModelFiscalProxyProduto;
    function Pagamento(Value: iModelFiscalProxy): iModelFiscalProxyPagamento;
    function ProdutoLista(Value: iModelFiscalProxy)
      : iModelFiscalProxyProdutoLista;
    function PagamentoLista(Value: iModelFiscalProxy)
      : iModelFiscalProxyPagamentoLista;
    function ProdutoIterator(Value: TList<iModelFiscalProxyProduto>)
      : iModelFiscalProxyProdutoIterator;
    function PagamentoIterator(Value: TList<iModelFiscalProxyPagamento>)
      : iModelFiscalProxyPagamentoIterator;
  end;

  iModelFiscalProxy = interface
    ['{D5738916-61B3-4ABF-A979-4AEB49BF2594}']
    function Identificacao: iModelFiscalProxyIdentificacao;
    function Emitente: iModelFiscalProxyEmitente;
    function Destinatario: iModelFiscalProxyDestinatario;
    function Produto: iModelFiscalProxyProdutoLista;
    function Pagamento: iModelFiscalProxyPagamentoLista;
    function Componente(Value: iModelFiscalComponente): iModelFiscalProxy;
    function &End: iModelFiscal;
    function Exec: iModelFiscalProxy;
  end;

  iModelFiscalProxyProdutoLista = interface
    ['{03EE6190-8053-4150-A4A8-D8CA28B5D7A2}']
    function Iterator: iModelFiscalProxyProdutoIterator;
    function AddProduto: iModelFiscalProxyProduto;
    function &EndProduto: iModelFiscalProxyProdutoLista;
    function &End: iModelFiscalProxy;
  end;

  iModelFiscalProxyProdutoIterator = interface
    ['{FC856EF0-3BE2-42E3-B7A6-6F1862569EAC}']
    function hasNext: boolean;
    function Next: iModelFiscalProxyProduto;
  end;

  iModelFiscalProxyPagamentoIterator = interface
    ['{4D8DB052-1DFE-40A7-9E83-7869F0877DA7}']
    function hasNext: boolean;
    function Next: iModelFiscalProxyPagamento;
  end;

  iModelFiscalProxyPagamentoLista = interface
    ['{E29D7330-8833-4842-A0A6-D3EAF65B955D}']
    function Iterator: iModelFiscalProxyPagamentoIterator;
    function AddPagamento: iModelFiscalProxyPagamento;
    function &EndPagamento: iModelFiscalProxyPagamentoLista;
    function &End: iModelFiscalProxy;
  end;

  iModelFiscalProxyIdentificacao = interface
    ['{3E417089-C73C-4F9D-B596-B19583A02C4D}']
    function Numero(Value: Integer): iModelFiscalProxyIdentificacao; overload;
    function Data(Value: TDateTime): iModelFiscalProxyIdentificacao; overload;
    function Serie(Value: Integer): iModelFiscalProxyIdentificacao; overload;
    function Serie: Integer; overload;
    function Numero: Integer; overload;
    function Data: TDateTime; overload;
    function &End: iModelFiscalProxy;
  end;

  iModelFiscalProxyContribuinte<T> = interface
    ['{E43D964F-636B-440F-8F60-A2FD65D5CF69}']
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

  iModelFiscalProxyEndereco<T> = interface
    ['{7BCD96E6-A900-4A0F-9713-6E66D530A634}']
    function Logradouro(Value: String): iModelFiscalProxyEndereco<T>; overload;
    function Numero(Value: Integer): iModelFiscalProxyEndereco<T>; overload;
    function Bairro(Value: String): iModelFiscalProxyEndereco<T>; overload;
    function Cidade(Value: String): iModelFiscalProxyEndereco<T>; overload;
    function UF(Value: String): iModelFiscalProxyEndereco<T>; overload;
    function CEP(Value: String): iModelFiscalProxyEndereco<T>; overload;
    function cMunicipio(Value: String): iModelFiscalProxyEndereco<T>; overload;
    function Complemento(Value: String): iModelFiscalProxyEndereco<T>; overload;
    function Complemento: String; overload;
    function cMunicipio: String; overload;
    function Logradouro: String; overload;
    function Numero: Integer; overload;
    function Bairro: String; overload;
    function Cidade: String; overload;
    function UF: String; overload;
    function CEP: String; overload;
    function &End: T;
  end;

  iModelFiscalProxyEmitente = interface
    ['{370EF6BE-7A45-4094-A1FA-BA609552E409}']
    function Contribuinte
      : iModelFiscalProxyContribuinte<iModelFiscalProxyEmitente>;
    function Endereco: iModelFiscalProxyEndereco<iModelFiscalProxyEmitente>;
    function &End: iModelFiscalProxy;
  end;

  iModelFiscalProxyDestinatario = interface
    ['{E39ECF62-95ED-4390-A933-92ED19280528}']
    function Contribuinte
      : iModelFiscalProxyContribuinte<iModelFiscalProxyDestinatario>;
    function Endereco: iModelFiscalProxyEndereco<iModelFiscalProxyDestinatario>;
    function &End: iModelFiscalProxy;
  end;

  iModelFiscalProxyProduto = interface
    ['{6F6FB14E-3D89-42E9-9B5F-9CCEB3CBEB75}']
    function Codigo(Value: String): iModelFiscalProxyProduto; overload;
    function Descricao(Value: String): iModelFiscalProxyProduto; overload;
    function cEAN(Value: String): iModelFiscalProxyProduto; overload;
    function Qnt(Value: Currency): iModelFiscalProxyProduto; overload;
    function vUnit(Value: Currency): iModelFiscalProxyProduto; overload;
    function NCM(Value: String): iModelFiscalProxyProduto; overload;
    function Aliquota(Value: Currency): iModelFiscalProxyProduto; overload;
    function ST(Value: boolean): iModelFiscalProxyProduto; overload;
    function CEST(Value: String): iModelFiscalProxyProduto; overload;
    function Und(Value: String): iModelFiscalProxyProduto; overload;
    function CFOP(Value: String): iModelFiscalProxyProduto; overload;
    function Desconto(Value: Currency): iModelFiscalProxyProduto; overload;
    function Desconto: Currency; overload;
    function CFOP: String; overload;
    function Codigo: String; overload;
    function Descricao: String; overload;
    function cEAN: String; overload;
    function Qnt: Currency; overload;
    function vUnit: Currency; overload;
    function NCM: String; overload;
    function Aliquota: Currency; overload;
    function ST: boolean; overload;
    function CEST: String; overload;
    function Und: String; overload;
    function &End: iModelFiscalProxyProdutoLista;
  end;

  iModelFiscalProxyPagamento = interface
    ['{08FFF03A-3C10-4110-BA42-55E272B29D25}']
    function Tipo(Value: Integer): iModelFiscalProxyPagamento; overload;
    function Descricao(Value: String): iModelFiscalProxyPagamento; overload;
    function Valor(Value: Currency): iModelFiscalProxyPagamento; overload;
    function Descricao: String; overload;
    function Valor: Currency; overload;
    function Tipo: Integer; overload;
    function &End: iModelFiscalProxy;
  end;

implementation

end.
