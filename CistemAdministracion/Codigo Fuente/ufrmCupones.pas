unit ufrmCupones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxMemo, cxDBEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar, StdCtrls,
  cxContainer, cxGroupBox, cxPC, uDADataTable, uDAScriptingProvider,
  uDACDSDataTable, Menus, cxLookAndFeelPainters, cxButtons, cxCurrencyEdit,
  uDAInterfaces, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxmdaset, Grids, DBGrids, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinSummer2008, cxLookAndFeels,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSpringTime, cxCheckBox, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, cxNavigator, uDAFields, uROComponent;

type
  TfrmCupones = class(TfrmCustomModule)
    cdsCliente: TDACDSDataTable;
    dsCliente: TDADataSource;
    cdsCupones: TDACDSDataTable;
    dsCupones: TDADataSource;
    cdsLoteCupon: TDACDSDataTable;
    dsLoteCupon: TDADataSource;
    cxGroupBox2: TcxGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    dbeCliente: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    dbgCupones: TcxGrid;
    dbgCuponesDBTableView1: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    tblCuponesGrid: TdxMemData;
    dsCuponesGrid: TDataSource;
    tblCuponesGridCantidad: TIntegerField;
    tblCuponesGridDenominacion: TFloatField;
    tblCuponesGridReferencia: TStringField;
    tblCuponesGridTotal: TFloatField;
    dbgCuponesDBTableView1Cantidad: TcxGridDBColumn;
    dbgCuponesDBTableView1Denominacion: TcxGridDBColumn;
    dbgCuponesDBTableView1Referencia: TcxGridDBColumn;
    dbgCuponesDBTableView1Total: TcxGridDBColumn;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dsSaldoEjercicio: TDADataSource;
    cdsSaldoEjercicio: TDACDSDataTable;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label4: TLabel;
    cxCheckBox1: TcxCheckBox;
    procedure dbeClienteExit(Sender: TObject);
    procedure cxDBTextEdit2Exit(Sender: TObject);
    procedure cdsLoteCuponNewRecord(DataTable: TDADataTable);
    procedure cdsLoteCuponBeforePost(DataTable: TDADataTable);
    procedure dbgCuponesDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tblCuponesGridBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dbeClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeClienteEnter(Sender: TObject);
  private
    { Private declarations }
    MiImpresora: String;
    procedure BuscarCliente;
    procedure ActionNuevo(Action: TBasicAction);
    procedure ActionGuardar(Action: TBasicAction);
    procedure ActionCancelar(Action: TBasicAction);
    procedure ActionBuscar(Action: TBasicAction);
    procedure ActionImprimir(Action: TBasicAction);
    procedure ActionFacturar(Action: TBasicAction);
  public
    { Public declarations }
    procedure UpdateActionsState; override;
  protected
    procedure RegisterActions; override;
  end;

var
  frmCupones: TfrmCupones;
  TotalCupon, Importe: Float;
  Serie, Folio:String;
  LOTE, MiFactura, ClienteID, EstacionID: Integer;


implementation

uses Modules, uDM, dmActions, ufrmBuscarCliente,
   UtileriasComun, LibraryValesCupones_Intf, ufrmBuscar;

{$R *.dfm}

procedure TfrmCupones.ActionBuscar(Action: TBasicAction);
begin
   BuscarCliente;
end;

procedure TfrmCupones.ActionCancelar(Action: TBasicAction);
begin
  cdsLoteCupon.Cancel;
  LOTE:= 0;
  cxCurrencyEdit1.Value:= 0;

  UpdateActionsState;
end;

procedure TfrmCupones.ActionFacturar(Action: TBasicAction);
var
  //Aux: TReporteF;
  Aux: TReporte;
begin
  MiFactura:=DM.Servidor.FacturaCupon(ClienteID,
                                       Importe,
                                       DM.EstacionID,
                                       DM.Seguridad.idEmpleado,
                                       DM.SerieFactura);

  if MiFactura > 0 then
  begin
    Aux:=DM.Servidor.BuscarReporte(DM.FacturaReciboDebito);
    try
      DM.Parametros.Serie:= DM.SerieFactura;
      DM.Parametros.FacturaIni:=MiFactura;
      DM.Parametros.FacturaFin:=MiFactura;
      DM.Imprimir(Aux.SQL1, Aux.SQL2, Aux.Template, 'IMPRIMIENDO...', Aux.CampoJoin);
     finally
      MiFactura:=0;
      Aux.Free;
    end;
  end;
end;

procedure TfrmCupones.ActionGuardar(Action: TBasicAction);
var
  I: Integer;
  S: String;
  Cupones: AGeneraCupon;
begin
  if not (cdsLoteCupon.FieldByName('ClienteID').AsInteger > 0) then
  begin
    MessageDlg('Debe seleccionar un cliente.', mtError, [mbOK], 0);
    Exit;
  end;

  if Abs(Decimales(dbgCuponesDBTableView1.DataController.Summary.FooterSummaryValues[3], 2) - Decimales(cdsLoteCupon.FieldByName('Total').AsFloat, 2)) > 0.5 then
  begin
    MessageDlg('El importe del lote no coincide con el detalle de cupones.', mtError, [mbOK], 0);
    Exit;
  end;

  cdsSaldoEjercicio.Close;
  cdsSaldoEjercicio.ParamByName('ClienteIni').AsInteger:= strtoint(dbeCliente.Text);
  cdsSaldoEjercicio.ParamByName('ClienteFin').AsInteger:= strtoint(dbeCliente.Text);
  cdsSaldoEjercicio.Open;

  if not (cdsSaldoEjercicio.EOF) then
     if dbgCuponesDBTableView1.DataController.Summary.FooterSummaryValues[3] > cdsSaldoEjercicio.FieldByName('Saldo').AsCurrency then
     begin
        MessageDlg('Saldo Insuficiente', mtError, [mbOK], 0);
        Exit;
     end;


  cdsLoteCupon.Post;
  cdsLoteCupon.ApplyUpdates();
  cxGroupBox2.Enabled:=False;
  tblCuponesGrid.First;
  Cupones:=AGeneraCupon.Create;
  try
    while not tblCuponesGrid.Eof do
    begin
      with Cupones.Add do
      begin
        Cantidad:=tblCuponesGridCantidad.AsInteger;
        Denominacion:=tblCuponesGridDenominacion.AsFloat;
        Referencia:=tblCuponesGridReferencia.AsString;
      end;
      tblCuponesGrid.Next;
    end;
    ClienteID:= cdsLoteCupon.FieldByName('ClienteID').AsInteger;
    //EstacionID:= cdsLoteCupon.FieldByName('EstacionID').AsInteger;
    EstacionID:= DM.Estacion;
    Importe:= cdsLoteCupon.FieldByName('Total').AsInteger;
    
    LOTE:= cdsLoteCupon.FieldByName('LoteCuponID').AsInteger;
    DM.Servidor.GeneraCupones(cdsLoteCupon.FieldByName('LoteCuponID').AsInteger,
                              cdsLoteCupon.FieldByName('ClienteID').AsInteger,
                              EstacionID,
                              DM.Identificador,
                              Cupones,
                              cxCheckBox1.Checked,
                              '',
                              0);

  finally
    Cupones.Free;
    UpdateActionsState
  end;
  tblCuponesGrid.Close;
  tblCuponesGrid.Open;


 { cdsCupones.Close;
  cdsCupones.Open;

  tblCuponesGrid.First;
  while not tblCuponesGrid.Eof do
  begin
    for I := 1 to tblCuponesGridCantidad.AsInteger do
    begin
      cdsCupones.Append;
      DM.Servidor.Folio('CuponID', '');
      cdsCupones.FieldByName('CuponID').AsInteger:=DM.Servidor.Folio('CuponID', '');
      cdsCupones.FieldByName('Referencia').AsString:=tblCuponesGridReferencia.AsString;
      cdsCupones.FieldByName('Importe').AsCurrency:=tblCuponesGridDenominacion.AsCurrency;
      cdsCupones.FieldByName('FechaValido').AsDateTime:=cdsLoteCupon.FieldByName('FechaValido').AsDateTime;
      cdsCupones.FieldByName('Status').AsString:='A';
      cdsCupones.FieldByName('VolumenImporte').AsString:='I';
      S:='0005' + FormatFloat('0000', DM.Identificador) + FormatFloat('0000000', cdsCupones.FieldByName('CuponID').AsInteger);
      cdsCupones.FieldByName('Barras').AsString:=S + IntToStr(Modulo10(S));
      cdsCupones.FieldByName('ClienteID').AsInteger:=cdsLoteCupon.FieldByName('ClienteID').AsInteger;
      cdsCupones.FieldByName('EstacionID').AsInteger:=cdsLoteCupon.FieldByName('EstacionID').AsInteger;
      cdsCupones.FieldByName('LoteCuponID').AsInteger:=cdsLoteCupon.FieldByName('LoteCuponID').AsInteger;
      cdsCupones.Post;
    end;
    tblCuponesGrid.Next;
  end;

  cdsCupones.ApplyUpdates();

   tblCuponesGrid.Open;
   tblCuponesGrid.Append;
   tblCuponesGrid.First;
//  while not tblCuponesGrid.Eof do
//  begin
    for I := 1 to tblCuponesGrid.RecordCount do
    begin
      tblCuponesGrid.Delete;
      tblCuponesGrid.Next;
    end;

//  end; }
end;

procedure TfrmCupones.ActionImprimir(Action: TBasicAction);
var
  //Aux: TReporteF;
  Aux: TReporte;
begin
  Aux:=DM.Servidor.BuscarReporte('IMPRIMIR CUPONES');
  try
    DM.Parametros.ClienteIni:=cdsLoteCupon.FieldByName('LoteCuponID').AsInteger;
    DM.Parametros.Identificador:=DM.Identificador;
    DM.Imprimir(Aux.SQL1, Aux.SQL2, Aux.Template, 'IMPRIMIENDO...', Aux.CampoJoin, True, MiImpresora);
  finally
    Aux.Free;
  end;
  cdsLoteCupon.Close;
  cdsLoteCupon.Open;
end;

procedure TfrmCupones.ActionNuevo(Action: TBasicAction);
begin
  cdsLoteCupon.Append;
  tblCuponesGrid.Close;
  tblCuponesGrid.Open;

  cxCurrencyEdit1.Value:= 0;
  cxGroupBox2.Enabled:=True;

  ClienteID:= 0;
  EstacionID:= 0;
  Importe:= 0;
  MiFactura:= 0;
  LOTE:= 0;
end;

procedure TfrmCupones.BuscarCliente;
var
  Datos: TDatosBusqueda;
begin
  Datos:= PantallaBusqueda(TfrmBuscarCliente,'');
  if Datos.OK then
  begin
      cdsLoteCupon.FieldByName('ClienteID').AsInteger := Datos.Clave;
  end;
end;

procedure TfrmCupones.cdsLoteCuponBeforePost(DataTable: TDADataTable);
begin
  inherited;
  if cdsLoteCupon.State = dsInsert then
  begin
    cdsLoteCupon.FieldByName('LoteCuponID').AsInteger:=DM.Servidor.Folio('LoteCuponID', '');
    cdsLoteCupon.FieldByName('EstacionID').AsInteger:=DM.Estacion;
    cdsLoteCupon.FieldByName('UsuarioID').AsInteger:=DM.Seguridad.idEmpleado;
    cdsLoteCupon.FieldByName('Ejercicio').AsString:=FormatDateTime('yyyy', cdsLoteCupon.FieldByName('Fecha').AsDateTime);
    cdsLoteCupon.FieldByName('Periodo').AsString:=FormatDateTime('m', cdsLoteCupon.FieldByName('Fecha').AsDateTime);
    cdsLoteCupon.FieldByName('Dia').AsString:=FormatDateTime('d', cdsLoteCupon.FieldByName('Fecha').AsDateTime);
    cdsLoteCupon.FieldByName('Status').AsString:='A';
    cdsLoteCupon.FieldByName('FechaValido').AsDateTime:=cdsLoteCupon.FieldByName('Fecha').AsDateTime + 365;
  end;
end;

procedure TfrmCupones.cdsLoteCuponNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsLoteCupon.FieldByName('Fecha').AsDateTime:=Trunc(DM.Servidor.Fecha);
end;

procedure TfrmCupones.cxDBTextEdit2Exit(Sender: TObject);
begin
  inherited;
  dbgCupones.SetFocus;
end;

procedure TfrmCupones.dbeClienteEnter(Sender: TObject);
begin
  inherited;
  UpdateActionsState;
end;

procedure TfrmCupones.dbeClienteExit(Sender: TObject);
begin
  inherited;
  if not  cdsCliente.Locate('ClienteID', cdsLoteCupon.FieldByName('ClienteID').AsInteger, []) then
  begin
     MessageDlg('Cliente no exite', mtError, [mbOK], 0);
  end else
  begin
    cdsSaldoEjercicio.Close;
    cdsSaldoEjercicio.ParamByName('ClienteIni').AsInteger:= strtoint(dbeCliente.Text);
    cdsSaldoEjercicio.ParamByName('ClienteFin').AsInteger:= strtoint(dbeCliente.Text);
    cdsSaldoEjercicio.Open;
    if not (cdsSaldoEjercicio.EOF) then
       cxCurrencyEdit1.Value:= cdsSaldoEjercicio.FieldByName('Saldo').AsCurrency;
  end;
  UpdateActionsState;
end;

procedure TfrmCupones.dbeClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BuscarCliente;
end;

procedure TfrmCupones.dbgCuponesDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  Sender.OptionsSelection.CellSelect:=AFocusedRecord = nil;
end;

procedure TfrmCupones.FormCreate(Sender: TObject);
begin
  inherited;
  MiImpresora:=LeerRegistro('ImpresoraCupones', '');
  cdsLoteCupon.Open;
  tblCuponesGrid.Open;
  cdsCliente.Open;
end;

procedure TfrmCupones.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actNuevo, ActionNuevo);
  RegisterAction(AppActions.actGuardar, ActionGuardar);
  RegisterAction(AppActions.actCancelar, ActionCancelar);
  RegisterAction(AppActions.actBuscar, ActionBuscar);
  RegisterAction(AppActions.actImprimir, ActionImprimir);
  RegisterAction(AppActions.actFacturar, ActionFacturar);
end;

procedure TfrmCupones.tblCuponesGridBeforePost(DataSet: TDataSet);
begin
  inherited;
  tblCuponesGridTotal.AsFloat:=tblCuponesGridCantidad.AsFloat * tblCuponesGridDenominacion.AsFloat;
end;

procedure TfrmCupones.UpdateActionsState;
begin
  inherited;
  dmAppActions.actNuevo.Enabled:=cdsLoteCupon.State = dsBrowse;
  dmAppActions.actGuardar.Enabled:=not dmAppActions.actNuevo.Enabled;
  dmAppActions.actCancelar.Enabled:=not dmAppActions.actNuevo.Enabled;
  dmAppActions.actBuscar.Enabled:=(not dmAppActions.actNuevo.Enabled) and (dbeCliente.IsFocused);
  dmAppActions.actImprimir.Enabled:=(cdsLoteCupon.State = dsBrowse) and (cdsLoteCupon.RecordCount > 0);

  dmAppActions.actFacturar.Enabled:=(LOTE > 0);
end;

initialization
  ModuleInfoManager.RegisterModule('Cupones', TfrmCupones);

end.
