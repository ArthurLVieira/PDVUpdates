program PDVUpdates;

uses
  System.StartUpCopy,
  FMX.Forms,
  PDVUpdates.View.Principal in 'View\PDVUpdates.View.Principal.pas' {Form1},
  PDVUpdates.Model.Usuario.Interfaces in 'Model\Usuario\PDVUpdates.Model.Usuario.Interfaces.pas',
  PDVUpdates.Model.Usuario in 'Model\Usuario\PDVUpdates.Model.Usuario.pas',
  PDVUpdates.Model.Usuario.Factory in 'Model\Usuario\PDVUpdates.Model.Usuario.Factory.pas',
  PDVUpdates.Model.Usuario.Tipo.Caixa in 'Model\Usuario\Tipo\PDVUpdates.Model.Usuario.Tipo.Caixa.pas',
  PDVUpdates.Model.Usuario.Tipo.Interfaces in 'Model\Usuario\Tipo\PDVUpdates.Model.Usuario.Tipo.Interfaces.pas',
  PDVUpdates.Model.Usuario.Tipo.Factory in 'Model\Usuario\Tipo\PDVUpdates.Model.Usuario.Tipo.Factory.pas',
  PDVUpdates.Model.Usuario.Tipo.Fiscal in 'Model\Usuario\Tipo\PDVUpdates.Model.Usuario.Tipo.Fiscal.pas',
  PDVUpdates.Model.Usuario.Tipo.Gerente in 'Model\Usuario\Tipo\PDVUpdates.Model.Usuario.Tipo.Gerente.pas',
  PDVUpdates.Model.Usuario.Tipo.Padrao in 'Model\Usuario\Tipo\PDVUpdates.Model.Usuario.Tipo.Padrao.pas',
  PDVUpdates.Model.Usuario.Iterator in 'Model\Usuario\PDVUpdates.Model.Usuario.Iterator.pas',
  PDVUpdates.Model.Entity.Interfaces in 'Model\Entity\PDVUpdates.Model.Entity.Interfaces.pas',
  PDVUpdates.Model.Entity.Factory in 'Model\Entity\PDVUpdates.Model.Entity.Factory.pas',
  PDVUpdates.Model.Entity.Usuario in 'Model\Entity\PDVUpdates.Model.Entity.Usuario.pas',
  PDVUpdates.Controller.Usuario.Interfaces in 'Controller\Usuario\PDVUpdates.Controller.Usuario.Interfaces.pas',
  PDVUpdates.Controller.Usuario in 'Controller\Usuario\PDVUpdates.Controller.Usuario.pas',
  PDVUpdates.Controller.Interfaces in 'Controller\PDVUpdates.Controller.Interfaces.pas',
  PDVUpdates.Controller.Facade in 'Controller\PDVUpdates.Controller.Facade.pas',
  PDVUpdates.Controller.Usuario.Factory in 'Controller\Usuario\PDVUpdates.Controller.Usuario.Factory.pas',
  PDVUpdates.View.Dialog.SenhaUsuario in 'View\Dialog\PDVUpdates.View.Dialog.SenhaUsuario.pas' {Form2},
  PDVUpdates.Controller.Dialog.SenhaUsuario in 'Controller\Dialog\PDVUpdates.Controller.Dialog.SenhaUsuario.pas',
  PDVUpdates.Controller.Dialog.SenhaUsuario.Interfaces in 'Controller\Dialog\PDVUpdates.Controller.Dialog.SenhaUsuario.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
