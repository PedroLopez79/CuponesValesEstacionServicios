unit ufrmCatalogoPuntosPremio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, dxmdaset, uDAInterfaces, uDADataTable,
  uDAScriptingProvider, uDAMemDataTable, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxPC, cxLookAndFeelPainters, cxCurrencyEdit,
  cxDBEdit, cxLabel, cxTextEdit, cxContainer, cxGroupBox, cxLookAndFeels,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSpringTime, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmCatalogoPuntosPremio = class(TfrmCatalogo)
    dbgCatalogoDBTableView1PuntosPremioID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Codigo: TcxGridDBColumn;
    dbgCatalogoDBTableView1Descripcion: TcxGridDBColumn;
    dbgCatalogoDBTableView1Puntos: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cdsAgrupacionEstacion: TDAMemDataTable;
    dsAgrupacionEstacion: TDADataSource;
    comboZona: TcxDBLookupComboBox;
    cxLabel5: TcxLabel;
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
    procedure cdsCatalogoBeforePost(DataTable: TDADataTable);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoPuntosPremio: TfrmCatalogoPuntosPremio;

implementation

uses uDM, Modules;

{$R *.dfm}

procedure TfrmCatalogoPuntosPremio.cdsCatalogoBeforePost(
  DataTable: TDADataTable);
begin
  inherited;
  if cdsCatalogo.State = dsInsert then
    cdsCatalogo.FieldByName('PuntosPremioID').AsInteger:=DM.Servidor.Folio('PuntosPremioID', '');
end;

procedure TfrmCatalogoPuntosPremio.cdsCatalogoNewRecord(
  DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('Puntos').AsInteger := 0;
  DataTable.FieldByName('AgrupacionEstacionID').AsInteger := cdsAgrupacionEstacion.FieldByName('AgrupacionEstacionID').AsInteger;
end;

procedure TfrmCatalogoPuntosPremio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsAgrupacionEstacion.Close;
end;

procedure TfrmCatalogoPuntosPremio.FormCreate(Sender: TObject);
begin
  inherited;
  cdsAgrupacionEstacion.Open;
end;

initialization
  ModuleInfoManager.RegisterModule('Catalogo Premios', TfrmCatalogoPuntosPremio);

end.
