unit PDVUpdates.Model.Entity.Interfaces;

interface

uses
  PDVUpdates.Model.Entity.Usuario;

type

  iModelEntityFactory = interface
    ['{A2024475-90F2-4115-AF02-C0FD67530F8B}']
    function Usuario: TModelEntityUsuario;
  end;

implementation

end.
