unit PDVUpdates.Model.Cliente.State.Interfaces;

interface

uses
  PDVUpdates.Model.Cliente.Interfaces;

type

  TStateCliente = (Bloqueado, Desbloqueado, Ativo, Inatino);

  iModelClienteStateFactory = interface
    ['{0C962AB3-142F-48D3-AD75-1A3869CF0B42}']
    function ClienteState(Value: TStateCliente): iModelClienteMetodos;
    // function Bloqueado: iModelClienteMetodos;
    // function Desbloqueado: iModelClienteMetodos;
    // function Ativo: iModelClienteMetodos;
    // function Inatino: iModelClienteMetodos;
  end;

implementation

end.
