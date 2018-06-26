unit ufrmCatalogoArticulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters, cxTextEdit,
  cxDBEdit, cxLabel, cxContainer, cxGroupBox, dxmdaset, uDAInterfaces,
  uDADataTable, uDAScriptingProvider, uDAMemDataTable, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxLookAndFeels, dxSkinDarkRoom, dxSkinFoggy,
  dxSkinSeven, dxSkinSharp;

type
  TfrmCatalogoArticulos = class(TfrmCatalogo)
    cxGroupBox1: TcxGroupBox;
    LblNombre: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    dbgCatalogoDBTableView1ArticuloID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    dbgCatalogoDBTableView1Costo: TcxGridDBColumn;
    dbgCatalogoDBTableView1Puntos: TcxGridDBColumn;
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoArticulos: TfrmCatalogoArticulos;

implementation
uses Modules, uDM, UtileriasComun, LibraryEmpresas_Intf;

{$R *.dfm}
procedure TfrmCatalogoArticulos.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('ArticuloID').AsInteger:=DM.Servidor.Folio('ArticuloID', '');
  cxDBTextEdit1.SetFocus;
end;

initialization
  ModuleInfoManager.RegisterModule('Articulos',  TfrmCatalogoArticulos);

end.
