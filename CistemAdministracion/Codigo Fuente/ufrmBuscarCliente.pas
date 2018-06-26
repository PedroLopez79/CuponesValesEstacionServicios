unit ufrmBuscarCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmBuscar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, uDADataTable, uDAScriptingProvider,
  uDACDSDataTable, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Menus, cxLookAndFeelPainters, dxRibbon, StdCtrls, cxButtons, ExtCtrls,
  dxStatusBar, dxRibbonStatusBar, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxSkinsdxRibbonPainter, uDAInterfaces, cxContainer,
  cxGroupBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, cxLookAndFeels, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSpringTime, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  cxNavigator, dxRibbonSkins, uDAFields, uROComponent;

type
  TfrmBuscarCliente = class(TfrmBuscar)
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    procedure cdsBuscarFilterRecord(DataTable: TDADataTable;
      var Accept: Boolean);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscarCliente: TfrmBuscarCliente;

implementation

{$R *.dfm}

procedure TfrmBuscarCliente.cdsBuscarFilterRecord(DataTable: TDADataTable;
  var Accept: Boolean);
begin
  inherited;
  Accept:= Pos(DataTable.FieldByName('FormaCompraID').AsString + ',', CRITERIO) > 0;
end;

procedure TfrmBuscarCliente.cxGridDBTableView1DblClick(Sender: TObject);
begin
  Datos.Clave:=cdsBuscar.FieldByName('ClienteID').AsInteger;
  Datos.Nombre:= cdsBuscar.FieldByName('Nombre').AsString;
  Datos.FormaPago:= cdsBuscar.FieldByName('FormaPagoID').AsInteger;
  Datos.Estatus := cdsBuscar.FieldByName('Estatus').AsString;
  Datos.RFC := cdsBuscar.FieldByName('RFC').AsString;
  Datos.Cuenta:= cdsBuscar.FieldByName('CuentaContable').AsString;
  inherited;

end;

procedure TfrmBuscarCliente.cxGridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if KEY = 13 then
     Datos.Clave:=cdsBuscar.FieldByName('ClienteID').AsInteger;
     Datos.Nombre:= cdsBuscar.FieldByName('Nombre').AsString;
     Datos.FormaPago:= cdsBuscar.FieldByName('FormaPagoID').AsInteger;
     Datos.Estatus := cdsBuscar.FieldByName('Estatus').AsString;
     Datos.RFC := cdsBuscar.FieldByName('RFC').AsString;
     Datos.Cuenta:= cdsBuscar.FieldByName('CuentaContable').AsString;
     inherited;
end;

end.