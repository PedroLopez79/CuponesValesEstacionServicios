unit ufrmBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxLabel, cxTextEdit, cxDBEdit, cxContainer, cxGroupBox,
  dxmdaset, uDADataTable, uDAScriptingProvider, uDACDSDataTable, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, uDAInterfaces, uDAMemDataTable;

type
  TfrmBanco = class(TfrmCatalogo)
    cxGroupBox1: TcxGroupBox;
    dbBancoID: TcxDBTextEdit;
    dbNombre: TcxDBTextEdit;
    dbEjecutivo: TcxDBTextEdit;
    dbTelefono: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    dbgCatalogoDBTableView1BancoID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    dbgCatalogoDBTableView1Ejecutivo: TcxGridDBColumn;
    dbgCatalogoDBTableView1Telefono: TcxGridDBColumn;
    procedure cdsCatalogoBeforePost(DataTable: TDADataTable);
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBanco: TfrmBanco;

implementation

uses uDM, Modules;

{$R *.dfm}

procedure TfrmBanco.cdsCatalogoBeforePost(DataTable: TDADataTable);
begin
  inherited;
  cdscatalogo.ApplyUpdates;
end;

procedure TfrmBanco.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
   cdsCatalogo.FieldByName('BancoID').AsInteger:=DM.Servidor.Folio('BancoID', '');
   dbNombre.SetFocus;
end;

initialization
ModuleInfoManager.RegisterModule('Bancos', TfrmBanco);

end.
