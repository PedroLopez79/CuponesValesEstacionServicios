unit CistemCore;

interface

uses
  Forms, Windows, Classes, Messages, SysUtils, ExtCtrls, SynchedThreads;

type

  TProceso = class
  private
    FEjecutando: Boolean;
    FTerminado: Boolean;
    FProcesoID: Integer;
    FFechaFinal: TDateTime;
    FFechaInicial: TDateTime;
    FBomba: Integer;
    FGasolina: Integer;
    FCantidad: Real;
    procedure SetEjecutando(const Value: Boolean);
    procedure SetTerminado(const Value: Boolean);
    procedure SetProcesoID(const Value: Integer);
    procedure SetFechaFinal(const Value: TDateTime);
    procedure SetFechaInicial(const Value: TDateTime);
    procedure SetBomba(const Value: Integer);
    procedure SetCantidad(const Value: Real);
    procedure SetGasolina(const Value: Integer);
  public
    property ProcesoID: Integer read FProcesoID write SetProcesoID;
    property Ejecutando: Boolean read FEjecutando write SetEjecutando;
    property Terminado: Boolean read FTerminado write SetTerminado;
    property FechaInicial: TDateTime read FFechaInicial write SetFechaInicial;
    property FechaFinal: TDateTime read FFechaFinal write SetFechaFinal;
    property Bomba: Integer read FBomba write SetBomba;
    property Gasolina: Integer read FGasolina write SetGasolina;
    property Cantidad: Real read FCantidad write SetCantidad;
    procedure Ejecutar; Virtual; abstract;
    procedure Execute(Data: TDatosThread);
  end;

  TTipoProcesa = class of TProceso;

  TListaProcesos = class(TThread)
  private
    FLista: TList;
    FProcesando: Boolean;
    FProcesoDefault: TProceso;
    FTimer: TTimer;
    FProcesoID: Integer;
    FProcesoIDActual: Integer;
    FIndiceActual: Integer;
    FTerminado: Boolean;
    FTiempoPoleo: Integer;
    FMiPrimerPoleo: Boolean;
    procedure SetProcesando(const Value: Boolean);
    procedure SetProcesoDefault(const Value: TProceso);
    function GetCount: Integer;
    procedure SetProcesoIDActual(const Value: Integer);
    procedure EjecutaProceso;
    procedure SetIndiceActual(const Value: Integer);
    procedure SetTerminado(const Value: Boolean);
    procedure SetTiempoPoleo(const Value: Integer);
    procedure SetMiPrimerPoleo(const Value: Boolean);
    property Terminado: Boolean read FTerminado write SetTerminado;
    property TiempoPoleo: Integer read FTiempoPoleo write SetTiempoPoleo;
    property MiPrimerPoleo: Boolean read FMiPrimerPoleo write SetMiPrimerPoleo;
  public
    property Procesando: Boolean read FProcesando write SetProcesando;
    property Count: Integer read GetCount;
    property ProcesoDefault: TProceso read FProcesoDefault write SetProcesoDefault;
    property ProcesoIDActual: Integer read FProcesoIDActual write SetProcesoIDActual;
    property IndiceActual: Integer read FIndiceActual write SetIndiceActual;
    constructor Create(ATiempoPoleo: Integer);
    destructor Destroy; override;
    procedure Execute; override;

    function AgregarProceso(AProceso: TTipoProcesa; Bomba: Integer = 0; Gasolina: Integer = 0; Cantidad: Real = 0): Integer;
    function ExisteProceso(AIndex: Integer) : Boolean;
    procedure Inicia;
    procedure Pausa;
    Procedure Termina;
    procedure Limpiar;
  end;

implementation



{ TListaProcesos }

function TListaProcesos.AgregarProceso(AProceso: TTipoProcesa;
    Bomba: Integer = 0; Gasolina: Integer = 0; Cantidad: Real = 0): Integer;
var
  Aux: TProceso;
begin
  Inc(FProcesoID);
  try
    Aux:=AProceso.Create;
    Aux.Bomba:=Bomba;
    Aux.Gasolina:=Gasolina;
    aux.Cantidad:=Cantidad;
    Aux.ProcesoID:=FProcesoID;
    Result:=FProcesoID;
    FLista.Add(Aux);
  except
    Result:=-1;
  end;
end;

constructor TListaProcesos.Create(ATiempoPoleo: Integer);
begin
  inherited Create(True);
  Priority:=tpLowest;

  FLista:=TList.Create;
  TiempoPoleo:=ATiempoPoleo;
  FProcesoID:=1;
  Procesando:=False;
  Terminado:=False;
  MiPrimerPoleo:=True;
end;

destructor TListaProcesos.Destroy;
begin
  FLista.Free;
  FTimer.Free;
  inherited;
end;

procedure TListaProcesos.EjecutaProceso;
var
  Data: TDatosThread;
begin
  try
    ProcesoDefault.Ejecutando:=True;
    ProcesoDefault.Terminado:=False;
    ProcesoIDActual:=ProcesoDefault.ProcesoID;
    ProcesoDefault.FechaInicial:=Now;
    RunInThread(ProcesoDefault.Execute, Data);
    while not ProcesoDefault.Terminado do
    begin
      Application.ProcessMessages;
      Sleep(100);
    end;
    ProcesoDefault.FechaFinal:=Now;
  except
  end;
end;

procedure TListaProcesos.Execute;
begin
  inherited;
  while not Terminado do
  begin
    if not Procesando then
    begin
      Procesando:=True;
      if Count > 1 then
      begin
        IndiceActual:=1;
        ProcesoDefault:=TProceso(FLista[1]);
      end
      else
      begin
        IndiceActual:=0;
        ProcesoDefault:=TProceso(FLista[0]);
        if (IndiceActual = 0) and (not MiPrimerPoleo) then
          Sleep(TiempoPoleo)
        else
          MiPrimerPoleo:=False;
      end;
      try
        ProcesoDefault.Terminado:=False;
        EjecutaProceso;
      except
      end;
    end
    else
    begin
      Procesando:=not ProcesoDefault.Terminado;
      if (ProcesoDefault.Terminado) and (IndiceActual = 1) then
      begin
        ProcesoDefault.Free;
        FLista.Delete(1)
      end;
    end;
  end;
end;

function TListaProcesos.ExisteProceso(AIndex: Integer): Boolean;
var
  I: Integer;
begin
  Result:=False;
  for I := 0 to FLista.Count - 1 do
  begin
    if TProceso(FLista[I]).FProcesoID = AIndex then
    begin
      Result:=True;
      Break;
    end;
  end;
end;

function TListaProcesos.GetCount: Integer;
begin
  Result:=FLista.Count;
end;

procedure TListaProcesos.Inicia;
begin
  { FTimer.Enabled:=True;
  TimerOnTime(nil);}
  Resume;
end;

procedure TListaProcesos.Limpiar;
var
  I: Integer;
begin
  if Count > 0 then
  begin
    for I := 0 to FLista.Count - 1 do
      TProceso(FLista[I]).Free;
    FLista.Clear;
  end;
end;

procedure TListaProcesos.Pausa;
begin
  Suspend;
end;

procedure TListaProcesos.SetIndiceActual(const Value: Integer);
begin
  FIndiceActual := Value;
end;

procedure TListaProcesos.SetMiPrimerPoleo(const Value: Boolean);
begin
  FMiPrimerPoleo := Value;
end;

procedure TListaProcesos.SetProcesando(const Value: Boolean);
begin
  FProcesando := Value;
end;

procedure TListaProcesos.SetProcesoDefault(const Value: TProceso);
begin
  FProcesoDefault := Value;
end;

procedure TListaProcesos.SetProcesoIDActual(const Value: Integer);
begin
  FProcesoIDActual := Value;
end;

procedure TListaProcesos.SetTerminado(const Value: Boolean);
begin
  FTerminado := Value;
end;

procedure TListaProcesos.SetTiempoPoleo(const Value: Integer);
begin
  FTiempoPoleo := Value;
end;

procedure TListaProcesos.Termina;
begin
  Terminado:=True;
end;

{ TProceso }

procedure TProceso.Execute(Data: TDatosThread);
begin
  inherited;
  try
    try
        Ejecutar;
    except
    end;
  finally
    Ejecutando:=False;
    Terminado:=True;
  end;
end;

procedure TProceso.SetBomba(const Value: Integer);
begin
  FBomba := Value;
end;

procedure TProceso.SetCantidad(const Value: Real);
begin
  FCantidad := Value;
end;

procedure TProceso.SetEjecutando(const Value: Boolean);
begin
  FEjecutando := Value;
end;

procedure TProceso.SetFechaFinal(const Value: TDateTime);
begin
  FFechaFinal := Value;
end;

procedure TProceso.SetFechaInicial(const Value: TDateTime);
begin
  FFechaInicial := Value;
end;

procedure TProceso.SetGasolina(const Value: Integer);
begin
  FGasolina := Value;
end;

procedure TProceso.SetProcesoID(const Value: Integer);
begin
  FProcesoID := Value;
end;

procedure TProceso.SetTerminado(const Value: Boolean);
begin
  FTerminado := Value;
end;

end.
