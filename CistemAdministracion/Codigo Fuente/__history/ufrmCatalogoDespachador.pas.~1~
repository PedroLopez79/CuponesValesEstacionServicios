unit ufrmCatalogoDespachador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxTextEdit, cxLabel, cxContainer, cxGroupBox, dxmdaset, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, cxRadioGroup, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxLookAndFeelPainters, uDAInterfaces, uDAMemDataTable,
  dxSkinSummer2008;

type
  TfrmCatalogoDespachador = class(TfrmCatalogo)
    dbgCatalogoDBTableView1DespachadorID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    dbgCatalogoDBTableView1Codigo: TcxGridDBColumn;
    dbgCatalogoDBTableView1Domicilio: TcxGridDBColumn;
    dbgCatalogoDBTableView1Ciudad: TcxGridDBColumn;
    dbgCatalogoDBTableView1Telefono: TcxGridDBColumn;
    dbgCatalogoDBTableView1Status: TcxGridDBColumn;
    dbgCatalogoDBTableView1FechaAlta: TcxGridDBColumn;
    dbgCatalogoDBTableView1EstacionID: TcxGridDBColumn;
    cdsEstacion: TDACDSDataTable;
    dsEstacion: TDADataSource;
    GrpBoxDatos: TcxGroupBox;
    LblID: TcxLabel;
    LblNombre: TcxLabel;
    LblCalle: TcxLabel;
    LblCiudad: TcxLabel;
    LblTelefono: TcxLabel;
    txtId: TcxDBTextEdit;
    txtNombre: TcxDBTextEdit;
    txtCalle: TcxDBTextEdit;
    txtCiudad: TcxDBTextEdit;
    txtTelefono: TcxDBTextEdit;
    txtCuentaContable: TcxDBTextEdit;
    LblCuentaContable: TcxLabel;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxGroupBox1: TcxGroupBox;
    LblEstacion: TcxLabel;
    lookEstacion: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoDespachador: TfrmCatalogoDespachador;

implementation

uses
  Modules, uDM;

{$R *.dfm}

procedure TfrmCatalogoDespachador.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  if DM.Seguridad.SeguridadPorNombre('Modifica Empleados') = nil then
  begin
    cdsCatalogo.Cancel;
    Exit;
  end
  else
  begin
    cdsCatalogo.FieldByName('Status').AsBoolean:=True;
    cdsCatalogo.FieldByName('FechaAlta').AsDateTime:=now;
    cdsCatalogo.FieldByName('DespachadorID').AsInteger:=DM.Servidor.Folio('DespachadorID', '');
    txtNombre.SetFocus;
  end;
end;


procedure TfrmCatalogoDespachador.FormCreate(Sender: TObject);
begin
  inherited;
  cdsEstacion.Open;
  GrpBoxDatos.Enabled:=DM.Seguridad.SeguridadPorNombre('Modifica Empleados') <> nil;
end;

initialization
  ModuleInfoManager.RegisterModule('Despachadores', TfrmCatalogoDespachador);

end.
