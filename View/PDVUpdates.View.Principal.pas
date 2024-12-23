unit PDVUpdates.View.Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  PDVUpdates.Controller.Interfaces;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses PDVUpdates.Controller.Facade;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TControllerFacade.New.Usuario.Fiscal.AbrirCaixa;
end;

end.
