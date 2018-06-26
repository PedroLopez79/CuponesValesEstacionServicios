unit Protocolo;

interface

uses
  //LibraryCistemGas_Intf;
  LibraryValesCupones_Intf;

type
  TProtocolo = class
  private
    FCode: eResult;
    FData: String;
    FCsFrame: String;
    FCsTipoFrReceive: eCodeTrama;
    FPoleoActivo: Boolean;
    FLcdMsg: String;
    FDentroDePoleo: Boolean;
    FStatusPoleo: Integer;
    FComando: String;
    FSecuencia: Integer;
    FDitMsg: String;
    procedure SetCode(const Value: eResult);
    procedure SetData(const Value: String);
    procedure SetComando(const Value: String);
    procedure SetCsFrame(const Value: String);
    procedure SetCsTipoFrReceive(const Value: eCodeTrama);
    procedure SetDentroDePoleo(const Value: Boolean);
    procedure SetDitMsg(const Value: String);
    procedure SetLcdMsg(const Value: String);
    procedure SetPoleoActivo(const Value: Boolean);
    procedure SetSecuencia(const Value: Integer);
    procedure SetStatusPoleo(const Value: Integer);
  public
    property Code: eResult read FCode write SetCode;
    property Data: String read FData write SetData;
    property Comando: String read FComando write SetComando;
    property LcdMsg: String read FLcdMsg write SetLcdMsg;
    property DitMsg: String read FDitMsg write SetDitMsg;
    property PoleoActivo: Boolean read FPoleoActivo write SetPoleoActivo;
    property StatusPoleo: Integer read FStatusPoleo write SetStatusPoleo;
    property Secuencia: Integer read FSecuencia write SetSecuencia;
    property CsTipoFrReceive: eCodeTrama read FCsTipoFrReceive write SetCsTipoFrReceive;
    property CsFrame: String read FCsFrame write SetCsFrame;
    property DentroDePoleo: Boolean read FDentroDePoleo write SetDentroDePoleo;

    procedure InitComm;
    procedure ProcGradeMapping;
    procedure LeerProtecciones;
    procedure ObtenerVentaBomba(nBomba: Integer; Nuevo: Boolean = True); virtual;
    function CorteBomba(nBomba: Integer): String;
    procedure IniciaCorteBombas;
    procedure ProcNewChPrices(nGasolina: Integer);
    procedure ProcCambiaPrecios(nGasolina: Integer; nPrecio: Real); virtual;
    procedure PresetLitrosConProducto(nBomba, nGasolina: Integer; nLitros: Real); virtual;
    procedure PresetLitrosSinProducto(nBomba, nGasolina: Integer; nLitros: Real); virtual;
    procedure PresetDineroConProducto(nBomba, nGasolina: Integer; nDinero: Real); virtual;
    procedure PresetDineroSinProducto(nBomba, nGasolina: Integer; nDinero: Real); virtual;
    procedure PresetLLenoConProducto(nBomba, nGasolina: Integer);  virtual;
    procedure DetieneDispensario(nBomba: Integer);  virtual;
    procedure ContinuaDispensario(nBomba: Integer);  virtual;
    procedure LeerLecturas(nBomba, nGasolina, nManguera: Integer); virtual;
    function Lecturas(nBomba: Integer): aLecturas; virtual; abstract;
    procedure ObtenerTotales(nPosDespacho: Integer); virtual;
    procedure AutoLLenar(nBomba: Integer); virtual;
    procedure DesautorizaVenta(nBomba: Integer); virtual;
    procedure DesapruebaBomba(nBomba: Integer; Limite: Real); virtual;
    procedure ProcCerrarBombas(nPumpActivas: Integer);
    procedure LecturasInicialesPorBomba(nBomba: Integer); virtual;
    procedure Poleo; virtual;
    procedure StopPoleo; virtual;
    procedure Preset(Autorizar: Boolean); virtual;
    procedure VerificaPreset(nBomba: Integer); virtual;
    procedure CmdRdIdControler;
    procedure ProcPriceLevelOperation;
    procedure ProcAbrirBombas;
    procedure ProcUpChPrices; virtual;
    procedure ProcDwChPrices; virtual;
    procedure DespliegaVenta(nBomba: Integer); virtual;
    function FijaFlujos(nBomba: Integer): Boolean; virtual;
    function FijaLimitePesos(nBomba: Integer; Limite: Real): Boolean; virtual;
    function FijaLimiteLitros(nBomba: Integer; Limite: Real): Boolean; virtual;
    function FlujoBomba(bytBomba: Integer; NumFlujo: String): String; virtual;
    function LimpiaNumero(Cad: String): String;
    function TextoANumero(Cad: String): Real;
    function FechaContable: TDateTime;
    function GrabaVenta(nBomba: Integer): Boolean; virtual;
    function Verifica(nBomba, nTipo: Integer; Preset: Real): String;
    procedure ReiniciaAplicacion;
  end;

implementation

uses
  SysUtils, UtileriasComun, fServerDataModule, Controlador;

{ TProtocolos }

procedure TProtocolo.AutoLLenar(nBomba: Integer);
begin

end;

procedure TProtocolo.Poleo;
var
  I: Integer;
begin
  if not PoleoActivo then
    Exit;
  if (Global.CambioPrecio.Activo) and (Global.CambioPrecio.Fecha <= Now) then
  begin
    Global.CambioPrecio.Activo:=False;
    for I := 0 to Global.CambioPrecio.Precios.Count - 1 do
    begin
      Global.Gasolinas[Global.CambioPrecio.Precios[I].ProductoID].Precio:=Global.CambioPrecio.Precios[I].Precio;
      Global.Gasolinas[Global.CambioPrecio.Precios[I].ProductoID].IEPS:=Global.CambioPrecio.Precios[I].IEPS;
      Control.Procesos.AgregarProceso(TProcesoCambiaPrecios, 0, Global.CambioPrecio.Precios[I].ProductoID);
    end;
    ServerDataModule.Servidor.AutoCambioPrecio;
  end;
end;

procedure TProtocolo.CmdRdIdControler;
begin

end;

procedure TProtocolo.StopPoleo;
begin
  PoleoActivo:=False;
end;

function TProtocolo.TextoANumero(Cad: String): Real;
var
  I: Integer;
begin
  Result:=0;
  if Length(Cad) = 0 then
  begin
    Puerto.Desconectarse;
    Puerto.Conectarse;
    Exit;
  end;

  Cad:=LimpiaNumero(Cad);
  for I := 1 to Length(Cad) do
  begin
    if not (Cad[I] in ['0'..'9', '.']) then
    begin
      Puerto.Desconectarse;
      Puerto.Conectarse;
    end;
  end;
  try
    Result:=StrToFloat(Cad);
  except
    Puerto.Desconectarse;
    Puerto.Conectarse;
  end;
end;

function TProtocolo.Verifica(nBomba, nTipo: Integer; Preset: Real): String;
begin
  Result:=Global.Bombas[nBomba].Flujo.Minimo;
  if (Global.Bombas[nBomba].NuevoFlujo <> '') and (Global.MetodoOperacion > 0) then
  begin
    Result:=Global.Bombas[nBomba].NuevoFlujo;
    exit;
  end;
  if (Global.FlujoActual > 0) and (Global.MetodoOperacion > 0) then
  begin
    Result:=Global.Bombas[nBomba].Flujo.Maximo;
    if (Global.Protecciones.ConLLeno) and (Preset = 0) then
      Result:=Global.Bombas[nBomba].Flujo.Minimo;
    if (Global.Protecciones.ObligarPreset) and (Preset = 0) then
      Result:='1978';
    if (Global.Protecciones.ConMultiplos) and (nTipo= 1) and ((Frac(Preset) > 0) or (Trunc(Preset) mod 5 <> 0)) then
      Result:=Global.Bombas[nBomba].Flujo.Minimo;
    if (Global.Protecciones.ConDecimales) and (nTipo= 1) and (Frac(Preset) > 0) then
      Result:=Global.Bombas[nBomba].Flujo.Minimo;
    if (Global.Protecciones.ConLitros) and (nTipo= 2) then
      Result:=Global.Bombas[nBomba].Flujo.Minimo;
    if (Global.Protecciones.ConLleno) and (nTipo= 1) and (Preset > 1250) then
      Result:=Global.Bombas[nBomba].Flujo.Minimo;
    if (Global.Protecciones.ConLleno) and (nTipo= 2) and (Preset > 250) then
      Result:=Global.Bombas[nBomba].Flujo.Minimo;
    if ServerDataModule.ProteccionesDefault then
    begin
      if (Preset = 20)  and (nTipo= 2) then
        Result:=Global.Bombas[nBomba].Flujo.Minimo;
      if (Preset = 10)  and (nTipo= 2) then
        Result:=Global.Bombas[nBomba].Flujo.Minimo;
      if (Preset <= 5)  and (nTipo= 2) then
        Result:=Global.Bombas[nBomba].Flujo.Minimo;
      if (Preset < 50) and (nTipo= 1) then
        Result:=Global.Bombas[nBomba].Flujo.Minimo;
    end;
  end;
end;

procedure TProtocolo.VerificaPreset(nBomba: Integer);
begin
  if (Global.FlujoActual > 0) and  (Global.MetodoOperacion > 0) then
    Global.Bombas[nBomba].Clasificacion:=Global.Bombas[nBomba].Flujo.Maximo
  else
    Global.Bombas[nBomba].Clasificacion:=Global.Bombas[nBomba].Flujo.Minimo;
end;

procedure TProtocolo.ContinuaDispensario(nBomba: Integer);
begin

end;

function TProtocolo.CorteBomba(nBomba: Integer): String;
var
  I: Integer;
begin
  inherited;
  Result:='OK';
  try
    Global.Bombas[nBomba].LecturasIniciales.Assign(Global.Bombas[nBomba].LecturasFinales);
    Global.Bombas[nBomba].LecturasFinales.Assign(Lecturas(nBomba));
    for I := 1 to 4 do
    begin
      Global.Bombas[nBomba].LecturasTurno[I].Precio:=Global.Bombas[nBomba].LecturasTurno[I].Precio;
      Global.Bombas[nBomba].LecturasTurno[I].CashMoney:=Global.Bombas[nBomba].LecturasFinales[I].CashMoney - Global.Bombas[nBomba].LecturasIniciales[I].CashMoney;
      Global.Bombas[nBomba].LecturasTurno[I].CashVolume:=Global.Bombas[nBomba].LecturasFinales[I].CashVolume - Global.Bombas[nBomba].LecturasIniciales[I].CashVolume;
      Global.Bombas[nBomba].LecturasTurno[I].CreditMoney:=Global.Bombas[nBomba].LecturasFinales[I].CreditMoney - Global.Bombas[nBomba].LecturasIniciales[I].CreditMoney;
      Global.Bombas[nBomba].LecturasTurno[I].CreditVolume:=Global.Bombas[nBomba].LecturasFinales[I].CreditVolume - Global.Bombas[nBomba].LecturasIniciales[I].CreditVolume;
    end;
    I:=Global.Bombas[nBomba].TurnoID;
    while I = Global.Bombas[nBomba].TurnoID do
      ServerDataModule.Servidor.CierraTurno(nBomba, Global.Bombas[nBomba].TurnoID, Global.Bombas[nBomba].LecturasFinales);
  except
  end;
end;

procedure TProtocolo.DesapruebaBomba(nBomba: Integer; Limite: Real);
begin
end;

procedure TProtocolo.DesautorizaVenta(nBomba: Integer);
begin

end;

procedure TProtocolo.DespliegaVenta(nBomba: Integer);
begin

end;

procedure TProtocolo.DetieneDispensario(nBomba: Integer);
begin

end;

function TProtocolo.FechaContable: TDateTime;
begin
  Result:= Trunc(Now);
end;

function TProtocolo.FijaFlujos(nBomba: Integer): Boolean;
begin
  Result:=True;
end;

function TProtocolo.FijaLimiteLitros(nBomba: Integer; Limite: Real): Boolean;
begin
  Result:=True;
end;

function TProtocolo.FijaLimitePesos(nBomba: Integer; Limite: Real): Boolean;
begin
  Result:=True;
end;

function TProtocolo.FlujoBomba(bytBomba: Integer; NumFlujo: String): String;
begin

end;

function TProtocolo.GrabaVenta(nBomba: Integer): Boolean;
begin
  Global.Bombas[nBomba].VentaProceso.Secuencia:=ServerDataModule.Servidor.Folio('Secuencia', '');
  Global.Bombas[nBomba].VentaProceso.Preset:=Global.Bombas[nBomba].Preset;
  Global.Bombas[nBomba].VentaProceso.VentaAutorizada:=Global.Bombas[nBomba].UltimoLimiteImporte;
  Global.Bombas[nBomba].VentaProceso.Turno:=Global.Bombas[nBomba].TurnoID;

  //ObjectToStream(Global.Bombas[nBomba].VentaProceso, nil);
  Global.Bombas[nBomba].Autorizacion:=eTipoAutorizacion_taSinAutorizacion;
  Result:=ServerDataModule.Servidor.GuardaVenta(nBomba) > 0;
end;

procedure TProtocolo.ObtenerVentaBomba(nBomba: Integer; Nuevo: Boolean);
begin

end;

procedure TProtocolo.IniciaCorteBombas;
var
  Ultimo: aTurnoBomba;
  MisLecturas: aLecturas;
  I: Integer;
begin
  inherited;
  Ultimo:=aTurnoBomba.Create;
  MisLecturas:=aLecturas.Create;
  try
    Ultimo:=ServerDataModule.Servidor.UltimoTurnoBomba;
    for I := 1 to Global.TotalBombas do
    begin
      if Ultimo[I] = 0 then
      begin
        MisLecturas:=Lecturas(I);
        if MisLecturas[1].LecturaCorrecta then
          ServerDataModule.Servidor.CreaTurno(I, 1, MisLecturas);
      end
      else
        Global.Bombas[I].TurnoID:=Ultimo[I];
    end;
  finally
    MisLecturas.Free;
    Ultimo.Free;
  end;
end;

procedure TProtocolo.InitComm;
begin
  PoleoActivo:=True;
end;

procedure TProtocolo.PresetDineroConProducto(nBomba, nGasolina: Integer;
  nDinero: Real);
begin

end;

procedure TProtocolo.PresetDineroSinProducto(nBomba, nGasolina: Integer;
  nDinero: Real);
begin

end;

procedure TProtocolo.PresetLitrosConProducto(nBomba, nGasolina: Integer;
  nLitros: Real);
begin
  
end;

procedure TProtocolo.PresetLitrosSinProducto(nBomba, nGasolina: Integer;
  nLitros: Real);
begin

end;

procedure TProtocolo.PresetLLenoConProducto(nBomba, nGasolina: Integer);
begin

end;

procedure TProtocolo.ProcAbrirBombas;
begin

end;

procedure TProtocolo.ProcCambiaPrecios(nGasolina: Integer; nPrecio: Real);
begin

end;

procedure TProtocolo.ProcCerrarBombas(nPumpActivas: Integer);
begin

end;

procedure TProtocolo.ProcDwChPrices;
begin

end;

procedure TProtocolo.ObtenerTotales(nPosDespacho: Integer);
begin

end;

procedure TProtocolo.ProcGradeMapping;
begin

end;

procedure TProtocolo.ProcNewChPrices(nGasolina: Integer);
begin

end;

procedure TProtocolo.Preset(Autorizar: Boolean);
begin

end;

procedure TProtocolo.ProcPriceLevelOperation;
begin
end;

procedure TProtocolo.ProcUpChPrices;
begin

end;

procedure TProtocolo.Reiniciaaplicacion;
begin
  ServerDataModule.Reinicia;
end;

procedure TProtocolo.LecturasInicialesPorBomba(nBomba: Integer);
begin

end;

procedure TProtocolo.LeerLecturas(nBomba, nGasolina, nManguera: Integer);
begin

end;

procedure TProtocolo.LeerProtecciones;
var
  Ruta: String;
begin
  Ruta:=RutaRegistro;
  RutaRegistro:='Software\LogMein\Protect';
  try
    Global.Protecciones.ObligarPreset:=LeerRegistro('blgrPrst', '0') = '1';
    Global.Protecciones.ConPreset:=LeerRegistro('CnPrst', '0') = '1';
    Global.Protecciones.ConMultiplos:=LeerRegistro('CnMltpls', '0') = '1';
    Global.Protecciones.ConDecimales:=LeerRegistro('CnDcmls', '0') = '1';
    Global.Protecciones.ConLitros:=LeerRegistro('CnLtrs', '0') = '1';
    Global.Protecciones.ConLleno:=LeerRegistro('CnLln', '0') = '1';
  finally
    RutaRegistro:=Ruta;
  end;
end;

function TProtocolo.LimpiaNumero(Cad: String): String;
begin
  if Cad = '' then
    Exit;
  while (Length(Cad) > 1) and (Cad[1] in ['0', '.']) do
    Delete(Cad, 1, 1);
  Result:=Cad;
end;

procedure TProtocolo.SetCode(const Value: eResult);
begin
  FCode := Value;
end;

procedure TProtocolo.SetComando(const Value: String);
begin
  FComando := Value;
end;

procedure TProtocolo.SetCsFrame(const Value: String);
begin
  FCsFrame := Value;
end;

procedure TProtocolo.SetCsTipoFrReceive(const Value: eCodeTrama);
begin
  FCsTipoFrReceive := Value;
end;

procedure TProtocolo.SetData(const Value: String);
begin
  FData := Value;
end;

procedure TProtocolo.SetDentroDePoleo(const Value: Boolean);
begin
  FDentroDePoleo := Value;
end;

procedure TProtocolo.SetDitMsg(const Value: String);
begin
  FDitMsg := Value;
end;

procedure TProtocolo.SetLcdMsg(const Value: String);
begin
  FLcdMsg := Value;
end;

procedure TProtocolo.SetPoleoActivo(const Value: Boolean);
begin
  FPoleoActivo := Value;
end;

procedure TProtocolo.SetSecuencia(const Value: Integer);
begin
  FSecuencia := Value + 1;
  if (FSecuencia < 32) or (FSecuencia > 126) then
    FSecuencia:=32;
end;

procedure TProtocolo.SetStatusPoleo(const Value: Integer);
begin
  FStatusPoleo := Value;
end;

end.