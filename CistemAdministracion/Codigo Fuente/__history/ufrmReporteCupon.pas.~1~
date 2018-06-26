unit ufrmReporteCupon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, jpeg, cxControls, cxContainer, cxEdit, cxImage, cxLabel,
  ComCtrls, cxListView, uDAScriptingProvider, uDADataTable, uDACDSDataTable,
  ImgList, dxSkinsCore, dxSkinsDefaultPainters, ufrmPantallaReportes;

type
  TfrmReporteCupon = class(TfrmPantallaReportes)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReporteCupon: TfrmReporteCupon;

implementation

uses Modules, uDM;
{$R *.dfm}

procedure TfrmReporteCupon.FormCreate(Sender: TObject);
begin
  inherited;
  DespliegaReportes(3,'@'+inttostr(DM.EmpleadoID)+'@');
end;

initialization
  ModuleInfoManager.RegisterModule('Cupones', TfrmReporteCupon);

end.
