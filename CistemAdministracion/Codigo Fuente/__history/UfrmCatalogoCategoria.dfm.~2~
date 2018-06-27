inherited frmCatalogoCategoria: TfrmCatalogoCategoria
  Caption = 'frmCatalogoCategoria'
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
          object dbgCatalogoDBTableView1CategoriaID: TcxGridDBColumn
            DataBinding.FieldName = 'CategoriaID'
          end
          object dbgCatalogoDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
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
        Left = 18
        Top = 14
        Hint = ''
        Caption = ' Datos '
        Style.BorderStyle = ebsUltraFlat
        Style.LookAndFeel.Kind = lfUltraFlat
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 163
        Width = 361
        object TxtId: TcxDBTextEdit
          Left = 34
          Top = 50
          Hint = ''
          DataBinding.DataField = 'CategoriaID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 79
        end
        object TxtCategoria: TcxDBTextEdit
          Left = 34
          Top = 101
          Hint = ''
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 30
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 303
        end
        object LblId: TcxLabel
          Left = 34
          Top = 32
          Hint = ''
          Caption = 'ID'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
        end
        object LblCategoria: TcxLabel
          Left = 34
          Top = 83
          Hint = ''
          Caption = 'Categoria'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
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
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsCatalogoBeforePost
    OnNewRecord = cdsCatalogoNewRecord
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 536
    Top = 336
  end
end
