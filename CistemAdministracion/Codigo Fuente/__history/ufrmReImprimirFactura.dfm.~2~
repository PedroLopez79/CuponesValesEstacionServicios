inherited frmReImprimirFactura: TfrmReImprimirFactura
  Caption = 'ReImprimir Factura'
  PixelsPerInch = 96
  TextHeight = 13
  object cxReimprimirFactura: TcxPageControl
    Left = 0
    Top = 0
    Width = 625
    Height = 449
    ActivePage = cxTabSheet1
    Align = alClient
    Images = dmImages.Imagenes
    TabOrder = 0
    TabPosition = tpBottom
    ExplicitLeft = 96
    ExplicitTop = 80
    ExplicitWidth = 361
    ExplicitHeight = 257
    ClientRectBottom = 419
    ClientRectLeft = 3
    ClientRectRight = 619
    ClientRectTop = 3
    object cxTabSheet1: TcxTabSheet
      Caption = ' ReImprimir Factura '
      ImageIndex = 48
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 625
      ExplicitHeight = 424
      object cxGrupo: TcxGroupBox
        Left = 32
        Top = 27
        Caption = ' ReImprimir Factura'
        Style.BorderStyle = ebsUltraFlat
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 142
        Width = 369
        object txtSerieFactura: TcxTextEdit
          Left = 24
          Top = 41
          Enabled = False
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 105
        end
        object cxLabel1: TcxLabel
          Left = 24
          Top = 24
          Caption = 'Serie'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 24
          Top = 78
          Caption = 'Folio Factura'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object txtFolioFactura: TcxTextEdit
          Left = 24
          Top = 95
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 105
        end
      end
    end
  end
  object cdsFolioFactura: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'FacturaID'
        DataType = datInteger
      end
      item
        Name = 'Folio'
        DataType = datInteger
      end
      item
        Name = 'Serie'
        DataType = datString
        Size = 5
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
        Name = 'Fecha'
        DataType = datDateTime
      end
      item
        Name = 'Subtotal'
        DataType = datFloat
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
        Name = 'ImpuestoPorcentaje'
        DataType = datFloat
      end
      item
        Name = 'Turno'
        DataType = datInteger
      end
      item
        Name = 'Cancelada'
        DataType = datBoolean
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
        Name = 'LiquidacionID'
        DataType = datInteger
      end
      item
        Name = 'FormaPagoID'
        DataType = datInteger
      end
      item
        Name = 'TipoFacturaID'
        DataType = datInteger
      end
      item
        Name = 'Tickets'
        DataType = datWideString
        Size = 250
      end>
    Params = <
      item
        Name = 'Folio'
        Value = '78'
        ParamType = daptInput
      end
      item
        Name = 'Serie'
        Value = 'A'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerFacturaPorFolioSerie'
    IndexDefs = <>
    Left = 416
    Top = 224
  end
  object dsFolioFactura: TDADataSource
    DataSet = cdsFolioFactura.Dataset
    DataTable = cdsFolioFactura
    Left = 448
    Top = 224
  end
end
