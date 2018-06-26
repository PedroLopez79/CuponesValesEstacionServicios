inherited frmAgregaMovimientosDespachador: TfrmAgregaMovimientosDespachador
  Caption = 'Movimientos Despachador'
  ClientHeight = 476
  ClientWidth = 813
  ExplicitWidth = 813
  ExplicitHeight = 476
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 121
    Width = 813
    object cxGroupBox1: TcxGroupBox
      Left = 3
      Top = 17
      Caption = '  Datos del Despachador'
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Height = 96
      Width = 662
      object Label6: TLabel
        Left = 18
        Top = 31
        Width = 64
        Height = 13
        Caption = 'Despachador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 163
        Top = 31
        Width = 37
        Height = 13
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object edtNombre: TcxTextEdit
        Left = 206
        Top = 27
        Enabled = False
        Properties.ReadOnly = True
        Style.TextColor = clNavy
        TabOrder = 0
        Width = 437
      end
      object edtDespachador: TcxDBButtonEdit
        Left = 86
        Top = 27
        DataBinding.DataField = 'DespachadorID'
        DataBinding.DataSource = dsMovimiento
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtDespachadorPropertiesButtonClick
        TabOrder = 1
        OnExit = edtDespachadorExit
        Width = 71
      end
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 121
    Width = 813
    Height = 355
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsMovimiento
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$#,#0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Column5
        end
        item
          Format = '$#,#0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Column6
        end>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.InfoText = 'Haga Click aqui para agregar un nuevo registro'
      NewItemRow.Visible = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.Indicator = True
      Styles.ContentEven = cxStyle1
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Movimiento'
        DataBinding.FieldName = 'MovimientoDespachadorID'
        Options.Editing = False
        Width = 64
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Width = 246
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        PropertiesClassName = 'TcxDateEditProperties'
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Estacion'
        DataBinding.FieldName = 'EstacionID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'EstacionID'
        Properties.ListColumns = <
          item
            FieldName = 'EstacionID'
          end
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = dsEstacion
        Width = 187
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'Producto'
        DataBinding.FieldName = 'ProductoID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ProductoID'
        Properties.ListColumns = <
          item
            FieldName = 'ProductoID'
          end
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = dsProducto
        Width = 219
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        DataBinding.FieldName = 'Cargo'
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        DataBinding.FieldName = 'Abono'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dsEstacion: TDADataSource
    DataSet = cdsEstacion.Dataset
    DataTable = cdsEstacion
    Left = 80
    Top = 288
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
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo Estacion'
    IndexDefs = <>
    Left = 80
    Top = 239
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clGradientInactiveCaption
    end
  end
  object cdsDespachador: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'DespachadorID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Codigo'
        DataType = datString
        Size = 10
      end
      item
        Name = 'Domicilio'
        DataType = datString
        Size = 80
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Telefono'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Status'
        DataType = datBoolean
      end
      item
        Name = 'FechaAlta'
        DataType = datDateTime
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end
      item
        Name = 'Nomina'
        DataType = datString
        Size = 20
      end>
    Params = <
      item
        Name = 'DESPACHADORID'
        Value = '1'
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'spObtenEmpleado'
    IndexDefs = <>
    Left = 124
    Top = 238
  end
  object dsDespachador: TDADataSource
    DataSet = cdsDespachador.Dataset
    DataTable = cdsDespachador
    Left = 124
    Top = 289
  end
  object cdsProducto: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'ProductoID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Codigo'
        DataType = datString
        Size = 10
        Required = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
        Required = True
      end
      item
        Name = 'PrecioVenta'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'ClavePemex'
        DataType = datString
        Size = 10
      end
      item
        Name = 'Costo'
        DataType = datFloat
      end
      item
        Name = 'Status'
        DataType = datBoolean
      end
      item
        Name = 'Barras'
        DataType = datString
        Size = 50
      end
      item
        Name = 'CuentaContableCompra'
        DataType = datString
        Size = 20
      end
      item
        Name = 'CuentaContableVenta'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Inventariable'
        DataType = datBoolean
      end
      item
        Name = 'CostoPromedio'
        DataType = datFloat
      end
      item
        Name = 'CategoriaID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'IEPS'
        DataType = datFloat
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo Producto'
    IndexDefs = <>
    Left = 164
    Top = 238
  end
  object dsProducto: TDADataSource
    DataSet = cdsProducto.Dataset
    DataTable = cdsProducto
    Left = 164
    Top = 289
  end
  object cdsMovimientos: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'MovimientoDespachadorID'
        DataType = datInteger
        InPrimaryKey = True
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
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
        Name = 'UsuarioID'
        DataType = datInteger
      end
      item
        Name = 'DespachadorID'
        DataType = datInteger
      end
      item
        Name = 'TurnoID'
        DataType = datInteger
      end
      item
        Name = 'LiquidacionID'
        DataType = datInteger
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 50
      end
      item
        Name = 'ProductoID'
        DataType = datInteger
      end
      item
        Name = 'Cargo'
        DataType = datInteger
      end
      item
        Name = 'Abono'
        DataType = datInteger
      end
      item
        Name = 'Dia'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'Movimiento'
        Value = ''
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsMovimientosBeforePost
    LogicalName = 'dbo MovimientoDespachador'
    IndexDefs = <>
    Left = 40
    Top = 240
  end
  object dsMovimiento: TDADataSource
    DataSet = cdsMovimientos.Dataset
    DataTable = cdsMovimientos
    Left = 40
    Top = 288
  end
end
