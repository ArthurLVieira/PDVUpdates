unit PDVUpdates.Model.Cliente.Metodos.Interfaces;

interface

uses
  PDVUpdates.Model.Cliente.Interfaces;

type

  iModelClienteMetodosFactory = interface
    ['{0E869C01-3B15-4154-B7B0-843D7AEA2640}']
    Function Saldo(Parent: iModelClienteMetodos): iModelClienteMetodosSaldo;
    function Buscar(Parent: iModelClienteMetodos): iModelClienteMetodosBuscar;
  end;

implementation

end.
