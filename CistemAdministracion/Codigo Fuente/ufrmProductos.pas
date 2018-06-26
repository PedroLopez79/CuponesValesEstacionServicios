unit ufrmProductos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxTextEdit, cxLabel, cxContainer, cxGroupBox, dxmdaset, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmProductos = class(TfrmCatalogo)
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
    dbgCatalogoDBTableView1ProductoID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Codigo: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    dbgCatalogoDBTableView1PrecioVenta: TcxGridDBColumn;
    dbgCatalogoDBTableView1Barras: TcxGridDBColumn;
    cdsEstacion: TDACDSDataTable;
    dsEstacion: TDADataSource;
    cdsCategoria: TDACDSDataTable;
    dsCategoria: TDADataSource;
    LookUpCmboxNombre: TcxDBLookupComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cdsProductoPrecio: TDACDSDataTable;
    cxDBCheckBox2: TcxDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
    procedure cdsCatalogoAfterPost(DataTable: TDADataTable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProductos: TfrmProductos;
  EstacionActual:Integer;

implementation

uses Modules, uDM, uDAInterfaces, UtileriasComun;
{$R *.dfm}


procedure TfrmProductos.cdsCatalogoAfterPost(DataTable: TDADataTable);
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

procedure TfrmProductos.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('ProductoID').AsInteger:=DM.Servidor.Folio('ProductoID','');
  TxtNombre.SetFocus;
end;

procedure TfrmProductos.FormCreate(Sender: TObject);
begin
  inherited;
  EstacionActual:=StrToInt(UtileriasComun.LeerRegistro('Estacion','4120'));
  cdsEstacion.open;
  cdsCategoria.Open;
end;

initialization
  ModuleInfoManager.RegisterModule('Productos', TfrmProductos);
end.
