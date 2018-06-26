inherited frmFacturas: TfrmFacturas
  Caption = 'Facturas'
  ClientWidth = 606
  OnShow = FormShow
  ExplicitWidth = 606
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object pgcFacturas: TcxPageControl
    Left = 0
    Top = 0
    Width = 606
    Height = 449
    Hint = ''
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet4
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dmImages.Imagenes
    Properties.TabPosition = tpBottom
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabSlants.Kind = skCutCorner
    OnChange = pgcFacturasChange
    OnPageChanging = pgcFacturasPageChanging
    ClientRectBottom = 419
    ClientRectLeft = 3
    ClientRectRight = 600
    ClientRectTop = 3
    object cxTabSheet4: TcxTabSheet
      Caption = 'Generar Facturas'
      ImageIndex = 45
      object cxGroupBox4: TcxGroupBox
        Left = 2
        Top = 0
        Hint = ''
        Caption = '  Parametros para generar Documentos'
        Style.BorderStyle = ebsThick
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 249
        Width = 439
        object Label17: TLabel
          Left = 31
          Top = 39
          Width = 24
          Height = 13
          Caption = 'Serie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel
          Left = 31
          Top = 66
          Width = 73
          Height = 13
          Caption = 'Fecha de Corte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 31
          Top = 93
          Width = 75
          Height = 13
          Caption = 'Fecha Contable'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Left = 31
          Top = 120
          Width = 80
          Height = 13
          Caption = 'Grupo a Facturar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label21: TLabel
          Left = 131
          Top = 39
          Width = 22
          Height = 13
          Caption = 'Folio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object cxGroupBox5: TcxGroupBox
          Left = 290
          Top = 39
          Hint = ''
          Caption = '  Productos '
          TabOrder = 7
          Height = 126
          Width = 129
          object cxCheckBox1: TcxCheckBox
            Left = 11
            Top = 31
            Hint = ''
            Caption = 'MAGNA'
            ParentFont = False
            State = cbsChecked
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.TextColor = clWindowText
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 0
            Transparent = True
            Width = 94
          end
          object cxCheckBox2: TcxCheckBox
            Left = 11
            Top = 58
            Hint = ''
            Caption = 'PREMIUM'
            ParentFont = False
            State = cbsChecked
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.TextColor = clWindowText
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 1
            Transparent = True
            Width = 86
          end
          object cxCheckBox3: TcxCheckBox
            Left = 10
            Top = 84
            Hint = ''
            Caption = 'DIESEL'
            ParentFont = False
            State = cbsChecked
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.TextColor = clWindowText
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 2
            Transparent = True
            Width = 68
          end
        end
        object cxTextEdit2: TcxTextEdit
          Left = 162
          Top = 35
          Hint = ''
          Enabled = False
          TabOrder = 1
          OnExit = cxTextEdit2Exit
          Width = 90
        end
        object cxButton1: TcxButton
          Left = 26
          Top = 180
          Width = 75
          Height = 25
          Caption = 'Generar'
          LookAndFeel.Kind = lfOffice11
          OptionsImage.Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000120B0000120B0000000100000000000000000000FFFF
            FF00FF00FF00CCA3A3009F8F8F0096898900978B8B00968A8A008C8787008F8C
            8C00817E7E007F7E7E00E3E2E200DDDCDC00D8D7D700D7A5A300D1A1A000D8A4
            A100D3A3A000E2DAD900E2D9D700DDDAD900E6DDD900B6B7B7009E9F9F009D9E
            9E00999A9A0074EAFF0040DDFF0063E5FF0079EAFF0084EBFF0097E6F70038D9
            FF004AD8FC0041A5BD005EE1FF0056C6E10062DCFA007DE7FF0078B7C600A1EA
            FB009CD8E6000DCCFF000FCBFF000FC5FA0015CFFF0017B7E50023D0FF002FCB
            F6002DAACC003FD1F80044C7ED00369EBA0067D5F4006BD0EA0000C5FF0001C1
            FE0002C4FF0003C2FE0003BAF20009C6FE000EB7EB0023B8E60028BCE90037AF
            D40041B0D30052CBF3004DBBDE004CB4D40077C0D80005A0D8000999CE001399
            CA00138FBD001895C1001E9DC90021A5D1002B96BD002F9CC50039ACD70035A1
            C90040C1F00045A7CB005AB6D50070BCD7000487BC00078ABC000982B2000F82
            B000108ABA00188CBA001C9DCE001880AB001D8FBA001F90BB002EB5EA002692
            BC00288EB60035B2E3002F8FB400066A99000A6D9A000B72A0000D75A5000D72
            A1001190CB000F79AA001598D5001597D3001073A0001698D400117AA7001CA0
            DA00188EC00020AAE50028A9E0002683AB00015E8E000576AC00056695000668
            97000878AF00086FA0000973A500108BC6000F86BF00AAAAAA009E9E9E008989
            8900000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000020202020202
            025A4B790202020202020202025B4A6558494C67664E610202020202025E4D48
            573E315F424562020202026E5D5137413F2C3034542A4669020202534F50271B
            1C2E2B21241D405C7202027A6A63361E2523352F3A393B3C470202686F744328
            0B0B0B0B32383D2D5602026B6C71520B131806110B331F297502027C7E6D600B
            141906100B26205564020202787D730B141906120B22447602020202027B770B
            1619060F0B597002020202020202020B151A07030B020202020202020202020B
            80810A050B020202020202020202020B0E1709040B020202020202020202020B
            0D0C7F080B02020202020202020202020B0B0B0B020202020202}
          TabOrder = 5
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Left = 107
          Top = 180
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          LookAndFeel.Kind = lfOffice11
          OptionsImage.Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF000288010893010B99010C99010893000389FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000186010D9D021CAF021FB402
            1FB5021FB5021FB2021CB0010F9F000287FF00FFFF00FFFF00FFFF00FFFF00FF
            00038A0118B2021FB7021EB1021DB1021DB1021DB1021DB1021EB2021FB40219
            AC00048EFF00FFFF00FFFF00FF0001830118BB0220CC011CBF0015B4011AB002
            1DB1021DB1011CB00015AD011BB0021FB4021AAC000287FF00FFFF00FF010CA7
            0121E0011CD30726CC4966D70B28BC0018B00019AF0622B44A66CE0D2BB7011B
            B0021FB5010F9FFF00FF000187011CDC0120ED0017DC3655E2FFFFFFA4B4ED05
            20BB0119B28B9EE1FFFFFF4E6ACF0014AC021EB2021CB000038900069A0120F8
            011FF6001DE9031FE1738BEEFFFFFFA0B1ED93A5E7FFFFFF91A4E20823B4011B
            B0021DB1021FB4010895020CAA0A2EFE0323FB011FF6001CEB0018E1788FF0FF
            FFFFFFFFFF96A7EA021BB50019AF021DB1021DB10220B5010C99040EAC294DFE
            0D30FB011FFA001CF7011CEE8EA1F4FFFFFFFFFFFFA6B6EE0520C20018B6021D
            B1021DB10220B5010B980208A04162FB2F51FC001EFA0725FA8AA0FEFFFFFF8E
            A3F67991F2FFFFFFA3B4EE0C29C6011BB8021DB4021FB2000793000189314FEF
            7690FF0F2DFA3354FBFFFFFF91A5FE021EF30017E7738BF3FFFFFF4765E00016
            C2021FBD021CB2000288FF00FF0C1BBC819AFF728BFE1134FA3456FB0526FA00
            1CFA001CF40220ED3353ED0625DA011DD00220CB010DA1FF00FFFF00FF000189
            2943E6A5B7FF849AFC2341FB0323FA011FFA011FFA001EF7011BEE021FE50121
            E20118BF000184FF00FFFF00FFFF00FF01038F2A45E693A9FFABBBFF758FFE49
            69FC3658FB3153FC2346FC092CF70118CB00038BFF00FFFF00FFFF00FFFF00FF
            FF00FF0001890F1DBF3E5BF36B87FE728CFF5E7BFE395BFB1231EB010FB50001
            84FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000189030AA306
            11B2050FB10107A0000188FF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 6
        end
        object cxDateEdit1: TcxDateEdit
          Left = 131
          Top = 62
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
          TabOrder = 2
          Width = 121
        end
        object cxDateEdit2: TcxDateEdit
          Left = 131
          Top = 89
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
          TabOrder = 3
          Width = 121
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 131
          Top = 116
          Hint = ''
          DataBinding.DataField = 'USUARIOID'
          DataBinding.DataSource = dsFacturas
          Properties.KeyFieldNames = 'GrupoFacturarID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsGrupoFacturar
          TabOrder = 4
          Width = 121
        end
        object edtSerieGenera: TcxTextEdit
          Left = 67
          Top = 35
          Hint = ''
          Enabled = False
          TabOrder = 0
          Width = 58
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Impresion de Facturas'
      ImageIndex = 48
      object cxGroupBox3: TcxGroupBox
        Left = 19
        Top = 19
        Hint = ''
        Caption = 'Documento generado presione imprimir'
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 30
        Width = 436
        object Label14: TLabel
          Left = 12
          Top = 27
          Width = 24
          Height = 13
          Caption = 'Serie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label15: TLabel
          Left = 102
          Top = 27
          Width = 65
          Height = 13
          Caption = 'Factura inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label16: TLabel
          Left = 269
          Top = 27
          Width = 61
          Height = 13
          Caption = 'Factura Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object edtSerie: TcxTextEdit
          Left = 48
          Top = 23
          Hint = ''
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Visible = False
          Width = 41
        end
        object edtRangoFacturaIni: TcxCurrencyEdit
          Left = 189
          Top = 23
          Hint = ''
          EditValue = 0
          ParentFont = False
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#0'
          Style.BorderStyle = ebsOffice11
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Visible = False
          Width = 65
        end
        object edtRangoFacturaFin: TcxCurrencyEdit
          Left = 350
          Top = 23
          Hint = ''
          EditValue = '0'
          ParentFont = False
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#0'
          Style.BorderStyle = ebsOffice11
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Visible = False
          Width = 65
        end
        object cxCheckBox4: TcxCheckBox
          Left = 332
          Top = 46
          Hint = ''
          Caption = 'Imprimir Tickets'
          TabOrder = 3
          Transparent = True
          Visible = False
          Width = 101
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Cambio No. Factura'
      ImageIndex = 12
      TabVisible = False
      object cxGroupBox6: TcxGroupBox
        Left = 20
        Top = 11
        Hint = ''
        Caption = ' Datos para el cambio de factura '
        TabOrder = 0
        Height = 238
        Width = 549
        object Labe1: TLabel
          Left = 16
          Top = 32
          Width = 24
          Height = 13
          Caption = 'Serie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 136
          Top = 32
          Width = 22
          Height = 13
          Caption = 'Folio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 16
          Top = 64
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
        object Label3: TLabel
          Left = 16
          Top = 96
          Width = 30
          Height = 13
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 16
          Top = 128
          Width = 35
          Height = 13
          Caption = 'Importe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 16
          Top = 160
          Width = 24
          Height = 13
          Caption = 'Serie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel
          Left = 136
          Top = 160
          Width = 22
          Height = 13
          Caption = 'Folio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 272
          Top = 160
          Width = 93
          Height = 13
          Caption = 'Fecha de Impresion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object cxGroupBox1: TcxGroupBox
          Left = 8
          Top = 153
          Hint = ''
          Style.BorderStyle = ebsOffice11
          TabOrder = 0
          Height = 3
          Width = 515
        end
        object cxButton3: TcxButton
          Left = 264
          Top = 28
          Width = 60
          Height = 25
          Caption = 'Mostrar >>'
          LookAndFeel.Kind = lfOffice11
          TabOrder = 1
          OnClick = cxButton3Click
        end
        object cxTextEdit3: TcxTextEdit
          Left = 64
          Top = 64
          Hint = ''
          Enabled = False
          TabOrder = 2
          Width = 389
        end
        object cxTextEdit4: TcxTextEdit
          Left = 64
          Top = 96
          Hint = ''
          Enabled = False
          TabOrder = 3
          Width = 121
        end
        object cxTextEdit5: TcxTextEdit
          Left = 64
          Top = 128
          Hint = ''
          Enabled = False
          TabOrder = 4
          Width = 121
        end
        object cxTextEdit6: TcxTextEdit
          Left = 168
          Top = 32
          Hint = ''
          TabOrder = 5
          Width = 84
        end
        object btnAceptar: TcxButton
          Left = 56
          Top = 200
          Width = 75
          Height = 25
          Caption = 'Aceptar'
          Colors.Default = clWhite
          Colors.Normal = clWhite
          Colors.Hot = clWhite
          Colors.Pressed = clWhite
          Colors.Disabled = clWhite
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000066000000660000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00006600001EB231001FB1330000660000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000066000031C24F0022B738001AB02D0021B4370000660000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000066000047D36D003BCB5E0025A83B00006600001BA92E001DB132000066
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000066
            00004FD6790053DE7F0031B54D0000660000FF00FF0000660000179D27001EAE
            310000660000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000066000041C5630000660000FF00FF00FF00FF00FF00FF00FF00FF000066
            000019AA2B0000660000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000660000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000660000149D210000660000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000066000000660000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000066000000660000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 6
          OnClick = btnAceptarClick
        end
        object btnCancelar: TcxButton
          Left = 144
          Top = 200
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          Colors.Default = clWhite
          Colors.Normal = clWhite
          Colors.Hot = clWhite
          Colors.Pressed = clWhite
          Colors.Disabled = clWhite
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF000288010893010B99010C99010893000389FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000186010D9D021CAF021FB402
            1FB5021FB5021FB2021CB0010F9F000287FF00FFFF00FFFF00FFFF00FFFF00FF
            00038A0118B2021FB7021EB1021DB1021DB1021DB1021DB1021EB2021FB40219
            AC00048EFF00FFFF00FFFF00FF0001830118BB0220CC011CBF0015B4011AB002
            1DB1021DB1011CB00015AD011BB0021FB4021AAC000287FF00FFFF00FF010CA7
            0121E0011CD30726CC4966D70B28BC0018B00019AF0622B44A66CE0D2BB7011B
            B0021FB5010F9FFF00FF000187011CDC0120ED0017DC3655E2FFFFFFA4B4ED05
            20BB0119B28B9EE1FFFFFF4E6ACF0014AC021EB2021CB000038900069A0120F8
            011FF6001DE9031FE1738BEEFFFFFFA0B1ED93A5E7FFFFFF91A4E20823B4011B
            B0021DB1021FB4010895020CAA0A2EFE0323FB011FF6001CEB0018E1788FF0FF
            FFFFFFFFFF96A7EA021BB50019AF021DB1021DB10220B5010C99040EAC294DFE
            0D30FB011FFA001CF7011CEE8EA1F4FFFFFFFFFFFFA6B6EE0520C20018B6021D
            B1021DB10220B5010B980208A04162FB2F51FC001EFA0725FA8AA0FEFFFFFF8E
            A3F67991F2FFFFFFA3B4EE0C29C6011BB8021DB4021FB2000793000189314FEF
            7690FF0F2DFA3354FBFFFFFF91A5FE021EF30017E7738BF3FFFFFF4765E00016
            C2021FBD021CB2000288FF00FF0C1BBC819AFF728BFE1134FA3456FB0526FA00
            1CFA001CF40220ED3353ED0625DA011DD00220CB010DA1FF00FFFF00FF000189
            2943E6A5B7FF849AFC2341FB0323FA011FFA011FFA001EF7011BEE021FE50121
            E20118BF000184FF00FFFF00FFFF00FF01038F2A45E693A9FFABBBFF758FFE49
            69FC3658FB3153FC2346FC092CF70118CB00038BFF00FFFF00FFFF00FFFF00FF
            FF00FF0001890F1DBF3E5BF36B87FE728CFF5E7BFE395BFB1231EB010FB50001
            84FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000189030AA306
            11B2050FB10107A0000188FF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 7
        end
        object cxTextEdit7: TcxTextEdit
          Left = 168
          Top = 160
          Hint = ''
          TabOrder = 8
          Width = 84
        end
        object dtpFechaImpresion: TcxDateEdit
          Left = 392
          Top = 160
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
          TabOrder = 9
          Width = 113
        end
        object edtSerieCambio: TcxTextEdit
          Left = 64
          Top = 32
          Hint = ''
          TabOrder = 10
          Width = 58
        end
        object edtSerieNueva: TcxTextEdit
          Left = 64
          Top = 160
          Hint = ''
          TabOrder = 11
          Width = 58
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Otras Facturas'
      ImageIndex = 33
      TabVisible = False
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Hint = ''
        Align = alTop
        Caption = 'Datos de la Factura'
        TabOrder = 0
        Height = 147
        Width = 597
        object Label8: TLabel
          Left = 18
          Top = 42
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
        object Label9: TLabel
          Left = 18
          Top = 77
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
        object Label10: TLabel
          Left = 191
          Top = 42
          Width = 30
          Height = 13
          Caption = 'Fecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel
          Left = 330
          Top = 42
          Width = 68
          Height = 13
          Caption = 'Fecha de Imp.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label12: TLabel
          Left = 18
          Top = 117
          Width = 24
          Height = 13
          Caption = 'Serie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 190
          Top = 117
          Width = 22
          Height = 13
          Caption = 'Folio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object cxFolio: TcxDBTextEdit
          Left = 221
          Top = 113
          Hint = ''
          DataBinding.DataField = 'FOLIO'
          DataBinding.DataSource = dsFacturas
          TabOrder = 3
          OnExit = cxFolioExit
          Width = 71
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 229
          Top = 38
          Hint = ''
          DataBinding.DataField = 'FECHA'
          DataBinding.DataSource = dsFacturas
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
          TabOrder = 1
          OnExit = cxDBDateEdit2Exit
          Width = 95
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 413
          Top = 38
          Hint = ''
          DataBinding.DataField = 'FECHAIMPRESION'
          DataBinding.DataSource = dsFacturas
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
          TabOrder = 2
          Width = 95
        end
        object cxTextEdit1: TcxTextEdit
          Left = 92
          Top = 73
          Hint = ''
          Enabled = False
          TabOrder = 0
          Width = 501
        end
        object cxDBTextEdit9: TcxDBButtonEdit
          Left = 92
          Top = 38
          Hint = ''
          DataBinding.DataField = 'CLIENTEID'
          DataBinding.DataSource = dsFacturas
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxDBBuscarClientePropertiesButtonClick
          TabOrder = 4
          OnEnter = cxDBTextEdit9Enter
          OnExit = cxDBTextEdit9Exit
          Width = 95
        end
        object cxCheckGroup1: TcxCheckGroup
          Left = 352
          Top = 96
          Hint = ''
          Caption = 'Eliminar Factura...'
          Properties.Items = <>
          TabOrder = 5
          Height = 45
          Width = 241
        end
        object cxButton4: TcxButton
          Left = 502
          Top = 113
          Width = 78
          Height = 25
          Caption = 'Eliminar'
          Enabled = False
          LookAndFeel.Kind = lfOffice11
          OptionsImage.Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF000288010893010B99010C99010893000389FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000186010D9D021CAF021FB402
            1FB5021FB5021FB2021CB0010F9F000287FF00FFFF00FFFF00FFFF00FFFF00FF
            00038A0118B2021FB7021EB1021DB1021DB1021DB1021DB1021EB2021FB40219
            AC00048EFF00FFFF00FFFF00FF0001830118BB0220CC011CBF0015B4011AB002
            1DB1021DB1011CB00015AD011BB0021FB4021AAC000287FF00FFFF00FF010CA7
            0121E0011CD30726CC4966D70B28BC0018B00019AF0622B44A66CE0D2BB7011B
            B0021FB5010F9FFF00FF000187011CDC0120ED0017DC3655E2FFFFFFA4B4ED05
            20BB0119B28B9EE1FFFFFF4E6ACF0014AC021EB2021CB000038900069A0120F8
            011FF6001DE9031FE1738BEEFFFFFFA0B1ED93A5E7FFFFFF91A4E20823B4011B
            B0021DB1021FB4010895020CAA0A2EFE0323FB011FF6001CEB0018E1788FF0FF
            FFFFFFFFFF96A7EA021BB50019AF021DB1021DB10220B5010C99040EAC294DFE
            0D30FB011FFA001CF7011CEE8EA1F4FFFFFFFFFFFFA6B6EE0520C20018B6021D
            B1021DB10220B5010B980208A04162FB2F51FC001EFA0725FA8AA0FEFFFFFF8E
            A3F67991F2FFFFFFA3B4EE0C29C6011BB8021DB4021FB2000793000189314FEF
            7690FF0F2DFA3354FBFFFFFF91A5FE021EF30017E7738BF3FFFFFF4765E00016
            C2021FBD021CB2000288FF00FF0C1BBC819AFF728BFE1134FA3456FB0526FA00
            1CFA001CF40220ED3353ED0625DA011DD00220CB010DA1FF00FFFF00FF000189
            2943E6A5B7FF849AFC2341FB0323FA011FFA011FFA001EF7011BEE021FE50121
            E20118BF000184FF00FFFF00FFFF00FF01038F2A45E693A9FFABBBFF758FFE49
            69FC3658FB3153FC2346FC092CF70118CB00038BFF00FFFF00FFFF00FFFF00FF
            FF00FF0001890F1DBF3E5BF36B87FE728CFF5E7BFE395BFB1231EB010FB50001
            84FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000189030AA306
            11B2050FB10107A0000188FF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 6
          OnClick = cxButton4Click
        end
        object chkEliminar: TcxCheckBox
          Left = 362
          Top = 117
          Hint = ''
          TabOrder = 7
          Transparent = True
          OnClick = chkEliminarClick
          Width = 21
        end
        object cxButton5: TcxButton
          Left = 389
          Top = 113
          Width = 104
          Height = 25
          Caption = 'Buscar Factura'
          Enabled = False
          LookAndFeel.Kind = lfOffice11
          OptionsImage.Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          OptionsImage.NumGlyphs = 2
          TabOrder = 8
          OnClick = cxButton5Click
        end
        object cxSerie: TcxDBTextEdit
          Left = 92
          Top = 113
          Hint = ''
          DataBinding.DataField = 'SERIE'
          DataBinding.DataSource = dsFacturas
          TabOrder = 9
          OnExit = cxFolioExit
          Width = 71
        end
      end
      object cxPageControl1: TcxPageControl
        Left = 0
        Top = 147
        Width = 597
        Height = 269
        Hint = ''
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = cxTabSheet5
        Properties.CustomButtons.Buttons = <>
        Properties.TabSlants.Kind = skCutCorner
        TabSlants.Kind = skCutCorner
        ClientRectBottom = 265
        ClientRectLeft = 4
        ClientRectRight = 593
        ClientRectTop = 24
        object cxTabSheet5: TcxTabSheet
          Caption = 'Conceptos de la Factura'
          ImageIndex = 0
          object dbgDetalleFactura: TcxGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 589
            Height = 241
            Hint = ''
            Align = alClient
            TabOrder = 0
            OnEnter = dbgDetalleFacturaEnter
            LookAndFeel.Kind = lfStandard
            LookAndFeel.NativeStyle = True
            object cxGridDBTableView3: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsDetalleFactura
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '$###,###,###.#0'
                  Kind = skSum
                  Column = cxGridDBTableView3ImporteCalc
                end>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.Visible = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              Styles.ContentEven = cxStyle1
              object cxGridDBTableView3Cantidad: TcxGridDBColumn
                DataBinding.FieldName = 'Cantidad'
              end
              object cxGridDBTableView3ProductoID: TcxGridDBColumn
                Caption = 'Producto'
                DataBinding.FieldName = 'ProductoID'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.OnValidate = cxGridDBTableView3ProductoIDPropertiesValidate
              end
              object cxGridDBTableView3Descripcion: TcxGridDBColumn
                DataBinding.FieldName = 'Descripcion'
                Width = 271
              end
              object cxGridDBTableView3Precio: TcxGridDBColumn
                DataBinding.FieldName = 'Precio'
              end
              object cxGridDBTableView3ImporteCalc: TcxGridDBColumn
                DataBinding.FieldName = 'ImporteCalc'
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxGridDBTableView3
            end
          end
        end
        object cxTabSheet6: TcxTabSheet
          Caption = 'Tickets'
          ImageIndex = 1
          object cxDBMemo1: TcxDBMemo
            Left = 0
            Top = 0
            Hint = ''
            Align = alClient
            DataBinding.DataField = 'TICKETS'
            DataBinding.DataSource = dsFacturas
            TabOrder = 0
            Height = 241
            Width = 589
          end
        end
      end
    end
    object cxTabSheet7: TcxTabSheet
      Caption = 'Eliminar Factura'
      ImageIndex = 7
      object cxGroupBox7: TcxGroupBox
        Left = 19
        Top = 19
        Hint = ''
        Caption = ' Folio Factura '
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 70
        Width = 230
        object Label22: TLabel
          Left = 12
          Top = 31
          Width = 24
          Height = 13
          Caption = 'Serie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label23: TLabel
          Left = 110
          Top = 31
          Width = 22
          Height = 13
          Caption = 'Folio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object edtSerieElimina: TcxTextEdit
          Left = 48
          Top = 28
          Hint = ''
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 41
        end
        object edtFolioElimina: TcxCurrencyEdit
          Left = 144
          Top = 28
          Hint = ''
          EditValue = 0
          ParentFont = False
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = '#0'
          Style.BorderStyle = ebsOffice11
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          Width = 65
        end
      end
    end
  end
  object cdsFactura: TDACDSDataTable
    Fields = <
      item
        Name = 'FACTURAID'
        DataType = datInteger
      end
      item
        Name = 'SERIE'
        DataType = datString
        Size = 5
      end
      item
        Name = 'FOLIO'
        DataType = datInteger
      end
      item
        Name = 'FECHA'
        DataType = datDateTime
      end
      item
        Name = 'FECHAVENCIMIENTO'
        DataType = datDateTime
      end
      item
        Name = 'FECHAIMPRESION'
        DataType = datDateTime
      end
      item
        Name = 'EJERCICIO'
        DataType = datInteger
      end
      item
        Name = 'PERIODO'
        DataType = datInteger
      end
      item
        Name = 'SUBTOTAL'
        DataType = datFloat
      end
      item
        Name = 'IMPUESTO'
        DataType = datFloat
      end
      item
        Name = 'TOTAL'
        DataType = datFloat
      end
      item
        Name = 'SALDO'
        DataType = datFloat
      end
      item
        Name = 'TICKETS'
        DataType = datMemo
      end
      item
        Name = 'CLIENTEID'
        DataType = datInteger
      end
      item
        Name = 'USUARIOID'
        DataType = datInteger
      end
      item
        Name = 'MOVIMIENTOID'
        DataType = datInteger
      end>
    LogicalName = 'dbo Factura'
    Params = <
      item
        Name = 'Folio'
        Value = '4070'
        ParamType = daptInput
      end
      item
        Name = 'Serie'
        Value = 'a'
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 16
    Top = 376
  end
  object dsFacturas: TDADataSource
    DataSet = cdsFactura.Dataset
    DataTable = cdsFactura
    Left = 48
    Top = 376
  end
  object cdsDetalleFactura: TDACDSDataTable
    DetailFields = 'FacturaID'
    Fields = <
      item
        Name = 'DetalleFacturaID'
        DataType = datInteger
      end
      item
        Name = 'FacturaID'
        DataType = datInteger
      end
      item
        Name = 'Cantidad'
        DataType = datFloat
      end
      item
        Name = 'Precio'
        DataType = datFloat
      end
      item
        Name = 'Importe'
        DataType = datFloat
      end
      item
        Name = 'ProductoID'
        DataType = datInteger
      end
      item
        Name = 'Descripcion'
        DataType = datString
        Size = 80
      end
      item
        Name = 'ImporteCalc'
        DataType = datFloat
        LogChanges = False
        DisplayLabel = 'Importe'
        DisplayFormat = '#,#0.00'
        Calculated = True
      end>
    LogicalName = 'dbo DetalleFactura'
    MasterFields = 'FACTURAID'
    MasterParamsMappings.Strings = (
      'FacturaID=FACTURAID')
    MasterSource = dsFacturas
    Params = <
      item
        Name = 'FacturaID'
        Value = '0'
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    OnCalcFields = cdsDetalleFacturaCalcFields
    IndexDefs = <>
    Left = 16
    Top = 344
  end
  object dsDetalleFactura: TDADataSource
    DataSet = cdsDetalleFactura.Dataset
    DataTable = cdsDetalleFactura
    Left = 48
    Top = 344
  end
  object cdsProductos: TDACDSDataTable
    Fields = <
      item
        Name = 'Precio'
        DataType = datFloat
      end
      item
        Name = 'Descripcion'
        DataType = datString
        Size = 80
      end>
    LogicalName = 'obtenDescPrecio'
    Params = <
      item
        Name = 'param'
        Value = '1'
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 88
    Top = 312
  end
  object dsProductos: TDADataSource
    DataSet = cdsProductos.Dataset
    DataTable = cdsProductos
    Left = 120
    Top = 312
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
        Size = 15
      end
      item
        Name = 'FormaCompraID'
        DataType = datInteger
      end>
    LogicalName = 'BuscaCliente'
    Params = <
      item
        Name = 'Cliente'
        Value = '1'
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 88
    Top = 344
  end
  object dsCliente: TDADataSource
    DataSet = cdsCliente.Dataset
    DataTable = cdsCliente
    Left = 120
    Top = 344
  end
  object cdsObtenSeries: TDACDSDataTable
    Fields = <
      item
        Name = 'Serie'
        DataType = datString
        Size = 5
      end>
    LogicalName = 'obtenSerie'
    Params = <
      item
        Name = 'param'
        Value = 'FacturaID'
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 16
    Top = 312
  end
  object dsObtenSeries: TDADataSource
    DataSet = cdsObtenSeries.Dataset
    DataTable = cdsObtenSeries
    Left = 48
    Top = 312
  end
  object cdsGrupoFacturar: TDACDSDataTable
    Fields = <
      item
        Name = 'GrupoFacturarID'
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
    LogicalName = 'dbo GrupoFacturar'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 176
    Top = 312
  end
  object dsGrupoFacturar: TDADataSource
    DataSet = cdsGrupoFacturar.Dataset
    DataTable = cdsGrupoFacturar
    Left = 208
    Top = 312
  end
  object cdsDatosFact: TDACDSDataTable
    Fields = <
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
      end
      item
        Name = 'Total'
        DataType = datFloat
      end>
    LogicalName = 'obtenDatosFactura'
    Params = <
      item
        Name = 'Serie'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Folio'
        Value = ''
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 256
    Top = 312
  end
  object DADataSource1: TDADataSource
    DataSet = cdsDatosFact.Dataset
    DataTable = cdsDatosFact
    Left = 288
    Top = 312
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clGradientInactiveCaption
    end
  end
  object rdaUnidadesNoRegistradas: TDARemoteDataAdapter
    GetSchemaCall.RemoteService = DM.RemoteService
    GetDataCall.RemoteService = DM.RemoteService
    GetDataCall.MethodName = 'AbreDataSetReporte'
    GetDataCall.Params = <
      item
        Name = 'Result'
        DataType = rtBinary
        Flag = fResult
        Value = Null
      end
      item
        Name = 'SQL'
        DataType = rtString
        Flag = fIn
      end
      item
        Name = 'Parametros'
        DataType = rtUserDefined
        Flag = fIn
        TypeName = 'TParametros'
        Value = Null
      end>
    GetDataCall.Default = False
    GetDataCall.OutgoingTableNamesParameter = 'aTableNameArray'
    GetDataCall.OutgoingTableRequestInfosParameter = 'aTableRequestInfoArray'
    GetDataCall.IncomingDataParameter = 'Result'
    UpdateDataCall.RemoteService = DM.RemoteService
    GetScriptsCall.RemoteService = DM.RemoteService
    RemoteService = DM.RemoteService
    DataStreamer = DM.DataStreamer
    Left = 448
    Top = 312
  end
  object cdsUnidadesNoRegistradas: TDAMemDataTable
    Fields = <>
    LogicalName = 'Reporte'
    Params = <>
    RemoteDataAdapter = rdaUnidadesNoRegistradas
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 512
    Top = 312
  end
end
