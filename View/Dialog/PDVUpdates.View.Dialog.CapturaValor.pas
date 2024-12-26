unit PDVUpdates.View.Dialog.CapturaValor;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Layouts;

type
  TFrmCapturaValor = class(TForm)
    Layout1: TLayout;
    ToolBar1: TToolBar;
    Label1: TLabel;
    ToolBar2: TToolBar;
    Layout2: TLayout;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
    function ExibirForm(Title, TextConfirm, TextCancel: String): Currency;
  end;

var
  FrmCapturaValor: TFrmCapturaValor;

implementation

{$R *.fmx}
{ TForm2 }

function TFrmCapturaValor.ExibirForm(Title, TextConfirm, TextCancel: String): Currency;
begin
  Label1.Text := Title;
  Button1.Text := TextConfirm;
  Button2.Text := TextCancel;
  Self.ShowModal;
  Result := StrToCurr(Edit1.Text);
end;

end.
