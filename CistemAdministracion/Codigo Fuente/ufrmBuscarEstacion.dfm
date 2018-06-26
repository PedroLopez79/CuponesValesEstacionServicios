inherited frmBuscarEstacion: TfrmBuscarEstacion
  Caption = 'frmBuscarEstacion'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbgAgrupacion: TcxGrid
    ExplicitTop = 8
    inherited cxGridDBTableView1: TcxGridDBTableView
      object cxGridDBTableView1EstacionID: TcxGridDBColumn
        DataBinding.FieldName = 'EstacionID'
      end
      object cxGridDBTableView1Nombre: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
      end
    end
  end
  inherited cdsBuscar: TDACDSDataTable
    Fields = <
      item
        Name = 'EstacionID'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = True
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'RazonSocial'
        DataType = datString
        Size = 70
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 30
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'ClavePemex'
        DataType = datString
        Size = 10
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'NoBombas'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Colonia'
        DataType = datString
        Size = 80
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'CodigoPostal'
        DataType = datString
        Size = 10
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Host'
        DataType = datString
        Size = 30
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Impuesto'
        DataType = datFloat
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end>
    LogicalName = 'dbo Estacion'
  end
  inherited dsBuscar: TDADataSource
    DataSet = cdsBuscar.Dataset
  end
end
