unit UfrmReporteGenerales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, cxLookAndFeelPainters, cxTextEdit, StdCtrls,
  cxButtons, cxLabel, cxContainer, cxEdit, cxGroupBox, cxGraphics,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  DB, uDADataTable, uDAScriptingProvider, uDACDSDataTable, cxControls, jpeg,
  cxImage, ComCtrls, cxListView, ImgList, dxSkinsCore, ufrmPantallaReportes,
  dxSkinsDefaultPainters, dxSkinsdxRibbonPainter, uDAMemDataTable,
  cxLookAndFeels, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  uROComponent;
type
  TfrmReporteGenerales = class(TfrmPantallaReportes)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReporteGenerales: TfrmReporteGenerales;

implementation

uses Modules, uDM;

{$R *.dfm}

procedure TfrmReporteGenerales.FormCreate(Sender: TObject);
begin
  inherited;
  DespliegaReportes(4,'@'+inttostr(DM.EmpleadoID)+'@');
end;

initialization
  ModuleInfoManager.RegisterModule('Generales', TfrmReporteGenerales);
  
end.
