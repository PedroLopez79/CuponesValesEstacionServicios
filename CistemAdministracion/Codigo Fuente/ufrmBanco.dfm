inherited frmBanco: TfrmBanco
  Caption = 'frmBanco'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    ActivePage = cxTabSheet2
    inherited cxTabSheet1: TcxTabSheet
      ExplicitWidth = 616
      inherited dbgCatalogo: TcxGrid
        ExplicitWidth = 616
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
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 616
      ExplicitHeight = 415
      object cxGroupBox1: TcxGroupBox
        Left = 15
        Top = 10
        Caption = ' Datos '
        Style.BorderStyle = ebsUltraFlat
        Style.LookAndFeel.NativeStyle = False
        Style.TransparentBorder = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 182
        Width = 377
        object dbBancoID: TcxDBTextEdit
          Left = 16
          Top = 48
          DataBinding.DataField = 'BancoID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 5
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Width = 65
        end
        object dbNombre: TcxDBTextEdit
          Left = 87
          Top = 48
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 50
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Width = 250
        end
        object dbEjecutivo: TcxDBTextEdit
          Left = 16
          Top = 94
          DataBinding.DataField = 'Ejecutivo'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 50
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Width = 321
        end
        object dbTelefono: TcxDBTextEdit
          Left = 16
          Top = 144
          DataBinding.DataField = 'Telefono'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 20
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Width = 121
        end
        object cxLabel1: TcxLabel
          Left = 16
          Top = 32
          Caption = 'Banco ID'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 87
          Top = 32
          Caption = 'Nombre'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 18
          Top = 78
          Caption = 'Ejecutivo'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 16
          Top = 128
          Caption = 'Telefono'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
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
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsCatalogoBeforePost
    OnNewRecord = cdsCatalogoNewRecord
    LogicalName = 'dbo Banco'
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
  end
end
