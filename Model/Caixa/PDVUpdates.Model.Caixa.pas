unit PDVUpdates.Model.Caixa;

interface

uses
  PDVUpdates.Model.Caixa.Interfaces;

type

  TModelCaixa = class(TInterfacedObject, iModelCaixa)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelCaixa;
  end;

implementation

{ TModelCaixa }

constructor TModelCaixa.Create;
begin

end;

destructor TModelCaixa.Destroy;
begin

  inherited;
end;

class function TModelCaixa.New: iModelCaixa;
begin
  Result := Self.Create;
end;

end.
