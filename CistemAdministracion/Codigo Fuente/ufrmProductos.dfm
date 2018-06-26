inherited frmProductos: TfrmProductos
  Caption = 'frmProductos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    ActivePage = cxTabSheet1
    inherited cxTabSheet1: TcxTabSheet
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
          object dbgCatalogoDBTableView1Barras: TcxGridDBColumn
            DataBinding.FieldName = 'Barras'
          end
          object dbgCatalogoDBTableView1PrecioVenta: TcxGridDBColumn
            DataBinding.FieldName = 'PrecioVenta'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitWidth = 625
      ExplicitHeight = 424
      object GrpBoxDatos: TcxGroupBox
        Left = 5
        Top = 0
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 329
        Width = 614
        object LblNoProducto: TcxLabel
          Left = 18
          Top = 23
          Caption = 'Producto'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object TxtNoProducto: TcxDBTextEdit
          Left = 18
          Top = 40
          TabStop = False
          DataBinding.DataField = 'ProductoID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = False
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 97
        end
        object cxLabel2: TcxLabel
          Left = -64
          Top = 560
          Caption = 'cxLabel1'
        end
        object LblNombre: TcxLabel
          Left = 121
          Top = 23
          Caption = 'Nombre'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCategoria: TcxLabel
          Left = 313
          Top = 64
          Caption = 'Categoria'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblPrecio: TcxLabel
          Left = 16
          Top = 147
          Caption = 'Precio Venta'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblClavePemex: TcxLabel
          Left = 18
          Top = 107
          Caption = 'Clave Pemex'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object TxtNombre: TcxDBTextEdit
          Left = 121
          Top = 40
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 412
        end
        object TxtPrecio: TcxDBTextEdit
          Left = 18
          Top = 163
          DataBinding.DataField = 'PrecioVenta'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 165
        end
        object TxtClavePemex: TcxDBTextEdit
          Left = 18
          Top = 123
          DataBinding.DataField = 'ClavePemex'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 165
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 18
          Top = 243
          Caption = 'Producto Activo'
          DataBinding.DataField = 'Status'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 10
          Width = 121
        end
        object TxtCodigoBarras: TcxDBTextEdit
          Left = 121
          Top = 80
          DataBinding.DataField = 'Barras'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 186
        end
        object LblCodigoBarras: TcxLabel
          Left = 121
          Top = 66
          Caption = 'Codigo de Barras'
          Style.BorderStyle = ebsNone
          Style.TransparentBorder = False
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 191
          Top = 163
          DataBinding.DataField = 'Costo'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 7
          Width = 169
        end
        object LblPrecioCompra: TcxLabel
          Left = 189
          Top = 147
          Caption = 'Costo'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCuentaContableCompra: TcxLabel
          Left = 16
          Top = 190
          Caption = 'Cuenta Contable Compra'
          Style.BorderStyle = ebsNone
        end
        object TxtCuentaContableCompra: TcxDBTextEdit
          Left = 18
          Top = 207
          DataBinding.DataField = 'CuentaContableCompra'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.Shadow = False
          TabOrder = 8
          Width = 169
        end
        object TxtCuentaContableVenta: TcxDBTextEdit
          Left = 191
          Top = 207
          DataBinding.DataField = 'CuentaContableVenta'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 9
          Width = 169
        end
        object cxLabel1: TcxLabel
          Left = 191
          Top = 190
          Caption = 'Cuenta Contable Venta'
          Style.BorderStyle = ebsNone
        end
        object LookUpCmboxNombre: TcxDBLookupComboBox
          Left = 313
          Top = 80
          DataBinding.DataField = 'CategoriaID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'CategoriaID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsCategoria
          TabOrder = 4
          Width = 220
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 18
          Top = 80
          DataBinding.DataField = 'Codigo'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 97
        end
        object cxLabel3: TcxLabel
          Left = 18
          Top = 66
          Caption = 'C'#243'digo'
          Style.BorderStyle = ebsNone
          Style.TransparentBorder = False
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 18
          Top = 270
          Caption = 'Inventariable?'
          DataBinding.DataField = 'Inventariable'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 11
          Width = 121
        end
      end
    end
  end
  inherited cdsCatalogo: TDACDSDataTable
    Fields = <
      item
        Name = 'ProductoID'
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
        Name = 'Codigo'
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
        Name = 'Nombre'
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
        Name = 'PrecioVenta'
        DataType = datFloat
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        Alignment = taRightJustify
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
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Costo'
        DataType = datFloat
        BlobType = dabtUnknown
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        Alignment = taRightJustify
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
        Name = 'Barras'
        DataType = datString
        Size = 50
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'CuentaContableCompra'
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
        Name = 'CuentaContableVenta'
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
        Name = 'Inventariable'
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
        Name = 'CostoPromedio'
        DataType = datFloat
        BlobType = dabtUnknown
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        Alignment = taRightJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'CategoriaID'
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
    LogChanges = False
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsCatalogoNewRecord
    LogicalName = 'dbo Producto'
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
  end
  object cdsEstacion: TDACDSDataTable
    RemoteUpdatesOptions = []
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
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    ReadOnly = False
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'dbo Estacion'
    IndexDefs = <>
    Left = 264
    Top = 336
  end
  object dsEstacion: TDADataSource
    DataSet = cdsEstacion.Dataset
    DataTable = cdsEstacion
    Left = 264
    Top = 368
  end
  object cdsCategoria: TDACDSDataTable
    RemoteUpdatesOptions = []
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
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    ReadOnly = False
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'dbo Categoria'
    IndexDefs = <>
    Left = 544
    Top = 56
  end
  object dsCategoria: TDADataSource
    DataSet = cdsCategoria.Dataset
    DataTable = cdsCategoria
    Left = 576
    Top = 56
  end
  object cdsProductoPrecio: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'ProductoID'
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
        Name = 'Precio'
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
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterPost
    OnNewRecord = cdsCatalogoNewRecord
    ReadOnly = False
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'dbo ProductoPrecio'
    IndexDefs = <>
    Left = 408
    Top = 312
  end
end
