unit PDVUpdates.Model.Usuario.Funcoes.Interfaces;

interface

uses
  PDVUpdates.Model.Usuario.Interfaces;

type
  iModelUsuarioFuncoesListaUsuario = interface;

  iModelUsuarioFuncoesFactory = interface
    ['{3E98281E-3782-456A-9246-FBC58BB710E5}']
    function ListarUsuario(FParent: iModelUsuario)
      : iModelUsuarioFuncoesListaUsuario;
  end;

  iModelUsuarioFuncoesListaUsuario = interface
    ['{55097370-2B05-44B8-8028-293FCF1450DE}']
  end;

implementation

end.
