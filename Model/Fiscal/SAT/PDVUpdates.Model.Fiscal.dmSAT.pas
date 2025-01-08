unit PDVUpdates.Model.Fiscal.dmSAT;

interface

uses
  System.SysUtils, System.Classes, PDVUpdates.Model.Fiscal.Interfaces;

type
  TdmSATFiscal = class(TDataModule, iModelFiscalComponente)
  private
    { Private declarations }
    FProxy: iModelFiscalProxy;
    function Emitir(Proxy: iModelFiscalProxy): iModelFiscalComponente;
  public
    { Public declarations }
  end;

var
  dmSATFiscal: TdmSATFiscal;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}
{ TdmSATFiscal }

function TdmSATFiscal.Emitir(Proxy: iModelFiscalProxy): iModelFiscalComponente;
begin
  FProxy := Proxy;
end;

end.
