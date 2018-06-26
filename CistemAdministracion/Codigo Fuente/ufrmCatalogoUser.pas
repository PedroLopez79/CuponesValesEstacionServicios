unit ufrmCatalogoUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxmdaset, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxTextEdit, cxLabel, cxDBEdit, cxContainer, cxGroupBox,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmCatalogoUser = class(TfrmCatalogo)
    dbgCatalogoDBTableView1UsuarioID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    dbgCatalogoDBTableView1Usuario: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cdsEstacion: TDACDSDataTable;
    dsEstacion: TDADataSource;
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);

    procedure cdsCatalogoBeforePost(DataTable: TDADataTable);
    procedure dsCatalogoStateChange(Sender: TObject);


  private
     Editando, CambioClave: Boolean;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoUser: TfrmCatalogoUser;

implementation
uses Modules, uDM;

{$R *.dfm}
{ TfrmCatalogoUser }



procedure TfrmCatalogoUser.cdsCatalogoBeforePost(DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.ApplyUpdates();
 // if ((cdsCatalogo.State = dsInsert) or (CambioClave)) and (cdsCatalogo.FieldByName('Clave').AsString <> edtConfirmar.Text) then
 //  Application.MessageBox('La clave no coincide', 'Error', MB_OK+MB_ICONHAND+MB_DEFBUTTON1+MB_APPLMODAL);

end;






procedure TfrmCatalogoUser.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('UsuarioID').AsInteger:=DM.Servidor.Folio('UsuarioID', '');
  cxDBTextEdit2.SetFocus;
end;
procedure TfrmCatalogoUser.dsCatalogoStateChange(Sender: TObject);
begin
 {lblConfirmar.Visible:=False;
  edtConfirmar.Visible:=False;
  edtConfirmar.Text:='';
  CambioClave:=False;}
end;

initialization
  ModuleInfoManager.RegisterModule('ipo de Cambio', TfrmCatalogoUser);

end.
