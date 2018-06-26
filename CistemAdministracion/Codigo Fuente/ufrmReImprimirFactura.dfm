inherited frmReImprimirFactura: TfrmReImprimirFactura
  Caption = 'ReImprimir Factura'
  PixelsPerInch = 96
  TextHeight = 13
  object cxReimprimirFactura: TcxPageControl
    Left = 0
    Top = 0
    Width = 625
    Height = 449
    Hint = ''
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dmImages.Imagenes
    Properties.TabPosition = tpBottom
    ExplicitLeft = 96
    ExplicitTop = 80
    ExplicitWidth = 361
    ExplicitHeight = 257
    ClientRectBottom = 424
    ClientRectLeft = 4
    ClientRectRight = 621
    ClientRectTop = 4
    object cxTabSheet1: TcxTabSheet
      Caption = ' ReImprimir Factura '
      ImageIndex = 48
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 616
      ExplicitHeight = 416
      object cxGrupo: TcxGroupBox
        Left = 32
        Top = 27
        Hint = ''
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
          Hint = ''
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
          Hint = ''
          Caption = 'Serie'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 24
          Top = 78
          Hint = ''
          Caption = 'Folio Factura'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object txtFolioFactura: TcxTextEdit
          Left = 24
          Top = 95
          Hint = ''
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
    LogicalName = 'ObtenerFacturaPorFolioSerie'
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
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
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
