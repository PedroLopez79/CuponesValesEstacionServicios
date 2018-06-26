inherited frmCapturaMovimientos: TfrmCapturaMovimientos
  Caption = 'frmCapturaMovimientos'
  ClientWidth = 652
  ExplicitWidth = 652
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = '  Datos del Cliente  '
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    Height = 97
    Width = 652
    object Label6: TLabel
      Left = 11
      Top = 31
      Width = 32
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 134
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
    object Label8: TLabel
      Left = 11
      Top = 63
      Width = 21
      Height = 13
      Caption = 'RFC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edtNombre: TcxTextEdit
      Left = 184
      Top = 29
      Enabled = False
      Properties.ReadOnly = True
      Style.TextColor = clNavy
      TabOrder = 0
      Width = 437
    end
    object edtRFC: TcxTextEdit
      Left = 57
      Top = 61
      Enabled = False
      Properties.ReadOnly = True
      Style.TextColor = clNavy
      TabOrder = 1
      Width = 182
    end
    object edtClienteID: TcxTextEdit
      Left = 57
      Top = 29
      TabOrder = 2
      OnExit = edtClienteIDExit
      OnKeyDown = edtClienteIDKeyDown
      Width = 47
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 97
    Width = 652
    Height = 352
    Align = alClient
    TabOrder = 1
    OnEnter = cxGrid2Enter
    OnExit = cxGrid2Exit
    LookAndFeel.Kind = lfFlat
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsMovimientoCartera
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$#,#0.00'
          Kind = skSum
          Column = cxGridDBColumn5
        end
        item
          Format = '$#,#0.00'
          Kind = skSum
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
      object cxGridDBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Fecha'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 99
      end
      object cxGridDBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Width = 214
      end
      object cxGridDBColumn3: TcxGridDBColumn
        Caption = 'Tipo de Movimiento'
        DataBinding.FieldName = 'TipoMovimientocarteraID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'TipoMovimientoCarteraID'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = dsTipoMovimiento
        Width = 164
      end
      object cxGridDBColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'Cargo'
        Width = 86
      end
      object cxGridDBColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'Abono'
        Width = 80
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cdsDatosCliente: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 80
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 15
      end
      item
        Name = 'Calle'
        DataType = datString
        Size = 60
      end
      item
        Name = 'Colonia'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
      end
      item
        Name = 'CodigoPostal'
        DataType = datString
        Size = 5
      end
      item
        Name = 'Telefono'
        DataType = datString
        Size = 20
      end
      item
        Name = 'FacturaExpress'
        DataType = datBoolean
      end
      item
        Name = 'Saldo'
        DataType = datFloat
      end
      item
        Name = 'Telefonos'
        DataType = datMemo
      end>
    Params = <
      item
        Name = 'ClienteID'
        Value = '1'
      end
      item
        Name = 'Referencia'
        Value = '1'
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'DatosCliente'
    IndexDefs = <>
    Left = 368
    Top = 32
  end
  object dsDatosCliente: TDADataSource
    DataSet = cdsDatosCliente.Dataset
    DataTable = cdsDatosCliente
    Left = 368
    Top = 80
  end
  object cdsMovimientoCartera: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'MovimientoCarteraID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
      end
      item
        Name = 'FechaVencimiento'
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
        Name = 'Dia'
        DataType = datInteger
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 80
      end
      item
        Name = 'CargoAbono'
        DataType = datString
        Size = 1
      end
      item
        Name = 'Cargo'
        DataType = datFloat
      end
      item
        Name = 'Abono'
        DataType = datFloat
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'UsuarioID'
        DataType = datInteger
      end
      item
        Name = 'TipoMovimientocarteraID'
        DataType = datString
        Size = 5
        Required = True
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsMovimientoCarteraBeforePost
    OnNewRecord = cdsMovimientoCarteraNewRecord
    LogicalName = 'dbo MovimientoCartera2'
    IndexDefs = <>
    Left = 464
    Top = 32
  end
  object dsMovimientoCartera: TDADataSource
    DataSet = cdsMovimientoCartera.Dataset
    DataTable = cdsMovimientoCartera
    Left = 464
    Top = 80
  end
  object dsTipoMovimiento: TDADataSource
    DataSet = cdsTipoMovimiento.Dataset
    DataTable = cdsTipoMovimiento
    Left = 568
    Top = 80
  end
  object cdsTipoMovimiento: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'TipoMovimientoCarteraID'
        DataType = datString
        Size = 5
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
      end
      item
        Name = 'CargoAbono'
        DataType = datString
        Size = 1
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo TipoMovimientoCartera2'
    IndexDefs = <>
    Left = 568
    Top = 32
  end
end
