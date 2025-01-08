unit PDVUpdates.Model.Empresa;

interface

uses
  PDVUpdates.Model.Empresa.Interfaces;

type

  TModelEmpresa = class(TInterfacedObject, iModelEmpresa)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelEmpresa;
  end;

implementation

{ TModelEmpresa }

constructor TModelEmpresa.Create;
begin

end;

destructor TModelEmpresa.Destroy;
begin

  inherited;
end;

class function TModelEmpresa.New: iModelEmpresa;
begin
  Result := Self.Create;
end;

end.
