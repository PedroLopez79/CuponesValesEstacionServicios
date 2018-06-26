unit UfrmCatalogoTipoValor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxDBEdit, cxLabel,
  cxContainer, cxGroupBox, dxmdaset, uDADataTable, uDAScriptingProvider,
  uDACDSDataTable, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxCheckBox, StdCtrls, cxRadioGroup, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxDropDownEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, uDAInterfaces, uDAMemDataTable;

type
  TfrmCatalogoTipoValor = class(TfrmCatalogo)
    cxGroupBox1: TcxGroupBox;
    LblId: TcxLabel;
    LblNombre: TcxLabel;
    LblDenominacion: TcxLabel;
    TxtId: TcxDBTextEdit;
    TxtNombre: TcxDBTextEdit;
    TxtDenominacion: TcxDBTextEdit;
    dbgCatalogoDBTableView1TipoValorID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    dbgCatalogoDBTableView1Denominacion: TcxGridDBColumn;
    grConfiguracion: TcxGroupBox;
    dbBanco: TcxDBCheckBox;
    dbReferencia: TcxDBCheckBox;
    dbCliente: TcxDBCheckBox;
    dbTicket: TcxDBCheckBox;
    dbEfectivo: TcxDBCheckBox;
    dbCupon: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    grpTipo: TcxGroupBox;
    dbTAnticipos: TcxDBCheckBox;
    dbTClientes: TcxDBCheckBox;
    dbTCupones: TcxDBCheckBox;
    dbTOtros: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
    procedure cdsCatalogoAfterPost(DataTable: TDADataTable);
    procedure cdsCatalogoBeforePost(DataTable: TDADataTable);
    procedure dbTAnticiposPropertiesChange(Sender: TObject);
    procedure dbTClientesPropertiesChange(Sender: TObject);
    procedure dbTCuponesPropertiesChange(Sender: TObject);
    procedure dbTOtrosPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoTipoValor: TfrmCatalogoTipoValor;

implementation
  uses Modules, uDM;


{$R *.dfm}

procedure TfrmCatalogoTipoValor.cdsCatalogoAfterPost(DataTable: TDADataTable);
begin
  inherited;
  cdscatalogo.ApplyUpdates;
end;

procedure TfrmCatalogoTipoValor.cdsCatalogoBeforePost(DataTable: TDADataTable);
begin
  inherited;
{  if (cdsCatalogo.FieldByName('Credito').AsBoolean) then
  begin
    cdsCatalogo.FieldByName('Referencia').AsBoolean:=True;
    cdsCatalogo.FieldByName('Ticket').AsBoolean:=True;
    cdsCatalogo.FieldByName('Cliente').AsBoolean:=True;
  end; }
end;

procedure TfrmCatalogoTipoValor.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('TipoValorID').AsInteger:=DM.Servidor.Folio('TipoValorID', '');
  cdsCatalogo.FieldByName('Banco').AsBoolean:=false;
  cdsCatalogo.FieldByName('Referencia').AsBoolean:=false;
  cdsCatalogo.FieldByName('Cliente').AsBoolean:=false;
  cdsCatalogo.FieldByName('Cash').AsBoolean:=false;
  cdsCatalogo.FieldByName('Cupon').AsBoolean:=false;
  cdsCatalogo.FieldByName('Credito').AsBoolean:=false;
  cdsCatalogo.FieldByName('Ticket').AsBoolean:=false;
  cdsCatalogo.FieldByName('ConsumoInterno').AsBoolean:=False;
  cdsCatalogo.FieldByName('TipoCambio').AsBoolean:=False;
  TxtNombre.SetFocus;
end;

procedure TfrmCatalogoTipoValor.dbTAnticiposPropertiesChange(Sender: TObject);
begin
  inherited;
  if (dbTAnticipos.EditValue=true) and (cdsCatalogo.State<>dsBrowse) then
  begin
      cdsCatalogo.FieldByName('TClientes').AsBoolean:=false;
      cdsCatalogo.FieldByName('TCupones').AsBoolean:=False;
      cdsCatalogo.FieldByName('TOtros').AsBoolean:=False;
//      dbTClientes.EditValue:=False;
 //     dbTCupones.EditingValue:=False;
  //    dbTOtros.EditValue:=False;


  end;
end;

procedure TfrmCatalogoTipoValor.dbTClientesPropertiesChange(Sender: TObject);
begin
  inherited;
  if (dbTClientes.EditingValue=true) and (cdsCatalogo.State<>dsBrowse)  then
  begin
    cdsCatalogo.FieldByName('TAnticipo').AsBoolean:=False;
   // cdsCatalogo.FieldByName('TClientes').AsBoolean:=False;
    cdsCatalogo.FieldByName('TCupones').AsBoolean:=False;
    cdsCatalogo.FieldByName('TOtros').AsBoolean:=False;
  end;
end;

procedure TfrmCatalogoTipoValor.dbTCuponesPropertiesChange(Sender: TObject);
begin
  inherited;
  if (dbTCupones.EditingValue=true) and (cdsCatalogo.State<>dsBrowse) then
  begin
    cdsCatalogo.FieldByName('TAnticipo').AsBoolean:=False;
    cdsCatalogo.FieldByName('TClientes').AsBoolean:=False;
    //cdsCatalogo.FieldByName('TCupones').AsBoolean:=False;
    cdsCatalogo.FieldByName('TOtros').AsBoolean:=False;
  end;
end;

procedure TfrmCatalogoTipoValor.dbTOtrosPropertiesChange(Sender: TObject);
begin
  inherited;
  If (dbTOtros.EditingValue=true) and (cdsCatalogo.State<>dsBrowse) then
  begin
    cdsCatalogo.FieldByName('TAnticipo').AsBoolean:=False;
    cdsCatalogo.FieldByName('TClientes').AsBoolean:=False;
    cdsCatalogo.FieldByName('TCupones').AsBoolean:=False;
    //cdsCatalogo.FieldByName('TOtros').AsBoolean:=False;
  end;
end;

procedure TfrmCatalogoTipoValor.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCatalogo.Open;
end;

initialization
  ModuleInfoManager.RegisterModule('Tipos de Valores', TfrmCatalogoTipoValor);


end.
