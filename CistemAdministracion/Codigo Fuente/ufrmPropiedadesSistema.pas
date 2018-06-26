unit ufrmPropiedadesSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxLabel, cxGroupBox, cxRadioGroup, StdCtrls,
  cxControls, cxContainer, cxEdit, cxPC, cxGraphics, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Menus,
  cxLookAndFeelPainters, cxButtons, cxButtonEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, cxCheckBox;

type
  TfrmPropiedadesSistema = class(TfrmCustomModule)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    rgSkin: TcxRadioGroup;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    edtServidor: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxLabel2: TcxLabel;
    edtSerieFactura: TcxTextEdit;
    cxLabel3: TcxLabel;
    edtSerieExpress: TcxTextEdit;
    cxLabel4: TcxLabel;
    edtEstacion: TcxTextEdit;
    cxLabel5: TcxLabel;
    edtClienteFlotillas: TcxTextEdit;
    cxLabel6: TcxLabel;
    edtServidorExpress: TcxTextEdit;
    cxLabel7: TcxLabel;
    edtFormatoFactura: TcxTextEdit;
    chkSinTicket: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure rgSkinPropertiesEditValueChanged(Sender: TObject);
    procedure LeerValores;
  private
    procedure ActionGuardar(Action: TBasicAction);
    procedure ActionCancelar(Action: TBasicAction);
    { Private declarations }
    protected
    procedure RegisterActions; override;
  public
    { Public declarations }
   procedure UpdateActionsState; override;
  end;

var
  frmPropiedadesSistema: TfrmPropiedadesSistema;
  Boton: Boolean;

implementation

uses
  Modules,uDM, dmActions, dmImagenes, UtileriasComun, ufrmPrincipal;

{$R *.dfm}

procedure TfrmPropiedadesSistema.ActionCancelar(Action: TBasicAction);
begin
  LeerValores;
  Boton:=False;
end;

procedure TfrmPropiedadesSistema.ActionGuardar(Action: TBasicAction);
begin
  EscribirRegistro('Skin', rgSkin.EditValue);
  EscribirRegistro('Server', edtServidor.EditValue);
  EscribirRegistro('Estacion', edtEstacion.EditValue);
  EscribirRegistro('ClienteDefault', edtClienteFlotillas.EditValue);
  EscribirRegistro('SerieFactura', edtSerieFactura.EditValue);
  EscribirRegistro('SerieFacturaExpress', edtSerieExpress.EditValue);
  EscribirRegistro('FacturacionExpress', edtServidorExpress.EditValue);
  EscribirRegistro('FormatoFactura', edtFormatoFactura.EditValue);
  EscribirRegistro('SinTicket', IntToStr(Integer(chkSinTicket.Checked)));
  EscribirRegistro('PrimeraVez', '0');
  Boton:=False;
  AppRestart;
end;

procedure TfrmPropiedadesSistema.FormCreate(Sender: TObject);
begin
  inherited;
  LeerValores;
  Boton:=False;
  UpdateActionsState;
end;

procedure TfrmPropiedadesSistema.LeerValores;
begin
  rgSkin.EditValue:=LeerRegistro('Skin', '1');
  edtServidor.EditValue:=LeerRegistro('Server', '127.0.0.1');
  edtEstacion.EditValue:=LeerRegistro('Estacion', '0');
  edtClienteFlotillas.EditValue:=LeerRegistro('ClienteDefault', '0');
  edtSerieFactura.EditValue:=LeerRegistro('SerieFactura', '0');
  edtSerieExpress.EditValue:=LeerRegistro('SerieFacturaExpress', '0');
  edtServidorExpress.EditValue:=LeerRegistro('FacturacionExpress', '0');
  edtFormatoFactura.EditValue:=LeerRegistro('FormatoFactura', '0');
  chkSinTicket.EditValue:=UtileriasComun.LeerRegistro('SinTicket', '0') = '1';
end;

procedure TfrmPropiedadesSistema.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actGuardar, ActionGuardar);
  RegisterAction(AppActions.actCancelar, ActionCancelar);
end;

procedure TfrmPropiedadesSistema.rgSkinPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  ColorRibbonSchema:=rgSkin.EditValue;
  frmPrincipal.Ribbon.ColorSchemeName:=RibbonSchema[ColorRibbonSchema];
  DM.dxSkinController1.SkinName:=RibbonSchema[ColorRibbonSchema];
  Boton:=True;
  UpdateActionsState;
end;

procedure TfrmPropiedadesSistema.UpdateActionsState;
begin
  inherited ;
  dmAppActions.actGuardar.Enabled:=Boton;
  dmAppActions.actCancelar.Enabled:=Boton;
end;

initialization
  ModuleInfoManager.RegisterModule('Propiedades del Sistema', TfrmPropiedadesSistema);
end.
