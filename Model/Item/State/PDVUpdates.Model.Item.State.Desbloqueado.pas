unit PDVUpdates.Model.Item.State.Desbloqueado;

interface

uses
  PDVUpdates.Model.Item.Interfaces;

type

  TModelItemStateDesbloqueado = class(TInterfacedObject, iModelItemMetodos)
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

{ TModelItemStateDesbloqueado }

function TModelItemStateDesbloqueado.Acrescimo: iModelItemMetodosAcrescimo;
begin

end;

function TModelItemStateDesbloqueado.Cancelar: iModelItemMetodosCancelar;
begin

end;

constructor TModelItemStateDesbloqueado.Create;
begin

end;

function TModelItemStateDesbloqueado.Desconto: iModelItemMetodosDesconto;
begin

end;

destructor TModelItemStateDesbloqueado.Destroy;
begin

  inherited;
end;

function TModelItemStateDesbloqueado.&End: iModelItem;
begin

end;

class function TModelItemStateDesbloqueado.New: iModelItemMetodos;
begin

end;

function TModelItemStateDesbloqueado.Repetir: iModelItemMetodosRepetir;
begin

end;

function TModelItemStateDesbloqueado.Vender: iModelItemMetodosVender;
begin

end;

end.
