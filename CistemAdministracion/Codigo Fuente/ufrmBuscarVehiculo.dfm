object frmBuscaVehiculo: TfrmBuscaVehiculo
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Busca Vehiculo'
  ClientHeight = 385
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgcBuscaVehiculo: TcxPageControl
    Left = 0
    Top = 0
    Width = 697
    Height = 344
    ActivePage = tsCliente
    Align = alClient
    Images = dmImages.Imagenes
    TabOrder = 0
    OnPageChanging = pgcBuscaVehiculoPageChanging
    ClientRectBottom = 339
    ClientRectLeft = 2
    ClientRectRight = 692
    ClientRectTop = 26
    object tsCliente: TcxTabSheet
      Caption = 'Busca Cliente'
      ImageIndex = 56
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Datos de la busqueda'
        TabOrder = 0
        Height = 57
        Width = 690
      end
      object dbgCatalogo: TcxGrid
        Left = 0
        Top = 57
        Width = 690
        Height = 256
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        object dbgCatalogoDBTableView1: TcxGridDBTableView
          OnDblClick = dbgCatalogoDBTableView1DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsCliente
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Haga click aqu'#237' para filtrar los datos'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsBehavior.IncSearch = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Indicator = True
        end
        object dbgCatalogoLevel1: TcxGridLevel
          GridView = dbgCatalogoDBTableView1
        end
      end
      object edtBuscar: TcxTextEdit
        Left = 48
        Top = 27
        Properties.CharCase = ecUpperCase
        TabOrder = 2
        OnKeyPress = edtBuscarKeyPress
        Width = 209
      end
      object cxLabel1: TcxLabel
        Left = 8
        Top = 29
        Caption = 'Buscar'
        Transparent = True
      end
      object btnBuscaCliente: TcxButton
        Left = 264
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 4
        OnClick = btnBuscaClienteClick
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000120B0000120B0000000100000000000000000000FFFF
          FF00FF00FF00623C230062442D005339240072503300CB925E00DAA97600836E
          5800695A4600FFCF8900C2AC8600D4D0C9000A0A0900004B00000C97180017A7
          2B0025BA430034CB5B0034CB5C003ED76D00EDFFFF00F8FFFF0064A5AD003692
          AD0051D4FF00EEFBFF000089BC0039CAFF005CD3FF00091114000493C9000C96
          CF000FA1DC001CBFFF001EC1FF0021BCFB0021BAFA002BC2FE0031C2FF002882
          A50057D0FF005DBAE0008CDDFF00C1EDFF00D0F2FF000075AA00027FB600129D
          DD0017A1E0001CB1F2001BADEB001AA5E0001FB7F8001FB4F4001EAFED003FC5
          FE0045ABD7004AADD7004093B8007ACEF40072BBDD008AC5DE009DCCE200D0EB
          F700006FA5000173AA000774AC00087AB5000B84C0001498D700148AC5001697
          D50018445B0044ABDE0041A0D00099D3EF00AAD0E300BFE5F7000474AF00056B
          A5000B5B88000C4B6D001680B8002182B60000578A00035A910004649E000460
          99000454860000518800002A470000243D0002558E0002416A0003518800033E
          640006609A000E6096000D24330000447600013B650000386C00161D23000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020202020202
          0202020202020F0202020202020202020202020202020F0F0202020202020202
          020202020F0F14110F02020202020202020202020F151512100F020202020202
          020202020F0F15130F020202020202020202020202020F0F0202020202020202
          02575F5A02020F0202020202020202025E29051F52020202020202020202025E
          23190B046402676702020202025E3449392B080768636767610202025E271A4C
          4D160D094A4B3B0A0E6659541E2C2D413C403E552128350C035D605E4F171B2E
          3A302F4220362418065C5E4E5E3F3D2A1D3846431C2225315365025E5E5E4847
          332637324456620202020202020202515845505B020202020202}
      end
    end
    object tsVehiculo: TcxTabSheet
      Caption = 'Busca Vehiculo'
      ImageIndex = 60
      object dbgVehiculo: TcxGrid
        Left = 0
        Top = 0
        Width = 690
        Height = 313
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        object dbgVehiculoDBTableView1: TcxGridDBTableView
          OnDblClick = dbgVehiculoDBTableView1DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsVehiculo
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Haga click aqu'#237' para filtrar los datos'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsBehavior.IncSearch = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Indicator = True
        end
        object cxGridLevel1: TcxGridLevel
          GridView = dbgVehiculoDBTableView1
        end
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 344
    Align = alBottom
    TabOrder = 1
    Height = 41
    Width = 697
    object btnAceptar: TcxButton
      Left = 512
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 0
      OnClick = btnAceptarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000FF00FF00004B
        0000098611000A8615000D931A000C9518000C9C19000F991C000E9D1D001392
        240011A0210011A422001CA134001CB1350024BC430029B548002EC6520035CA
        5E0039D465000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000001
        0100000000000000000000000000010808010000000000000000000000010D0B
        080B0100000000000000000001100E0901040801000000000000000111120C01
        000103080100000000000000010F010000000001040100000000000000010000
        0000000001030100000000000000000000000000000001010000000000000000
        0000000000000001010000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object btnCancelar: TcxButton
      Left = 600
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000FF00FF00043E
        9000003A990008479F000141A400094FAF00034BB4003D73B4000C5DCF00035B
        DE00045BDE000F6ADE001169DE00004FE0000052E0000055E0000058E100025C
        E2000662E2000565E5000D67E2000768E7000F6AE0000F6AE500096DE9001069
        E5000B70E9001674E7001176EA001577EA00137AEA001679EA00117AED00147B
        ED00167FEE001878E900287BE7005580B0005B89BC005E8CBF001A82EE001C81
        ED001E87EF001E89F0003584EA003688ED002996F4002A99F4003298F2003599
        F300369CF4003AA0F6004586CF004787D1006392C700599EEF00529EF4005CA0
        EF0041AFFC005EA3F0005DA5F20045B4FE005AB6F80066A7EF0070A9E60064A6
        F20070AFF40077B1F00073B0F40076B2F4007AB5F60076BDF9007FC5FA00809E
        BC0082BCF60088BCF30087C0F60089C4F70081C7FA008EC7F80096C7F7009ECA
        F8009ECFF800B5D0EE00A5DDFD00B7D3F000DED9D500CFDAE600C1DDFA00C4DD
        F900C6E1FA00C9E2FB00CAE5FB00CCE7FB00CBE6FC00CCE6FC00C5EDFF00D9E6
        F000EEEAE700F8F4EF00E3EEF700E6F2FD00E9F3FD00EAF5FE00EFF8FF00F6F4
        F600F8FAF600F8FBFF00F9FDFF00FEFEFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000001
        01010101010000000000000000060608343627070302010000000000060A4369
        6155535756250401000000060A516D37191111193963490401000006466D2411
        0F110F110F2D6A2701000B0C6D3711664B0F11595911416205010B3C651B1359
        6D4B596D4B0F146435010B4B5A1C181C5B6D6D4B110F115940010B4D5B282028
        5B6D6D4B0F110F5946010B4766312B5B6D505A6D4B0D196638010B316D482E68
        5120205B590D3F6D1401000B546D3E2F2B281A15112D6D420600000B3A606D4E
        312B2023396D510A060000000B3D546D665B5B656D420A0600000000000B0C33
        474F4C3C16060600000000000000000B0B0B0B0B0B0000000000}
    end
  end
  object cdsCliente: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = rdaBuscarCliente
    LogicalName = 'Reporte'
    IndexDefs = <>
    Left = 264
    Top = 256
  end
  object rdaBuscarCliente: TDARemoteDataAdapter
    GetSchemaCall.RemoteService = DM.RemoteService
    GetDataCall.RemoteService = DM.RemoteService
    GetDataCall.MethodName = 'AbreDataSetReportes'
    GetDataCall.Params = <
      item
        Name = 'Result'
        DataType = rtBinary
        Flag = fResult
        Value = Null
      end
      item
        Name = 'SQL'
        DataType = rtString
        Flag = fIn
        Value = Null
      end
      item
        Name = 'Parametros'
        DataType = rtUserDefined
        Flag = fIn
        TypeName = 'TParametrosF'
        Value = Null
      end>
    GetDataCall.Default = False
    GetDataCall.OutgoingTableNamesParameter = 'aTableNameArray'
    GetDataCall.OutgoingTableRequestInfosParameter = 'aTableRequestInfoArray'
    GetDataCall.IncomingDataParameter = 'Result'
    UpdateDataCall.RemoteService = DM.RemoteService
    GetScriptsCall.RemoteService = DM.RemoteService
    RemoteService = DM.RemoteService
    DataStreamer = DM.DataStreamer
    Left = 264
    Top = 224
  end
  object dsCliente: TDADataSource
    DataSet = cdsCliente.Dataset
    DataTable = cdsCliente
    Left = 264
    Top = 288
  end
  object rdaBuscarVehiculo: TDARemoteDataAdapter
    GetSchemaCall.RemoteService = DM.RemoteService
    GetDataCall.RemoteService = DM.RemoteService
    GetDataCall.MethodName = 'AbreDataSetReportes'
    GetDataCall.Params = <
      item
        Name = 'Result'
        DataType = rtBinary
        Flag = fResult
        Value = Null
      end
      item
        Name = 'SQL'
        DataType = rtString
        Flag = fIn
        Value = Null
      end
      item
        Name = 'Parametros'
        DataType = rtUserDefined
        Flag = fIn
        TypeName = 'TParametrosF'
        Value = Null
      end>
    GetDataCall.Default = False
    GetDataCall.OutgoingTableNamesParameter = 'aTableNameArray'
    GetDataCall.OutgoingTableRequestInfosParameter = 'aTableRequestInfoArray'
    GetDataCall.IncomingDataParameter = 'Result'
    UpdateDataCall.RemoteService = DM.RemoteService
    GetScriptsCall.RemoteService = DM.RemoteService
    RemoteService = DM.RemoteService
    DataStreamer = DM.DataStreamer
    Left = 296
    Top = 224
  end
  object cdsVehiculo: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = rdaBuscarVehiculo
    LogicalName = 'Reporte'
    IndexDefs = <>
    Left = 296
    Top = 256
  end
  object dsVehiculo: TDADataSource
    DataSet = cdsVehiculo.Dataset
    DataTable = cdsVehiculo
    Left = 296
    Top = 288
  end
end