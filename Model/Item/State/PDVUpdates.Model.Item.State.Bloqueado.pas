unit PDVUpdates.Model.Item.State.Bloqueado;

interface

uses PDVUpdates.Model.Item.Interfaces;

type

  TModelItemStateBloqueado = class(TInterfacedObject, iModelItemMetodos)
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

{ TModelItemStateBloqueado }

function TModelItemStateBloqueado.Acrescimo: iModelItemMetodosAcrescimo;
begin
  raise Exception.Create('Item Bloqueado');
end;

function TModelItemStateBloqueado.Cancelar: iModelItemMetodosCancelar;
begin
  raise Exception.Create('Item Bloqueado');
end;

function TModelItemStateBloqueado.&End: iModelItem;
begin

end;

constructor TModelItemStateBloqueado.Create;
begin

end;

function TModelItemStateBloqueado.Desconto: iModelItemMetodosDesconto;
begin
  raise Exception.Create('Item Bloqueado');
end;

destructor TModelItemStateBloqueado.Destroy;
begin

  inherited;
end;

class function TModelItemStateBloqueado.New: iModelItemMetodos;
begin
  Result := Self.Create;
end;

function TModelItemStateBloqueado.Repetir: iModelItemMetodosRepetir;
begin
  raise Exception.Create('Item Bloqueado');
end;

function TModelItemStateBloqueado.Vender: iModelItemMetodosVender;
begin
  raise Exception.Create('Item Bloqueado');
end;

end.
