unit fServerForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
  ufrmServerForm, Menus, ExtCtrls, jpeg, ActiveX, dxGDIPlusClasses, CPort;

type
  TServerForm = class(TfrmServerForm)
    Com490: TComPort;
    Com395: TComPort;
    procedure FormCreate(Sender: TObject);
    procedure tmrHideTimer(Sender: TObject);
    procedure Com395RxChar(Sender: TObject; Count: Integer);
  private
    { Private declarations }
    TipoDispositivo: Integer;
    function LeerDatos(Puerto: TComPort): String;
    procedure AbrePuerto(Puerto: TComPort; Dispositivo: Integer);
    function MensajeTPV(Bomba: Integer; Terminal, Mensaje: String; TipoTrama: String = '03'): String;
    procedure EnviaPuerto(Mensaje: String);
    procedure ProcesaTrama(S: String);
    procedure ImprimeRecibo(Bomba: Integer; Terminal: String);
    procedure TarjetaTPV(Bomba: Integer; Terminal, Tarjeta: String; NIP, Odometro: Integer);
  public
    { Public declarations }
    HoraReinicio: String;
    procedure ValidaLicencia;
  end;

var
  ServerForm: TServerForm;

implementation
uses UtileriasComun, fServerDataModule, Controlador, LibraryValesCupones_Intf;

{$R *.dfm}

procedure TServerForm.AbrePuerto(Puerto: TComPort; Dispositivo: Integer);
begin
  Puerto.BaudRate:=TBaudRate(Global.Dispositivos[Dispositivo].Speed);
  Puerto.Parity.Bits:=TParityBits(Global.Dispositivos[Dispositivo].Parity);
  Puerto.StopBits:=TStopBits(Global.Dispositivos[Dispositivo].StopBits);
  Puerto.DataBits:=TDataBits(Global.Dispositivos[Dispositivo].DataBits);
  Puerto.Port:='COM' + IntToStr(Global.Dispositivos[Dispositivo].Puerto);
  try
    Puerto.Connected:=True;
  except
  end;
end;

procedure TServerForm.Com395RxChar(Sender: TObject; Count: Integer);
var
  S: String;
begin
  inherited;
  Sleep(150);
  try
    S:=LeerDatos((Sender as TComPort));
    EscribeSerialLog('Verifone', S);
    ProcesaTrama(S);
  except
  end;
end;

procedure TServerForm.EnviaPuerto(Mensaje: String);
var
  Puerto: TComPort;
begin
  Puerto:=Com395;
  if TipoDispositivo = 1 then
    Puerto:=Com490;
  try
    if Puerto.Connected then
      Puerto.WriteStr(Mensaje)
  except
  end;
end;


procedure TServerForm.FormCreate(Sender: TObject);
var
  I, J: Integer;
  Ruta: String;
begin
  inherited;
  CoInitialize (nil);
  HoraReinicio:= FormatFloat('0000', StrToInt(LeerRegistro('HoraReinicio','2315')));

  for I := 0 to 32 do
  begin
    Global.Bombas.Add;
    for J := 0 to 4 do
    begin
      Global.Bombas[I].Mangueras.Add;
      Global.Bombas[I].VentasTurno.Add;
      Global.Bombas[I].LecturasIniciales.Add;
      Global.Bombas[I].LecturasFinales.Add;
      Global.Bombas[I].LecturasTurno.Add;
      Global.Bombas[I].PendientesAplicar.Add;
    end;
    for J := 0 to 50 do
      Global.Bombas[I].FaltaPago.Add(False);
    if I<=5 then
    begin
      Global.Gasolinas.Add;
      Global.Conexiones.Add;
    end;
    if I<=10 then
      Global.Dispositivos.Add;
  end;


  ServerDataModule.Servidor.AsignaBombas;

  ValidaLicencia;

  ServerDataModule.Servidor.AsignaDispositivo;

  if Global.Licencia.Tanques then
    ServerDataModule.Servidor.AsignaTanques;

  Ruta:=RutaRegistro;
  RutaRegistro:='Software\LogMein\Protect';
  DebugSerialLog:=LeerRegistro('DubugSerialLog', '0') = 'MAGZ';

  if Global.Licencia.Produccion then
    Global.MetodoOperacion:=StrToInt(LeerRegistro('Metodo', '0'))
  else
    Global.MetodoOperacion:=0;


  Global.FlujoActual:=StrToInt(LeerRegistro('Flujo', '0'));
  if Global.MetodoOperacion = 0 then
    Global.FlujoActual:=0;

  RutaRegistro:=Ruta;


  {*CONECTA CON BOMBAS EN LA 515 CREA PROTOCOLO SEGUN MARCA DE DISP*}
  //Control:=TControlador.Create;
  {*****************************************************************}

  {*ABRE COM PARA VERIFONES 490 Y MAS ANTIGUOS}
  //if Global.Dispositivos[5].Activo then
  //begin
  //  try
  //    TipoDispositivo:=2;
  //    AbrePuerto(Com395, 5);
  //  except
  //  end;
  //end;

  //if Global.Dispositivos[6].Activo then
  //begin
  //  try
  //    TipoDispositivo:=1;
  //    AbrePuerto(Com490, 6);
  //  except
  //  end;
  //end;
  {*----------------------------------------------*}

   {*CONECTA CON BOMBAS 515 REALIZA LECTURAS CONSTANTES*}
  {*****************************************************************}
  //if Global.Licencia.Volumetrico then
  //  Control.IniciarPoleo;
  {*****************************************************************}

  //if not ServerDataModule.Server.Active then
  //   ServerDataModule.Server.Active := true;
  if not ServerDataModule.SuperServer.Active then
     ServerDataModule.SuperServer.Active:= true;
end;

procedure TServerForm.ImprimeRecibo(Bomba: Integer; Terminal: String);
var
  S: String;
begin
  if Bomba > Global.TotalBombas then
  begin
    EnviaPuerto(MensajeTPV(1, Terminal, Format('^E R R O R^ ^BOMBA [%d] NO EXISTE ^ ', [Bomba])));
    Exit;
  end;

 { if not (Global.Bombas[Bomba].Estado in [ebIdle]) then
  begin
    EnviaPuerto(MensajeTPV(1, Terminal, Format('^E R R O R^ ^BOMBA [%d] NO ESTA LISTA ^O EN PROCESO DE DESPACHO ', [Bomba])));
    Exit;
  end;}

  try
    S:='^00111M.PAGO: EFECTIVO  CHEQUE  TARJETA';
    S:= S + '^00011' + FormatDateTime('dd/mmm/yyyy hh:nn:ss AMPM', Global.Bombas[Bomba].VentaUltima.FechaCarga);
    S:= S + '^00011' + 'SIIC: ' + Global.SIIC;
    if Global.Bombas[Bomba].VentaUltima.Impreso = 0 then
      S:= S + '^00011O R I G I N A L'
    else
      S:= S + '^00011COPIA CLIENTE: ' + IntToStr(Global.Bombas[Bomba].VentaUltima.Impreso);
    S:= S + '^00011' + 'TICKET: ' + IntToStr(Global.Bombas[Bomba].VentaUltima.Secuencia);
    EnviaPuerto(MensajeTPV(1, Terminal, S, '05'));

    S:='^00011BOMBA: ' + FormatFloat('00', Bomba) + '   ' + Global.Bombas[Bomba].VentaUltima.ClavePemex + ' ' + Global.Bombas[Bomba].VentaUltima.Descripcion;
    if (Global.Bombas[Bomba].VentaUltima.Tipo in [2,3]) then
    begin
      if Length(Global.Bombas[Bomba].VentaUltima.Empresa) <= 30 then
        S:=S + Format('^00011%s', [Global.Bombas[Bomba].VentaUltima.Empresa])
      else
        S:=S + Format('^00011%s', [Copy(Global.Bombas[Bomba].VentaUltima.Empresa, 1, 30)]);

      {if Length(Global.Bombas[Bomba].VentaUltima.Empresa) <= 30 then
        S:=S + Format('^00011%s', [Global.Bombas[Bomba].VentaUltima.Identificacion])
      else
        S:=S + Format('^00011%s', [Copy(Global.Bombas[Bomba].VentaUltima.Identificacion, 1, 30)]);

      if Length(Global.Bombas[Bomba].VentaUltima.Empresa) <= 30 then
        S:=S + Format('^00011%s', [Global.Bombas[Bomba].VentaUltima.Nombre])
      else
        S:=S + Format('^00011%s', [Copy(Global.Bombas[Bomba].VentaUltima.Nombre, 1, 30)]);}

      S:=S + Format('^00011Referencia: %s', [Global.Bombas[Bomba].VentaUltima.Tarjeta]);

    end;
    S:= S + '^00011VOLUMEN...........' + Derecha(FormatFloat('#,#0.000', Global.Bombas[Bomba].VentaUltima.VolumenServido), 10);
    S:= S + '^00011PRECIO............' + Derecha(FormatFloat('#,#0.00', Global.Bombas[Bomba].VentaUltima.PrecioServido), 10);
    S:= S + '^00011IMPORTE SERVIDO...' + Derecha(FormatFloat('#,#0.00', Global.Bombas[Bomba].VentaUltima.ImporteServido), 10);
    S:= S + '^00011IVA...............' + Derecha(FormatFloat('#0%', Global.Bombas[Bomba].VentaUltima.Impuesto), 10);

    EnviaPuerto(MensajeTPV(1, Terminal, S, '07'));
    Global.Bombas[Bomba].VentaUltima.Impreso:=Global.Bombas[Bomba].VentaUltima.Impreso + 1;
    ServerDataModule.Servidor.IncrementarImpreso(Global.Bombas[Bomba].VentaUltima.Secuencia);
  except

  end;
end;

function TServerForm.LeerDatos(Puerto: TComPort): String;
var
  MiChar: String;
begin
  try
    michar:=#0;
    Result:='';
    while MiChar <> '' do
    begin
      Puerto.ReadStr(MiChar, 100);
      Result:=Result + MiChar;
      Sleep(80);
    end;
  finally
  end;
end;

function TServerForm.MensajeTPV(Bomba: Integer; Terminal, Mensaje,
  TipoTrama: String): String;
begin
  if TipoDispositivo = 1 Then
      Mensaje:= #2 + Terminal + '1' + TipoTrama + FormatFloat('00', Bomba) + UpperCase(Mensaje) + #3 + '@'
  else
      Mensaje:= #0#0#0#32#0#0#0 + Char(Ord(Terminal[1]) - 64) + #0#0#0 + Char(Ord(Terminal[1]) - 64) + #0#0#0#129#0 +  ';' +  #2 + Terminal + '1' + TipoTrama + FormatFloat('00', Bomba) + UpperCase(Mensaje) + #3 + '0' + #226;
  Mensaje:=StringReplace(Mensaje, '-', ' ', [rfReplaceAll, rfIgnoreCase]);
  Mensaje:=StringReplace(Mensaje, ',', '', [rfReplaceAll, rfIgnoreCase]);
  Result:=Mensaje;
end;

procedure TServerForm.ProcesaTrama(S: String);
var
  i, Bomba, Boton, NIP, Odometro: Integer;
  Terminal, Tarjeta: String;
begin
  I:=pos(#2, s);
  if I > 0 then
  begin
    Terminal:=Copy(S, I + 1, 1);
    boton:=StrToInt(Copy(S, I + 3, 2));
    bomba:=StrToInt(Copy(S, I + 5, 2));
    if boton = 2 then
      ImprimeRecibo(Bomba, Terminal);
    if boton = 1 then
    begin
      Tarjeta:=Copy(S, I + 8, 20);
      NIP:=StrToInt(Trim(Copy(S, I + 48, 10)));
      Odometro:=StrToInt(Trim(Copy(S, I + 58, 9)));
      TarjetaTPV(Bomba, Terminal, Tarjeta, NIP, Odometro);
    end;
  end;
end;

procedure TServerForm.TarjetaTPV(Bomba: Integer; Terminal, Tarjeta: String; NIP,
  Odometro: Integer);
var
  TipoTarjeta: Integer;
begin
  if not Global.Licencia.Flotillas then
  begin
    EnviaPuerto(MensajeTPV(1, Terminal, '^E R R O R^ ^NO TIENE LICENCIA PARA FLOTILLAS ^ '));
    Exit;
  end;

  if Bomba > Global.TotalBombas then
  begin
    EnviaPuerto(MensajeTPV(1, Terminal, Format('^E R R O R^ ^BOMBA [%d] NO EXISTE ^ ', [Bomba])));
    Exit;
  end;

  TipoTarjeta := StrToInt(Copy(Tarjeta, 1, 4));
  if TipoTarjeta = 6 then
    EnviaPuerto(MensajeTPV(1, Terminal, ServerDataModule.Servidor.PrefijaTarjetaFrecuente(Bomba, Tarjeta, IntToStr(Odometro), Terminal)))
  else
    EnviaPuerto(MensajeTPV(1, Terminal, ServerDataModule.Servidor.PrefijaTarjeta(Bomba, Tarjeta, IntToStr(NIP), IntToStr(Odometro), Terminal)));

  //EnviaPuerto(MensajeTPV(1, Terminal, ServerDataModule2.Servidor.PrefijaTarjeta(Bomba, Tarjeta, IntToStr(NIP), IntToStr(Odometro), Terminal, 0, 0)));
  //EnviaPuerto(MensajeTPV(1, Terminal, ServerDataModule2.Servidor.PrefijaTarjeta(Bomba, Tarjeta, IntToStr(NIP), IntToStr(Odometro), Terminal)));
end;

procedure TServerForm.tmrHideTimer(Sender: TObject);
begin
  inherited;
  if FormatDateTime('hhnn', Now) = ServerForm.HoraReinicio then
  begin
    //Aplicacion Reinicia
    tmrHide.Enabled:=False;
    //sleep(60000);
    ServerForm.RemueveIcono;
    AppRestart;
  end;
end;

procedure TServerForm.ValidaLicencia;
var
  Aux, Aux2, Verificador, Acumula: String;
  Ruta: String;
  Digito, DigitoLicencia: Integer;
  Valores: String;
  Fecha: TDateTime;
begin
  Ruta:=RutaRegistro;
  RutaRegistro:='Software\Cistem';
  Aux:=LeerRegistro('Licencia', '');
  RutaRegistro:=Ruta;
  if Length(Aux) <> 8 then
  begin
    ShowMessage('Sin Licencia');
    RemueveIcono;
    Application.Terminate;
  end
  else
  begin
    DigitoLicencia:=StrToInt(Aux[3] + Aux[7]);
    Aux2:=Copy(Aux, 1, 2) + Copy(Aux, 4, 2) + Aux[6] + Aux[8];
    Verificador:=IntToStr(StrToInt('$' + Aux2));
    Digito:=Modulo66(Verificador);
    Acumula:=IntToStr(Digito);
    Digito:=Modulo66(Verificador + Acumula);
    Acumula:=Acumula + IntToStr(Digito);
    Digito:=StrToInt(Acumula);

    if Digito <> DigitoLicencia then
    begin
      ShowMessage('Licencia Invalida');
      RemueveIcono;
      Application.Terminate;
    end
    else
    begin
      Estacion:=StrToInt('$' + Copy(Aux2, 1, 4)) - 10000;
      if Estacion <> Global.Estacion then
      begin
        ShowMessage('Estacion Invalida');
        RemueveIcono;
        Application.Terminate;
      end
      else
      begin
        Valores:=IntToBin(StrToInt('$' + Copy(Aux2, 5, 2)), 8);
        if Length(Valores) = 8 then
        begin
          Global.Licencia.Volumetrico:=Valores[1] = '1';
          Global.Licencia.Tanques:=Valores[2] = '1';
          Global.Licencia.Cualli:=Valores[3] = '1';
          Global.Licencia.Produccion:=Valores[4] = '1';
          Global.Licencia.Administracion:=Valores[5] = '1';
          Global.Licencia.Flotillas:=Valores[6] = '1';
          Global.Licencia.NA:=Valores[7] = '1';
          Global.Licencia.Definitiva:=Valores[8] = '1';
          if not Global.Licencia.Definitiva then
          begin
            Fecha:=Trunc(Now);
            RutaRegistro:='Software\Adobe';
            Valores:=LeerRegistro('Acrobat', IntTostr(Trunc(Fecha)));
            RutaRegistro:='Software\Cistem';
            Fecha:=StrToInt(Valores);
            if (Fecha > Now) or (Fecha + 90 > Now)  then
            begin
              ShowMessage('Licencia Temporal Agotada');
              RemueveIcono;
              Application.Terminate;
            end;
          end;
        end;
      end;
    end;
  end;
end;

end.
