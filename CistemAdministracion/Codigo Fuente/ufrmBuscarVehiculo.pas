unit ufrmBuscarVehiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxPC, cxControls, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxContainer,
  cxGroupBox, Menus, StdCtrls, cxButtons, cxLabel, uDADataTable,
  uDARemoteDataAdapter, uDAScriptingProvider, uDAMemDataTable, uDAInterfaces,
  LibraryFlotillas_Intf, cxLookAndFeels, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSpringTime;

type
  TfrmBuscaVehiculo = class(TForm)
    pgcBuscaVehiculo: TcxPageControl;
    tsCliente: TcxTabSheet;
    tsVehiculo: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    dbgCatalogo: TcxGrid;
    dbgCatalogoDBTableView1: TcxGridDBTableView;
    dbgCatalogoLevel1: TcxGridLevel;
    edtBuscar: TcxTextEdit;
    dbgVehiculo: TcxGrid;
    dbgVehiculoDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    btnBuscaCliente: TcxButton;
    cdsCliente: TDAMemDataTable;
    rdaBuscarCliente: TDARemoteDataAdapter;
    dsCliente: TDADataSource;
    rdaBuscarVehiculo: TDARemoteDataAdapter;
    cdsVehiculo: TDAMemDataTable;
    dsVehiculo: TDADataSource;
    cxGroupBox2: TcxGroupBox;
    btnAceptar: TcxButton;
    btnCancelar: TcxButton;
    procedure btnBuscaClienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure pgcBuscaVehiculoPageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure dbgCatalogoDBTableView1DblClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure dbgVehiculoDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirVehiculos;
  public
    { Public declarations }
    Vehiculo: TDatosVehiculo;
  end;

  function BuscaVehiculoFlotillas: TDatosVehiculo;

implementation

uses uDM, dmImagenes;

{$R *.dfm}

function BuscaVehiculoFlotillas: TDatosVehiculo;
var
  frmBuscaVehiculo: TfrmBuscaVehiculo;
begin
  frmBuscaVehiculo:=TfrmBuscaVehiculo.Create(nil);
  try
    frmBuscaVehiculo.ShowModal;
    Result:=frmBuscaVehiculo.Vehiculo;
  finally
    frmBuscaVehiculo.Free;
  end;
end;

procedure TfrmBuscaVehiculo.AbrirVehiculos;
var
  P: TParametrosF;
  S: String;
begin
  P:=TParametrosF.Create;
  try
    cdsVehiculo.Close;
    P.ClienteIni:=cdsCliente.FieldByName('ClienteID').AsInteger;
    S:='Select VehiculoID, Nombre, Identificacion, Departamento from vehiculo where clienteid = @clienteini order by Nombre';
    rdaBuscarVehiculo.GetDataCall.ParamByName('SQL').AsString:=S;
    rdaBuscarVehiculo.GetDataCall.ParamByName('Parametros').AsComplexType:=P;
    cdsVehiculo.Open;
    dbgVehiculoDBTableView1.ClearItems;
    dbgVehiculoDBTableView1.DataController.CreateAllItems();
  finally
    FreeAndNil(P);
  end;
end;

procedure TfrmBuscaVehiculo.btnBuscaClienteClick(Sender: TObject);
var
  P: TParametrosF;
  S: String;
begin
  P:=TParametrosF.Create;
  try
    cdsCliente.Close;
    P.Grupo:='%' + edtBuscar.Text + '%';
    S:='Select ClienteID, Nombre, RFC from cliente where Nombre like @Grupo or cast(clienteid as varchar(10)) like @grupo or rfc like @grupo order by Nombre';
    rdaBuscarCliente.GetDataCall.ParamByName('SQL').AsString:=S;
    rdaBuscarCliente.GetDataCall.ParamByName('Parametros').AsComplexType:=P;
    cdsCliente.Open;
    dbgCatalogoDBTableView1.ClearItems;
    dbgCatalogoDBTableView1.DataController.CreateAllItems();
  finally
    FreeAndNil(P);
  end;
end;

procedure TfrmBuscaVehiculo.btnAceptarClick(Sender: TObject);
begin
  if (cdsVehiculo.Active) and (cdsVehiculo.RecordCount > 0) then
  begin
    Vehiculo.VehiculoID:=cdsVehiculo.FieldByName('VehiculoID').AsInteger;
    Vehiculo.ClienteID:=cdsCliente.FieldByName('ClienteID').AsInteger;
    Vehiculo.ClienteNombre:=cdsCliente.FieldByName('Nombre').AsString;
    Close;
  end
  else
    MessageDlg('Debe de seleccionar un vehiculo',mtError, [mbOK], 0);
end;

procedure TfrmBuscaVehiculo.btnCancelarClick(Sender: TObject);
begin
  Vehiculo.VehiculoID:=-1;
  Close;
end;

procedure TfrmBuscaVehiculo.dbgCatalogoDBTableView1DblClick(Sender: TObject);
begin
  pgcBuscaVehiculo.ActivePageIndex:=1;
end;

procedure TfrmBuscaVehiculo.dbgVehiculoDBTableView1DblClick(Sender: TObject);
begin
  btnAceptarClick(nil);
end;

procedure TfrmBuscaVehiculo.edtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnBuscaClienteClick(nil);
end;

procedure TfrmBuscaVehiculo.FormActivate(Sender: TObject);
begin
  pgcBuscaVehiculo.ActivePageIndex:=0;
  edtBuscar.SetFocus;
end;

procedure TfrmBuscaVehiculo.FormCreate(Sender: TObject);
begin
  Vehiculo:=TDatosVehiculo.Create;
  Vehiculo.VehiculoID:=-1;
end;

procedure TfrmBuscaVehiculo.pgcBuscaVehiculoPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:=False;
  if (NewPage.TabIndex = 1) and (cdsCliente.Active) and (cdsCliente.RecordCount > 0) then
  begin
    AbrirVehiculos;
    AllowChange:=True;
  end;
  if NewPage.TabIndex = 0 then
    AllowChange:=True;
end;

end.
