inherited frmModificaFolioFactura: TfrmModificaFolioFactura
  Caption = 'frmModificaFolioFactura'
  ExplicitWidth = 625
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object pgcFacturas: TcxPageControl
    Left = 0
    Top = 0
    Width = 625
    Height = 449
    Hint = ''
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dmImages.Imagenes
    Properties.TabPosition = tpBottom
    OnChange = pgcFacturasChange
    ClientRectBottom = 424
    ClientRectLeft = 4
    ClientRectRight = 621
    ClientRectTop = 4
    object cxTabSheet1: TcxTabSheet
      Caption = 'Cambia Folio Factura'
      ImageIndex = 34
      object cxGroupBox2: TcxGroupBox
        Left = 24
        Top = 32
        Hint = ''
        Caption = ' Cambia Folio Factura '
        Style.BorderStyle = ebsUltraFlat
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Transparent = True
        Height = 129
        Width = 337
        object cxLabel5: TcxLabel
          Left = 32
          Top = 24
          Hint = ''
          Caption = 'Serie'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object cxLabel6: TcxLabel
          Left = 32
          Top = 79
          Hint = ''
          Caption = 'Folio'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object cxLabel7: TcxLabel
          Left = 184
          Top = 24
          Hint = ''
          Caption = 'Nueva Serie'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object cxLabel8: TcxLabel
          Left = 184
          Top = 79
          Hint = ''
          Caption = 'Nuevo Folio'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object edtFolioOld: TcxCurrencyEdit
          Left = 32
          Top = 96
          Hint = ''
          Properties.DisplayFormat = '#0'
          Properties.OnChange = edtFolioImprimePropertiesChange
          TabOrder = 4
          Width = 105
        end
        object edtFolioNew: TcxCurrencyEdit
          Left = 184
          Top = 96
          Hint = ''
          Properties.DisplayFormat = '#0'
          Properties.OnChange = edtFolioImprimePropertiesChange
          TabOrder = 5
          Width = 105
        end
        object edtSerieOld: TcxImageComboBox
          Left = 32
          Top = 40
          Hint = ''
          Enabled = False
          Properties.Items = <>
          Properties.OnEditValueChanged = edtSerieOldPropertiesEditValueChanged
          TabOrder = 6
          Width = 105
        end
        object edtSerieNew: TcxImageComboBox
          Left = 184
          Top = 40
          Hint = ''
          Enabled = False
          Properties.Items = <>
          Properties.OnEditValueChanged = edtSerieNewPropertiesEditValueChanged
          TabOrder = 7
          Width = 105
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Imprimir Factura'
      ImageIndex = 48
      object cxGroupBox1: TcxGroupBox
        Left = 24
        Top = 24
        Hint = ''
        Caption = ' Imprimir Factura '
        Style.BorderStyle = ebsUltraFlat
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Transparent = True
        Height = 129
        Width = 193
        object cxLabel3: TcxLabel
          Left = 32
          Top = 24
          Hint = ''
          Caption = 'Serie'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 32
          Top = 79
          Hint = ''
          Caption = 'Folio'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object edtFolioImprime: TcxCurrencyEdit
          Left = 32
          Top = 96
          Hint = ''
          Properties.DisplayFormat = '#0'
          Properties.OnChange = edtFolioImprimePropertiesChange
          Properties.OnEditValueChanged = edtFolioImprimePropertiesEditValueChanged
          TabOrder = 2
          Width = 105
        end
        object edtSerieImprime: TcxImageComboBox
          Left = 32
          Top = 40
          Hint = ''
          Enabled = False
          Properties.Items = <>
          TabOrder = 3
          Width = 105
        end
      end
    end
  end
end