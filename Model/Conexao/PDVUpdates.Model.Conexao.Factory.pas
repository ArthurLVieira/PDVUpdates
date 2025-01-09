unit PDVUpdates.Model.Conexao.Factory;

interface

uses
  PDVUpdates.Model.Conexao.Interfaces;

type

  TModelConexaoFactory = class(TInterfacedObject, iModelConexaoFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelConexaoFactory;
    function Conexao: iModelConexao;
  end;

implementation

uses
  PDVUpdates.Model.Conexao;

{ TMinhaClasse }

function TModelConexaoFactory.Conexao: iModelConexao;
begin
  Result := TDataModule1.New;
end;

constructor TModelConexaoFactory.Create;
begin

end;

destructor TModelConexaoFactory.Destroy;
begin

  inherited;
end;

class function TModelConexaoFactory.New: iModelConexaoFactory;
begin
  Result := Self.Create;
end;

end.
