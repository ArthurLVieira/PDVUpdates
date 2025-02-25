unit PDVUpdates.Model.Interfaces;

interface

uses
  PDVUpdates.Model.Caixa.Interfaces, PDVUpdates.Model.Usuario.Interfaces,
  PDVUpdates.Model.Entity.Interfaces,
  PDVUpdates.Model.Usuario.Factory.Interfaces;

type

  iModelFacade = interface
    ['{476DCE51-770E-4A1F-8317-D27B0CFF0E8D}']
    function Caixa: iModelCaixaFactory;
    function Usuario: iModelUsuarioFactory;
    function Entity: iModelEntityFactory;
  end;

implementation

end.
