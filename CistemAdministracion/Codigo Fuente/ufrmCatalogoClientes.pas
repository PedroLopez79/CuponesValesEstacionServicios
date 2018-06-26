unit ufrmCatalogoClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxTextEdit, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, uDARemoteDataAdapter, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, dxmdaset, cxGridCardView,
  cxGridDBCardView, cxInplaceContainer, cxVGrid, cxDBVGrid, cxNavigator,
  cxDBNavigator, ExtCtrls, cxBlobEdit, cxDropDownEdit, cxImageComboBox,
  cxMaskEdit, cxSpinEdit, cxDBEdit, StdCtrls, cxGroupBox, cxCalendar,
  cxCheckBox, cxListBox, Menus, cxLookAndFeelPainters, cxButtons, cxTimeEdit,
  cxRadioGroup, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckListBox, cxDBCheckListBox, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, uDAInterfaces, uDAMemDataTable, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinSummer2008, cxLookAndFeels,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSpringTime, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  cxPCdxBarPopupMenu, cxGridCustomLayoutView, uDAFields, uROComponent;

type                                                                        
  TfrmCatalogoClientes = class(TfrmCatalogo)
    dbgCatalogoDBTableView1ClienteID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    dbgCatalogoDBTableView1RazonSocial: TcxGridDBColumn;
    dbgCatalogoDBTableView1Domicilio: TcxGridDBColumn;
    dbgCatalogoDBTableView1Grupo: TcxGridDBColumn;
    dbgCatalogoDBTableView1Colonia: TcxGridDBColumn;
    dbgCatalogoDBTableView1CodigoPostal: TcxGridDBColumn;
    dbgCatalogoDBTableView1Ciudad: TcxGridDBColumn;
    dbgCatalogoDBTableView1Telefono: TcxGridDBColumn;
    dbgCatalogoDBTableView1RFC: TcxGridDBColumn;
    dbgCatalogoDBTableView1CuentaContable: TcxGridDBColumn;
    dbgCatalogoDBTableView1PlazoPago: TcxGridDBColumn;
    dbgCatalogoDBTableView1Estatus: TcxGridDBColumn;
    dbgCatalogoDBTableView1FechaIngreso: TcxGridDBColumn;
    dbgCatalogoDBTableView1NIP: TcxGridDBColumn;
    dbgCatalogoDBTableView1FechaBaja: TcxGridDBColumn;
    dbgCatalogoDBTableView1LimiteCredito: TcxGridDBColumn;
    dbgCatalogoDBTableView1Deposito: TcxGridDBColumn;
    dbgCatalogoDBTableView1CambioCredito: TcxGridDBColumn;
    dbgCatalogoDBTableView1CambioCreditoAnterior: TcxGridDBColumn;
    dbgCatalogoDBTableView1UltimoPago: TcxGridDBColumn;
    dbgCatalogoDBTableView1DiaCorteSemana: TcxGridDBColumn;
    dbgCatalogoDBTableView1ClienteNuevo: TcxGridDBColumn;
    dbgCatalogoDBTableView1TarjetaID: TcxGridDBColumn;
    dbgCatalogoDBTableView1FormaPagoID: TcxGridDBColumn;
    dbgCatalogoDBTableView1GrupoFacturarID: TcxGridDBColumn;
    dbgCatalogoDBTableView1VendedorID: TcxGridDBColumn;
    dbgCatalogoDBTableView1GasolineroID: TcxGridDBColumn;
    dbgCatalogoDBTableView1FormaCompraID: TcxGridDBColumn;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cdsContactos: TDAMemDataTable;
    dsContactos: TDADataSource;
    pnlContactos: TPanel;
    cxDBNavigator1: TcxDBNavigator;
    cxGrid1DBCardView1Nombre: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Empresa: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Puesto: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Departamento: TcxGridDBCardViewRow;
    cxGrid1DBCardView1FechaNacimiento: TcxGridDBCardViewRow;
    cxGrid1DBCardView1TelefonoOficina: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Celular: TcxGridDBCardViewRow;
    cxGrid1DBCardView1email: TcxGridDBCardViewRow;
    cxGrid1DBCardView1email2: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Observaciones: TcxGridDBCardViewRow;
    cxGrid1DBCardView1MensajesCelular: TcxGridDBCardViewRow;
    cxGrid1DBCardView1MensajesEmail: TcxGridDBCardViewRow;
    cxGrid1DBCardView1TipoMensajes: TcxGridDBCardViewRow;
    cxTabSheet7: TcxTabSheet;
    dsSaldo: TDADataSource;
    cxGroupBox1: TcxGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    edtEjercicio: TcxSpinEdit;
    cbPeriodoIni: TcxImageComboBox;
    cbPeriodoFin: TcxImageComboBox;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FechaMovimiento: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1CargoAbonoID: TcxGridDBColumn;
    cxGrid1DBTableView1Cargo: TcxGridDBColumn;
    cxGrid1DBTableView1Abono: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cdsSaldo: TDAMemDataTable;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    TXTCLIENTE: TcxDBTextEdit;
    TXTRAZON: TcxDBTextEdit;
    TXTNOMBRE: TcxDBTextEdit;
    TXTGRUPO: TcxDBTextEdit;
    TXTDOMICILIO: TcxDBTextEdit;
    TXTCOLONIA: TcxDBTextEdit;
    TXTCIUDAD: TcxDBTextEdit;
    TXTCP: TcxDBTextEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    TXTCUENTACONTABLE: TcxDBTextEdit;
    TXTRFC: TcxDBTextEdit;
    TXTTELEFONO: TcxDBTextEdit;
    cxGroupBox3: TcxGroupBox;
    Label34: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    dbeLimiteCredito: TcxDBTextEdit;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    cxDBTextEdit29: TcxDBTextEdit;
    DateUltimoPago: TcxDBDateEdit;
    DateFechaIngreso: TcxDBDateEdit;
    DateFechaBaja: TcxDBDateEdit;
    DateUltimoCambio: TcxDBDateEdit;
    DateCambioanterior: TcxDBDateEdit;
    cxTabSheet6: TcxTabSheet;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBTextEdit30: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox12: TcxDBCheckBox;
    cxDBTextEdit31: TcxDBTextEdit;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBTextEdit33: TcxDBTextEdit;
    cxDBTextEdit34: TcxDBTextEdit;
    cxDBTextEdit35: TcxDBTextEdit;
    cxDBTextEdit36: TcxDBTextEdit;
    cxDBTextEdit37: TcxDBTextEdit;
    cxDBTextEdit38: TcxDBTextEdit;
    cxDBTextEdit39: TcxDBTextEdit;
    cxDBTextEdit40: TcxDBTextEdit;
    cxDBTextEdit41: TcxDBTextEdit;
    cxDBTextEdit42: TcxDBTextEdit;
    cxDBTextEdit43: TcxDBTextEdit;
    cxDBTextEdit44: TcxDBTextEdit;
    cxDBTextEdit45: TcxDBTextEdit;
    cxDBTextEdit46: TcxDBTextEdit;
    cxDBTextEdit47: TcxDBTextEdit;
    cxDBTextEdit48: TcxDBTextEdit;
    cxDBTextEdit49: TcxDBTextEdit;
    cxDBTextEdit50: TcxDBTextEdit;
    cxDBTextEdit51: TcxDBTextEdit;
    cxDBTextEdit55: TcxDBTextEdit;
    cxDBTextEdit56: TcxDBTextEdit;
    cxDBTextEdit57: TcxDBTextEdit;
    cxDBTextEdit58: TcxDBTextEdit;
    cxDBTextEdit59: TcxDBTextEdit;
    cxDBTextEdit60: TcxDBTextEdit;
    cxDBTextEdit61: TcxDBTextEdit;
    cxDBTextEdit62: TcxDBTextEdit;
    cxDBTextEdit63: TcxDBTextEdit;
    cxDBTextEdit64: TcxDBTextEdit;
    cxDBTextEdit65: TcxDBTextEdit;
    cxDBTextEdit66: TcxDBTextEdit;
    cxDBTextEdit52: TcxDBTextEdit;
    cxDBTextEdit53: TcxDBTextEdit;
    cxDBTextEdit54: TcxDBTextEdit;
    cxDBTextEdit67: TcxDBTextEdit;
    cxDBTextEdit68: TcxDBTextEdit;
    cxDBTextEdit69: TcxDBTextEdit;
    cxDBTextEdit70: TcxDBTextEdit;
    cxDBTextEdit71: TcxDBTextEdit;
    cxDBTextEdit72: TcxDBTextEdit;
    cxDBTextEdit73: TcxDBTextEdit;
    cxDBTextEdit74: TcxDBTextEdit;
    cxDBTextEdit75: TcxDBTextEdit;
    cxDBTextEdit76: TcxDBTextEdit;
    cxDBTextEdit77: TcxDBTextEdit;
    cxDBTextEdit78: TcxDBTextEdit;
    cxDBCheckBox13: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBCheckBox19: TcxDBCheckBox;
    cxDBCheckBox20: TcxDBCheckBox;
    cxDBCheckBox21: TcxDBCheckBox;
    cxDBCheckBox22: TcxDBCheckBox;
    cxDBCheckBox23: TcxDBCheckBox;
    cxDBCheckBox24: TcxDBCheckBox;
    cxDBTextEdit79: TcxDBTextEdit;
    cxDBTextEdit80: TcxDBTextEdit;
    cxDBTextEdit81: TcxDBTextEdit;
    cxDBTextEdit82: TcxDBTextEdit;
    cxDBTextEdit83: TcxDBTextEdit;
    cxDBTextEdit84: TcxDBTextEdit;
    cxDBTextEdit85: TcxDBTextEdit;
    cxDBTextEdit86: TcxDBTextEdit;
    cxDBTextEdit87: TcxDBTextEdit;
    cxDBTextEdit88: TcxDBTextEdit;
    cxDBTextEdit89: TcxDBTextEdit;
    cxDBTextEdit90: TcxDBTextEdit;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxTabSheet8: TcxTabSheet;
    cxGroupBox9: TcxGroupBox;
    Label70: TLabel;
    LOOKUPCMFORMACOMPRA: TcxDBLookupComboBox;
    LOOKUPCMDIAFACTURAR: TcxDBLookupComboBox;
    LOOKUPCMAGENTEVENTA: TcxDBLookupComboBox;
    cdsFormaCompra: TDAMemDataTable;
    dsFormaCompra: TDADataSource;
    cdsAgenteVenta: TDAMemDataTable;
    dsAgenteVenta: TDADataSource;
    cdsDiaFacturar: TDAMemDataTable;
    dsDiaFacturar: TDADataSource;
    LOOKUPCMFORMAPAGO: TcxDBLookupComboBox;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cdsFormaPago: TDAMemDataTable;
    dsFormaPago: TDADataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cdsSaldoEjercicio: TDAMemDataTable;
    dsSaldoEjercicio: TDADataSource;
    Label71: TLabel;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBImageComboBox2: TcxDBImageComboBox;
    BtnConsultarSaldo: TcxButton;
    BtnImprimir: TcxButton;
    BtnProcesar: TcxButton;
    ClbTarjetas: TcxCheckListBox;
    cdsVehiculos: TDAMemDataTable;
    dsVehiculos: TDADataSource;
    sdGenera: TSaveDialog;
    cdsArchivo: TDAMemDataTable;
    dsArchivo: TDADataSource;
    rgOpciones: TcxRadioGroup;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    lblImpresora: TLabel;
    cbImpresora: TcxImageComboBox;
    ChkTodas: TcxCheckBox;
    cxButton3: TcxButton;
    Label54: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cdsClasificacion: TDAMemDataTable;
    dsClasificacion: TDADataSource;
    Label55: TLabel;
    cxDBImageComboBox3: TcxDBImageComboBox;
    cxDBCheckBox25: TcxDBCheckBox;
    Label56: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label57: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    Label72: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    Label75: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    Label73: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    Label74: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    procedure cxButton3Click(Sender: TObject);
    procedure dbgCatalogoDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BtnImprimirClick(Sender: TObject);
    procedure ChkTodasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsContactosNewRecord(DataTable: TDADataTable);
    procedure pgcCatalogoPageChanging(Sender: TObject; NewPage: TcxTabSheet;
    var AllowChange: Boolean);
    procedure dbgCatalogoDBTableView1DblClick(Sender: TObject);
    procedure pgcCatalogoChange(Sender: TObject);
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
    procedure BtnConsultarSaldoClick(Sender: TObject);
    procedure BtnProcesarClick(Sender: TObject);
    procedure cdsCatalogoBeforePost(DataTable: TDADataTable);
    procedure cdsContactosAfterPost(DataTable: TDADataTable);
    procedure ImprimeTipo(Cual: String);
    procedure cdsCatalogoAfterScroll(DataTable: TDADataTable);
    procedure rgOpcionesClick(Sender: TObject);
    procedure cxGroupBox3Click(Sender: TObject);
    private
    { Private declarations }
{     procedure GeneraArchivo;}
     procedure ImprimirTarjetas;
  public
    { Public declarations }
    Abriendo: Boolean;
    PosTarjeta: Integer;
    Tarjetas: String;
    Bandera: Boolean;
    ArreTarjetas:Array[0..1000] of Integer;
    Var Arre: Array[0..1000] of Integer;
    Var Arre2: Array[0..1000] of String;
    Var LimCredito: string;
    procedure UpdateActionsState; override;
    procedure RegisterActions; override;
  private
    { Private declarations }
    procedure ArregloBitacora;
    procedure AgregaBitacora;
  public
    procedure ActionGuardar(Action: TBasicAction); Override;
    procedure ActionCancelar(Action: TBasicAction); Override;
  end;

var
  frmCatalogoClientes: TfrmCatalogoClientes;
  Cliente:Integer;
  ArrBitacora: Array of Variant;


implementation

uses Modules, uDM, UtileriasComun, dmActions, CustomModule, LibraryValesCupones_Intf, Registry;

{$R *.dfm}

procedure TFrmCatalogoClientes.RegisterActions;
begin
  inherited RegisterActions;

end;

procedure TfrmCatalogoClientes.rgOpcionesClick(Sender: TObject);
begin
  inherited;
  lblImpresora.Visible:=(rgOpciones.EditValue = 1);
  cbImpresora.Visible:=(rgOpciones.EditValue = 1);
end;

procedure TfrmCatalogoClientes.ActionCancelar(Action: TBasicAction);
begin
  Abriendo:=True;
  inherited;
  Abriendo:=False;
  cdsCatalogoAfterScroll(nil);
end;

procedure TfrmCatalogoClientes.ActionGuardar(Action: TBasicAction);
begin
  Abriendo:=True;
  inherited;
  Abriendo:=False;
  cdsCatalogoAfterScroll(nil);
  AgregaBitacora;
end;

procedure TfrmCatalogoClientes.AgregaBitacora;
var
  x:Integer;
begin
  {Try
    For x:=0 to cdsCatalogo.FieldCount - 1 do
    begin
        If ArrBitacora[x] <> cdsCatalogo.FieldValues[x] Then
        begin
           if ArrBitacora[x] = null then ArrBitacora[x]:= ' ';
           DM.Servidor.InsertaBitacora(DM.ClienteIDActual,DM.EmpleadoID,'Clientes',cdsCatalogo.Fields.Fields[x].Name,ArrBitacora[x],cdsCatalogo.FieldValues[x]);
        end;
    end;
  Except
    DM.Servidor.InsertaBitacora(DM.ClienteID,DM.EmpleadoID,'Clientes','Nuevo Registro','Nuevo Registro','NuevoRegistro');
  End;}

end;

procedure TfrmCatalogoClientes.ArregloBitacora;
var
   x:integer;
begin
   SetLength(ArrBitacora, cdsCatalogo.FieldCount);
   For x:=0 to cdsCatalogo.FieldCount - 1 do
   begin
     ArrBitacora[x]:= cdsCatalogo.FieldValues[x];
   end;
end;

procedure TfrmCatalogoClientes.BtnConsultarSaldoClick(Sender: TObject);
begin
  inherited;
   try
    Screen.Cursor:=crHourGlass;
    cdsSaldo.Close;
    cdsSaldo.ParamByName('Ejercicio').AsInteger:=Trunc(edtEjercicio.Value);
    cdsSaldo.ParamByName('ClienteIni').AsInteger:=cdsCatalogo.FieldByName('ClienteID').AsInteger;
    cdsSaldo.ParamByName('ClienteFin').AsInteger:=cdsCatalogo.FieldByName('ClienteID').AsInteger;
    cdsSaldo.ParamByName('Ini').AsInteger:= cbPeriodoIni.EditValue;
    cdsSaldo.ParamByName('Fin').AsInteger:= cbPeriodoFin.EditValue;
    cdsSaldo.ParamByName('GrupoFacturarID').AsInteger:=0;
    cdsSaldo.ParamByName('FormaCompraID').AsInteger:=0;
    cdsSaldo.ParamByName('Grupo').AsString:='';
    cdsSaldo.Open;
  finally
    Screen.Cursor:=crDefault;
 end;
end;

procedure TfrmCatalogoClientes.BtnImprimirClick(Sender: TObject);
var
  MiReporte: TReporte;
begin
  {MiReporte:=DM.Servidor.BuscarReporte('ESTADO DE CUENTA');
  if MiReporte <> nil then
  begin
    if DM.Parametros = nil then
        DM.Parametros:=TParametros.Create;
        DM.Parametros.Ejercicio:=edtEjercicio.Value;
        DM.Parametros.PeriodoIni:=cbPeriodoIni.EditValue;
        DM.Parametros.PeriodoFin:=cbPeriodoFin.EditValue;
        DM.Parametros.Identificador:=DM.Identificador;
        Dm.Parametros.ClienteIni:=cdsCatalogo.FieldByName('ClienteID').AsInteger;
        Dm.Parametros.ClienteFin:=cdsCatalogo.FieldByName('ClienteID').AsInteger;
        Dm.Parametros.Grupo:=cdsCatalogo.FieldByName('Grupo').AsString;
        Dm.Parametros.FormaCompraID:=cdsCatalogo.FieldByName('FormaCompraID').AsInteger;
        Dm.Parametros.DiaFacturarID:=cdsCatalogo.FieldByName('GrupoFacturarID').AsInteger;
        DM.Imprimir(MiReporte.SQL1, MiReporte.SQL2, MiReporte.Template, '', 'Facturas');
        MiReporte.Free;
  end;}
end;

procedure TfrmCatalogoClientes.BtnProcesarClick(Sender: TObject);
Var I:Integer;
Var S: String;
begin
  inherited;
  {S:='';
  for I := 0 to clbTarjetas.Items.Count - 1 do
  begin
    if clbTarjetas.Items[I].State = cbsChecked then
      begin
      ArreTarjetas[I]:=Arre[I];
      S:=S + Copy(clbTarjetas.Items[I].Text, 1, Pos('-', clbTarjetas.Items[I].Text) - 1) + ',';
      end;
    end;
   Delete(S, Length(S), 1);
   Tarjetas:=S;
     case rgOpciones.EditValue of
    1: ImprimirTarjetas;
    2: ImprimeTipo('CARTA NIP');
    3: ImprimeTipo('ACUSE DE RECIBO');
  end;}
end;

{procedure TfrmCatalogoClientes.GeneraArchivo;
Const
  Campos : Array[1..16] of String = ('VehiculoID',
                                     'NoCliente',
                                     'DigitoSeguridad',
                                     'Nombre',
                                     'RazonSocial',
                                     'Calle',
                                     'Colonia',
                                     'Delegacion',
                                     'CP',
                                     'RFC',
                                     'Telefono',
                                     'NIP',
                                     'Identificacion',
                                     'Usuario',
                                     'Expiracion',
                                     'Clasificacion');
var
  I,K: Integer;
  S: String;
  Var Flag: Boolean;
  Archivo: TStrings;
begin
  Flag:=False;
  s:='C:\CREDITO - ';
  if cdsCatalogo.FieldByName('FormaCompraID').AsInteger = 2 then
    s:='C:\DEBITO - ';
  s:=s + FormatFloat('0000', cdsCatalogo.FieldByName('ClienteID').AsInteger) + ' - '+ FormatDateTime('dd-mmm-yyyy', Now);
  s:=s + '.txt';
  sdGenera.FileName:=s;
  if sdGenera.Execute then
  begin
    Archivo := TStringList.Create;
    for K := 0 to ClbTarjetas.Count - 1 do
      begin
       if clbTarjetas.Items[K].State = cbsChecked then
          begin
    cdsArchivo.Close;
    cdsArchivo.ParamByName('Cliente').AsInteger:=DM.ClienteIDActual;
    cdsArchivo.ParamByName('Vehiculo').AsInteger:=Arre[K];
    cdsArchivo.Open;
    s:='';
    for i:=1 to 16 do
     begin
      if Flag=False then
          s:=s + Campos[i] + '~ ';
     end;
    Archivo.Add(s);
    Flag:=True;
    while not cdsArchivo.Eof do
    begin
      s:='';
      for i:=1 to 16 do
        s:=s + cdsArchivo.FieldByName(Campos[i]).AsString + '~';
      Archivo.Add(s);
      cdsArchivo.Next;
    end;
    end;
    end;
    cdsArchivo.Close;
    Archivo.SaveToFile(sdGenera.FileName);
    Archivo.Free;
    MessageDlg('Archivo generado', mtInformation, [mbOK], 0);
end;

end;}


procedure TfrmCatalogoClientes.ImprimeTipo(Cual: String);
var
  Aux: TReporte;
  K: Integer;
begin
    {for K := 0 to ClbTarjetas.Count - 1 do
      begin
       if clbTarjetas.Items[K].State = cbsChecked then
          begin
    cdsArchivo.Close;
    cdsArchivo.ParamByName('Vehiculo').AsInteger:=Arre[K];
    cdsArchivo.Open;
     end;
   end;
  Aux:=DM.Servidor.BuscarReporte(Cual);
  if Aux <> nil then
  begin
    //if DM.Parametros = nil then
    if rgOpciones.EditValue=2 then
      begin
    //DM.Parametros:=TParametros.Create;
    DM.Parametros.ClienteIni:=cdsCatalogo.FieldByName('ClienteID').AsInteger;
    DM.Parametros.Identificador:=DM.Identificador;
    DM.Parametros.TipoMov:=',' + Tarjetas + ',';
    DM.Imprimir(Aux.SQL1, Aux.SQL2, Aux.Template, Aux.CampoJoin, Cual);
    Aux.Free;
      end;
    if (rgOpciones.EditValue=3) then
      begin
        //DM.Parametros:=TParametros.Create;
        DM.Parametros.ClienteIni:=cdsCatalogo.FieldByName('ClienteID').AsInteger;
        DM.Parametros.Identificador:=DM.Identificador;
        DM.Parametros.TipoMov:=',' + Tarjetas + ',';
        DM.Imprimir(Aux.SQL1, Aux.SQL2, Aux.Template, Aux.CampoJoin, Cual);
        Aux.Free;
      end;
  end;}
end;

procedure TfrmCatalogoClientes.ImprimirTarjetas;
const
  RutaReg = 'CistemFlotillas';
var
  Temp: TRegIniFile;
  Aux: TReporte;
  I: Integer;
  S: String;
begin
  {if cbImpresora.Text <> '' then
  begin
    Temp:=TRegIniFile.Create;
    Temp.WriteString(RutaReg, 'ImpresoraTarjetas', cbImpresora.EditValue);
    //Temp.WriteString(RutaReg, 'FormatoTarjetas', cbFormato.EditValue);
    Temp.Free;
    //S:=cbFormato.EditValue;
    if S = ' ' then
      S:='';
    //Aux:=DM.Servidor.BuscaReporte(cbImpresora.Text + S, DM.Identificador);
    Aux:=DM.Servidor.BuscarReporte(cbImpresora.Text);
    if Aux <> nil then
    begin
      if DM.Parametros = nil then
         DM.Parametros:=TParametrosF.Create;
      DM.Parametros.ClienteIni:=cdsCatalogo.FieldByName('ClienteID').AsInteger;
      DM.Parametros.Identificador:=DM.Identificador;
      I:=0;
      while GetParsedItem(Tarjetas, ',', I) <> '' do
      begin
        DM.Parametros.TarjetaIni:=StrToInt(GetParsedItem(Tarjetas, ',', I));
        //DM.Imprimir(Aux.SQL1, Aux.SQL2, Aux.Template, 'Tarjeta: ' + GetParsedItem(Tarjetas, ',', I), '', False);
        DM.Imprimir(Aux.SQL1, Aux.SQL2, Aux.Template, 'Tarjeta: ' + GetParsedItem(Tarjetas, ',', I), Aux.CampoJoin, True);
        Inc(I);
      end;    // while
      Aux.Free;
    end;
  end;}
end;

procedure TfrmCatalogoClientes.cdsCatalogoAfterScroll(DataTable: TDADataTable);
Var I,Cont: Integer;
begin
  inherited;
  {if not Abriendo then
  begin
    ClbTarjetas.Items.Clear;
    cdsVehiculos.Close;
    DM.ClienteIDActual:= cdsCatalogo.FieldByName('ClienteID').AsInteger;
    DM.FormaCompra:=cdsCatalogo.FieldByName('FormaCompraID').AsInteger;
    cdsVehiculos.ParamByName('ClienteID').AsInteger:=DM.ClienteIDActual;
    cdsVehiculos.Open;
    Cont:=cdsVehiculos.RecordCount;
     I:=0;
      while (I < Cont) do
         with clbTarjetas.Items.Add do
           begin
            if cdsVehiculos.FieldByName('ClienteID').AsInteger= DM.ClienteIDActual then
            begin
               Arre[I]:=cdsVehiculos.FieldByName('VehiculoID').AsInteger;
               Arre2[I]:=cdsVehiculos.FieldByName('Identificacion').AsString;
               InttoStr(Arre[I]);
               Text:=Format('%d-%s',[Arre[I],Arre2[I]]);
               cdsVehiculos.Next;
               I:=I+1;
            end
          else
          begin
            cdsVehiculos.Next;
            I:=I+1;
          end;
      end;
      If (LOOKUPCMFORMACOMPRA.Text='CUPONES') Or (LOOKUPCMFORMACOMPRA.Text='NOTA DE CREDITO') Then
      begin
       cxTabSheet5.Enabled:=False;
      end
      else
      begin
       cxTabSheet5.Enabled:=True;
      end;
  end;}
end;

procedure TfrmCatalogoClientes.cdsCatalogoBeforePost(DataTable: TDADataTable);
begin
  inherited;
       if dbeLimiteCredito.Text='' then
        begin
       cdsCatalogo.FieldByName('LimiteCredito').AsInteger:=0;
        end;
       if (LOOKUPCMFORMACOMPRA.Text='CUPONES') or (LOOKUPCMFORMACOMPRA.Text='NOTA DE CREDITO') then
        begin
           cxTabSheet5.Enabled:=False;
        end;
        DM.FormaCompra:=cdsCatalogo.FieldByName('FormaCompraID').AsInteger;

        if LimCredito <> IntToStr(cdsCatalogo.FieldByName('LimiteCredito').AsInteger) then
        begin
           cdsCatalogo.FieldByName('CambioCreditoAnterior').AsDateTime := cdsCatalogo.FieldByName('CambioCredito').AsDateTime;
           cdsCatalogo.FieldByName('CambioCredito').AsDateTime:=Trunc(Now);
        end;
        
        LimCredito := IntToStr(cdsCatalogo.FieldByName('LimiteCredito').AsInteger);
end;

procedure TfrmCatalogoClientes.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
   cdsCatalogo.FieldbyName('Estatus').asBoolean:=True;
   cdsCatalogo.FieldbyName('ClienteNuevo').asBoolean:=True;
   cdsCatalogo.FieldbyName('DiaCorteSemana').asInteger:=1;
   cdsCatalogo.FieldByName('TarjetaID').AsInteger:=1;
   cdsCatalogo.FieldByName('GasolineroID').AsInteger:=DM.Servidor.GasolineroID;
   cdsCatalogo.FieldByName('ClienteID').AsInteger:=DM.Servidor.Folio('ClienteID','');
   cdsCatalogo.FieldByName('TarjetaID').AsInteger:=1;
   cdsCatalogo.FieldByName('RazonSocial').AsString:='';
   cdsCatalogo.FieldByName('Nombre').AsString:='';
   cdsCatalogo.FieldByName('Grupo').AsString:='';
   cdsCatalogo.FieldByName('Domicilio').AsString:='';
   cdsCatalogo.FieldByName('Colonia').AsString:='';
   cdsCatalogo.FieldByName('Ciudad').AsString:='';
   cdsCatalogo.FieldByName('Telefono').AsString:='';
   cdsCatalogo.FieldByName('RFC').AsString:='';
   cdsCatalogo.FieldByName('Cuentacontable').AsString:='';
   cdsCatalogo.FieldByName('GrupoFacturarID').AsInteger:=1;
   cdsCatalogo.FieldByName('VendedorID').AsInteger:=1;
   cdsCatalogo.FieldByName('FormaCompraID').AsInteger:=1;
   DM.FormaCompra:=cdsCatalogo.FieldByName('FormaCompraID').AsInteger;
   cdsCatalogo.FieldByName('Estatus').AsString:='A';
   cdsCatalogo.FieldByName('NIP').AsInteger:=StrToInt(GeneraNIP(4));
   cdsCatalogo.FieldByName('PlazoPago').AsInteger:=15;
   cdsCatalogo.FieldByName('LimiteCredito').AsInteger:=0;
   cdsCatalogo.FieldByName('Deposito').AsInteger:=0;
   cdsCatalogo.FieldByName('FormaPagoID').AsInteger:=1;

   cdsCatalogo.FieldByName('FechaIngreso').AsDateTime:=Trunc(Now);
   cdsCatalogo.FieldByName('FechaBaja').AsDateTime:=Trunc(Now);
   cdsCatalogo.FieldByName('CambioCredito').AsDateTime:=Trunc(Now);
   cdsCatalogo.FieldByName('CambioCreditoAnterior').AsDateTime:=Trunc(Now);
   cdsCatalogo.FieldByName('UltimoPago').AsDateTime:=Trunc(Now);
   txtRazon.SetFocus;
end;

procedure TfrmCatalogoClientes.cdsContactosAfterPost(DataTable: TDADataTable);
begin
  inherited;
  cdsContactos.ParamByName('ClienteID').AsInteger:=DM.ClienteIDActual;
  cdsContactos.Open;
  cdsContactos.FieldByName('ContactoID').AsInteger:=DM.Servidor.Folio('ContactoID', '');
  cdsContactos.FieldByName('ClienteID').AsInteger:=DM.ClienteIDActual;
  cdsContactos.FieldByName('Nombre').AsString:='MANY';
  cdsContactos.FieldByName('TipoMensajes').AsInteger:=1;
  cdsContactos.FieldByName('MensajesCelular').AsBoolean:=True;
  cdsContactos.FieldByName('MensajesEmail').AsBoolean:=True;
  cdsContactos.FieldByName('Empresa').AsString:='CISTEM';
  cdsContactos.FieldByName('Puesto').AsString:='PROGRAMADO';
  cdsContactos.FieldByName('Departamento').AsString:='SISTEMAS';
  cdsContactos.FieldByName('FechaNacimiento').AsDateTime:=Trunc(Now);
  cdsContactos.FieldByName('TelefonoOficina').AsString:='564564';
  cdsContactos.FieldByName('Celular').AsString:='654564';
  cdsContactos.FieldByName('Email').AsString:='FDSFDSF';
  cdsContactos.FieldByName('Email2').AsString:='SDFSDFSDF';
  cdsContactos.FieldByName('Observaciones').AsString:='.';
  {cdsContactos.ParamByName('ClienteID').AsInteger:=DM.ClienteIDActual;}
  cdsContactos.ApplyUpdates();
end;

procedure TfrmCatalogoClientes.cdsContactosNewRecord(DataTable: TDADataTable);
begin
  inherited;

  cdsContactos.FieldByName('ContactoID').AsInteger:=DM.Servidor.Folio('ContactoID', '');
  cdsContactos.FieldByName('ClienteID').AsInteger:=DM.ClienteIDActual;
  cdsContactos.FieldByName('Nombre').AsString:='';
  cdsContactos.FieldByName('TipoMensajes').AsInteger:=1;
  cdsContactos.FieldByName('MensajesCelular').AsBoolean:=True;
  cdsContactos.FieldByName('MensajesEmail').AsBoolean:=True;
  cdsContactos.FieldByName('Empresa').AsString:='';
  cdsContactos.FieldByName('Puesto').AsString:='';
  cdsContactos.FieldByName('Departamento').AsString:='';
  cdsContactos.FieldByName('FechaNacimiento').AsDateTime:=Trunc(Now);
  cdsContactos.FieldByName('TelefonoOficina').AsString:='';
  cdsContactos.FieldByName('Celular').AsString:='';
  cdsContactos.FieldByName('Email').AsString:='';
  cdsContactos.FieldByName('Email2').AsString:='';
  cdsContactos.FieldByName('Observaciones').AsString:='.';

end;

procedure TfrmCatalogoClientes.ChkTodasClick(Sender: TObject);
Var
K: Integer;
Flag: Boolean;
begin
  inherited;
    K:=0;
    if ClbTarjetas.Items.Count > 0 then
    begin
      if clbTarjetas.Items[K].State = cbsChecked then
         Flag:=False
      else
         Flag:=True;
      for K := 0 to ClbTarjetas.Count - 1 do
      begin
         clbTarjetas.Items[K].Checked := Flag;
      end
    end;
end;

procedure TfrmCatalogoClientes.cxButton3Click(Sender: TObject);
begin
  inherited;
    DM.ShowModuleByName('PuntoVEnta');
end;

procedure TfrmCatalogoClientes.cxGroupBox3Click(Sender: TObject);
begin
  inherited;

end;

/////////////////// PROCESAR DATOS DE VEHICULOS /////////////////////////
procedure TfrmCatalogoClientes.dbgCatalogoDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
    if DM.Seguridad.SeguridadPorNombre('Modificar Limite de Credito') = nil then
    begin
      dbeLimiteCredito.Enabled:=False
    end
    else
    begin
      If (LOOKUPCMFORMACOMPRA.Text='DEBITO')then
          dbeLimiteCredito.Enabled:=False
      else
          dbeLimiteCredito.Enabled:=True;
    end;

    LimCredito := IntToStr(cdsCatalogo.FieldByName('LimiteCredito').AsInteger);
end;

procedure TfrmCatalogoClientes.dbgCatalogoDBTableView1DblClick(Sender: TObject);
Var I,Cont: Integer;
begin
  inherited;
  ArregloBitacora;
  ClbTarjetas.Items.Clear;
  //cdsVehiculos.Close;
  DM.ClienteIDActual:= cdsCatalogo.FieldByName('ClienteID').AsInteger;
  DM.FormaCompra:=cdsCatalogo.FieldByName('FormaCompraID').AsInteger;
  //cdsVehiculos.ParamByName('ClienteID').AsInteger:=DM.ClienteIDActual;
  //cdsVehiculos.Open;
  //Cont:=cdsVehiculos.RecordCount;
  { I:=0;
    while (I < Cont) do


           with clbTarjetas.Items.Add do
             begin
              if cdsVehiculos.FieldByName('ClienteID').AsInteger= DM.ClienteIDActual then
                begin
           Arre[I]:=cdsVehiculos.FieldByName('VehiculoID').AsInteger;
           Arre2[I]:=cdsVehiculos.FieldByName('Identificacion').AsString;
           InttoStr(Arre[I]);
           Text:=Format('%d-%s',[Arre[I],Arre2[I]]);
           cdsVehiculos.Next;
           I:=I+1;
                end
            else
              begin
                cdsVehiculos.Next;
                I:=I+1;
            end;
            end;
    If (LOOKUPCMFORMACOMPRA.Text='CUPONES') Or (LOOKUPCMFORMACOMPRA.Text='NOTA DE CREDITO') Then
      begin
         cxTabSheet5.Enabled:=False;
      end
    else
      begin
         cxTabSheet5.Enabled:=True;
      end; }
end;

procedure TfrmCatalogoClientes.FormCreate(Sender: TObject);
begin
  pgcCatalogo.ActivePageIndex:=0;
  Bandera:=False;
  cbPeriodoIni.EditValue:=FormatDateTime('m', Now);
  cbPeriodoFin.EditValue:=FormatDateTime('m', Now);
  edtEjercicio.EditValue:=FormatDateTime('yyyy', Now);
  Campo:='ClienteID';

  cdsDiaFacturar.Open;
  cdsAgenteVenta.Open;
  cdsFormaCompra.Open;
  cdsFormaPago.Open;
  //cdsSaldoEjercicio.Open;
  cdsContactos.Open;
  cdsClasificacion.Open;


  Abriendo:=True;
  cdsCatalogo.RemoteDataAdapter:=RemoteDataAdapter;
  cdsCatalogo.DisableControls;
  cdsCatalogo.DisableEventHandlers;
  cdsCatalogo.Open;
  cdsCatalogo.EnableControls;
  cdsCatalogo.EnableEventHandlers;
  tblCatalogo.CreateFieldsFromDataSet(cdsCatalogo.Dataset);
  Abriendo:=False;

  cdsCatalogoAfterScroll(nil);
  cxTabSheet6.Enabled:=False;
end;

procedure TfrmCatalogoClientes.pgcCatalogoChange(Sender: TObject);
begin
  inherited;
  UpdateActionsState;
end;

procedure TfrmCatalogoClientes.pgcCatalogoPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if (NewPage.TabIndex = 6) then
  begin
    AllowChange:=cdsCatalogo.State = dsBrowse;
    if AllowChange then
      DM.ShowModuleByName('VehÝculos');
  end;
end;

procedure TfrmCatalogoClientes.UpdateActionsState;
begin
  inherited;
  dmAppActions.actProcesar.Enabled:=pgcCatalogo.ActivePageIndex = 4;
  //LOOKUPCMFORMACOMPRA.Enabled:=cdsCatalogo.State = dsInsert; 
end;

initialization
  ModuleInfoManager.RegisterModule('Clientes', TfrmCatalogoClientes);

end.
