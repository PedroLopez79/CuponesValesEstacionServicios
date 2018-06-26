inherited frmPropiedadesSistema: TfrmPropiedadesSistema
  Caption = 'frmPropiedadesSistema'
  ClientHeight = 492
  ClientWidth = 657
  ExplicitWidth = 657
  ExplicitHeight = 492
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 657
    Height = 492
    ActivePage = cxTabSheet1
    Align = alClient
    Images = dmImages.Imagenes
    TabOrder = 0
    TabPosition = tpBottom
    ClientRectBottom = 462
    ClientRectLeft = 3
    ClientRectRight = 651
    ClientRectTop = 3
    object cxTabSheet1: TcxTabSheet
      Caption = ' Propiedades del Sistema '
      ImageIndex = 40
      object rgSkin: TcxRadioGroup
        Left = 232
        Top = 16
        Caption = ' Skin '
        Properties.Items = <
          item
            Caption = 'XP'
            Value = '1'
          end
          item
            Caption = 'Caramelo'
            Value = '2'
          end
          item
            Caption = 'Lila'
            Value = '3'
          end
          item
            Caption = 'Office 2007 Azul'
            Value = '4'
          end
          item
            Caption = 'Office 2007 Negro'
            Value = '5'
          end
          item
            Caption = 'Office 2007 Gris'
            Value = '6'
          end
          item
            Caption = 'Azul'
            Value = '7'
          end
          item
            Caption = 'Negro'
            Value = '8'
          end
          item
            Caption = 'Gris'
            Value = '9'
          end
          item
            Caption = 'iMaginary'
            Value = '10'
          end
          item
            Caption = 'Cafe'
            Value = '11'
          end
          item
            Caption = 'Cristal'
            Value = '12'
          end
          item
            Caption = 'Cielo'
            Value = '13'
          end
          item
            Caption = 'Liquido'
            Value = '14'
          end
          item
            Caption = 'Mac'
            Value = '15'
          end
          item
            Caption = 'Office 2007 Verde'
            Value = '16'
          end
          item
            Caption = 'Office 2007 Rosa'
            Value = '17'
          end
          item
            Caption = 'Stardust'
            Value = '18'
          end
          item
            Caption = 'San Valentin'
            Value = '19'
          end
          item
            Caption = 'Navidad'
            Value = '20'
          end>
        Properties.OnEditValueChanged = rgSkinPropertiesEditValueChanged
        TabOrder = 0
        Height = 425
        Width = 201
      end
      object cxGroupBox1: TcxGroupBox
        Left = 24
        Top = 16
        Caption = 'Datos Generales'
        TabOrder = 1
        Height = 185
        Width = 185
        object cxLabel1: TcxLabel
          Left = 16
          Top = 24
          Caption = 'Servidor'
          Transparent = True
        end
        object edtServidor: TcxTextEdit
          Left = 16
          Top = 40
          Properties.OnEditValueChanged = rgSkinPropertiesEditValueChanged
          TabOrder = 1
          Width = 153
        end
        object cxLabel4: TcxLabel
          Left = 16
          Top = 64
          Caption = 'Estacion Default'
          Transparent = True
        end
        object edtEstacion: TcxTextEdit
          Left = 16
          Top = 80
          Properties.OnEditValueChanged = rgSkinPropertiesEditValueChanged
          TabOrder = 3
          Width = 153
        end
        object cxLabel5: TcxLabel
          Left = 16
          Top = 104
          Caption = 'Numero de Cliente Flotillas'
          Transparent = True
        end
        object edtClienteFlotillas: TcxTextEdit
          Left = 16
          Top = 120
          Properties.OnEditValueChanged = rgSkinPropertiesEditValueChanged
          TabOrder = 5
          Width = 153
        end
        object chkSinTicket: TcxCheckBox
          Left = 16
          Top = 147
          Caption = 'Permitir Ingresar sin Ticket'
          Properties.OnEditValueChanged = rgSkinPropertiesEditValueChanged
          TabOrder = 6
          Transparent = True
          Width = 153
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 24
        Top = 208
        Caption = 'Facturacion'
        TabOrder = 2
        Height = 233
        Width = 185
        object cxLabel2: TcxLabel
          Left = 16
          Top = 24
          Caption = 'Serie Factura'
          Transparent = True
        end
        object edtSerieFactura: TcxTextEdit
          Left = 16
          Top = 40
          Properties.CharCase = ecUpperCase
          Properties.OnEditValueChanged = rgSkinPropertiesEditValueChanged
          TabOrder = 1
          Width = 153
        end
        object cxLabel3: TcxLabel
          Left = 16
          Top = 120
          Caption = 'Serie Factura Express'
          Transparent = True
        end
        object edtSerieExpress: TcxTextEdit
          Left = 16
          Top = 136
          Properties.CharCase = ecUpperCase
          Properties.OnEditValueChanged = rgSkinPropertiesEditValueChanged
          TabOrder = 3
          Width = 153
        end
        object cxLabel6: TcxLabel
          Left = 16
          Top = 168
          Caption = 'Servidor Facturaci'#243'n Express'
          Transparent = True
        end
        object edtServidorExpress: TcxTextEdit
          Left = 16
          Top = 184
          Properties.OnEditValueChanged = rgSkinPropertiesEditValueChanged
          TabOrder = 5
          Width = 153
        end
        object cxLabel7: TcxLabel
          Left = 16
          Top = 72
          Caption = 'Formato Factura'
          Transparent = True
        end
        object edtFormatoFactura: TcxTextEdit
          Left = 16
          Top = 88
          Properties.CharCase = ecUpperCase
          Properties.OnEditValueChanged = rgSkinPropertiesEditValueChanged
          TabOrder = 7
          Width = 153
        end
      end
    end
  end
end
