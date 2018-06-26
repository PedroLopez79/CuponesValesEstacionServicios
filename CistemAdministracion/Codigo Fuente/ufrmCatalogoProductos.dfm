inherited frmCatalogoProducto: TfrmCatalogoProducto
  Caption = 'Catalago Productos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 616
      ExplicitHeight = 416
      inherited dbgCatalogo: TcxGrid
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          object dbgCatalogoDBTableView1ProductoID: TcxGridDBColumn
            DataBinding.FieldName = 'ProductoID'
          end
          object dbgCatalogoDBTableView1Codigo: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo'
          end
          object dbgCatalogoDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
          end
          object dbgCatalogoDBTableView1PrecioVenta: TcxGridDBColumn
            DataBinding.FieldName = 'PrecioVenta'
          end
          object dbgCatalogoDBTableView1ClavePemex: TcxGridDBColumn
            DataBinding.FieldName = 'ClavePemex'
          end
          object dbgCatalogoDBTableView1Barras: TcxGridDBColumn
            DataBinding.FieldName = 'Barras'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 616
      ExplicitHeight = 416
      object GrpBoxDatos: TcxGroupBox
        Left = 3
        Top = 0
        Hint = ''
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 329
        Width = 614
        object LblNoProducto: TcxLabel
          Left = 16
          Top = 24
          Hint = ''
          Caption = 'Producto'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object TxtNoProducto: TcxDBTextEdit
          Left = 16
          Top = 40
          Hint = ''
          TabStop = False
          DataBinding.DataField = 'ProductoID'
          DataBinding.DataSource = dsCatalogo
          Enabled = False
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = False
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Width = 97
        end
        object cxLabel2: TcxLabel
          Left = -64
          Top = 560
          Hint = ''
          Caption = 'cxLabel1'
        end
        object LblNombre: TcxLabel
          Left = 120
          Top = 24
          Hint = ''
          Caption = 'Nombre'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCategoria: TcxLabel
          Left = 312
          Top = 64
          Hint = ''
          Caption = 'Categoria'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblPrecio: TcxLabel
          Left = 16
          Top = 144
          Hint = ''
          Caption = 'Precio Venta'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblClavePemex: TcxLabel
          Left = 16
          Top = 104
          Hint = ''
          Caption = 'Clave Pemex'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object TxtNombre: TcxDBTextEdit
          Left = 120
          Top = 40
          Hint = ''
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Width = 412
        end
        object TxtPrecio: TcxDBTextEdit
          Left = 16
          Top = 160
          Hint = ''
          DataBinding.DataField = 'PrecioVenta'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 6
          Width = 165
        end
        object TxtClavePemex: TcxDBTextEdit
          Left = 16
          Top = 120
          Hint = ''
          DataBinding.DataField = 'ClavePemex'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 5
          Width = 165
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 16
          Top = 240
          Hint = ''
          Caption = 'Producto Activo'
          DataBinding.DataField = 'Status'
          DataBinding.DataSource = dsCatalogo
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 10
          Transparent = True
          Width = 121
        end
        object TxtCodigoBarras: TcxDBTextEdit
          Left = 120
          Top = 80
          Hint = ''
          DataBinding.DataField = 'Barras'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Width = 186
        end
        object LblCodigoBarras: TcxLabel
          Left = 120
          Top = 64
          Hint = ''
          Caption = 'Codigo de Barras'
          Style.BorderStyle = ebsNone
          Style.TransparentBorder = False
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 192
          Top = 160
          Hint = ''
          DataBinding.DataField = 'Costo'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 7
          Width = 169
        end
        object LblPrecioCompra: TcxLabel
          Left = 192
          Top = 144
          Hint = ''
          Caption = 'Costo'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCuentaContableCompra: TcxLabel
          Left = 16
          Top = 192
          Hint = ''
          Caption = 'Cuenta Contable Compra'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object TxtCuentaContableCompra: TcxDBTextEdit
          Left = 16
          Top = 208
          Hint = ''
          DataBinding.DataField = 'CuentaContableCompra'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 8
          Width = 169
        end
        object TxtCuentaContableVenta: TcxDBTextEdit
          Left = 192
          Top = 208
          Hint = ''
          DataBinding.DataField = 'CuentaContableVenta'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 9
          Width = 169
        end
        object cxLabel1: TcxLabel
          Left = 192
          Top = 192
          Hint = ''
          Caption = 'Cuenta Contable Venta'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LookUpCmboxNombre: TcxDBLookupComboBox
          Left = 312
          Top = 80
          Hint = ''
          DataBinding.DataField = 'CategoriaID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'CategoriaID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsCategoria
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Width = 220
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 16
          Top = 80
          Hint = ''
          DataBinding.DataField = 'Codigo'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Width = 97
        end
        object cxLabel3: TcxLabel
          Left = 16
          Top = 64
          Hint = ''
          Caption = 'C'#243'digo'
          Style.BorderStyle = ebsNone
          Style.TransparentBorder = False
          Transparent = True
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 16
          Top = 272
          Hint = ''
          Caption = 'Inventariable?'
          DataBinding.DataField = 'Inventariable'
          DataBinding.DataSource = dsCatalogo
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 11
          Transparent = True
          Width = 121
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 376
          Top = 160
          Hint = ''
          DataBinding.DataField = 'IEPS'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 23
          Width = 169
        end
        object cxLabel4: TcxLabel
          Left = 376
          Top = 144
          Hint = ''
          Caption = 'IEPS'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'ProductoID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Codigo'
        DataType = datString
        Size = 10
        Required = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
        Required = True
      end
      item
        Name = 'PrecioVenta'
        DataType = datFloat
        Required = True
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
        Name = 'CostoPromedio'
        DataType = datFloat
      end
      item
        Name = 'CategoriaID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'IEPS'
        DataType = datFloat
      end>
    LogicalName = 'dbo Producto'
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsCatalogoNewRecord
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
  end
  object cdsEmpresa: TDACDSDataTable
    Fields = <
      item
        Name = 'EmpresaID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
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
      end
      item
        Name = 'ClavePemex'
        DataType = datString
        Size = 10
      end
      item
        Name = 'NoBombas'
        DataType = datInteger
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
      end
      item
        Name = 'ClienteSagarpa'
        DataType = datInteger
      end
      item
        Name = 'ClienteSagarpaPemex'
        DataType = datInteger
      end
      item
        Name = 'ISR'
        DataType = datFloat
      end
      item
        Name = 'IvaRetenido'
        DataType = datBoolean
      end>
    LogicalName = 'dbo Empresas'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 264
    Top = 336
  end
  object dsEstacion: TDADataSource
    DataSet = cdsEmpresa.Dataset
    DataTable = cdsEmpresa
    Left = 264
    Top = 368
  end
  object cdsProductoPrecio: TDACDSDataTable
    Fields = <
      item
        Name = 'ProductoID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Precio'
        DataType = datFloat
        Required = True
      end>
    LogChanges = False
    LogicalName = 'dbo ProductoPrecio'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    AfterDelete = cdsCatalogoAfterPost
    AfterPost = cdsCatalogoAfterPost
    IndexDefs = <>
    Left = 376
    Top = 336
  end
  object dsCategoria: TDADataSource
    DataSet = cdsCategoria.Dataset
    DataTable = cdsCategoria
    Left = 576
    Top = 56
  end
  object cdsCategoria: TDACDSDataTable
    Fields = <
      item
        Name = 'CategoriaID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
      end>
    LogicalName = 'dbo Categoria'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 544
    Top = 56
  end
end
