object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Vales 1.0'
  ClientHeight = 680
  ClientWidth = 938
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TdxRibbonStatusBar
    Left = 0
    Top = 657
    Width = 938
    Height = 23
    Hint = ''
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        PanelStyle.ImageIndex = 35
        Width = 86
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        PanelStyle.ImageIndex = 36
        Width = 166
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        PanelStyle.ImageIndex = 15
        Width = 216
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Alignment = taCenter
        PanelStyle.ImageIndex = 41
        Width = 80
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.KeyboardStates = [dxksCapsLock, dxksNumLock, dxksInsert]
        PanelStyle.CapsLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'MAY'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'MAY'
        PanelStyle.NumLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'INS'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.ImageIndex = 40
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitTop = 583
    ExplicitWidth = 800
  end
  object pnlPrincipal: TcxGroupBox
    Left = 0
    Top = 155
    Hint = ''
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 1
    Height = 502
    Width = 938
  end
  object Ribbon: TdxRibbon
    Left = 0
    Top = 0
    Width = 938
    Height = 155
    Hint = ''
    ApplicationButton.Visible = False
    BarManager = dxBarManager1
    ColorSchemeAccent = rcsaBlue
    ColorSchemeName = 'Office2013DarkGray'
    PopupMenuItems = []
    QuickAccessToolbar.Toolbar = tbRapida
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 6
    TabStop = False
    object rtbAcciones: TdxRibbonTab
      Active = True
      Caption = 'Acciones'
      Groups = <
        item
          ToolbarName = 'tbAcciones'
        end>
      Index = 0
    end
    object RibbonTab5: TdxRibbonTab
      Caption = 'Registro Vales'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar4'
        end>
      Index = 1
    end
    object RibbonTab1: TdxRibbonTab
      Caption = 'Vales'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end
        item
          ToolbarName = 'dxBarManager1Bar2'
        end>
      Index = 2
    end
    object RibbonTab4: TdxRibbonTab
      Caption = 'Cobranza'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar3'
        end>
      Index = 3
    end
    object RibbonTab6: TdxRibbonTab
      Caption = 'Consulta'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar5'
        end>
      Index = 4
    end
    object dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Cat'#225'logos'
      Groups = <
        item
          ToolbarName = 'tbCatalogos'
        end>
      Index = 5
    end
    object RibbonTab2: TdxRibbonTab
      Caption = 'Reportes'
      Groups = <
        item
          ToolbarName = 'tbReportes'
        end>
      Index = 6
    end
    object RibbonTab3: TdxRibbonTab
      Caption = 'Configuracion'
      Groups = <
        item
          ToolbarName = 'tbConfigurar'
        end>
      Index = 7
    end
  end
  object BasicManager: TActionManager
    Left = 160
    Top = 276
    StyleName = 'XP Style'
    object EditCut2: TEditCut
      Category = 'Edit'
      Caption = 'Cortar'
      Enabled = False
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 4
      ShortCut = 16472
    end
    object EditCopy2: TEditCopy
      Category = 'Edit'
      Caption = 'Copiar'
      Enabled = False
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 6
      ShortCut = 16451
    end
    object EditPaste2: TEditPaste
      Category = 'Edit'
      Caption = 'Pegar'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 5
      ShortCut = 16470
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'PopupMenuPrincipal'
      'Movimientos'
      'Catalogos'
      'Configurar'
      'Reprotes'
      'Inventarios'
      'Acciones'
      'Cupones'
      'Cartera'
      'Puntos')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True
      True
      True
      True
      True)
    ImageOptions.Images = dmImages.MenuImages
    ImageOptions.LargeImages = dmImages.ToolBarImages3
    ImageOptions.UseLargeImagesForLargeIcons = True
    LookAndFeel.NativeStyle = False
    MenuAnimations = maFade
    PopupMenuLinks = <>
    Style = bmsXP
    UseSystemFont = True
    OnClickItem = dxBarManager1ClickItem
    Left = 160
    Top = 328
    DockControlHeights = (
      0
      0
      0
      0)
    object tbReportes: TdxBar
      Caption = 'Reportes'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 616
      FloatTop = 270
      FloatClientWidth = 74
      FloatClientHeight = 276
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnGenerales'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tbConfigurar: TdxBar
      Caption = 'Configurar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 811
      FloatTop = 8
      FloatClientWidth = 144
      FloatClientHeight = 189
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnReprotes'
        end
        item
          Visible = True
          ItemName = 'btnUsuarios'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tbRapida: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Rapida'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 811
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 82
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnLogin'
        end
        item
          Visible = True
          ItemName = 'btnLogout'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnConfiguracion'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnSalir'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRecentItems = False
      Visible = True
      WholeRow = False
    end
    object tbAcciones: TdxBar
      Caption = 'Acciones'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 811
      FloatTop = 8
      FloatClientWidth = 113
      FloatClientHeight = 409
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnNuevo'
        end
        item
          Visible = True
          ItemName = 'btnGuardar'
        end
        item
          Visible = True
          ItemName = 'btnCancelar'
        end
        item
          Visible = True
          ItemName = 'btnEliminar'
        end
        item
          Visible = True
          ItemName = 'btnImprimir'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnProcesar'
        end
        item
          Visible = True
          ItemName = 'btnProcesarVentas'
        end
        item
          Visible = True
          ItemName = 'btnCerrarLiquidacion'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnPrimer'
        end
        item
          Visible = True
          ItemName = 'btnAnteriior'
        end
        item
          Visible = True
          ItemName = 'btnActualizar'
        end
        item
          Visible = True
          ItemName = 'btnUltimo'
        end
        item
          Visible = True
          ItemName = 'btnSiguiente'
        end
        item
          Visible = True
          ItemName = 'btnBuscar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnCortar'
        end
        item
          Visible = True
          ItemName = 'btnCopiar'
        end
        item
          Visible = True
          ItemName = 'btnPegar'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tbCatalogos: TdxBar
      Caption = 'Cat'#225'logos'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 743
      FloatTop = 8
      FloatClientWidth = 112
      FloatClientHeight = 506
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnEstaciones'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton29'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar1: TdxBar
      Caption = 'Genera Cupon'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 834
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton28'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = 'Movimientos Cupones'
      CaptionButtons = <>
      DockedLeft = 83
      DockedTop = 0
      FloatLeft = 868
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton31'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton32'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 972
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton35'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton37'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton36'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar4: TdxBar
      Caption = 'Registra Vales'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 598
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton38'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar5: TdxBar
      Caption = 'Consultas'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 972
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton40'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = False
    end
    object btnSalir: TdxBarButton
      Caption = '&Salir'
      Category = 0
      Hint = 'Salir'
      Visible = ivAlways
      ImageIndex = 24
      OnClick = btnSalirClick
    end
    object btnLogin: TdxBarButton
      Caption = '&Conectarse'
      Category = 0
      Hint = 'Conectarse'
      Visible = ivAlways
      ImageIndex = 21
      OnClick = btnLoginClick
    end
    object btnLogout: TdxBarButton
      Caption = '&Desconectarse'
      Category = 0
      Enabled = False
      Hint = 'Desconectarse'
      Visible = ivAlways
      ImageIndex = 22
      OnClick = btnLogoutClick
    end
    object btnConfiguracion: TdxBarButton
      Caption = '&Configuraci'#243'n'
      Category = 0
      Hint = 'Configuraci'#243'n'
      Visible = ivNever
      ImageIndex = 3
    end
    object btnCuentasBancarias: TdxBarLargeButton
      Tag = 20
      Caption = 'Cuentas Bancarias'
      Category = 0
      Enabled = False
      Hint = 'Cuentas Bancarias'
      Visible = ivAlways
      LargeImageIndex = 8
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Tag = 4
      Caption = 'Modificar Folio'
      Category = 0
      Enabled = False
      Hint = 'Modificar Folio'
      Visible = ivAlways
      LargeImageIndex = 32
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Tag = 26
      Caption = 'Tipo de Cambio'
      Category = 0
      Enabled = False
      Hint = 'Tipo de Cambio'
      Visible = ivAlways
      LargeImageIndex = 7
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Tag = 58
      Caption = 'Carga Manual'
      Category = 0
      Enabled = False
      Hint = 'Carga Manual'
      Visible = ivAlways
      LargeImageIndex = 29
    end
    object dxBarLargeButton16: TdxBarLargeButton
      Tag = 59
      Caption = 'Cat'#225'logos de Club'
      Category = 0
      Enabled = False
      Hint = 'Cat'#225'logos de Club'
      Visible = ivAlways
      LargeImageIndex = 21
    end
    object dxBarLargeButton17: TdxBarLargeButton
      Tag = 60
      Caption = 'Dise'#241'o de Criterios'
      Category = 0
      Enabled = False
      Hint = 'Dise'#241'o de Criterios'
      Visible = ivAlways
      LargeImageIndex = 37
    end
    object dxBarLargeButton18: TdxBarLargeButton
      Tag = 61
      Caption = 'Cat'#225'logo de Criterios'
      Category = 0
      Enabled = False
      Hint = 'Cat'#225'logo de Criterios'
      Visible = ivAlways
      LargeImageIndex = 35
    end
    object dxBarLargeButton19: TdxBarLargeButton
      Tag = 62
      Caption = 'Agrupaci'#243'n Estaci'#243'n'
      Category = 0
      Enabled = False
      Hint = 'Agrupaci'#243'n Estaci'#243'n'
      Visible = ivAlways
      LargeImageIndex = 1
    end
    object dxBarLargeButton20: TdxBarLargeButton
      Tag = 65
      Caption = 'Puntos Despachadores'
      Category = 0
      Enabled = False
      Hint = 'Puntos Despachadores'
      Visible = ivAlways
      LargeImageIndex = 0
    end
    object dxBarLargeButton21: TdxBarLargeButton
      Tag = 66
      Caption = 'Articulos'
      Category = 0
      Enabled = False
      Hint = 'Articulos'
      Visible = ivAlways
      LargeImageIndex = 39
    end
    object dxBarLargeButton22: TdxBarLargeButton
      Tag = 67
      Caption = 'Movimiento Despachador'
      Category = 0
      Enabled = False
      Hint = 'Movimiento Despachador'
      Visible = ivAlways
      LargeImageIndex = 29
    end
    object dxBarLargeButton23: TdxBarLargeButton
      Tag = 63
      Caption = 'Cierre Diario'
      Category = 0
      Enabled = False
      Hint = 'Cierre Diario'
      Visible = ivAlways
      LargeImageIndex = 4
    end
    object dxBarLargeButton24: TdxBarLargeButton
      Tag = 64
      Caption = 'Factura Pemex'
      Category = 0
      Enabled = False
      Hint = 'Factura Pemex'
      Visible = ivAlways
      LargeImageIndex = 21
    end
    object dxBarLargeButton25: TdxBarLargeButton
      Tag = 27
      Caption = 'Datos SAT'
      Category = 0
      Enabled = False
      Hint = 'Datos SAT'
      Visible = ivAlways
      LargeImageIndex = 16
    end
    object dxBarLargeButton26: TdxBarLargeButton
      Tag = 5
      Caption = 'Reporte SAT'
      Category = 0
      Enabled = False
      Hint = 'Reporte SAT'
      Visible = ivAlways
      LargeImageIndex = 44
    end
    object dxBarLargeButton27: TdxBarLargeButton
      Tag = 6
      Caption = 'Reenvio de Facturas'
      Category = 0
      Enabled = False
      Hint = 'Reenvio de Facturas'
      Visible = ivAlways
      LargeImageIndex = 45
    end
    object dxBarLargeButton28: TdxBarLargeButton
      Tag = 1
      Caption = 'Vales'
      Category = 0
      Enabled = False
      Hint = 'Vales'
      Visible = ivAlways
      LargeImageIndex = 80
    end
    object btnGenerales: TdxBarLargeButton
      Tag = 2
      Caption = 'Reportes Vales'
      Category = 0
      Enabled = False
      Hint = 'Reportes Vales'
      Visible = ivAlways
      LargeImageIndex = 64
    end
    object btnEstaciones: TdxBarLargeButton
      Tag = 3
      Caption = 'Estacion'
      Category = 0
      Enabled = False
      Hint = 'Estacion'
      Visible = ivAlways
      LargeImageIndex = 16
    end
    object btnUsuarios: TdxBarLargeButton
      Tag = 10
      Caption = 'Usuarios'
      Category = 0
      Enabled = False
      Hint = 'Usuarios'
      Visible = ivAlways
      LargeImageIndex = 14
    end
    object btnReprotes: TdxBarLargeButton
      Tag = 9
      Caption = 'Reportes'
      Category = 0
      Enabled = False
      Hint = 'Reportes'
      Visible = ivAlways
      LargeImageIndex = 15
    end
    object dxBarLargeButton29: TdxBarLargeButton
      Tag = 16
      Caption = 'Clientes de Vales'
      Category = 0
      Enabled = False
      Hint = 'Clientes de Vales'
      Visible = ivAlways
      LargeImageIndex = 70
    end
    object dxBarLargeButton30: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton31: TdxBarLargeButton
      Tag = 7
      Caption = 'Cancelar Vale'
      Category = 0
      Enabled = False
      Hint = 'Cancelar Vale'
      Visible = ivAlways
      LargeImageIndex = 81
    end
    object dxBarLargeButton32: TdxBarLargeButton
      Tag = 8
      Caption = 'Status Vale'
      Category = 0
      Enabled = False
      Hint = 'Status Vale'
      Visible = ivAlways
      LargeImageIndex = 82
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton33: TdxBarLargeButton
      Tag = 12
      Caption = 'Empleados'
      Category = 0
      Enabled = False
      Hint = 'Empleados'
      Visible = ivAlways
      LargeImageIndex = 65
    end
    object dxBarLargeButton34: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton35: TdxBarLargeButton
      Tag = 14
      Caption = 'Genera Dcto Cobro'
      Category = 0
      Enabled = False
      Hint = 'Genera Dcto Cobro'
      Visible = ivAlways
      LargeImageIndex = 83
    end
    object dxBarLargeButton36: TdxBarLargeButton
      Tag = 13
      Caption = 'Pagar Dcto.'
      Category = 0
      Enabled = False
      Hint = 'Pagar Dcto.'
      Visible = ivAlways
      LargeImageIndex = 84
    end
    object dxBarLargeButton37: TdxBarLargeButton
      Tag = 15
      Caption = 'Genera Dcto x Cliente'
      Category = 0
      Enabled = False
      Hint = 'Genera Dcto x Cliente'
      Visible = ivAlways
      LargeImageIndex = 85
    end
    object dxBarLargeButton38: TdxBarLargeButton
      Tag = 17
      Caption = 'Registra Vale'
      Category = 0
      Enabled = False
      Hint = 'Registra Vale'
      Visible = ivAlways
      LargeImageIndex = 30
    end
    object dxBarLargeButton39: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton40: TdxBarLargeButton
      Tag = 18
      Caption = 'Consulta Vales Cliente'
      Category = 0
      Enabled = False
      Hint = 'Consulta Vales Cliente'
      Visible = ivAlways
      LargeImageIndex = 49
    end
    object btnFacturas: TdxBarLargeButton
      Tag = 1
      Caption = 'Facturas'
      Category = 1
      Enabled = False
      Hint = 'Facturas'
      Visible = ivAlways
      LargeImageIndex = 9
    end
    object btnCortes: TdxBarLargeButton
      Tag = 2
      Caption = 'Liquidaci'#243'n'
      Category = 1
      Enabled = False
      Hint = 'Liquidaci'#243'n'
      Visible = ivAlways
      LargeImageIndex = 6
    end
    object btnAnticipos: TdxBarLargeButton
      Tag = 3
      Caption = 'Anticipos'
      Category = 1
      Enabled = False
      Hint = 'Anticipos'
      Visible = ivAlways
      LargeImageIndex = 19
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Facturas de Cupones'
      Category = 1
      Enabled = False
      Hint = 'Facturas de Cupones'
      Visible = ivAlways
      LargeImageIndex = 12
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Tag = 35
      Caption = 'Aplicar    Corte'
      Category = 1
      Enabled = False
      Hint = 'Aplicar    Corte'
      Visible = ivAlways
      LargeImageIndex = 20
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Tag = 36
      Caption = 'Pagos'
      Category = 1
      Enabled = False
      Hint = 'Pagos'
      Visible = ivNever
      LargeImageIndex = 21
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Tag = 3
      Caption = 'Cancelar Factura'
      Category = 1
      Enabled = False
      Hint = 'Cancelar Factura'
      Visible = ivAlways
      LargeImageIndex = 24
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Tag = 2
      Caption = 'Modificar Folio Factura'
      Category = 1
      Enabled = False
      Hint = 'Modificar Folio Factura'
      Visible = ivAlways
      LargeImageIndex = 3
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Tag = 41
      Caption = 'Faltantes y Pagos'
      Category = 1
      Enabled = False
      Hint = 'Faltantes y Pagos'
      Visible = ivAlways
      LargeImageIndex = 22
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Tag = 43
      Caption = 'Dep'#243'sitos'
      Category = 1
      Enabled = False
      Hint = 'Dep'#243'sitos'
      Visible = ivAlways
      LargeImageIndex = 31
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Tag = 45
      Caption = 'ReImprimir Facturas'
      Category = 1
      Enabled = False
      Hint = 'ReImprimir Facturas'
      Visible = ivAlways
      LargeImageIndex = 15
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Tag = 46
      Caption = 'Concentrado'
      Category = 1
      Enabled = False
      Hint = 'Concentrado'
      Visible = ivAlways
      LargeImageIndex = 17
    end
    object btnConciliacion: TdxBarLargeButton
      Tag = 51
      Caption = 'Conciliaci'#243'n'
      Category = 1
      Enabled = False
      Hint = 'Conciliaci'#243'n'
      Visible = ivAlways
      LargeImageIndex = 3
    end
    object btnCierreMensual: TdxBarLargeButton
      Tag = 52
      Caption = 'Cierre Mensual'
      Category = 1
      Enabled = False
      Hint = 'Cierre Mensual'
      Visible = ivAlways
      LargeImageIndex = 17
    end
    object btnConsumoFlotillas: TdxBarLargeButton
      Tag = 53
      Caption = 'Consumo Flotillas'
      Category = 1
      Enabled = False
      Hint = 'Consumo Flotillas'
      Visible = ivAlways
      LargeImageIndex = 5
    end
    object btnProductos: TdxBarLargeButton
      Tag = 13
      Caption = 'Productos'
      Category = 2
      Enabled = False
      Hint = 'Productos'
      Visible = ivAlways
      LargeImageIndex = 5
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnClientes: TdxBarLargeButton
      Tag = 14
      Caption = 'Clientes'
      Category = 2
      Enabled = False
      Hint = 'Clientes'
      Visible = ivAlways
      LargeImageIndex = 0
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btnDespachadores: TdxBarLargeButton
      Tag = 19
      Caption = 'Despachadores'
      Category = 2
      Enabled = False
      Hint = 'Despachadores'
      Visible = ivAlways
      LargeImageIndex = 2
    end
    object btnProveedores: TdxBarLargeButton
      Tag = 15
      Caption = 'Proveedores'
      Category = 2
      Enabled = False
      Hint = 'Proveedores'
      Visible = ivAlways
      LargeImageIndex = 13
    end
    object btnCategorias: TdxBarLargeButton
      Tag = 16
      Caption = 'Categor'#237'as'
      Category = 2
      Enabled = False
      Hint = 'Categor'#237'as'
      Visible = ivAlways
      LargeImageIndex = 34
    end
    object btnTipoValores: TdxBarLargeButton
      Tag = 17
      Caption = 'Tipos de Valores'
      Category = 2
      Enabled = False
      Hint = 'Tipos de Valores'
      Visible = ivAlways
      LargeImageIndex = 31
    end
    object dxBarButton2: TdxBarButton
      Caption = 'Almacenes'
      Category = 2
      Hint = 'Almacenes'
      Visible = ivAlways
    end
    object btnAlmacenes: TdxBarLargeButton
      Tag = 18
      Caption = 'Almacenes'
      Category = 2
      Enabled = False
      Hint = 'Almacenes'
      Visible = ivAlways
      LargeImageIndex = 18
    end
    object btnBancos: TdxBarLargeButton
      Tag = 19
      Caption = 'Bancos'
      Category = 2
      Enabled = False
      Hint = 'Bancos'
      Visible = ivAlways
      LargeImageIndex = 1
    end
    object btnConceptoSalidas: TdxBarLargeButton
      Tag = 21
      Caption = 'Conceptos Salidas'
      Category = 2
      Enabled = False
      Hint = 'Conceptos Salidas'
      Visible = ivAlways
      LargeImageIndex = 33
    end
    object btnSalidas: TdxBarLargeButton
      Tag = 22
      Caption = 'Salidas'
      Category = 2
      Enabled = False
      Hint = 'Salidas'
      Visible = ivAlways
      LargeImageIndex = 4
    end
    object btnSistema: TdxBarLargeButton
      Tag = 25
      Caption = 'Propiedades del Sistema'
      Category = 3
      Enabled = False
      Hint = 'Propiedades del Sistema'
      Visible = ivAlways
      LargeImageIndex = 14
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Tag = 31
      Caption = 'Distribuci'#243'n Bombas'
      Category = 3
      Enabled = False
      Hint = 'Distribuci'#243'n Bombas'
      Visible = ivAlways
      LargeImageIndex = 22
    end
    object btnAgrupaciones: TdxBarLargeButton
      Tag = 32
      Caption = 'Agrupaciones'
      Category = 3
      Enabled = False
      Hint = 'Agrupaciones'
      Visible = ivAlways
      LargeImageIndex = 3
    end
    object btnAgrupacionBombas: TdxBarLargeButton
      Tag = 33
      Caption = 'Agrupaciones y Bombas'
      Category = 3
      Enabled = False
      Hint = 'Agrupaciones y Bombas'
      Visible = ivAlways
      LargeImageIndex = 11
    end
    object btnTipodePago: TdxBarLargeButton
      Tag = 37
      Caption = 'Tipo de Pago'
      Category = 3
      Enabled = False
      Hint = 'Tipo de Pago'
      Visible = ivAlways
      LargeImageIndex = 8
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Tag = 44
      Caption = 'Consulta de Facturas'
      Category = 3
      Enabled = False
      Hint = 'Consulta de Facturas'
      Visible = ivAlways
      LargeImageIndex = 9
    end
    object btnRepotesCortes: TdxBarLargeButton
      Tag = 10
      Caption = 'Cortes'
      Category = 4
      Enabled = False
      Hint = 'Cortes'
      Visible = ivAlways
      LargeImageIndex = 19
    end
    object btnReportesInventario: TdxBarLargeButton
      Tag = 8
      Caption = 'Inventarios'
      Category = 4
      Enabled = False
      Hint = 'Inventarios'
      Visible = ivAlways
      LargeImageIndex = 20
    end
    object btnEspecificos: TdxBarLargeButton
      Tag = 10
      Caption = 'Espec'#237'ficos'
      Category = 4
      Enabled = False
      Hint = 'Espec'#237'ficos'
      Visible = ivAlways
      LargeImageIndex = 22
    end
    object btnExportar: TdxBarLargeButton
      Tag = 11
      Caption = 'Exportar'
      Category = 4
      Enabled = False
      Hint = 'Exportar'
      Visible = ivAlways
      LargeImageIndex = 18
    end
    object btnReprotesCupones: TdxBarLargeButton
      Tag = 12
      Caption = 'Cupones'
      Category = 4
      Enabled = False
      Hint = 'Cupones'
      Visible = ivAlways
      LargeImageIndex = 30
    end
    object btnCompras: TdxBarLargeButton
      Tag = 7
      Caption = 'Almacen'
      Category = 5
      Enabled = False
      Hint = 'Almacen'
      Visible = ivAlways
      LargeImageIndex = 5
    end
    object btnTraspasos: TdxBarLargeButton
      Tag = 5
      Caption = 'Traspasos'
      Category = 5
      Enabled = False
      Hint = 'Traspasos'
      Visible = ivAlways
      LargeImageIndex = 18
    end
    object btnInventarioFisico: TdxBarLargeButton
      Tag = 6
      Caption = 'Inventario F'#237'sico'
      Category = 5
      Enabled = False
      Hint = 'Inventario F'#237'sico'
      Visible = ivAlways
      LargeImageIndex = 29
    end
    object btnMermas: TdxBarLargeButton
      Tag = 7
      Caption = 'Mermas'
      Category = 5
      Enabled = False
      Hint = 'Mermas'
      Visible = ivAlways
      LargeImageIndex = 33
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Tag = 47
      Caption = 'Compras Combustible'
      Category = 5
      Enabled = False
      Hint = 'Compras Combustible'
      Visible = ivAlways
      LargeImageIndex = 21
    end
    object btnNuevo: TdxBarLargeButton
      Action = dmAppActions.actNuevo
      Category = 6
    end
    object btnGuardar: TdxBarLargeButton
      Action = dmAppActions.actGuardar
      Category = 6
    end
    object btnCancelar: TdxBarLargeButton
      Action = dmAppActions.actCancelar
      Category = 6
    end
    object btnImprimir: TdxBarLargeButton
      Action = dmAppActions.actImprimir
      Category = 6
    end
    object btnCortar: TdxBarButton
      Action = EditCut2
      Category = 6
    end
    object btnCopiar: TdxBarButton
      Action = EditCopy2
      Category = 6
    end
    object btnPegar: TdxBarButton
      Action = EditPaste2
      Category = 6
    end
    object btnEliminar: TdxBarLargeButton
      Action = dmAppActions.actEliminar
      Category = 6
    end
    object btnPrimer: TdxBarButton
      Action = dmAppActions.actPrimer
      Category = 6
    end
    object btnAnteriior: TdxBarButton
      Action = dmAppActions.actAnterior
      Category = 6
    end
    object btnSiguiente: TdxBarButton
      Action = dmAppActions.actSiguiente
      Category = 6
    end
    object btnUltimo: TdxBarButton
      Action = dmAppActions.actUltimo
      Category = 6
    end
    object btnActualizar: TdxBarButton
      Action = dmAppActions.actActualizar
      Category = 6
    end
    object btnBuscar: TdxBarButton
      Action = dmAppActions.actBuscar
      Category = 6
    end
    object btnProcesarVentas: TdxBarLargeButton
      Action = dmAppActions.actProcesarVentas
      Category = 6
    end
    object btnCerrarLiquidacion: TdxBarLargeButton
      Action = dmAppActions.actCerrarLiquidacion
      Category = 6
    end
    object btnProcesar: TdxBarLargeButton
      Action = dmAppActions.actProcesar
      Category = 6
    end
    object btnCupones: TdxBarLargeButton
      Tag = 8
      Caption = 'Imprimir Cupones'
      Category = 7
      Enabled = False
      Hint = 'Imprimir Cupones'
      Visible = ivAlways
      LargeImageIndex = 30
    end
    object btnValesCredito: TdxBarLargeButton
      Tag = 9
      Caption = 'Vales de Cr'#233'dito'
      Category = 7
      Enabled = False
      Hint = 'Vales de Cr'#233'dito'
      Visible = ivAlways
      LargeImageIndex = 32
      SyncImageIndex = False
      ImageIndex = 32
    end
    object btnQuemaCupones: TdxBarLargeButton
      Tag = 34
      Caption = 'Quema de Cupones'
      Category = 7
      Enabled = False
      Hint = 'Quema de Cupones'
      Visible = ivAlways
      LargeImageIndex = 22
      SyncImageIndex = False
      ImageIndex = 22
    end
    object btnGenerarFacturas: TdxBarLargeButton
      Tag = 48
      Caption = 'Generar Facturas'
      Category = 8
      Enabled = False
      Hint = 'Generar Facturas'
      Visible = ivAlways
      LargeImageIndex = 9
    end
    object btnConsultaSaldos: TdxBarLargeButton
      Tag = 49
      Caption = 'Consulta de Saldos'
      Category = 8
      Enabled = False
      Hint = 'Consulta de Saldos'
      Visible = ivAlways
      LargeImageIndex = 10
    end
    object btnCapturaMovimientos: TdxBarLargeButton
      Tag = 50
      Caption = 'Captura de Movimientos'
      Category = 8
      Enabled = False
      Hint = 'Captura de Movimientos'
      Visible = ivAlways
      LargeImageIndex = 11
    end
    object btnCategoria: TdxBarLargeButton
      Tag = 56
      Caption = 'Categoria Puntos'
      Category = 9
      Enabled = False
      Hint = 'Categoria Puntos'
      Visible = ivAlways
      LargeImageIndex = 0
    end
    object btnSaldo: TdxBarLargeButton
      Tag = 55
      Caption = 'Saldo Puntos'
      Category = 9
      Enabled = False
      Hint = 'Saldo Puntos'
      Visible = ivAlways
      LargeImageIndex = 4
    end
    object btnPremios: TdxBarLargeButton
      Tag = 57
      Caption = 'Cat'#225'logo Premios'
      Category = 9
      Enabled = False
      Hint = 'Cat'#225'logo Premios'
      Visible = ivAlways
      LargeImageIndex = 22
    end
    object btnEntregarPremio: TdxBarLargeButton
      Tag = 54
      Caption = 'Entregar Premio'
      Category = 9
      Enabled = False
      Hint = 'Entregar Premio'
      Visible = ivAlways
      LargeImageIndex = 7
    end
  end
  object dxRibbonPopupMenu1: TdxRibbonPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btnLogin'
      end
      item
        Visible = True
        ItemName = 'btnLogout'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnConfiguracion'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btnSalir'
      end>
    Ribbon = Ribbon
    UseOwnFont = False
    Left = 300
    Top = 328
  end
end
