inherited frmConceptos: TfrmConceptos
  Caption = ''
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    inherited cxTabSheet1: TcxTabSheet
      inherited dbgCatalogo: TcxGrid
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          object dbgCatalogoDBTableView1ConceptoSalidaID: TcxGridDBColumn
            DataBinding.FieldName = 'ConceptoSalidaID'
            Width = 101
          end
          object dbgCatalogoDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
          end
          object dbgCatalogoDBTableView1AfectaInventario: TcxGridDBColumn
            DataBinding.FieldName = 'AfectaInventario'
            Width = 94
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
        Caption = '  Concepto Salidas  '
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 0
        Height = 153
        Width = 388
        object txtAlmacen: TcxDBTextEdit
          Left = 16
          Top = 48
          DataBinding.DataField = 'ConceptoSalidaID'
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
          Caption = 'Concepto'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 16
          Top = 80
          Caption = 'Afecta inventario'
          DataBinding.DataField = 'AfectaInventario'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 2
          Width = 121
        end
        object txtNombre: TcxDBTextEdit
          Left = 79
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
          Left = 79
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
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'ConceptoSalidaID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 40
        Required = True
      end
      item
        Name = 'AfectaInventario'
        DataType = datBoolean
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsCatalogoNewRecord
    LogicalName = 'dbo ConceptoSalida'
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
  end
end
