inherited frmBuscarDespachador: TfrmBuscarDespachador
  Caption = 'Buscar Despachador '
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbgAgrupacion: TcxGrid
    inherited cxGridDBTableView1: TcxGridDBTableView
      object cxGridDBTableView1DespachadorID: TcxGridDBColumn
        DataBinding.FieldName = 'DespachadorID'
      end
      object cxGridDBTableView1Nombre: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
      end
      object cxGridDBTableView1Codigo: TcxGridDBColumn
        DataBinding.FieldName = 'Codigo'
      end
    end
  end
  inherited cdsBuscar: TDACDSDataTable
    Fields = <
      item
        Name = 'DespachadorID'
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
        Size = 50
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
        Name = 'Codigo'
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
        Name = 'Domicilio'
        DataType = datString
        Size = 80
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
        Name = 'Telefono'
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
        Name = 'Status'
        DataType = datBoolean
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'FechaAlta'
        DataType = datDateTime
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
        Name = 'EstacionID'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end>
    LogicalName = 'dbo Despachador'
  end
  inherited dsBuscar: TDADataSource
    DataSet = cdsBuscar.Dataset
  end
end
