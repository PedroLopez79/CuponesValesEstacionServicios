unit ufrmPCatalogoClub;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, CustomModule, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxmdaset, uDAInterfaces,
  uDADataTable, uDAScriptingProvider, uDAMemDataTable, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxContainer, cxTextEdit, cxDBEdit, cxLabel, cxGroupBox;

type
  TfrmPCatalogoClub = class(TfrmCatalogo)
    dbgCatalogoDBTableView1RecID: TcxGridDBColumn;
    dbgCatalogoDBTableView1PuntosClubID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    edtNombre: TcxDBTextEdit;
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
  private
    { Private declarations }
    Nuevo: Boolean;
    procedure ActionGuardar(Action: TBasicAction); override;
  protected
    procedure RegisterActions; override;
  public
    { Public declarations }
    procedure UpdateActionsState; override;
  end;


var
  frmPCatalogoClub: TfrmPCatalogoClub;

implementation

uses uDM, Modules, dmActions;

{$R *.dfm}

procedure TfrmPCatalogoClub.ActionGuardar(Action: TBasicAction);
begin
  if Nuevo then
  begin
    Nuevo := False;
    cdsCatalogo.FieldByName('PuntosClubID').AsInteger := DM.Servidor.Folio('PuntosClubID', '');
  end;
  inherited;
end;

procedure TfrmPCatalogoClub.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  Nuevo := True;
  edtNombre.SetFocus;
end;

procedure TfrmPCatalogoClub.RegisterActions;
begin
  inherited;
  RegisterAction(AppActions.actGuardar, ActionGuardar);
end;

procedure TfrmPCatalogoClub.UpdateActionsState;
begin
  inherited;
  dmAppActions.actGuardar.Enabled := (cdsCatalogo.State in dsEditModes);
end;

initialization
  ModuleInfoManager.RegisterModule('Catálogo Club', TfrmPCatalogoClub);

end.
