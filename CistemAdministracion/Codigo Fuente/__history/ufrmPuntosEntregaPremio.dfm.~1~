inherited frmPuntosEntregaPremio: TfrmPuntosEntregaPremio
  Caption = 'frmPuntosEntregaPremio'
  ExplicitWidth = 625
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object gbDatos: TcxGroupBox
    Left = 16
    Top = 16
    Caption = 'Datos'
    Enabled = False
    TabOrder = 0
    Height = 217
    Width = 457
    object cxLabel1: TcxLabel
      Left = 16
      Top = 24
      Caption = 'ClienteID'
      Transparent = True
    end
    object edtCliente: TcxTextEdit
      Left = 16
      Top = 40
      TabOrder = 0
      OnEnter = edtClienteEnter
      OnExit = edtClienteExit
      OnKeyDown = edtClienteKeyDown
      Width = 65
    end
    object cxLabel2: TcxLabel
      Left = 16
      Top = 144
      Caption = 'Premio'
      Transparent = True
    end
    object cbPremio: TcxLookupComboBox
      Left = 16
      Top = 160
      Properties.KeyFieldNames = 'PuntosPremioID'
      Properties.ListColumns = <
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsPremio
      TabOrder = 1
      Width = 217
    end
    object cxLabel3: TcxLabel
      Left = 16
      Top = 64
      Caption = 'Nombre'
      Transparent = True
    end
    object edtNombre: TcxTextEdit
      Left = 16
      Top = 80
      Enabled = False
      TabOrder = 6
      Width = 313
    end
    object cxLabel4: TcxLabel
      Left = 16
      Top = 104
      Caption = 'Saldo'
      Transparent = True
    end
    object edtSaldo: TcxCurrencyEdit
      Left = 16
      Top = 120
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.00;(,0.00)'
      TabOrder = 8
      Width = 97
    end
    object edtCantidad: TcxCurrencyEdit
      Left = 248
      Top = 160
      EditValue = '1'
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = ',0;(,0)'
      TabOrder = 2
      Width = 57
    end
    object cxLabel5: TcxLabel
      Left = 248
      Top = 144
      Caption = 'Cantidad'
      Transparent = True
    end
  end
  object cdsPuntos: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'PuntosID'
        DataType = datAutoInc
        GeneratorName = 'dbo.Puntos'
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
      end
      item
        Name = 'Descripcion'
        DataType = datString
        Size = 80
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
        Name = 'UsuarioID'
        DataType = datInteger
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo Puntos'
    IndexDefs = <>
    Left = 296
    Top = 208
  end
  object cdsPremio: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'PuntosPremioID'
        DataType = datInteger
      end
      item
        Name = 'Codigo'
        DataType = datString
        Size = 5
      end
      item
        Name = 'Descripcion'
        DataType = datString
        Size = 80
      end
      item
        Name = 'Puntos'
        DataType = datFloat
      end>
    Params = <
      item
        Name = 'EstacionID'
        Value = '0'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'PuntosBuscaPremio'
    IndexDefs = <>
    Left = 336
    Top = 208
  end
  object dsPuntos: TDADataSource
    DataSet = cdsPuntos.Dataset
    DataTable = cdsPuntos
    Left = 296
    Top = 240
  end
  object dsPremio: TDADataSource
    DataSet = cdsPremio.Dataset
    DataTable = cdsPremio
    Left = 336
    Top = 240
  end
end
