inherited frmCuentaBancaria: TfrmCuentaBancaria
  Caption = 'frmCuentaBancaria'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    inherited cxTabSheet2: TcxTabSheet
      ExplicitWidth = 625
      ExplicitHeight = 424
      object grpDatos: TcxGroupBox
        Left = 15
        Top = 11
        Caption = 'Datos'
        TabOrder = 0
        Height = 145
        Width = 433
        object dbCuentaId: TcxDBTextEdit
          Left = 19
          Top = 48
          DataBinding.DataField = 'CuentaBancariaID'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 0
          Width = 85
        end
        object dbCuentaBancaria: TcxDBTextEdit
          Left = 120
          Top = 48
          DataBinding.DataField = 'Cuenta'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 1
          Width = 281
        end
        object dbCuentaContable: TcxDBTextEdit
          Left = 19
          Top = 96
          DataBinding.DataField = 'CuentaContable'
          DataBinding.DataSource = dsCatalogo
          Style.Shadow = True
          TabOrder = 2
          Width = 121
        end
        object dbBanco: TcxDBLookupComboBox
          Left = 146
          Top = 96
          DataBinding.DataField = 'BancoID'
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'BancoID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsBanco
          TabOrder = 3
          Width = 255
        end
        object cxLabel1: TcxLabel
          Left = 20
          Top = 32
          Caption = 'Cuenta ID'
          Style.BorderStyle = ebsNone
        end
        object cxLabel2: TcxLabel
          Left = 120
          Top = 32
          Caption = 'Cuenta Bancaria'
          Style.BorderStyle = ebsNone
        end
        object cxLabel3: TcxLabel
          Left = 19
          Top = 80
          Caption = 'Cuenta Contable'
          Style.BorderStyle = ebsNone
        end
        object cxLabel4: TcxLabel
          Left = 146
          Top = 80
          Caption = 'Banco'
          Style.BorderStyle = ebsNone
        end
      end
    end
  end
  inherited cdsCatalogo: TDACDSDataTable
    Fields = <
      item
        Name = 'CuentaBancariaID'
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
        Name = 'Cuenta'
        DataType = datString
        Size = 20
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
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'BancoID'
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
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsCatalogoNewRecord
    LogicalName = 'dbo CuentaBancaria'
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
  end
  object dsBanco: TDADataSource
    DataSet = cdsBanco.Dataset
    DataTable = cdsBanco
    Left = 568
    Top = 168
  end
  object cdsBanco: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'BancoID'
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
        Name = 'Ejecutivo'
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
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    ReadOnly = False
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'dbo Banco'
    IndexDefs = <>
    Left = 512
    Top = 168
  end
end
