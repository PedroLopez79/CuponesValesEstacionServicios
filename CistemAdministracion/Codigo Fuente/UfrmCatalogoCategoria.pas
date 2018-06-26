unit UfrmCatalogoCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxTextEdit, cxDBEdit,
  cxContainer, cxGroupBox, dxmdaset, uDADataTable, uDAScriptingProvider,
  uDACDSDataTable, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, uDAInterfaces,
  uDAMemDataTable, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  cxPCdxBarPopupMenu, cxLookAndFeels, cxLookAndFeelPainters, cxNavigator,
  uDAFields, uROComponent;

type
  TfrmCatalogoCategoria = class(TfrmCatalogo)
    GrpBoxDatos: TcxGroupBox;
    dxMemData1: TdxMemData;
    TxtId: TcxDBTextEdit;
    TxtCategoria: TcxDBTextEdit;
    LblId: TcxLabel;
    LblCategoria: TcxLabel;
    dbgCatalogoDBTableView1CategoriaID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
    procedure cdsCatalogoBeforePost(DataTable: TDADataTable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoCategoria: TfrmCatalogoCategoria;

implementation
  uses Modules, uDM;
{$R *.dfm}


procedure TfrmCatalogoCategoria.cdsCatalogoBeforePost(DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.ApplyUpdates;
end;

procedure TfrmCatalogoCategoria.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('CategoriaID').AsInteger:=DM.Servidor.Folio('CategoriaID', '');
  TxtCategoria.SetFocus;
end;

initialization
ModuleInfoManager.RegisterModule('Categorias', TfrmCatalogoCategoria);
end.
