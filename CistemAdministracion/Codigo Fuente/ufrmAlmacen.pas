unit ufrmAlmacen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxmdaset, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxLabel, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxContainer, cxGroupBox, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCheckBox, uDAInterfaces, uDAMemDataTable;

type
  TfrmAlmacen = class(TfrmCatalogo)
    cxGroupBox1: TcxGroupBox;
    txtAlmacen: TcxDBTextEdit;
    LblNoEstacion: TcxLabel;
    txtNombre: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    dbgCatalogoDBTableView1AlmacenID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    dbgCatalogoDBTableView1Compras: TcxGridDBColumn;
    dbgCatalogoDBTableView1EstacionID: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    procedure cdsCatalogoBeforePost(DataTable: TDADataTable);
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlmacen: TfrmAlmacen;

implementation

uses uDM, Modules, UtileriasComun;

{$R *.dfm}

procedure TfrmAlmacen.cdsCatalogoBeforePost(DataTable: TDADataTable);
begin
  inherited;
  if cdsCatalogo.State = dsInsert then
    cdsCatalogo.FieldByName('AlmacenID').AsInteger:=DM.Servidor.Folio('AlmacenID','');
end;

procedure TfrmAlmacen.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  txtNombre.SetFocus;
end;

initialization
  ModuleInfoManager.RegisterModule('Almacenes', TfrmAlmacen);
end.
