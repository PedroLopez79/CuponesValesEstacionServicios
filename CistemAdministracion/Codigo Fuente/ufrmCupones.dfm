inherited frmCupones: TfrmCupones
  Caption = 'frmCupones'
  ClientHeight = 411
  ClientWidth = 780
  ExplicitWidth = 780
  ExplicitHeight = 411
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Hint = ''
    Align = alTop
    Caption = 'Datos del Cliente'
    TabOrder = 0
    Height = 145
    Width = 780
    object Label8: TLabel
      Left = 16
      Top = 56
      Width = 32
      Height = 13
      Caption = 'Cliente'
      Transparent = True
    end
    object Label10: TLabel
      Left = 155
      Top = 27
      Width = 30
      Height = 13
      Caption = 'Fecha'
      Transparent = True
    end
    object Label1: TLabel
      Left = 18
      Top = 27
      Width = 21
      Height = 13
      Caption = 'Lote'
      Transparent = True
    end
    object Label2: TLabel
      Left = 16
      Top = 88
      Width = 24
      Height = 13
      Caption = 'Total'
      Transparent = True
    end
    object Label3: TLabel
      Left = 290
      Top = 27
      Width = 58
      Height = 13
      Caption = 'Vencimineto'
      Transparent = True
    end
    object Label4: TLabel
      Left = 262
      Top = 88
      Width = 27
      Height = 13
      Caption = 'Saldo'
      Transparent = True
    end
    object dbeCliente: TcxDBTextEdit
      Left = 56
      Top = 51
      Hint = ''
      DataBinding.DataField = 'ClienteID'
      DataBinding.DataSource = dsLoteCupon
      TabOrder = 1
      OnEnter = dbeClienteEnter
      OnExit = dbeClienteExit
      OnKeyDown = dbeClienteKeyDown
      Width = 93
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 191
      Top = 24
      Hint = ''
      DataBinding.DataField = 'Fecha'
      DataBinding.DataSource = dsLoteCupon
      Enabled = False
      TabOrder = 0
      Width = 93
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 56
      Top = 24
      Hint = ''
      DataBinding.DataField = 'LoteCuponID'
      DataBinding.DataSource = dsLoteCupon
      Enabled = False
      TabOrder = 3
      Width = 93
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 56
      Top = 83
      Hint = ''
      DataBinding.DataField = 'Total'
      DataBinding.DataSource = dsLoteCupon
      TabOrder = 2
      OnExit = cxDBTextEdit2Exit
      Width = 93
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 354
      Top = 24
      Hint = ''
      DataBinding.DataField = 'FechaValido'
      DataBinding.DataSource = dsLoteCupon
      Enabled = False
      TabOrder = 4
      Width = 93
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 155
      Top = 51
      Hint = ''
      DataBinding.DataField = 'ClienteID'
      DataBinding.DataSource = dsLoteCupon
      Enabled = False
      Properties.KeyFieldNames = 'ClienteID'
      Properties.ListColumns = <
        item
          FieldName = 'Nombre'
        end>
      Properties.ListSource = dsCliente
      TabOrder = 5
      Width = 292
    end
    object cxCurrencyEdit1: TcxCurrencyEdit
      Left = 295
      Top = 83
      Hint = ''
      Enabled = False
      TabOrder = 6
      Width = 152
    end
    object cxCheckBox1: TcxCheckBox
      Left = 256
      Top = 110
      Hint = ''
      Caption = 'Cupones Consumidos en Ventanilla?'
      TabOrder = 7
      Transparent = True
      Width = 209
    end
  end
  object dbgCupones: TcxGrid
    Left = 0
    Top = 145
    Width = 780
    Height = 266
    Hint = ''
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = True
    object dbgCuponesDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnFocusedRecordChanged = dbgCuponesDBTableView1FocusedRecordChanged
      DataController.DataSource = dsCuponesGrid
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '##,###,##0.#0'
          Kind = skSum
        end
        item
          Format = '##,###,##0.#0'
          Kind = skSum
        end
        item
          Format = '##,###,##0.#0'
          Kind = skSum
        end
        item
          Format = '$#,#0.00'
          Kind = skSum
          Column = dbgCuponesDBTableView1Total
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
      Styles.ContentEven = DM.cxStyle1
      object dbgCuponesDBTableView1Cantidad: TcxGridDBColumn
        DataBinding.FieldName = 'Cantidad'
        Width = 90
      end
      object dbgCuponesDBTableView1Denominacion: TcxGridDBColumn
        DataBinding.FieldName = 'Denominacion'
        Width = 84
      end
      object dbgCuponesDBTableView1Referencia: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
      end
      object dbgCuponesDBTableView1Total: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        Options.Editing = False
        Options.Focusing = False
        Width = 106
      end
    end
    object cxGridLevel5: TcxGridLevel
      GridView = dbgCuponesDBTableView1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 145
    Width = 780
    Height = 266
    Hint = ''
    Align = alClient
    TabOrder = 2
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnFocusedRecordChanged = dbgCuponesDBTableView1FocusedRecordChanged
      DataController.DataSource = dsCuponesGrid
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '##,###,##0.#0'
          Kind = skSum
        end
        item
          Format = '##,###,##0.#0'
          Kind = skSum
        end
        item
          Format = '##,###,##0.#0'
          Kind = skSum
        end
        item
          Format = '$#,#0.00'
          Kind = skSum
          Column = cxGridDBColumn4
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
      Styles.ContentEven = DM.cxStyle1
      object cxGridDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Cantidad'
        Width = 90
      end
      object cxGridDBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Denominacion'
        Width = 84
      end
      object cxGridDBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'Referencia'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
      end
      object cxGridDBColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'Total'
        Options.Editing = False
        Options.Focusing = False
        Width = 106
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object cdsCliente: TDACDSDataTable
    Fields = <
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
      end>
    LogicalName = 'ClienteCupon'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 32
    Top = 304
  end
  object dsCliente: TDADataSource
    DataSet = cdsCliente.Dataset
    DataTable = cdsCliente
    Left = 64
    Top = 304
  end
  object cdsCupones: TDACDSDataTable
    Fields = <
      item
        Name = 'CuponID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Importe'
        DataType = datFloat
      end
      item
        Name = 'FechaConsumo'
        DataType = datDateTime
      end
      item
        Name = 'FechaValido'
        DataType = datDateTime
      end
      item
        Name = 'VolumenImporte'
        DataType = datString
        Size = 1
      end
      item
        Name = 'Status'
        DataType = datString
        Size = 1
      end
      item
        Name = 'Barras'
        DataType = datString
        Size = 16
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
        Name = 'LoteCuponID'
        DataType = datInteger
        Required = True
      end>
    LogicalName = 'dbo Cupon'
    Params = <
      item
        Name = 'LoteCuponID'
        Value = '1'
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 256
    Top = 344
  end
  object dsCupones: TDADataSource
    DataSet = cdsCupones.Dataset
    DataTable = cdsCupones
    Left = 288
    Top = 344
  end
  object cdsLoteCupon: TDACDSDataTable
    Fields = <
      item
        Name = 'LoteCuponID'
        DataType = datInteger
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
        Name = 'Dia'
        DataType = datInteger
      end
      item
        Name = 'FechaValido'
        DataType = datDateTime
      end
      item
        Name = 'Total'
        DataType = datFloat
      end
      item
        Name = 'Status'
        DataType = datString
        Size = 1
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'UsuarioID'
        DataType = datInteger
      end>
    LogicalName = 'dbo.LoteCupon'
    Params = <
      item
        Name = 'LoteCuponID'
        DataType = datInteger
        Value = '0'
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    BeforePost = cdsLoteCuponBeforePost
    OnNewRecord = cdsLoteCuponNewRecord
    IndexDefs = <>
    Left = 256
    Top = 312
  end
  object dsLoteCupon: TDADataSource
    DataSet = cdsLoteCupon.Dataset
    DataTable = cdsLoteCupon
    Left = 288
    Top = 312
  end
  object tblCuponesGrid: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforePost = tblCuponesGridBeforePost
    Left = 200
    Top = 224
    object tblCuponesGridCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object tblCuponesGridDenominacion: TFloatField
      FieldName = 'Denominacion'
      DisplayFormat = '#,#0.00'
    end
    object tblCuponesGridReferencia: TStringField
      FieldName = 'Referencia'
      Size = 50
    end
    object tblCuponesGridTotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = '$#,#0.00'
    end
  end
  object dsCuponesGrid: TDataSource
    DataSet = tblCuponesGrid
    Left = 232
    Top = 224
  end
  object dsSaldoEjercicio: TDADataSource
    DataSet = cdsSaldoEjercicio.Dataset
    DataTable = cdsSaldoEjercicio
    Left = 448
    Top = 247
  end
  object cdsSaldoEjercicio: TDACDSDataTable
    Fields = <
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
      end
      item
        Name = 'Limite'
        DataType = datFloat
      end
      item
        Name = 'ConsumosPendientes'
        DataType = datFloat
      end
      item
        Name = 'CuponesPendientes'
        DataType = datFloat
      end
      item
        Name = 'Movimientos'
        DataType = datFloat
      end
      item
        Name = 'Saldo'
        DataType = datFloat
      end>
    LogicalName = 'validaTarSaldoEjerc'
    Params = <
      item
        Name = 'ClienteIni'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'ClienteFin'
        Value = ''
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    BeforePost = cdsLoteCuponBeforePost
    OnNewRecord = cdsLoteCuponNewRecord
    IndexDefs = <>
    Left = 416
    Top = 247
  end
end
