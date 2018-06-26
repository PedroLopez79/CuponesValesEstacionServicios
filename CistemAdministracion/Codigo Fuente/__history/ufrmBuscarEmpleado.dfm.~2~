inherited frmBuscarEmpleado: TfrmBuscarEmpleado
  Caption = 'Buscar Empleado'
  ClientHeight = 469
  ExplicitHeight = 495
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcBuscar: TcxPageControl
    Height = 445
    ExplicitHeight = 445
    ClientRectBottom = 415
    inherited tsBuscar: TcxTabSheet
      ExplicitHeight = 412
      inherited dbgBuscar: TcxGrid
        Height = 346
        ExplicitHeight = 346
        inherited dbgBuscarDBTableView2: TcxGridDBTableView
          object dbgBuscarDBTableView2DespachadorID: TcxGridDBColumn
            DataBinding.FieldName = 'DespachadorID'
          end
          object dbgBuscarDBTableView2Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
          end
          object dbgBuscarDBTableView2Codigo: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo'
          end
          object dbgBuscarDBTableView2Domicilio: TcxGridDBColumn
            DataBinding.FieldName = 'Domicilio'
          end
          object dbgBuscarDBTableView2Ciudad: TcxGridDBColumn
            DataBinding.FieldName = 'Ciudad'
          end
          object dbgBuscarDBTableView2Telefono: TcxGridDBColumn
            DataBinding.FieldName = 'Telefono'
          end
          object dbgBuscarDBTableView2Status: TcxGridDBColumn
            DataBinding.FieldName = 'Status'
          end
          object dbgBuscarDBTableView2FechaAlta: TcxGridDBColumn
            DataBinding.FieldName = 'FechaAlta'
          end
          object dbgBuscarDBTableView2CuentaContable: TcxGridDBColumn
            DataBinding.FieldName = 'CuentaContable'
          end
          object dbgBuscarDBTableView2EstacionID: TcxGridDBColumn
            DataBinding.FieldName = 'EstacionID'
          end
        end
      end
    end
    inherited tsAgregar: TcxTabSheet
      TabVisible = False
    end
  end
  inherited cdsBuscar: TDACDSDataTable
    Fields = <
      item
        Name = 'DespachadorID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Codigo'
        DataType = datString
        Size = 10
      end
      item
        Name = 'Domicilio'
        DataType = datString
        Size = 80
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Telefono'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Status'
        DataType = datBoolean
      end
      item
        Name = 'FechaAlta'
        DataType = datDateTime
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'Parametro'
        Value = 'S'
        ParamType = daptInput
      end>
    LogicalName = 'BuscarEmpleado'
  end
  inherited dsBuscar: TDADataSource
    DataSet = cdsBuscar.Dataset
    Top = 296
  end
end
