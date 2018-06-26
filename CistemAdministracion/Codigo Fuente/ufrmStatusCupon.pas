unit ufrmStatusCupon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxImageComboBox, cxTextEdit, cxLabel, cxContainer,
  cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  uDAScriptingProvider, uDADataTable, uDAMemDataTable, uDAInterfaces,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeelPainters, cxLookAndFeels, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, cxNavigator, uROComponent, uDAFields;

type
  TfrmStatusCupon = class(TfrmCustomModule)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CuponID: TcxGridDBColumn;
    cxGrid1DBTableView1Importe: TcxGridDBColumn;
    cxGrid1DBTableView1Status: TcxGridDBColumn;
    cxGrid1DBTableView1FechaConsumo: TcxGridDBColumn;
    cxGrid1DBTableView1ConsumoEstacionID: TcxGridDBColumn;
    cxGrid1DBTableView1ConsumoSecuencia: TcxGridDBColumn;
    cxGrid1DBTableView1ConsumoBombaID: TcxGridDBColumn;
    cxGrid1DBTableView1ConsumoTurnoID: TcxGridDBColumn;
    cxGrid1DBTableView1ConsumoImporte: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    edtCupon: TcxTextEdit;
    dsCupon: TDADataSource;
    cdsCupon: TDAMemDataTable;
    cxGrid1DBTableView1ClienteID: TcxGridDBColumn;
    procedure edtCuponExit(Sender: TObject);
    procedure cdsCuponCalcFields(DataTable: TDADataTable);
    procedure edtCuponEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStatusCupon: TfrmStatusCupon;

implementation

uses Modules, uDM, UtileriasComun;

{$R *.dfm}

procedure TfrmStatusCupon.cdsCuponCalcFields(DataTable: TDADataTable);
begin
  inherited;
  cdsCupon.FieldByName('Clave').AsString:=IDToClave(cdsCupon.FieldByName('CuponID').AsInteger)
end;

procedure TfrmStatusCupon.edtCuponEnter(Sender: TObject);
begin
  inherited;
  OkEnter:=True;
end;

procedure TfrmStatusCupon.edtCuponExit(Sender: TObject);
var
  S: String;
begin
  inherited;
  if Length(edtCupon.Text) = 16 then
    S:=edtCupon.Text
  else
    S:=IntToStr(ClaveToID(edtCupon.Text));
  cdsCupon.Close;
  cdsCupon.ParamByName('Codigo').AsString:=S;
  cdsCupon.Open;
end;

initialization
  ModuleInfoManager.RegisterModule('Estado Cupón', TfrmStatusCupon);


end.
