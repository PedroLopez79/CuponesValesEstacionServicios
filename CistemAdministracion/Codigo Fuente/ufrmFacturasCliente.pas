unit ufrmFacturasCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Modules, DB, dxmdaset, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxTextEdit, cxCurrencyEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, uDAScriptingProvider, uDADataTable, uDACDSDataTable, ufrmBuscar,
  uDAInterfaces, cxImageComboBox, cxPC, cxLookAndFeels, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSpringTime, cxCheckBox, cxSpinEdit, cxTimeEdit, uDAMemDataTable,
  uDARemoteDataAdapter, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  cxPCdxBarPopupMenu, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator,
  uDADataAdapter, uDAFields, uROComponent;

type
  TfrmFacturasCliente = class(TfrmCustomModule)
    tblFactura: TdxMemData;
    tblFacturaFacturado: TBooleanField;
    tblFacturaProductoID: TIntegerField;
    tblFacturaDescripcion: TStringField;
    tblFacturaCantidad: TFloatField;
    tblFacturaImporte: TFloatField;
    DataSource1: TDataSource;
    cdsPrevisualizacion: TDACDSDataTable;
    cdsCliente: TDACDSDataTable;
    dsCliente: TDADataSource;
    pgcFacturas: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox3: TcxGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edtSerie: TcxTextEdit;
    edtRangoFacturaIni: TcxCurrencyEdit;
    edtRangoFacturaFin: TcxCurrencyEdit;
    cxGroupBox4: TcxGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    btnPreeliminar: TcxButton;
    dtpCorte: TcxDateEdit;
    dtpContable: TcxDateEdit;
    edtCliente: TcxCurrencyEdit;
    edtNombre: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    edtSerieGenera: TcxTextEdit;
    spBuscaFactura: TDACDSDataTable;
    dsBuscaFactura: TDADataSource;
    tblFacturaCupones: TdxMemData;
    DataSource2: TDataSource;
    cdsPrevisualizacionCupones: TDACDSDataTable;
    tblFacturaCuponesSECUENCIAVENTA: TIntegerField;
    tblFacturaCuponesDESCRIPCION: TStringField;
    tblFacturaCuponesCANTIDAD: TFloatField;
    tblFacturaCuponesIMPORTE: TFloatField;
    tblFacturaCuponesTARJETA: TStringField;
    tblFacturaCuponesFACTURADO: TBooleanField;
    cxCheckBox4: TcxCheckBox;
    dtpTimer: TcxTimeEdit;
    rdaUnidadesNoRegistradas: TDARemoteDataAdapter;
    cdsUnidadesNoRegistradas: TDAMemDataTable;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Facturado: TcxGridDBColumn;
    cxGrid1DBTableView1ProductoID: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1Cantidad: TcxGridDBColumn;
    cxGrid1DBTableView1Importe: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure btnPreeliminarClick(Sender: TObject);
    procedure edtClienteExit(Sender: TObject);
    procedure pgcFacturasChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtClienteEnter(Sender: TObject);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure BuscarCliente;
    procedure ActionBuscar(Action: TBasicAction);
    procedure ActionImprimir(Action: TBasicAction);
    procedure ActionProcesar(Action: TBasicAction);
  public
    { Public declarations }
    procedure UpdateActionsState; override;

  protected
    procedure RegisterActions; override;
  end;

var
  frmFacturasCliente: TfrmFacturasCliente;
  Datos : TDatosBusqueda;
  MovID: Integer;

implementation
uses  uDM, dmActions, ufrmBuscarCliente,
   UtileriasComun, LibraryValesCupones_Intf;

{$R *.dfm}

{ TfrmFacturasCliente }

procedure TfrmFacturasCliente.ActionBuscar(Action: TBasicAction);
begin
   BuscarCliente;
end;

procedure TfrmFacturasCliente.BuscarCliente;
begin
   Datos:= PantallaBusqueda(TfrmBuscarCliente,'1,2,3');
   if Datos.OK then
   begin
   
     if Datos.Estatus <> 'A' then
     begin
        MessageDlg('Cliente no esta Activo', mtError, [mbOK], 0);
        Exit;
     end;
     //cdsRecibo.FieldByName('ClienteID').AsInteger:=Datos.Clave;
     edtCliente.Text :=inttostr(Datos.Clave);
     edtNombre.Text := Datos.Nombre;
   end;
end;

procedure TfrmFacturasCliente.cxButton1Click(Sender: TObject);
begin
  inherited;
  cdsPrevisualizacionCupones.Close;
  cdsPrevisualizacionCupones.ParamByName('ClienteID').AsInteger:= Datos.Clave;
  cdsPrevisualizacionCupones.ParamByName('FechaCorte').AsDateTime:= dtpCorte.Date;
  cdsPrevisualizacionCupones.Open;

  tblFacturaCupones.Close;
  tblFacturaCupones.Open;
  while not cdsPrevisualizacionCupones.EOF do
  begin
    tblFacturaCupones.Append;
    tblFacturaCupones.FieldByName('Facturado').AsBoolean:= False;
    tblFacturaCupones.FieldByName('SECUENCIAVENTA').AsInteger:= cdsPrevisualizacionCupones.FieldByName('SECUENCIAVENTA').AsInteger;
    tblFacturaCupones.FieldByName('DESCRIPCION').AsString:= cdsPrevisualizacionCupones.FieldByName('Descripcion').AsString;
    tblFacturaCupones.FieldByName('CANTIDAD').AsFloat:= cdsPrevisualizacionCupones.FieldByName('Cantidad').AsFloat;
    tblFacturaCupones.FieldByName('IMPORTE').AsFloat:= cdsPrevisualizacionCupones.FieldByName('Importe').AsFloat;
    tblFacturaCupones.FieldByName('TARJETA').AsString:= cdsPrevisualizacionCupones.FieldByName('Tarjeta').AsString;
    cdsPrevisualizacionCupones.Next;
  end;

  tblFacturaCupones.First;
end;

procedure TfrmFacturasCliente.edtClienteEnter(Sender: TObject);
begin
  inherited;
  UpdateActionsState;
end;

procedure TfrmFacturasCliente.edtClienteExit(Sender: TObject);
begin
  inherited;

  cdsCliente.Close;
  if edtCliente.Text <> '' then
  begin
    cdsCliente.ParamByName('Cliente').AsInteger := strToInt(edtCliente.Text);
    cdsCliente.Open;
  end else
  begin
    cdsCliente.ParamByName('Cliente').AsInteger := 0;
    cdsCliente.Open;
  end;

  if not (cdsCliente.EOF) then
  begin
     if (cdsCliente.FieldByName('Estatus').AsString <> 'A') then
     begin
       MessageDlg('Cliente no esta Activo', mtError, [mbOK], 0);
       exit;
     end;

     Datos.Clave:=cdsCliente.FieldByName('ClienteID').AsInteger;
     Datos.Nombre:= cdsCliente.FieldByName('Nombre').AsString;
     Datos.FormaPago:= cdsCliente.FieldByName('FormaPagoID').AsInteger;
     Datos.Estatus := cdsCliente.FieldByName('Estatus').AsString;
     Datos.RFC := '';
     Datos.Cuenta:= cdsCliente.FieldByName('CuentaContable').AsString;

     edtCliente.Text :=inttostr(Datos.Clave);
     edtNombre.Text := Datos.Nombre;
  end else MessageDlg('El Cliente no existe', mtError, [mbOK], 0);

end;

procedure TfrmFacturasCliente.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_F2 then
    BuscarCliente;
end;

procedure TfrmFacturasCliente.FormCreate(Sender: TObject);
begin
  inherited;
  pgcFacturas.ActivePageIndex:=0;
  dtpCorte.Date:=Trunc(Now);
  dtpContable.Date:=Trunc(Now);
  MovID:= -1;
end;

procedure TfrmFacturasCliente.FormShow(Sender: TObject);
begin
  inherited;
  edtSerieGenera.Text:= DM.SerieFactura;
  cxTextEdit2.Text:= inttostr(DM.FolioActual('FolioFactura',DM.SerieFactura));
end;

procedure TfrmFacturasCliente.pgcFacturasChange(Sender: TObject);
begin
  inherited;
  UpdateActionsState;
end;

procedure TfrmFacturasCliente.ActionImprimir(Action: TBasicAction);
var
  MiReporte: TReporte;
begin


  if cxCheckBox4.Checked then
     MiReporte:=DM.Servidor.BuscarReporte('DOCUMENTOS')
  else
     MiReporte:=DM.Servidor.BuscarReporte('DOCUMENTOS');

  if MiReporte <> nil then
  begin
    if DM.Parametros = nil then
      DM.Parametros:=TParametros.Create;
      DM.Parametros.Seleccion:= MovID;

    DM.Imprimir(MiReporte.SQL1, MiReporte.SQL2, MiReporte.Template, '', MiReporte.CampoJoin);
    MiReporte.Free;
  end;
end;

procedure TfrmFacturasCliente.ActionProcesar(Action: TBasicAction);
var
  CadProd: String;
  resultado:Integer;

  P: TParametros;
  S: String;
begin
  inherited;
  P:=TParametros.Create;

  try
    cdsUnidadesNoRegistradas.Close;
    P.ClienteIni:= edtCliente.EditValue;
    S:='SELECT DISTINCT CONSUMO.* FROM CONSUMO INNER JOIN '+
       'CLIENTE ON CONSUMO.CLIENTEID = CONSUMO.CLIENTEID '+
       'WHERE CLIENTE.GRUPOFACTURARID = @ClienteIni AND CONSUMO.CLIENTEID = -100 AND CONSUMO.VEHICULOID = -100 '+
       'AND CONSUMO.FACTURADO = 0 AND CONSUMO.FACTURAID = 0';
    rdaUnidadesNoRegistradas.GetDataCall.ParamByName('SQL').AsString:=S;
    rdaUnidadesNoRegistradas.GetDataCall.ParamByName('Parametros').AsComplexType:=P;
    cdsUnidadesNoRegistradas.Open;

    if not cdsUnidadesNoRegistradas.EOF then begin
       MessageDlg('Existen Unidades no registradas en los consumos antes de Facturar se tienen que registrar estas unidades', mtInformation, [mbOK], 0);
       Exit;
    end;
  finally
    FreeAndNil(P);
  end;

  CadProd:= '@';

  if tblFactura.Active then
  begin

    tblFactura.First;

    while not tblFactura.Eof do
    begin
      if TblFactura.FieldByName('Facturado').AsBoolean then
         CadProd:= CadProd  + TblFactura.FieldByName('ProductoID').AsString + '@';
      TblFactura.Next;
    end;

    resultado := DM.Servidor.GeneraFacturasXCliente(Datos.Clave,
                                                    CadProd,
                                                    //dtpCorte.Date,
                                                    dtpCorte.Date + dtpTimer.Time,
                                                    dtpContable.Date,
                                                    edtSerieGenera.Text,
                                                    strtoint(cxTextEdit2.Text),
                                                    DM.Seguridad.idEmpleado);


    if (Resultado = -2) then
      MessageDlg('Folio ya existente', mtError, [mbOK], 0)
    else if (resultado<> -1) then
    begin
      DM.Folio('FolioFactura',DM.SerieFactura);
      MovID:= Resultado;
      MessageDlg('Generacion de Factura Exitosa del Folio ' + IntToStr(Resultado) + ' Al Folio ' + IntToStr(Resultado), mtInformation, [mbOK], 0);
      edtRangoFacturaIni.EditValue:=Resultado;
      edtRangoFacturaFin.EditValue:=resultado;
      edtSerie.Text:=edtSerieGenera.Text;
      pgcFacturas.ActivePageIndex:=1;
    end
  else
    MessageDlg('No se Generaron Facturas', mtInformation, [mbOK], 0);
end else
    MessageDlg('Capture Parametros de Factura', mtInformation, [mbOK], 0)
end;

procedure TfrmFacturasCliente.btnPreeliminarClick(Sender: TObject);
begin
  inherited;
  cdsPrevisualizacion.Close;
  cdsPrevisualizacion.ParamByName('ClienteID').AsInteger:= Datos.Clave;
  cdsPrevisualizacion.ParamByName('FechaCorte').AsDateTime:= dtpCorte.Date + dtpTimer.Time;
  cdsPrevisualizacion.Open;

  tblFactura.Close;
  tblFactura.Open;
  while not cdsPrevisualizacion.EOF do
  begin
    tblFactura.Append;
    tblFactura.FieldByName('Facturado').AsBoolean:= True;
    tblFactura.FieldByName('ProductoID').AsInteger:= cdsPrevisualizacion.FieldByName('ProductoID').AsInteger;
    tblFactura.FieldByName('Descripcion').AsString:= cdsPrevisualizacion.FieldByName('Descripcion').AsString;
    tblFactura.FieldByName('Cantidad').AsFloat:= cdsPrevisualizacion.FieldByName('Cantidad').AsFloat;
    tblFactura.FieldByName('Importe').AsFloat:= cdsPrevisualizacion.FieldByName('Importe').AsFloat;
    cdsPrevisualizacion.Next;
  end;

  tblFactura.First;
end;

procedure TfrmFacturasCliente.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actBuscar, ActionBuscar);
  RegisterAction(AppActions.actImprimir, ActionImprimir);
  RegisterAction(AppActions.actProcesar, ActionProcesar);
end;

procedure TfrmFacturasCliente.UpdateActionsState;
begin
  inherited;
  AppActions.actBuscar.Enabled:=edtCliente.Focused;
  AppActions.actProcesar.Enabled:= pgcFacturas.ActivePageIndex = 0;
  AppActions.actImprimir.Enabled:= pgcFacturas.ActivePageIndex = 1;
end;

Initialization
ModuleInfoManager.RegisterModule('Facturas x Cliente', TfrmFacturasCliente);

end.