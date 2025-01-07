unit PDVUpdates.Controller.Types;

interface

type

  TTypePagamentos = (tpDinheiro, tpCartaoCredito);
  TTypeCaixaStatus = (tpAberto, tpBloqueado, tpFechado);
  TTypeCaixaOperacoes = (tpSuprimento, tpSangria);
  TTypeVendaStatus = (tpVendaAberta, tpVendaFechada, tpVendaCancelada,
    tpVendaDevolvida);

  TRecordPagamento = record
    Descricao: String;
    Tipo: TTypePagamentos;
  end;

  TRecordSenha = record
    User: string;
    Password: string;
  end;

implementation

end.
