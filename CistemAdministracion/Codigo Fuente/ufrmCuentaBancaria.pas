unit ufrmCuentaBancaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit,
  cxContainer, cxGroupBox, dxmdaset, uDADataTable, uDAScriptingProvider,
  uDACDSDataTable, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC;

type
  TfrmCuentaBancaria = class(TfrmCatalogo)
    grpDatos: TcxGroupBox;
    dbCuentaId: TcxDBTextEdit;
    dbCuentaBancaria: TcxDBTextEdit;
    dbCuentaContable: TcxDBTextEdit;
    dbBanco: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    dsBanco: TDADataSource;
    cdsBanco: TDACDSDataTable;
    procedure cdsCatalogoAfterPost(DataTable: TDADataTable);
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCuentaBancaria: TfrmCuentaBancaria;

implementation

uses Modules, uDM;

{$R *.dfm}

procedure TfrmCuentaBancaria.cdsCatalogoAfterPost(DataTable: TDADataTable);
begin
  inherited;
  cdscatalogo.ApplyUpdates;
end;

procedure TfrmCuentaBancaria.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('CuentaBancariaID').AsInteger:=DM.Servidor.Folio('CuentaBancariaID', '');
  //.SetFocus;
end;

initialization
ModuleInfoManager.RegisterModule('Cuenta Bancaria', TfrmcuentaBancaria);
end.
