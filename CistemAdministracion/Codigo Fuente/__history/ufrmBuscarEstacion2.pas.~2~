unit ufrmBuscarEstacion2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmBuscar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, uDADataTable, uDAScriptingProvider,
  uDACDSDataTable, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinSilver, dxSkinStardust, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, cxLookAndFeelPainters, uDAInterfaces, cxLabel,
  cxTextEdit, cxContainer, cxGroupBox, cxPC, dxRibbon, cxLookAndFeels,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSpringTime, dxSkinSummer2008;

type
  TfrmBuscaEstaciones = class(TfrmBuscar)
    dbgBuscarDBTableView2EstacionID: TcxGridDBColumn;
    dbgBuscarDBTableView2Nombre: TcxGridDBColumn;
    dbgBuscarDBTableView2RazonSocial: TcxGridDBColumn;
    dbgBuscarDBTableView2RFC: TcxGridDBColumn;
    dbgBuscarDBTableView2ClavePemex: TcxGridDBColumn;
    dbgBuscarDBTableView2NoBombas: TcxGridDBColumn;
    dbgBuscarDBTableView2Colonia: TcxGridDBColumn;
    dbgBuscarDBTableView2Ciudad: TcxGridDBColumn;
    dbgBuscarDBTableView2CodigoPostal: TcxGridDBColumn;
    dbgBuscarDBTableView2Host: TcxGridDBColumn;
    dbgBuscarDBTableView2CuentaContable: TcxGridDBColumn;
    dbgBuscarDBTableView2Impuesto: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscaEstaciones: TfrmBuscaEstaciones;

implementation

uses uDM;

{$R *.dfm}

procedure TfrmBuscaEstaciones.FormCreate(Sender: TObject);
begin
  inherited;
  Busqueda:=True;
  Nuevo:=False;
end;

end.
