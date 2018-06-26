unit ufrmCatalogoCuentaBancaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit, cxLabel,
  cxContainer, cxGroupBox, dxmdaset, uDADataTable, uDAScriptingProvider,
  uDACDSDataTable, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxCheckBox, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  uDAInterfaces, uDAMemDataTable, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust,
  dxSkinValentine, dxSkinXmas2008Blue, cxLookAndFeelPainters;

type
  TFrmCatalogoCuentaBancaria = class(TfrmCatalogo)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    dbID: TcxDBTextEdit;
    dbCuenta: TcxDBTextEdit;
    dbBanco: TcxDBLookupComboBox;
    dbCuentaContable: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cdsBanco: TDACDSDataTable;
    dsBanco: TDADataSource;
    dbgCatalogoDBTableView1CuentaBancariaID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Cuenta: TcxGridDBColumn;
    dbgCatalogoDBTableView1CuentaContable: TcxGridDBColumn;
    dbgCatalogoDBTableView1BancoID: TcxGridDBColumn;
    dbDlls: TcxDBCheckBox;
    cdsEstacion: TDACDSDataTable;
    dsEstacion: TDADataSource;
    cxLabel5: TcxLabel;
    dbEstacion: TcxDBLookupComboBox;
    dbgCatalogoDBTableView1Column1: TcxGridDBColumn;
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCatalogoCuentaBancaria: TFrmCatalogoCuentaBancaria;

implementation

uses Modules, uDM;

{$R *.dfm}

procedure TFrmCatalogoCuentaBancaria.cdsCatalogoNewRecord(
  DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('CuentaBancariaID').AsInteger:=DM.Servidor.Folio('CuentaBancariaID', '');
  cdsCatalogo.FieldByName('Dlls').AsBoolean:=False;
  dbCuenta.SetFocus;
end;

procedure TFrmCatalogoCuentaBancaria.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCatalogo.Open;
  cdsBanco.Open;
  cdsEstacion.Open;
  //cdsCatalogo.FieldByName('Dlls').AsBoolean:=False;
end;

initialization
ModuleInfoManager.RegisterModule('Cuentas Bancarias', TFrmCatalogoCuentaBancaria);


end.
