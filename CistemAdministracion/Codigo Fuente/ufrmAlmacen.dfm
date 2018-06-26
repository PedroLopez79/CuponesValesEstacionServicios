inherited frmAlmacen: TfrmAlmacen
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    inherited cxTabSheet1: TcxTabSheet
      inherited dbgCatalogo: TcxGrid
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          object dbgCatalogoDBTableView1AlmacenID: TcxGridDBColumn
            DataBinding.FieldName = 'AlmacenID'
          end
          object dbgCatalogoDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
          end
          object dbgCatalogoDBTableView1Compras: TcxGridDBColumn
            DataBinding.FieldName = 'Compras'
            Width = 58
          end
          object dbgCatalogoDBTableView1EstacionID: TcxGridDBColumn
            Caption = 'Estacion'
            DataBinding.FieldName = 'EstacionID'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitWidth = 625
      ExplicitHeight = 424
      object cxGroupBox1: TcxGroupBox
        Left = 5
        Top = 0
        Caption = '  Almacen  '
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 0
        Height = 121
        Width = 388
        object txtAlmacen: TcxDBTextEdit
          Left = 16
          Top = 48
          DataBinding.DataField = 'AlmacenID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 0
          Width = 57
        end
        object LblNoEstacion: TcxLabel
          Left = 16
          Top = 31
          Caption = 'Almacen'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 79
          Top = 92
          Caption = '  Acepta Compras'
          DataBinding.DataField = 'Compras'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 2
          Width = 113
        end
        object cxLabel1: TcxLabel
          Left = 16
          Top = 75
          Caption = 'Estacion'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 16
          Top = 92
          DataBinding.DataField = 'EstacionID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = False
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 4
          Width = 57
        end
      end
      object txtNombre: TcxDBTextEdit
        Left = 84
        Top = 48
        DataBinding.DataField = 'Nombre'
        DataBinding.DataSource = dsCatalogo
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = False
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 1
        Width = 293
      end
      object cxLabel2: TcxLabel
        Left = 84
        Top = 31
        Caption = 'Nombre'
        Style.BorderStyle = ebsNone
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Transparent = True
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'AlmacenID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
      end
      item
        Name = 'Compras'
        DataType = datBoolean
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsCatalogoBeforePost
    OnNewRecord = cdsCatalogoNewRecord
    LogicalName = 'dbo Almacen2'
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
  end
end
