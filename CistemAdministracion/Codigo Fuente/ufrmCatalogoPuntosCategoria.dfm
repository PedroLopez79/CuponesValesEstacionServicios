inherited frmCatalogoPuntosCategoria: TfrmCatalogoPuntosCategoria
  Caption = 'frmCatalogoPuntosCategoria'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    ActivePage = cxTabSheet2
    inherited cxTabSheet1: TcxTabSheet
      inherited dbgCatalogo: TcxGrid
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          object dbgCatalogoDBTableView1PuntosCategoriaID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'PuntosCategoriaID'
          end
          object dbgCatalogoDBTableView1Codigo: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo'
            Width = 58
          end
          object dbgCatalogoDBTableView1Descripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
          end
          object dbgCatalogoDBTableView1FechaIni: TcxGridDBColumn
            DataBinding.FieldName = 'FechaIni'
          end
          object dbgCatalogoDBTableView1FechaFin: TcxGridDBColumn
            DataBinding.FieldName = 'FechaFin'
          end
          object dbgCatalogoDBTableView1Factor: TcxGridDBColumn
            DataBinding.FieldName = 'Factor'
          end
          object dbgCatalogoDBTableView1FactorNacimiento: TcxGridDBColumn
            Caption = 'Factor Cumplea'#241'os'
            DataBinding.FieldName = 'FactorNacimiento'
            Width = 124
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 616
      ExplicitHeight = 416
      object cxGroupBox1: TcxGroupBox
        Left = 16
        Top = 16
        Caption = 'Datos'
        TabOrder = 0
        Height = 313
        Width = 505
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 16
          Top = 48
          DataBinding.DataField = 'PuntosCategoriaID'
          DataBinding.DataSource = dsCatalogo
          Enabled = False
          TabOrder = 6
          Width = 65
        end
        object cxLabel1: TcxLabel
          Left = 16
          Top = 32
          Caption = 'ID'
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 16
          Top = 72
          Caption = 'Codigo'
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 16
          Top = 88
          DataBinding.DataField = 'Codigo'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 65
        end
        object cxLabel3: TcxLabel
          Left = 16
          Top = 112
          Caption = 'Descripcion'
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 16
          Top = 128
          DataBinding.DataField = 'Descripcion'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 361
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 16
          Top = 168
          DataBinding.DataField = 'FechaIni'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 2
          Width = 97
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 128
          Top = 168
          DataBinding.DataField = 'FechaFin'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 3
          Width = 97
        end
        object cxLabel4: TcxLabel
          Left = 16
          Top = 152
          Caption = 'Fecha Inicio'
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 128
          Top = 152
          Caption = 'Fecha Final'
          Transparent = True
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 16
          Top = 216
          DataBinding.DataField = 'Factor'
          DataBinding.DataSource = dsCatalogo
          Properties.DisplayFormat = ',0.00;(,0.00)'
          TabOrder = 4
          Width = 97
        end
        object cxLabel6: TcxLabel
          Left = 16
          Top = 200
          Caption = 'Factor Fecha'
          Transparent = True
        end
        object cxLabel7: TcxLabel
          Left = 128
          Top = 200
          Caption = 'Factor Cumplea'#241'os'
          Transparent = True
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 128
          Top = 216
          DataBinding.DataField = 'FactorNacimiento'
          DataBinding.DataSource = dsCatalogo
          Properties.DisplayFormat = ',0.00;(,0.00)'
          TabOrder = 5
          Width = 97
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'PuntosCategoriaID'
        DataType = datInteger
      end
      item
        Name = 'Codigo'
        DataType = datString
        Size = 5
      end
      item
        Name = 'Descripcion'
        DataType = datString
        Size = 50
      end
      item
        Name = 'FechaIni'
        DataType = datDateTime
      end
      item
        Name = 'FechaFin'
        DataType = datDateTime
      end
      item
        Name = 'Factor'
        DataType = datFloat
        Alignment = taRightJustify
      end
      item
        Name = 'FactorNacimiento'
        DataType = datFloat
        Alignment = taRightJustify
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsCatalogoBeforePost
    OnNewRecord = cdsCatalogoNewRecord
    LogicalName = 'dbo PuntosCategoria'
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
  end
end
