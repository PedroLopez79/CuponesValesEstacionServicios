inherited frmBuscarCategoria: TfrmBuscarCategoria
  Caption = 'Buscar Categoria'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited dbgAgrupacion: TcxGrid
    inherited cxGridDBTableView1: TcxGridDBTableView
      object cxGridDBTableView1CategoriaID: TcxGridDBColumn
        DataBinding.FieldName = 'CategoriaID'
      end
      object cxGridDBTableView1Nombre: TcxGridDBColumn
        DataBinding.FieldName = 'Nombre'
      end
    end
  end
  inherited cdsBuscar: TDACDSDataTable
    Fields = <
      item
        Name = 'CategoriaID'
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
        Size = 30
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end>
    LogicalName = 'dbo Categoria'
  end
  inherited dsBuscar: TDADataSource
    DataSet = cdsBuscar.Dataset
  end
end
