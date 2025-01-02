unit PDVUpdates.Model.Item.State.Inativo;

interface

uses
  PDVUpdates.Model.Item.Interfaces;

type

  TModelItemStateInativo = class(TInterfacedObject, iModelItemMetodos)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelItemMetodos;
    function Vender: iModelItemMetodosVender;
    function Cancelar: iModelItemMetodosCancelar;
    function Desconto: iModelItemMetodosDesconto;
    function Acrescimo: iModelItemMetodosAcrescimo;
    function Repetir: iModelItemMetodosRepetir;
    function &End: iModelItem;
  end;

implementation

uses
  System.SysUtils;

{ TModelItemStateInativo }

function TModelItemStateInativo.Acrescimo: iModelItemMetodosAcrescimo;
begin
  raise Exception.Create('Item Inativo');
end;

function TModelItemStateInativo.Cancelar: iModelItemMetodosCancelar;
begin
  raise Exception.Create('Item Inativo');
end;

function TModelItemStateInativo.&End: iModelItem;
begin

end;

constructor TModelItemStateInativo.Create;
begin

end;

function TModelItemStateInativo.Desconto: iModelItemMetodosDesconto;
begin

end;

destructor TModelItemStateInativo.Destroy;
begin

  inherited;
end;

class function TModelItemStateInativo.New: iModelItemMetodos;
begin
  Result := Self.Create;
end;

function TModelItemStateInativo.Repetir: iModelItemMetodosRepetir;
begin
  raise Exception.Create('Item Inativo');
end;

function TModelItemStateInativo.Vender: iModelItemMetodosVender;
begin
  raise Exception.Create('Item Inativo');
end;

end.
