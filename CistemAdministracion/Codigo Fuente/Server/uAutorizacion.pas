{

 Composici�n de Referencias.
 Todas las referencias ya sean de entrada o salida tendran la sigiente estructura:
 Chr(2) +  REFERENCIA + Chr(5) + CHECKSUM  + Chr(3)

 La referencia se cmpondra de una cadena dividiendo los campos con un " | " (pipe)

 #### REFERENCIA ENTRADA ####
 - Tarjeta (Tipo de transaccion 1)
   IDENTIFICADOR|FORMACOMPRA|CLIENTE|VEHICULO|DIGITOSEGURIDAD|ESTACION|Odometro|NIP|BOMBA|SELECCIONDEPRODUCTO|MAGNA|PREMIUM|DIESEL
   @IDENTIFICADOR: Es el n�mero del ID del identificador
   @FORMACOMPRA: Es el n�mero del ID de la forma de compra
   @CLIENTE: Es el n�mero del ID del cliente
   @VEHICULO: Es el n�mero del ID del vehiculo
   @DIGITOSEGURIDAD: Es el valor de seguridad de la tarjeta compuesto por 4 digitos
   @ESTACION: Es el n�mero de la estacion de donde se realiza la petici�n
   @Odometro: Kilometraje digitado en la terminal
   @NIP: Es el NIP de la tarjeta
   @BOMBA: Es la posicion de despacho de donde se realizo la solicitud
   @SELECCIONDEPRODUCTO: Es el valor de los productos validos en la bomba ~ 1 MAGNA,  2 PREMIUM, 3DIESEL, 12 MAGNA Y PREMIUM
   @MAGNA: Es el precio de la Magna
   @PREMIUM: Es el precio de la premium
   @DIESEL: es el precio del diesel
   @MAXIMOLT: Maximo litraje
   @MAXIMOMN: Maximo Importe

   Ejemplo:
   9006|0001|0001|0016|0|7646|1541512|0|1|123|6.89|7.64|5.59|950|2000

 - Consumo Tarjeta (Tipo de transaccion 201)
   Campos Consumos

   Ejemplo:
   7|11|16|9001|1|1|59|20060616000000|20060616163100|2006|6|16|2|51548|123456789123456|MAGNA|1|8|10|7|70|0|0||A|0|0|0


 - Cup�n
   CODIGO|LOTE|CUPON|DIGITOSEGURIDAD|ESTACION
   @CODIGO: Es el valor que identifica el tipo de transaccion de la referencia, para cup�n es 2
   @LOTE: Es el n�mero de lote de cupones
   @CUPON: Es el n�mero consecutivo del cup�n
   @DIGITOSEGURIDAD: Es el valor de seguridad del cupon compuesto por 4 digitos
   @ESTACION: Es el n�mero de la estacion de donde se realiza la petici�n

   Ejemplo:
   2|125|12353|1546|1054



 #### SALIDA ####
 - Tarjeta
   CODIGO|ERROR|MENSAJE|CANTIDAD|IMPORTEoVOLUMEN|PRODUCTOSAUTORIZADOS|CLASIFICACION|SECUENCIA
   @CODIGO: Es el valor que identifica el tipo de transaccion de la referencia, para respuesta de tarjeta es 101
   @ERROR: Es el n�mero error que devuelve la funcion
   @MENSAJE: Es la descripci�n que devuelve la funcion
   @CANTIDAD: Es el valor de despacho para la transaccion
   @IMPORTEoVOLUMEN: Indica si la cantidad de despacho es en importe o volumen
   @PRODUCTOSAUTORIZADOS: Son los productos que tiene autorizado cargar la tarjeta.
   @CLASIFICACION: El nivel en cr�dito y cobranza de la tarjeta
   @SECUENCIA: Es un n�mero consecutivo que identifica a la transaccion

   Ejemplo:
   101|0|Ok|120|V|1|1566

 -Cupon

}

unit uAutorizacion;

interface

const

  ERR_OK = 0;
  ERR_SINCOMUNICACION = 1;
  ERR_REFERENCIAINVALIDA = 2;
  ERR_TIPOPROCESOINVALIDO = 3;
  ERR_FALTAINFORMACION = 4;
  ERR_CHECKSUMNOVALIDO = 5;
  ERR_OCUPADO = 6;

  ERR_SINSALDO = 100;
  ERR_FUERAHORA = 101;
  ERR_CLIENTENOACTIVO = 102;
  ERR_TARJETANOACTIVA = 103;
  ERR_NIPINCORRECTO = 104;
  ERR_DIGITOSEGURIDADINCORRECTO = 105;
  ERR_IDENTIFICADORNOVALIDO = 106;
  ERR_FORMACOMPRANOVALIDA = 107;
  ERR_CLIENTENOVALIDO = 108;
  ERR_VEHICULONOVALIDO = 109;
  ERR_DIGITOSEGURIDADNOVALIDO = 110;
  ERR_ESTACIONNOVALIDA = 111;
  ERR_OdometroNOVALIDO = 112;
  ERR_NIPNOVALIDO = 113;
  ERR_BOMBANOVALIDA = 114;
  ERR_SELECCIONPRODUCTONOVALIDO = 115;
  ERR_PRECIOPRODUCTO1NOVALIDO = 116;
  ERR_PRECIOPRODUCTO2NOVALIDO = 117;
  ERR_PRECIOPRODUCTO3NOVALIDO = 118;
  ERR_MAXIMOVOLUMENNOVALIDO = 119;
  ERR_MAXIMOIMPORTENOVALIDO = 120;



  ERR_LTDIAAGOTADO = 121;
  ERR_LTSEMANAAGOTADO = 122;
  ERR_LTMESAGOTADO = 123;
  ERR_MNTURNOAGOTADO = 124;
  ERR_MNDIAAGOTADO = 125;
  ERR_MNSEMANAAGOTADO = 126;
  ERR_MNMESAGOTADO = 127;
  ERR_CARGASAGOTADO = 128;
  ERR_TARJETAINACTIVA = 129;
  ERR_TARJETACANCELADA = 130;
  ERR_TARJETABLOQUEADA = 131;
  ERR_TARJETAVENCIDA = 132;
  ERR_FUERADEHORARIO = 133;
  ERR_SALDORETENIDO = 134;
  ERR_COMBUSTIBLENOAUTORIZADO = 135;
  ERR_CLIENTEINACTIVO = 136;
  ERR_CLIENTECANCELADO = 137;
  ERR_CLIENTEBAJA = 138;
  ERR_LTTURNOAGOTADO = 139;

  ERR_SINDATOSCONSUMO = 200;
  ERR_FORMATOFECHAINVALIDO = 201;
  ERR_ERRORALGUARDARSONSUMOS = 202;
  ERR_TRAMADUPLICADA = 203;

  ERR_CUPONNOACTIVO = 300;
  ERR_CUPONUTILIZADO = 301;
  ERR_CUPONSINPAGO = 302;

{pla_GOB}//---------------ERRORES GOB------------------------------------------}
  ERR_GOB_IDRFCORRUPTO = '-1';
  ERR_GOB_IDRFINEXISTENTE = '-2';
  ERR_GOB_AUTFALLIDA = '-3';
  ERR_GOB_KMSINVALIDO = '-4';
  ERR_GOB_IMPINVALIDO = '-5';
  ERR_GOB_SALDOINSUFICIENTE = '-6';
  ERR_GOB_CANCIVALIDA = '-7';
  ERR_GOB_IDDEVECORRUPTO = '-8';
  ERR_GOB_IDDEVEINEXISTENTE = '-9';
  ERR_GOB_LTSINVALIDOS = '-10';
  ERR_GOB_PRODDESCONOCIDO = '-11';
  ERR_GOB_INFNODISP = '-12';
  ERR_GOB_IDRFNOACTIVO = '-13';
  ERR_GOB_DETFACTINVALIDO = '-14';
  ERR_GOB_FCTINVALIDA = '-15';
  ERR_GOB_FCTENPROCESO = '-16';
  ERR_GOB_ERRORINTERNO = '-99';
{pla_GOB}//--------------------------------------------------------------------}

type

  TProcesa = class
  private
    FReferencia: String;
    FMensaje: String;
    FTipoTransaccion: Integer;
    procedure SetMensaje(const Value: String);
    procedure SetReferencia(const Value: String);
    procedure SetTipoTransaccion(const Value: Integer);
  public
    function Procesar: Integer; virtual; abstract;
    property Referencia: String read FReferencia write SetReferencia;
    property Mensaje: String read FMensaje write SetMensaje;
    property TipoTransaccion: Integer read FTipoTransaccion write SetTipoTransaccion;
  end;

  TTipoClaseProcesa = class of TProcesa;

  TProcesaTarjeta = class(TProcesa)
  private
    FcurImpCliProceso: Double;
    FcurLitTarProceso: Double;
    FcurImpTarProceso: Double;
    FcurLitCliProceso: Double;
    FIdentificadorID: Integer;
    FDigitoSeguridad: Integer;
    FFormaCompraID: Integer;
    FClienteID: Integer;
    FEstacion: Integer;
    FTarjetaID: Integer;
    FcurAbonos: DOuble;
    FcurSaldo: Double;
    FcurCargos: Double;
    FcurNIP: String;
    FNIP: String;
    FcurStatus: String;
    FcurClasificacion: Integer;
    FcurDepartamento: String;
    FcurCentroCosto: String;
    FcurNoEconomico: String;
    FcurIdentificacion: String;
    FcurNombre: String;
    FcurFechaVencimiento: TDateTime;
    FcurProductoAutorizado: String;
    FcurFirma: Boolean;
    FcurOdometro: Boolean;
    FcurPlacas: Boolean;
    FOdometro: Integer;
    FcurDomingo: String;
    FcurJueves: String;
    FcurMiercoles: String;
    FcurLunes: String;
    FcurSabado: String;
    FcurViernes: String;
    FcurMartes: String;
    FActualLTMes: Double;
    FLimiteLTTurno: Double;
    FLimiteLTDia: Double;
    FLimiteMNTurno: Double;
    FLimiteMNDia: Double;
    FActualLTTurno: Double;
    FActualMNSemana: Double;
    FLimiteLTMes: Double;
    FActualLTDia: Double;
    FLimiteLTSemana: Double;
    FLimiteMNMes: Double;
    FActualLTSemana: Double;
    FActualMNMes: Double;
    FActualMNTurno: Double;
    FActualMNDia: Double;
    FLimiteMNSemana: Double;
    FActualCargas: Integer;
    FcurMensaje: String;
    FcurMNDia: Double;
    FcurMNSemana: Double;
    FcurMNTurno: Double;
    FcurLTMes: Double;
    FcurMNMes: Double;
    FcurLTDia: Double;
    FcurLTTurno: Double;
    FcurLTSemana: Double;
    FCargasMaximas: Integer;
    FcurDigitoSeguridad: Integer;
    FBomba: Integer;
    FcliImpProceso: Double;
    FcliLimiteCredito: Double;
    FcliVolProceso: Double;
    FcliFormaCompra: Integer;
    FcliCuentaContable: String;
    FcliNombre: String;
    FcliStatus: String;
    FcurDisponible: Double;
    FcurTipoTarjeta: String;
    FSaldoMinimo: Double;
    FPremium: Double;
    FMagna: Double;
    FDiesel: Double;
    FSeleccionDeProducto: String;
    FVolumenImporte: String;
    FDespacho: Double;
    FMaximoImporte: Double;
    FMaximoVolumen: Double;
    FPresetLT: Double;
    FPresetMN: Double;
    function FueraDeHorario: Boolean;
    function ProductoValido: Boolean;
    function MensajeAutoriza: String;
    procedure SetcurImpCliProceso(const Value: Double);
    procedure SetcurImpTarProceso(const Value: Double);
    procedure SetcurLitCliProceso(const Value: Double);
    procedure SetcurLitTarProceso(const Value: Double);
    procedure SetClienteID(const Value: Integer);
    procedure SetDigitoSeguridad(const Value: Integer);
    procedure SetEstacion(const Value: Integer);
    procedure SetFormaCompraID(const Value: Integer);
    procedure SetIdentificadorID(const Value: Integer);
    procedure SetTarjetaID(const Value: Integer);
    procedure SetcurAbonos(const Value: DOuble);
    procedure SetcurCargos(const Value: Double);
    procedure SetcurSaldo(const Value: Double);
    procedure SetcurNIP(const Value: String);
    procedure SetcurStatus(const Value: String);
    procedure SetNIP(const Value: String);
    procedure SetcurCentroCosto(const Value: String);
    procedure SetcurClasificacion(const Value: Integer);
    procedure SetcurFechaVencimiento(const Value: TDateTime);
    procedure SetcurIdentificacion(const Value: String);
    procedure SetcurNombre(const Value: String);
    procedure SetcurDepartamento(const Value: String);
    procedure SetcurNoEconomico(const Value: String);
    procedure SetcurProductoAutorizado(const Value: String);
    procedure SetcurFirma(const Value: Boolean);
    procedure SetcurOdometro(const Value: Boolean);
    procedure SetcurPlacas(const Value: Boolean);
    procedure SetOdometro(const Value: Integer);
    procedure SetcurDomingo(const Value: String);
    procedure SetcurJueves(const Value: String);
    procedure SetcurLunes(const Value: String);
    procedure SetcurMartes(const Value: String);
    procedure SetcurMiercoles(const Value: String);
    procedure SetcurSabado(const Value: String);
    procedure SetcurViernes(const Value: String);
    procedure SetActualCargas(const Value: Integer);
    procedure SetActualLTDia(const Value: Double);
    procedure SetActualLTMes(const Value: Double);
    procedure SetActualLTSemana(const Value: Double);
    procedure SetActualLTTurno(const Value: Double);
    procedure SetActualMNDia(const Value: Double);
    procedure SetActualMNMes(const Value: Double);
    procedure SetActualMNSemana(const Value: Double);
    procedure SetActualMNTurno(const Value: Double);
    procedure SetLimiteLTDia(const Value: Double);
    procedure SetLimiteLTMes(const Value: Double);
    procedure SetLimiteLTSemana(const Value: Double);
    procedure SetLimiteLTTurno(const Value: Double);
    procedure SetLimiteMNDia(const Value: Double);
    procedure SetLimiteMNMes(const Value: Double);
    procedure SetLimiteMNSemana(const Value: Double);
    procedure SetLimiteMNTurno(const Value: Double);
    procedure SetcurMensaje(const Value: String);
    procedure SetcurLTDia(const Value: Double);
    procedure SetcurLTMes(const Value: Double);
    procedure SetcurLTSemana(const Value: Double);
    procedure SetcurLTTurno(const Value: Double);
    procedure SetcurMNDia(const Value: Double);
    procedure SetcurMNMes(const Value: Double);
    procedure SetcurMNSemana(const Value: Double);
    procedure SetcurMNTurno(const Value: Double);
    procedure SetCargasMaximas(const Value: Integer);
    procedure SetcurDigitoSeguridad(const Value: Integer);
    procedure SetBomba(const Value: Integer);
    procedure SetcliCuentaContable(const Value: String);
    procedure SetcliFormaCompra(const Value: Integer);
    procedure SetcliImpProceso(const Value: Double);
    procedure SetcliLimiteCredito(const Value: Double);
    procedure SetcliNombre(const Value: String);
    procedure SetcliStatus(const Value: String);
    procedure SetcliVolProceso(const Value: Double);
    procedure SetcurDisponible(const Value: Double);
    procedure SetcurTipoTarjeta(const Value: String);
    procedure SetSaldoMinimo(const Value: Double);
    procedure SetDiesel(const Value: Double);
    procedure SetMagna(const Value: Double);
    procedure SetPremium(const Value: Double);
    procedure SetSeleccionDeProducto(const Value: String);
    procedure SetVolumenImporte(const Value: String);
    procedure SetDespacho(const Value: Double);
    procedure SetMaximoImporte(const Value: Double);
    procedure SetMaximoVolumen(const Value: Double);
    procedure SetPresetLT(const Value: Double);
    procedure SetPresetMN(const Value: Double);
  public
    function Procesar: Integer; override;
    function PrecioAlto: Double;
    property ClienteID: Integer read FClienteID write SetClienteID;
    property IdentificadorID: Integer read FIdentificadorID write SetIdentificadorID;
    property FormaCompraID: Integer read FFormaCompraID write SetFormaCompraID;
    property TarjetaID: Integer read FTarjetaID write SetTarjetaID;
    property DigitoSeguridad: Integer read FDigitoSeguridad write SetDigitoSeguridad;
    property Estacion: Integer read FEstacion write SetEstacion;
    property NIP: String read FNIP write SetNIP;
    property Odometro: Integer read FOdometro write SetOdometro;
    property Bomba: Integer read FBomba write SetBomba;
    property PresetMN: Double read FPresetMN write SetPresetMN;
    property PresetLT: Double read FPresetLT write SetPresetLT;
    property MaximoVolumen: Double read FMaximoVolumen write SetMaximoVolumen;
    property MaximoImporte: Double read FMaximoImporte write SetMaximoImporte;
    property SeleccionDeProducto: String read FSeleccionDeProducto write SetSeleccionDeProducto;
    property Magna: Double read FMagna write SetMagna;
    property Premium: Double read FPremium write SetPremium;
    property Diesel: Double read FDiesel write SetDiesel;
    property VolumenImporte: String read FVolumenImporte write SetVolumenImporte;
    property Despacho: Double read FDespacho write SetDespacho;
    property curLitTarProceso: Double read FcurLitTarProceso write SetcurLitTarProceso;
    property curImpTarProceso: Double read FcurImpTarProceso write SetcurImpTarProceso;
    property curLitCliProceso: Double read FcurLitCliProceso write SetcurLitCliProceso;
    property curImpCliProceso: Double read FcurImpCliProceso write SetcurImpCliProceso;
    property curSaldo: Double read FcurSaldo write SetcurSaldo;
    property curCargos: Double read FCurCargos write SetCurCargos;
    property curAbonos: Double read FCurAbonos write SetCurAbonos;
    property curDisponible: Double read FcurDisponible write SetcurDisponible;
    property curStatus: String read FcurStatus write SetcurStatus;
    property curNIP: String read FcurNIP write SetcurNIP;
    property curTipoTarjeta: String read FcurTipoTarjeta write SetcurTipoTarjeta;
    property curClasificacion: Integer read FcurClasificacion write SetcurClasificacion;
    property curFechaVencimiento: TDateTime read FcurFechaVencimiento write SetcurFechaVencimiento;
    property curNombre: String read FcurNombre write SetcurNombre;
    property curCentroCosto: String read FcurCentroCosto write SetcurCentroCosto;
    property curIdentificacion: String read FcurIdentificacion write SetcurIdentificacion;
    property curNoEconomico: String read FcurNoEconomico write SetcurNoEconomico;
    property curDepartamento: String read FcurDepartamento write SetcurDepartamento;
    property curProductoAutorizado: String read FcurProductoAutorizado write SetcurProductoAutorizado;
    property curOdometro: Boolean read FcurOdometro write SetcurOdometro;
    property curPlacas: Boolean read FcurPlacas write SetcurPlacas;
    property curFirma: Boolean read FcurFirma write SetcurFirma;
    property curLunes: String read FcurLunes write SetcurLunes;
    property curMartes: String read FcurMartes write SetcurMartes;
    property curMiercoles: String read FcurMiercoles write SetcurMiercoles;
    property curJueves: String read FcurJueves write SetcurJueves;
    property curViernes: String read FcurViernes write SetcurViernes;
    property curSabado: String read FcurSabado write SetcurSabado;
    property curDomingo: String read FcurDomingo write SetcurDomingo;
    property curMensaje: String read FcurMensaje write SetcurMensaje;
    property curDigitoSeguridad: Integer read FcurDigitoSeguridad write SetcurDigitoSeguridad;
    property CargasMaximas: Integer read FCargasMaximas write SetCargasMaximas;
    property SaldoMinimo: Double read FSaldoMinimo write SetSaldoMinimo;
    property LimiteLTTurno: Double read FLimiteLTTurno write SetLimiteLTTurno;
    property LimiteLTDia: Double read FLimiteLTDia write SetLimiteLTDia;
    property LimiteLTSemana: Double read FLimiteLTSemana write SetLimiteLTSemana;
    property LimiteLTMes: Double read FLimiteLTMes write SetLimiteLTMes;
    property LimiteMNTurno: Double read FLimiteMNTurno write SetLimiteMNTurno;
    property LimiteMNDia: Double read FLimiteMNDia write SetLimiteMNDia;
    property LimiteMNSemana: Double read FLimiteMNSemana write SetLimiteMNSemana;
    property LimiteMNMes: Double read FLimiteMNMes write SetLimiteMNMes;
    property ActualLTTurno: Double read FActualLTTurno write SetActualLTTurno;
    property ActualLTDia: Double read FActualLTDia write SetActualLTDia;
    property ActualLTSemana: Double read FActualLTSemana write SetActualLTSemana;
    property ActualLTMes: Double read FActualLTMes write SetActualLTMes;
    property ActualMNTurno: Double read FActualMNTurno write SetActualMNTurno;
    property ActualMNDia: Double read FActualMNDia write SetActualMNDia;
    property ActualMNSemana: Double read FActualMNSemana write SetActualMNSemana;
    property ActualMNMes: Double read FActualMNMes write SetActualMNMes;
    property ActualCargas: Integer read FActualCargas write SetActualCargas;

    property curLTTurno: Double read FcurLTTurno write SetcurLTTurno;
    property curLTDia: Double read FcurLTDia write SetcurLTDia;
    property curLTSemana: Double read FcurLTSemana write SetcurLTSemana;
    property curLTMes: Double read FcurLTMes write SetcurLTMes;
    property curMNTurno: Double read FcurMNTurno write SetcurMNTurno;
    property curMNDia: Double read FcurMNDia write SetcurMNDia;
    property curMNSemana: Double read FcurMNSemana write SetcurMNSemana;
    property curMNMes: Double read FcurMNMes write SetcurMNMes;

    property cliNombre: String read FcliNombre write SetcliNombre;
    property cliStatus: String read FcliStatus write SetcliStatus;
    property cliFormaCompra: Integer read FcliFormaCompra write SetcliFormaCompra;
    property cliCuentaContable: String read FcliCuentaContable write SetcliCuentaContable;
    property cliLimiteCredito: Double read FcliLimiteCredito write SetcliLimiteCredito;
    property cliVolProceso: Double read FcliVolProceso write SetcliVolProceso;
    property cliImpProceso: Double read FcliImpProceso write SetcliImpProceso;
  end;

  TProcesaConsumo = class(TProcesa)
  private
    FPrecioServido: Double;
    FImpuestoImporte: Double;
    FVolumenServido: Double;
    FImpuestoPorcentaje: Double;
    FImporteServido: Double;
    FClienteID: Integer;
    FTurno: Integer;
    FIdentificadorID: Integer;
    FSecuenciaVenta: Integer;
    FEstacionID: Integer;
    FDia: Integer;
    FPosicionCarga: Integer;
    FPeriodo: Integer;
    FFacturado: Integer;
    FTipoTarjetaID: Integer;
    FFactura: Integer;
    FKilometraje: Integer;
    FTarjetaID: Integer;
    FAutorizacionID: Integer;
    FEnIgresos: Integer;
    FFechaMovimiento: TDateTime;
    FDescripcion: String;
    FFechaCarga: TDateTime;
    FCuentaContable: String;
    FManualAutomatico: String;
    FTarjeta: String;
    FCodigo: String;
    FEjercicio: Integer;
    procedure SetAutorizacionID(const Value: Integer);
    procedure SetClienteID(const Value: Integer);
    procedure SetCodigo(const Value: String);
    procedure SetCuentaContable(const Value: String);
    procedure SetDescripcion(const Value: String);
    procedure SetDia(const Value: Integer);
    procedure SetEnIgresos(const Value: Integer);
    procedure SetEstacionID(const Value: Integer);
    procedure SetFactura(const Value: Integer);
    procedure SetFacturado(const Value: Integer);
    procedure SetFechaCarga(const Value: TDateTime);
    procedure SetFechaMovimiento(const Value: TDateTime);
    procedure SetIdentificadorID(const Value: Integer);
    procedure SetImporteServido(const Value: Double);
    procedure SetImpuestoImporte(const Value: Double);
    procedure SetImpuestoPorcentaje(const Value: Double);
    procedure SetKilometraje(const Value: Integer);
    procedure SetManualAutomatico(const Value: String);
    procedure SetPeriodo(const Value: Integer);
    procedure SetPosicionCarga(const Value: Integer);
    procedure SetPrecioServido(const Value: Double);
    procedure SetSecuenciaVenta(const Value: Integer);
    procedure SetTarjeta(const Value: String);
    procedure SetTarjetaID(const Value: Integer);
    procedure SetTipoTarjetaID(const Value: Integer);
    procedure SetTurno(const Value: Integer);
    procedure SetVolumenServido(const Value: Double);
    procedure SetEjercicio(const Value: Integer);
  public
    function Procesar: Integer; override;
    property SecuenciaVenta: Integer read FSecuenciaVenta write SetSecuenciaVenta;
    property TarjetaID: Integer read FTarjetaID write SetTarjetaID;
    property ClienteID: Integer read FClienteID write SetClienteID;
    property IdentificadorID: Integer read FIdentificadorID write SetIdentificadorID;
    property TipoTarjetaID: Integer read FTipoTarjetaID write SetTipoTarjetaID;
    property EstacionID: Integer read FEstacionID write SetEstacionID;
    property AutorizacionID: Integer read FAutorizacionID write SetAutorizacionID;
    property FechaMovimiento: TDateTime read FFechaMovimiento write SetFechaMovimiento;
    property FechaCarga: TDateTime read FFechaCarga write SetFechaCarga;
    property Ejercicio: Integer read FEjercicio write SetEjercicio;
    property Periodo: Integer read FPeriodo write SetPeriodo;
    property Dia: Integer read FDia write SetDia;
    property Turno: Integer read FTurno write SetTurno;
    property Kilometraje: Integer read FKilometraje write SetKilometraje;
    property Tarjeta: String read FTarjeta write SetTarjeta;
    property Descripcion: String read FDescripcion write SetDescripcion;
    property Codigo: String read FCodigo write SetCodigo;
    property PosicionCarga: Integer read FPosicionCarga write SetPosicionCarga;
    property VolumenServido: Double read FVolumenServido write SetVolumenServido;
    property PrecioServido: Double read FPrecioServido write SetPrecioServido;
    property ImporteServido: Double read FImporteServido write SetImporteServido;
    property ImpuestoImporte: Double read FImpuestoImporte write SetImpuestoImporte;
    property ImpuestoPorcentaje: Double read FImpuestoPorcentaje write SetImpuestoPorcentaje;
    property CuentaContable: String read FCuentaContable write SetCuentaContable;
    property ManualAutomatico: String read FManualAutomatico write SetManualAutomatico;
    property Facturado: Integer read FFacturado write SetFacturado;
    property EnIgresos: Integer read FEnIgresos write SetEnIgresos;
    property Factura: Integer read FFactura write SetFactura;
  end;

  TProcesaCupon = class(TProcesa)
  private
  public
    function Procesar: Integer; override;
  end;

  TReferencia = class
  private
    FReferencia: String;
    FStatus: Integer;
    FTipoTransaccion: Integer;
    procedure SetReferencia(const Value: String);
    function Checksum(ARef: String): String;
    function GetValida: Boolean;
    function BuscaCheckSum: String;
    function GetResultado: String;
    procedure SetStatus(const Value: Integer);
    procedure SetTipoTransaccion(const Value: Integer);
  public
    Procesa: TProcesa;
    destructor Destroy; override;
    function TipoProcesa: TTipoClaseProcesa;
    function Respuesta: String;
    function Armar(ARef: String): String;
    function BuscaCadena: String;
    property TipoTransaccion: Integer read FTipoTransaccion write SetTipoTransaccion;
    property Referencia: String read FReferencia write SetReferencia;
    property Status: Integer read FStatus write SetStatus;
  end;

  function GetParsedItem(TheItemStr, ParseStr : String; ItemNum : Integer): String;
  function MensajeDeError(Cual: Integer): String;

implementation

uses
  SysUtils, StrUtils, DateUtils;

function MensajeDeError(Cual: Integer): String;
begin
  Result:='Error no identificado.';
  case Cual of    //
    ERR_OK: Result:='^BIENVENIDO^ ^INICIE SU DESPACHO^ ';
    ERR_SINCOMUNICACION: Result:='^E R R O R^NO HAY COMUNICACION^CON EL SERVIDOR^ ';
    ERR_REFERENCIAINVALIDA: Result:='^ ^REFERENCIA^INVALIDA.^ ';
    ERR_TIPOPROCESOINVALIDO: Result:='Tipo de proceso invalido.';
    ERR_CHECKSUMNOVALIDO: Result:='Checksum no valido.';
    ERR_OCUPADO: Result:='^E R R O R^ ^SERVIDOR OCUPADO^ ';

    ERR_SINSALDO: Result:='^E R R O R^ ^SALDO INSUFICIENTE^ ';
    ERR_FUERAHORA: Result:='Fuera de horario.';
    ERR_CLIENTENOACTIVO: Result:='Cliente no activo.';
    ERR_TARJETANOACTIVA: Result:='Tarjeta no activa.';
    ERR_NIPINCORRECTO: Result:='^E R R O R^ ^NIP INCORRECTO^ ';
    ERR_DIGITOSEGURIDADINCORRECTO: Result:='^E R R O R^ ^TARJETA NO REGISTRADA^ ';
    ERR_IDENTIFICADORNOVALIDO: Result:='^E R R O R^ ^ IDENTIFICADOR NO EXISTE^';
    ERR_FORMACOMPRANOVALIDA: Result:='Forma de compra no valida o no existe.';
    ERR_CLIENTENOVALIDO: Result:='Cliente no valido o no existe.';
    ERR_VEHICULONOVALIDO: Result:='Vehiculo no valido o no existe.';
    ERR_DIGITOSEGURIDADNOVALIDO: Result:='Digito de seguridad no valido o no existe.';
    ERR_ESTACIONNOVALIDA: Result:='Estacion no valida o no existe.';
    ERR_OdometroNOVALIDO: Result:='^E R R O R^FALTA DIGITAR^O D O M E T R O^ ';
    ERR_SELECCIONPRODUCTONOVALIDO: Result:='No se envio la seleccion del producto.';
    ERR_PRECIOPRODUCTO1NOVALIDO: Result:='No se envio el precio del producto1.';
    ERR_PRECIOPRODUCTO2NOVALIDO: Result:='No se envio el precio del producto2.';
    ERR_PRECIOPRODUCTO3NOVALIDO: Result:='No se envio el precio del producto3.';
    ERR_MAXIMOVOLUMENNOVALIDO: Result:='Maximo volumen no enviado.';
    ERR_MAXIMOIMPORTENOVALIDO: Result:='Maximo importe no valido.';
    ERR_NIPNOVALIDO: Result:='No se recibio el NIP.';
    ERR_LTTURNOAGOTADO: Result:='^E R R O R^LITROS ASIGNADO TURNO^A G O T A D O^ ';
    ERR_LTDIAAGOTADO: Result:='^E R R O R^LITROS ASIGNADO DIA^A G O T A D O^ ';
    ERR_LTSEMANAAGOTADO: Result:='^E R R O R^LITROS ASIGNADO SEMANA^A G O T A D O^ ';
    ERR_LTMESAGOTADO: Result:='^E R R O R^LITROS ASIGNADO MES^A G O T A D O^ ';
    ERR_MNTURNOAGOTADO: Result:='^E R R O R^IMPORTE ASIGNADO TURNO^A G O T A D O^ ';
    ERR_MNDIAAGOTADO: Result:='^E R R O R^IMPORTE ASIGNADO DIA^A G O T A D O^ ';
    ERR_MNSEMANAAGOTADO: Result:='^E R R O R^IMPORTE ASIGNADO SEMANA^A G O T A D O^ ';
    ERR_MNMESAGOTADO: Result:='^E R R O R^IMPORTE ASIGNADO MES^A G O T A D O^ ';
    ERR_CARGASAGOTADO: Result:='^E R R O R^CARGAS ASIGNADAS AL DIA^A G O T A D A S^ ';
    ERR_TARJETAINACTIVA: Result:='^E R R O R^ ^TARJETA INACTIVA^ ';
    ERR_TARJETACANCELADA: Result:='^E R R O R^ ^TARJETA CANCELADA^ ';
    ERR_TARJETABLOQUEADA: Result:='^E R R O R^ ^TARJETA BLOQUEADA^ ';
    ERR_TARJETAVENCIDA: Result:='^E R R O R^ ^TARJETA VENCIDA^ ';
    ERR_FUERADEHORARIO: Result:='^E R R O R^ ^TARJETA FUERA^DE HORARIO^ ';
    ERR_SALDORETENIDO: Result:='^TARJETA EN PROCESO DE CARGA^ESPERE LIBERACION DE SALDO^SALDO RETENIDO^INTENTE MAS TARDE';
    ERR_COMBUSTIBLENOAUTORIZADO: Result:='^COMBUSTIBLE NO AUTORIZADO^ ^CONSULTE CON SU ADMINISTRADOR^ ';
    ERR_CLIENTEINACTIVO: Result:='^E R R O R^ ^CLIENTE INACTIVO^ ';
    ERR_CLIENTECANCELADO: Result:='^E R R O R^ ^CLIENTE CANCELADO^ ';
    ERR_CLIENTEBAJA: Result:='^E R R O R^ ^CLIENTE DADO DE BAJA^ ';

    ERR_SINDATOSCONSUMO: Result:='Faltan datos para guardar el consumo.';
    ERR_FORMATOFECHAINVALIDO: Result:='Formato de fecha invalida.';
    ERR_ERRORALGUARDARSONSUMOS: Result:='Ocurrio un error al guardar la informacion en Consumos.';
    ERR_TRAMADUPLICADA: Result:='La trama esta duplicada.';

    ERR_CUPONNOACTIVO: Result:='Cup�n no activo';
    ERR_CUPONUTILIZADO: Result:='Este cup�n ya fue utilizado.';
    ERR_CUPONSINPAGO: Result:='Este cup�n no ha sido pagado.';
  end;    // case
end;

function EsNumerico(Cad: String): Boolean;
var
  I: Integer;
begin
  Result:=False;
  if Cad = '' then
    Exit;
  for I := 1 to Length(Cad) do    // Iterate
  begin
    Result:=Cad[I] in ['0'..'9', '.'];
    if not Result then
      Exit;
  end;    // for
end;

function IFF(A, B: Double): Double;
begin
  Result:=a;
  if b < a then
    Result:=b;
end;

function Menor(A, B, C, D: Double): Double;
begin
  Result:=A;
  Result:=IFF(Result, B);
  Result:=IFF(Result, C);
  Result:=IFF(Result, D);
  if Result < 0 then
    Result:=0;
end;

function GetParsedItem(TheItemStr, ParseStr : String; ItemNum : Integer): String;
var
  I4 : Integer;
  S4 : String;
Begin
TheItemStr := TheItemStr + ParseStr;
  S4 := '';
 I4 := 0;
 While I4 <= ItemNum Do
  Begin
   S4 := Copy(TheItemStr, 1, Pos(ParseStr, TheItemStr) - 1);
   Delete(TheItemStr, 1, Pos(ParseStr, TheItemStr));
   Inc(I4);
  End;
  Result := S4;
End;

{ TReferencia }

function TReferencia.Armar(ARef: String): String;
begin
  if FStatus <> 0 then
    ARef:=MensajeDeError(FStatus);
  Result:=#2 + ARef + #5 + Checksum(ARef) + #3;
end;

function TReferencia.BuscaCadena: String;
var
  Ini, Fin: Integer;
begin
  Result:='';
  Ini:=Pos(#2, FReferencia);
  Fin:=Pos(#5, FReferencia);
  if Fin > Ini then
    Result:=Copy(FReferencia, ini+1, Fin-Ini-1);
end;

function TReferencia.BuscaCheckSum: String;
var
  Ini, Fin: Integer;
begin
  Result:='';
  Ini:=Pos(#5, FReferencia);
  Fin:=Pos(#3, FReferencia);
  if Fin > Ini then
    Result:=Copy(FReferencia, ini+1, Fin-Ini-1);
end;

function TReferencia.Checksum(ARef: String): String;
const
  Validador = 'Ya casi salimos de las broncas...';
var
  nLrcCalculado, nLen,
  nPos: Integer;

begin

  if LeftStr(ARef,1) <> Char(2) then
    ARef:= Char(2) + ARef;

  if RightStr(ARef,1) <> Char(5) then
    ARef:= ARef + Char(5);

  Insert(Validador, ARef, Length(ARef));

  nLen:= Length(ARef);
  nLrcCalculado:= 0;

  for nPos := 1 to nLen do
    nLrcCalculado:= nLrcCalculado + (Ord(ARef[nPos]) * npos);

  Result:=RightStr(IntToHex(nLrcCalculado, 4), 4);
end;

destructor TReferencia.Destroy;
begin
  if Procesa <> nil then
    Procesa.Free;
  inherited;
end;

function TReferencia.GetResultado: String;
begin
  if GetValida then
  begin
    Result:=BuscaCadena
  end
  else
    Result:='';
end;

function TReferencia.GetValida: Boolean;
begin
  Result:=(BuscaCadena <> '');
  if (BuscaCheckSum = '') or (Checksum(BuscaCadena) <> BuscaCheckSum) then
  begin
    Result:=False;
    FStatus:=ERR_CHECKSUMNOVALIDO;
  end;
end;

function TReferencia.Respuesta: String;
var
  Cad: String;
begin
  FStatus:=2;
  try
    Cad:=GetResultado;
    if Cad <> '' then
    begin
      //Procesa:=TipoProcesa.Create(TipoTransaccion, Cad);
      //FStatus:=Procesa.Inicia;
      Result:=Armar(Procesa.Mensaje);
    end
  except
    Result:=Armar('');
  end;
end;

procedure TReferencia.SetReferencia(const Value: String);
begin
  FReferencia := Value;
end;

procedure TReferencia.SetStatus(const Value: Integer);
begin
  FStatus := Value;
end;

procedure TReferencia.SetTipoTransaccion(const Value: Integer);
begin
  FTipoTransaccion := Value;
end;

function TReferencia.TipoProcesa: TTipoClaseProcesa;
begin
  Result:=nil;
  case TipoTransaccion of    //
    1, 11: Result:=TProcesaTarjeta;
    2: Result:=TProcesaCupon;
    201: Result:=TProcesaConsumo;
  else
    FStatus:=ERR_TIPOPROCESOINVALIDO;
  end;    // case
end;

{ TValidacion }

procedure TProcesa.SetMensaje(const Value: String);
begin
  FMensaje := Value;
end;

procedure TProcesa.SetReferencia(const Value: String);
begin
  FReferencia := Value;
end;

{ TProcesaTarjeta }

function TProcesaTarjeta.Procesar: Integer;
var
  MenorLT, MenorMN: Double;
begin
  Result:=ERR_OK;



  if (TipoTransaccion = 11) and (Result = ERR_OK) then
  begin
    if (curStatus = 'I') then
      Result:=ERR_TARJETAINACTIVA;

    if (curStatus = 'C') then
      Result:=ERR_TARJETACANCELADA;

    if (curStatus = 'B') then
      Result:=ERR_TARJETABLOQUEADA;

    if (cliStatus = 'I') then
      Result:=ERR_CLIENTEINACTIVO;

    if (cliStatus = 'C') then
      Result:=ERR_CLIENTECANCELADO;

    if (cliStatus = 'B') then
      Result:=ERR_CLIENTEBAJA;

    if curFechaVencimiento < Trunc(Now) then
      Result:=ERR_TARJETAVENCIDA;

    if Result = ERR_OK then
    begin
      Mensaje:='%d|%s|%0.2f|%s|%s|%d|%s|%s|%s|%s|%s|%d|%s|%s|%s|%0.2f|';
      Mensaje:=Format(Mensaje, [ERR_OK, MensajeAutoriza, Despacho, VolumenImporte,
                                curProductoAutorizado, curClasificacion, curNombre,
                                curNoEconomico, curIdentificacion, curDepartamento,
                                curMensaje, cliFormaCompra, cliNombre,
                                cliCuentaContable, curTipoTarjeta, curDisponible]);
      Mensaje:=Mensaje + '';
    end;
    Exit;
  end;

  curLTTurno:=99999;
  curLTDia:=99999;
  curLTSemana:=99999;
  curLTMes:=99999;
  curMNTurno:=99999;
  curMNDia:=99999;
  curMNSemana:=99999;
  curMNMes:=99999;

  if PresetMN = 0 then
    PresetMN:=99999;
  if PresetLT = 0 then
    PresetLT:=99999;

  if (LimiteLTTurno > 0) then
  begin
    curLTTurno:=(LimiteLTTurno - ActualLTTurno);
    if (curLTTurno <= 0) then
      Result:=ERR_LTTURNOAGOTADO;
  end;

  if (LimiteLTDia > 0) then
  begin
    curLTDia:=(LimiteLTDia - ActualLTDia);
    if (curLTDia <= 0) then
      Result:=ERR_LTDIAAGOTADO;
  end;

  if (LimiteLTSemana > 0) then
  begin
    curLTSemana:=(LimiteLTSemana - ActualLTSemana);
    if (curLTSemana <= 0) then
      Result:=ERR_LTSEMANAAGOTADO;
  end;

  if (LimiteLTMes > 0) then
  begin
    curLTMes:=(LimiteLTMes - ActualLTMes);
    if (curLTMes <= 0) then
      Result:=ERR_LTMESAGOTADO;
  end;

  if (LimiteMNTurno > 0) then
  begin
    curMNTurno:=(LimiteMNTurno - ActualMNTurno);
    if (curMNTurno <= 0) then
      Result:=ERR_MNTURNOAGOTADO;
  end;

  if (LimiteMNDia > 0) then
  begin
    curMNDia:=(LimiteMNDia - ActualMNDia);
    if (curMNDia <= 0) then
      Result:=ERR_MNDIAAGOTADO;
  end;

  if (LimiteMNSemana > 0) then
  begin
    curMNSemana:=(LimiteMNSemana - ActualMNSemana);
    if (curMNSemana <= 0) then
      Result:=ERR_MNSEMANAAGOTADO;
  end;

  if (LimiteMNMes > 0) then
  begin
    curMNMes:=(LimiteMNMes - ActualMNMes);
    if (curMNMes <= 0) then
      Result:=ERR_MNMESAGOTADO;
  end;

  MenorLT:=Menor(curLTTurno, curLTDia, curLTSemana, curLTMes) - curLitTarProceso;
  MenorMN:=Menor(curMNTurno, curMNDia, curMNSemana, curMNMes) - curImpTarProceso;

  if MenorLT > PresetLT then
    MenorLT:=PresetLT;
  if MenorMN > PresetMN then
    MenorMN:=PresetMN;

  if Result = ERR_OK then
  begin
    if (MenorLT <= 0) or (MenorMN <= 0) then
      Result:=ERR_SALDORETENIDO;
  end;

  if not ProductoValido then
    Result:=ERR_COMBUSTIBLENOAUTORIZADO;

  if (ActualCargas >= CargasMaximas) then
    Result:=ERR_CARGASAGOTADO;

  if (Odometro < 0) and (curOdometro) then
    Result:=ERR_OdometroNOVALIDO;

  if (NIP <> '0') and (curNIP <> NIP) then
    Result:=ERR_NIPINCORRECTO;

  if (DigitoSeguridad <> 0) and (DigitoSeguridad <> curDigitoSeguridad) then
    Result:=ERR_DIGITOSEGURIDADINCORRECTO;

  if FueraDeHorario then
    Result:=ERR_FUERADEHORARIO;

  curDisponible:= curSaldo;

  if curDisponible <= 0.99 then
    Result:=ERR_SINSALDO;

  if (curStatus = 'I') then
    Result:=ERR_TARJETAINACTIVA;

  if (curStatus = 'C') then
    Result:=ERR_TARJETACANCELADA;

  if (curStatus = 'B') then
    Result:=ERR_TARJETABLOQUEADA;

  if (cliStatus = 'I') then
    Result:=ERR_CLIENTEINACTIVO;

  if (cliStatus = 'C') then
    Result:=ERR_CLIENTECANCELADO;

  if (cliStatus = 'B') then
    Result:=ERR_CLIENTEBAJA;

  if curFechaVencimiento < Trunc(Now) then
    Result:=ERR_TARJETAVENCIDA;

  if Result <> ERR_OK then
    Exit;

  SaldoMinimo:=curDisponible - cliImpProceso;
  if SaldoMinimo <= 0.99 then
    Result:=ERR_SALDORETENIDO;

  if (MenorLT * PrecioAlto) > MenorMN then
  begin
    VolumenImporte:='I';
    Despacho:=MenorMN;
  end
  else
  begin
    VolumenImporte:='V';
    Despacho:= MenorLT;
  end;


  if VolumenImporte = 'I' then
  begin
    if SaldoMinimo < MenorMN then
      Despacho:=SaldoMinimo;
  end
  else
  begin
     if SaldoMinimo < (MenorLT * PrecioAlto) then
     begin
       Despacho:=SaldoMinimo;
       VolumenImporte:='I';
     end;
  end;

  if VolumenImporte = 'I' then
    Despacho:=IFF(Despacho, MaximoImporte)
  else
    Despacho:=IFF(Despacho, MaximoVolumen);

  if Despacho < 1 then
  begin
    Result:=ERR_SINSALDO;
    Exit;
  end;

  Mensaje:='%d|%s|%0.2f|%s|%s|%d|%s|%s|%s|%s|%s|%d|%s|%s|%s|%0.2f|';
  curMensaje:=MensajeAutoriza;
  Mensaje:=Format(Mensaje, [ERR_OK, MensajeAutoriza, Despacho, VolumenImporte,
                            curProductoAutorizado, curClasificacion, curNombre,
                            curNoEconomico, curIdentificacion, curDepartamento,
                            curMensaje, cliFormaCompra, cliNombre,
                            cliCuentaContable, curTipoTarjeta, curDisponible]);
end;

procedure TProcesaTarjeta.SetClienteID(const Value: Integer);
begin
  FClienteID := Value;
end;

procedure TProcesaTarjeta.SetcurAbonos(const Value: DOuble);
begin
  FcurAbonos := Value;
end;

procedure TProcesaTarjeta.SetcurCargos(const Value: Double);
begin
  FcurCargos := Value;
end;

procedure TProcesaTarjeta.SetcurCentroCosto(const Value: String);
begin
  FcurCentroCosto := Value;
end;

procedure TProcesaTarjeta.SetcurClasificacion(const Value: Integer);
begin
  FcurClasificacion := Value;
end;

procedure TProcesaTarjeta.SetcurFechaVencimiento(const Value: TDateTime);
begin
  FcurFechaVencimiento := Value;
end;

procedure TProcesaTarjeta.SetcurIdentificacion(const Value: String);
begin
  FcurIdentificacion := Value;
end;

procedure TProcesaTarjeta.SetcurImpCliProceso(const Value: Double);
begin
  FcurImpCliProceso := Value;
end;

procedure TProcesaTarjeta.SetcurImpTarProceso(const Value: Double);
begin
  FcurImpTarProceso := Value;
end;

procedure TProcesaTarjeta.SetcurLitCliProceso(const Value: Double);
begin
  FcurLitCliProceso := Value;
end;

procedure TProcesaTarjeta.SetcurLitTarProceso(const Value: Double);
begin
  FcurLitTarProceso := Value;
end;

procedure TProcesaTarjeta.SetcurNIP(const Value: String);
begin
  FcurNIP := Value;
end;

procedure TProcesaTarjeta.SetcurNombre(const Value: String);
begin
  FcurNombre := Value;
end;

procedure TProcesaTarjeta.SetcurProductoAutorizado(const Value: String);
begin
  FcurProductoAutorizado := Value;
end;

procedure TProcesaTarjeta.SetcurSaldo(const Value: Double);
begin
  FcurSaldo := Value;
end;

procedure TProcesaTarjeta.SetcurStatus(const Value: String);
begin
  FcurStatus := Value;
end;

procedure TProcesaTarjeta.SetcurDepartamento(const Value: String);
begin
  FcurDepartamento := Value;
end;

procedure TProcesaTarjeta.SetDigitoSeguridad(const Value: Integer);
begin
  FDigitoSeguridad := Value;
end;

procedure TProcesaTarjeta.SetEstacion(const Value: Integer);
begin
  FEstacion := Value;
end;

procedure TProcesaTarjeta.SetFormaCompraID(const Value: Integer);
begin
  FFormaCompraID := Value;
end;

procedure TProcesaTarjeta.SetIdentificadorID(const Value: Integer);
begin
  FIdentificadorID := Value;
end;

procedure TProcesaTarjeta.SetNIP(const Value: String);
begin
  FNIP := Value;
end;

procedure TProcesaTarjeta.SetcurNoEconomico(const Value: String);
begin
  FcurNoEconomico := Value;
end;

procedure TProcesaTarjeta.SetTarjetaID(const Value: Integer);
begin
  FTarjetaID := Value;
end;

procedure TProcesaTarjeta.SetcurFirma(const Value: Boolean);
begin
  FcurFirma := Value;
end;

procedure TProcesaTarjeta.SetcurOdometro(const Value: Boolean);
begin
  FcurOdometro := Value;
end;

procedure TProcesaTarjeta.SetcurPlacas(const Value: Boolean);
begin
  FcurPlacas := Value;
end;

procedure TProcesaTarjeta.SetOdometro(const Value: Integer);
begin
  FOdometro := Value;
end;

procedure TProcesaTarjeta.SetcurDomingo(const Value: String);
begin
  FcurDomingo := Value;
end;

procedure TProcesaTarjeta.SetcurJueves(const Value: String);
begin
  FcurJueves := Value;
end;

procedure TProcesaTarjeta.SetcurLunes(const Value: String);
begin
  FcurLunes := Value;
end;

procedure TProcesaTarjeta.SetcurMartes(const Value: String);
begin
  FcurMartes := Value;
end;

procedure TProcesaTarjeta.SetcurMiercoles(const Value: String);
begin
  FcurMiercoles := Value;
end;

procedure TProcesaTarjeta.SetcurSabado(const Value: String);
begin
  FcurSabado := Value;
end;

procedure TProcesaTarjeta.SetcurViernes(const Value: String);
begin
  FcurViernes := Value;
end;

procedure TProcesaTarjeta.SetActualCargas(const Value: Integer);
begin
  FActualCargas := Value;
end;

procedure TProcesaTarjeta.SetActualLTDia(const Value: Double);
begin
  FActualLTDia := Value;
end;

procedure TProcesaTarjeta.SetActualLTMes(const Value: Double);
begin
  FActualLTMes := Value;
end;

procedure TProcesaTarjeta.SetActualLTSemana(const Value: Double);
begin
  FActualLTSemana := Value;
end;

procedure TProcesaTarjeta.SetActualLTTurno(const Value: Double);
begin
  FActualLTTurno := Value;
end;

procedure TProcesaTarjeta.SetActualMNDia(const Value: Double);
begin
  FActualMNDia := Value;
end;

procedure TProcesaTarjeta.SetActualMNMes(const Value: Double);
begin
  FActualMNMes := Value;
end;

procedure TProcesaTarjeta.SetActualMNSemana(const Value: Double);
begin
  FActualMNSemana := Value;
end;

procedure TProcesaTarjeta.SetActualMNTurno(const Value: Double);
begin
  FActualMNTurno := Value;
end;

procedure TProcesaTarjeta.SetLimiteLTDia(const Value: Double);
begin
  FLimiteLTDia := Value;
end;

procedure TProcesaTarjeta.SetLimiteLTMes(const Value: Double);
begin
  FLimiteLTMes := Value;
end;

procedure TProcesaTarjeta.SetLimiteLTSemana(const Value: Double);
begin
  FLimiteLTSemana := Value;
end;

procedure TProcesaTarjeta.SetLimiteLTTurno(const Value: Double);
begin
  FLimiteLTTurno := Value;
end;

procedure TProcesaTarjeta.SetLimiteMNDia(const Value: Double);
begin
  FLimiteMNDia := Value;
end;

procedure TProcesaTarjeta.SetLimiteMNMes(const Value: Double);
begin
  FLimiteMNMes := Value;
end;

procedure TProcesaTarjeta.SetLimiteMNSemana(const Value: Double);
begin
  FLimiteMNSemana := Value;
end;

procedure TProcesaTarjeta.SetLimiteMNTurno(const Value: Double);
begin
  FLimiteMNTurno := Value;
end;

procedure TProcesaTarjeta.SetcurMensaje(const Value: String);
begin
  FcurMensaje := Value;
end;

procedure TProcesaTarjeta.SetcurLTDia(const Value: Double);
begin
  FcurLTDia := Value;
end;

procedure TProcesaTarjeta.SetcurLTMes(const Value: Double);
begin
  FcurLTMes := Value;
end;

procedure TProcesaTarjeta.SetcurLTSemana(const Value: Double);
begin
  FcurLTSemana := Value;
end;

procedure TProcesaTarjeta.SetcurLTTurno(const Value: Double);
begin
  FcurLTTurno := Value;
end;

procedure TProcesaTarjeta.SetcurMNDia(const Value: Double);
begin
  FcurMNDia := Value;
end;

procedure TProcesaTarjeta.SetcurMNMes(const Value: Double);
begin
  FcurMNMes := Value;
end;

procedure TProcesaTarjeta.SetcurMNSemana(const Value: Double);
begin
  FcurMNSemana := Value;
end;

procedure TProcesaTarjeta.SetcurMNTurno(const Value: Double);
begin
  FcurMNTurno := Value;
end;

procedure TProcesaTarjeta.SetCargasMaximas(const Value: Integer);
begin
  FCargasMaximas := Value;
end;

procedure TProcesaTarjeta.SetcurDigitoSeguridad(const Value: Integer);
begin
  FcurDigitoSeguridad := Value;
end;

function TProcesaTarjeta.FueraDeHorario: Boolean;
var
  S: String;
  Hora: Integer;
begin
  Hora:=StrToInt(FormatDateTime('hh', Now)) + 1;
  case DayOfWeek(Now) of    //
    1: S:=curDomingo;
    2: S:=curLunes;
    3: S:=curMartes;
    4: S:=curMiercoles;
    5: S:=curJueves;
    6: S:=curViernes;
    7: S:=curSabado;
  end;    // case
  Result:=S[Hora] = '0';
end;

procedure TProcesaTarjeta.SetBomba(const Value: Integer);
begin
  FBomba := Value;
end;

procedure TProcesaTarjeta.SetcliCuentaContable(const Value: String);
begin
  FcliCuentaContable := Value;
end;

procedure TProcesaTarjeta.SetcliFormaCompra(const Value: Integer);
begin
  FcliFormaCompra := Value;
end;

procedure TProcesaTarjeta.SetcliImpProceso(const Value: Double);
begin
  FcliImpProceso := Value;
end;

procedure TProcesaTarjeta.SetcliLimiteCredito(const Value: Double);
begin
  FcliLimiteCredito := Value;
end;

procedure TProcesaTarjeta.SetcliNombre(const Value: String);
begin
  FcliNombre := Value;
end;

procedure TProcesaTarjeta.SetcliStatus(const Value: String);
begin
  FcliStatus := Value;
end;

procedure TProcesaTarjeta.SetcliVolProceso(const Value: Double);
begin
  FcliVolProceso := Value;
end;

procedure TProcesaTarjeta.SetcurDisponible(const Value: Double);
begin
  FcurDisponible := Value;
end;

procedure TProcesaTarjeta.SetcurTipoTarjeta(const Value: String);
begin
  FcurTipoTarjeta := Value;
end;

procedure TProcesaTarjeta.SetSaldoMinimo(const Value: Double);
begin
  FSaldoMinimo := Value;
end;

procedure TProcesaTarjeta.SetDiesel(const Value: Double);
begin
  FDiesel := Value;
end;

procedure TProcesaTarjeta.SetMagna(const Value: Double);
begin
  FMagna := Value;
end;

procedure TProcesaTarjeta.SetPremium(const Value: Double);
begin
  FPremium := Value;
end;

procedure TProcesaTarjeta.SetPresetLT(const Value: Double);
begin
  FPresetLT := Value;
end;

procedure TProcesaTarjeta.SetPresetMN(const Value: Double);
begin
  FPresetMN := Value;
end;

procedure TProcesaTarjeta.SetSeleccionDeProducto(const Value: String);
begin
  FSeleccionDeProducto := Value;
end;

function TProcesaTarjeta.ProductoValido: Boolean;
var
  I: Integer;
  S: String;
begin
  if SeleccionDeProducto = '' then
  begin
    Result:=True;
    Exit;
  end;
  Result:=False;
  S:=curProductoAutorizado;
  for I := 1 to Length(S) do    // Iterate
  begin
    if Pos(S[I], SeleccionDeProducto) > 0 then
      Result:=True
    else
      Delete(FcurProductoAutorizado, Pos(S[I], FcurProductoAutorizado), 1);
  end;    // for
end;

function TProcesaTarjeta.PrecioAlto: Double;
begin
  Result:=Diesel;
  if Pos('2', curProductoAutorizado) > 0 then
    Result:=Premium
  else
    if Pos('1', curProductoAutorizado) > 0 then
      Result:=Magna;
end;

procedure TProcesaTarjeta.SetVolumenImporte(const Value: String);
begin
  FVolumenImporte := Value;
end;

procedure TProcesaTarjeta.SetDespacho(const Value: Double);
begin
  FDespacho := Value;
end;

function TProcesaTarjeta.MensajeAutoriza: String;
begin
  Result:='^A U T O R I Z A D A^';
  if VolumenImporte = 'I' then
    Result:=Result + 'IMPORTE: ' + FormatFloat('#0.00', Despacho) + '^'
  else
    Result:=Result + 'LITROS: ' + FormatFloat('#0.00', Despacho) + '^';

  if curProductoAutorizado = '123' then
  begin
    Result:=Result + 'TODOS LOS PRODUCTOS';
  end
  else
  begin
    if Pos('1', curProductoAutorizado) > 0 then
      Result:=Result + ' MAGNA';

    if Pos('2', curProductoAutorizado) > 0 then
      Result:=Result + ' PREMIUM';

    if Pos('3', curProductoAutorizado) > 0 then
      Result:=Result + ' DIESEL';
  end;
  Result:=Result + '^ ';

  {if curOdometro or curFirma or curPlacas then
  begin
    if curOdometro then
      Result:=Result + ' ODOMETRO';
    if curFirma then
      Result:=Result + ' FIRMA';
    if curPlacas then
      Result:=Result + ' PLACAS';
  end;}
end;

procedure TProcesaTarjeta.SetMaximoImporte(const Value: Double);
begin
  FMaximoImporte := Value;
end;

procedure TProcesaTarjeta.SetMaximoVolumen(const Value: Double);
begin
  FMaximoVolumen := Value;
end;

{ TProcesaCupon }

function TProcesaCupon.Procesar: Integer;
begin
  Result:=ERR_OK;
end;

{ TProcesaConsumo }

function TProcesaConsumo.Procesar: Integer;
begin
  Result:=ERR_OK;
  Mensaje:='0|OK';
end;

procedure TProcesaConsumo.SetAutorizacionID(const Value: Integer);
begin
  FAutorizacionID := Value;
end;

procedure TProcesaConsumo.SetClienteID(const Value: Integer);
begin
  FClienteID := Value;
end;

procedure TProcesaConsumo.SetCodigo(const Value: String);
begin
  FCodigo := Value;
end;

procedure TProcesaConsumo.SetCuentaContable(const Value: String);
begin
  FCuentaContable := Value;
end;

procedure TProcesaConsumo.SetDescripcion(const Value: String);
begin
  FDescripcion := Value;
end;

procedure TProcesaConsumo.SetDia(const Value: Integer);
begin
  FDia := Value;
end;

procedure TProcesaConsumo.SetEjercicio(const Value: Integer);
begin
  FEjercicio := Value;
end;

procedure TProcesaConsumo.SetEnIgresos(const Value: Integer);
begin
  FEnIgresos := Value;
end;

procedure TProcesaConsumo.SetEstacionID(const Value: Integer);
begin
  FEstacionID := Value;
end;

procedure TProcesaConsumo.SetFactura(const Value: Integer);
begin
  FFactura := Value;
end;

procedure TProcesaConsumo.SetFacturado(const Value: Integer);
begin
  FFacturado := Value;
end;

procedure TProcesaConsumo.SetFechaCarga(const Value: TDateTime);
begin
  FFechaCarga := Value;
end;

procedure TProcesaConsumo.SetFechaMovimiento(const Value: TDateTime);
begin
  FFechaMovimiento := Value;
end;

procedure TProcesaConsumo.SetIdentificadorID(const Value: Integer);
begin
  FIdentificadorID := Value;
end;

procedure TProcesaConsumo.SetImporteServido(const Value: Double);
begin
  FImporteServido := Value;
end;

procedure TProcesaConsumo.SetImpuestoImporte(const Value: Double);
begin
  FImpuestoImporte := Value;
end;

procedure TProcesaConsumo.SetImpuestoPorcentaje(const Value: Double);
begin
  FImpuestoPorcentaje := Value;
end;

procedure TProcesaConsumo.SetKilometraje(const Value: Integer);
begin
  FKilometraje := Value;
end;

procedure TProcesaConsumo.SetManualAutomatico(const Value: String);
begin
  FManualAutomatico := Value;
end;

procedure TProcesaConsumo.SetPeriodo(const Value: Integer);
begin
  FPeriodo := Value;
end;

procedure TProcesaConsumo.SetPosicionCarga(const Value: Integer);
begin
  FPosicionCarga := Value;
end;

procedure TProcesaConsumo.SetPrecioServido(const Value: Double);
begin
  FPrecioServido := Value;
end;

procedure TProcesaConsumo.SetSecuenciaVenta(const Value: Integer);
begin
  FSecuenciaVenta := Value;
end;

procedure TProcesaConsumo.SetTarjeta(const Value: String);
begin
  FTarjeta := Value;
end;

procedure TProcesaConsumo.SetTarjetaID(const Value: Integer);
begin
  FTarjetaID := Value;
end;

procedure TProcesaConsumo.SetTipoTarjetaID(const Value: Integer);
begin
  FTipoTarjetaID := Value;
end;

procedure TProcesaConsumo.SetTurno(const Value: Integer);
begin
  FTurno := Value;
end;

procedure TProcesaConsumo.SetVolumenServido(const Value: Double);
begin
  FVolumenServido := Value;
end;


procedure TProcesa.SetTipoTransaccion(const Value: Integer);
begin
  FTipoTransaccion := Value;
end;

end.