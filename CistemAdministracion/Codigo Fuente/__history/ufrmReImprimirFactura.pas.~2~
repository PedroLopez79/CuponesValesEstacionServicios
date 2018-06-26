unit ufrmReImprimirFactura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxLabel, cxTextEdit, cxContainer, cxEdit, cxGroupBox,
  cxPC, cxControls, DB, uDADataTable, uDAScriptingProvider, uDACDSDataTable,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, uDAInterfaces;

type
  TfrmReImprimirFactura = class(TfrmCustomModule)
    cxReimprimirFactura: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrupo: TcxGroupBox;
    txtSerieFactura: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    txtFolioFactura: TcxTextEdit;
    cdsFolioFactura: TDACDSDataTable;
    dsFolioFactura: TDADataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Procedure ActionImprimir(Action: TBasicAction);
    Procedure Imprimir(Estacion:integer; Factura: integer);

    protected
     procedure RegisterActions; override;

  public
    { Public declarations }
      procedure UpdateActionsState; override;
  end;

var
  frmReImprimirFactura: TfrmReImprimirFactura;
  EstacionActual:Integer;
  SerieFactura:String;
  FacturaAImpresora:Boolean;


implementation

//uses dmImagenes;
uses Modules,uDM, dmActions, dmImagenes, UtileriasComun,LibraryEmpresas_Intf;

{$R *.dfm}

{ TfrmReImprimirFactura }

procedure TfrmReImprimirFactura.ActionImprimir(Action: TBasicAction);
begin

  cdsFolioFactura.close;
  cdsFolioFactura.ParamByName('Serie').asstring:=txtSerieFactura.Text;
  cdsFolioFactura.ParamByName('Folio').asInteger:=strToInt(txtFolioFactura.Text);
  cdsFolioFactura.Open;

  imprimir(EstacionActual, cdsFolioFactura.FieldByName('FacturaID').AsInteger);

end;

procedure TfrmReImprimirFactura.FormCreate(Sender: TObject);
begin
  inherited;
  EstacionActual:=StrToInt(UtileriasComun.LeerRegistro('Estacion','4120'));
  SerieFactura:=UtileriasComun.LeerRegistro('SerieFactura','A');
  if DM.Seguridad.SeguridadPorNombre('Facturar a Impresora')<>nil then
     FacturaAImpresora:=True
  else
     FacturaAImpresora:=False;

  txtSerieFactura.Text:=SerieFactura;
  cxReimprimirFactura.ActivePageIndex:=0;
  //cxGrupo.SetFocus;

 // txtFolioFactura.SetFocus;
end;

procedure TfrmReImprimirFactura.Imprimir(Estacion, Factura: integer);
var
  Aux: LibraryEmpresas_Intf.TReporte;
begin
  try
    Aux:=DM.Servidor.BuscaReporte('IMPRIMIR FACTURA', 1);

    DM.Parametros.Factura:= Factura;
    DM.Parametros.Estacion:= Estacion;
    DM.Imprimir(Aux.SQL1, Aux.SQL2, Aux.Template, 'IMPRIMIENDO...', Aux.CampoJoin,FacturaAImpresora);

  finally
    Aux.Free;
  end;
end;

procedure TfrmReImprimirFactura.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actImprimir, ActionImprimir);
end;

procedure TfrmReImprimirFactura.UpdateActionsState;
begin
  inherited;
  dmAppActions.actImprimir.Enabled:=true

end;



initialization
  ModuleInfoManager.RegisterModule('ReImprimir Facturas', TfrmReImprimirFactura);

end.
