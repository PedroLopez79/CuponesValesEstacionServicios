unit uCreditosValesCupones;

interface

uses LibraryValesCupones_Intf, LibraryValesCupones_Async, uROClient, uROWinInetHttpChannel,
  uRODynamicRequest;


type
  TCreditosValesCupones = class
  private
    FDefaultHost: String;
    function ServerFlotillas(Host: String): IServiceFlotillas_Async;
    function AsignaRegistroVenta(Venta: TRegistroVenta): LibraryFlotillas_Intf.TConsumo;
  public
    constructor Create(DefaultHost: String);
    function Cupon(Bomba, Grupo, ClienteID: Integer; Barras, Terminal: string): TCupon;
    function Tarjeta(Bomba: Integer; Referencia, NIP, KMS, Terminal: string): TTarjeta;
    function BuscaHost(Tipo, Gasolinero: Integer): String;
    function ValidaSecuencias(Gasolinero, Estacion: Integer; Secuencias: String): String;
    function BuscaTarjeta(VehiculoID: Integer): TTarjetaManual;
    procedure Consumo(Venta: TRegistroVenta; MiHost: String = '');
    procedure Consumos(Ventas: ARegistroVenta; MiHost: String = '');
    procedure CancelaGrupo(Grupo: Integer; MiHost: String = '');
    function Bancaria(Terminal, Supervisor, Track1, Track2: String; Venta: TRegistroVenta; MiHost: String = ''): String;
  end;

implementation

uses SysUtils, ServiceCistemGas_Impl, fServerDataModule, Controlador,
  UtileriasComun, Dialogs;

{ TFlotillas }

function TFlotillas.AsignaRegistroVenta(Venta: TRegistroVenta): TConsumo;
begin
  Result:=LibraryFlotillas_Intf.TConsumo.Create;
  Result.SecuenciaVenta:=Venta.Secuencia;
  Result.EstacionID:=Venta.Estacion;
  Result.FechaMovimiento:=Venta.FechaContable;
  Result.FechaCarga:=Venta.FechaCarga;
  Result.Ejercicio:=StrToInt(FormatDateTime('yyyy', Venta.FechaCarga));
  Result.Periodo:=StrToInt(FormatDateTime('m', Venta.FechaCarga));
  Result.Dia:=StrToInt(FormatDateTime('d', Venta.FechaCarga));
  Result.Turno:=Venta.Turno;
  Result.Kilometraje:=Venta.Kms;
  Result.Tarjeta:=Venta.Tarjeta;
  Result.PosicionCarga:=Venta.Bomba;
  Result.Cantidad:=Venta.VolumenServido;
  Result.Precio:=Venta.PrecioServido;
  Result.Importe:=Venta.ImporteServido;
  Result.ImpuestoImporte:=Decimales(Impuesto(Venta.ImporteServido, Venta.Impuesto), 2);
  Result.ImpuestoPorcentaje:=Venta.Impuesto;
  Result.CuentaContable:=Venta.CuentaContable;
  Result.ManualAutomatico:='A';
  Result.Facturado:=0;
  Result.EnIngresos:=0;
  Result.Auditado:=0;
  Result.FacturaID:=0;
  Result.ProductoID:=StrToInt(Venta.Codigo);
  Result.GasolineroID:=Venta.GasolineroID;
  Result.ClienteID:=Venta.ClienteID;
  Result.VehiculoID:=Venta.VehiculoID;
  Result.Referencia:=Venta.TipoTarjeta;
  if Venta.IEPS = 0 then
    Result.IEPS:=Global.Gasolinas[Global.Bombas[Venta.Bomba].Mangueras[Venta.Manguera].NoGasolina].IEPS
  else
    Result.IEPS:=Venta.IEPS;
end;

function TFlotillas.Bancaria(Terminal, Supervisor, Track1, Track2: String;
  Venta: TRegistroVenta; MiHost: String): String;
var
  Server: IServiceFlotillas_Async;
  OK: Boolean;
  I: Integer;
begin
  Result:='';
  try
    Global.Bombas[Venta.Bomba].Host:=BuscaHost(9, 0);
    Server:=ServerFlotillas(Global.Bombas[Venta.Bomba].Host);
    Server.Invoke_Bancaria(Terminal, Supervisor, Venta.Bomba, Venta.Estacion, Track1, Track2, Venta.ImporteServido, Venta.Secuencia);
    I:=0;
    OK:=False;
    while (I < 10) and (not OK) do
    begin
      Sleep(1000);
      if Server.AnswerReceived then
      begin
        Result:=Server.Retrieve_Bancaria;
        OK:=True;
      end;
      Inc(I);
    end;
  finally
  end;
end;

function TFlotillas.BuscaHost(Tipo, Gasolinero: Integer): String;
var
  Ok: Boolean;
  I: Integer;
begin
  Result:='';
  if Tipo <= 5 then
    Tipo:=1;
  Ok:=False;
  for I := 0 to Nodos.Count - 1 do
  begin
    if (Nodos[I].Tipo = Tipo) and (Nodos[I].Gasolinero = Gasolinero) then
    begin
      OK:=True;
      Result:=Nodos[I].Host;
      Break;
    end;
  end;
  if not OK then
    Result:=FDefaultHost;
end;

function TFlotillas.BuscaTarjeta(VehiculoID: Integer): TTarjetaManual;
var
  MiServer: IServiceFlotillas_Async;
  Datos: TDatosVehiculo;
  OK: Boolean;
  I: Integer;
begin
  Result:=TTarjetaManual.Create;
  Result.ClienteID:=0;
  Result.VehiculoID:=VehiculoID;
  Result.ClienteNombre:='';
  Result.Referencia:='';
  MiServer:=ServerFlotillas(BuscaHost(1, 0));
  MiServer.Invoke_DatosVehiculo(VehiculoID);
  I:=0;
  OK:=False;
  while (I < 10) and (not OK) do
  begin
    Sleep(1000);
    if MiServer.AnswerReceived then
    begin
      OK:=True;
      Datos:=MiServer.Retrieve_DatosVehiculo;
      Result.ClienteID:=Datos.ClienteID;
      Result.ClienteNombre:=Datos.ClienteNombre;
      Result.Referencia:=Datos.Referencia;
    end;
    Inc(I);
  end;
end;

procedure TFlotillas.CancelaGrupo(Grupo: Integer; MiHost: String = '');
var
  I: Integer;
  OK: Boolean;
  MiServer: IServiceFlotillas_Async;
begin
  try
    MiServer:=ServerFlotillas(MiHost);
    MiServer.Invoke_CancelaGrupo(Grupo);
    I:=0;
    OK:=False;
    while (I < 10) and (not OK) do
    begin
      Sleep(1000);
      if MiServer.AnswerReceived then
      begin
        MiServer.Retrieve_CancelaGrupo;
        Ok:=True;
      end;
      Inc(I);
    end;
  except
  end;
end;

procedure TFlotillas.Consumo(Venta: TRegistroVenta; MiHost: String = '');
var
  Consumo: LibraryFlotillas_Intf.TConsumo;
  MiServer: IServiceFlotillas_Async;
  OK: Boolean;
  I: Integer;
begin
  Consumo:=AsignaRegistroVenta(Venta);
  try
    if MiHost <> '' then
      MiServer:=ServerFlotillas(MiHost)
    else
      MiServer:=ServerFlotillas(Global.Bombas[Venta.Bomba].Host);
    case Venta.Tipo of
      5: MiServer.Invoke_QuemarCupon(Consumo, Consumo.Referencia);
      6: MiServer.Invoke_TarjetaConsumo('', Consumo)
    else
      MiServer.Invoke_TarjetaConsumo(Consumo.Tarjeta, Consumo);
    end;
    I:=0;
    OK:=False;
    while (I < 10) and (not OK) do
    begin
      Sleep(1000);
      if MiServer.AnswerReceived then
      begin
        if Venta.Tipo = 5 then
          MiServer.Retrieve_QuemarCupon;
        Ok:=True;
      end;
      Inc(I);
    end;
  finally
    Consumo.Free;
  end;
end;

procedure TFlotillas.Consumos(Ventas: ARegistroVenta; MiHost: String);
var
  MisConsumos: LibraryFlotillas_Intf.aConsumo;
  I: Integer;
  OK: Boolean;
  MiServer: IServiceFlotillas_Async;
begin
  MisConsumos:=LibraryFlotillas_Intf.aConsumo.Create;
  try
    for I := 0 to Ventas.Count - 1 do
      MisConsumos.Add(AsignaRegistroVenta(Ventas[I]));
    MiServer:=ServerFlotillas(MiHost);
    MiServer.Invoke_AgregaSecuencias(MisConsumos);
    Ok:=False;
    I:=0;
    while (I < 15) and (not OK) do
    begin
      Sleep(1000);
      if MiServer.AnswerReceived then
      begin
        OK:=MiServer.Retrieve_AgregaSecuencias;
        if OK = OK then
          OK:=True;
      end;
    end;
  finally
    MisConsumos.Free;
  end;
end;

constructor TFlotillas.Create(DefaultHost: String);
begin
  FDefaultHost:=DefaultHost;
end;

function TFlotillas.Cupon(Bomba, Grupo, ClienteID: Integer; Barras, Terminal: string): TCupon;
var
  Autoriza: TAutoriza;
  Server: IServiceFlotillas_Async;
  OK: Boolean;
  I: Integer;
  Aux: TCuponValido;
begin
  Result:=TCupon.Create;
  Autoriza:=TAutoriza.Create;
  try
    Autoriza.EstacionID:=Global.Estacion;
    Autoriza.PosicionCarga:=Bomba;
    Autoriza.Terminal:=Terminal;
    Autoriza.ClienteID:=ClienteID;
    Server:=ServerFlotillas(Global.Bombas[Bomba].Host);
    Server.Invoke_ObtenCuponValido(Barras, Grupo, Autoriza);
    I:=0;
    OK:=False;
    Result.Valido:=False;
    Result.Mensaje:='ERROR AL CONECTARSE CON EL SERVIDOR';
    while (I < 10) and (not OK) do
    begin
      Sleep(1000);
      if Server.AnswerReceived then
      begin
        Aux:=Server.Retrieve_ObtenCuponValido;
        Result.Valido:=Aux.Valido;
        Result.Mensaje:=Aux.MsnError;
        Result.Nombre:=Aux.Nombre;
        Result.RFC:=Aux.RFC;
        Result.RazonSocial:=Aux.RazonSocial;
        Result.Referencia:=Aux.Referencia;
        Result.ClienteID:=Aux.ClienteID;
        Result.VehiculoID:=Aux.VehiculoID;
        Result.Grupo:=Aux.Grupo;
        Result.GasolineroID:=Aux.GasolineroID;
        Result.Importe:=Aux.Importe;
        Aux.Free;
        OK:=True;
      end;
      Inc(I);
    end;
  finally
    Autoriza.Free;
  end;
end;

function TFlotillas.ServerFlotillas(Host: String): IServiceFlotillas_Async;
var
  fMessage: TROMessage;
  fChannel: TROWinInetHTTPChannel;
const
  URLFlotillas = 'http://%s:9002/BIN';
begin
  fMessage := CloneObject(ServerDataModule2.MiMessage) as TROMessage;
  fChannel := CloneObject(ServerDataModule2.MiChannel) as TROWinInetHTTPChannel;
  fChannel.TargetURL:=Format(URLFlotillas, [Host]);
  Result:=CoServiceFlotillas_Async.Create(fMessage, fChannel);
end;

function TFlotillas.Tarjeta(Bomba: Integer; Referencia, NIP, KMS, Terminal: string): TTarjeta;
var
  Autoriza: TAutoriza;
  Server: IServiceFlotillas_Async;
  OK: Boolean;
  I: Integer;
  Aux: TTarjeta;
  S: String;
begin
  Result:=TTarjeta.Create;
  Autoriza:=TAutoriza.Create;
  try
    Autoriza.EstacionID:=Global.Estacion;
    Autoriza.PosicionCarga:=Bomba;
    Autoriza.Referencia:=Copy(Referencia, 1, 16);
    if Copy(Referencia, 17, 4) <> '' then
      Autoriza.DigitoSeguridad:=StrToInt(Copy(Referencia, 17, 4))
    else
      Autoriza.DigitoSeguridad:=0;
    Autoriza.NIP:=NIP;
    if KMS <> '' then
      Autoriza.KMS:=StrToInt(KMS)
    else
      Autoriza.KMS:=0;
    //Autoriza.PresetMN:=PresetMN;
    //Autoriza.PresetLT:=PresetLT;
    Autoriza.Terminal:=Terminal;
    Autoriza.Magna:=Global.Gasolinas[1].Precio;
    Autoriza.Premium:=Global.Gasolinas[2].Precio;
    Autoriza.Diesel:=Global.Gasolinas[3].Precio;
    Autoriza.SeleccionDeProducto:='';
    for I := 1 to 4 do
    begin
      if Global.Bombas[Bomba].Mangueras[I].NoGasolina > 0 then
        Autoriza.SeleccionDeProducto:=Autoriza.SeleccionDeProducto + IntToStr(Global.Bombas[Bomba].Mangueras[I].NoGasolina);
    end;
    Server:=ServerFlotillas(Global.Bombas[Bomba].Host);
    Server.Invoke_AutorizaTarjeta(Autoriza);
    I:=0;
    OK:=False;
    Result.MsnError:='^ERROR AL CONECTARSE^ ^CON EL SERVIDOR^ ';
    while (I < 10) and (not OK) do
    begin
      Sleep(1000);
      if Server.AnswerReceived then
      begin
        Aux:=Server.Retrieve_AutorizaTarjeta;
        Result.Assign(Aux);
        Aux.Free;
        OK:=True;
        if Result.Valido then
        begin
          Global.Bombas[Bomba].VentaProceso.Nombre:=Result.Nombre;
          Global.Bombas[Bomba].VentaProceso.Empresa:=Result.RazonSocial;
          Global.Bombas[Bomba].VentaProceso.Registro:=Result.RFC;
          Global.Bombas[Bomba].VentaProceso.Mensaje:=Result.Mensaje;
          Global.Bombas[Bomba].VentaProceso.Saldo:=Result.Saldo;
          Global.Bombas[Bomba].VentaProceso.Identificacion:=Result.Identificacion;
          Global.Bombas[Bomba].VentaProceso.CentroCostos:=Result.CentroCostos;
          Global.Bombas[Bomba].VentaProceso.Site:=Result.Clasificacion;
          Global.Bombas[Bomba].VentaProceso.Tipo:=2;
          Global.Bombas[Bomba].VentaProceso.Tarjeta:=Autoriza.Referencia;
          Global.Bombas[Bomba].VentaProceso.ClienteID:=Result.ClienteID;
          Global.Bombas[Bomba].VentaProceso.VehiculoID:=Result.VehiculoID;
          Global.Bombas[Bomba].VentaProceso.GasolineroID:=Result.GasolineroID;
          Global.Bombas[Bomba].VentaProceso.VentaAutorizada:=Result.Cantidad;
          Global.Bombas[Bomba].VentaProceso.VentaVolumenImporte:=Result.LitrosImporte;
          Global.Bombas[Bomba].VentaProceso.NoTerminal:=Terminal;
          Global.Bombas[Bomba].VentaProceso.Kms:=Autoriza.KMS;
          Global.Bombas[Bomba].VentaProceso.Identificacion:=Result.Identificacion;
          Global.Bombas[Bomba].NuevoFlujo:=Result.Clasificacion;
          Global.Bombas[Bomba].Autorizacion:=taAutorizacionPreset;
          I:=0;
          if Length(Result.Productos) = 1 then
            I:=StrToInt(Result.Productos);
          Global.Bombas[Bomba].Autorizacion:=taTarjetaClub;

          if Result.LitrosImporte = 'I' then
          begin
            S:=FormatFloat('"IMPORTE: "$#,#0.00', Result.Cantidad);
            Control.Procesos.AgregarProceso(TProcesoPresetImporte, Bomba, I, Result.Cantidad);
            Sleep(300);
            Control.Procesos.AgregarProceso(TProcesoPresetImporte, Bomba, I, Result.Cantidad);
            Sleep(300);
            Control.Procesos.AgregarProceso(TProcesoPresetImporte, Bomba, I, Result.Cantidad);
          end
          else
          begin
            S:=FormatFloat('"VOLUMEN: "#,#0.000', Result.Cantidad);
            Control.Procesos.AgregarProceso(TProcesoPresetVolumen, Bomba, I, Result.Cantidad);
            Sleep(300);
            Control.Procesos.AgregarProceso(TProcesoPresetVolumen, Bomba, I, Result.Cantidad);
            Sleep(300);
            Control.Procesos.AgregarProceso(TProcesoPresetVolumen, Bomba, I, Result.Cantidad);
          end;

           Result.MsnError:='^TARJETA  AUTORIZADA^'+ S +'^INICIE SU DESPACHO^ ';
        end;
      end;
      Inc(I);
    end;
  finally
    Autoriza.Free;
  end;
end;

function TFlotillas.ValidaSecuencias(Gasolinero, Estacion: Integer; Secuencias: String): String;
var
  I: Integer;
  OK: Boolean;
  MiServer: IServiceFlotillas_Async;
begin
  MiServer:=ServerFlotillas(BuscaHost(1, Gasolinero));
  MiServer.Invoke_ValidaSecuencias(Estacion, Secuencias);
  I:=0;
  OK:=False;
  Result:='';
  while (I < 15) and (not OK) do
  begin
    Sleep(1000);
    if MiServer.AnswerReceived then
    begin
      OK:=True;
      Result:=MiServer.Retrieve_ValidaSecuencias;
    end;
    Inc(I);
  end;
end;

end.
