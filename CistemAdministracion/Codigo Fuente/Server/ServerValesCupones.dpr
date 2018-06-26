program ServerValesCupones;

{#ROGEN:LibraryAdministracion.RODL} // RemObjects SDK: Careful, do not remove!

uses
  Forms,
  Windows,
  uROComInit,
  uROComboService,
  fServerForm in 'fServerForm.pas' {ServerForm},
  fServerDataModule in 'fServerDataModule.pas' {ServerDataModule3: TDataModule},
  libeay32 in 'libeay32.pas',
  LibraryEmpresas_Intf in 'LibraryEmpresas_Intf.pas',
  LibraryEmpresas_Invk in 'LibraryEmpresas_Invk.pas',
  ufrmPassword in '..\CistemComun\CodigoFuente\ufrmPassword.pas' {frmPassword},
  ufrmServerForm in '..\CistemComun\CodigoFuente\ufrmServerForm.pas' {frmServerForm},
  LibXmlParser in '..\CistemComun\CodigoFuente\LibXmlParser.pas',
  UtileriasComun in '..\CistemComun\CodigoFuente\UtileriasComun.pas',
  LibraryValesCupones_Intf in 'LibraryValesCupones_Intf.pas',
  LibraryValesCupones_Invk in 'LibraryValesCupones_Invk.pas',
  ServiceValesCupones_Impl in 'ServiceValesCupones_Impl.pas' {ServiceValesCupones: TDataAbstractService},
  LibraryValesCupones_Async in 'LibraryValesCupones_Async.pas',
  uAutorizacion in 'uAutorizacion.pas',
  Controlador in 'Controlador.pas',
  CistemCore in 'CistemCore.pas',
  Protocolo in 'Protocolo.pas',
  ProtocoloBennett in 'ProtocoloBennett.pas',
  PuertoSerial in 'PuertoSerial.pas',
  PuertoSerieBennett in 'PuertoSerieBennett.pas',
  SynchedThreads in 'SynchedThreads.pas',
  uCreditosValesCupones in 'uCreditosValesCupones.pas';

var
  Mutex : THandle;

{$R *.res}
{$R RODLFile.res}

begin
  Mutex := CreateMutex(nil, True, 'ServerUtileriasServicios');
  //if (Mutex <> 0) and (GetLastError = 0) then
  //begin
    if ROStartService('ServerUtileriasServicios', 'ServerUtileriasServicios') then
    begin
      ROService.CreateForm(TServerDataModule, ServerDataModule);
      ROService.Run;
      Exit;
    end;

    Application.Initialize;
    Application.CreateForm(TServerDataModule, ServerDataModule);
  Application.CreateForm(TServerForm, ServerForm);
  //Application.CreateForm(TfrmServerForm, frmServerForm);
  Application.Run;
  //end;
end.
