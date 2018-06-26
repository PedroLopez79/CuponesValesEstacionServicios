unit ufrmCatalogoBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxDBEdit, cxLabel,
  cxContainer, cxGroupBox, dxmdaset, uDADataTable, uDAScriptingProvider,
  uDACDSDataTable, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC;

type
  TfrmCatalogoBanco = class(TfrmCatalogo)
    grBanco: TcxGroupBox;
    lblID: TcxLabel;
    lblBanco: TcxLabel;
    dbID: TcxDBTextEdit;
    dbBanco: TcxDBTextEdit;
    dbEjecutivo: TcxDBTextEdit;
    dbTelefono: TcxDBTextEdit;
    lblEjecutivo: TcxLabel;
    lblTelefono: TcxLabel;
    dbgCatalogoDBTableView1BancoID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    dbgCatalogoDBTableView1Ejecutivo: TcxGridDBColumn;
    dbgCatalogoDBTableView1Telefono: TcxGridDBColumn;
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
    procedure cdsCatalogoBeforePost(DataTable: TDADataTable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoBanco: TfrmCatalogoBanco;

implementation

uses uDM, Modules;

{$R *.dfm}

procedure TfrmCatalogoBanco.cdsCatalogoBeforePost(DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.ApplyUpdates;
end;

procedure TfrmCatalogoBanco.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('BancoID').AsInteger:=DM.Servidor.Folio('BancoID', '');
  dbBanco.SetFocus;
end;

initialization
ModuleInfoManager.RegisterModule('Bancos', TfrmCatalogoBanco);

end.
