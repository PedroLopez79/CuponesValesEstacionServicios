inherited frmPCatalogoClub: TfrmPCatalogoClub
  Left = 0
  Top = 0
  Caption = 'frmPCatalogoClub'
  ClientHeight = 450
  ClientWidth = 664
  Font.Name = 'Tahoma'
  OldCreateOrder = False
  ExplicitWidth = 664
  ExplicitHeight = 450
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    Width = 664
    Height = 450
    ActivePage = cxTabSheet2
    ExplicitWidth = 664
    ExplicitHeight = 450
    ClientRectBottom = 420
    ClientRectRight = 658
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 655
      ExplicitHeight = 417
      inherited dbgCatalogo: TcxGrid
        Width = 655
        Height = 417
        ExplicitWidth = 655
        ExplicitHeight = 417
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnSorting = False
          OptionsView.GroupByBox = False
          object dbgCatalogoDBTableView1RecID: TcxGridDBColumn
            DataBinding.FieldName = 'RecID'
            Visible = False
          end
          object dbgCatalogoDBTableView1PuntosClubID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'PuntosClubID'
            Width = 52
          end
          object dbgCatalogoDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Width = 170
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 655
      ExplicitHeight = 417
      object cxGroupBox1: TcxGroupBox
        Left = 16
        Top = 16
        Caption = ' Datos'
        TabOrder = 0
        Height = 97
        Width = 281
        object cxLabel1: TcxLabel
          Left = 16
          Top = 52
          Caption = 'Nombre'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 64
          Top = 24
          DataBinding.DataField = 'PuntosClubID'
          DataBinding.DataSource = dsCatalogo
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 1
          Width = 58
        end
        object cxLabel3: TcxLabel
          Left = 16
          Top = 25
          Caption = 'ID'
          Transparent = True
        end
        object edtNombre: TcxDBTextEdit
          Left = 64
          Top = 51
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 202
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'PuntosClubID'
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
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsCatalogoNewRecord
    LogicalName = 'dbo PuntosClub'
    Left = 560
    Top = 208
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
    Left = 560
    Top = 240
  end
end
