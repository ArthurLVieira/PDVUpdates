unit PDVUpdates.View.Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListBox,
  FMX.Layouts, PDVUpdates.Controller.Caixa.Interfaces;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    procedure FormCreate(Sender: TObject);
    procedure ListBoxItem1Click(Sender: TObject);
  private
    { Private declarations }
    FCaixa: iControllerCaixa;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses PDVUpdates.Controller.Interfaces, PDVUpdates.Controller.Facade;

procedure TForm1.FormCreate(Sender: TObject);
begin
  TControllerFacade.New.Usuario.Usuario.Caixa.AbrirCaixa;
  FCaixa := TControllerFacade.New.Caixa.Caixa;
end;

procedure TForm1.ListBoxItem1Click(Sender: TObject);
begin
  FCaixa.Metodos.Abrir;
end;

end.
