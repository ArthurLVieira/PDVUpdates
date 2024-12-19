unit PDVUpdates.Model.Usuario.Tipo.Interfaces;

interface

uses PDVUpdates.Model.Usuario.Interfaces;

type

  TUsuarioTipo = (Caixa, Fiscal, Gerente);

  iModelUsuarioTipoFactory = interface
    ['{CBB5096D-C1F8-40DA-8CED-21C3396332C0}']
    function UsuarioTipo(Value: TUsuarioTipo; Parent: iModelUsuario;
      Responsability: iModelUsuarioMetodos = nil): iModelUsuarioMetodos;
  end;

implementation

end.
