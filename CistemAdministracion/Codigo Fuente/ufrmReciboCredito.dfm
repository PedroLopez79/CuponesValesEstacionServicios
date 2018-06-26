inherited frmReciboCredito: TfrmReciboCredito
  Caption = 'frmReciboCredito'
  ClientHeight = 568
  ClientWidth = 830
  ExplicitWidth = 830
  ExplicitHeight = 568
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 419
    Top = 59
    Height = 509
    Color = clHighlight
    ParentColor = False
    ExplicitLeft = 416
    ExplicitTop = 264
    ExplicitHeight = 100
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Hint = ''
    Align = alTop
    Caption = 'Folio'
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    Height = 59
    Width = 830
    object Labe1: TLabel
      Left = 12
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
    object edtFolio: TcxCurrencyEdit
      Left = 55
      Top = 23
      Hint = ''
      EditValue = 0
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '#'
      TabOrder = 0
      Width = 81
    end
  end
  object cxGroupBox6: TcxGroupBox
    Left = 0
    Top = 59
    Hint = ''
    Align = alLeft
    Style.BorderStyle = ebsNone
    TabOrder = 1
    Height = 509
    Width = 419
    object cxGroupBox1: TcxGroupBox
      Left = 2
      Top = 241
      Hint = ''
      Align = alClient
      Caption = 'Documentos que Adeuda'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Height = 266
      Width = 415
      object dbgFacturas: TcxGrid
        Left = 3
        Top = 15
        Width = 409
        Height = 241
        Hint = ''
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        object dbtvFacturas: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsReciboFactura
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '$#,#0.00'
              Kind = skSum
              Column = dbtvFacturasColumn2
            end>
          DataController.Summary.SummaryGroups = <>
          NewItemRow.InfoText = 'Haga click aqui para agregar un registro nuevo'
          NewItemRow.Visible = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.IncSearch = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Appending = True
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object dbtvFacturasColumn1: TcxGridDBColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'MovimientoID'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <>
            Width = 317
          end
          object dbtvFacturasColumn2: TcxGridDBColumn
            Caption = 'Importe'
            DataBinding.FieldName = 'Abono'
            Width = 77
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = dbtvFacturas
        end
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 2
      Top = 5
      Hint = ''
      Align = alTop
      Caption = 'Pagar el Documento'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      ExplicitLeft = 3
      ExplicitTop = 6
      Height = 236
      Width = 415
      object Label1: TLabel
        Left = 3
        Top = 134
        Width = 31
        Height = 13
        Caption = 'Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 3
        Top = 204
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
      object Label12: TLabel
        Left = 3
        Top = 29
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
      object Label14: TLabel
        Left = 3
        Top = 64
        Width = 82
        Height = 13
        Caption = 'Fecha Aplicacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 3
        Top = 99
        Width = 52
        Height = 13
        Caption = 'Referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 3
        Top = 169
        Width = 37
        Height = 13
        Caption = 'Cheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object dtpFecha: TcxDBDateEdit
        Left = 108
        Top = 25
        Hint = ''
        DataBinding.DataField = 'FechaMovimiento'
        DataBinding.DataSource = dsRecibo
        Enabled = False
        TabOrder = 0
        Width = 121
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 108
        Top = 60
        Hint = ''
        DataBinding.DataField = 'FechaAplicacion'
        DataBinding.DataSource = dsRecibo
        TabOrder = 1
        Width = 121
      end
      object dbeCheque: TcxDBTextEdit
        Left = 108
        Top = 165
        Hint = ''
        DataBinding.DataField = 'Cheque'
        DataBinding.DataSource = dsRecibo
        Properties.CharCase = ecUpperCase
        TabOrder = 4
        Width = 205
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 108
        Top = 95
        Hint = ''
        DataBinding.DataField = 'Referencia'
        DataBinding.DataSource = dsRecibo
        Properties.CharCase = ecUpperCase
        TabOrder = 2
        Width = 205
      end
      object dbeImporte: TcxDBCurrencyEdit
        Left = 108
        Top = 200
        Hint = ''
        DataBinding.DataField = 'Importe'
        DataBinding.DataSource = dsRecibo
        TabOrder = 5
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 108
        Top = 130
        Hint = ''
        DataBinding.DataField = 'BancoID'
        DataBinding.DataSource = dsRecibo
        Properties.KeyFieldNames = 'BancoID'
        Properties.ListColumns = <
          item
            FieldName = 'Nombre'
          end>
        Properties.ListSource = dsBancos
        TabOrder = 3
        Width = 205
      end
    end
  end
  object cxGroupBox5: TcxGroupBox
    Left = 422
    Top = 59
    Hint = ''
    Align = alClient
    ParentFont = False
    Style.BorderStyle = ebsNone
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlack
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Height = 509
    Width = 408
    object gbCliente: TcxGroupBox
      Left = 2
      Top = 5
      Hint = ''
      Align = alClient
      Caption = 'Datos Cliente (opcional Consulta de Saldo)'
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
      TabOrder = 0
      Height = 502
      Width = 404
      object Panel1: TPanel
        Left = 3
        Top = 15
        Width = 398
        Height = 274
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 3
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
          Left = 3
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
          Left = 46
          Top = 89
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
          Left = 155
          Top = 89
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
          Left = 155
          Top = 117
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
        object Label4: TLabel
          Left = 182
          Top = 143
          Width = 71
          Height = 13
          Caption = 'Saldo Inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 173
          Top = 170
          Width = 80
          Height = 13
          Caption = 'L'#237'mite de Cr'#233'dito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 160
          Top = 197
          Width = 93
          Height = 13
          Caption = 'Cosumos x Facturar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label9: TLabel
          Left = 226
          Top = 224
          Width = 27
          Height = 13
          Caption = 'Saldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel
          Left = 149
          Top = 251
          Width = 104
          Height = 13
          Caption = 'Cr'#233'dito Disponible'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object edtCliente: TcxCurrencyEdit
          Left = 53
          Top = 17
          Hint = ''
          EditValue = 0
          Properties.DisplayFormat = '#'
          TabOrder = 0
          OnEnter = edtClienteEnter
          OnExit = edtClienteExit
          OnKeyDown = edtClienteKeyDown
          Width = 97
        end
        object edtNombre: TcxTextEdit
          Left = 53
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
          Left = 92
          Top = 86
          Hint = ''
          Properties.MaxValue = 2006.000000000000000000
          Properties.MinValue = 2006.000000000000000000
          TabOrder = 2
          Value = 2006
          Width = 57
        end
        object cbPeriodoIni: TcxImageComboBox
          Left = 227
          Top = 85
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
          Left = 227
          Top = 113
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
          Left = 10
          Top = 138
          Width = 133
          Height = 64
          Caption = '&Consultar'
          LookAndFeel.NativeStyle = False
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = BtnConsultarSaldoClick
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 263
          Top = 140
          Hint = ''
          DataBinding.DataField = 'SALDOINICIAL'
          DataBinding.DataSource = dsSaldo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          TabOrder = 6
          Width = 97
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 263
          Top = 167
          Hint = ''
          DataBinding.DataField = 'LIMITECREDITO'
          DataBinding.DataSource = dsSaldo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          TabOrder = 7
          Width = 97
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 263
          Top = 194
          Hint = ''
          DataBinding.DataField = 'CONSUMOS'
          DataBinding.DataSource = dsSaldo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          TabOrder = 8
          Width = 97
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 263
          Top = 221
          Hint = ''
          DataBinding.DataField = 'SALDO'
          DataBinding.DataSource = dsSaldo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          TabOrder = 9
          Width = 97
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 263
          Top = 248
          Hint = ''
          DataBinding.DataField = 'DISPONIBLE'
          DataBinding.DataSource = dsSaldo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          TabOrder = 10
          Width = 97
        end
        object BtnImprimir: TcxButton
          Left = 10
          Top = 208
          Width = 133
          Height = 58
          Caption = '&Imprimir'
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6AAAA7A7A19F9F6C6A6A6C
            6A6A6C6A6AE5E3E36C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FF
            6C6A6ADAD9D9A19F9FA19F9FA19F9F3736363535356C6D6DBFBFBFE1E2E2B7B6
            B66C6A6A6C6A6A6C6A6AFF00FF6C6A6AD4D3D3CACACA8E8C8C8E8C8C8E8C8C3C
            3B3B0A090A0707070B0B0B0707077A7A7ABBBBBB6C6A6AFF00FF6C6A6ACACACA
            CACACA8E8C8CD7D4D4CECBCBBFBCBCB1AFAFA3A0A08886865E5B5C0707070909
            090808086C6A6A7673736C6A6ACACACA8E8C8CEFEEEEFFFEFEFBFAFAE3E0E1DE
            DEDEDEDDDDCFCECEBDBCBCADABAB8B89895856567A78787573736C6A6A8E8C8C
            FFFFFFFEFCFCFAFAFAD5D4D5989193A09899B2ABACC4C0C1D7D7D7D8D8D8C7C6
            C6B7B6B6918F8F6C6969FF00FF6C6A6A6C6A6AEDEBEBB1A6A77A6F728A838896
            92959690919D97989A93959E9899BBBABAD1D1D1C2C2C26C6A6AFF00FFFF00FF
            FF00FF6C6A6ABB897FA7876D8B6F647D67606F62657973798F8B8EA9A3A4CBCA
            CAC1C1C16C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE3B4FFD39FE9
            B281C99973BA916CBD8281807D7E6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFBD8281FFE0B8FFD3A7FFD09DFFCE90FFC688BD8281FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08683FFE7CFFFE0C0FFD9B2FF
            D3A5FFD099BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFBD8281FEEBD8FFE6CCFFDEBDFFD8B1FED3A4BD8281FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFFFF2FFFFF2FFEBD8FFE5CAFF
            E1BDF3C7A7BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            BD8281BD8281BD8281FBEFE2FBE3CFFBDDC2BD8281FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD
            8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object Panel2: TPanel
        Left = 3
        Top = 289
        Width = 398
        Height = 203
        Align = alClient
        TabOrder = 1
        object cxGrid2: TcxGrid
          Left = 1
          Top = 1
          Width = 396
          Height = 201
          Hint = ''
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsSaldo
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '$#,#0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1Cargo
              end
              item
                Format = '$#,#0.00'
                Kind = skSum
                Column = cxGrid1DBTableView1Abono
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnSorting = False
            OptionsData.Editing = False
            OptionsSelection.MultiSelect = True
            OptionsView.Footer = True
            OptionsView.GridLineColor = clSilver
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1CargoAbonoID: TcxGridDBColumn
              Caption = 'Mvto.'
              DataBinding.FieldName = 'DOCUMENTOID'
              Width = 66
            end
            object cxGrid1DBTableView1FechaMovimiento: TcxGridDBColumn
              Caption = 'Fecha'
              DataBinding.FieldName = 'FECHA'
              Width = 70
            end
            object cxGrid1DBTableView1Referencia: TcxGridDBColumn
              DataBinding.FieldName = 'Referencia'
              Width = 175
            end
            object cxGrid1DBTableView1Cargo: TcxGridDBColumn
              Caption = 'Cargos'
              DataBinding.FieldName = 'Cargo'
              Styles.Content = DM.cxStyle3
              Width = 85
            end
            object cxGrid1DBTableView1Abono: TcxGridDBColumn
              Caption = 'Abonos'
              DataBinding.FieldName = 'Abono'
              Styles.Content = DM.cxStyle4
              Width = 85
            end
            object cxGrid1DBTableView1Column1: TcxGridDBColumn
              Caption = 'Saldo'
              DataBinding.FieldName = 'SALDOPARCIAL'
              Width = 85
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
  object cdsRecibo: TDACDSDataTable
    Fields = <
      item
        Name = 'ReciboID'
        DataType = datInteger
      end
      item
        Name = 'Folio'
        DataType = datInteger
      end
      item
        Name = 'FechaMovimiento'
        DataType = datDateTime
      end
      item
        Name = 'Ejercicio'
        DataType = datInteger
      end
      item
        Name = 'Periodo'
        DataType = datInteger
      end
      item
        Name = 'Cheque'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Importe'
        DataType = datFloat
      end
      item
        Name = 'CuentaContableCliente'
        DataType = datString
        Size = 15
      end
      item
        Name = 'FechaCaptura'
        DataType = datDateTime
      end
      item
        Name = 'FechaAplicacion'
        DataType = datDateTime
      end
      item
        Name = 'UsuarioID'
        DataType = datInteger
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'MovimientoID'
        DataType = datInteger
      end
      item
        Name = 'BancoID'
        DataType = datInteger
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end>
    LogicalName = 'dbo Recibo'
    Params = <
      item
        Name = 'Recibo'
        DataType = datInteger
        Value = '1'
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    AfterPost = cdsReciboAfterPost
    BeforePost = cdsReciboBeforePost
    OnNewRecord = cdsReciboNewRecord
    IndexDefs = <>
    Left = 328
    Top = 8
  end
  object dsRecibo: TDADataSource
    DataSet = cdsRecibo.Dataset
    DataTable = cdsRecibo
    Left = 360
    Top = 8
  end
  object cdsReciboFactura: TDACDSDataTable
    Fields = <
      item
        Name = 'SaldodocumentoID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
        Required = True
      end
      item
        Name = 'FechaVencimiento'
        DataType = datDateTime
        Required = True
      end
      item
        Name = 'Cargo'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Abono'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 50
        Required = True
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'MovimientoID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'ReciboID'
        DataType = datInteger
      end
      item
        Name = 'BancoID'
        DataType = datInteger
      end>
    LogicalName = 'dbo SaldoDocumento'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    OnNewRecord = cdsReciboFacturaNewRecord
    IndexDefs = <>
    Left = 392
    Top = 8
  end
  object dsReciboFactura: TDADataSource
    DataSet = cdsReciboFactura.Dataset
    DataTable = cdsReciboFactura
    Left = 424
    Top = 8
  end
  object cdsBancos: TDACDSDataTable
    Fields = <
      item
        Name = 'BancoID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
        Required = True
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 50
      end>
    LogicalName = 'dbo Banco'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 456
    Top = 8
  end
  object dsBancos: TDADataSource
    DataSet = cdsBancos.Dataset
    DataTable = cdsBancos
    Left = 488
    Top = 8
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
    Left = 328
    Top = 40
  end
  object dsCliente: TDADataSource
    DataSet = cdsCliente.Dataset
    DataTable = cdsCliente
    Left = 360
    Top = 40
  end
  object cdsMovimientos: TDACDSDataTable
    Fields = <
      item
        Name = 'MovimientoID'
        DataType = datInteger
        InPrimaryKey = True
      end
      item
        Name = 'FechaMovimiento'
        DataType = datDateTime
      end
      item
        Name = 'FechaVencimiento'
        DataType = datDateTime
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Ejercicio'
        DataType = datInteger
      end
      item
        Name = 'Periodo'
        DataType = datInteger
      end
      item
        Name = 'CargoAbono'
        DataType = datString
        Size = 1
      end
      item
        Name = 'Cargo'
        DataType = datFloat
      end
      item
        Name = 'Abono'
        DataType = datFloat
      end
      item
        Name = 'FechaRegistro'
        DataType = datDateTime
      end
      item
        Name = 'Origen'
        DataType = datString
        Size = 5
      end
      item
        Name = 'AfectaSaldos'
        DataType = datBoolean
      end
      item
        Name = 'TipoMovimientoID'
        DataType = datString
        Size = 10
      end
      item
        Name = 'UsuarioID'
        DataType = datInteger
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
      end>
    LogicalName = 'dbo Movimiento'
    Params = <
      item
        Name = 'Movimiento'
        Value = '1'
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 392
    Top = 40
  end
  object dsMovimientos: TDADataSource
    DataSet = cdsMovimientos.Dataset
    DataTable = cdsMovimientos
    Left = 424
    Top = 40
  end
  object cdsTipoMovimiento: TDACDSDataTable
    Fields = <
      item
        Name = 'TipoMovimientoID'
        DataType = datString
        Size = 10
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Descripcion'
        DataType = datString
        Size = 70
        Required = True
      end
      item
        Name = 'CargoAbono'
        DataType = datString
        Size = 1
        Required = True
      end>
    LogicalName = 'dbo TipoMovimiento'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 456
    Top = 40
  end
  object dsTipoMovimiento: TDADataSource
    DataSet = cdsTipoMovimiento.Dataset
    DataTable = cdsTipoMovimiento
    Left = 488
    Top = 40
  end
  object cdsSaldo: TDAMemDataTable
    Fields = <
      item
        Name = 'CLIENTE'
        DataType = datInteger
      end
      item
        Name = 'NOMBRE'
        DataType = datString
        Size = 100
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 25
      end
      item
        Name = 'CALLE'
        DataType = datString
        Size = 100
      end
      item
        Name = 'FECHA'
        DataType = datDateTime
      end
      item
        Name = 'REFERENCIA'
        DataType = datString
        Size = 80
      end
      item
        Name = 'DOCUMENTOID'
        DataType = datInteger
      end
      item
        Name = 'CARGO'
        DataType = datFloat
      end
      item
        Name = 'ABONO'
        DataType = datFloat
      end
      item
        Name = 'LIMITECREDITO'
        DataType = datFloat
      end
      item
        Name = 'SALDOINICIAL'
        DataType = datFloat
      end
      item
        Name = 'CONSUMOS'
        DataType = datFloat
      end
      item
        Name = 'TOTALCARGOS'
        DataType = datFloat
      end
      item
        Name = 'TOTALABONOS'
        DataType = datFloat
      end
      item
        Name = 'SUBTOTAL'
        DataType = datFloat
      end
      item
        Name = 'SALDO'
        DataType = datFloat
      end
      item
        Name = 'DISPONIBLE'
        DataType = datFloat
      end
      item
        Name = 'SALDOPARCIAL'
        DataType = datFloat
      end>
    LogicalName = 'spSaldos'
    Params = <
      item
        Name = 'Ejercicio'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Ini'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Fin'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'ClienteIni'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'ClienteFin'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Grupo'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'FormaCompraID'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'GrupoFacturarID'
        Value = ''
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 771
    Top = 407
  end
  object dsSaldo: TDADataSource
    DataSet = cdsSaldo.Dataset
    DataTable = cdsSaldo
    Left = 771
    Top = 440
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
end