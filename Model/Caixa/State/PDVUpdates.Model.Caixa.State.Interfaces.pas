unit PDVUpdates.Model.Caixa.State.Interfaces;

interface

uses
  PDVUpdates.Model.Caixa.Interfaces;

type

  iModelCaixaStateFactory = interface
    ['{F43A5CB8-64C3-4E8A-835F-32B4C11D323A}']
    function Aberto: iModelCaixaMetodos;
    function Fechado: iModelCaixaMetodos;
    function Bloqueado: iModelCaixaMetodos;
  end;

implementation

end.
