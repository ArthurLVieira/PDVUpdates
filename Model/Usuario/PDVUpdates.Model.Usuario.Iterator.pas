unit PDVUpdates.Model.Usuario.Iterator;

interface

uses PDVUpdates.Model.Usuario.Interfaces, System.Generics.Collections;

type

  TModelUsuarioIterator = class(TInterfacedObject, iModelUsuarioIterator)
  private
    FLista: TList<iModelUsuario>;
    FCount: Integer;
    FParent: iModelUsuario;
  public
    constructor Create(Value: iModelUsuario);
    destructor Destroy; override;
    class function New(Value: iModelUsuario): iModelUsuarioIterator;
    function hasNext: Boolean;
    function Next: iModelUsuario;
    function Add(Value: iModelUsuario): iModelUsuarioIterator;
    function Lista: TList<iModelUsuario>;
    function &End: iModelUsuario;
  end;

implementation

uses
  System.SysUtils;

{ TModelUsuarioIterator }

function TModelUsuarioIterator.&End: iModelUsuario;
begin
  Result := FParent;
end;

function TModelUsuarioIterator.Add(Value: iModelUsuario): iModelUsuarioIterator;
begin
  Result := Self;
  FLista.Add(Value);
end;

constructor TModelUsuarioIterator.Create(Value: iModelUsuario);
begin
  FParent := Value;
  FLista := TList<iModelUsuario>.Create;
  FCount := 0;

end;

destructor TModelUsuarioIterator.Destroy;
begin
  FreeAndNil(FLista);
  inherited;
end;

function TModelUsuarioIterator.hasNext: Boolean;
begin
  Result := not(FCount = FLista.Count);
end;

function TModelUsuarioIterator.Lista: TList<iModelUsuario>;
begin
  Result := FLista;
end;

class function TModelUsuarioIterator.New(Value: iModelUsuario)
  : iModelUsuarioIterator;
begin
  Result := Self.Create(Value);
end;

function TModelUsuarioIterator.Next: iModelUsuario;
begin
  Result := FLista.Items[FCount];
  Inc(FCount);
end;

end.
