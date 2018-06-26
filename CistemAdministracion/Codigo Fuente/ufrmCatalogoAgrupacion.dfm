inherited frmCatalogo1: TfrmCatalogo1
  Caption = 'frmCatalogoAgrupacion'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    inherited cxTabSheet1: TcxTabSheet
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitWidth = 625
      ExplicitHeight = 424
      object GrpBoxAgrupaciones: TcxGroupBox
        Left = 248
        Top = 40
        Caption = '  Agrupaciones '
        TabOrder = 0
        Height = 289
        Width = 281
        object TxtAgrupacion: TcxDBTextEdit
          Left = 16
          Top = 48
          TabOrder = 0
          Width = 193
        end
        object LblAgrupacion: TcxLabel
          Left = 16
          Top = 32
          Caption = 'Agrupaci'#243'n '
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LookupCmBoxProducto1: TcxDBLookupComboBox
          Left = 16
          Top = 208
          Properties.ListColumns = <>
          TabOrder = 2
          Width = 145
        end
        object LookupCmBoxProducto2: TcxDBLookupComboBox
          Left = 16
          Top = 256
          Properties.ListColumns = <>
          TabOrder = 3
          Width = 145
        end
        object LblProducto1: TcxLabel
          Left = 16
          Top = 193
          Caption = 'Producto 1'
          Style.BorderStyle = ebsNone
        end
        object LblProducto2: TcxLabel
          Left = 16
          Top = 241
          Caption = 'Producto 2'
          Style.BorderStyle = ebsNone
        end
        object LblEstacion: TcxLabel
          Left = 16
          Top = 86
          Caption = 'Estaci'#243'n'
          Style.BorderStyle = ebsNone
        end
        object LblBomba: TcxLabel
          Left = 16
          Top = 135
          Caption = 'Bomba'
          Style.BorderStyle = ebsNone
        end
        object LookupCmBoxEstacion: TcxDBLookupComboBox
          Left = 16
          Top = 102
          Properties.ListColumns = <>
          TabOrder = 8
          Width = 145
        end
        object LookupCmBoxBomba: TcxDBLookupComboBox
          Left = 16
          Top = 151
          Properties.ListColumns = <>
          TabOrder = 9
          Width = 145
        end
      end
      object TreeViewBombas: TdxDBTreeView
        Left = 0
        Top = 0
        Width = 217
        Height = 424
        ShowNodeHint = True
        RootValue = Null
        SeparatedSt = ' - '
        RaiseOnError = True
        Indent = 19
        Align = alLeft
        ParentColor = False
        Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
        SelectedIndex = -1
        TabOrder = 1
      end
    end
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
  end
end
