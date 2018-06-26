inherited frmCatalogoBanco: TfrmCatalogoBanco
  Caption = 'frmCatalogoBanco'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    inherited cxTabSheet1: TcxTabSheet
      inherited dbgCatalogo: TcxGrid
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          object dbgCatalogoDBTableView1BancoID: TcxGridDBColumn
            DataBinding.FieldName = 'BancoID'
          end
          object dbgCatalogoDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
          end
          object dbgCatalogoDBTableView1Ejecutivo: TcxGridDBColumn
            DataBinding.FieldName = 'Ejecutivo'
          end
          object dbgCatalogoDBTableView1Telefono: TcxGridDBColumn
            DataBinding.FieldName = 'Telefono'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitWidth = 625
      ExplicitHeight = 424
      object grBanco: TcxGroupBox
        Left = 16
        Top = 16
        Caption = ' Banco '
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 193
        Width = 345
        object lblID: TcxLabel
          Left = 24
          Top = 30
          Caption = 'ID'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object lblBanco: TcxLabel
          Left = 112
          Top = 30
          Caption = 'Banco'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object dbID: TcxDBTextEdit
          Left = 24
          Top = 47
          DataBinding.DataField = 'BancoID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 82
        end
        object dbBanco: TcxDBTextEdit
          Left = 112
          Top = 47
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 201
        end
        object dbEjecutivo: TcxDBTextEdit
          Left = 24
          Top = 95
          DataBinding.DataField = 'Ejecutivo'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 289
        end
        object dbTelefono: TcxDBTextEdit
          Left = 24
          Top = 144
          DataBinding.DataField = 'Telefono'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 289
        end
        object lblEjecutivo: TcxLabel
          Left = 24
          Top = 78
          Caption = 'Ejecutivo'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object lblTelefono: TcxLabel
          Left = 24
          Top = 127
          Caption = 'Telefono'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
      end
    end
  end
  inherited cdsCatalogo: TDACDSDataTable
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
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsCatalogoBeforePost
    OnNewRecord = cdsCatalogoNewRecord
    LogicalName = 'dbo Banco'
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
  end
end
