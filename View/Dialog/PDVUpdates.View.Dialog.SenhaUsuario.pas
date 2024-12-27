unit PDVUpdates.View.Dialog.SenhaUsuario;

interface

uses
  System.SysUtils, System.Types, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.ListBox, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts,
  PDVUpdates.Controller.Types, System.Generics.Collections, FMX.Ani;

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
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure PreecherCombo(Lista: TList<TRecordSenha>);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExibirForm(Title, TextConfirm, TextCancel: string;
      Lista: TList<TRecordSenha>; var Result: TRecordSenha);
  end;

var
  FrmSenhaUsuario: TFrmSenhaUsuario;

implementation

uses
  System.UITypes;

{$R *.fmx}
{ TFrmSenhaUsuario }

procedure TFrmSenhaUsuario.Button1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFrmSenhaUsuario.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmSenhaUsuario.ExibirForm(Title, TextConfirm, TextCancel: string;
  Lista: TList<TRecordSenha>; var Result: TRecordSenha);
begin
  PreecherCombo(Lista);
  Label1.Text := Title;
  Button1.Text := TextConfirm;
  Button2.Text := TextCancel;
  Self.ShowModal;

  Result.User := ComboBox1.Items[ComboBox1.ItemIndex];
  Result.Password := Edit1.Text;
end;

procedure TFrmSenhaUsuario.PreecherCombo(Lista: TList<TRecordSenha>);
var
  I: Integer;
begin
  for I := 0 to Pred(Lista.Count) do
    ComboBox1.Items.Add(Lista.Items[I].User);
end;

end.
