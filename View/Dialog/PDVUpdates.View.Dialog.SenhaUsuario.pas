unit PDVUpdates.View.Dialog.SenhaUsuario;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.ListBox, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts;

type
  TFrmSenhaUsuario = class(TForm)
    Layout1: TLayout;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Layout2: TLayout;
    Button1: TButton;
    Button2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExibirForm(Title, TextConfirm, TextCancel: string;
      OnClick, OnCancel: TNotifyEvent);
  end;

var
  FrmSenhaUsuario: TFrmSenhaUsuario;

implementation

{$R *.fmx}
{ TFrmSenhaUsuario }

procedure TFrmSenhaUsuario.ExibirForm(Title, TextConfirm, TextCancel: string;
  OnClick, OnCancel: TNotifyEvent);
begin
  Label1.Text := Title;
  Button1.Text := TextConfirm;
  Button1.OnClick := OnClick;
  Button2.Text := TextCancel;
  Button2.OnClick := OnCancel;
  Self.ShowModal;
end;

end.
