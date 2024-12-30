unit PDVUpdates.Model.Produto.Interfaces;

interface

type

  iModelprodutoMetodos = interface;
  iModelProdutoMetodosCadastrar = interface;
  iModelProdutoMetodosExcluir = interface;
  iModelProdutoMetodosEditar = interface;
  iModelProdutoMetodosBloquear = interface;
  iModelProdutoMetodosDesbloquear = interface;

  iModelProdutoMetodosVender = interface;

  iModelProduto = interface
    ['{CD7D5688-C539-4793-BF37-B757E743BDB1}']
    function Metodos(Value: iModelProduto): iModelprodutoMetodos;
  end;

  iModelprodutoMetodos = interface
    ['{2A0E4DCE-029A-4C7F-975E-B6CBDF97FFFE}']
    function Cadastrar: iModelProdutoMetodosCadastrar;
    function Excluir: iModelProdutoMetodosExcluir;
    function Editar: iModelProdutoMetodosEditar;
    function Bloquear: iModelProdutoMetodosBloquear;
    function Desbloquer: iModelProdutoMetodosDesbloquear;
    function Vender: iModelProdutoMetodosVender;
    function &End: iModelProduto;
  end;

  iModelProdutoMetodosCadastrar = interface
    ['{786C3D01-11A5-4AE4-8192-689106231D2B}']
    function SetID(Value: Integer): iModelProdutoMetodosCadastrar;
    function GetID: Integer;
  end;

  iModelProdutoMetodosExcluir = interface
    ['{3DA700B9-BE4F-43DA-87D9-5E0663C9DDF5}']
  end;

  iModelProdutoMetodosEditar = interface
    ['{F5963F19-4391-44BB-831D-104FA89BA8D3}']
  end;

  iModelProdutoMetodosBloquear = interface
    ['{20CBA392-E698-4C27-BAB0-F99012DD358F}']
  end;

  iModelProdutoMetodosDesbloquear = interface
    ['{7C295566-39CA-4F3A-AEC4-3C42DBA85B91}']
  end;

  iModelProdutoMetodosVender = interface
    ['{5CD6BEA3-C589-40E4-A324-68036739900F}']
  end;

implementation

end.
