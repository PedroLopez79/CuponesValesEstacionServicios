inherited frmConsultaValesClientes: TfrmConsultaValesClientes
  Caption = 'frmConsultaValesClientes'
  ClientHeight = 849
  ClientWidth = 916
  ExplicitWidth = 916
  ExplicitHeight = 849
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 916
    Height = 274
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 7
      Top = 20
      Width = 32
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 7
      Top = 52
      Width = 37
      Height = 13
      Caption = 'Nombre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 225
      Top = 20
      Width = 40
      Height = 13
      Caption = 'Ejercicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 339
      Top = 20
      Width = 66
      Height = 13
      Caption = 'Periodo Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 339
      Top = 48
      Width = 61
      Height = 13
      Caption = 'Periodo Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 7
      Top = 79
      Width = 96
      Height = 13
      Caption = 'Lotes del Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtCliente: TcxCurrencyEdit
      Left = 57
      Top = 17
      Hint = ''
      EditValue = 0
      Properties.DisplayFormat = '#'
      TabOrder = 0
      OnExit = edtClienteExit
      OnKeyDown = edtClienteKeyDown
      Width = 97
    end
    object edtNombre: TcxTextEdit
      Left = 57
      Top = 44
      Hint = ''
      TabStop = False
      Enabled = False
      Properties.ReadOnly = True
      Style.TextColor = clNavy
      TabOrder = 1
      Width = 271
    end
    object edtEjercicio: TcxSpinEdit
      Left = 271
      Top = 17
      Hint = ''
      Properties.MaxValue = 2006.000000000000000000
      Properties.MinValue = 2006.000000000000000000
      TabOrder = 2
      Value = 2006
      Width = 57
    end
    object cbPeriodoIni: TcxImageComboBox
      Left = 411
      Top = 16
      Hint = ''
      Properties.ButtonGlyph.Data = {
        46020000424D460200000000000036000000280000000E0000000C0000000100
        1800000000001002000000000000000000000000000000000000FF00FFFF00FF
        8080808080808080808080808080808080808080808080808080808080808080
        80FF00FF0000FF00FF0000000000008000000000008000008000000000008000
        00000000000000800000808080FF00FF0000FF00FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000808080FF00FF0000FF00
        FFFFFFFF000000000000000000FFFFFF000000000000000000C0C0C0FFFFFF80
        0000808080FF00FF0000FF00FFFFFFFFFFFFFF000000FFFFFFFFFFFFC0C0C0FF
        FFFFC0C0C0000000FFFFFF800000808080FF00FF0000FF00FFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF800000808080FF00FF
        0000FF00FFFFFFFFFFFFFF000000FFFFFFFFFFFF000000000000000000C0C0C0
        FFFFFF800000808080FF00FF0000FF00FFFFFFFF000000000000FFFFFFFFFFFF
        000000FFFFFFFFFFFFFFFFFFFFFFFF800000808080FF00FF0000FF00FFFFFFFF
        FFFFFF000000FFFFFFFFFFFF000000000000000000000000FFFFFF8000008080
        80FF00FF0000FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF800000808080FF00FF0000FF00FFFFFFFFC0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF800000808080FF00FF0000FF00
        FF000000000000000000000000000000000000000000000000000000000000FF
        00FFFF00FFFF00FF0000}
      Properties.Items = <
        item
          Description = 'ENERO'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'FEBRERO'
          Value = 2
        end
        item
          Description = 'MARZO'
          Value = 3
        end
        item
          Description = 'ABRIL'
          Value = 4
        end
        item
          Description = 'MAYO'
          Value = 5
        end
        item
          Description = 'JUNIO'
          Value = 6
        end
        item
          Description = 'JULIO'
          Value = 7
        end
        item
          Description = 'AGOSTO'
          Value = 8
        end
        item
          Description = 'SEPTIEMBRE'
          Value = 9
        end
        item
          Description = 'OCTUBRE'
          Value = 10
        end
        item
          Description = 'NOVIEMBRE'
          Value = 11
        end
        item
          Description = 'DICIEMBRE'
          Value = 12
        end>
      TabOrder = 3
      Width = 133
    end
    object cbPeriodoFin: TcxImageComboBox
      Left = 411
      Top = 44
      Hint = ''
      Properties.ButtonGlyph.Data = {
        46020000424D460200000000000036000000280000000E0000000C0000000100
        1800000000001002000000000000000000000000000000000000FF00FFFF00FF
        8080808080808080808080808080808080808080808080808080808080808080
        80FF00FF0000FF00FF0000000000008000000000008000008000000000008000
        00000000000000800000808080FF00FF0000FF00FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000808080FF00FF0000FF00
        FFFFFFFF000000000000000000FFFFFF000000000000000000C0C0C0FFFFFF80
        0000808080FF00FF0000FF00FFFFFFFFFFFFFF000000FFFFFFFFFFFFC0C0C0FF
        FFFFC0C0C0000000FFFFFF800000808080FF00FF0000FF00FFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF800000808080FF00FF
        0000FF00FFFFFFFFFFFFFF000000FFFFFFFFFFFF000000000000000000C0C0C0
        FFFFFF800000808080FF00FF0000FF00FFFFFFFF000000000000FFFFFFFFFFFF
        000000FFFFFFFFFFFFFFFFFFFFFFFF800000808080FF00FF0000FF00FFFFFFFF
        FFFFFF000000FFFFFFFFFFFF000000000000000000000000FFFFFF8000008080
        80FF00FF0000FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF800000808080FF00FF0000FF00FFFFFFFFC0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF800000808080FF00FF0000FF00
        FF000000000000000000000000000000000000000000000000000000000000FF
        00FFFF00FFFF00FF0000}
      Properties.Items = <
        item
          Description = 'ENERO'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'FEBRERO'
          Value = 2
        end
        item
          Description = 'MARZO'
          Value = 3
        end
        item
          Description = 'ABRIL'
          Value = 4
        end
        item
          Description = 'MAYO'
          Value = 5
        end
        item
          Description = 'JUNIO'
          Value = 6
        end
        item
          Description = 'JULIO'
          Value = 7
        end
        item
          Description = 'AGOSTO'
          Value = 8
        end
        item
          Description = 'SEPTIEMBRE'
          Value = 9
        end
        item
          Description = 'OCTUBRE'
          Value = 10
        end
        item
          Description = 'NOVIEMBRE'
          Value = 11
        end
        item
          Description = 'DICIEMBRE'
          Value = 12
        end>
      TabOrder = 4
      Width = 133
    end
    object BtnConsultarSaldo: TcxButton
      Left = 562
      Top = 8
      Width = 199
      Height = 84
      Caption = '&Consultar'
      LookAndFeel.NativeStyle = False
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000030000
        0005000000080000000A0000000B0000000C0000000B0000000A000000080000
        0005000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000100000003000000070000000E0000
        001700000021000000280000002D0000002F0000002D00000029000000220000
        00190000000F0000000800000004000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000100000002000000060000000F0000001C04020231331F
        1A7B663E32C17E4C3DDE925745F49A5C4AFF8F5543F4794738DE61392CC2301B
        167D030202340000001D0000000F000000060000000100000000000000010000
        0002000000030000000400000004000000050000000500000005000000050000
        000500000005000000070000000C000000170201012D452B2392935C4BEDB283
        74FFC3A297FFCBAFA6FFD1BBB1FFD4BFB7FFCFB7AEFFC6A99FFFBD998DFFA978
        67FF874F3EEE3F231B940201012D000000150000000800000002000000030000
        00080000000D0000001000000011000000110000001200000012000000120000
        0013000000150000001900000026110B09527E5143D7BD9386FFD8C3BBFFDFCF
        C8FFD6C3BCFFA3897CFF826252FF6E4B39FF7D5D4DFF9A7E73FFCEB9B0FFD6C3
        BAFFCCB4ABFFAF8172FF734131D60F0907490000001800000008000000072F21
        1D54966B5CEAA57564FFA57564FFA57464FFA57363FFA47362FFA47362FFA272
        61FFA37464FFC4AAA1FFC0A8A0FFAE7D6BFFD6BCB4FFE6D8D2FFE8DCD6FFD1C1
        B9FF846351FF876756FF9A7C6CFFA78B7CFF987A6AFF7F5E4DFF6F4E3DFFC4B0
        A7FFDDCCC4FFD8C5BDFFC6A79DFF8D5647EF1109074B000000160000000B966C
        5CE7E2D0C8FFF7F0E9FFF6EFEAFFF6EEEAFFF7EEE9FFF6EDE9FFF6EDE8FFF4EB
        E7FFF0EBE8FFE5DFDCFFB18072FFE0CEC8FFEBE1DCFFEEE5E1FFEAE0DAFF9273
        61FF977B68FFB2998AFFC1A89CFFC5B0A3FFC1A99BFFB29A8AFF917463FF7653
        45FFDCCDC6FFE0D1CAFFDBC9C2FFD0B7AEFF834E3EE7090503370000000DA97A
        69FFF9F4F0FFF6EEE9FFF6EDE8FFF6EEE8FFF5EEE7FFF5EDE8FFF6EDE8FFF1E8
        E2FFF1EDEAFFC09B8FFFD4B7AFFFF1E8E3FFF2EDE8FFF5EEEBFFBDA99CFF9373
        61FFB2998BFFBBA699FF735B51FF4C332AFF664F46FFB6A195FFB29A8AFF7F5F
        4EFFA1877DFFE6D9D3FFE3D4CEFFE0CFC8FFC19D92FF583024B20000000DAA7B
        6AFFF9F4F0FFF6EEEAFFF6EEE9FFF6EEE9FFF6EEE8FFF5EEE8FFF5ECE7FFF0E8
        E3FFEEE9E7FFA7705EFFF0EAE7FFF3EEEBFFF7F3EEFFF7F4F1FFA88B79FFA184
        74FFC1A99CFF7E665AFF593E32FF543A2FFF4E352AFF664F46FFC2AA9DFF9C7F
        6EFF7C5D4EFFE9DED7FFE7DBD5FFE4D8CFFFDFCFCAFF925342FF0000000CAB7C
        6CFFFAF5F1FFF7EFE9FFF6EFEAFFF6EEEAFFF7EEE9FFF6EEE9FFF4EDE8FFF1E9
        E3FFEFECEAFF65687FFFBBAEA8FFEFECE9FFF7F2EFFFF8F5F3FFA68975FFA78C
        7CFFC5AFA2FF715749FF614739FF5C4135FF553B2FFF4E352CFFC6B0A2FFA68B
        7BFF735140FFEAE1DCFFE6DBD5FFDFD3CDFFB09E96FF4F4D65F30000000BAD7F
        6EFFFAF5F2FFF7EFEBFFF6EFEAFFF7EFEAFFF7EEEAFFF7EFE9FFF7EEE9FFF2EA
        E5FFF2EEEBFF829BC2FF796E72FFCFC6C2FFEAE5E2FFF1EEEBFFB29885FFA285
        74FFDCCEBBFFF4F1D5FFBBB096FF614639FF593E33FF735B50FFC0A99CFF9C7E
        6DFF7D5F4FFFE4D9D5FFDCD1CCFFC4B6AFFF736568FF162954A80000000BAF80
        70FFFAF5F2FFF7F0EBFFF7F0EBFFF7EFEBFFF7F0EBFFF7EFEAFFF7EFEAFFF5ED
        E8FFF3EDEAFFD1D7E0FF4677B6FF827472FFBCAFACFFDDD5D2FFC0AA9EFF9C7C
        68FFE0D8C5FFEBE5CDFFEEEACCFF735A4BFF7E6459FFB6A093FFAA9183FF7E5D
        4CFF9B8276FFD3C7C2FFB4A39DFF7D6D6BFF30579DFD050B18460000000AB082
        71FFFAF6F3FFF8F1ECFFF8F1EBFFF7F0ECFFF7F0EBFFF7F0EBFFF7F0EAFFF6EE
        E9FFF4EDE8FFF3F0EDFF8BAACFFF6699CBFF7A767AFF8C7A75FFB6ABA6FF9D7E
        6CFFAB9483FFD0C5B1FFC3B19EFFB1978AFFAC9083FF9D8171FF826253FF7250
        41FFB09F99FF927C75FF757278FF497BBBFF1127549E0000001500000009B184
        73FFFBF7F3FFF8F0ECFFF8F0EDFFF7F0ECFFF8F1ECFFF8F0EBFFF7F0EBFFF8F0
        ECFFF6EEEAFFF5EFEBFFEFECEBFF739DCDFF7AB2E3FF839AAFFF64595AFF6A58
        55FF6D5349FF6F5045FF76564AFF7F5F51FF755648FF694A3FFF64483EFF765E
        58FF726464FF7591ADFF5591D3FF1B3B77C9010204220000000900000009B385
        75FFFBF7F4FFF8F2EDFFF8F1EDFFF8F1ECFFF8F1EDFFF8F1ECFFF7F1ECFFF8F1
        ECFFF7F0ECFFF5EEEAFFF5F0EEFFEDECECFF83A9D4FF71A7DCFF96CAEEFF8AA8
        BFFF6C7783FF56545DFF473F47FF403135FF50464CFF605B64FF6F7785FF7C9F
        BEFF73AEE3FF437AC1FF5B75A9FF040508300101010F0000000400000008B487
        77FFFBF7F5FFF8F2EDFFF8F1EEFFF8F2EEFFF8F1EEFFF8F1EDFFF8F1EDFFF7F1
        EDFFF7F1ECFFF8F0ECFFF6EEEAFFF6F1EEFFF5F2EFFFBBCEE1FF78A6D5FF7FB2
        E0FF92C4EBFFA1D3F3FFA4D7F7FFA2D7F9FF98CFF4FF87BFECFF6FA6DCFF5188
        C8FF4974B7FFA7B7D2FFD2BEB8FF0202021A010101080000000100000008B689
        78FFFBF8F5FFF8F2EEFFF9F2EEFFF8F2EEFFF8F2EDFFF8F1EDFFF8F1EDFFF8F1
        EDFFF8F1EDFFF8F1EDFFF8F1EDFFF6F0EBFFF6F0ECFFF6F2F0FFF4F2EFFFC6D5
        E4FFA4BFDDFF86ACD8FF73A0D2FF6294CCFF6391CAFF6D94CAFF7D91B6FFB1C0
        D7FFF1EEECFFF5F1EFFFBC9B8FFF02020214010101060000000000000007B88B
        7BFFFBF8F6FFF9F2EFFFF9F3EFFFF9F3EFFFF9F2EEFFF8F2EFFFF8F2EEFFF9F2
        EEFFF8F2EEFFF9F2EEFFF8F1EDFFF8F1EDFFF7F0ECFFF6EFEBFFF6F0ECFFF5F1
        EDFFF5F1EFFFF5F2F0FFF5F2EFFFF4F1EFFFF4F1EFFFF5F1EEFFC9ADA4FFEDEA
        E8FFF1EBE8FFF5EFEAFFB1887AFF02020211010101040000000000000006B98D
        7CFFFCF8F6FFFAF4EFFFF9F3EFFFF9F3F0FFF9F3EFFFF9F2EFFFF8F3EFFFF9F3
        EFFFF9F2EEFFF8F2EEFFF8F1EEFFF8F2EEFFF8F2EEFFF8F2EDFFF7F0ECFFF6F0
        ECFFF6EFEBFFF5EFEAFFF4EEE9FFF5EDE9FFF4EDE8FFF5EEEAFFAD7E6DFFEBE7
        E4FFF3ECE8FFF8F1ECFFB48B7CFF02020210010101040000000000000006BA8F
        7EFFFBF9F6FFFAF4F1FFFAF4F0FFF9F4F0FFF9F3F0FFF9F3EFFFF9F3EFFFF9F3
        EFFFF8F2EFFFF9F2EFFFF9F2EEFFF9F3EEFFF8F2EEFFF8F2EDFFF8F2EEFFF8F2
        EEFFF8F1EDFFF8F1EDFFF7F1EDFFF7F1ECFFF8F1ECFFF9F1EDFFAF806FFFEDE9
        E7FFF4EDE9FFF9F2EDFFB58C7DFF02020210010101040000000000000005C48A
        59FFE5C7A6FFD19F69FFD19D69FFD09C68FFD09B67FFD09A65FFD09A64FFD098
        63FFCF9761FFCF9661FFCE965FFFCE945EFFCE925DFFCD915BFFCD915AFFCB8F
        58FFCB8F57FFCB8E56FFCA8D55FFCA8D54FFCB8B53FFCE9360FFB16F3BFFEEEA
        E8FFF5EEEAFFF9F2EEFFB68D7FFF0202020F010101040000000000000005C48B
        5AFFEED4B2FFDEB27AFFDEB179FFDEAF78FFDDAE77FFDCAE76FFDBAC74FFDBAB
        74FFDAAA72FFDAA971FFD9A86FFFD8A76EFFD8A66DFFD7A46BFFD8A36AFFD6A3
        69FFD6A168FFD5A067FFD49F66FFD49D65FFDFB382FFE1B88CFFB26F3BFFEEEA
        E8FFF5EFEBFFF9F2EEFFB78E80FF0202020E010101040000000000000004C48B
        5AFFEED6B5FFE0B47CFFDFB27BFFDEB179FFDEB179FFDDAF77FFDDAF76FFDCAD
        76FFDCAC74FFDBAB73FFDAAA72FFDAA970FFD9A76FFFD8A76EFFD8A56DFFD7A4
        6CFFD7A36AFFD7A169FFD5A068FF4B54DAFF5964E2FFE2BA8EFFB26E3CFFF0EB
        E9FFF5EFEBFFF9F3EFFFB99182FF0202020E000000030000000000000003C48B
        5AFFEFD8B6FFE4BC88FFE0B47CFFDFB37BFFDFB27BFFDFB17AFFDEB079FFDDB0
        77FFDCAE76FFDCAC75FFDCAC74FFDBAB72FFDAAA72FFD9A870FFD9A76EFFD8A6
        6EFFD8A56DFFD7A46BFFD6A26AFF4045D2FF4C55DAFFD9A774FFB26F3BFFF0ED
        EAFFF7F1EDFFFAF3EFFFBA9183FF0202020D000000030000000000000002B17E
        52E8E5C59FFFEFD8B6FFEFD7B6FFEFD5B3FFEED4B1FFEDD3B1FFECD2B0FFECD1
        ADFFEBD0ABFFEBCEA9FFEACCA7FFEACBA4FFE8CAA3FFE8CAA1FFE7C7A0FFE6C5
        9DFFE6C49BFFE5C299FFE4C096FFE5C095FFE3BE93FFD7A87BFFB57544FFDAB8
        97FFD09A6AFFD5A276FFBC8356FF0202020C0000000300000000000000013123
        16419A6D47CAC48A58FFC38857FFC28756FFC18655FFC08553FFBF8352FFBF82
        50FFBD814FFFBC7F4DFFBC7D4CFFBB7C4BFFBA7C49FFB97A48FFB77846FFB777
        45FFB67543FFB57442FFB57340FFB47240FFB4713EFFBB8152FFD3AC87FFE2C2
        A2FFE2BC92FFE5C29CFFBD8356FF0202020C0000000300000000000000000000
        0001000000020000000301010107D9B99DFFF2E4D2FFE9D0AFFFE8CFAFFFE8CF
        ADFFE8CFADFFE6CCADFFE6CCACFFE6CBACFFE6CAABFFE5CAAAFFE4C8A8FFE4C8
        A8FFE4C6A7FFE2C5A5FFE2C4A5FFE1C3A4FFE1C3A2FFE2C3A3FFE4C5A5FF959A
        E8FF7079E6FFE6C39EFFBD8257FF0202020B0000000300000000000000000000
        0000000000000000000200000004CB9A71FFF0DCBFFFE7C497FFE3BD8DFFE2BC
        8CFFE2BC8CFFE2BB8BFFE2BA8AFFE1BA89FFE0B888FFE0B687FFE0B686FFDFB6
        84FFDEB584FFDDB383FFDCB281FFDBB181FFDBB080FFDBAF7FFFDBAE7EFF5A5F
        D8FF656CDFFFDEB387FFBD8356FF0101010A0000000200000000000000000000
        0000000000000000000000000002B98C67E8E9CDACFFF1DDC0FFF1DCC0FFF1DB
        BDFFF0DABCFFEFD9BCFFEFD8BBFFEFD7B8FFEED6B7FFEED5B5FFEDD3B3FFEDD2
        B0FFEBD1B0FFEBD1AEFFEACFADFFE9CDAAFFE9CCA9FFE9CAA7FFE8C9A4FFE9C9
        A4FFE7C7A2FFDCB48DFFAC774FE9010101070000000200000000000000000000
        000000000000000000000000000133271C41A17A59CACC9A6FFFCB986EFFCA97
        6DFFCA976CFFC9966BFFC8946AFFC89368FFC69267FFC59165FFC58F65FFC48E
        64FFC38E62FFC38C61FFC18B5FFFC18A5FFFC0885DFFBF875CFFBF865AFFBE85
        5AFFBE8458FF966946CC30211746010101040000000100000000000000000000
        0000000000000000000000000000000000010000000200000002000000030000
        0003000000030101010401010104010101040101010401010105010101050101
        0105010101050101010501010106010101060101010601010107010101070101
        0107010101070101010600000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000020000
        0002000000020000000100000001000000000000000000000000}
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = BtnConsultarSaldoClick
    end
    object cxGrid2: TcxGrid
      Left = 1
      Top = 98
      Width = 914
      Height = 175
      Hint = ''
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ExplicitLeft = 2
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = cxGridDBTableView1CellClick
        OnSelectionChanged = cxGridDBTableView1SelectionChanged
        DataController.DataSource = DADataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '$#,#0.00'
            Kind = skSum
          end
          item
            Format = '$#,#0.00'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        object cxGridDBTableView1RecID: TcxGridDBColumn
          DataBinding.FieldName = 'RecID'
          Visible = False
        end
        object cxGridDBTableView1LOTECUPONID: TcxGridDBColumn
          DataBinding.FieldName = 'LOTECUPONID'
          Options.Editing = False
          Width = 108
        end
        object cxGridDBTableView1FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
          Options.Editing = False
        end
        object cxGridDBTableView1STATUS: TcxGridDBColumn
          DataBinding.FieldName = 'STATUS'
          Options.Editing = False
          Width = 60
        end
        object cxGridDBTableView1TOTAL: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL'
          Options.Editing = False
        end
        object cxGridDBTableView1Column1: TcxGridDBColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              ImageIndex = 2
              Kind = bkGlyph
            end>
          Properties.Images = cxImageList1
          Properties.ReadOnly = False
          Properties.ViewStyle = vsButtonsOnly
          Properties.OnButtonClick = cxGridDBTableView1Column1PropertiesButtonClick
          Options.ShowEditButtons = isebAlways
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 274
    Hint = ''
    Align = alLeft
    Caption = 'Documentos Generados'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.LookAndFeel.NativeStyle = False
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    Height = 575
    Width = 345
    object Splitter1: TSplitter
      Left = 3
      Top = 289
      Width = 339
      Height = 3
      Cursor = crVSplit
      Align = alTop
      Color = clHighlight
      ParentColor = False
      ExplicitWidth = 276
    end
    object cxGroupBox2: TcxGroupBox
      Left = 3
      Top = 292
      Hint = ''
      Align = alClient
      Caption = 'Documentos pagados'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 273
      Width = 339
      object cxGrid3: TcxGrid
        Left = 2
        Top = 18
        Width = 335
        Height = 253
        Hint = ''
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView3: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDocumentosCliente
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '$#,#0.00'
              Kind = skSum
            end
            item
              Format = '$#,#0.00'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnSorting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          OptionsView.GridLineColor = clSilver
          OptionsView.GroupByBox = False
          object cxGridDBTableView3Column1: TcxGridDBColumn
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                ImageIndex = 2
                Kind = bkGlyph
              end>
            Properties.Images = cxImageList1
            Properties.ViewStyle = vsButtonsOnly
            Properties.OnButtonClick = cxGridDBTableView3Column1PropertiesButtonClick
            Options.ShowEditButtons = isebAlways
            Width = 41
          end
          object cxGridDBTableView3MovimientoID: TcxGridDBColumn
            Caption = 'MovID'
            DataBinding.FieldName = 'MovimientoID'
            Options.Editing = False
          end
          object cxGridDBTableView3Referencia: TcxGridDBColumn
            DataBinding.FieldName = 'Referencia'
            Options.Editing = False
            Width = 119
          end
          object cxGridDBTableView3TotalFactura: TcxGridDBColumn
            DataBinding.FieldName = 'TotalFactura'
            Options.Editing = False
            Width = 112
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
    object cxGrid4: TcxGrid
      Left = 3
      Top = 15
      Width = 339
      Height = 274
      Hint = ''
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGridDBTableView4: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsObtenDoctosDebe
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '$#,#0.00'
            Kind = skSum
          end
          item
            Format = '$#,#0.00'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GridLineColor = clSilver
        OptionsView.GroupByBox = False
        object cxGridDBColumn1: TcxGridDBColumn
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              ImageIndex = 2
              Kind = bkGlyph
            end>
          Properties.Images = cxImageList1
          Properties.ViewStyle = vsButtonsOnly
          Properties.OnButtonClick = cxGridDBColumn1PropertiesButtonClick
          Options.ShowEditButtons = isebAlways
          Width = 41
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = 'MovID'
          DataBinding.FieldName = 'MovimientoID'
          Options.Editing = False
        end
        object cxGridDBColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'Referencia'
          Options.Editing = False
          Width = 119
        end
        object cxGridDBColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'TotalFactura'
          Options.Editing = False
          Width = 112
        end
      end
      object cxGridLevel4: TcxGridLevel
        GridView = cxGridDBTableView4
      end
    end
  end
  object gbCliente: TcxGroupBox
    Left = 345
    Top = 274
    Hint = ''
    Align = alClient
    Caption = 'Cupones '
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBtnText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 2
    Height = 575
    Width = 571
    object Panel2: TPanel
      Left = 3
      Top = 15
      Width = 565
      Height = 550
      Align = alClient
      TabOrder = 0
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 563
        Height = 548
        Hint = ''
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsVales
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '$#,#0.00'
              Kind = skSum
            end
            item
              Format = '$#,#0.00'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnSorting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          OptionsView.GridLineColor = clSilver
          OptionsView.GroupByBox = False
          object cxGridDBTableView2RecID: TcxGridDBColumn
            DataBinding.FieldName = 'RecID'
            Visible = False
          end
          object cxGridDBTableView2CUPONID: TcxGridDBColumn
            DataBinding.FieldName = 'CUPONID'
          end
          object cxGridDBTableView2REFERENCIA: TcxGridDBColumn
            DataBinding.FieldName = 'REFERENCIA'
            Width = 207
          end
          object cxGridDBTableView2FECHAVALIDO: TcxGridDBColumn
            DataBinding.FieldName = 'FECHAVALIDO'
            Width = 95
          end
          object cxGridDBTableView2STATUS: TcxGridDBColumn
            DataBinding.FieldName = 'STATUS'
          end
          object cxGridDBTableView2BARRAS: TcxGridDBColumn
            DataBinding.FieldName = 'BARRAS'
            Width = 163
          end
          object cxGridDBTableView2CLAVE: TcxGridDBColumn
            DataBinding.FieldName = 'CLAVE'
            Width = 85
          end
          object cxGridDBTableView2IMPORTE: TcxGridDBColumn
            DataBinding.FieldName = 'IMPORTE'
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
  end
  object cdsLoteValeCliente: TDACDSDataTable
    Fields = <
      item
        Name = 'LOTECUPONID'
        DataType = datInteger
      end
      item
        Name = 'FECHA'
        DataType = datDateTime
      end
      item
        Name = 'STATUS'
        DataType = datString
        Size = 1
      end
      item
        Name = 'TOTAL'
        DataType = datFloat
      end>
    LogicalName = 'spObtenDatosLotesValesClientes'
    Params = <
      item
        Name = 'ClienteID'
        Value = '1'
        ParamType = daptInput
      end
      item
        Name = 'PERIODOINI'
        Value = '3'
        ParamType = daptInput
      end
      item
        Name = 'PERIODOFIN'
        Value = '3'
        ParamType = daptInput
      end
      item
        Name = 'EJERCICIO'
        Value = '2018'
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 488
    Top = 152
  end
  object dsDocumentosCliente: TDADataSource
    DataSet = cdsDocumentosCliente.Dataset
    DataTable = cdsDocumentosCliente
    Left = 240
    Top = 616
  end
  object cdsDocumentosCliente: TDACDSDataTable
    Fields = <
      item
        Name = 'ReciboID'
        DataType = datInteger
      end
      item
        Name = 'MovimientoID'
        DataType = datInteger
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 50
      end
      item
        Name = 'FechaVencimiento'
        DataType = datDateTime
      end
      item
        Name = 'TotalFactura'
        DataType = datFloat
      end
      item
        Name = 'AbonoFactura'
        DataType = datFloat
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
      end>
    LogicalName = 'spObtenDoctos'
    Params = <
      item
        Name = 'CLIENTEID'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'PERIODOINI'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'PERIODOFIN'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'EJERCICIO'
        Value = ''
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 64
    Top = 496
  end
  object dsVales: TDADataSource
    DataSet = cdsVales.Dataset
    DataTable = cdsVales
    Left = 376
    Top = 424
  end
  object cdsVales: TDACDSDataTable
    Fields = <
      item
        Name = 'CUPONID'
        DataType = datInteger
      end
      item
        Name = 'REFERENCIA'
        DataType = datString
        Size = 50
      end
      item
        Name = 'FECHAVALIDO'
        DataType = datDateTime
      end
      item
        Name = 'STATUS'
        DataType = datString
        Size = 1
      end
      item
        Name = 'BARRAS'
        DataType = datString
        Size = 16
      end
      item
        Name = 'CLAVE'
        DataType = datString
        Size = 1
      end
      item
        Name = 'IMPORTE'
        DataType = datFloat
      end>
    LogicalName = 'spObtenValesCliente'
    Params = <
      item
        Name = 'LoteCuponID'
        Value = ''
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 376
    Top = 376
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 13107768
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000030000
          000B000000120000001300000013000000140000001400000014000000140000
          0014000000140000001500000015000000140000000D000000030000000B1C11
          6CC3261796FF271696FF261695FF261594FF251594FF251594FF241394FF2412
          93FF241292FF231292FF231192FF231191FF190C68C50000000C0000000F2B1C
          9BFF384AD3FF2637CEFF3042D2FF4254D9FF3646D4FF2437CCFF2434CCFF3444
          D3FF3C4ED6FF2A3ACEFF202FC9FF1E2CC9FF251595FF000000120000000F3121
          A0FF4356D7FF374BD5FF3F4BCBFF2827ABFF363CBEFF3E4FD6FF3D4ED5FF353A
          BEFF2827ABFF3B45C9FF2F41D0FF2332CCFF291A99FF000000120000000E3529
          A5FF4E62DBFF444FCCFF605DBDFFEDEDF8FF8B89CEFF383CBCFF383CBBFF8B89
          CEFFEDEDF8FF5F5DBDFF3D47C9FF293ACEFF2D1F9EFF000000110000000D392F
          ABFF596FDFFF2722A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
          EDFFF3E9E2FFECE6EBFF2721A5FF2F42D1FF3326A3FF0000000F0000000C4036
          B1FF657AE2FF3135B7FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
          E2FFEADAD1FF7F6FACFF2E31B6FF3549D5FF372CA9FF0000000E0000000B453D
          B6FF6E83E5FF485EDCFF393BB7FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
          E5FF897DB8FF3739B6FF4054D9FF3D51D7FF3C33AFFF0000000D0000000A4A44
          BCFF788FE8FF6077E3FF4B4BBBFF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
          E8FF9087C5FF4949BAFF596FDFFF4359DAFF423AB4FF0000000C00000009504C
          C2FF92A7EEFF5655BCFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
          EAFFFAF5F2FF8F89CAFF5453BCFF6278E2FF4943B9FF0000000B000000086B6A
          D0FFADC1F4FF2A1E9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
          D8FFF4ECE7FFE5D9DCFF2A1D9BFF8B9EEBFF6563C9FF0000000A000000077577
          D6FFB1C6F5FF6E77D1FF5747A1FFCCB6BCFF7A68A8FF4E4CB7FF4F4EB8FF7A68
          A8FFCBB5BCFF5746A1FF6B75D0FF8EA1ECFF706ED0FF0000000900000006797B
          DAFFB5CAF6FF93A7EEFF7079D2FF2E229BFF5453BBFF93A7EEFF93A7EEFF5555
          BCFF2E219BFF6F77D1FF91A4EDFF90A3EDFF7475D4FF00000008000000057D80
          DEFFB9CDF6FFB9CDF6FFB9CCF6FFB9CCF6FFB9CDF6FFB8CCF6FFB8CCF6FFB7CC
          F6FFB7CBF6FFB6CBF6FFB5C9F6FFB5C9F6FF787AD8FF00000006000000036062
          A6C08184E1FF8183E0FF8083E0FF7F83DFFF7F83DFFF7F82DFFF7E81DFFF7E81
          DEFF7D81DEFF7D80DEFF7D7FDEFF7C7FDDFF5C5EA3C100000004000000000000
          0002000000030000000400000004000000040000000400000004000000040000
          0004000000040000000400000005000000050000000300000001}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000003C3C3CFF3C3C
          3CFF000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF000000000000
          0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000030000000C000000120000001400000014000000150000
          0015000000140000000D00000003000000000000000000000000000000000000
          00000000000000000009896256C2BD8A78FFBE8A78FFBD8A78FFBD8978FFBD89
          78FFBE8978FF876356C30000000B000000000000000000000000000000030000
          000E0000001500000021C08D7CFFF6EEE9FFF5EDE9FFF5EDE9FFF5ECE8FFF4EC
          E8FFF5ECE7FFBF8D7BFF00000026000000180000000F000000040000000C7B50
          42C5A76E5BFF9F6755FFC2917FFFF7F0ECFFE2B47DFFE2B37AFFE1B077FFE0AE
          72FFF6EEEAFFC2907FFF845545FF895847FF613E32C70000000E00000011BB7E
          6BFFECD9CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFE0B1
          76FFF7F0EDFFC59483FFE0CBBCFFEBD8CBFFB67763FF0000001400000010BE85
          71FFF1E5DAFFECDBD0FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
          35FF7A4835FF7A4835FFEBDBCFFFF1E2D8FFB97C69FF000000130000000EC28B
          78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7
          DDFFF2E7DEFFF2E7DDFFF2E5DEFFF5EDE6FFBC826EFF000000120000000CC793
          7FFFFAF4F1FFCDBEB8FF6F5448FF614337FF614035FF5F3F34FF5E3F33FF5D3D
          32FF5D3D34FF6A4C44FFCABCB6FFF9F5F1FFC18875FF000000100000000ACC99
          86FFFDFAFAFF7D6054FF745043FF744F43FF744E43FF734E43FF734E42FF724D
          42FF724C41FF724C40FF73584DFFFDFAFAFFC58F7CFF0000000E00000008CF9F
          8DFFFFFFFFFF7A5A4CFF8E695AFFF9F4F1FFF0E6E0FFF0E5DFFFEFE5DEFFEFE5
          DEFFF6EFEBFF866253FF704F43FFFFFFFFFFCA9683FF0000000B00000005BE95
          84E9F5ECE8FF866656FF977262FFFAF6F4FFF2E8E3FFF1E8E1FFF1E7E2FFF1E7
          E1FFF8F2EEFF8E6A5BFF7A5B4CFFF5EAE6FFBA8E7DEA00000008000000023429
          2545A78375CC947262FFA07B6AFFFCF9F8FFF3EBE6FFF4EAE5FFF2EAE5FFF3EA
          E3FFF9F5F3FF977263FF876658FFA68072CE3428234800000003000000000000
          0001000000030000000AC89B89FFFDFBFAFFF5EDE8FFF4EDE8FFF5EDE7FFF5EC
          E7FFFBF7F6FFC59685FF00000011000000040000000200000000000000000000
          00000000000000000005CA9E8DFFFEFCFCFFF7F0ECFFF6EFEBFFF7EFEBFFF5EF
          EAFFFCFAF8FFC89A89FF00000009000000000000000000000000000000000000
          00000000000000000003CDA291FFFEFEFDFFFEFDFDFFFEFDFCFFFEFCFCFFFEFC
          FBFFFDFBFAFFCB9F8DFF00000007000000000000000000000000000000000000
          000000000000000000019A796DBFCFA493FFCEA493FFCEA493FFCEA492FFCDA3
          91FFCDA391FF98786BC100000004000000000000000000000000}
      end>
  end
  object DADataSource1: TDADataSource
    DataSet = cdsLoteValeCliente.Dataset
    DataTable = cdsLoteValeCliente
    Left = 488
    Top = 200
  end
  object cdsCliente: TDACDSDataTable
    Fields = <
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
      end
      item
        Name = 'Estatus'
        DataType = datString
        Size = 1
      end
      item
        Name = 'FormaPagoID'
        DataType = datInteger
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
      end
      item
        Name = 'FormaCompraID'
        DataType = datInteger
      end>
    LogicalName = 'BuscaCliente'
    Params = <
      item
        Name = 'Cliente'
        DataType = datInteger
        Value = ''
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 784
    Top = 8
  end
  object dsCliente: TDADataSource
    DataSet = cdsCliente.Dataset
    DataTable = cdsCliente
    Left = 784
    Top = 56
  end
  object spObtenReciboID: TDACDSDataTable
    Fields = <
      item
        Name = 'RECIBOID'
        DataType = datInteger
      end>
    LogicalName = 'spObtenReciboID'
    Params = <
      item
        Name = 'MOVIMIENTOID'
        Value = ''
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 192
    Top = 520
  end
  object dsObtenReciboID: TDADataSource
    DataSet = spObtenReciboID.Dataset
    DataTable = spObtenReciboID
    Left = 240
    Top = 664
  end
  object dsObtenDoctosDebe: TDADataSource
    DataSet = cdsObtenDoctosDebe.Dataset
    DataTable = cdsObtenDoctosDebe
    Left = 64
    Top = 440
  end
  object cdsObtenDoctosDebe: TDACDSDataTable
    Fields = <
      item
        Name = 'ReciboID'
        DataType = datInteger
      end
      item
        Name = 'MovimientoID'
        DataType = datInteger
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 50
      end
      item
        Name = 'FechaVencimiento'
        DataType = datDateTime
      end
      item
        Name = 'TotalFactura'
        DataType = datFloat
      end
      item
        Name = 'AbonoFactura'
        DataType = datFloat
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
      end>
    LogicalName = 'spObtenDoctosDebe'
    Params = <
      item
        Name = 'CLIENTEID'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'PERIODOINI'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'PERIODOFIN'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'EJERCICIO'
        Value = ''
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 64
    Top = 392
  end
end
