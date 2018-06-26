inherited frmTipoMantenimiento: TfrmTipoMantenimiento
  Caption = 'frmTipoMantenimiento'
  ClientHeight = 394
  ExplicitHeight = 394
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    Height = 394
    ExplicitHeight = 394
    ClientRectBottom = 364
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 616
      ExplicitHeight = 361
      inherited dbgCatalogo: TcxGrid
        Height = 361
        ExplicitHeight = 361
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          object dbgCatalogoDBTableView1RecID: TcxGridDBColumn
            DataBinding.FieldName = 'RecID'
            Visible = False
          end
          object dbgCatalogoDBTableView1IDTIPOMANTENIMIENTO: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'IDTIPOMANTENIMIENTO'
          end
          object dbgCatalogoDBTableView1CONCEPTO: TcxGridDBColumn
            DataBinding.FieldName = 'CONCEPTO'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 616
      ExplicitHeight = 361
      object GrpBoxDatos: TcxGroupBox
        Left = 3
        Top = 3
        Hint = ''
        Caption = ' Datos '
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 0
        Height = 166
        Width = 617
        object LblID: TcxLabel
          Left = 21
          Top = 30
          Hint = ''
          Caption = 'Id Tipo Mantenimiento'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCalle: TcxLabel
          Left = 21
          Top = 77
          Hint = ''
          Caption = 'Concepto'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object txtId: TcxDBTextEdit
          Left = 21
          Top = 47
          Hint = ''
          DataBinding.DataField = 'IDTIPOMANTENIMIENTO'
          DataBinding.DataSource = dsCatalogo
          Enabled = False
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 0
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 0
          Width = 100
        end
        object edtConcepto: TcxDBTextEdit
          Left = 21
          Top = 92
          Hint = ''
          DataBinding.DataField = 'CONCEPTO'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 3
          Width = 422
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'IDTIPOMANTENIMIENTO'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'CONCEPTO'
        DataType = datString
        Size = 100
      end>
    LogicalName = 'dbo.TIPOMANTENIMIENTO'
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsCatalogoNewRecord
    Left = 488
    Top = 176
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
    Left = 488
    Top = 224
  end
  inherited tblCatalogo: TdxMemData
    Left = 552
    Top = 176
  end
end
