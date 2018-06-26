unit ufraBombaNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ComCtrls, dxSkinsCore, dxSkinsDefaultPainters, cxControls,
  cxContainer, cxListView, jpeg, ExtCtrls;

type
  TfraBombaNew = class(TFrame)
    lvBombas: TListView;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uDM, LibraryValesCupones_Intf;

{$R *.dfm}

function Imagen(Estado: eEstadoBomba; nBomba: Integer): Integer;
begin
  Result:=1;
  case Estado of
    //eEstadoBomba_ebOffLine: Result:=1;
    eEstadoBomba_ebOffLine: Result:= 21;
    eEstadoBomba_ebIdle: begin
              case DM.Global.Bombas[nBomba].Modo of
                eModoOperacion_moFullService: Result:=10;
                eModoOperacion_moConsola: Result:=11;
                eModoOperacion_moDeshabilitada: Result:=12;
              end;

            end;
    eEstadoBomba_ebCall: Result:=9;

    eEstadoBomba_ebBusy,
    eEstadoBomba_ebAuto: begin
              case DM.Global.Bombas[nBomba].Preset of
                eTipoPreset_tpLitrosConProducto,
                eTipoPreset_tpLitrosSinProducto: Result:=6;
                eTipoPreset_tpImporteSinProducto,
                eTipoPreset_tpImporteConProducto: Result:=4;
              else
                Result:=13;
              end;
              case DM.Global.Bombas[nBomba].Autorizacion of
                eTipoAutorizacion_taTarjetaClub, eTipoAutorizacion_taCupon: Result:=7;
                eTipoAutorizacion_taTarjetaBancaria: Result:=8;
              end;
            end;
    eEstadoBomba_ebPago: Result:=5;
    eEstadoBomba_ebStop: Result:=14;
    eEstadoBomba_ebUnknown: Result:=17;
  else
    Result:=-1;
  end;
  if Estado = eEstadoBomba_ebIdle then
    Exit;
end;


procedure TfraBombaNew.Timer1Timer(Sender: TObject);
var
  I: Integer;
begin
  if Timer1.Interval < 1000 then
  begin
    Timer1.Interval:=1000;
    lvBombas.Top:=13;
    lvBombas.Left:=137;
  end;

  {CONECCION CON 515 BOMBAS FISICAS}
  //if not DM.PoleaServidorGlobal.Conexion then
  //  Exit;
  {********************************}

  if lvBombas.Items.Count = 0 then
  begin
    for I := 1 to DM.Global.TotalBombas do
    begin
      if Pos(',' + IntToStr(I) + ',', ',' + DM.Bombas + ',') > 0 then
      begin
        with lvBombas.Items.Add do
        begin
          Caption:=Format('Bomba: %d',[I]);
          ImageIndex:=0;
          StateIndex:=I;
        end;
      end;
    end;
  end;

  for I := 0 to lvBombas.Items.Count - 1 do
    lvBombas.Items[I].ImageIndex:=Imagen(DM.Global.Bombas[lvBombas.Items[I].StateIndex].Estado, lvBombas.Items[I].StateIndex);
end;

end.
