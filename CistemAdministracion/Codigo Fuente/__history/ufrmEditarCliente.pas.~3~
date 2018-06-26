unit ufrmEditarCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxLookAndFeelPainters, cxCheckBox, cxDBEdit, cxTextEdit,
  cxLabel, cxContainer, cxEdit, cxGroupBox, cxPC, cxControls, DB, uDAInterfaces,
  uDADataTable, uDAScriptingProvider, uDAMemDataTable, Menus, StdCtrls,
  cxButtons, cxGraphics, cxLookAndFeels, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSpringTime;

type
  TfrmEditarCliente = class(TForm)
    cdsCatalogo: TDAMemDataTable;
    dsCatalogo: TDADataSource;
    pgcCatalogo: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    GrpBoxDatos: TcxGroupBox;
    LblClientes: TcxLabel;
    LblCliente: TcxLabel;
    LblCalle: TcxLabel;
    LblCiudad: TcxLabel;
    LblColonia: TcxLabel;
    LblTelefono: TcxLabel;
    LblCP: TcxLabel;
    LblRFC: TcxLabel;
    TxtCliente: TcxDBTextEdit;
    TxtNombre: TcxDBTextEdit;
    TxtGrupo: TcxDBTextEdit;
    TxtCalle: TcxDBTextEdit;
    TxtColonia: TcxDBTextEdit;
    TxtCiudad: TcxDBTextEdit;
    TxtTelefono: TcxDBTextEdit;
    TxtRFC: TcxDBTextEdit;
    LblGrupo: TcxLabel;
    TxtCP: TcxDBTextEdit;
    LblCurp: TcxLabel;
    TxtCurp: TcxDBTextEdit;
    CheckActivo: TcxDBCheckBox;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    datos: TcxTabSheet;
    btnAceptar: TcxButton;
    btnCancelar: TcxButton;
    cxLabel5: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBCheckBox5: TcxDBCheckBox;
    procedure pgcCatalogoPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Abrir(ClienteID: Integer);
  end;

  function EditarCliente(ClienteID: Integer): Boolean;

implementation

uses ufrmBuscarCliente, uDM, ufrmDatosPuntos;

{$R *.dfm}


function EditarCliente(ClienteID: Integer): Boolean;
var
  frmEditarCliente: TfrmEditarCliente;
begin
  frmEditarCliente:=TfrmEditarCliente.Create(nil);
  frmEditarCliente.Abrir(ClienteID);
  Result:=frmEditarCliente.ShowModal = mrOk;
  frmEditarCliente.Free;
end;

procedure TfrmEditarCliente.Abrir(ClienteID: Integer);
begin
  cdsCatalogo.Close;
  cdsCatalogo.ParamByName('ClienteID').AsInteger:=ClienteID;
  cdsCatalogo.Open;
end;

procedure TfrmEditarCliente.btnAceptarClick(Sender: TObject);
begin
  if cdsCatalogo.State in dsEditModes then
  begin
    cdsCatalogo.Post;
    cdsCatalogo.ApplyUpdates();
    ModalResult:=mrOk;
  end
  else
    ModalResult:=mrCancel;
end;

procedure TfrmEditarCliente.btnCancelarClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TfrmEditarCliente.pgcCatalogoPageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
  if (NewPage.PageIndex = 2) then
  begin
    AllowChange:=False;
    DatosPuntos(cdsCatalogo.FieldByName('ClienteID').AsInteger);
  end;
end;

end.
