unit ufrmMensaje;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, jpeg, ExtCtrls, StdCtrls, cxControls, cxContainer,
  cxEdit, cxLabel, dxSkinsCore, dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinDarkSide, dxSkinPumpkin,
  dxSkinSummer2008, dxSkinSpringTime, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TfrmMensaje = class(TfrmCustomModule)
    Image1: TImage;
    lblMensaje: TcxLabel;
    Timer1: TTimer;
    procedure FormPaint(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure Mensaje(Msg: String; Segundos: Integer);

implementation

uses ufrmPrincipal;

{$R *.dfm}

function Reemplaza(Cad: String): String;
begin
  Result:=Trim(Cad);
  if (Length(Result) >= 1) and (Result[1] = '^') then
    Delete(Result, 1, 1);
  
  while Pos('^', Result) > 0 do
  begin
    Insert(#10#13, Result, Pos('^', Result));
    Delete(Result, Pos('^', Result), 1);
  end;
end;

procedure Mensaje(Msg: String; Segundos: Integer);
var
  frmMensaje: TfrmMensaje;
begin
  LockWindowUpdate(Application.Handle);
  frmMensaje:=TfrmMensaje.Create(nil);
  try
    frmMensaje.lblMensaje.Caption:=Reemplaza(Msg);
    frmMensaje.Parent:=frmPrincipal.pnlPrincipal;
    frmMensaje.Width:=frmPrincipal.pnlPrincipal.Width;
    frmMensaje.Height:=frmPrincipal.pnlPrincipal.Height;
    frmMensaje.Top:=0;
    frmMensaje.Left:=0;
    LockWindowUpdate(Application.Handle);
    frmMensaje.Show;
    LockWindowUpdate(0);
    RedrawWindow(Application.Handle, nil, 0, RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN);
    frmMensaje.Repaint;
    Application.ProcessMessages;
    Application.HandleMessage;
    Sleep(Segundos * 1000);
  finally
    frmMensaje.Free;
  end;
end;

procedure TfrmMensaje.FormPaint(Sender: TObject);
begin
  inherited;
  lblMensaje.Left:=118;
  lblMensaje.Top:=47;
end;

procedure TfrmMensaje.Timer1Timer(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
