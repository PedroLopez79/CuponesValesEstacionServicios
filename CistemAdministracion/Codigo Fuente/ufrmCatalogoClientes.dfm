inherited frmCatalogoClientes: TfrmCatalogoClientes
  Left = 73
  Top = 154
  Hint = 'Primer registro'
  Caption = 'Primer'
  ClientHeight = 551
  ClientWidth = 929
  Position = poDesigned
  ExplicitWidth = 929
  ExplicitHeight = 551
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 424
    Top = 184
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Label10: TLabel [1]
    Left = 360
    Top = 80
    Width = 38
    Height = 13
    Caption = 'Label10'
  end
  object Label17: TLabel [2]
    Left = 36
    Top = 152
    Width = 50
    Height = 13
    Caption = 'Ejercicio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel [3]
    Left = 36
    Top = 120
    Width = 50
    Height = 13
    Caption = 'Ejercicio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label19: TLabel [4]
    Left = 36
    Top = 88
    Width = 50
    Height = 13
    Caption = 'Ejercicio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label20: TLabel [5]
    Left = 36
    Top = 56
    Width = 50
    Height = 13
    Caption = 'Ejercicio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label26: TLabel [6]
    Left = 28
    Top = 281
    Width = 79
    Height = 13
    Caption = 'C'#243'digo Postal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label27: TLabel [7]
    Left = 28
    Top = 249
    Width = 108
    Height = 13
    Caption = 'Ciudad Delegaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label28: TLabel [8]
    Left = 28
    Top = 217
    Width = 43
    Height = 13
    Caption = 'Colonia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label29: TLabel [9]
    Left = 28
    Top = 186
    Width = 86
    Height = 13
    Caption = 'Calle / N'#250'mero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label30: TLabel [10]
    Left = 28
    Top = 153
    Width = 35
    Height = 13
    Caption = 'Grupo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label31: TLabel [11]
    Left = 28
    Top = 122
    Width = 103
    Height = 13
    Caption = 'Nombre Comercial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label32: TLabel [12]
    Left = 28
    Top = 89
    Width = 76
    Height = 13
    Caption = 'Raz'#243'n Social'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label33: TLabel [13]
    Left = 28
    Top = 57
    Width = 40
    Height = 13
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label43: TLabel [14]
    Left = 40
    Top = 75
    Width = 38
    Height = 13
    Caption = 'Label34'
  end
  object Label44: TLabel [15]
    Left = 40
    Top = 54
    Width = 38
    Height = 13
    Caption = 'Label34'
  end
  object Label71: TLabel [16]
    Left = 417
    Top = 161
    Width = 73
    Height = 13
    Caption = 'D'#237'a Facturar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pgcCatalogo: TcxPageControl
    Width = 929
    Height = 551
    ParentFont = False
    Properties.ActivePage = cxTabSheet4
    OnChange = pgcCatalogoChange
    OnPageChanging = pgcCatalogoPageChanging
    ExplicitWidth = 929
    ExplicitHeight = 551
    ClientRectBottom = 521
    ClientRectRight = 923
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 920
      ExplicitHeight = 518
      object Label1: TLabel [0]
        Left = 112
        Top = 120
        Width = 32
        Height = 13
        Caption = 'Label1'
      end
      object Label25: TLabel [1]
        Left = 544
        Top = 280
        Width = 38
        Height = 13
        Caption = 'Label25'
      end
      inherited dbgCatalogo: TcxGrid
        Width = 920
        Height = 518
        LookAndFeel.Kind = lfOffice11
        ExplicitWidth = 920
        ExplicitHeight = 518
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          OnCellClick = dbgCatalogoDBTableView1CellClick
          object dbgCatalogoDBTableView1ClienteID: TcxGridDBColumn
            DataBinding.FieldName = 'ClienteID'
          end
          object dbgCatalogoDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
          end
          object dbgCatalogoDBTableView1RazonSocial: TcxGridDBColumn
            DataBinding.FieldName = 'RazonSocial'
          end
          object dbgCatalogoDBTableView1Domicilio: TcxGridDBColumn
            DataBinding.FieldName = 'Domicilio'
          end
          object dbgCatalogoDBTableView1Grupo: TcxGridDBColumn
            DataBinding.FieldName = 'Grupo'
          end
          object dbgCatalogoDBTableView1Colonia: TcxGridDBColumn
            DataBinding.FieldName = 'Colonia'
          end
          object dbgCatalogoDBTableView1CodigoPostal: TcxGridDBColumn
            DataBinding.FieldName = 'CodigoPostal'
          end
          object dbgCatalogoDBTableView1Ciudad: TcxGridDBColumn
            DataBinding.FieldName = 'Ciudad'
          end
          object dbgCatalogoDBTableView1Telefono: TcxGridDBColumn
            DataBinding.FieldName = 'Telefono'
          end
          object dbgCatalogoDBTableView1RFC: TcxGridDBColumn
            DataBinding.FieldName = 'RFC'
          end
          object dbgCatalogoDBTableView1CuentaContable: TcxGridDBColumn
            DataBinding.FieldName = 'CuentaContable'
          end
          object dbgCatalogoDBTableView1PlazoPago: TcxGridDBColumn
            DataBinding.FieldName = 'PlazoPago'
          end
          object dbgCatalogoDBTableView1Estatus: TcxGridDBColumn
            DataBinding.FieldName = 'Estatus'
          end
          object dbgCatalogoDBTableView1FechaIngreso: TcxGridDBColumn
            DataBinding.FieldName = 'FechaIngreso'
          end
          object dbgCatalogoDBTableView1NIP: TcxGridDBColumn
            DataBinding.FieldName = 'NIP'
          end
          object dbgCatalogoDBTableView1FechaBaja: TcxGridDBColumn
            DataBinding.FieldName = 'FechaBaja'
          end
          object dbgCatalogoDBTableView1LimiteCredito: TcxGridDBColumn
            DataBinding.FieldName = 'LimiteCredito'
          end
          object dbgCatalogoDBTableView1Deposito: TcxGridDBColumn
            DataBinding.FieldName = 'Deposito'
          end
          object dbgCatalogoDBTableView1CambioCredito: TcxGridDBColumn
            DataBinding.FieldName = 'CambioCredito'
          end
          object dbgCatalogoDBTableView1CambioCreditoAnterior: TcxGridDBColumn
            DataBinding.FieldName = 'CambioCreditoAnterior'
          end
          object dbgCatalogoDBTableView1UltimoPago: TcxGridDBColumn
            DataBinding.FieldName = 'UltimoPago'
          end
          object dbgCatalogoDBTableView1DiaCorteSemana: TcxGridDBColumn
            DataBinding.FieldName = 'DiaCorteSemana'
          end
          object dbgCatalogoDBTableView1ClienteNuevo: TcxGridDBColumn
            DataBinding.FieldName = 'ClienteNuevo'
          end
          object dbgCatalogoDBTableView1TarjetaID: TcxGridDBColumn
            DataBinding.FieldName = 'TarjetaID'
          end
          object dbgCatalogoDBTableView1FormaPagoID: TcxGridDBColumn
            DataBinding.FieldName = 'FormaPagoID'
          end
          object dbgCatalogoDBTableView1GrupoFacturarID: TcxGridDBColumn
            DataBinding.FieldName = 'GrupoFacturarID'
          end
          object dbgCatalogoDBTableView1VendedorID: TcxGridDBColumn
            DataBinding.FieldName = 'VendedorID'
          end
          object dbgCatalogoDBTableView1GasolineroID: TcxGridDBColumn
            DataBinding.FieldName = 'GasolineroID'
          end
          object dbgCatalogoDBTableView1FormaCompraID: TcxGridDBColumn
            DataBinding.FieldName = 'FormaCompraID'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ImageIndex = 15
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 920
      ExplicitHeight = 518
      object cxGroupBox2: TcxGroupBox
        Left = 16
        Top = 11
        Hint = ''
        Caption = ' Cat'#225'logo de Clientes '
        TabOrder = 0
        Height = 470
        Width = 793
        object Label13: TLabel
          Left = 28
          Top = 57
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
        object Label14: TLabel
          Left = 28
          Top = 89
          Width = 63
          Height = 13
          Caption = 'Raz'#243'n Social'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label15: TLabel
          Left = 28
          Top = 122
          Width = 86
          Height = 13
          Caption = 'Nombre Comercial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel
          Left = 28
          Top = 153
          Width = 29
          Height = 13
          Caption = 'Grupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label21: TLabel
          Left = 28
          Top = 186
          Width = 71
          Height = 13
          Caption = 'Calle / N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label22: TLabel
          Left = 28
          Top = 217
          Width = 35
          Height = 13
          Caption = 'Colonia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label23: TLabel
          Left = 28
          Top = 249
          Width = 90
          Height = 13
          Caption = 'Ciudad Delegaci'#243'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label24: TLabel
          Left = 28
          Top = 281
          Width = 65
          Height = 13
          Caption = 'C'#243'digo Postal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label35: TLabel
          Left = 422
          Top = 281
          Width = 35
          Height = 13
          Caption = 'Estatus'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label36: TLabel
          Left = 421
          Top = 217
          Width = 83
          Height = 13
          Caption = 'Forma de Compra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label37: TLabel
          Left = 421
          Top = 186
          Width = 80
          Height = 13
          Caption = 'Agente de Venta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label38: TLabel
          Left = 421
          Top = 153
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
        object Label39: TLabel
          Left = 421
          Top = 122
          Width = 79
          Height = 13
          Caption = 'Cuenta Contable'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label40: TLabel
          Left = 421
          Top = 89
          Width = 21
          Height = 13
          Caption = 'RFC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label41: TLabel
          Left = 421
          Top = 57
          Width = 42
          Height = 13
          Caption = 'Tel'#233'fono'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label54: TLabel
          Left = 421
          Top = 249
          Width = 59
          Height = 13
          Caption = 'Clasificaci'#243'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label56: TLabel
          Left = 27
          Top = 313
          Width = 49
          Height = 13
          Caption = 'NoExterior'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label57: TLabel
          Left = 28
          Top = 342
          Width = 46
          Height = 13
          Caption = 'Localidad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label72: TLabel
          Left = 28
          Top = 371
          Width = 45
          Height = 13
          Caption = 'Municipio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label75: TLabel
          Left = 28
          Top = 399
          Width = 33
          Height = 13
          Caption = 'Estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label73: TLabel
          Left = 28
          Top = 429
          Width = 20
          Height = 13
          Caption = 'Pais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label74: TLabel
          Left = 421
          Top = 313
          Width = 24
          Height = 13
          Caption = 'email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object TXTCLIENTE: TcxDBTextEdit
          Left = 142
          Top = 54
          Hint = ''
          DataBinding.DataField = 'ClienteID'
          DataBinding.DataSource = dsCatalogo
          Enabled = False
          TabOrder = 0
          Width = 60
        end
        object TXTRAZON: TcxDBTextEdit
          Left = 142
          Top = 86
          Hint = ''
          DataBinding.DataField = 'RazonSocial'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 232
        end
        object TXTNOMBRE: TcxDBTextEdit
          Left = 142
          Top = 119
          Hint = ''
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 232
        end
        object TXTGRUPO: TcxDBTextEdit
          Left = 142
          Top = 149
          Hint = ''
          DataBinding.DataField = 'Grupo'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 232
        end
        object TXTDOMICILIO: TcxDBTextEdit
          Left = 142
          Top = 183
          Hint = ''
          DataBinding.DataField = 'Domicilio'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 4
          Width = 232
        end
        object TXTCOLONIA: TcxDBTextEdit
          Left = 142
          Top = 214
          Hint = ''
          DataBinding.DataField = 'Colonia'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Width = 232
        end
        object TXTCIUDAD: TcxDBTextEdit
          Left = 142
          Top = 246
          Hint = ''
          DataBinding.DataField = 'Ciudad'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 6
          Width = 232
        end
        object TXTCP: TcxDBTextEdit
          Left = 142
          Top = 278
          Hint = ''
          DataBinding.DataField = 'CodigoPostal'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 7
          Width = 60
        end
        object TXTCUENTACONTABLE: TcxDBTextEdit
          Left = 530
          Top = 119
          Hint = ''
          DataBinding.DataField = 'CuentaContable'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 15
          Width = 193
        end
        object TXTRFC: TcxDBTextEdit
          Left = 530
          Top = 86
          Hint = ''
          DataBinding.DataField = 'RFC'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 14
          Width = 193
        end
        object TXTTELEFONO: TcxDBTextEdit
          Left = 530
          Top = 54
          Hint = ''
          DataBinding.DataField = 'Telefono'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 13
          Width = 193
        end
        object LOOKUPCMFORMACOMPRA: TcxDBLookupComboBox
          Left = 530
          Top = 214
          Hint = ''
          DataBinding.DataField = 'FormaCompraID'
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'FormaCompraID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsFormaCompra
          Properties.MaxLength = 0
          TabOrder = 18
          Width = 238
        end
        object LOOKUPCMDIAFACTURAR: TcxDBLookupComboBox
          Left = 530
          Top = 149
          Hint = ''
          DataBinding.DataField = 'GrupoFacturarID'
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'GrupoFacturarID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsDiaFacturar
          Properties.MaxLength = 0
          TabOrder = 16
          Width = 238
        end
        object LOOKUPCMAGENTEVENTA: TcxDBLookupComboBox
          Left = 530
          Top = 183
          Hint = ''
          DataBinding.DataField = 'VendedorID'
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'VendedorID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsAgenteVenta
          Properties.MaxLength = 0
          TabOrder = 17
          Width = 238
        end
        object cxDBImageComboBox1: TcxDBImageComboBox
          Left = 530
          Top = 278
          Hint = ''
          DataBinding.DataField = 'Estatus'
          DataBinding.DataSource = dsCatalogo
          Properties.Items = <
            item
              Description = 'ACTIVO'
              ImageIndex = 0
              Value = 'A'
            end
            item
              Description = 'INACTIVO'
              Value = 'I'
            end
            item
              Description = 'CANCELADO'
              Value = 'C'
            end>
          TabOrder = 20
          Width = 238
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 530
          Top = 246
          Hint = ''
          DataBinding.DataField = 'ClasificacionID'
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'ClasificacionID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsClasificacion
          Properties.MaxLength = 0
          TabOrder = 19
          Width = 238
        end
        object cxDBCheckBox25: TcxDBCheckBox
          Left = 418
          Top = 360
          Hint = ''
          Caption = 'No Facturar Consumos de Cupones ?'
          DataBinding.DataField = 'FacturaConsumoCupon'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 22
          Transparent = True
          Width = 199
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 142
          Top = 306
          Hint = ''
          DataBinding.DataField = 'NoExterior'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 8
          Width = 75
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 142
          Top = 339
          Hint = ''
          DataBinding.DataField = 'Localidad'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 9
          Width = 193
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 142
          Top = 368
          Hint = ''
          DataBinding.DataField = 'Municipio'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 10
          Width = 193
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 142
          Top = 396
          Hint = ''
          DataBinding.DataField = 'Estado'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 11
          Width = 193
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 142
          Top = 426
          Hint = ''
          DataBinding.DataField = 'Pais'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 12
          Width = 193
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 530
          Top = 310
          Hint = ''
          DataBinding.DataField = 'email'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 21
          Width = 238
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Cr'#233'dito'
      ImageIndex = 41
      object cxGroupBox3: TcxGroupBox
        Left = 19
        Top = 11
        Hint = ''
        Caption = ' Datos Generales '
        TabOrder = 0
        OnClick = cxGroupBox3Click
        Height = 327
        Width = 649
        object Label34: TLabel
          Left = 16
          Top = 54
          Width = 68
          Height = 13
          Caption = 'Fecha Ingreso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label42: TLabel
          Left = 16
          Top = 87
          Width = 54
          Height = 13
          Caption = 'Fecha Baja'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label45: TLabel
          Left = 16
          Top = 120
          Width = 18
          Height = 13
          Caption = 'NIP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label46: TLabel
          Left = 16
          Top = 153
          Width = 72
          Height = 13
          Caption = 'Forma de Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label47: TLabel
          Left = 16
          Top = 187
          Width = 42
          Height = 13
          Caption = 'Dep'#243'sito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label48: TLabel
          Left = 16
          Top = 220
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
        object Label49: TLabel
          Left = 16
          Top = 253
          Width = 67
          Height = 13
          Caption = #218'ltimo Cambio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label50: TLabel
          Left = 16
          Top = 286
          Width = 74
          Height = 13
          Caption = 'Cambio Anterior'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label51: TLabel
          Left = 321
          Top = 54
          Width = 69
          Height = 13
          Caption = 'Plazo de Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label52: TLabel
          Left = 321
          Top = 87
          Width = 57
          Height = 13
          Caption = #218'ltimo Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label53: TLabel
          Left = 321
          Top = 120
          Width = 67
          Height = 13
          Caption = 'Cliente Nuevo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label55: TLabel
          Left = 321
          Top = 152
          Width = 44
          Height = 13
          Caption = 'Tasa IVA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object cxDBTextEdit19: TcxDBTextEdit
          Left = 122
          Top = 117
          Hint = ''
          DataBinding.DataField = 'NIP'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.PasswordChar = '*'
          Properties.ReadOnly = False
          TabOrder = 2
          Width = 145
        end
        object cxDBTextEdit21: TcxDBTextEdit
          Left = 122
          Top = 184
          Hint = ''
          DataBinding.DataField = 'Deposito'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 4
          Width = 145
        end
        object dbeLimiteCredito: TcxDBTextEdit
          Left = 122
          Top = 217
          Hint = ''
          DataBinding.DataField = 'LimiteCredito'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Width = 145
        end
        object cxDBTextEdit29: TcxDBTextEdit
          Left = 447
          Top = 51
          Hint = ''
          DataBinding.DataField = 'PlazoPago'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 8
          Width = 116
        end
        object DateUltimoPago: TcxDBDateEdit
          Left = 447
          Top = 84
          Hint = ''
          DataBinding.DataField = 'UltimoPago'
          DataBinding.DataSource = dsCatalogo
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
          Width = 116
        end
        object DateFechaIngreso: TcxDBDateEdit
          Left = 122
          Top = 51
          Hint = ''
          DataBinding.DataField = 'FechaIngreso'
          DataBinding.DataSource = dsCatalogo
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
          TabOrder = 0
          Width = 116
        end
        object DateFechaBaja: TcxDBDateEdit
          Left = 122
          Top = 84
          Hint = ''
          DataBinding.DataField = 'FechaBaja'
          DataBinding.DataSource = dsCatalogo
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
          Width = 116
        end
        object DateUltimoCambio: TcxDBDateEdit
          Left = 122
          Top = 250
          Hint = ''
          DataBinding.DataField = 'CambioCredito'
          DataBinding.DataSource = dsCatalogo
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
          TabOrder = 6
          Width = 116
        end
        object DateCambioanterior: TcxDBDateEdit
          Left = 122
          Top = 277
          Hint = ''
          DataBinding.DataField = 'CambioCreditoAnterior'
          DataBinding.DataSource = dsCatalogo
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
          TabOrder = 7
          Width = 116
        end
        object LOOKUPCMFORMAPAGO: TcxDBLookupComboBox
          Left = 122
          Top = 150
          Hint = ''
          DataBinding.DataField = 'FormaPagoID'
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'FormaPagoID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsFormaPago
          Properties.MaxLength = 0
          TabOrder = 3
          Width = 145
        end
        object cxDBImageComboBox2: TcxDBImageComboBox
          Left = 447
          Top = 117
          Hint = ''
          DataBinding.DataField = 'ClienteNuevo'
          DataBinding.DataSource = dsCatalogo
          Properties.Items = <
            item
              Description = 'SI'
              ImageIndex = 0
              Value = True
            end
            item
              Description = 'NO'
              Value = False
            end>
          TabOrder = 10
          Width = 116
        end
        object cxDBImageComboBox3: TcxDBImageComboBox
          Left = 448
          Top = 152
          Hint = ''
          DataBinding.DataField = 'Tasa'
          DataBinding.DataSource = dsCatalogo
          Properties.Items = <
            item
              Description = '10%'
              ImageIndex = 0
              Value = 10.000000000000000000
            end
            item
              Description = '15%'
              Value = 15.000000000000000000
            end
            item
              Description = '16%'
              Value = 16.000000000000000000
            end>
          TabOrder = 11
          Width = 113
        end
      end
    end
    object cxTabSheet7: TcxTabSheet
      Caption = 'Consultar Saldo '
      ImageIndex = 38
      TabVisible = False
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Hint = ''
        Align = alLeft
        Caption = '  Datos del Cliente  '
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Height = 518
        Width = 249
        object Label4: TLabel
          Left = 12
          Top = 137
          Width = 57
          Height = 13
          Caption = 'Saldo Inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 12
          Top = 201
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
        object Label6: TLabel
          Left = 12
          Top = 36
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
          Left = 12
          Top = 68
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
          Left = 12
          Top = 100
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
        object Label9: TLabel
          Left = 12
          Top = 232
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
          Left = 12
          Top = 265
          Width = 85
          Height = 13
          Caption = 'Cr'#233'dito Disponible'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 12
          Top = 169
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
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 136
          Top = 133
          Hint = ''
          DataBinding.DataField = 'SALDOINICIAL'
          DataBinding.DataSource = dsSaldo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          TabOrder = 3
          Width = 97
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 136
          Top = 197
          Hint = ''
          DataBinding.DataField = 'CONSUMOS'
          DataBinding.DataSource = dsSaldo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          TabOrder = 5
          Width = 97
        end
        object edtEjercicio: TcxSpinEdit
          Left = 100
          Top = 33
          Hint = ''
          Properties.MaxValue = 2006.000000000000000000
          Properties.MinValue = 2006.000000000000000000
          TabOrder = 0
          Value = 2006
          Width = 57
        end
        object cbPeriodoIni: TcxImageComboBox
          Left = 100
          Top = 64
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
          TabOrder = 1
          Width = 133
        end
        object cbPeriodoFin: TcxImageComboBox
          Left = 100
          Top = 96
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
          TabOrder = 2
          Width = 133
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 136
          Top = 229
          Hint = ''
          DataBinding.DataField = 'SALDO'
          DataBinding.DataSource = dsSaldo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          TabOrder = 6
          Width = 97
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 136
          Top = 261
          Hint = ''
          DataBinding.DataField = 'DISPONIBLE'
          DataBinding.DataSource = dsSaldo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          TabOrder = 7
          Width = 97
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 136
          Top = 165
          Hint = ''
          DataBinding.DataField = 'LIMITECREDITO'
          DataBinding.DataSource = dsSaldo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.TextColor = clNavy
          TabOrder = 4
          Width = 97
        end
        object BtnConsultarSaldo: TcxButton
          Left = 38
          Top = 320
          Width = 75
          Height = 25
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
          TabOrder = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = BtnConsultarSaldoClick
        end
        object BtnImprimir: TcxButton
          Left = 133
          Top = 320
          Width = 75
          Height = 25
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
          TabOrder = 9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = BtnImprimirClick
        end
      end
      object cxGrid2: TcxGrid
        Left = 249
        Top = 0
        Width = 671
        Height = 518
        Hint = ''
        Align = alClient
        TabOrder = 1
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
            Width = 85
          end
          object cxGrid1DBTableView1Abono: TcxGridDBColumn
            Caption = 'Abonos'
            DataBinding.FieldName = 'Abono'
            Width = 85
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Saldo'
            DataBinding.FieldName = 'SALDOPARCIAL'
            Width = 85
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object cxTabSheet8: TcxTabSheet
      Caption = 'Generar Tarjeta'
      ImageIndex = 45
      TabVisible = False
      object cxGroupBox9: TcxGroupBox
        Left = 16
        Top = 16
        Hint = ''
        Caption = ' Generer Tarjeta '
        TabOrder = 0
        Height = 424
        Width = 545
        object Label70: TLabel
          Left = 12
          Top = 24
          Width = 97
          Height = 13
          Caption = 'Seleccionar Tarjetas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblImpresora: TLabel
          Left = 256
          Top = 168
          Width = 53
          Height = 13
          Caption = 'Impresora:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object BtnProcesar: TcxButton
          Left = 344
          Top = 328
          Width = 75
          Height = 25
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
          TabOrder = 0
          OnClick = BtnProcesarClick
        end
        object ClbTarjetas: TcxCheckListBox
          Left = 12
          Top = 38
          Width = 218
          Height = 341
          Hint = ''
          EditValueFormat = cvfIndices
          Items = <>
          Style.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.Kind = lfOffice11
          TabOrder = 1
        end
        object rgOpciones: TcxRadioGroup
          Left = 258
          Top = 38
          Hint = ''
          Caption = ' Opciones '
          ParentFont = False
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'Imprimir Tarjeta'
              Value = '1'
            end
            item
              Caption = 'Carta NIP'
              Value = '2'
            end
            item
              Caption = 'Acuse de Recibo'
              Value = '3'
            end>
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          OnClick = rgOpcionesClick
          Height = 124
          Width = 268
        end
        object cbImpresora: TcxImageComboBox
          Left = 256
          Top = 184
          Hint = ''
          Properties.Items = <
            item
              Description = 'Eltron'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Eltron P310'
              Value = 1
            end
            item
              Description = 'DataCard 150i'
              Value = 2
            end
            item
              Description = 'DataCard SmartDriver'
              Value = 3
            end
            item
              Description = 'Evolis Tattoo'
              Value = 4
            end>
          TabOrder = 3
          Visible = False
          Width = 268
        end
        object ChkTodas: TcxCheckBox
          Left = 12
          Top = 385
          Hint = ''
          Caption = 'Seleccionar Todas'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Transparent = True
          OnClick = ChkTodasClick
          Width = 137
        end
      end
      object cxButton3: TcxButton
        Left = 832
        Top = 3
        Width = 75
        Height = 25
        Caption = 'cxButton3'
        LookAndFeel.NativeStyle = True
        TabOrder = 1
        Visible = False
        OnClick = cxButton3Click
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Contactos'
      ImageIndex = 39
      TabVisible = False
      object Label12: TLabel
        Left = 128
        Top = 104
        Width = 38
        Height = 13
        Caption = 'Label12'
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 920
        Height = 498
        Hint = ''
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGrid1DBCardView1: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsContactos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CardIndent = 7
          OptionsView.CardWidth = 273
          object cxGrid1DBCardView1Nombre: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Nombre'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Position.BeginsLayer = True
          end
          object cxGrid1DBCardView1Empresa: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Empresa'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Position.BeginsLayer = True
          end
          object cxGrid1DBCardView1Puesto: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Puesto'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Position.BeginsLayer = True
          end
          object cxGrid1DBCardView1Departamento: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Departamento'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Position.BeginsLayer = True
          end
          object cxGrid1DBCardView1FechaNacimiento: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FechaNacimiento'
            Position.BeginsLayer = True
          end
          object cxGrid1DBCardView1TelefonoOficina: TcxGridDBCardViewRow
            DataBinding.FieldName = 'TelefonoOficina'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Position.BeginsLayer = True
          end
          object cxGrid1DBCardView1Celular: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Celular'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Position.BeginsLayer = True
          end
          object cxGrid1DBCardView1email: TcxGridDBCardViewRow
            DataBinding.FieldName = 'email'
            Position.BeginsLayer = True
          end
          object cxGrid1DBCardView1email2: TcxGridDBCardViewRow
            DataBinding.FieldName = 'email2'
            Position.BeginsLayer = True
          end
          object cxGrid1DBCardView1Observaciones: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Observaciones'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekBlob
            Position.BeginsLayer = True
          end
          object cxGrid1DBCardView1MensajesEmail: TcxGridDBCardViewRow
            DataBinding.FieldName = 'MensajesEmail'
            Position.BeginsLayer = True
          end
          object cxGrid1DBCardView1MensajesCelular: TcxGridDBCardViewRow
            DataBinding.FieldName = 'MensajesCelular'
            Position.BeginsLayer = True
          end
          object cxGrid1DBCardView1TipoMensajes: TcxGridDBCardViewRow
            DataBinding.FieldName = 'TipoMensajes'
            Position.BeginsLayer = True
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBCardView1
        end
      end
      object pnlContactos: TPanel
        Left = 0
        Top = 498
        Width = 920
        Height = 20
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object cxDBNavigator1: TcxDBNavigator
          Left = 0
          Top = 1
          Width = 244
          Height = 21
          Hint = ''
          Buttons.CustomButtons = <>
          Buttons.First.Hint = 'Primer registro'
          Buttons.PriorPage.Hint = 'P'#225'gina anterior'
          Buttons.Prior.Hint = 'Contacto anterior'
          Buttons.Next.Hint = 'Siguiente Contacto'
          Buttons.NextPage.Hint = 'Siguiente p'#225'gina'
          Buttons.Last.Hint = #218'ltimo Contacto'
          Buttons.Insert.Hint = 'Agregar contacto'
          Buttons.Delete.Hint = 'Eliminar al contacto'
          Buttons.Edit.Visible = False
          Buttons.Post.Hint = 'Guardar cambios'
          Buttons.Post.Visible = True
          Buttons.Cancel.Hint = 'Cancelar cambios'
          Buttons.Refresh.Hint = 'Actualizar contactos'
          Buttons.SaveBookmark.Visible = False
          Buttons.GotoBookmark.Visible = False
          Buttons.Filter.Visible = False
          DataSource = dsContactos
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Veh'#237'culos'
      ImageIndex = 60
      TabVisible = False
    end
    object cxTabSheet6: TcxTabSheet
      Caption = 'Regenerar Saldo'
      ImageIndex = 6
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 0
        Hint = ''
        Align = alTop
        TabOrder = 0
        Height = 458
        Width = 920
        object cxGroupBox5: TcxGroupBox
          Left = 6
          Top = 16
          Hint = ''
          Align = alCustom
          Caption = ' Datos '
          TabOrder = 0
          Height = 156
          Width = 246
          object Label58: TLabel
            Left = 12
            Top = 32
            Width = 50
            Height = 13
            Caption = 'Ejercicio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label59: TLabel
            Left = 12
            Top = 78
            Width = 40
            Height = 13
            Caption = 'Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label60: TLabel
            Left = 145
            Top = 32
            Width = 14
            Height = 13
            Caption = 'ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cxDBTextEdit17: TcxDBTextEdit
            Left = 162
            Top = 29
            Hint = ''
            DataBinding.DataField = 'ClienteID'
            DataBinding.DataSource = dsSaldoEjercicio
            TabOrder = 0
            Width = 65
          end
          object cxDBTextEdit18: TcxDBTextEdit
            Left = 67
            Top = 75
            Hint = ''
            TabOrder = 1
            Width = 160
          end
          object cxButton1: TcxButton
            Left = 79
            Top = 116
            Width = 75
            Height = 25
            Caption = '&Actualizar'
            LookAndFeel.NativeStyle = True
            TabOrder = 2
          end
          object cxDBSpinEdit1: TcxDBSpinEdit
            Left = 68
            Top = 29
            Hint = ''
            DataBinding.DataField = 'Ejercicio'
            DataBinding.DataSource = dsSaldoEjercicio
            TabOrder = 3
            Width = 73
          end
        end
        object cxGroupBox6: TcxGroupBox
          Left = 7
          Top = 172
          Hint = ''
          Align = alCustom
          Caption = ' Saldos '
          TabOrder = 1
          Height = 195
          Width = 246
          object Label61: TLabel
            Left = 15
            Top = 30
            Width = 71
            Height = 13
            Caption = 'Saldo Inicial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label62: TLabel
            Left = 15
            Top = 68
            Width = 93
            Height = 13
            Caption = 'Suma de Cargos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label63: TLabel
            Left = 15
            Top = 113
            Width = 78
            Height = 13
            Caption = 'Suma Abonos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label64: TLabel
            Left = 15
            Top = 153
            Width = 64
            Height = 13
            Caption = 'Saldo Final'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cxDBTextEdit20: TcxDBTextEdit
            Left = 113
            Top = 27
            Hint = ''
            DataBinding.DataField = 'SaldoInicial'
            DataBinding.DataSource = dsSaldoEjercicio
            TabOrder = 0
            Width = 113
          end
          object cxDBTextEdit23: TcxDBTextEdit
            Left = 113
            Top = 65
            Hint = ''
            DataBinding.DataField = 'CargosAcumulados'
            DataBinding.DataSource = dsSaldoEjercicio
            TabOrder = 1
            Width = 113
          end
          object cxDBTextEdit24: TcxDBTextEdit
            Left = 113
            Top = 110
            Hint = ''
            DataBinding.DataField = 'AbonosAcumulados'
            DataBinding.DataSource = dsSaldoEjercicio
            TabOrder = 2
            Width = 113
          end
          object cxDBTextEdit30: TcxDBTextEdit
            Left = 113
            Top = 150
            Hint = ''
            DataBinding.DataField = 'SaldoFinal'
            DataBinding.DataSource = dsSaldoEjercicio
            TabOrder = 3
            Width = 113
          end
        end
        object cxGroupBox7: TcxGroupBox
          Left = 258
          Top = 16
          Hint = ''
          Align = alCustom
          Caption = ' Cargos '
          TabOrder = 2
          Height = 385
          Width = 326
          object Label65: TLabel
            Left = 106
            Top = 34
            Width = 63
            Height = 13
            Caption = 'Acumulado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label66: TLabel
            Left = 180
            Top = 34
            Width = 58
            Height = 13
            Caption = 'Consumos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label67: TLabel
            Left = 262
            Top = 34
            Width = 31
            Height = 13
            Caption = 'Otros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 11
            Top = 58
            Hint = ''
            Caption = ' Enero'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 121
          end
          object cxDBCheckBox2: TcxDBCheckBox
            Left = 11
            Top = 82
            Hint = ''
            Caption = ' Febrero'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 121
          end
          object cxDBCheckBox3: TcxDBCheckBox
            Left = 11
            Top = 106
            Hint = ''
            Caption = ' Marzo'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 121
          end
          object cxDBCheckBox4: TcxDBCheckBox
            Left = 11
            Top = 132
            Hint = ''
            Caption = ' Abril'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 121
          end
          object cxDBCheckBox5: TcxDBCheckBox
            Left = 11
            Top = 156
            Hint = ''
            Caption = ' Mayo'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 121
          end
          object cxDBCheckBox6: TcxDBCheckBox
            Left = 11
            Top = 181
            Hint = ''
            Caption = ' Junio'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 121
          end
          object cxDBCheckBox7: TcxDBCheckBox
            Left = 11
            Top = 206
            Hint = ''
            Caption = ' Julio'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 121
          end
          object cxDBCheckBox8: TcxDBCheckBox
            Left = 11
            Top = 232
            Hint = ''
            Caption = ' Agosto'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 7
            Width = 121
          end
          object cxDBCheckBox9: TcxDBCheckBox
            Left = 11
            Top = 257
            Hint = ''
            Caption = ' Septiembre'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 8
            Width = 121
          end
          object cxDBCheckBox10: TcxDBCheckBox
            Left = 11
            Top = 282
            Hint = ''
            Caption = ' Octubre'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 9
            Width = 121
          end
          object cxDBCheckBox11: TcxDBCheckBox
            Left = 11
            Top = 307
            Hint = ''
            Caption = ' Noviembre'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 10
            Width = 121
          end
          object cxDBCheckBox12: TcxDBCheckBox
            Left = 11
            Top = 332
            Hint = ''
            Caption = ' Diciembre'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 11
            Width = 121
          end
          object cxDBTextEdit31: TcxDBTextEdit
            Left = 105
            Top = 58
            Hint = ''
            TabOrder = 12
            Width = 65
          end
          object cxDBTextEdit32: TcxDBTextEdit
            Left = 176
            Top = 58
            Hint = ''
            TabOrder = 13
            Width = 65
          end
          object cxDBTextEdit33: TcxDBTextEdit
            Left = 246
            Top = 58
            Hint = ''
            TabOrder = 14
            Width = 65
          end
          object cxDBTextEdit34: TcxDBTextEdit
            Left = 105
            Top = 82
            Hint = ''
            TabOrder = 15
            Width = 65
          end
          object cxDBTextEdit35: TcxDBTextEdit
            Left = 176
            Top = 83
            Hint = ''
            TabOrder = 16
            Width = 65
          end
          object cxDBTextEdit36: TcxDBTextEdit
            Left = 246
            Top = 82
            Hint = ''
            TabOrder = 17
            Width = 65
          end
          object cxDBTextEdit37: TcxDBTextEdit
            Left = 105
            Top = 106
            Hint = ''
            TabOrder = 18
            Width = 65
          end
          object cxDBTextEdit38: TcxDBTextEdit
            Left = 176
            Top = 106
            Hint = ''
            TabOrder = 19
            Width = 65
          end
          object cxDBTextEdit39: TcxDBTextEdit
            Left = 245
            Top = 106
            Hint = ''
            TabOrder = 20
            Width = 65
          end
          object cxDBTextEdit40: TcxDBTextEdit
            Left = 105
            Top = 132
            Hint = ''
            TabOrder = 21
            Width = 65
          end
          object cxDBTextEdit41: TcxDBTextEdit
            Left = 176
            Top = 132
            Hint = ''
            TabOrder = 22
            Width = 65
          end
          object cxDBTextEdit42: TcxDBTextEdit
            Left = 245
            Top = 132
            Hint = ''
            TabOrder = 23
            Width = 65
          end
          object cxDBTextEdit43: TcxDBTextEdit
            Left = 176
            Top = 157
            Hint = ''
            TabOrder = 24
            Width = 65
          end
          object cxDBTextEdit44: TcxDBTextEdit
            Left = 105
            Top = 157
            Hint = ''
            TabOrder = 25
            Width = 65
          end
          object cxDBTextEdit45: TcxDBTextEdit
            Left = 246
            Top = 157
            Hint = ''
            TabOrder = 26
            Width = 65
          end
          object cxDBTextEdit46: TcxDBTextEdit
            Left = 176
            Top = 182
            Hint = ''
            TabOrder = 27
            Width = 65
          end
          object cxDBTextEdit47: TcxDBTextEdit
            Left = 105
            Top = 182
            Hint = ''
            TabOrder = 28
            Width = 65
          end
          object cxDBTextEdit48: TcxDBTextEdit
            Left = 246
            Top = 182
            Hint = ''
            TabOrder = 29
            Width = 65
          end
          object cxDBTextEdit49: TcxDBTextEdit
            Left = 176
            Top = 207
            Hint = ''
            TabOrder = 30
            Width = 65
          end
          object cxDBTextEdit50: TcxDBTextEdit
            Left = 105
            Top = 207
            Hint = ''
            TabOrder = 31
            Width = 65
          end
          object cxDBTextEdit51: TcxDBTextEdit
            Left = 246
            Top = 207
            Hint = ''
            TabOrder = 32
            Width = 65
          end
          object cxDBTextEdit55: TcxDBTextEdit
            Left = 246
            Top = 257
            Hint = ''
            TabOrder = 33
            Width = 65
          end
          object cxDBTextEdit56: TcxDBTextEdit
            Left = 176
            Top = 257
            Hint = ''
            TabOrder = 34
            Width = 65
          end
          object cxDBTextEdit57: TcxDBTextEdit
            Left = 105
            Top = 257
            Hint = ''
            TabOrder = 35
            Width = 65
          end
          object cxDBTextEdit58: TcxDBTextEdit
            Left = 105
            Top = 282
            Hint = ''
            TabOrder = 36
            Width = 65
          end
          object cxDBTextEdit59: TcxDBTextEdit
            Left = 176
            Top = 282
            Hint = ''
            TabOrder = 37
            Width = 65
          end
          object cxDBTextEdit60: TcxDBTextEdit
            Left = 246
            Top = 282
            Hint = ''
            TabOrder = 38
            Width = 65
          end
          object cxDBTextEdit61: TcxDBTextEdit
            Left = 105
            Top = 307
            Hint = ''
            TabOrder = 39
            Width = 65
          end
          object cxDBTextEdit62: TcxDBTextEdit
            Left = 176
            Top = 307
            Hint = ''
            TabOrder = 40
            Width = 65
          end
          object cxDBTextEdit63: TcxDBTextEdit
            Left = 246
            Top = 307
            Hint = ''
            TabOrder = 41
            Width = 65
          end
          object cxDBTextEdit64: TcxDBTextEdit
            Left = 105
            Top = 332
            Hint = ''
            TabOrder = 42
            Width = 65
          end
          object cxDBTextEdit65: TcxDBTextEdit
            Left = 176
            Top = 332
            Hint = ''
            TabOrder = 43
            Width = 65
          end
          object cxDBTextEdit66: TcxDBTextEdit
            Left = 246
            Top = 332
            Hint = ''
            TabOrder = 44
            Width = 65
          end
          object cxDBTextEdit52: TcxDBTextEdit
            Left = 105
            Top = 232
            Hint = ''
            TabOrder = 45
            Width = 65
          end
          object cxDBTextEdit53: TcxDBTextEdit
            Left = 176
            Top = 232
            Hint = ''
            TabOrder = 46
            Width = 65
          end
          object cxDBTextEdit54: TcxDBTextEdit
            Left = 246
            Top = 232
            Hint = ''
            TabOrder = 47
            Width = 65
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 105
            Top = 358
            Hint = ''
            TabOrder = 48
            Width = 65
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 176
            Top = 359
            Hint = ''
            TabOrder = 49
            Width = 65
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 246
            Top = 358
            Hint = ''
            TabOrder = 50
            Width = 65
          end
        end
        object cxGroupBox8: TcxGroupBox
          Left = 592
          Top = 16
          Hint = ''
          Caption = ' Abonos '
          TabOrder = 3
          Height = 385
          Width = 252
          object Label68: TLabel
            Left = 104
            Top = 34
            Width = 63
            Height = 13
            Caption = 'Acumulado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object Label69: TLabel
            Left = 181
            Top = 34
            Width = 47
            Height = 13
            Caption = 'Recibos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHotLight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object cxDBTextEdit67: TcxDBTextEdit
            Left = 103
            Top = 58
            Hint = ''
            TabOrder = 0
            Width = 65
          end
          object cxDBTextEdit68: TcxDBTextEdit
            Left = 103
            Top = 82
            Hint = ''
            TabOrder = 1
            Width = 65
          end
          object cxDBTextEdit69: TcxDBTextEdit
            Left = 103
            Top = 106
            Hint = ''
            TabOrder = 2
            Width = 65
          end
          object cxDBTextEdit70: TcxDBTextEdit
            Left = 103
            Top = 132
            Hint = ''
            TabOrder = 3
            Width = 65
          end
          object cxDBTextEdit71: TcxDBTextEdit
            Left = 103
            Top = 157
            Hint = ''
            TabOrder = 4
            Width = 65
          end
          object cxDBTextEdit72: TcxDBTextEdit
            Left = 103
            Top = 182
            Hint = ''
            TabOrder = 5
            Width = 65
          end
          object cxDBTextEdit73: TcxDBTextEdit
            Left = 103
            Top = 207
            Hint = ''
            TabOrder = 6
            Width = 65
          end
          object cxDBTextEdit74: TcxDBTextEdit
            Left = 103
            Top = 231
            Hint = ''
            TabOrder = 7
            Width = 65
          end
          object cxDBTextEdit75: TcxDBTextEdit
            Left = 103
            Top = 257
            Hint = ''
            TabOrder = 8
            Width = 65
          end
          object cxDBTextEdit76: TcxDBTextEdit
            Left = 103
            Top = 282
            Hint = ''
            TabOrder = 9
            Width = 65
          end
          object cxDBTextEdit77: TcxDBTextEdit
            Left = 103
            Top = 307
            Hint = ''
            TabOrder = 10
            Width = 65
          end
          object cxDBTextEdit78: TcxDBTextEdit
            Left = 103
            Top = 332
            Hint = ''
            TabOrder = 11
            Width = 65
          end
          object cxDBCheckBox13: TcxDBCheckBox
            Left = 12
            Top = 332
            Hint = ''
            Caption = ' Diciembre'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 12
            Width = 91
          end
          object cxDBCheckBox14: TcxDBCheckBox
            Left = 12
            Top = 307
            Hint = ''
            Caption = ' Noviembre'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 13
            Width = 91
          end
          object cxDBCheckBox15: TcxDBCheckBox
            Left = 12
            Top = 282
            Hint = ''
            Caption = ' Octubre'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 14
            Width = 91
          end
          object cxDBCheckBox16: TcxDBCheckBox
            Left = 12
            Top = 257
            Hint = ''
            Caption = ' Septiembre'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 15
            Width = 91
          end
          object cxDBCheckBox17: TcxDBCheckBox
            Left = 12
            Top = 232
            Hint = ''
            Caption = ' Agosto'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 16
            Width = 91
          end
          object cxDBCheckBox18: TcxDBCheckBox
            Left = 12
            Top = 207
            Hint = ''
            Caption = ' Julio'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 17
            Width = 91
          end
          object cxDBCheckBox19: TcxDBCheckBox
            Left = 12
            Top = 182
            Hint = ''
            Caption = ' Junio'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 18
            Width = 91
          end
          object cxDBCheckBox20: TcxDBCheckBox
            Left = 12
            Top = 157
            Hint = ''
            Caption = ' Mayo'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 19
            Width = 91
          end
          object cxDBCheckBox21: TcxDBCheckBox
            Left = 12
            Top = 132
            Hint = ''
            Caption = ' Abril'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 20
            Width = 91
          end
          object cxDBCheckBox22: TcxDBCheckBox
            Left = 12
            Top = 106
            Hint = ''
            Caption = ' Marzo'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 21
            Width = 91
          end
          object cxDBCheckBox23: TcxDBCheckBox
            Left = 12
            Top = 82
            Hint = ''
            Caption = ' Febrero'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 22
            Width = 91
          end
          object cxDBCheckBox24: TcxDBCheckBox
            Left = 12
            Top = 58
            Hint = ''
            Caption = ' Enero'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clHotLight
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 23
            Width = 91
          end
          object cxDBTextEdit79: TcxDBTextEdit
            Left = 172
            Top = 58
            Hint = ''
            TabOrder = 24
            Width = 65
          end
          object cxDBTextEdit80: TcxDBTextEdit
            Left = 172
            Top = 83
            Hint = ''
            TabOrder = 25
            Width = 65
          end
          object cxDBTextEdit81: TcxDBTextEdit
            Left = 172
            Top = 106
            Hint = ''
            TabOrder = 26
            Width = 65
          end
          object cxDBTextEdit82: TcxDBTextEdit
            Left = 172
            Top = 132
            Hint = ''
            TabOrder = 27
            Width = 65
          end
          object cxDBTextEdit83: TcxDBTextEdit
            Left = 172
            Top = 157
            Hint = ''
            TabOrder = 28
            Width = 65
          end
          object cxDBTextEdit84: TcxDBTextEdit
            Left = 172
            Top = 182
            Hint = ''
            TabOrder = 29
            Width = 65
          end
          object cxDBTextEdit85: TcxDBTextEdit
            Left = 172
            Top = 207
            Hint = ''
            TabOrder = 30
            Width = 65
          end
          object cxDBTextEdit86: TcxDBTextEdit
            Left = 172
            Top = 231
            Hint = ''
            TabOrder = 31
            Width = 65
          end
          object cxDBTextEdit87: TcxDBTextEdit
            Left = 172
            Top = 257
            Hint = ''
            TabOrder = 32
            Width = 65
          end
          object cxDBTextEdit88: TcxDBTextEdit
            Left = 172
            Top = 282
            Hint = ''
            TabOrder = 33
            Width = 65
          end
          object cxDBTextEdit89: TcxDBTextEdit
            Left = 172
            Top = 307
            Hint = ''
            TabOrder = 34
            Width = 65
          end
          object cxDBTextEdit90: TcxDBTextEdit
            Left = 172
            Top = 332
            Hint = ''
            TabOrder = 35
            Width = 65
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 103
            Top = 358
            Hint = ''
            TabOrder = 36
            Width = 65
          end
          object cxDBTextEdit10: TcxDBTextEdit
            Left = 172
            Top = 358
            Hint = ''
            TabOrder = 37
            Width = 65
          end
        end
        object cxButton2: TcxButton
          Left = 85
          Top = 372
          Width = 75
          Height = 25
          Caption = 'cxButton2'
          LookAndFeel.NativeStyle = True
          TabOrder = 4
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'ClienteID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
        Required = True
      end
      item
        Name = 'RazonSocial'
        DataType = datString
        Size = 70
        Required = True
      end
      item
        Name = 'Domicilio'
        DataType = datString
        Size = 90
        Required = True
      end
      item
        Name = 'Grupo'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Colonia'
        DataType = datString
        Size = 40
      end
      item
        Name = 'CodigoPostal'
        DataType = datString
        Size = 10
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Telefono'
        DataType = datString
        Size = 20
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 20
        Required = True
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
      end
      item
        Name = 'PlazoPago'
        DataType = datInteger
      end
      item
        Name = 'Estatus'
        DataType = datString
        Size = 1
        Required = True
      end
      item
        Name = 'FechaIngreso'
        DataType = datDateTime
        Required = True
      end
      item
        Name = 'NIP'
        DataType = datString
        Size = 8
        Required = True
      end
      item
        Name = 'FechaBaja'
        DataType = datDateTime
      end
      item
        Name = 'LimiteCredito'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Deposito'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'CambioCredito'
        DataType = datDateTime
      end
      item
        Name = 'CambioCreditoAnterior'
        DataType = datDateTime
      end
      item
        Name = 'UltimoPago'
        DataType = datDateTime
      end
      item
        Name = 'DiaCorteSemana'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'ClienteNuevo'
        DataType = datBoolean
        Required = True
      end
      item
        Name = 'Tasa'
        DataType = datFloat
      end
      item
        Name = 'TarjetaID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'FormaPagoID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'GrupoFacturarID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'VendedorID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'GasolineroID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'FormaCompraID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'ClasificacionID'
        DataType = datInteger
      end
      item
        Name = 'AfectarHistorico'
        DataType = datBoolean
      end
      item
        Name = 'Localidad'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Estado'
        DataType = datString
        Size = 50
      end
      item
        Name = 'NoExterior'
        DataType = datString
        Size = 20
      end
      item
        Name = 'NoInterior'
        DataType = datString
        Size = 10
      end
      item
        Name = 'Actualizado'
        DataType = datBoolean
      end
      item
        Name = 'email'
        DataType = datString
        Size = 100
      end
      item
        Name = 'DiaRevisionID'
        DataType = datInteger
      end
      item
        Name = 'DiaPagoID'
        DataType = datInteger
      end
      item
        Name = 'CuentaBancaria'
        DataType = datString
        Size = 50
      end
      item
        Name = 'INE'
        DataType = datBoolean
      end
      item
        Name = 'INETipoProceso'
        DataType = datString
        Size = 50
      end
      item
        Name = 'INETipoComite'
        DataType = datString
        Size = 50
      end
      item
        Name = 'INEidContabilidad'
        DataType = datInteger
      end
      item
        Name = 'INEClaveEntidad'
        DataType = datString
        Size = 5
      end
      item
        Name = 'INEEntidadAmbito'
        DataType = datString
        Size = 50
      end
      item
        Name = 'INEEntidadidContabilidad'
        DataType = datInteger
      end
      item
        Name = 'DescuentoPorcentaje'
        DataType = datFloat
      end
      item
        Name = 'FacturaUsoID'
        DataType = datInteger
      end
      item
        Name = 'MetodoPagoID'
        DataType = datInteger
      end
      item
        Name = 'FacturaConsumoCupon'
        DataType = datBoolean
      end
      item
        Name = 'Municipio'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Pais'
        DataType = datString
        Size = 50
      end>
    LogicalName = 'dbo.Cliente'
    MasterOptions = [moCascadeOpenClose]
    RemoteDataAdapter = DM.RemoteDataAdapter
    AfterScroll = cdsCatalogoAfterScroll
    BeforePost = cdsCatalogoBeforePost
    OnNewRecord = cdsCatalogoNewRecord
    Left = 640
    Top = 439
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
    Left = 640
    Top = 472
  end
  inherited tblCatalogo: TdxMemData
    Left = 232
    Top = 464
  end
  object cdsContactos: TDAMemDataTable
    DetailFields = 'ClienteID'
    Fields = <
      item
        Name = 'ContactoID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 80
      end
      item
        Name = 'Empresa'
        DataType = datString
        Size = 80
      end
      item
        Name = 'Puesto'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Departamento'
        DataType = datString
        Size = 50
      end
      item
        Name = 'FechaNacimiento'
        DataType = datDateTime
      end
      item
        Name = 'TelefonoOficina'
        DataType = datString
        Size = 25
      end
      item
        Name = 'Celular'
        DataType = datString
        Size = 25
      end
      item
        Name = 'email'
        DataType = datString
        Size = 70
      end
      item
        Name = 'email2'
        DataType = datString
        Size = 70
      end
      item
        Name = 'Observaciones'
        DataType = datMemo
      end
      item
        Name = 'MensajesCelular'
        DataType = datBoolean
      end
      item
        Name = 'MensajesEmail'
        DataType = datBoolean
      end
      item
        Name = 'TipoMensajes'
        DataType = datInteger
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
      end>
    LogicalName = 'dbo Contacto'
    MasterFields = 'ClienteID'
    MasterOptions = []
    MasterParamsMappings.Strings = (
      'ClienteID=ClienteID')
    MasterSource = dsCatalogo
    Params = <
      item
        Name = 'ClienteID'
        DataType = datInteger
        Value = 1
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    AfterPost = cdsContactosAfterPost
    OnNewRecord = cdsContactosNewRecord
    IndexDefs = <>
    Left = 607
    Top = 439
  end
  object dsContactos: TDADataSource
    DataSet = cdsContactos.Dataset
    DataTable = cdsContactos
    Left = 607
    Top = 472
  end
  object dsSaldo: TDADataSource
    DataSet = cdsSaldo.Dataset
    DataTable = cdsSaldo
    Left = 571
    Top = 472
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
        Alignment = taCenter
      end
      item
        Name = 'CARGO'
        DataType = datCurrency
        DisplayFormat = '#,#0.00'
        Alignment = taRightJustify
      end
      item
        Name = 'ABONO'
        DataType = datCurrency
        DisplayFormat = '#,#0.00'
        Alignment = taRightJustify
      end
      item
        Name = 'LIMITECREDITO'
        DataType = datCurrency
        DisplayFormat = '#,#0.00'
        Alignment = taRightJustify
      end
      item
        Name = 'SALDOINICIAL'
        DataType = datCurrency
        DisplayFormat = '#,#0.00'
        Alignment = taRightJustify
      end
      item
        Name = 'CONSUMOS'
        DataType = datCurrency
        DisplayFormat = '#,#0.00'
        Alignment = taRightJustify
      end
      item
        Name = 'TOTALCARGOS'
        DataType = datCurrency
        DisplayFormat = '#,#0.00'
        Alignment = taRightJustify
      end
      item
        Name = 'TOTALABONOS'
        DataType = datCurrency
        DisplayFormat = '#,#0.00'
        Alignment = taRightJustify
      end
      item
        Name = 'SUBTOTAL'
        DataType = datCurrency
        DisplayFormat = '#,#0.00'
        Alignment = taRightJustify
      end
      item
        Name = 'SALDO'
        DataType = datCurrency
        DisplayFormat = '#,#0.00'
        Alignment = taRightJustify
      end
      item
        Name = 'DISPONIBLE'
        DataType = datCurrency
        DisplayFormat = '#,#0.00'
        Alignment = taRightJustify
      end
      item
        Name = 'SALDOPARCIAL'
        DataType = datCurrency
        DisplayFormat = '#,#0.00'
        Alignment = taRightJustify
      end>
    LogicalName = 'spSaldos'
    Params = <
      item
        Name = 'Ejercicio'
        Value = '2006'
        ParamType = daptInput
      end
      item
        Name = 'Ini'
        Value = '1'
        ParamType = daptInput
      end
      item
        Name = 'Fin'
        Value = '12'
        ParamType = daptInput
      end
      item
        Name = 'ClienteIni'
        Value = '1'
        ParamType = daptInput
      end
      item
        Name = 'ClienteFin'
        Value = '9999'
        ParamType = daptInput
      end
      item
        Name = 'Grupo'
        DataType = datString
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'FormaCompraID'
        Value = '1'
        ParamType = daptInput
      end
      item
        Name = 'GrupoFacturarID'
        Value = '1'
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 571
    Top = 439
  end
  object cdsFormaCompra: TDAMemDataTable
    Fields = <
      item
        Name = 'FormaCompraID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
        Required = True
      end>
    LogicalName = 'dbo FormaCompra'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 502
    Top = 439
  end
  object dsFormaCompra: TDADataSource
    DataSet = cdsFormaCompra.Dataset
    DataTable = cdsFormaCompra
    Left = 502
    Top = 472
  end
  object cdsAgenteVenta: TDAMemDataTable
    Fields = <
      item
        Name = 'VendedorID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
        Required = True
      end>
    LogicalName = 'dbo Vendedor'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 296
    Top = 432
  end
  object dsAgenteVenta: TDADataSource
    DataSet = cdsAgenteVenta.Dataset
    DataTable = cdsAgenteVenta
    Left = 296
    Top = 464
  end
  object cdsDiaFacturar: TDAMemDataTable
    Fields = <
      item
        Name = 'GrupoFacturarID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
      end>
    LogicalName = 'dbo GrupoFacturar'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 264
    Top = 432
  end
  object dsDiaFacturar: TDADataSource
    DataSet = cdsDiaFacturar.Dataset
    DataTable = cdsDiaFacturar
    Left = 264
    Top = 464
  end
  object cdsFormaPago: TDAMemDataTable
    Fields = <
      item
        Name = 'FormaPagoID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
        Required = True
      end
      item
        Name = 'Codigo'
        DataType = datString
        Size = 5
      end>
    LogicalName = 'dbo FormaPago'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 535
    Top = 439
  end
  object dsFormaPago: TDADataSource
    DataSet = cdsFormaPago.Dataset
    DataTable = cdsFormaPago
    Left = 535
    Top = 472
  end
  object cdsSaldoEjercicio: TDAMemDataTable
    Fields = <
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'Ejercicio'
        DataType = datInteger
      end
      item
        Name = 'SaldoInicial'
        DataType = datFloat
      end
      item
        Name = 'CargosAcumulados'
        DataType = datFloat
      end
      item
        Name = 'AbonosAcumulados'
        DataType = datFloat
      end
      item
        Name = 'SaldoFinal'
        DataType = datFloat
      end
      item
        Name = 'Cargo01'
        DataType = datFloat
      end
      item
        Name = 'Cargo02'
        DataType = datFloat
      end
      item
        Name = 'Cargo03'
        DataType = datFloat
      end
      item
        Name = 'Cargo04'
        DataType = datFloat
      end
      item
        Name = 'Cargo05'
        DataType = datFloat
      end
      item
        Name = 'Cargo06'
        DataType = datFloat
      end
      item
        Name = 'Cargo07'
        DataType = datFloat
      end
      item
        Name = 'Cargo08'
        DataType = datFloat
      end
      item
        Name = 'Cargo09'
        DataType = datFloat
      end
      item
        Name = 'Cargo10'
        DataType = datFloat
      end
      item
        Name = 'Cargo11'
        DataType = datFloat
      end
      item
        Name = 'Cargo12'
        DataType = datFloat
      end
      item
        Name = 'Abono01'
        DataType = datFloat
      end
      item
        Name = 'Abono02'
        DataType = datFloat
      end
      item
        Name = 'Abono03'
        DataType = datFloat
      end
      item
        Name = 'Abono04'
        DataType = datFloat
      end
      item
        Name = 'Abono05'
        DataType = datFloat
      end
      item
        Name = 'Abono06'
        DataType = datFloat
      end
      item
        Name = 'Abono07'
        DataType = datFloat
      end
      item
        Name = 'Abono08'
        DataType = datFloat
      end
      item
        Name = 'Abono09'
        DataType = datFloat
      end
      item
        Name = 'Abono10'
        DataType = datFloat
      end
      item
        Name = 'Abono11'
        DataType = datFloat
      end
      item
        Name = 'Abono12'
        DataType = datFloat
      end>
    LogicalName = 'dbo CargoAbono'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 470
    Top = 440
  end
  object dsSaldoEjercicio: TDADataSource
    DataSet = cdsSaldoEjercicio.Dataset
    DataTable = cdsSaldoEjercicio
    Left = 470
    Top = 472
  end
  object cdsVehiculos: TDAMemDataTable
    Fields = <
      item
        Name = 'VehiculoID'
        DataType = datInteger
        InPrimaryKey = True
      end
      item
        Name = 'DigitoSeguridad'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Identificacion'
        DataType = datString
        Size = 30
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
      end>
    LogicalName = 'dbo VehiCheck'
    Params = <
      item
        Name = 'ClienteID'
        Value = '1'
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 439
    Top = 440
  end
  object dsVehiculos: TDADataSource
    DataSet = cdsVehiculos.Dataset
    DataTable = cdsVehiculos
    Left = 439
    Top = 472
  end
  object sdGenera: TSaveDialog
    Left = 568
    Top = 232
  end
  object cdsArchivo: TDAMemDataTable
    Fields = <
      item
        Name = 'VehiculoID'
        DataType = datInteger
      end
      item
        Name = 'NoCliente'
        DataType = datInteger
      end
      item
        Name = 'DigitoSeguridad'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
      end
      item
        Name = 'RazonSocial'
        DataType = datString
        Size = 70
      end
      item
        Name = 'Calle'
        DataType = datString
        Size = 80
      end
      item
        Name = 'Colonia'
        DataType = datString
        Size = 25
      end
      item
        Name = 'Delegacion'
        DataType = datString
        Size = 30
      end
      item
        Name = 'CP'
        DataType = datInteger
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Telefono'
        DataType = datString
        Size = 20
      end
      item
        Name = 'NIP'
        DataType = datString
        Size = 8
      end
      item
        Name = 'Identificacion'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Usuario'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Expiracion'
        DataType = datDateTime
      end
      item
        Name = 'Clasificacion'
        DataType = datInteger
      end>
    LogicalName = 'dbo GeneraArchivo'
    Params = <
      item
        Name = 'Cliente'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Vehiculo'
        Value = ''
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 408
    Top = 440
  end
  object dsArchivo: TDADataSource
    DataSet = cdsArchivo.Dataset
    DataTable = cdsArchivo
    Left = 408
    Top = 472
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clInactiveCaptionText
    end
  end
  object cdsClasificacion: TDAMemDataTable
    Fields = <
      item
        Name = 'ClasificacionID'
        DataType = datInteger
      end
      item
        Name = 'Codigo'
        DataType = datString
        Size = 5
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
      end>
    LogicalName = 'dbo Clasificacion'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 376
    Top = 440
  end
  object dsClasificacion: TDADataSource
    DataSet = cdsClasificacion.Dataset
    DataTable = cdsClasificacion
    Left = 376
    Top = 472
  end
end
