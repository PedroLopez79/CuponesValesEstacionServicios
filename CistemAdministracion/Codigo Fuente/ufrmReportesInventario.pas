unit ufrmReportesInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmPantallaReportes, ComCtrls, dxSkinsCore, dxSkinsDefaultPainters,
  ImgList, uDAScriptingProvider, uDADataTable, uDAMemDataTable, cxControls,
  cxContainer, cxListView, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmReportesInventario = class(TfrmPantallaReportes)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportesInventario: TfrmReportesInventario;

implementation

uses Modules, uDM;

{$R *.dfm}

procedure TfrmReportesInventario.FormCreate(Sender: TObject);
begin
  inherited;
  DespliegaReportes(2,'@'+inttostr(DM.EmpleadoID)+'@');
end;

initialization
  ModuleInfoManager.RegisterModule('Inventarios', TfrmReportesInventario);

end.
