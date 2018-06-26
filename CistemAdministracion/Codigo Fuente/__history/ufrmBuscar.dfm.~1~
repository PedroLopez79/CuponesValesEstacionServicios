object frmBuscar: TfrmBuscar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'B'#250'squeda'
  ClientHeight = 417
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 619
    Height = 24
    BarManager = frmPrincipal.dxBarManager1
    ColorSchemeName = 'Blue'
    ShowTabHeaders = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
  end
  object pgcBuscar: TcxPageControl
    Left = 0
    Top = 24
    Width = 619
    Height = 393
    ActivePage = tsBuscar
    Align = alClient
    Images = dmImages.Imagenes
    TabOrder = 1
    TabPosition = tpBottom
    ClientRectBottom = 363
    ClientRectLeft = 3
    ClientRectRight = 613
    ClientRectTop = 3
    object tsBuscar: TcxTabSheet
      Caption = 'Buscar'
      ImageIndex = 0
      object dbgBuscar: TcxGrid
        Left = 0
        Top = 66
        Width = 610
        Height = 294
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        object dbgBuscarDBTableView2: TcxGridDBTableView
          OnDblClick = dbgBuscarDBTableView2DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsBuscar
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Haga click aqu'#237' para filtrar los datos'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsBehavior.IncSearch = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Indicator = True
        end
        object dbgBuscarLevel2: TcxGridLevel
          GridView = dbgBuscarDBTableView2
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 1
        Height = 66
        Width = 610
        object edtBusqueda: TcxTextEdit
          Left = 72
          Top = 32
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 100
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 0
          OnExit = edtBusquedaExit
          OnKeyDown = edtBusquedaKeyDown
          Width = 415
        end
        object cxLabel1: TcxLabel
          Left = 16
          Top = 32
          Caption = 'Busqueda'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
      end
    end
    object tsAgregar: TcxTabSheet
      Caption = 'Agregar'
      ImageIndex = 58
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object cdsBuscar: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    IndexDefs = <>
    Left = 512
    Top = 264
  end
  object dsBuscar: TDADataSource
    DataSet = cdsBuscar.Dataset
    DataTable = cdsBuscar
    Left = 512
    Top = 304
  end
end
