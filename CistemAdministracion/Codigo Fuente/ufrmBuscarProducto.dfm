inherited FrmBuscarProducto: TFrmBuscarProducto
  Caption = 'Buscar Producto'
  ExplicitWidth = 320
  ExplicitHeight = 445
  PixelsPerInch = 96
  TextHeight = 13
  inherited cdsBuscar: TDACDSDataTable
    Fields = <
      item
        Name = 'ProductoID'
        DataType = datInteger
      end
      item
        Name = 'Codigo'
        DataType = datString
        Size = 10
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 150
      end
      item
        Name = 'PrecioVenta'
        DataType = datFloat
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
        Name = 'CategoriaID'
        DataType = datInteger
      end
      item
        Name = 'Puntos'
        DataType = datInteger
      end>
    LogicalName = 'ObtenerProductoPorTipo'
    Params = <
      item
        Name = 'Tipo'
        Value = '1'
        ParamType = daptInput
      end
      item
        Name = 'EstacionID'
        Value = '4120'
        ParamType = daptInput
      end>
  end
  inherited dsBuscar: TDADataSource
    DataSet = cdsBuscar.Dataset
    Top = 312
  end
end
