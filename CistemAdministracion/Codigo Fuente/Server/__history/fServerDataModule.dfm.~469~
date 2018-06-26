object ServerDataModule: TServerDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 261
  Width = 294
  object Server: TROIndyHTTPServer
    Dispatchers = <
      item
        Name = 'Message'
        Message = Message
        Enabled = True
        PathInfo = 'Bin'
      end>
    SendClientAccessPolicyXml = captAllowAll
    IndyServer.Bindings = <>
    IndyServer.DefaultPort = 8001
    IndyServer.ListenQueue = 45
    IndyServer.TerminateWaitTime = 10000
    Port = 8001
    Left = 32
    Top = 8
  end
  object Message: TROBinMessage
    Envelopes = <>
    Left = 32
    Top = 56
  end
  object ConnectionManager: TDAConnectionManager
    Connections = <
      item
        Name = 'ValeCuponServ'
        ConnectionString = 
          'SDAC?Server=PETERALIENWARE;Database=CuponValesEstacionServ;UserI' +
          'D=sa;Password=Cistem32;'
        ConnectionType = 'MSSQL'
        Default = True
      end>
    DriverManager = DriverManager
    PoolingEnabled = True
    Left = 192
    Top = 56
  end
  object DriverManager: TDADriverManager
    DriverDirectory = '%SYSTEM%\'
    TraceActive = False
    TraceFlags = []
    Left = 192
    Top = 8
  end
  object DataDictionary: TDADataDictionary
    Fields = <>
    Left = 32
    Top = 112
  end
  object SessionManager: TROInMemorySessionManager
    Left = 192
    Top = 104
  end
  object SuperServer: TROSuperTCPServer
    Dispatchers = <
      item
        Name = 'Message'
        Message = Message
        Enabled = True
      end>
    Port = 8001
    AutoRegisterSession = False
    DefaultResponse = 'ROSC:Invalid connection string'
    Left = 88
    Top = 8
  end
  object MiMessage: TROBinMessage
    Envelopes = <>
    Left = 102
    Top = 184
  end
  object MiSuperChannel: TROSuperTCPChannel
    DispatchOptions = []
    ServerLocators = <>
    TargetUrl = 'supertcp://localhost:8001'
    Host = 'localhost'
    Port = 8001
    Left = 32
    Top = 184
  end
  object MiChannel: TROWinInetHTTPChannel
    UserAgent = 'RemObjects SDK'
    DispatchOptions = []
    ServerLocators = <>
    TargetURL = 'http://localhost:9002/BIN'
    TrustInvalidCA = False
    Left = 158
    Top = 184
  end
end
