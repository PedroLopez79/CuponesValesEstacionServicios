inherited FrmCatalogoCuentaBancaria: TFrmCatalogoCuentaBancaria
  Caption = 'FrmCatalogoCuentaBancaria'
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
          object dbgCatalogoDBTableView1CuentaBancariaID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'CuentaBancariaID'
          end
          object dbgCatalogoDBTableView1Cuenta: TcxGridDBColumn
            DataBinding.FieldName = 'Cuenta'
            Width = 150
          end
          object dbgCatalogoDBTableView1BancoID: TcxGridDBColumn
            DataBinding.FieldName = 'BancoID'
            Width = 130
          end
          object dbgCatalogoDBTableView1CuentaContable: TcxGridDBColumn
            DataBinding.FieldName = 'CuentaContable'
            Width = 130
          end
          object dbgCatalogoDBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'EstacionID'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 616
      ExplicitHeight = 415
      object cxGroupBox1: TcxGroupBox
        Left = 16
        Top = 16
        Caption = ' Cuenta Bancaria '
        Style.BorderStyle = ebsUltraFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 169
        Width = 417
        object cxLabel1: TcxLabel
          Left = 17
          Top = 28
          Caption = 'ID'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 65
          Top = 28
          Caption = 'Cuenta'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object dbID: TcxDBTextEdit
          Left = 17
          Top = 44
          DataBinding.DataField = 'CuentaBancariaID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 1
          Width = 41
        end
        object dbCuenta: TcxDBTextEdit
          Left = 65
          Top = 44
          DataBinding.DataField = 'Cuenta'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 20
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 2
          Width = 282
        end
        object dbBanco: TcxDBLookupComboBox
          Left = 17
          Top = 91
          DataBinding.DataField = 'BancoID'
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'BancoID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsBanco
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 4
          Width = 168
        end
        object dbCuentaContable: TcxDBTextEdit
          Left = 17
          Top = 136
          DataBinding.DataField = 'CuentaContable'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 20
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 6
          Width = 121
        end
        object cxLabel3: TcxLabel
          Left = 17
          Top = 120
          Caption = 'Cuenta Contable'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 17
          Top = 75
          Caption = 'Banco'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object dbDlls: TcxDBCheckBox
          Left = 361
          Top = 44
          Caption = 'Dlls'
          DataBinding.DataField = 'Dlls'
          DataBinding.DataSource = dsCatalogo
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 3
          Transparent = True
          Width = 41
        end
        object cxLabel5: TcxLabel
          Left = 191
          Top = 75
          Caption = 'Estaci'#243'n'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object dbEstacion: TcxDBLookupComboBox
          Left = 191
          Top = 91
          DataBinding.DataField = 'EstacionID'
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'EstacionID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsEstacion
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 5
          Width = 156
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'CuentaBancariaID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Cuenta'
        DataType = datString
        Size = 20
        Required = True
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
        Required = True
      end
      item
        Name = 'Dlls'
        DataType = datBoolean
      end
      item
        Name = 'BancoID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsCatalogoNewRecord
    LogicalName = 'dbo CuentaBancaria'
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
  end
  object cdsBanco: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'BancoID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
        Required = True
      end
      item
        Name = 'Ejecutivo'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Telefono'
        DataType = datString
        Size = 20
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'dbo Banco'
    IndexDefs = <>
    Left = 464
    Top = 336
  end
  object dsBanco: TDADataSource
    DataSet = cdsBanco.Dataset
    DataTable = cdsBanco
    Left = 464
    Top = 368
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
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'dbo Estacion'
    IndexDefs = <>
    Left = 432
    Top = 336
  end
  object dsEstacion: TDADataSource
    DataSet = cdsEstacion.Dataset
    DataTable = cdsEstacion
    Left = 432
    Top = 368
  end
end
