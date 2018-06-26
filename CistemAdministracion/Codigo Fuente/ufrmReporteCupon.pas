unit ufrmReporteCupon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, jpeg, cxControls, cxContainer, cxEdit, cxImage, cxLabel,
  ComCtrls, cxListView, uDAScriptingProvider, uDADataTable, uDACDSDataTable,
  ImgList, dxSkinsCore, dxSkinsDefaultPainters, ufrmPantallaReportes,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, uROComponent, uDAMemDataTable;

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
  ModuleInfoManager.RegisterModule('ReporteCupones', TfrmReporteCupon);

end.
