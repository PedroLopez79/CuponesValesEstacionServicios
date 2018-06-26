inherited frmFacturasCliente: TfrmFacturasCliente
  Caption = 'frmFacturasCliente'
  ClientHeight = 565
  ClientWidth = 935
  OnShow = FormShow
  ExplicitTop = -23
  ExplicitWidth = 935
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 13
  object pgcFacturas: TcxPageControl
    Left = 0
    Top = 0
    Width = 935
    Height = 565
    Hint = ''
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet4
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dmImages.Imagenes
    Properties.TabPosition = tpBottom
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabSlants.Kind = skCutCorner
    OnChange = pgcFacturasChange
    ClientRectBottom = 535
    ClientRectLeft = 3
    ClientRectRight = 929
    ClientRectTop = 3
    object cxTabSheet4: TcxTabSheet
      Caption = 'Generar Facturas'
      ImageIndex = 45
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 0
        Hint = ''
        Align = alTop
        Caption = '  Parametros para facturar  '
        Style.BorderStyle = ebsThick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 209
        Width = 926
        object Label18: TLabel
          Left = 31
          Top = 86
          Width = 73
          Height = 13
          Caption = 'Fecha de Corte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 31
          Top = 116
          Width = 75
          Height = 13
          Caption = 'Fecha Contable'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 31
          Top = 57
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
        object Label17: TLabel
          Left = 31
          Top = 31
          Width = 24
          Height = 13
          Caption = 'Serie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label21: TLabel
          Left = 140
          Top = 31
          Width = 22
          Height = 13
          Caption = 'Folio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object btnPreeliminar: TcxButton
          Left = 31
          Top = 143
          Width = 95
          Height = 25
          Caption = 'Preeliminar'
          LookAndFeel.Kind = lfOffice11
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF004A66
            7C00BE959600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC3001E89
            E8004B7AA300C8969300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004BB4FE0051B5
            FF002089E9004B7AA200C6959200FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0051B7
            FE0051B3FF001D87E6004E7AA000CA979200FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0051B7FE004EB2FF001F89E6004E7BA200B9949700FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0052B8FE004BB1FF002787D9005F6A7600FF00FF00B0857F00C09F
            9400C09F9600BC988E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0055BDFF00B5D6ED00BF9D9200BB9B8C00E7DAC200FFFF
            E300FFFFE500FDFADA00D8C3B300B58D8500FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00CEA79500FDEEBE00FFFFD800FFFF
            DA00FFFFDB00FFFFE600FFFFFB00EADDDC00AE837F00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00C1A09100FBDCA800FEF7D000FFFF
            DB00FFFFE300FFFFF800FFFFFD00FFFFFD00C6A99C00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C1A09100FEE3AC00F1C49100FCF2CA00FFFF
            DD00FFFFE400FFFFF700FFFFF700FFFFE900EEE5CB00B9948C00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C2A19100FFE6AE00EEB58100F7DCAE00FEFD
            D800FFFFDF00FFFFE300FFFFE400FFFFE000F3ECD200BB968E00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00BC978C00FBE7B700F4C79100F2C99400F8E5
            B900FEFCD800FFFFDD00FFFFDC00FFFFE000E2D2BA00B68E8600FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00D9C3A900FFFEE500F7DCB800F2C9
            9400F5D4A500FAE8BD00FDF4C900FDFBD600B6908900FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00B58D8500E8DEDD00FFFEF200F9D8
            A300F4C48C00F9D49F00FDEAB800D0B49F00B8908600FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AD827F00C9AA9E00EFE0
            B700EFDFB200E7CEAC00B8908600B8908600FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BA96
            8A00BB988C00B7918800FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 5
          OnClick = btnPreeliminarClick
        end
        object dtpCorte: TcxDateEdit
          Left = 140
          Top = 83
          Hint = ''
          Properties.ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000FF00FFFF00FF
            8080808080808080808080808080808080808080808080808080808080808080
            80FF00FF0000FF00FF0000000000008000000000008000008000000000008000
            00000000000000800000808080FF00FF0000FF00FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000808080FF00FF0000FF00
            FFFFFFFF000000000000000000FFFFFF000000000000000000C0C0C0FFFFFF80
            0000808080FF00FF0000FF00FFFFFFFFFFFFFF000000FFFFFFFFFFFFC0C0C0FF
            FFFFC0C0C0000000FFFFFF800000808080FF00FF0000FF00FFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF800000808080FF00FF
            0000FF00FFFFFFFFFFFFFF000000FFFFFFFFFFFF000000000000000000C0C0C0
            FFFFFF800000808080FF00FF0000FF00FFFFFFFF000000000000FFFFFFFFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFF800000808080FF00FF0000FF00FFFFFFFF
            FFFFFF000000FFFFFFFFFFFF000000000000000000000000FFFFFF8000008080
            80FF00FF0000FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF800000808080FF00FF0000FF00FFFFFFFFC0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF800000808080FF00FF0000FF00
            FF000000000000000000000000000000000000000000000000000000000000FF
            00FFFF00FFFF00FF0000}
          TabOrder = 3
          Width = 121
        end
        object dtpContable: TcxDateEdit
          Left = 140
          Top = 114
          Hint = ''
          Properties.ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000FF00FFFF00FF
            8080808080808080808080808080808080808080808080808080808080808080
            80FF00FF0000FF00FF0000000000008000000000008000008000000000008000
            00000000000000800000808080FF00FF0000FF00FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000808080FF00FF0000FF00
            FFFFFFFF000000000000000000FFFFFF000000000000000000C0C0C0FFFFFF80
            0000808080FF00FF0000FF00FFFFFFFFFFFFFF000000FFFFFFFFFFFFC0C0C0FF
            FFFFC0C0C0000000FFFFFF800000808080FF00FF0000FF00FFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF800000808080FF00FF
            0000FF00FFFFFFFFFFFFFF000000FFFFFFFFFFFF000000000000000000C0C0C0
            FFFFFF800000808080FF00FF0000FF00FFFFFFFF000000000000FFFFFFFFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFF800000808080FF00FF0000FF00FFFFFFFF
            FFFFFF000000FFFFFFFFFFFF000000000000000000000000FFFFFF8000008080
            80FF00FF0000FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF800000808080FF00FF0000FF00FFFFFFFFC0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF800000808080FF00FF0000FF00
            FF000000000000000000000000000000000000000000000000000000000000FF
            00FFFF00FFFF00FF0000}
          TabOrder = 4
          Width = 121
        end
        object edtCliente: TcxCurrencyEdit
          Left = 76
          Top = 54
          Hint = ''
          EditValue = 0
          Properties.DisplayFormat = '#'
          TabOrder = 2
          OnEnter = edtClienteEnter
          OnExit = edtClienteExit
          OnKeyDown = edtClienteKeyDown
          Width = 58
        end
        object edtNombre: TcxTextEdit
          Left = 140
          Top = 54
          Hint = ''
          TabStop = False
          Enabled = False
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          TabOrder = 6
          Width = 271
        end
        object cxTextEdit2: TcxTextEdit
          Left = 171
          Top = 28
          Hint = ''
          Enabled = False
          TabOrder = 1
          Width = 79
        end
        object edtSerieGenera: TcxTextEdit
          Left = 76
          Top = 28
          Hint = ''
          Enabled = False
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Width = 58
        end
        object dtpTimer: TcxTimeEdit
          Left = 267
          Top = 83
          Hint = ''
          EditValue = 0.999988425925926d
          TabOrder = 7
          Width = 144
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 209
        Width = 926
        Height = 323
        Hint = ''
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 31
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,#0.00'
              Kind = skSum
              FieldName = 'Cantidad'
              Column = cxGrid1DBTableView1Cantidad
            end
            item
              Format = '$0,0.00'
              Kind = skSum
              FieldName = 'Importe'
              Column = cxGrid1DBTableView1Importe
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cxGrid1DBTableView1Facturado: TcxGridDBColumn
            DataBinding.FieldName = 'Facturado'
            Width = 75
          end
          object cxGrid1DBTableView1ProductoID: TcxGridDBColumn
            DataBinding.FieldName = 'ProductoID'
          end
          object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Width = 295
          end
          object cxGrid1DBTableView1Cantidad: TcxGridDBColumn
            DataBinding.FieldName = 'Cantidad'
            Width = 142
          end
          object cxGrid1DBTableView1Importe: TcxGridDBColumn
            DataBinding.FieldName = 'Importe'
            Width = 120
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Impresion de Facturas'
      ImageIndex = 48
      object cxGroupBox3: TcxGroupBox
        Left = 19
        Top = 17
        Hint = ''
        Caption = 'Documento generado presione imprimir'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 24
        Width = 436
        object Label14: TLabel
          Left = 12
          Top = 27
          Width = 24
          Height = 13
          Caption = 'Serie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label15: TLabel
          Left = 102
          Top = 27
          Width = 65
          Height = 13
          Caption = 'Factura inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label16: TLabel
          Left = 269
          Top = 27
          Width = 61
          Height = 13
          Caption = 'Factura Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object edtSerie: TcxTextEdit
          Left = 48
          Top = 23
          Hint = ''
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Visible = False
          Width = 41
        end
        object edtRangoFacturaIni: TcxCurrencyEdit
          Left = 189
          Top = 23
          Hint = ''
          EditValue = 0
          ParentFont = False
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#0'
          Style.BorderStyle = ebsOffice11
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Visible = False
          Width = 65
        end
        object edtRangoFacturaFin: TcxCurrencyEdit
          Left = 350
          Top = 23
          Hint = ''
          EditValue = '0'
          ParentFont = False
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#0'
          Style.BorderStyle = ebsOffice11
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Visible = False
          Width = 65
        end
        object cxCheckBox4: TcxCheckBox
          Left = 12
          Top = 50
          Hint = ''
          Caption = 'Imprimir Tickets'
          TabOrder = 3
          Transparent = True
          Visible = False
          Width = 101
        end
      end
    end
  end
  object tblFactura: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 312
    Top = 160
    object tblFacturaFacturado: TBooleanField
      FieldName = 'Facturado'
    end
    object tblFacturaProductoID: TIntegerField
      FieldName = 'ProductoID'
    end
    object tblFacturaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object tblFacturaCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object tblFacturaImporte: TFloatField
      FieldName = 'Importe'
      DisplayFormat = '#,#0.00'
    end
  end
  object DataSource1: TDataSource
    DataSet = tblFactura
    Left = 344
    Top = 160
  end
  object cdsPrevisualizacion: TDACDSDataTable
    Fields = <
      item
        Name = 'ProductoID'
        DataType = datInteger
      end
      item
        Name = 'Descripcion'
        DataType = datString
        Size = 150
      end
      item
        Name = 'Cantidad'
        DataType = datFloat
      end
      item
        Name = 'Importe'
        DataType = datFloat
      end>
    LogicalName = 'spPrevisualizaFacturaCliente'
    Params = <
      item
        Name = 'FechaCorte'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'ClienteID'
        Value = ''
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 280
    Top = 160
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
      end
      item
        Name = 'Estatus'
        DataType = datString
        Size = 1
      end
      item
        Name = 'FormaPagoID'
        DataType = datInteger
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
      end
      item
        Name = 'FormaCompraID'
        DataType = datInteger
      end>
    LogicalName = 'BuscaCliente'
    Params = <
      item
        Name = 'Cliente'
        DataType = datInteger
        Value = ''
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 248
    Top = 160
  end
  object dsCliente: TDADataSource
    DataSet = cdsCliente.Dataset
    DataTable = cdsCliente
    Left = 376
    Top = 160
  end
  object spBuscaFactura: TDACDSDataTable
    Fields = <>
    LogicalName = 'spBuscaFolio'
    Params = <
      item
        Name = 'Folio'
        Value = '1'
      end
      item
        Name = 'Serie'
        Value = 'A'
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 408
    Top = 160
  end
  object dsBuscaFactura: TDADataSource
    DataSet = spBuscaFactura.Dataset
    DataTable = spBuscaFactura
    Left = 440
    Top = 160
  end
  object tblFacturaCupones: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 568
    Top = 64
    object tblFacturaCuponesFACTURADO: TBooleanField
      FieldName = 'FACTURADO'
    end
    object tblFacturaCuponesSECUENCIAVENTA: TIntegerField
      FieldName = 'SECUENCIAVENTA'
    end
    object tblFacturaCuponesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object tblFacturaCuponesCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object tblFacturaCuponesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object tblFacturaCuponesTARJETA: TStringField
      FieldName = 'TARJETA'
      Size = 50
    end
  end
  object DataSource2: TDataSource
    DataSet = tblFacturaCupones
    Left = 568
    Top = 112
  end
  object cdsPrevisualizacionCupones: TDACDSDataTable
    Fields = <
      item
        Name = 'SECUENCIAVENTA'
        DataType = datInteger
      end
      item
        Name = 'Descripcion'
        DataType = datString
        Size = 80
      end
      item
        Name = 'Cantidad'
        DataType = datFloat
      end
      item
        Name = 'Importe'
        DataType = datFloat
      end
      item
        Name = 'TARJETA'
        DataType = datString
        Size = 50
      end>
    LogicalName = 'spPrevisualizacionCuponesClientes'
    Params = <
      item
        Name = 'ClienteID'
        Value = '9'
      end
      item
        Name = 'FechaCorte'
        Value = '09/01/2010'
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 568
    Top = 160
  end
  object rdaUnidadesNoRegistradas: TDARemoteDataAdapter
    GetSchemaCall.RemoteService = DM.RemoteService
    GetDataCall.RemoteService = DM.RemoteService
    GetDataCall.MethodName = 'AbreDataSetReporte'
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
      end
      item
        Name = 'Parametros'
        DataType = rtUserDefined
        Flag = fIn
        TypeName = 'TParametros'
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
    Left = 8
    Top = 504
  end
  object cdsUnidadesNoRegistradas: TDAMemDataTable
    Fields = <>
    LogicalName = 'Reporte'
    Params = <>
    RemoteDataAdapter = rdaUnidadesNoRegistradas
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 40
    Top = 504
  end
end
