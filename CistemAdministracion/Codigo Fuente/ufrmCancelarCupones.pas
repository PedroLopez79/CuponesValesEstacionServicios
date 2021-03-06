unit ufrmCancelarCupones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPC, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxLabel, cxTextEdit, cxCurrencyEdit, DB, uDAInterfaces, uDADataTable,
  uDAScriptingProvider, uDAMemDataTable, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxImageComboBox, cxMemo, ComCtrls, cxListView, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, cxLookAndFeelPainters,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxPCdxBarPopupMenu,
  cxLookAndFeels, cxNavigator, uDAFields, uROComponent;

type
  TfrmCancelarCupones = class(TfrmCustomModule)
    pgcCancelar: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    edtLoteCuponID: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    cdsLote: TDAMemDataTable;
    dsLote: TDADataSource;
    cxLabel3: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel6: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxLabel7: TcxLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxLabel8: TcxLabel;
    cdsCuponesLote: TDAMemDataTable;
    dsCuponesLote: TDADataSource;
    cxGrid1DBTableView1CuponID: TcxGridDBColumn;
    cxGrid1DBTableView1Importe: TcxGridDBColumn;
    cxGrid1DBTableView1Status: TcxGridDBColumn;
    cxGrid1DBTableView1FechaConsumo: TcxGridDBColumn;
    cxGrid1DBTableView1ConsumoEstacionID: TcxGridDBColumn;
    cxGrid1DBTableView1ConsumoSecuencia: TcxGridDBColumn;
    cxGrid1DBTableView1ConsumoBombaID: TcxGridDBColumn;
    cxGrid1DBTableView1ConsumoTurnoID: TcxGridDBColumn;
    cxGrid1DBTableView1ConsumoImporte: TcxGridDBColumn;
    cxGroupBox2: TcxGroupBox;
    cxLabel9: TcxLabel;
    edtCupon: TcxTextEdit;
    cxLabel10: TcxLabel;
    lvCupones: TcxListView;
    procedure edtLoteCuponIDExit(Sender: TObject);
    procedure cdsCuponesLoteCalcFields(DataTable: TDADataTable);
    procedure pgcCancelarChange(Sender: TObject);
    procedure edtCuponEnter(Sender: TObject);
    procedure edtCuponExit(Sender: TObject);
    procedure edtCuponKeyPress(Sender: TObject; var Key: Char);
    procedure lvCuponesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ActionCancelar(Action: TBasicAction);
    function ExisteEnLista(Cad: String): Boolean;
  public
    { Public declarations }
    procedure UpdateActionsState; override;
  protected
    procedure RegisterActions; override;
  end;

var
  frmCancelarCupones: TfrmCancelarCupones;

implementation

uses Modules, dmActions, dmImagenes, uDM, UtileriasComun;

{$R *.dfm}

{ TfrmCancelarCupones }

procedure TfrmCancelarCupones.ActionCancelar(Action: TBasicAction);
var
  Aux: TStrings;
  I: Integer;
begin
  if pgcCancelar.ActivePageIndex = 0 then
  begin
    if MessageDlg('�Deseas cancelar los cupones capturados?', mtConfirmation, [mbNo, mbYES], 0) = mrYes then
    begin
      Aux:=TStringList.Create;
      try
        for I := 0 to lvCupones.Items.Count - 1 do
          Aux.Add(lvCupones.Items[I].SubItems[0]);
        MessageDlg(DM.Servidor.CancelarCupones(Aux.Text, DM.Seguridad.idEmpleado), mtInformation, [mbOK], 0);
        lvCupones.Items.Clear;
      finally
        Aux.Free;
      end;
    end;
  end
  else
  begin
    if MessageDlg('�Deseas cancelar el lote de cupones?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      MessageDlg(DM.Servidor.CancelarLote(cdsLote.FieldByName('LoteCuponID').AsInteger, DM.Seguridad.idEmpleado), mtInformation, [mbOK], 0);
      edtLoteCuponIDExit(nil);
    end;
  end;
end;

procedure TfrmCancelarCupones.cdsCuponesLoteCalcFields(DataTable: TDADataTable);
begin
  inherited;
  cdsCuponesLote.FieldByName('Clave').AsString:=IDToClave(cdsCuponesLote.FieldByName('CuponID').AsInteger)
end;

procedure TfrmCancelarCupones.edtCuponEnter(Sender: TObject);
begin
  inherited;
  OkEnter:=False;
end;

procedure TfrmCancelarCupones.edtCuponExit(Sender: TObject);
begin
  inherited;
  OkEnter:=True;
end;

procedure TfrmCancelarCupones.edtCuponKeyPress(Sender: TObject; var Key: Char);
var
  S, Status: String;
begin
  inherited;
  if Key = #13 then
  begin
    Key:=#0;
    if Length(edtCupon.Text) = 16 then
      S:=edtCupon.Text
    else
      S:=IntToStr(ClaveToID(edtCupon.Text));
    if not ExisteEnLista(edtCupon.Text) then
    begin
      Status:=DM.Servidor.StatusCupon(S);
      if Status = 'A' then
      begin
        with lvCupones.Items.Add do
        begin
          Caption:=edtCupon.Text;
          SubItems.Add(S);
        end;
      end
      else
      begin
        if (Status = '') then
          MessageDlg('El codigo del cup�n no existe.', mtError, [mbYes], 0)
        else
          MessageDlg('El cup�n fu� consumido o inactivado.', mtError, [mbYes], 0);
      end;
    end
    else
      MessageDlg('El cup�n ya esta en la lista.', mtError, [mbYes], 0);
    edtCupon.Text:='';
    UpdateActionsState;
  end;
end;

procedure TfrmCancelarCupones.edtLoteCuponIDExit(Sender: TObject);
begin
  inherited;
  if edtLoteCuponID.Text = '' then
    Exit;
  cdsCuponesLote.Close;  
  cdsLote.Close;
  cdsLote.ParamByName('LoteCuponID').AsInteger:=Trunc(edtLoteCuponID.EditValue);
  cdsLote.Open;
  if cdsLote.RecordCount > 0 then
  begin
    cdsCuponesLote.Close;
    cdsCuponesLote.ParamByName('LoteCuponID').AsInteger:=Trunc(edtLoteCuponID.EditValue);
    cdsCuponesLote.Open;
  end
  else
  begin
    beep;
    edtLoteCuponID.Text:='';
    if edtLoteCuponID.CanFocus then
      edtLoteCuponID.SetFocus;
  end;
  UpdateActionsState;
end;

function TfrmCancelarCupones.ExisteEnLista(Cad: String): Boolean;
var
  I: Integer;
begin
  Result:=False;
  for I := 0 to lvCupones.Items.Count - 1 do
  begin
    if lvCupones.Items[I].Caption = Cad then
    begin
      Result:=True;
      Break;
    end;
  end;
end;

procedure TfrmCancelarCupones.FormCreate(Sender: TObject);
begin
  inherited;
  pgcCancelar.ActivePageIndex:=0;
end;

procedure TfrmCancelarCupones.lvCuponesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_DELETE) and (lvCupones.ItemIndex >= 0) then
  begin
    lvCupones.Items.Delete(lvCupones.ItemIndex);
    UpdateActionsState;
  end;
end;

procedure TfrmCancelarCupones.pgcCancelarChange(Sender: TObject);
begin
  inherited;
  UpdateActionsState;
end;

procedure TfrmCancelarCupones.RegisterActions;
begin
  inherited;
  RegisterAction(dmAppActions.actCancelar, ActionCancelar);
end;

procedure TfrmCancelarCupones.UpdateActionsState;
begin
  inherited;
  dmAppActions.actCancelar.Enabled:=((cdsLote.RecordCount > 0) and (pgcCancelar.ActivePageIndex = 1) and (cdsLote.FieldByName('Status').AsString = 'A')) or
                                    ((pgcCancelar.ActivePageIndex = 0) and (lvCupones.Items.Count > 0));
end;

initialization
  ModuleInfoManager.RegisterModule('Cancelar Cupones', TfrmCancelarCupones);

end.
