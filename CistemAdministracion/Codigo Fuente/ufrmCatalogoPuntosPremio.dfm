inherited frmCatalogoPuntosPremio: TfrmCatalogoPuntosPremio
  Caption = 'frmCatalogoPuntosPremio'
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
          OptionsView.GroupByBox = False
          object dbgCatalogoDBTableView1PuntosPremioID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'PuntosPremioID'
          end
          object dbgCatalogoDBTableView1Codigo: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo'
            Width = 72
          end
          object dbgCatalogoDBTableView1Descripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Width = 381
          end
          object dbgCatalogoDBTableView1Puntos: TcxGridDBColumn
            DataBinding.FieldName = 'Puntos'
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
        Hint = ''
        Caption = 'Datos'
        TabOrder = 0
        Height = 257
        Width = 505
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 16
          Top = 45
          Hint = ''
          DataBinding.DataField = 'PuntosPremioID'
          DataBinding.DataSource = dsCatalogo
          Enabled = False
          TabOrder = 2
          Width = 65
        end
        object cxLabel1: TcxLabel
          Left = 16
          Top = 29
          Hint = ''
          Caption = 'ID'
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 16
          Top = 72
          Hint = ''
          Caption = 'Codigo'
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 16
          Top = 88
          Hint = ''
          DataBinding.DataField = 'Codigo'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 65
        end
        object cxLabel3: TcxLabel
          Left = 16
          Top = 115
          Hint = ''
          Caption = 'Descripcion'
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 16
          Top = 130
          Hint = ''
          DataBinding.DataField = 'Descripcion'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 361
        end
        object cxLabel4: TcxLabel
          Left = 16
          Top = 199
          Hint = ''
          Caption = 'Puntos'
          Transparent = True
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 16
          Top = 212
          Hint = ''
          DataBinding.DataField = 'Puntos'
          DataBinding.DataSource = dsCatalogo
          Properties.DisplayFormat = ',0.00;(,0.00)'
          TabOrder = 7
          Width = 121
        end
        object comboZona: TcxDBLookupComboBox
          Left = 16
          Top = 172
          Hint = ''
          DataBinding.DataField = 'AgrupacionEstacionID'
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'AgrupacionEstacionID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsAgrupacionEstacion
          TabOrder = 8
          Width = 200
        end
        object cxLabel5: TcxLabel
          Left = 16
          Top = 157
          Hint = ''
          Caption = 'Zona'
          Transparent = True
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'PuntosPremioID'
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
        Size = 80
      end
      item
        Name = 'Puntos'
        DataType = datFloat
      end
      item
        Name = 'AgrupacionEstacionID'
        DataType = datInteger
      end>
    LogicalName = 'dbo PuntosPremio'
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsCatalogoBeforePost
    OnNewRecord = cdsCatalogoNewRecord
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
    Top = 344
  end
  object cdsAgrupacionEstacion: TDAMemDataTable
    Fields = <
      item
        Name = 'AgrupacionEstacionID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
        Required = True
      end>
    LogicalName = 'dbo AgrupacionEstacion'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    AfterDelete = cdsCatalogoAfterPost
    AfterPost = cdsCatalogoAfterPost
    BeforePost = cdsCatalogoBeforePost
    OnNewRecord = cdsCatalogoNewRecord
    IndexDefs = <>
    Left = 464
    Top = 312
  end
  object dsAgrupacionEstacion: TDADataSource
    DataSet = cdsAgrupacionEstacion.Dataset
    OnStateChange = dsCatalogoStateChange
    DataTable = cdsAgrupacionEstacion
    Left = 464
    Top = 344
  end
end