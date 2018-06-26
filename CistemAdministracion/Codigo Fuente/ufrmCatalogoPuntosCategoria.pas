unit ufrmCatalogoPuntosCategoria;

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
  cxGridCustomView, cxGrid, cxPC, cxLookAndFeelPainters, cxContainer, cxGroupBox,
  cxCurrencyEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel,
  cxTextEdit, cxLookAndFeels, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSpringTime;

type
  TfrmCatalogoPuntosCategoria = class(TfrmCatalogo)
    dbgCatalogoDBTableView1PuntosCategoriaID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Codigo: TcxGridDBColumn;
    dbgCatalogoDBTableView1Descripcion: TcxGridDBColumn;
    dbgCatalogoDBTableView1FechaIni: TcxGridDBColumn;
    dbgCatalogoDBTableView1FechaFin: TcxGridDBColumn;
    dbgCatalogoDBTableView1Factor: TcxGridDBColumn;
    dbgCatalogoDBTableView1FactorNacimiento: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
    procedure cdsCatalogoBeforePost(DataTable: TDADataTable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoPuntosCategoria: TfrmCatalogoPuntosCategoria;

implementation

uses uDM, Modules;

{$R *.dfm}

procedure TfrmCatalogoPuntosCategoria.cdsCatalogoBeforePost(
  DataTable: TDADataTable);
begin
  inherited;
  if cdsCatalogo.State = dsInsert then
    cdsCatalogo.FieldByName('PuntosCategoriaID').AsInteger:=DM.Servidor.Folio('PuntosCategoriaID', '');
end;

procedure TfrmCatalogoPuntosCategoria.cdsCatalogoNewRecord(
  DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('FechaIni').AsDateTime:=Trunc(Now);
  cdsCatalogo.FieldByName('FechaFin').AsDateTime:=Trunc(Now);
  cdsCatalogo.FieldByName('Factor').AsInteger:=1;
  cdsCatalogo.FieldByName('FactorNacimiento').AsInteger:=1;
end;

initialization
  ModuleInfoManager.RegisterModule('Puntos Categoria', TfrmCatalogoPuntosCategoria);

end.
