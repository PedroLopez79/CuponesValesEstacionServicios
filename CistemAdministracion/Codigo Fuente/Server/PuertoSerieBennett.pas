unit PuertoSerieBennett;

interface

uses
  PuertoSerial, CPort;

type
  TPuertoSerieBennett = class(TPuertoSerial)
  private
  public
    constructor Create; Override;
    function ArmaComando(Cad: String): String; override;
    function CheckSum(Cad: String): String; override;
    function ValidaRespuesta(Cad: String): Boolean; override;
    function ExtraeValorRespuesta(Cad: String): String; override;
  end;

implementation

uses fServerDataModule, LibraryValesCupones_Intf;

{ TPuertoSerieBennett }

function TPuertoSerieBennett.ArmaComando(Cad: String): String;
begin
  Result:=InicioTrama + Cad + FinTrama + CheckSum(Cad + FinTrama);
end;

function TPuertoSerieBennett.CheckSum(Cad: String): String;
var
  nLrcCalculado: Integer;
  nLen: Integer;
  nPos: Integer;
begin
  Result:='';
  if Cad = '' then
    Exit;
  if Cad[Length(Cad)] <> FinTrama then
    Cad:=Cad + FinTrama;

  nLen:= Length(Cad);
  nLrcCalculado:= 0;
  for nPos:= 1 to nLen do
  begin
      nLrcCalculado:= nLrcCalculado + ord(Cad[nPos]);
      If nLrcCalculado > 128 Then
          nLrcCalculado:= nLrcCalculado - 128
  end;
  nLrcCalculado:= nLrcCalculado - 128;
  nLrcCalculado:= nLrcCalculado * -1;
  Result:=Chr(nLrcCalculado);
end;

constructor TPuertoSerieBennett.Create;
begin
  inherited;
  InicioTrama:=#2;
  FinTrama:=#3;
  NumPuerto:=Global.Dispositivos[1].Puerto;
  Velocidad:=TBaudRate(Global.Dispositivos[1].Speed);
  Paridad:=TParityBits(Global.Dispositivos[1].Parity);
  BitsDatos:=TDataBits(Global.Dispositivos[1].DataBits);
  BitsParo:=TStopBits(Global.Dispositivos[1].StopBits);
  RetardoLectura:=Global.Dispositivos[1].RetardoLectura;
  RetardoCiclo:=Global.Dispositivos[1].RetardoCiclo;
end;

function TPuertoSerieBennett.ExtraeValorRespuesta(Cad: String): String;
var
  I: Integer;
begin
  Result:='';
  if Cad = '' then
    Exit;
  I:=Pos(InicioTrama, Cad);
  if I >=1 then
  begin
    if Pos(FinTrama, Cad) > 0 then
      Result:=Copy(Cad, I + 1, Pos(FinTrama, Cad) - 2);
  end;
end;

function TPuertoSerieBennett.ValidaRespuesta(Cad: String): Boolean;
var
  Ini, Fin: Integer;
begin
  Result:=True;
  if Cad = '' then
    Exit;
  Ini:=Pos(FinTrama, Cad);
  Fin:=Pos(FinTrama, Cad);
  Result:=(CheckSum(ExtraeValorRespuesta(Cad)) = Cad[Length(Cad)]) or ((Ini > 0) and (Fin > 0)) or (Pos(#6, Cad) > 0);
end;

end.