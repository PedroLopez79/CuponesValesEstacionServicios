unit ufrmBuscar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, uDADataTable, uDAScriptingProvider, uDACDSDataTable,
  cxGridLevel, cxClasses, cxControls, dxRibbon, cxGridCustomView, cxGrid, cxPC,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, uDAInterfaces, dxRibbonForm,
  dxSkinsdxRibbonPainter, cxLabel, cxTextEdit, cxContainer, cxGroupBox,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeelPainters, cxLookAndFeels, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSpringTime;

type
  TfrmBuscar = class(TdxCustomRibbonForm)
    cdsBuscar: TDACDSDataTable;
    dsBuscar: TDADataSource;
    dxRibbon1: TdxRibbon;
    pgcBuscar: TcxPageControl;
    tsBuscar: TcxTabSheet;
    dbgBuscar: TcxGrid;
    dbgBuscarDBTableView2: TcxGridDBTableView;
    dbgBuscarLevel2: TcxGridLevel;
    tsAgregar: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    edtBusqueda: TcxTextEdit;
    cxLabel1: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure edtBusquedaExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgBuscarDBTableView2DblClick(Sender: TObject);
    procedure edtBusquedaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Clave:Integer;
    OK:Boolean;
    OKClienteNuevo:Boolean;
    Nuevo:Boolean;
    Busqueda:Boolean;
    procedure Buscar; virtual;
  end;
    { Public declarations }

var
  frmBuscar: TfrmBuscar;

implementation

uses Modules, uDM, dmActions, dmImagenes, UtileriasComun;

{$R *.dfm}

procedure TfrmBuscar.Buscar;
begin

end;

procedure TfrmBuscar.dbgBuscarDBTableView2DblClick(Sender: TObject);
begin
  OK:=False;
  if cdsBuscar.RecordCount > 0 then
  begin
    OK:=True;
    Clave:=cdsBuscar.Fields[0].Value;
  end;
  Close;
end;

procedure TfrmBuscar.edtBusquedaExit(Sender: TObject);
begin
  Buscar;
  Busqueda:=True;
end;

procedure TfrmBuscar.edtBusquedaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    dbgBuscar.SetFocus;
end;

procedure TfrmBuscar.FormCreate(Sender: TObject);
begin
  dxRibbon1.ColorSchemeName:=RibbonSchema[ColorRibbonSchema];
  pgcBuscar.ActivePageIndex:=0;
end;

procedure TfrmBuscar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (Busqueda=True) and (Nuevo=False) then
    dbgBuscarDBTableView2DblClick(nil);
end;

end.
