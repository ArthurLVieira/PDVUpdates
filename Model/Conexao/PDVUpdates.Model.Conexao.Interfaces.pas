unit PDVUpdates.Model.Conexao.Interfaces;

interface

uses
  dbebr.factory.Interfaces;

type

  iModelConexao = interface
    ['{290DE960-9313-4188-B76A-F7274A185B70}']
    function Conn: IDBConnection;
  end;

  iModelConexaoFactory = interface
    ['{B955FFEC-6071-4C38-93DD-B4D1DFFB30AE}']
    function Conexao: iModelConexao;
  end;

implementation

end.
