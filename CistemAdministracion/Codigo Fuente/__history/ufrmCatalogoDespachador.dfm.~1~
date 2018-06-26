inherited frmCatalogoDespachador: TfrmCatalogoDespachador
  Caption = 'frmCatalogoDespachador'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 616
      ExplicitHeight = 416
      inherited dbgCatalogo: TcxGrid
        Width = 616
        Height = 416
        ExplicitWidth = 616
        ExplicitHeight = 416
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          object dbgCatalogoDBTableView1DespachadorID: TcxGridDBColumn
            DataBinding.FieldName = 'DespachadorID'
            Width = 97
          end
          object dbgCatalogoDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
          end
          object dbgCatalogoDBTableView1Codigo: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo'
          end
          object dbgCatalogoDBTableView1Domicilio: TcxGridDBColumn
            DataBinding.FieldName = 'Domicilio'
          end
          object dbgCatalogoDBTableView1Ciudad: TcxGridDBColumn
            DataBinding.FieldName = 'Ciudad'
          end
          object dbgCatalogoDBTableView1Telefono: TcxGridDBColumn
            DataBinding.FieldName = 'Telefono'
          end
          object dbgCatalogoDBTableView1Status: TcxGridDBColumn
            DataBinding.FieldName = 'Status'
          end
          object dbgCatalogoDBTableView1FechaAlta: TcxGridDBColumn
            DataBinding.FieldName = 'FechaAlta'
          end
          object dbgCatalogoDBTableView1EstacionID: TcxGridDBColumn
            DataBinding.FieldName = 'EstacionID'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitWidth = 616
      ExplicitHeight = 416
      object GrpBoxDatos: TcxGroupBox
        Left = 16
        Top = 8
        Caption = ' Datos '
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 0
        Height = 273
        Width = 545
        object LblID: TcxLabel
          Left = 21
          Top = 30
          Caption = 'Id Despachador'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblNombre: TcxLabel
          Left = 141
          Top = 30
          Caption = 'Nombre'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCalle: TcxLabel
          Left = 21
          Top = 77
          Caption = 'Calle'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCiudad: TcxLabel
          Left = 284
          Top = 77
          Caption = 'Ciudad'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblTelefono: TcxLabel
          Left = 21
          Top = 133
          Caption = 'Telefono'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object txtId: TcxDBTextEdit
          Left = 21
          Top = 47
          DataBinding.DataField = 'DespachadorID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 0
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 0
          Width = 100
        end
        object txtNombre: TcxDBTextEdit
          Left = 144
          Top = 47
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 1
          Width = 377
        end
        object txtCalle: TcxDBTextEdit
          Left = 21
          Top = 94
          DataBinding.DataField = 'Domicilio'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 2
          Width = 228
        end
        object txtCiudad: TcxDBTextEdit
          Left = 284
          Top = 94
          DataBinding.DataField = 'Ciudad'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 3
          Width = 237
        end
        object txtTelefono: TcxDBTextEdit
          Left = 21
          Top = 150
          DataBinding.DataField = 'Telefono'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 4
          Width = 228
        end
        object txtCuentaContable: TcxDBTextEdit
          Left = 284
          Top = 150
          DataBinding.DataField = 'CuentaContable'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 10
          Width = 237
        end
        object LblCuentaContable: TcxLabel
          Left = 284
          Top = 132
          Caption = 'Cuenta Contable'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBRadioGroup1: TcxDBRadioGroup
          Left = 288
          Top = 184
          Caption = 'Estatus'
          DataBinding.DataField = 'Status'
          DataBinding.DataSource = dsCatalogo
          Properties.Columns = 2
          Properties.DefaultValue = True
          Properties.Items = <
            item
              Caption = 'Activo'
              Value = True
            end
            item
              Caption = 'Inactivo'
              Value = False
            end>
          TabOrder = 12
          Height = 73
          Width = 233
        end
        object cxLabel1: TcxLabel
          Left = 21
          Top = 189
          Caption = 'Numero de Nomina'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 21
          Top = 206
          DataBinding.DataField = 'Nomina'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 14
          Width = 228
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 16
        Top = 296
        Caption = 'Cambiar Estacion'
        TabOrder = 1
        Height = 89
        Width = 545
        object LblEstacion: TcxLabel
          Left = 13
          Top = 29
          Caption = 'Estaci'#243'n'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object lookEstacion: TcxDBLookupComboBox
          Left = 13
          Top = 49
          DataBinding.DataField = 'EstacionID'
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'EstacionID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsEstacion
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 1
          Width = 228
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'DespachadorID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
        Required = True
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
        Required = True
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
        Required = True
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Nomina'
        DataType = datString
        Size = 20
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsCatalogoNewRecord
    LogicalName = 'dbo Despachador'
    Left = 456
    Top = 384
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
    Top = 384
  end
  inherited tblCatalogo: TdxMemData
    Left = 528
    Top = 384
  end
  object cdsEstacion: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
        Required = True
      end
      item
        Name = 'RazonSocial'
        DataType = datString
        Size = 70
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 30
        Required = True
      end
      item
        Name = 'ClavePemex'
        DataType = datString
        Size = 10
        Required = True
      end
      item
        Name = 'NoBombas'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Colonia'
        DataType = datString
        Size = 80
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
      end
      item
        Name = 'CodigoPostal'
        DataType = datString
        Size = 10
      end
      item
        Name = 'Host'
        DataType = datString
        Size = 30
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Impuesto'
        DataType = datFloat
        Required = True
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo Estacion'
    IndexDefs = <>
    Left = 528
    Top = 192
  end
  object dsEstacion: TDADataSource
    DataSet = cdsEstacion.Dataset
    DataTable = cdsEstacion
    Left = 592
    Top = 192
  end
end
