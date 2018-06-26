unit ufrmModificaFolioFactura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxContainer, cxEdit, cxGroupBox, cxPC, cxControls,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxLabel, cxTextEdit, DB,
  uDADataTable, uDAScriptingProvider, uDACDSDataTable, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, uDAInterfaces, cxCurrencyEdit,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinSilver, dxSkinStardust, dxSkinValentine, dxSkinXmas2008Blue, cxGraphics,
  cxImageComboBox, cxLookAndFeels, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSpringTime, dxSkinSummer2008,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxPCdxBarPopupMenu;

type
  TfrmModificaFolioFactura = class(TfrmCustomModule)
    pgcFacturas: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    edtFolioOld: TcxCurrencyEdit;
    edtFolioNew: TcxCurrencyEdit;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    edtFolioImprime: TcxCurrencyEdit;
    edtSerieOld: TcxImageComboBox;
    edtSerieNew: TcxImageComboBox;
    edtSerieImprime: TcxImageComboBox;
    procedure FormCreate(Sender: TObject);
    procedure edtFolioImprimePropertiesChange(Sender: TObject);
    procedure pgcFacturasChange(Sender: TObject);
    procedure edtSerieOldPropertiesEditValueChanged(Sender: TObject);
    procedure edtSerieNewPropertiesEditValueChanged(Sender: TObject);
    procedure edtFolioImprimePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure ActionGuardar(Action: TBasicAction);
    procedure ActionImprimir(Action: TBasicAction);
  protected
    procedure RegisterActions; override;
  public
    { Public declarations }
    procedure UpdateActionsState; override;
  end;

var
  frmModificaFolioFactura: TfrmModificaFolioFactura;

implementation
uses Modules,uDM, dmActions, dmImagenes, UtileriasComun,LibraryEmpresas_Intf;

{$R *.dfm}
{ TfrmModificaFolioFactura }


procedure TfrmModificaFolioFactura.ActionGuardar(Action: TBasicAction);
begin
  if MessageDlg('Deseas modificar el folio de la factura', mtConfirmation, [mbNo, mbYES], 0) = mrYes then
  begin
    pgcFacturas.SetFocus;
    ShowMessage(DM.Servidor.CambiaFolioFactura(edtSerieOld.EditValue, Trunc(edtFolioOld.EditValue), edtSerieNew.EditValue, Trunc(edtFolioNew.EditValue)));
    edtSerieImprime.EditValue:=edtSerieNew.EditValue;
    edtFolioImprime.EditValue:=edtFolioNew.EditValue;
  end;
end;

procedure TfrmModificaFolioFactura.ActionImprimir(Action: TBasicAction);
begin
  DM.ImprimirFactura(DM.Servidor.FacturaID(edtSerieImprime.EditValue, Trunc(edtFolioImprime.EditValue)));
end;

procedure TfrmModificaFolioFactura.edtFolioImprimePropertiesChange(
  Sender: TObject);
begin
  inherited;
  UpdateActionsState;
end;

procedure TfrmModificaFolioFactura.edtFolioImprimePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  UpdateActionsState;
end;

procedure TfrmModificaFolioFactura.edtSerieNewPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  edtSerieImprime.EditValue:=edtSerieNew.EditValue;
end;

procedure TfrmModificaFolioFactura.edtSerieOldPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  edtSerieNew.EditValue:=edtSerieOld.EditValue;
end;

procedure TfrmModificaFolioFactura.FormCreate(Sender: TObject);
begin
  inherited;
  with edtSerieOld.Properties.Items.Add do
  begin
    Description:=DM.Serie;
    Value:=DM.Serie;
  end;
  with edtSerieNew.Properties.Items.Add do
  begin
    Description:=DM.Serie;
    Value:=DM.Serie;
  end;
  with edtSerieImprime.Properties.Items.Add do
  begin
    Description:=DM.Serie;
    Value:=DM.Serie;
  end;

  if DM.SerieExpress <> '' then
  begin
    edtSerieOld.Enabled:=True;
    edtSerieNew.Enabled:=True;
    edtSerieImprime.Enabled:=True;
    with edtSerieOld.Properties.Items.Add do
    begin
      Description:=DM.SerieExpress;
      Value:=DM.SerieExpress;
    end;
    with edtSerieNew.Properties.Items.Add do
    begin
      Description:=DM.SerieExpress;
      Value:=DM.SerieExpress;
    end;
    with edtSerieImprime.Properties.Items.Add do
    begin
      Description:=DM.SerieExpress;
      Value:=DM.SerieExpress;
    end;
  end;
  edtSerieOld.EditValue:=DM.Serie;
  pgcFacturas.ActivePageIndex:=0;
end;

procedure TfrmModificaFolioFactura.pgcFacturasChange(Sender: TObject);
begin
  inherited;
  UpdateActionsState;
end;

procedure TfrmModificaFolioFactura.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actGuardar, ActionGuardar);
  RegisterAction(AppActions.actImprimir, ActionImprimir);
end;

procedure TfrmModificaFolioFactura.UpdateActionsState;
begin
  inherited;
  dmAppActions.actGuardar.Enabled:=(edtFolioOld.Text <> '') and (edtFolioNew.Text <> '') and (pgcFacturas.ActivePageIndex = 0);
  dmAppActions.actImprimir.Enabled:=(edtFolioImprime.Text <> '') and (pgcFacturas.ActivePageIndex = 1);
end;

initialization
  ModuleInfoManager.RegisterModule('Modificar Folio Factura', TfrmModificaFolioFactura);

end.
