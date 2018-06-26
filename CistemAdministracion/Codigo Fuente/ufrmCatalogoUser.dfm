inherited frmCatalogoUser: TfrmCatalogoUser
  Caption = 'frmCatalogoUser'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    inherited cxTabSheet1: TcxTabSheet
      inherited dbgCatalogo: TcxGrid
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          object dbgCatalogoDBTableView1UsuarioID: TcxGridDBColumn
            DataBinding.FieldName = 'UsuarioID'
          end
          object dbgCatalogoDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
          end
          object dbgCatalogoDBTableView1Usuario: TcxGridDBColumn
            DataBinding.FieldName = 'Usuario'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitWidth = 625
      ExplicitHeight = 424
      object cxGroupBox1: TcxGroupBox
        Left = 16
        Top = 32
        Caption = ' Tipo de Cambio '
        TabOrder = 0
        Height = 129
        Width = 305
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 24
          Top = 83
          TabOrder = 0
          Width = 81
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 24
          Top = 41
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'EstacionID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsEstacion
          TabOrder = 1
          Width = 217
        end
        object cxLabel1: TcxLabel
          Left = 24
          Top = 24
          Caption = 'Estaci'#243'n'
          Style.BorderStyle = ebsNone
        end
        object cxLabel2: TcxLabel
          Left = 24
          Top = 68
          Caption = 'Tipo de Cambio'
          Style.BorderStyle = ebsNone
        end
      end
    end
  end
  inherited cdsCatalogo: TDACDSDataTable
    Fields = <
      item
        Name = 'UsuarioID'
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
        Name = 'Usuario'
        DataType = datString
        Size = 15
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
        Name = 'Clave'
        DataType = datString
        Size = 8
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsCatalogoBeforePost
    OnNewRecord = cdsCatalogoNewRecord
    LogicalName = 'dbo Usuario'
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
    Left = 464
    Top = 336
  end
  object dsEstacion: TDADataSource
    DataSet = cdsEstacion.Dataset
    DataTable = cdsEstacion
    Left = 464
    Top = 368
  end
end
