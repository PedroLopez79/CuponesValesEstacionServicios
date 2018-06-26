unit ufrmConsultaValesCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CustomModule, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxTextEdit, cxCurrencyEdit,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxDropDownEdit, cxImageComboBox, cxMaskEdit,
  cxSpinEdit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, uROComponent, uDAScriptingProvider,
  uDADataTable, uDACDSDataTable, uDAFields, Vcl.Menus, cxButtons, cxButtonEdit,
  Modules, dxmdaset, Vcl.ImgList, LibraryValesCupones_Intf;

type
  TfrmConsultaValesClientes = class(TfrmCustomModule)
    Panel1: TPanel;
    Label2: TLabel;
    Label13: TLabel;
    edtCliente: TcxCurrencyEdit;
    edtNombre: TcxTextEdit;
    Label6: TLabel;
    edtEjercicio: TcxSpinEdit;
    Label7: TLabel;
    cbPeriodoIni: TcxImageComboBox;
    cbPeriodoFin: TcxImageComboBox;
    Label8: TLabel;
    cxGroupBox1: TcxGroupBox;
    gbCliente: TcxGroupBox;
    Panel2: TPanel;
    Label1: TLabel;
    cdsLoteValeCliente: TDACDSDataTable;
    dsDocumentosCliente: TDADataSource;
    cdsDocumentosCliente: TDACDSDataTable;
    dsVales: TDADataSource;
    cdsVales: TDACDSDataTable;
    BtnConsultarSaldo: TcxButton;
    cxImageList1: TcxImageList;
    DADataSource1: TDADataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView1RecID: TcxGridDBColumn;
    cxGridDBTableView1LOTECUPONID: TcxGridDBColumn;
    cxGridDBTableView1FECHA: TcxGridDBColumn;
    cxGridDBTableView1STATUS: TcxGridDBColumn;
    cxGridDBTableView1TOTAL: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cdsCliente: TDACDSDataTable;
    dsCliente: TDADataSource;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView2RecID: TcxGridDBColumn;
    cxGridDBTableView2CUPONID: TcxGridDBColumn;
    cxGridDBTableView2REFERENCIA: TcxGridDBColumn;
    cxGridDBTableView2FECHAVALIDO: TcxGridDBColumn;
    cxGridDBTableView2STATUS: TcxGridDBColumn;
    cxGridDBTableView2BARRAS: TcxGridDBColumn;
    cxGridDBTableView2CLAVE: TcxGridDBColumn;
    cxGridDBTableView2IMPORTE: TcxGridDBColumn;
    spObtenReciboID: TDACDSDataTable;
    dsObtenReciboID: TDADataSource;
    dsObtenDoctosDebe: TDADataSource;
    cdsObtenDoctosDebe: TDACDSDataTable;
    cxGroupBox2: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3MovimientoID: TcxGridDBColumn;
    cxGridDBTableView3Referencia: TcxGridDBColumn;
    cxGridDBTableView3TotalFactura: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Splitter1: TSplitter;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    procedure cxGridDBTableView1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BtnConsultarSaldoClick(Sender: TObject);
    procedure edtClienteExit(Sender: TObject);
    procedure cxGridDBTableView2Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1SelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure cxGridDBTableView3Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGridDBColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure BuscarCliente;
    procedure ActionBuscar(Action: TBasicAction);
  public
    { Public declarations }
  protected
    procedure RegisterActions; override;
  end;

var
  frmConsultaValesClientes: TfrmConsultaValesClientes;

implementation

{$R *.dfm}

uses uDM, dmActions, ufrmBuscarCliente, ufrmBuscar;


procedure TfrmConsultaValesClientes.ActionBuscar(Action: TBasicAction);
begin
  BuscarCliente;
end;

procedure TfrmConsultaValesClientes.BtnConsultarSaldoClick(Sender: TObject);
begin
  inherited;
  cdsLoteValeCliente.Close;
  cdsLoteValeCliente.ParamByName('CLIENTEID').AsInteger:= edtCliente.EditValue;
  cdsLoteValeCliente.ParamByName('PERIODOINI').AsInteger:= cbPeriodoIni.EditValue;
  cdsLoteValeCliente.ParamByName('PERIODOFIN').AsInteger:= cbPeriodoFin.EditValue;
  cdsLoteValeCliente.ParamByName('EJERCICIO').AsInteger:= edtEjercicio.EditValue;
  cdsLoteValeCliente.Open;


  cdsLoteValeCliente.First;
  if not cdsLoteValeCliente.EOF then
  begin
    cdsVales.Close;
    cdsVales.ParamByName('LOTECUPONID').AsInteger:= cdsLoteValeCliente.FieldByName('LOTECUPONID').AsInteger;
    cdsVales.Open;
  end;

  cdsDocumentosCliente.Close;
  cdsDocumentosCliente.ParamByName('CLIENTEID').AsInteger:= edtCliente.EditValue;
  cdsDocumentosCliente.ParamByName('PERIODOINI').AsInteger:= cbPeriodoIni.EditValue;
  cdsDocumentosCliente.ParamByName('PERIODOFIN').AsInteger:= cbPeriodoFin.EditValue;
  cdsDocumentosCliente.ParamByName('EJERCICIO').AsInteger:= edtEjercicio.EditValue;
  cdsDocumentosCliente.Open;

  cdsObtenDoctosDebe.Close;
  cdsObtenDoctosDebe.ParamByName('CLIENTEID').AsInteger:= edtCliente.EditValue;
  cdsObtenDoctosDebe.ParamByName('PERIODOINI').AsInteger:= cbPeriodoIni.EditValue;
  cdsObtenDoctosDebe.ParamByName('PERIODOFIN').AsInteger:= cbPeriodoFin.EditValue;
  cdsObtenDoctosDebe.ParamByName('EJERCICIO').AsInteger:= edtEjercicio.EditValue;
  cdsObtenDoctosDebe.Open;

  cxGrid2.SetFocus;
end;

procedure TfrmConsultaValesClientes.BuscarCliente;
var
   Datos : TDatosBusqueda;
begin
   Datos:= PantallaBusqueda(TfrmBuscarCliente,'1,2,3');
   if Datos.OK then
   begin
     if Datos.Estatus <> 'A' then
     begin
        MessageDlg('Cliente no esta Activo', mtError, [mbOK], 0);
        Exit;
     end;
     edtCliente.Text :=inttostr(Datos.Clave);
     edtNombre.Text := Datos.Nombre;
   end;
end;

procedure TfrmConsultaValesClientes.cxGridDBColumn1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  Aux: TReporte;
begin
  inherited;
  Aux:=DM.Servidor.BuscarReporte('DOCUMENTOS');
  Try
     DM.Parametros.Seleccion:= cdsObtenDoctosDebe.FieldByName('MovimientoID').AsInteger;
     DM.Imprimir(Aux.SQL1, Aux.SQL2, Aux.Template, 'IMPRIMIENDO...', Aux.CampoJoin);
  Finally
     Aux.Free;
  end;
end;

procedure TfrmConsultaValesClientes.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if not cdsLoteValeCliente.EOF then
  begin
    cdsVales.Close;
    cdsVales.ParamByName('LOTECUPONID').AsInteger:= cdsLoteValeCliente.FieldByName('LOTECUPONID').AsInteger;
    cdsVales.Open;
  end;
end;

procedure TfrmConsultaValesClientes.cxGridDBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  Aux: TReporte;
begin
  inherited;
  Aux:=DM.Servidor.BuscarReporte('IMPRIMIR CUPONES');
  Try
     DM.Parametros.ClienteIni:= cdsLoteValeCliente.FieldByName('LOTECUPONID').AsInteger;
     DM.Imprimir(Aux.SQL1, Aux.SQL2, Aux.Template, 'IMPRIMIENDO...', Aux.CampoJoin);
  Finally
     Aux.Free;
  end;
end;

procedure TfrmConsultaValesClientes.cxGridDBTableView1SelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  inherited;
  if not cdsLoteValeCliente.EOF then
  begin
    cdsVales.Close;
    cdsVales.ParamByName('LOTECUPONID').AsInteger:= cdsLoteValeCliente.FieldByName('LOTECUPONID').AsInteger;
    cdsVales.Open;
  end;
end;

procedure TfrmConsultaValesClientes.cxGridDBTableView2Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  showmessage('x');
end;

procedure TfrmConsultaValesClientes.cxGridDBTableView3Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  Aux: TReporte;
  ReciboID: Integer;
begin
  inherited;

  spObtenReciboID.Close;
  spObtenReciboID.ParamByName('MOVIMIENTOID').asInteger:= cdsDocumentosCliente.FieldByName('MOVIMIENTOID').AsInteger;
  spObtenReciboID.Open;

  if not spObtenReciboID.EOF then
  begin
  ReciboID:= spObtenReciboID.FieldByName('RECIBOID').AsInteger;
  Aux:=DM.Servidor.BuscarReporte('REPORTE DE RECIBO');
  Try
     DM.Parametros.Seleccion:= ReciboId;
     DM.Imprimir(Aux.SQL1, Aux.SQL2, Aux.Template, 'IMPRIMIENDO...', Aux.CampoJoin);
  Finally
     Aux.Free;
  end;
  end;
end;

procedure TfrmConsultaValesClientes.edtClienteExit(Sender: TObject);
begin
  inherited;
  if edtCliente.Text <> '' then
  begin
    cdsCliente.Close;
    cdsCliente.ParamByName('Cliente').AsInteger := strToInt(edtCliente.Text);
    cdsCliente.Open;
  end
  else
    Exit;

  if not (cdsCliente.EOF) then
  begin
     edtCliente.Text := cdsCliente.FieldByName('ClienteID').AsString;
     edtNombre.Text:= cdsCliente.FieldByName('Nombre').AsString;
  end;
end;

procedure TfrmConsultaValesClientes.edtClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
     BuscarCliente;
end;

procedure TfrmConsultaValesClientes.FormCreate(Sender: TObject);
begin
  inherited;
  edtEjercicio.EditValue:= DM.Ejercicio;
  cbPeriodoIni.EditValue:= DM.Periodo;
  cbPeriodoFin.EditValue:= DM.Periodo;
end;

procedure TfrmConsultaValesClientes.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actBuscar, ActionBuscar);
end;

initialization
  ModuleInfoManager.RegisterModule('ConsultaValesCliente', TfrmConsultaValesClientes);

end.
