unit UfrmCatalogoProveedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxTextEdit, cxLabel, cxContainer, cxGroupBox, dxmdaset, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxCheckBox, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, uDAInterfaces, uDAMemDataTable, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, cxLookAndFeelPainters;

type
  TfrmCatalogoProveedor = class(TfrmCatalogo)
    GrpBoxDatos: TcxGroupBox;
    LblId: TcxLabel;
    LblCiudd: TcxLabel;
    LblNombre: TcxLabel;
    LblCalle: TcxLabel;
    LblColonia: TcxLabel;
    LblTelefono: TcxLabel;
    LblRfc: TcxLabel;
    LblFax: TcxLabel;
    LblEmail: TcxLabel;
    TxtId: TcxDBTextEdit;
    TxtNombre: TcxDBTextEdit;
    TxtCalle: TcxDBTextEdit;
    TxtColonia: TcxDBTextEdit;
    TxtCiudad: TcxDBTextEdit;
    TxtRfc: TcxDBTextEdit;
    TxtTelefono: TcxDBTextEdit;
    TxtFax: TcxDBTextEdit;
    TxtEmail: TcxDBTextEdit;
    LblCuentaContable: TcxLabel;
    TxtCuentaContable: TcxDBTextEdit;
    dbgCatalogoDBTableView1ProveedorId: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    dbgCatalogoDBTableView1Calle: TcxGridDBColumn;
    dbgCatalogoDBTableView1Colonia: TcxGridDBColumn;
    dbgCatalogoDBTableView1Ciudad: TcxGridDBColumn;
    dbgCatalogoDBTableView1RFC: TcxGridDBColumn;
    dbgCatalogoDBTableView1Telefono: TcxGridDBColumn;
    dbgCatalogoDBTableView1Fax: TcxGridDBColumn;
    dbgCatalogoDBTableView1CodPostal: TcxGridDBColumn;
    dbgCatalogoDBTableView1Email: TcxGridDBColumn;
    dbgCatalogoDBTableView1Referencia: TcxGridDBColumn;
    dbgCatalogoDBTableView1DiasPlazo: TcxGridDBColumn;
    dbgCatalogoDBTableView1CuentaContable: TcxGridDBColumn;
    txtDiasPlazo: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoProveedor: TfrmCatalogoProveedor;

implementation
uses Modules, uDM;
{$R *.dfm}

procedure TfrmCatalogoProveedor.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('ProveedorID').AsInteger:=DM.Servidor.Folio('ProveedorID', '');
  TxtNombre.SetFocus;
end;

initialization
ModuleInfoManager.RegisterModule('Proveedores', TfrmCatalogoProveedor);

end.
