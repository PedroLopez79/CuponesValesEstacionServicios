inherited frmModificarFolio: TfrmModificarFolio
  Caption = 'frmModificarFolio'
  ExplicitWidth = 625
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 16
    Top = 8
    Hint = ''
    Caption = ' Modificar Folio Factura '
    Style.BorderStyle = ebsUltraFlat
    Style.LookAndFeel.NativeStyle = False
    Style.Shadow = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    Transparent = True
    Height = 137
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
    object edtFolio: TcxCurrencyEdit
      Left = 32
      Top = 96
      Hint = ''
      Properties.DisplayFormat = '#0'
      Properties.OnChange = edtFolioPropertiesChange
      TabOrder = 2
      Width = 105
    end
    object edtSerie: TcxImageComboBox
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
