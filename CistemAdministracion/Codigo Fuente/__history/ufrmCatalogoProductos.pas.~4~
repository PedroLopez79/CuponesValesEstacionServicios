unit ufrmCatalogoProductos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxTextEdit, cxLabel, cxContainer, cxGroupBox, dxmdaset, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, uDAInterfaces,
  uDAMemDataTable, cxLookAndFeels, cxLookAndFeelPainters, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;


type
  TfrmCatalogoProducto = class(TfrmCatalogo)
    GrpBoxDatos: TcxGroupBox;
    LblNoProducto: TcxLabel;
    TxtNoProducto: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    LblNombre: TcxLabel;
    LblCategoria: TcxLabel;
    LblPrecio: TcxLabel;
    LblClavePemex: TcxLabel;
    TxtNombre: TcxDBTextEdit;
    TxtPrecio: TcxDBTextEdit;
    TxtClavePemex: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    TxtCodigoBarras: TcxDBTextEdit;
    LblCodigoBarras: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    LblPrecioCompra: TcxLabel;
    LblCuentaContableCompra: TcxLabel;
    TxtCuentaContableCompra: TcxDBTextEdit;
    TxtCuentaContableVenta: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    LookUpCmboxNombre: TcxDBLookupComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBCheckBox2: TcxDBCheckBox;
    cdsEmpresa: TDACDSDataTable;
    dsEstacion: TDADataSource;
    cdsProductoPrecio: TDACDSDataTable;
    dsCategoria: TDADataSource;
    cdsCategoria: TDACDSDataTable;
    dbgCatalogoDBTableView1ProductoID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Codigo: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    dbgCatalogoDBTableView1PrecioVenta: TcxGridDBColumn;
    dbgCatalogoDBTableView1ClavePemex: TcxGridDBColumn;
    dbgCatalogoDBTableView1Barras: TcxGridDBColumn;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure cdsCatalogoAfterPost(DataTable: TDADataTable);
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoProducto: TfrmCatalogoProducto;
  EstacionActual:Integer;

implementation

uses Modules, uDM, UtileriasComun;

{$R *.dfm}

procedure TfrmCatalogoProducto.cdsCatalogoAfterPost(DataTable: TDADataTable);
var
   ProductoID:integer;
begin
  inherited;
  if Trim(cdsCatalogo.FieldByName('ClavePemex').AsString) <> '' then
  begin
    ProductoID:=cdsCatalogo.FieldByName('ProductoID').AsInteger;
    DM.Servidor.InsertaProductoPrecio(ProductoID, EstacionActual, cdsCatalogo.FieldByName('PrecioVenta').AsFloat);
  end;
  cdsCatalogo.ApplyUpdates(true);
end;
procedure TfrmCatalogoProducto.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('ProductoID').AsInteger:=DM.Servidor.Folio('ProductoID','');
  TxtNombre.SetFocus;  
end;
procedure TfrmCatalogoProducto.FormCreate(Sender: TObject);
begin
  inherited;

  EstacionActual:=StrToInt(UtileriasComun.LeerRegistro('Estacion','4120'));
  cdsEmpresa.open;
  cdsCategoria.Open;
  cdsCatalogo.Open;
end;
initialization
  ModuleInfoManager.RegisterModule('Productos', TfrmCatalogoProducto);

end.
