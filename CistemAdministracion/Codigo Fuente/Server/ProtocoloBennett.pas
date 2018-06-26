unit ProtocoloBennett;

interface

uses
  Protocolo, PuertoSerieBennett, LibraryValesCupones_Intf, fServerDataModule;

type
  TProtocoloBennet = class(TProtocolo)
  private
    function MangueraABennett(nManguera: Integer): Integer;
    function VerificaEstadoBomba(Bomba: Integer): eEstadoBomba;
  public
    procedure Poleo; override;
    procedure Preset(Autorizar: Boolean); override;
    procedure VerificaPreset(nBomba: Integer); override;
    procedure AutoLLenar(nBomba: Integer); override;
    procedure ObtenerVentaBomba(nBomba: Integer; Nuevo: Boolean); override;
    procedure ObtenerTotales(nPosDespacho: Integer); override;

    procedure PresetLitrosConProducto(nBomba, nGasolina: Integer; nLitros: Real); override;
    procedure PresetLitrosSinProducto(nBomba, nGasolina: Integer; nLitros: Real); override;
    procedure PresetDineroConProducto(nBomba, nGasolina: Integer; nDinero: Real); override;
    procedure PresetDineroSinProducto(nBomba, nGasolina: Integer; nDinero: Real); override;
    procedure PresetLLenoConProducto(nBomba, nGasolina: Integer);  override;
    procedure DetieneDispensario(nBomba: Integer);  override;
    procedure ContinuaDispensario(nBomba: Integer);  override;

    function FijaLimitePesos(nBomba: Integer; Limite: Real): Boolean; override;
    function FijaLimiteLitros(nBomba: Integer; Limite: Real): Boolean; override;

    procedure LeerLecturas(nBomba, nGasolina, nManguera: Integer); override;
    function Lecturas(nBomba: Integer): aLecturas; override;
    procedure DespliegaVenta(nBomba: Integer); override;
    function FlujoBomba(bytBomba: Integer; NumFlujo: String): String; override;
    procedure DesautorizaVenta(nBomba: Integer); override;
    procedure DesapruebaBomba(nBomba: Integer; Limite: Real); override;
    function FijaFlujos(nBomba: Integer): Boolean; override;
    procedure ProcUpChPrices; override;
    procedure ProcDwChPrices; override;
    procedure ProcCambiaPrecios(nGasolina: Integer; nPrecio: Real); override;
    procedure LecturasInicialesPorBomba(nBomba: Integer); override;
  end;

implementation

uses
  UtileriasComun, SysUtils, Controlador, PuertoSerial;

{ TProtocoloBennet }

procedure TProtocoloBennet.AutoLLenar(nBomba: Integer);
var
  I: Integer;
begin
  inherited;
  if (Global.MetodoOperacion >= 1) and (not FijaFlujos(nBomba)) then
    Exit;

  Global.Bombas[nBomba].VentaProceso.VolumenServido:=0;
  Global.Bombas[nBomba].VentaProceso.ImporteServido:=0;
  Global.Bombas[nBomba].VentaProceso.PrecioServido:=0;
  Global.Bombas[nBomba].VentaProceso.VentaAutorizada:=0;

  Puerto.Status:= eCodeTrama_ctContinue;
  I:=1;
  While (Puerto.Status <> eCodeTrama_ctFrame) and (I <= 5) do
  begin
      Puerto.EnviaComando(FormatFloat('"S"00', nBomba));
      if Puerto.Status = eCodeTrama_ctFrame then
      begin
          Global.Bombas[nBomba].PendienteGrabar:=True;
          Global.Bombas[nBomba].Preset:=eTipoPreset_tpLibreSinProducto;
          Code:= eResult_eOk;
      end
      else
          Code:= eResult_eFail;
      Inc(I);
  end;
end;


procedure TProtocoloBennet.ContinuaDispensario(nBomba: Integer);
begin
  inherited;
  Puerto.EnviaComando(FormatFloat('"S"00', nBomba));
  if (Puerto.Status = eCodeTrama_ctFrame) or (Puerto.Status = eCodeTrama_ctAkc) then
    Global.Bombas[nBomba].Estado:= eEstadoBomba_ebUnknown;
end;

procedure TProtocoloBennet.DesapruebaBomba(nBomba: Integer; Limite: Real);
var
  I: Integer;
begin
  inherited;
  I:=1;
  repeat
    Puerto.EnviaComando(FormatFloat('"J"00', nBomba));
    if (Puerto.Status = eCodeTrama_ctFrame) or (Puerto.Status = eCodeTrama_ctAkc) or (Puerto.ValorRespuesta <> '') then
    begin
      Code:= eResult_eOK;
      FijaLimiteLitros(nBomba, 9999);
      Global.Bombas[nBomba].Autorizacion:=eTipoAutorizacion_taSinAutorizacion;
    end
    else
      Code:= eResult_eFail;
    Inc(I);
  until (I >= 5) or (Code = eResult_eOk);
end;

procedure TProtocoloBennet.DesautorizaVenta(nBomba: Integer);
var
  I,VentaTipo: Integer;
begin
  inherited;
  I:=1;
  repeat
    Puerto.EnviaComando(FormatFloat('"E"00', nBomba));
    if (Puerto.Status = eCodeTrama_ctFrame) or (Puerto.Status = eCodeTrama_ctAkc) or (Puerto.ValorRespuesta <> '') then
    begin
      Code:= eResult_eOk;
      Global.Bombas[nBomba].TiempoAutorizado:=0;
      Global.Bombas[nBomba].Autorizacion:=eTipoAutorizacion_taSinAutorizacion;

      VentaTipo := Global.Bombas[nBomba].VentaProceso.Tipo;
      if (VentaTipo = 2) and (Global.Bombas[nBomba].Estado in [eEstadoBomba_ebAuto, eEstadoBomba_ebStop]) then
      begin
        Global.Bombas[nBomba].VentaProceso.Tipo:=0;
        Global.Bombas[nBomba].VentaProceso.Tarjeta:='';
      end;
    end
    else
      Code:= eResult_eFail;
    Inc(I);
  until (I >= 5) or (Code = eResult_eOk);
end;

procedure TProtocoloBennet.DespliegaVenta(nBomba: Integer);
var
  bytNumComb: Integer;
  nPosIni: Integer;
  strDatos: String;
begin
  Puerto.EnviaComando(FormatFloat('"A"00', nBomba));
  if Puerto.Status = eCodeTrama_ctFrame then
  begin
    nPosIni:= Pos('A', Puerto.ValorRespuesta);
    strDatos:= Copy(Puerto.ValorRespuesta, nPosIni + 4, Length(Puerto.ValorRespuesta) - 4);
    if Global.Bombas[nBomba].CodigoProducto = eCodigoProducto_cpPorPosicion then
        bytNumComb:= Global.Bombas[nBomba].Mangueras[1].NoGasolina
    else
    begin
      If TextoANumero(Global.Bombas[nBomba].VentaProceso.Codigo) >= 1 then
          bytNumComb:= Trunc(TextoANumero(Global.Bombas[nBomba].VentaProceso.Codigo))
      else
          bytNumComb:= 1
    end;
    Global.Bombas[nBomba].VentaProceso.Codigo:= FormatFloat('00', bytNumComb);
    Global.Bombas[nBomba].VentaProceso.Descripcion:= Global.Gasolinas[bytNumComb].Nombre;
    Global.Bombas[nBomba].VentaProceso.ClavePemex:= Global.Gasolinas[bytNumComb].ClavePemex;

    Global.Bombas[nBomba].VentaProceso.VolumenServido:= TextoANumero(Copy(strDatos, 1, 6)) * Global.Bombas[nBomba].FactorDecimal.VentaVolumen;
    Global.Bombas[nBomba].VentaProceso.PrecioServido:= TextoANumero(Copy(strDatos, 13, 4)) * Global.Bombas[nBomba].FactorDecimal.VentaPrecio;
    if Global.Bombas[nBomba].VentaProceso.PrecioServido < 1 then
      Global.Bombas[nBomba].VentaProceso.PrecioServido:= Global.Gasolinas[bytNumComb].Precio;
    Global.Bombas[nBomba].VentaProceso.ImporteServido:= TextoANumero(Copy(strDatos, 7, 6)) * Global.Bombas[nBomba].FactorDecimal.VentaImporte;
  end;
end;

procedure TProtocoloBennet.DetieneDispensario(nBomba: Integer);
var
  I: Integer;
begin
  inherited;
  I:=1;
  repeat
    Puerto.EnviaComando(FormatFloat('"E"00', nBomba));
    Puerto.EnviaComando(FormatFloat('"E"00', nBomba));
    Puerto.EnviaComando(FormatFloat('"E"00', nBomba));
    if (Puerto.Status = eCodeTrama_ctFrame) or (Puerto.Status = eCodeTrama_ctAkc) then
      Global.Bombas[nBomba].Estado:= eEstadoBomba_ebStop;
    Inc(I);
  until (Puerto.Status = eCodeTrama_ctFrame) or (Puerto.Status = eCodeTrama_ctAkc) or (I > 5);
end;

function TProtocoloBennet.FijaFlujos(nBomba: Integer): Boolean;
var
  strDatos: String;
  Comando: String;
  Vueltas: Integer;
begin
  strDatos:= Global.Bombas[nBomba].Clasificacion;
  if TextoANumero(strDatos) < 0 then
      strDatos:= FormatFloat('000', TextoANumero(strDatos))
  else
  begin
    if TextoANumero(strDatos) = 0 then
        strDatos:= '000'
    else
    begin
      if TextoANumero(strDatos[1]) >= 9 then
          strDatos:= '999'
      else
          strDatos:=FormatFloat('000', TextoANumero(strDatos) * 100);
    end;
  end;

  if TextoANumero(strDatos) < 0 then
      Comando:= FormatFloat('"W"00', nBomba) + strDatos + strDatos + strDatos + strDatos
  else
      Comando:= FormatFloat('"W"00', nBomba) + '+' + strDatos  + '+' + strDatos  + '+' + strDatos  + '+' + strDatos;

  Vueltas:= 1;

  repeat
    Puerto.EnviaComando(Comando);
    Puerto.EnviaComando(Comando);
    if (Puerto.Status = eCodeTrama_ctFrame) and (Puerto.Respuesta <> '')  then
    begin
      Global.Bombas[nBomba].UltimoFlujo:= Global.Bombas[nBomba].Clasificacion;
      Code:= eResult_eOk;
    end
    else
    begin
      if Global.Bombas[nBomba].Estado = eEstadoBomba_ebOffLine then
        vueltas:=6
      else
        Sleep(300);
      Code:= eResult_eFail;
    end;
    Inc(Vueltas);
  until ((Vueltas > 5) or (Puerto.Status = eCodeTrama_ctFrame));
  Result:=Code = eResult_eOk;
end;

function TProtocoloBennet.FijaLimiteLitros(nBomba: Integer;
  Limite: Real): Boolean;
var
  cLitros: String;
  Respuesta: String;
  nPosIni, Vueltas: Integer;
begin
  Global.Bombas[nBomba].UltimoLimiteVolumen:= 0;
  Limite:= Trunc(Limite) * Global.Bombas[nBomba].FactorDecimal.PrefijarVolumen;
  cLitros:= FormatFloat('0000', Limite);
  result:= False;
  Vueltas:=1;
  repeat
    Puerto.EnviaComando(FormatFloat('"F"00', nBomba) + cLitros);
    if Puerto.Status = eCodeTrama_ctFrame then
    begin
        Puerto.EnviaComando(FormatFloat('"C"00', nBomba));
        nPosIni:= Pos('C', Puerto.ValorRespuesta);
        if nPosIni > 0 then
        begin
            Respuesta:= Copy(Puerto.ValorRespuesta, nPosIni + 1, Length(Puerto.ValorRespuesta) - nPosIni + 1);

            if Copy(Respuesta, 3, 4) = cLitros then
            begin
                result:= True;
                Global.Bombas[nBomba].UltimoLimiteVolumen:= Limite;
                Code:= eResult_eOk;
            end
            else
            begin
                Puerto.Status:= eCodeTrama_ctContinue;
                Code:= eResult_eFail;
                Result:=False;
            end;
        end
        else
        begin
            Puerto.Status:= eCodeTrama_ctContinue;
            Code:= eResult_eFail;
        end;
    end
    else
    begin
      Puerto.Status:= eCodeTrama_ctContinue;
      Code:= eResult_eFail;
    end;
    Inc(Vueltas);
  until (Vueltas >= 5) or (Result);
end;

function TProtocoloBennet.FijaLimitePesos(nBomba: Integer;
  Limite: Real): Boolean;
var
  I, nPosIni: Integer;
  Aux, cImporte: String;
begin
//  FijaLimiteLitros(nBomba, 9000);
  Limite:=Limite * Global.Bombas[nBomba].FactorDecimal.PrefijarImporte;
  cImporte:= FormatFloat('000000', Limite);

  result:= False;
  I:=1;
  repeat
    if Global.Bombas[nBomba].TipoDispensario <> 3 Then
      Puerto.EnviaComando(FormatFloat('"K"00"2"', nBomba))
    else
      Puerto.Status:= eCodeTrama_ctFrame;
    if Puerto.Status = eCodeTrama_ctFrame then
    begin
      Puerto.EnviaComando(FormatFloat('"P"00', nBomba) + cImporte);
      if Puerto.Status = eCodeTrama_ctFrame then
      begin
        Puerto.EnviaComando(FormatFloat('"H"00', nBomba));
        nPosIni:= Pos('H', Puerto.ValorRespuesta);
        if nPosIni > 0 then
        begin
            Aux:=Copy(Puerto.ValorRespuesta, nPosIni + 3, 6);
            if Aux = cImporte then
            begin
                Result:= True;
                Global.Bombas[nBomba].UltimoLimiteImporte:= Limite;
                Code:= eResult_eOk;
            end
            else
            begin
              Puerto.Status := eCodeTrama_ctContinue;
              Code:= eResult_eFail;
            end;
        end
        else
        begin
          Puerto.Status:= eCodeTrama_ctContinue;
          Code:= eResult_eFail;
        end;
      end
      else
      begin
          Puerto.Status:= eCodeTrama_ctContinue;
          Code:= eResult_eFail;
      end;
    end;
    Inc(I);
  until (Result) or (I>=5);
end;

function TProtocoloBennet.FlujoBomba(bytBomba: Integer;
  NumFlujo: String): String;
begin
  Result:='';

  if Global.FlujoActual = 1 then
  begin
    if Length(NumFlujo) = 1 then
    begin
      if NumFlujo = '1' then
          Result:= Global.Bombas[bytBomba].Flujo.Maximo
      else
          Result:= Global.Bombas[bytBomba].Flujo.Minimo;
    end;
  end;

  if Length(Trim(Result)) = 0 then
    Result:= Global.Bombas[bytBomba].Flujo.Minimo;
end;

function TProtocoloBennet.Lecturas(nBomba: Integer): aLecturas;
var
  nPosIni: Integer;
  veces: Integer;
  I: Integer;
begin
  Result:=aLecturas.Create;
  for nPosIni := 0 to 4 do
  begin
    Result.Add;
    Result[nPosIni].LecturaCorrecta:=False;
  end;
  Veces:=0;
  Code:=eResult_eFail;
  repeat
    Inc(Veces);
    Puerto.EnviaComando(FormatFloat('N00', nBomba));
    if Puerto.Status = eCodeTrama_ctFrame then
    begin
      nPosIni:= Pos('N', Puerto.ValorRespuesta);
      if nPosIni > 0 then
      begin
          if nBomba = TextoANumero(Copy(Puerto.ValorRespuesta, 2, 2)) then
          begin
//            Result[Global.Bombas[nBomba].Mangueras[1].NoGasolina].CashVolume:= TextoANumero(Copy(Puerto.ValorRespuesta, 5, 10)) * Global.Bombas[nBomba].FactorDecimal.LecturasVolumen;
//            Result[Global.Bombas[nBomba].Mangueras[2].NoGasolina].CashVolume:= TextoANumero(Copy(Puerto.ValorRespuesta, 15, 10)) * Global.Bombas[nBomba].FactorDecimal.LecturasVolumen;
//            Result[Global.Bombas[nBomba].Mangueras[3].NoGasolina].CashVolume:= TextoANumero(Copy(Puerto.ValorRespuesta, 25, 10)) * Global.Bombas[nBomba].FactorDecimal.LecturasVolumen;
//            Result[Global.Bombas[nBomba].Mangueras[4].NoGasolina].CashVolume:= TextoANumero(Copy(Puerto.ValorRespuesta, 35, 10)) * Global.Bombas[nBomba].FactorDecimal.LecturasVolumen;
            Result[1].CashVolume:= TextoANumero(Copy(Puerto.ValorRespuesta, 5, 10)) * Global.Bombas[nBomba].FactorDecimal.LecturasVolumen;
            Result[2].CashVolume:= TextoANumero(Copy(Puerto.ValorRespuesta, 15, 10)) * Global.Bombas[nBomba].FactorDecimal.LecturasVolumen;
            Result[4].CashVolume:= TextoANumero(Copy(Puerto.ValorRespuesta, 25, 10)) * Global.Bombas[nBomba].FactorDecimal.LecturasVolumen;
            Result[3].CashVolume:= TextoANumero(Copy(Puerto.ValorRespuesta, 35, 10)) * Global.Bombas[nBomba].FactorDecimal.LecturasVolumen;
            Code:= eResult_eOk;
          end;
      end
      else
        Puerto.Status:=eCodeTrama_ctContinue;
    end;
    for I := 1 to 4 do
      if (Result[I].CashVolume <> 0) then
        Code:= eResult_eOk;

  until (Code = eResult_eOK) or (Veces >= 5);

  Veces:=0;
  Code:=eResult_eFail;
  repeat
    Inc(Veces);
    Puerto.EnviaComando(FormatFloat('$00', nBomba));
    if Puerto.Status = eCodeTrama_ctFrame then
    begin
      nPosIni:= Pos('$', Puerto.ValorRespuesta);
      if nPosIni > 0 then
      begin
          if nBomba = TextoANumero(Copy(Puerto.ValorRespuesta, 2, 2)) then
          begin
//            Result[Global.Bombas[nBomba].Mangueras[1].NoGasolina].CashMoney:= TextoANumero(Copy(Puerto.ValorRespuesta, 5, 10)) * Global.Bombas[nBomba].FactorDecimal.LecturasImporte;
//            Result[Global.Bombas[nBomba].Mangueras[2].NoGasolina].CashMoney:= TextoANumero(Copy(Puerto.ValorRespuesta, 15, 10)) * Global.Bombas[nBomba].FactorDecimal.LecturasImporte;
//            Result[Global.Bombas[nBomba].Mangueras[3].NoGasolina].CashMoney:= TextoANumero(Copy(Puerto.ValorRespuesta, 25, 10)) * Global.Bombas[nBomba].FactorDecimal.LecturasImporte;
//            Result[Global.Bombas[nBomba].Mangueras[4].NoGasolina].CashMoney:= TextoANumero(Copy(Puerto.ValorRespuesta, 35, 10)) * Global.Bombas[nBomba].FactorDecimal.LecturasImporte;
            Result[1].CashMoney:= TextoANumero(Copy(Puerto.ValorRespuesta, 5, 10)) * Global.Bombas[nBomba].FactorDecimal.LecturasImporte;
            Result[2].CashMoney:= TextoANumero(Copy(Puerto.ValorRespuesta, 15, 10)) * Global.Bombas[nBomba].FactorDecimal.LecturasImporte;
            Result[4].CashMoney:= TextoANumero(Copy(Puerto.ValorRespuesta, 25, 10)) * Global.Bombas[nBomba].FactorDecimal.LecturasImporte;
            Result[3].CashMoney:= TextoANumero(Copy(Puerto.ValorRespuesta, 35, 10)) * Global.Bombas[nBomba].FactorDecimal.LecturasImporte;
        end;
      end
      else
        Puerto.Status:=eCodeTrama_ctContinue;
    end;
    for I := 1 to 4 do
      if (Result[I].CashVolume <> 0) then
        Code:= eResult_eOk;
  until (Code = eResult_eOK) or (Veces >= 5);
  for nPosIni := 0 to 4 do
    Result[nPosIni].LecturaCorrecta:=(Result[nPosIni].CashMoney <> 0) or (Result[nPosIni].CashVolume <> 0);
end;

procedure TProtocoloBennet.LecturasInicialesPorBomba(nBomba: Integer);
begin
  inherited;
  Global.Bombas[nBomba].LecturasIniciales.Assign(Lecturas(nBomba));
  Global.Bombas[nBomba].LecturasFinales.Assign(Global.Bombas[nBomba].LecturasIniciales);
end;

procedure TProtocoloBennet.LeerLecturas(nBomba, nGasolina, nManguera: Integer);
begin
  inherited;
  Global.Bombas[nBomba].LecturasFinales.Assign(Lecturas(nBomba));
end;

function TProtocoloBennet.MangueraABennett(nManguera: Integer): Integer;
begin
  Result:=nManguera;
  if Result in [3, 4] then
  begin
    if Result = 3 then
      Result:=4
    else
      Result:=3;
  end;
end;

procedure TProtocoloBennet.ObtenerTotales(nPosDespacho: Integer);
var
  nBomba: Integer;
  bSalida: Boolean;
  nVeces: Integer;
  Ini, Fin: Integer;
begin
  if nPosDespacho = 0 then
  begin
    Ini:=1;
    Fin:=Global.TotalBombas;
  end
  else
  begin
    Ini:=nPosDespacho;
    Fin:=nPosDespacho;
  end;
  for nBomba:= Ini To Fin do
    Global.Bombas[nBomba].Pendiente:= Global.Bombas[nBomba].Estado <> eEstadoBomba_ebOffLine;
  nVeces:= 1;
  repeat
    for nBomba:=Ini to Fin do
    begin
      if Global.Bombas[nBomba].Pendiente = True then
        LeerLecturas(nBomba, 1, 1);
    end;

    bSalida:= True;
    Inc(nVeces);
    for nBomba:= Ini to Fin do
    begin
      if Global.Bombas[nBomba].Pendiente = True then
        bSalida:= False;
    end;
  until (Not bSalida) or (nVeces <= 6)
end;

procedure TProtocoloBennet.ObtenerVentaBomba(nBomba: Integer; Nuevo: Boolean);
var
  nPosIni: Integer;
  strDatos: String;
  bytNumComb: Integer;
begin
  Global.Bombas[nBomba].Guardando:=True;
  Puerto.EnviaComando(FormatFloat('"A"00', nBomba));
  if Puerto.Status <> eCodeTrama_ctFrame then
  begin
    strDatos:=Copy(Puerto.ValorRespuesta, 1, 2);
    if Pos(#3, strDatos) >= 1 then
      Puerto.Status:=eCodeTrama_ctFrame;
  end;

  if Puerto.Status <> eCodeTrama_ctFrame then
    Exit;
  Code:=eResult_eFail;

  nPosIni:= Pos('A', Puerto.ValorRespuesta);

  if nPosIni > 0 then
    strDatos:= Copy(Puerto.ValorRespuesta, nPosIni + 4, Length(Puerto.ValorRespuesta) - 4);

  if Global.Bombas[nBomba].CodigoProducto = eCodigoProducto_cpPorPosicion then
      bytNumComb:= Global.Bombas[nBomba].Mangueras[1].NoGasolina
  else
  begin
    if TextoANumero(Global.Bombas[nBomba].VentaProceso.Codigo) >= 1 Then
        bytNumComb:= Trunc(TextoANumero(Global.Bombas[nBomba].VentaProceso.Codigo))
    else
        bytNumComb:= 1;
  end;

  Global.Bombas[nBomba].VentaProceso.Descripcion:=Global.Gasolinas[bytNumComb].Nombre;
  Global.Bombas[nBomba].VentaProceso.ClavePemex:=Global.Gasolinas[bytNumComb].ClavePemex;
  Global.Bombas[nBomba].VentaProceso.IEPS:=Global.Gasolinas[bytNumComb].IEPS;
  Global.Bombas[nBomba].VentaProceso.PrecioServido:=Global.Gasolinas[bytNumComb].Precio;

  Global.Bombas[nBomba].VentaProceso.ImporteServido:=TextoANumero(Copy(strDatos, 7, 6)) * Global.Bombas[nBomba].FactorDecimal.VentaImporte;
  Global.Bombas[nBomba].VentaProceso.VolumenServido:=StrToFloat(FormatFloat('#0.000', Global.Bombas[nBomba].VentaProceso.ImporteServido / Global.Bombas[nBomba].VentaProceso.PrecioServido));

  if (Global.Bombas[nBomba].Autorizacion = eTipoAutorizacion_taAutorizacionPreset) or (Global.Bombas[nBomba].Autorizacion = eTipoAutorizacion_taSinAutorizacion) then
    Global.Bombas[nBomba].VentaProceso.Movimiento:= '0';

  Global.Bombas[nBomba].VentaProceso.FechaContable:= FechaContable;
  Global.Bombas[nBomba].VentaProceso.FechaCarga:= Now;

  GrabaVenta(nBomba);

  DesapruebaBomba(nBomba, 0);

  Global.Bombas[nbomba].Estado:=eEstadoBomba_ebIdle;
  Global.Bombas[nBomba].PendienteGrabar:= False;
  Global.Bombas[nBomba].VentaProceso.VentaAutorizada:= 0;
  Global.Bombas[nBomba].Autorizacion:= eTipoAutorizacion_taSinAutorizacion;
  Global.Bombas[nBomba].Clasificacion:= '';
  Global.Bombas[nBomba].TiempoAutorizado:=0;
end;

procedure TProtocoloBennet.Poleo;
var
  I: Integer;
  nPos: Integer;
  Cad, Edo: String;
  EstadoAnterior: eEstadoBomba;
begin
  inherited;
  Global.TotalCiclos:=Global.TotalCiclos + 1;
  if Global.TotalCiclos >= 20 then
  begin
    Puerto.Desconectarse;
    Puerto.Conectarse;
    Global.TotalCiclos:=0;
  end;

  Puerto.EnviaComando('B00');
  if Puerto.Status =  eCodeTrama_ctFrame then
  begin
    nPos:=Pos('B00', Puerto.ValorRespuesta);
    if nPos > 0 then
    begin
      nPos:= nPos + 3;
      Cad:=Copy(Puerto.ValorRespuesta, nPos, Length(Puerto.ValorRespuesta) - 4);
      Code:=eResult_eOk;
      I:= 1;
      while (Length(Cad) > 1) And (I <= Global.TotalBombas) do
      begin
          Edo:=Copy(Cad, 1, 2);
          Delete(Cad, 1, 2);

          if IsNumeric(Copy(Edo, 1, 1)) then
          begin
              nPos:=Trunc(TextoANumero(Copy(Edo, 1, 1)));
              Global.Bombas[I].VentaProceso.Manguera:=MangueraABennett(nPos);
              if Global.Bombas[I].VentaProceso.Manguera <= 4 then
              begin
                nPos:=Global.Bombas[I].Mangueras[Global.Bombas[I].VentaProceso.Manguera].NoGasolina;
                Global.Bombas[I].VentaProceso.Codigo:= FormatFloat('00', nPos);
              end;
          end;


         EstadoAnterior:= Global.Bombas[I].Estado;
         if Trunc(TextoANumero(Edo[2])) in [1..8] then
           Global.Bombas[I].AutorizacionAutomatica:=0;

          case Trunc(TextoANumero(Edo[2])) of
            0: begin
                 Global.Bombas[I].AutorizacionAutomatica:=Global.Bombas[I].AutorizacionAutomatica + 1;
                 if Global.Bombas[I].AutorizacionAutomatica = 10 then
                 begin
                   Global.Bombas[I].AutorizacionAutomatica:=0;
                   Global.Bombas[I].Estado:= eEstadoBomba_ebOffLine;
                 end;
               end;
            1: Global.Bombas[I].Estado:= eEstadoBomba_ebIdle;
            2: Global.Bombas[I].Estado:= eEstadoBomba_ebAuto;
            3: Global.Bombas[I].Estado:= eEstadoBomba_ebCall;
            4: Global.Bombas[I].Estado:= eEstadoBomba_ebAuto;
            5: Global.Bombas[I].Estado:= eEstadoBomba_ebBusy;
            6: Global.Bombas[I].Estado:= eEstadoBomba_ebStop;
            7: Global.Bombas[I].Estado:= eEstadoBomba_ebPago;
            8: Global.Bombas[I].Estado:= eEstadoBomba_ebPago;
            9: Global.Bombas[I].Estado:= eEstadoBomba_ebOffLine;
          else
             Global.Bombas[I].Estado:= eEstadoBomba_ebOffLine;
          end;
          if (EstadoAnterior <> eEstadoBomba_ebOffLine) and (Global.Bombas[I].Estado = eEstadoBomba_ebOffLine) then
            ServerDataModule.Servidor.EstadoDispensario(I, 'F');
          if (EstadoAnterior = eEstadoBomba_ebOffLine) and (Global.Bombas[I].Estado <> eEstadoBomba_ebOffLine) then
            ServerDataModule.Servidor.EstadoDispensario(I, 'O');

          {
          if EstadoAnterior = Global.Bombas[I].EstadoNuevo then
          begin
              EstadoAnterior:= Global.Bombas[I].Estado;
              Global.Bombas[I].Estado:= Global.Bombas[I].EstadoNuevo;
              if Global.Bombas[I].Estado in [ebIdle, ebOffLine] then
                Global.Bombas[I].Guardando:=False;

              if (EstadoAnterior = ebBusy) and (Global.Bombas[I].EstadoNuevo = ebCall) then
                  Global.Bombas[I].Estado:= EstadoAnterior;
              if (EstadoAnterior = ebBusy) and (Global.Bombas[I].EstadoNuevo = ebAuto) then
                  Global.Bombas[I].Estado:= EstadoAnterior;
              if (EstadoAnterior = ebPago) and (Global.Bombas[I].EstadoNuevo = ebCall) then
                  Global.Bombas[I].Estado:= EstadoAnterior;
              if (Global.Bombas[I].EstadoNuevo = ebCall) and (Global.Bombas[I].PendienteGrabar = True) and (Global.Bombas[I].VentaProceso.VolumenServido > 0) then
                  Global.Bombas[I].Estado:= ebStop;
              if (Global.Bombas[I].EstadoNuevo = ebAuto) and (Global.Bombas[I].PendienteGrabar = True) and (Global.Bombas[I].VentaProceso.VolumenServido > 0) then
                  Global.Bombas[I].Estado:= ebStop;
          end;

          'Verifica si debe de registrar una alerta
          }

          Inc(I);
      end;
    end;
  end;
//  else
//    begin
//      for I:= 1 To Global.TotalBombas do
//      begin
//          EstadoAnterior:= Global.Bombas[I].EstadoNuevo;
//          Global.Bombas[I].EstadoNuevo:= ebOffLine;
//          if EstadoAnterior = Global.Bombas[I].EstadoNuevo then
//            Global.Bombas[I].Estado:= Global.Bombas[I].EstadoNuevo;
//      end;
//    end;
end;

procedure TProtocoloBennet.Preset(Autorizar: Boolean);
var
  nBomba: Integer;
  Edo: eEstadoBomba;
begin
  inherited;
  for nBomba:= 1 To Global.TotalBombas do
  begin
      Edo:= Global.Bombas[nBomba].Estado;
      case Edo of
      eEstadoBomba_ebCall: begin
                if Global.Bombas[nBomba].Modo = eModoOperacion_moDeshabilitada then
                    Global.Bombas[nBomba].Preset:= eTipoPreset_tpSinPreset;
                if (Global.Bombas[nBomba].Modo = eModoOperacion_moFullService) and (Global.Bombas[nBomba].Autorizacion = eTipoAutorizacion_taSinAutorizacion) then
                begin
                  Global.Bombas[nBomba].VentaProceso.VentaAutorizada:=0;
                  VerificaPreset(nBomba);
                  if Global.Bombas[nBomba].Clasificacion <> '1978' then
                  begin
                    Global.Bombas[nBomba].VentaProceso.Unidad:= 'F';
                    AutoLLenar(nBomba);
                    Global.Bombas[nBomba].EstadoVenta:=eEstadoVenta_evFullServer;
                  end
                  else
                    Global.Bombas[nBomba].Clasificacion:= ''
                end;
              end;
      eEstadoBomba_ebPago: begin
                try
                  ObtenerVentaBomba(nBomba, True);
                except
                end;
              end;
      eEstadoBomba_ebBusy: begin
                Global.Bombas[nBomba].PendienteGrabar:= True;
                Global.Bombas[nBomba].NuevoFlujo:='';
                Global.Bombas[nBomba].ConectLCD:=Global.Bombas[nBomba].ConectLCD + 1;
                if Global.Bombas[nBomba].ConectLCD >= 5 then
                begin
                  Global.Bombas[nBomba].ConectLCD:=0;
                  DespliegaVenta(nBomba);
                end;
              end;
      eEstadoBomba_ebStop: begin
                if (Global.Bombas[nBomba].TiempoAutorizado > 15) and (Global.Bombas[nBomba].VentaProceso.VolumenServido = 0) then
                  DesautorizaVenta(nBomba);
              end;
      eEstadoBomba_ebIdle: begin
                  Global.Bombas[nBomba].TiempoAutorizado:=0;
                  Global.Bombas[nBomba].ConectLCD:=0;
              end;

      eEstadoBomba_ebUnknown: Global.Bombas[nBomba].TiempoAutorizado:=0;

      eEstadoBomba_ebAuto: begin
                Global.Bombas[nBomba].TiempoAutorizado:=Global.Bombas[nBomba].TiempoAutorizado + 1;
                if Global.TipoEstacion >= 2 then
                  Global.Bombas[nBomba].TiempoAutorizado:=0
                else
                begin
                  if Global.Bombas[nBomba].TiempoAutorizado > 200 then
                    Global.Bombas[nBomba].TiempoAutorizado:=0;
                end;
              end;
      end;
  end;
end;

procedure TProtocoloBennet.PresetDineroConProducto(nBomba, nGasolina: Integer;
  nDinero: Real);
var
  I: Integer;
begin
  inherited;
  Global.Bombas[nBomba].Clasificacion:=Verifica(nBomba, 1, nDinero);
  if (Global.Bombas[nbomba].Modo = eModoOperacion_moDeshabilitada) or ((Global.MetodoOperacion >= 1) and (not FijaFlujos(nBomba))) then
    Exit;

  //nGasolina:= 1;
  for I:= 1 to 3 do
  begin
    if Global.Bombas[nBomba].Mangueras[I].NoGasolina = nGasolina then
    begin
      nGasolina:= I;
      break;
    end;
  end;
//  FijaLimitePesos(nBomba, nDinero);
//  FijaLimitePesos(nBomba, nDinero);
  if FijaLimitePesos(nBomba, nDinero) then
  begin
    I:= 1;
    repeat
      case nGasolina of
        1: Comando:=FormatFloat('"S"00', nBomba) + 'A';
        2: Comando:=FormatFloat('"S"00', nBomba) + 'B';
        3: Comando:=FormatFloat('"S"00', nBomba) + 'H';
        4: Comando:=FormatFloat('"S"00', nBomba) + 'D';
      else
        Comando:=FormatFloat('"S"00', nBomba);
      end;
      Puerto.EnviaComando(Comando);
      if Puerto.Status = eCodeTrama_ctFrame then
      begin
        Global.Bombas[nBomba].Estado:=eEstadoBomba_ebAuto;
        Global.Bombas[nBomba].Preset:=eTipoPreset_tpImporteConProducto;
        Global.Bombas[nBomba].UltimoLimiteImporte:=nDinero;
        Code:= eResult_eOk;
      end
      else
        Code:= eResult_eFail;
      Inc(I);
    until (I >= 5) or (Code = eResult_eOK);
  end
end;

procedure TProtocoloBennet.PresetDineroSinProducto(nBomba, nGasolina: Integer;
  nDinero: Real);
var
  I: Integer;
begin
  inherited;
  Global.Bombas[nBomba].Clasificacion:=Verifica(nBomba, 1, nDinero);
  if (Global.Bombas[nbomba].Modo = eModoOperacion_moDeshabilitada) or ((Global.MetodoOperacion >= 1) and (not FijaFlujos(nBomba))) then
    Exit;

//  FijaLimitePesos(nBomba, nDinero);
//  FijaLimitePesos(nBomba, nDinero);
  if FijaLimitePesos(nBomba, nDinero) Then
  begin
    I:= 1;
    repeat
      Puerto.EnviaComando(FormatFloat('"S"00', nBomba));
      if Puerto.Status = eCodeTrama_ctFrame then
      begin
        Global.Bombas[nBomba].Estado:= eEstadoBomba_ebAuto;
        Global.Bombas[nBomba].Preset:= eTipoPreset_tpImporteSinProducto;
        Global.Bombas[nBomba].UltimoLimiteImporte:=nDinero;
        Code:= eResult_eOk;
      end
      else
        Code:= eResult_eFail;
      Inc(I);
    until (I<=5) or (Puerto.Status = eCodeTrama_ctFrame);
  end;
end;

procedure TProtocoloBennet.PresetLitrosConProducto(nBomba, nGasolina: Integer;
  nLitros: Real);
var
  I: Integer;
  Comando: String;
begin
  inherited;
  Global.Bombas[nBomba].Clasificacion:=Verifica(nBomba, 2, nLitros);
  if (Global.Bombas[nbomba].Modo = eModoOperacion_moDeshabilitada) or ((Global.MetodoOperacion >= 1) and (not FijaFlujos(nBomba))) then
    Exit;

  //nGasolina:= 1;
  for I:= 1 to 3 do
  begin
    if Global.Bombas[nBomba].Mangueras[I].NoGasolina = nGasolina Then
    begin
        nGasolina:= I;
        Break;
    end;
  end;

//  FijaLimiteLitros(nBomba, nLitros);
//  FijaLimiteLitros(nBomba, nLitros);
  if FijaLimiteLitros(nBomba, nLitros) then
  begin
    I:= 1;
    repeat
      case nGasolina of
        1: Comando:=FormatFloat('"S"00', nBomba) + 'A';
        2: Comando:=FormatFloat('"S"00', nBomba) + 'B';
        3: Comando:=FormatFloat('"S"00', nBomba) + 'H';
        4: Comando:=FormatFloat('"S"00', nBomba) + 'D';
      else
        Comando:=FormatFloat('"S"00', nBomba);
      end;
      Puerto.EnviaComando(Comando);
      if Puerto.Status = eCodeTrama_ctFrame then
      begin
        Global.Bombas[nBomba].Estado:=eEstadoBomba_ebAuto;
        Global.Bombas[nBomba].Preset:=eTipoPreset_tpLitrosConProducto;
        Global.Bombas[nBomba].UltimoLimiteVolumen:=nLitros;
        Code:= eResult_eOK;
      end
      else
        Code:= eResult_eFail;
      Inc(I);
    until (I >= 5) or (Code = eResult_eOK);
  end;
end;

procedure TProtocoloBennet.PresetLitrosSinProducto(nBomba, nGasolina: Integer;
  nLitros: Real);
var
  I: Integer;
begin
  inherited;
  Global.Bombas[nBomba].Clasificacion:=Verifica(nBomba, 2, nLitros);
  if (Global.Bombas[nbomba].Modo = eModoOperacion_moDeshabilitada) or ((Global.MetodoOperacion >= 1) and (not FijaFlujos(nBomba))) then
    Exit;

//  FijaLimiteLitros(nBomba, nLitros);
//  FijaLimiteLitros(nBomba, nLitros);
  if FijaLimiteLitros(nBomba, nLitros) Then
  begin
      I:= 1;
      repeat
          Puerto.EnviaComando(FormatFloat('"S"00', nBomba));
          if Puerto.Status = eCodeTrama_ctFrame then
          begin
              Global.Bombas[nBomba].TiempoAutorizado:=0;
              Global.Bombas[nBomba].Estado:= eEstadoBomba_ebAuto;
              Global.Bombas[nBomba].Preset:= eTipoPreset_tpLitrosSinProducto;
              Global.Bombas[nBomba].UltimoLimiteVolumen:=nLitros;
              Code:= eResult_eOK;
          end
          else
              Code:= eResult_eFail;
          Inc(I);
      until (Puerto.Status= eCodeTrama_ctFrame) or (I>=5);
  end;
end;

procedure TProtocoloBennet.PresetLLenoConProducto(nBomba, nGasolina: Integer);
var
  I: Integer;
  Comando: String;
begin
  inherited;
  Global.Bombas[nBomba].Clasificacion:=Verifica(nBomba, 2, 9999);
  if (Global.Bombas[nbomba].Modo = eModoOperacion_moDeshabilitada) or ((Global.MetodoOperacion >= 1) and (not FijaFlujos(nBomba))) then
    Exit;

  //nGasolina:= 1;
  for I:= 1 to 3 do
  begin
    if Global.Bombas[nBomba].Mangueras[I].NoGasolina = nGasolina then
    begin
        nGasolina:= I;
        break;
    end;
  end;

  if FijaLimiteLitros(nBomba, 9999) then
  begin
    I:=1;
    repeat
        case nGasolina of
          1: Comando:=FormatFloat('"S"00', nBomba) + 'A';
          2: Comando:=FormatFloat('"S"00', nBomba) + 'B';
          3: Comando:=FormatFloat('"S"00', nBomba) + 'H';
          4: Comando:=FormatFloat('"S"00', nBomba) + 'D';
        else
          Comando:=FormatFloat('"S"00', nBomba);
        end;
        Puerto.EnviaComando(Comando);
        if Puerto.Status = eCodeTrama_ctFrame then
        begin
          Global.Bombas[nBomba].Estado:= eEstadoBomba_ebAuto;
          Global.Bombas[nBomba].EstadoNuevo:=eEstadoBomba_ebAuto;
          Global.Bombas[nBomba].Preset:=eTipoPreset_tpLibreConProducto;
          Code:= eResult_eOK;
        end
        else
          Code:= eResult_eFail;
        Inc(I);
    until (Puerto.Status = eCodeTrama_ctFrame) or (I>=5);
  end;
end;

procedure TProtocoloBennet.ProcCambiaPrecios(nGasolina: Integer; nPrecio: Real);
var
  nBomba: Integer;
  nManguera: Integer;
begin
  inherited;
  for nBomba:= 1 to Global.TotalBombas do
  begin
    for nManguera:= 1 To Global.Bombas[nBomba].NoMangueras do
    begin
      if Global.Bombas[nBomba].Mangueras[nManguera].NoGasolina = nGasolina then
      begin
        nPrecio:=Global.Gasolinas[nGasolina].Precio;
        nPrecio:=nPrecio * Global.Bombas[nBomba].FactorDecimal.CambioPrecios;
        Puerto.EnviaComando(FormatFloat('"E"00"1"', nBomba) + IntToStr(MangueraABennett(nManguera)) + FormatFloat('0000', nPrecio));
        Puerto.EnviaComando(FormatFloat('"E"00"2"', nBomba) + IntToStr(MangueraABennett(nManguera)) + FormatFloat('0000', nPrecio));
      end;
    end;
  end;
end;

procedure TProtocoloBennet.ProcDwChPrices;
var
  I: Integer;
begin
  inherited;
  if Global.MetodoOperacion >= 1 then
  begin
    Global.FlujoActual:= 0;
    for I := 1 to Global.TotalBombas do
      Global.Bombas[I].Clasificacion:= Global.Bombas[I].Flujo.Minimo;

    {I:=1;
    while I <= Global.TotalBombas do
    begin
      Global.Bombas[I].Clasificacion:= '';
        if not FijaFlujos(I) then
            Global.Bombas[I].Clasificacion:= Global.Bombas[I].Flujo.Minimo;
      Sleep(300);
      Inc(I, 2);
    end;
    I:=2;
    while I <= Global.TotalBombas do
    begin
      Global.Bombas[I].Clasificacion:= '';
        if not FijaFlujos(I) then
            Global.Bombas[I].Clasificacion:= Global.Bombas[I].Flujo.Minimo;
      Sleep(300);
      Inc(I, 2);
    end;  }
  end;
end;

procedure TProtocoloBennet.ProcUpChPrices;
var
  I: Integer;
begin
  inherited;
  if Global.MetodoOperacion >= 1 then
  begin
    Global.FlujoActual:= 1;
    for I := 1 to Global.TotalBombas do
      Global.Bombas[I].Clasificacion:= Global.Bombas[I].Flujo.Maximo;
{    I:=1;
    while I <= Global.TotalBombas do
    begin
      Global.Bombas[I].Clasificacion:= '';
        if not FijaFlujos(I) then
            Global.Bombas[I].Clasificacion:= Global.Bombas[I].Flujo.Maximo;
      Sleep(300);
      Inc(I, 2);
    end;
    I:=2;
    while I <= Global.TotalBombas do
    begin
      Global.Bombas[I].Clasificacion:= '';
        if not FijaFlujos(I) then
            Global.Bombas[I].Clasificacion:= Global.Bombas[I].Flujo.Maximo;
      Sleep(300);
      Inc(I, 2);
    end;        }
  end;
end;

function TProtocoloBennet.VerificaEstadoBomba(Bomba: Integer): eEstadoBomba;
var
  nPos: Integer;
  Cad, Edo: String;
begin
  Result:=eEstadoBomba_ebOffLine;
  Sleep(50);
  Puerto.EnviaComando(FormatFloat('"B"00', Bomba));
  if Puerto.Status =  eCodeTrama_ctFrame then
  begin
    nPos:=Pos('B00', Puerto.ValorRespuesta);
    if nPos > 0 then
    begin
      nPos:= nPos + 3;
      Cad:=Copy(Puerto.ValorRespuesta, nPos, Length(Puerto.ValorRespuesta) - 4);
      Code:=eResult_eOK;
      Edo:=Copy(Cad, 1, 2);
      Delete(Cad, 1, 2);


      case Trunc(TextoANumero(Edo[2])) of
        0: Result:= eEstadoBomba_ebOffLine;
        1: Result:= eEstadoBomba_ebIdle;
        2: Result:= eEstadoBomba_ebAuto;
        3: Result:= eEstadoBomba_ebCall;
        4: Result:= eEstadoBomba_ebAuto;
        5: Result:= eEstadoBomba_ebBusy;
        6: Result:= eEstadoBomba_ebStop;
        7: Result:= eEstadoBomba_ebPago;
        8: Result:= eEstadoBomba_ebPago;
        9: Result:= eEstadoBomba_ebOffLine;
      else
         Result:= eEstadoBomba_ebOffLine;
      end;
    end;
  end;
end;

procedure TProtocoloBennet.VerificaPreset(nBomba: Integer);
var
  Comando: String;
  I: Integer;
  nPreset: Double;
  nTipoPreset: Integer;
begin
  inherited;
  I:=1;
  Comando:='';
  nTipoPreset:=0;
  nPreset:=0;
  if (Global.Protecciones.ConPreset) and (Global.Protecciones.ObligarPreset) then
  begin
    Puerto.EnviaComando(FormatFloat('"Z"00', nBomba));
    while (I <= 2) and (Comando = '') do
    begin
      Puerto.EnviaComando(FormatFloat('"Z"00', nBomba));
      Inc(I);
      if Puerto.Status = eCodeTrama_ctFrame then
      begin
        if Pos(FormatFloat('"Z"00', nBomba),  Puerto.ValorRespuesta) > 0 then
        begin
          Comando:=Copy(Puerto.ValorRespuesta, 4, Length(Puerto.ValorRespuesta) - 3);
          nTipoPreset:= Trunc(TextoANumero(LimpiaNumero(Copy(Comando, 1, 1))));
          nPreset:= TextoANumero(LimpiaNumero(Copy(Comando, 2, 6))) / 100;
          if nTipoPreset = 1 then
          begin
            Global.Bombas[nBomba].Preset:=eTipoPreset_tpImporteSinProducto;
            Global.Bombas[nBomba].UltimoLimiteImporte:=nPreset
          end
          else
          begin
            Global.Bombas[nBomba].Preset:=eTipoPreset_tpLitrosSinProducto;
            Global.Bombas[nBomba].UltimoLimiteVolumen:=nPreset
          end;
        end;
      end;
    end;
  end;
  Global.Bombas[nBomba].Clasificacion:=Verifica(nBomba, nTipoPreset, nPreset);
end;

end.


