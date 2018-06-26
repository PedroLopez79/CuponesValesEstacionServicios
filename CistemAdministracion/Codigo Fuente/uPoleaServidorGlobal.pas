unit uPoleaServidorGlobal;

interface

uses
  SysUtils, Contnrs, uROWinInetHttpChannel, uROBinMessage, ExtCtrls,
  uROClient, LibraryValesCupones_Intf, LibraryValesCupones_Async,
  uROBaseSuperChannel, uROBaseSuperTCPChannel, uROSuperTCPChannel;

type
  TPoleaServidorGlobal = class
  private
    FGlobal: TGlobal;
    FLeyendo: Boolean;
    FTimer: TTimer;
    FChannel: TROWinInetHTTPChannel;
    FChannel1:TROSuperTCPChannel;
    FMessage: TROBinMessage;
    FGlobalAsync: IServiceValesCupones_Async;
    FConexion: Boolean;
    procedure TimerPoleaServidorGlobal(Sender: TObject);
    procedure ROChannelFailure(Sender: TROTransportChannel;
      anException: Exception; var Retry: Boolean);
    procedure SetConexion(const Value: Boolean);
    procedure ObtenerDatos;
  public
    Total: Integer;
    property Conexion: Boolean read FConexion write SetConexion;
    constructor Create(AServer: String; AGlobal: TGlobal);
    destructor Destroy; override;
    procedure LeerDatos;
  end;

implementation

uses uROTypes;

{ TPoleaServidorGlobal }

constructor TPoleaServidorGlobal.Create(AServer: String; AGlobal: TGlobal);
begin
  FGlobal:=AGlobal;
  Conexion:=False;

  FTimer:=TTimer.Create(nil);
  FTimer.Interval:=500;
  FTimer.Enabled:=False;
  FTimer.OnTimer:=TimerPoleaServidorGlobal;

  FChannel :=TROWinInetHTTPChannel.Create(nil);
  FChannel1:=TROSuperTCPChannel.Create(nil);
  FChannel.OnFailure:=ROChannelFailure;
  FChannel1.OnFailure:=ROChannelFailure;
  FChannel.TargetURL:=Format('http://%s:8001/BIN', [AServer]);
  FChannel1.TargetUrl:=Format('supertcp://%s:8001/BIN',[AServer]);
  FMessage:=TROBinMessage.Create;

  //FGlobalAsync:=CoServiceValesCupones_Async.Create(FMessage, FChannel);
  FGlobalAsync:=CoServiceValesCupones_Async.Create(FMessage, FChannel1);

  Total:=0;
end;

destructor TPoleaServidorGlobal.Destroy;
begin
  FMessage.Free;
  FChannel.Free;
  FTimer.Free;
  inherited;
end;

procedure TPoleaServidorGlobal.LeerDatos;
begin
  if not FLeyendo then
  begin
    try
      Total:=0;
      FLeyendo:=True;
      FGlobalAsync.Invoke_Datos;
      FTimer.Enabled:=True;
    except
    end;
  end;
end;

procedure TPoleaServidorGlobal.ObtenerDatos;
var
  Aux: TGlobal;
begin
  try
    Aux:=FGlobalAsync.Retrieve_Datos;
    FGlobal.Assign(Aux);
    Aux.Free;
  except
  end;
end;

procedure TPoleaServidorGlobal.ROChannelFailure(Sender: TROTransportChannel;
  anException: Exception; var Retry: Boolean);
begin
  FLeyendo:=False;
  Conexion:=False;
  Retry:=False;
end;

procedure TPoleaServidorGlobal.SetConexion(const Value: Boolean);
begin
  FConexion := Value;
end;

procedure TPoleaServidorGlobal.TimerPoleaServidorGlobal(Sender: TObject);
begin
  if FGlobalAsync.AnswerReceived then
  begin
    Total:=0;
    try
      ObtenerDatos;
      FLeyendo:=False;
      FTimer.Enabled:=False;
      Conexion:=True;
    except
    end;
  end
  else
    Inc(Total);
  if Total > 5 then
  begin
    Total:=0;
    FLeyendo:=False;
  end;
end;

end.
