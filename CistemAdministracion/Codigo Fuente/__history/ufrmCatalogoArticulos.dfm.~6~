inherited frmCatalogoArticulos: TfrmCatalogoArticulos
  Caption = 'frmCatalogoArticulos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    Properties.ActivePage = cxTabSheet2
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 616
      ExplicitHeight = 416
      inherited dbgCatalogo: TcxGrid
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          object dbgCatalogoDBTableView1ArticuloID: TcxGridDBColumn
            DataBinding.FieldName = 'ArticuloID'
            Width = 70
          end
          object dbgCatalogoDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Width = 156
          end
          object dbgCatalogoDBTableView1Costo: TcxGridDBColumn
            DataBinding.FieldName = 'Costo'
            Width = 104
          end
          object dbgCatalogoDBTableView1Puntos: TcxGridDBColumn
            DataBinding.FieldName = 'Puntos'
            Width = 117
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
        Left = 24
        Top = 24
        Hint = ''
        Caption = 'Datos'
        TabOrder = 0
        Height = 209
        Width = 249
        object LblNombre: TcxLabel
          Left = 21
          Top = 21
          Hint = ''
          Caption = 'Nombre'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 21
          Top = 42
          Hint = ''
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 1
          Width = 212
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 21
          Top = 98
          Hint = ''
          DataBinding.DataField = 'Costo'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 2
          Width = 212
        end
        object cxLabel1: TcxLabel
          Left = 21
          Top = 79
          Hint = ''
          Caption = 'Costo'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 20
          Top = 154
          Hint = ''
          DataBinding.DataField = 'Puntos'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 4
          Width = 212
        end
        object cxLabel2: TcxLabel
          Left = 20
          Top = 133
          Hint = ''
          Caption = 'Puntos'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'ArticuloID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Costo'
        DataType = datFloat
      end
      item
        Name = 'Puntos'
        DataType = datInteger
      end>
    LogicalName = 'dbo Articulos'
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsCatalogoNewRecord
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
  end
end
