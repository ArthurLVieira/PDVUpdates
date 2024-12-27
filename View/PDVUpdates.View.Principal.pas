unit PDVUpdates.View.Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListBox,
  FMX.Layouts, PDVUpdates.Controller.Caixa.Interfaces;

type
  TForm1 = class(TForm)
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    procedure FormCreate(Sender: TObject);
    procedure ListBoxItem1Click(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure ListBoxItem3Click(Sender: TObject);
    procedure ListBoxItem4Click(Sender: TObject);
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
//  TControllerFacade.New.Usuario.Usuario.Caixa.AbrirCaixa;
  FCaixa := TControllerFacade.New.Caixa.Caixa;
end;

procedure TForm1.ListBoxItem1Click(Sender: TObject);
begin
  FCaixa.Metodos.Abrir;
end;

procedure TForm1.ListBoxItem2Click(Sender: TObject);
begin
  FCaixa.Metodos.Fechar;
end;

procedure TForm1.ListBoxItem3Click(Sender: TObject);
begin
  FCaixa.Metodos.Sangria;
end;

procedure TForm1.ListBoxItem4Click(Sender: TObject);
begin
  FCaixa.Metodos.Suprimento;
end;

end.
