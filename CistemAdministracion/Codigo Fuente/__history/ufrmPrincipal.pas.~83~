unit ufrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, cxClasses, dxRibbon, cxControls, dxStatusBar,
  dxRibbonStatusBar, ExtCtrls, dxBarExtItems, StdActns, ActnList,
  XPStyleActnCtrls, ActnMan, dxRibbonForm, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, cxContainer, cxEdit, cxGroupBox,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinSilver, dxSkinStardust, dxSkinValentine, dxSkinXmas2008Blue,
  cxLookAndFeelPainters, dxSkinSummer2008, cxGraphics, cxLookAndFeels,
  dxSkinDarkSide, dxSkinPumpkin,
  dxSkinSpringTime, dxSkinDarkRoom, dxSkinFoggy,
  dxSkinSeven, dxSkinSharp, cxCurrencyEdit, cxBarEditItem, dxRibbonSkins,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, System.Actions;

type
  TfrmPrincipal = class(TdxCustomRibbonForm)
    StatusBar: TdxRibbonStatusBar;
    BasicManager: TActionManager;
    EditCut2: TEditCut;
    EditCopy2: TEditCopy;
    EditPaste2: TEditPaste;
    dxBarManager1: TdxBarManager;
    tbReportes: TdxBar;
    tbConfigurar: TdxBar;
    tbRapida: TdxBar;
    tbAcciones: TdxBar;
    btnSalir: TdxBarButton;
    btnLogin: TdxBarButton;
    btnLogout: TdxBarButton;
    btnConfiguracion: TdxBarButton;
    btnProductos: TdxBarLargeButton;
    btnRepotesCortes: TdxBarLargeButton;
    btnReportesInventario: TdxBarLargeButton;
    btnGenerales: TdxBarLargeButton;
    btnEspecificos: TdxBarLargeButton;
    btnExportar: TdxBarLargeButton;
    btnFacturas: TdxBarLargeButton;
    btnUsuarios: TdxBarLargeButton;
    btnClientes: TdxBarLargeButton;
    btnEstaciones: TdxBarLargeButton;
    btnReprotes: TdxBarLargeButton;
    btnSistema: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnCortar: TdxBarButton;
    btnCopiar: TdxBarButton;
    btnPegar: TdxBarButton;
    btnEliminar: TdxBarLargeButton;
    btnPrimer: TdxBarButton;
    btnAnteriior: TdxBarButton;
    btnSiguiente: TdxBarButton;
    btnUltimo: TdxBarButton;
    btnActualizar: TdxBarButton;
    btnBuscar: TdxBarButton;
    dxRibbonPopupMenu1: TdxRibbonPopupMenu;
    tbCatalogos: TdxBar;
    btnCortes: TdxBarLargeButton;
    btnAnticipos: TdxBarLargeButton;
    btnCompras: TdxBarLargeButton;
    btnTraspasos: TdxBarLargeButton;
    btnInventarioFisico: TdxBarLargeButton;
    btnMermas: TdxBarLargeButton;
    btnReprotesCupones: TdxBarLargeButton;
    btnCupones: TdxBarLargeButton;
    btnValesCredito: TdxBarLargeButton;
    btnDespachadores: TdxBarLargeButton;
    btnProveedores: TdxBarLargeButton;
    btnCategorias: TdxBarLargeButton;
    btnTipoValores: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    btnAlmacenes: TdxBarLargeButton;
    btnBancos: TdxBarLargeButton;
    btnCuentasBancarias: TdxBarLargeButton;
    btnConceptoSalidas: TdxBarLargeButton;
    btnSalidas: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    btnAgrupaciones: TdxBarLargeButton;
    btnAgrupacionBombas: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    btnQuemaCupones: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    btnTipodePago: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    btnProcesarVentas: TdxBarLargeButton;
    btnCerrarLiquidacion: TdxBarLargeButton;
    pnlPrincipal: TcxGroupBox;
    btnGenerarFacturas: TdxBarLargeButton;
    btnConsultaSaldos: TdxBarLargeButton;
    btnCapturaMovimientos: TdxBarLargeButton;
    btnProcesar: TdxBarLargeButton;
    btnConciliacion: TdxBarLargeButton;
    btnCierreMensual: TdxBarLargeButton;
    btnConsumoFlotillas: TdxBarLargeButton;
    btnCategoria: TdxBarLargeButton;
    btnSaldo: TdxBarLargeButton;
    btnPremios: TdxBarLargeButton;
    btnEntregarPremio: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    dxBarLargeButton21: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton23: TdxBarLargeButton;
    dxBarLargeButton24: TdxBarLargeButton;
    dxBarLargeButton25: TdxBarLargeButton;
    dxBarLargeButton26: TdxBarLargeButton;
    dxBarLargeButton27: TdxBarLargeButton;
    Ribbon: TdxRibbon;
    rtbAcciones: TdxRibbonTab;
    RibbonTab2: TdxRibbonTab;
    dxRibbon1Tab1: TdxRibbonTab;
    RibbonTab3: TdxRibbonTab;
    RibbonTab1: TdxRibbonTab;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton28: TdxBarLargeButton;
    dxBarLargeButton29: TdxBarLargeButton;
    dxBarLargeButton30: TdxBarLargeButton;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton31: TdxBarLargeButton;
    dxBarLargeButton32: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton33: TdxBarLargeButton;
    dxBarLargeButton34: TdxBarLargeButton;
    RibbonTab4: TdxRibbonTab;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton35: TdxBarLargeButton;
    dxBarLargeButton36: TdxBarLargeButton;
    dxBarLargeButton37: TdxBarLargeButton;
    RibbonTab5: TdxRibbonTab;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton38: TdxBarLargeButton;
    dxBarLargeButton39: TdxBarLargeButton;
    RibbonTab6: TdxRibbonTab;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton40: TdxBarLargeButton;
    procedure btnLogoutClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure tmrPrincipalTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure dxBarManager1ClickItem(Sender: TdxBarManager;
      ClickedItem: TdxBarItem);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function Boton(Cual: Integer): TdxBarLargeButton;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses dmImagenes, uDM, UtileriasComun, dmActions, Modules;

const
  TotalModulos = 18;
  Modulos: Array[1..TotalModulos] of string = ('Cupones',
                                               'Generales',
                                               'Estaciones',
                                               '',
                                               '',
                                               '',
                                               'Cancelar Cupones',
                                               'Estado Cupón',
                                               'Reportes',
                                               'Usuarios',
                                               'HorariosPersonal',
                                               '',
                                               'Recibos Crédito',
                                               'Facturas',
                                               'Facturas x Cliente',
                                               'Clientes',
                                               'Cupón Interno',
                                               'ConsultaValesCliente');
                                               //'Empleados');

{$R *.dfm}

function TfrmPrincipal.Boton(Cual: Integer): TdxBarLargeButton;
var
  I: Integer;
begin
  Result:=nil;
  for I := 0 to ComponentCount - 1 do
  begin
    if (Components[I] is TdxBarLargeButton) and (Components[I].Tag = Cual) then
    begin
      Result:=TdxBarLargeButton(Components[I]);
      Break;
    end;
  end;
end;

procedure TfrmPrincipal.btnLoginClick(Sender: TObject);
var
  I: Integer;
begin
  if Login(DM.Login) >= 0 then
  begin
    DM.AsignaPermisos;
    btnLogin.Enabled:=False;
    btnLogout.Enabled:=True;
    for I := 1 to TotalModulos do
      Boton(I).Enabled:=DM.Seguridad.SeguridadPorNombre(Modulos[I]) <> nil;
    StatusBar.Panels[3].Text:=formatfloat('#0.00', DM.Servidor.ObtenerTipoCambioPorEstacion(DM.Estacion));
  end;
end;

procedure TfrmPrincipal.btnLogoutClick(Sender: TObject);
var
  I: Integer;
begin
  FreeAndNil(DM.Seguridad);
  ModuleInfoManager.CloseActiveModule;
  Ribbon.Tabs[0].Visible:=False;
  Ribbon.Tabs[1].Active:=True;
  btnLogin.Enabled:=True;
  btnLogout.Enabled:=False;
  Caption:='Bitacoras 1.0';
  for I := 1 to TotalModulos do
    Boton(I).Enabled:=False;
end;

procedure TfrmPrincipal.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.dxBarManager1ClickItem(Sender: TdxBarManager;
  ClickedItem: TdxBarItem);
begin
  if ClickedItem.Tag > 0 then
    DM.ShowModuleByName(Modulos[ClickedItem.Tag]);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
const
  Dias  : Array[1..7] Of String = ('Domingo','Lunes','Martes','Miércoles','Jueves','Viernes','Sábado');
  Meses : Array[1..12] Of String = ('Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre');
var
  i : Byte;
begin
  Caption:='Cliente Empresas 1.0';
  Application.UpdateFormatSettings:=False;
  {for i:=1 to 12 do
  begin
    LongMonthNames[i]:=Meses[i];
    ShortMonthNames[i]:=Copy(Meses[i],1 ,3);
    if i <= 7 then
    begin
      LongDayNames[i]:=Dias[i];
      ShortDayNames[i]:=Copy(Dias[i],1 ,3);
    end;
  end;
  ShortDateFormat:='dd/mm/yyyy';
  LongDateFormat:='dddd dd "de" mmmm "de" yyyy';
  ThousandSeparator:=',';
  DecimalSeparator:='.';
  DateSeparator:='/';
  CurrencyString:='$';
  CurrencyFormat:=0;
  NegCurrFormat:=1;
  CurrencyDecimals:=2;
  TimeSeparator:=':';
  TimeAMString:='AM';
  TimePMString:='PM';}
  ColorRibbonSchema:=StrToInt(LeerRegistro('Skin', '2'));
  Ribbon.ColorSchemeName:=RibbonSchema[ColorRibbonSchema];
  DM.dxSkinController1.SkinName:=RibbonSchema[ColorRibbonSchema];
  StatusBar.Panels[5].Text:='Versión : ' + Version;
  rtbAcciones.Visible:=False;
  tmrPrincipalTimer(nil);
  Ribbon.Tabs[1].Active:=True;
  RemoteDataAdapter:=DM.RemoteDataAdapter;
  OKEnter:=True;
  if DM.PrimeraVez then
     DM.ShowModuleByName('Propiedades del Sistema');

end;

procedure TfrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (OKEnter) and (Key = #13) then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  Ribbon.QuickAccessToolbar.Position:=qtpAboveRibbon;
  WindowState:=wsMaximized;
end;

procedure TfrmPrincipal.tmrPrincipalTimer(Sender: TObject);
begin
  StatusBar.Panels[0].Text:=FormatDateTime('hh:nn:ss AMPM', Now);
  StatusBar.Panels[1].Text:=FormatDateTime('dddd dd mmmm yyyy', Now);
  if DM.Seguridad <> nil then
    StatusBar.Panels[2].Text:=DM.Seguridad.Nombre
  else
    StatusBar.Panels[2].Text:='';
end;

end.
