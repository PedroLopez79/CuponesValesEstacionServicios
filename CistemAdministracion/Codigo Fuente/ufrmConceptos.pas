unit ufrmConceptos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxDBEdit, cxLabel,
  cxTextEdit, cxContainer, cxGroupBox, dxmdaset, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  uDAInterfaces, uDAMemDataTable;

type
  TfrmConceptos = class(TfrmCatalogo)
    cxGroupBox1: TcxGroupBox;
    txtAlmacen: TcxDBTextEdit;
    LblNoEstacion: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    txtNombre: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    dbgCatalogoDBTableView1ConceptoSalidaID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    dbgCatalogoDBTableView1AfectaInventario: TcxGridDBColumn;
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConceptos: TfrmConceptos;

implementation

uses uDM, Modules;

{$R *.dfm}

procedure TfrmConceptos.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('ConceptoSalidaID').AsInteger:=DM.Servidor.Folio('ConceptoSalidaID','');
  txtNombre.SetFocus;
end;

initialization
  ModuleInfoManager.RegisterModule('Conceptos Salidas', TfrmConceptos);
end.
