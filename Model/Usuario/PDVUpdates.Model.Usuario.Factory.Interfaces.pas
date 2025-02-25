unit PDVUpdates.Model.Usuario.Factory.Interfaces;

interface

uses
  PDVUpdates.Model.Usuario.Interfaces,
  PDVUpdates.Model.Usuario.Tipo.Interfaces;

type

  iModelUsuarioFactory = interface
    ['{AECABAA4-211C-43E2-A4C4-DF3CE7380019}']
    function Usuario: iModelUsuario;
    function Tipos: iModelUsuarioTipoFactory;
    function Iterator(Parent: iModelUsuario): iModelUsuarioIterator;
  end;

implementation

end.
