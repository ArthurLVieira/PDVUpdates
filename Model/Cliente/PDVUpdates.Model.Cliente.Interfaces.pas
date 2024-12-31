unit PDVUpdates.Model.Cliente.Interfaces;

interface

type

  iModelClienteMetodosSaldo = interface;
  iModelClienteMetodosBuscar = interface;
  iModelClienteMetodos = interface;

  iModelCliente = interface
    ['{EDB6F807-19D0-4E10-A5A8-2853AA9B9A8E}']
    function Metodos: iModelClienteMetodos;
    function SetState(Value: iModelClienteMetodos): iModelCliente;
  end;

  iModelClienteMetodos = interface
    ['{F2251039-F2E8-42C8-9BD6-E1E441DE6BB0}']
    function Saldo: iModelClienteMetodosSaldo;
    function Buscar: iModelClienteMetodosBuscar;
    function &End: iModelCliente;
  end;

  iModelClienteMetodosSaldo = interface
    ['{21CEFCB7-CEC3-4D4F-A78D-F2F43789AD15}']
    function GetSaldo(var Value: Currency): iModelClienteMetodosSaldo;
    function SetSaldo(Value: Currency): iModelClienteMetodosSaldo;
    function &End: iModelClienteMetodos;
  end;

  iModelClienteMetodosBuscar = interface
    ['{CF9B6307-AC43-420E-B2C0-44375EB56073}']
    function PorCPF(Value: string): iModelClienteMetodosBuscar;
    function &End: iModelClienteMetodos;
  end;

  iModelClienteFactory = interface
    ['{6A6EC4C5-C529-46EA-8E1E-427C5C5A1246}']
    function Cliente: iModelCliente;
  end;

implementation

end.