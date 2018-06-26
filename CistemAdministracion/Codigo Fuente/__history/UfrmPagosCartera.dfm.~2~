inherited frmPagosCartera: TfrmPagosCartera
  Caption = 'Pagos'
  ClientHeight = 457
  ClientWidth = 675
  ExplicitWidth = 675
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrbEncabezado: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    TabOrder = 0
    Height = 97
    Width = 675
    object cxLabel8: TcxLabel
      Left = 5
      Top = 8
      Caption = 'Fecha'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object cxdbFecha: TcxDBDateEdit
      Left = 9
      Top = 26
      TabStop = False
      DataBinding.DataField = 'Fecha'
      DataBinding.DataSource = dsPagos
      Enabled = False
      TabOrder = 1
      Width = 132
    end
    object cxLabel14: TcxLabel
      Left = 211
      Top = 8
      Caption = 'Serie'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object dbTxtSerie: TcxDBTextEdit
      Left = 212
      Top = 24
      DataBinding.DataField = 'Serie'
      DataBinding.DataSource = dsPagos
      Properties.CharCase = ecUpperCase
      TabOrder = 3
      OnExit = dbTxtSerieExit
      Width = 47
    end
    object cxLabel5: TcxLabel
      Left = 265
      Top = 8
      Caption = 'Folio'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object dbTxtFolio: TcxDBTextEdit
      Left = 265
      Top = 24
      DataBinding.DataField = 'Folio'
      DataBinding.DataSource = dsPagos
      Properties.CharCase = ecUpperCase
      TabOrder = 5
      Width = 117
    end
    object cxLabel15: TcxLabel
      Left = 447
      Top = 7
      Caption = 'Forma de Pago'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object dbCbxFormaPago: TcxDBLookupComboBox
      Left = 447
      Top = 24
      DataBinding.DataField = 'FormaPagoID'
      DataBinding.DataSource = dsPagos
      Properties.KeyFieldNames = 'FormaPagoID'
      Properties.ListColumns = <
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsFormaPago
      Properties.OnChange = dbCbxFormaPagoPropertiesChange
      TabOrder = 7
      OnExit = dbCbxFormaPagoExit
      Width = 161
    end
    object cxLabel6: TcxLabel
      Left = 7
      Top = 47
      Caption = 'Cliente'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object dbTxtCliente: TcxDBTextEdit
      Left = 9
      Top = 64
      DataBinding.DataField = 'ClienteID'
      DataBinding.DataSource = dsClientes
      Properties.CharCase = ecUpperCase
      TabOrder = 9
      OnEnter = dbTxtClienteEnter
      OnExit = dbTxtClienteExit
      Width = 77
    end
    object cxLabel13: TcxLabel
      Left = 93
      Top = 47
      Caption = 'Nombre'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 92
      Top = 64
      DataBinding.DataField = 'Nombre'
      DataBinding.DataSource = dsClientes
      Enabled = False
      Properties.CharCase = ecUpperCase
      TabOrder = 11
      Width = 351
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 97
    Align = alClient
    TabOrder = 1
    Height = 269
    Width = 675
    object cxGrid1: TcxGrid
      Left = 3
      Top = 16
      Width = 366
      Height = 195
      TabOrder = 0
      OnEnter = cxGrid1Enter
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = True
      object cxGridDBTableView3: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsCartera
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.Visible = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBTableView3Column1: TcxGridDBColumn
          DataBinding.FieldName = 'Serie'
        end
        object cxGridDBTableView3Column2: TcxGridDBColumn
          DataBinding.FieldName = 'Folio'
        end
        object cxGridDBTableView3Column3: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object cxGridDBTableView3Column4: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
        end
        object cxGridDBTableView3Column5: TcxGridDBColumn
          DataBinding.FieldName = 'SaldoFactura'
          Width = 75
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = cxGridDBTableView3
      end
    end
    object cxGrid2: TcxGrid
      Left = 436
      Top = 16
      Width = 236
      Height = 194
      TabOrder = 1
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = True
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsEstructuraPagoCartera
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
          end
          item
            Kind = skSum
            Column = cxGridDBTableView1Column3
          end>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.Visible = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBTableView1Column1: TcxGridDBColumn
          DataBinding.FieldName = 'Serie'
        end
        object cxGridDBTableView1Column2: TcxGridDBColumn
          DataBinding.FieldName = 'Folio'
        end
        object cxGridDBTableView1Column3: TcxGridDBColumn
          DataBinding.FieldName = 'Importe'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object btnagregar1: TButton
      Left = 378
      Top = 16
      Width = 46
      Height = 25
      Caption = 'Agregar'
      TabOrder = 2
      OnClick = btnagregar1Click
    end
    object btnEiminar1: TButton
      Left = 375
      Top = 47
      Width = 49
      Height = 26
      Caption = 'Eliminar'
      TabOrder = 3
      OnClick = btnEiminar1Click
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 366
    Align = alBottom
    TabOrder = 2
    Height = 91
    Width = 675
    object cxLabel19: TcxLabel
      Left = 448
      Top = 14
      Caption = 'Subtotal'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object cxLabel17: TcxLabel
      Left = 448
      Top = 35
      Caption = 'IVA'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object cxLabel18: TcxLabel
      Left = 448
      Top = 59
      Caption = 'Total'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 497
      Top = 10
      TabStop = False
      DataBinding.DataField = 'Subtotal'
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      Width = 120
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 497
      Top = 32
      TabStop = False
      DataBinding.DataField = 'Impuesto'
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      Width = 120
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 497
      Top = 55
      TabStop = False
      DataBinding.DataField = 'Total'
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 5
      Width = 120
    end
  end
  object cdsClientes: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'ClienteID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Codigo'
        DataType = datString
        Size = 10
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 80
        Required = True
      end
      item
        Name = 'Grupo'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Calle'
        DataType = datString
        Size = 40
        Required = True
      end
      item
        Name = 'Colonia'
        DataType = datString
        Size = 30
        Required = True
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
        Required = True
      end
      item
        Name = 'Telefono'
        DataType = datString
        Size = 20
      end
      item
        Name = 'CodigoPostal'
        DataType = datString
        Size = 5
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 15
        Required = True
      end
      item
        Name = 'Curp'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Status'
        DataType = datBoolean
      end
      item
        Name = 'AutorizaCheque'
        DataType = datBoolean
      end
      item
        Name = 'TicketBoucher'
        DataType = datBoolean
      end
      item
        Name = 'AutorizaValeCredito'
        DataType = datBoolean
      end
      item
        Name = 'CuentaContableAnticipo'
        DataType = datString
        Size = 20
      end
      item
        Name = 'CuentaContableCredito'
        DataType = datString
        Size = 20
      end
      item
        Name = 'LimiteCredito'
        DataType = datFloat
      end
      item
        Name = 'Credito'
        DataType = datBoolean
      end
      item
        Name = 'DiasCredito'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'ClienteID'
        Value = '1'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerDatosCliente'
    IndexDefs = <>
    Left = 8
    Top = 353
  end
  object dsClientes: TDADataSource
    DataSet = cdsClientes.Dataset
    DataTable = cdsClientes
    Left = 8
    Top = 385
  end
  object cdsEstacion: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
        Required = True
      end
      item
        Name = 'RazonSocial'
        DataType = datString
        Size = 70
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 30
        Required = True
      end
      item
        Name = 'ClavePemex'
        DataType = datString
        Size = 10
        Required = True
      end
      item
        Name = 'NoBombas'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Colonia'
        DataType = datString
        Size = 80
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
      end
      item
        Name = 'CodigoPostal'
        DataType = datString
        Size = 10
      end
      item
        Name = 'Host'
        DataType = datString
        Size = 30
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Impuesto'
        DataType = datFloat
        Required = True
      end>
    Params = <
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsPagosNewRecord
    LogicalName = 'ObtenerDatosEstacion'
    IndexDefs = <>
    Left = 96
    Top = 353
  end
  object dsEstacion: TDADataSource
    DataSet = cdsEstacion.Dataset
    DataTable = cdsEstacion
    Left = 96
    Top = 385
  end
  object cdsDenominacion: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'Denominacion'
        DataType = datInteger
        Required = True
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsPagosNewRecord
    LogicalName = 'dbo Denominacion'
    IndexDefs = <>
    Left = 136
    Top = 353
  end
  object dsDenominacion: TDADataSource
    DataSet = cdsDenominacion.Dataset
    DataTable = cdsDenominacion
    Left = 136
    Top = 385
  end
  object cdsFormaPago: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'FormaPagoID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Descripcion'
        DataType = datString
        Size = 50
        Required = True
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsPagosNewRecord
    LogicalName = 'dbo FormaPago'
    IndexDefs = <>
    Left = 184
    Top = 353
  end
  object dsFormaPago: TDADataSource
    DataSet = cdsFormaPago.Dataset
    DataTable = cdsFormaPago
    Left = 184
    Top = 385
  end
  object cdsDetalleReciboPago: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'DetalleReciboPagoID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Importe'
        DataType = datFloat
      end
      item
        Name = 'FacturaID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'ReciboPagoID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'ItemNo'
        DataType = datInteger
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsDetalleReciboPagoBeforePost
    AfterPost = cdsDetalleReciboPagoAfterPost
    OnNewRecord = cdsDetalleReciboPagoNewRecord
    LogicalName = 'dbo DetalleReciboPago'
    IndexDefs = <>
    Left = 224
    Top = 353
  end
  object dsDetalleReciboPago: TDADataSource
    DataSet = cdsDetalleReciboPago.Dataset
    DataTable = cdsDetalleReciboPago
    Left = 224
    Top = 385
  end
  object cdsFactura: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'FacturaID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Folio'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Serie'
        DataType = datString
        Size = 5
        Required = True
      end
      item
        Name = 'Ejercicio'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Periodo'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Dia'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
        Required = True
      end
      item
        Name = 'Subtotal'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Impuesto'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Total'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'ImpuestoPorcentaje'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Turno'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Cancelada'
        DataType = datBoolean
        Required = True
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'LiquidacionID'
        DataType = datInteger
      end
      item
        Name = 'FormaPagoID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'TipoFacturaID'
        DataType = datInteger
        Required = True
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    AfterPost = cdsDetalleReciboPagoAfterPost
    LogicalName = 'dbo Factura'
    IndexDefs = <>
    Left = 272
    Top = 353
  end
  object dsFactura: TDADataSource
    DataSet = cdsFactura.Dataset
    DataTable = cdsFactura
    Left = 272
    Top = 385
  end
  object cdsPagos: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'ReciboPagoID'
        DataType = datInteger
      end
      item
        Name = 'Folio'
        DataType = datInteger
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
      end
      item
        Name = 'Subtotal'
        DataType = datFloat
      end
      item
        Name = 'Ejercicio'
        DataType = datInteger
      end
      item
        Name = 'Periodo'
        DataType = datInteger
      end
      item
        Name = 'Dia'
        DataType = datInteger
      end
      item
        Name = 'Impuesto'
        DataType = datFloat
      end
      item
        Name = 'Total'
        DataType = datFloat
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end
      item
        Name = 'FormaPagoID'
        DataType = datInteger
      end
      item
        Name = 'Cancelado'
        DataType = datBoolean
      end
      item
        Name = 'Serie'
        DataType = datString
        Size = 5
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo ReciboPago'
    IndexDefs = <>
    Left = 48
    Top = 352
  end
  object dsPagos: TDADataSource
    DataSet = cdsPagos.Dataset
    DataTable = cdsPagos
    Left = 48
    Top = 384
  end
  object cdsCartera: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'Folio'
        DataType = datInteger
      end
      item
        Name = 'FacturaID'
        DataType = datInteger
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
      end
      item
        Name = 'Importe'
        DataType = datFloat
      end
      item
        Name = 'Serie'
        DataType = datString
        Size = 5
      end
      item
        Name = 'SaldoFactura'
        DataType = datFloat
      end>
    Params = <
      item
        Name = 'Cliente'
        Value = '1'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    AfterPost = cdsDetalleReciboPagoAfterPost
    LogicalName = 'CargoCarteraCliente'
    IndexDefs = <>
    Left = 312
    Top = 353
  end
  object dsCartera: TDADataSource
    DataSet = cdsCartera.Dataset
    DataTable = cdsCartera
    Left = 314
    Top = 384
  end
  object cdsEstructuraPagoCartera: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'Serie'
        DataType = datString
        Size = 5
      end
      item
        Name = 'Folio'
        DataType = datInteger
      end
      item
        Name = 'Importe'
        DataType = datFloat
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsEstructuraPagoCarteraBeforePost
    AfterPost = cdsDetalleReciboPagoAfterPost
    LogicalName = 'EstructuraPagoCartera'
    IndexDefs = <>
    Left = 352
    Top = 351
  end
  object dsEstructuraPagoCartera: TDADataSource
    DataSet = cdsEstructuraPagoCartera.Dataset
    DataTable = cdsEstructuraPagoCartera
    Left = 352
    Top = 383
  end
end
