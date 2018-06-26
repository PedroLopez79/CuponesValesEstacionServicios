inherited frmCatalogoProveedor: TfrmCatalogoProveedor
  Caption = 'frmCatalogoProveedor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    inherited cxTabSheet1: TcxTabSheet
      inherited dbgCatalogo: TcxGrid
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          object dbgCatalogoDBTableView1ProveedorId: TcxGridDBColumn
            DataBinding.FieldName = 'ProveedorId'
          end
          object dbgCatalogoDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
          end
          object dbgCatalogoDBTableView1Calle: TcxGridDBColumn
            DataBinding.FieldName = 'Calle'
          end
          object dbgCatalogoDBTableView1Colonia: TcxGridDBColumn
            DataBinding.FieldName = 'Colonia'
          end
          object dbgCatalogoDBTableView1Ciudad: TcxGridDBColumn
            DataBinding.FieldName = 'Ciudad'
          end
          object dbgCatalogoDBTableView1RFC: TcxGridDBColumn
            DataBinding.FieldName = 'RFC'
          end
          object dbgCatalogoDBTableView1Telefono: TcxGridDBColumn
            DataBinding.FieldName = 'Telefono'
          end
          object dbgCatalogoDBTableView1Fax: TcxGridDBColumn
            DataBinding.FieldName = 'Fax'
          end
          object dbgCatalogoDBTableView1CodPostal: TcxGridDBColumn
            DataBinding.FieldName = 'CodPostal'
          end
          object dbgCatalogoDBTableView1Email: TcxGridDBColumn
            DataBinding.FieldName = 'Email'
          end
          object dbgCatalogoDBTableView1Referencia: TcxGridDBColumn
            DataBinding.FieldName = 'Referencia'
          end
          object dbgCatalogoDBTableView1DiasPlazo: TcxGridDBColumn
            DataBinding.FieldName = 'DiasPlazo'
          end
          object dbgCatalogoDBTableView1CuentaContable: TcxGridDBColumn
            DataBinding.FieldName = 'CuentaContable'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 616
      ExplicitHeight = 416
      object GrpBoxDatos: TcxGroupBox
        Left = 17
        Top = 5
        Hint = ''
        Caption = ' Datos '
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 0
        Height = 348
        Width = 473
        object LblId: TcxLabel
          Left = 16
          Top = 18
          Hint = ''
          Caption = 'ID Proveedor'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object LblCiudd: TcxLabel
          Left = 248
          Top = 154
          Hint = ''
          Caption = 'Ciudad'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object LblNombre: TcxLabel
          Left = 16
          Top = 61
          Hint = ''
          Caption = 'Nombre'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object LblCalle: TcxLabel
          Left = 16
          Top = 108
          Hint = ''
          Caption = 'Calle'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object LblColonia: TcxLabel
          Left = 16
          Top = 154
          Hint = ''
          Caption = 'Colonia'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object LblTelefono: TcxLabel
          Left = 248
          Top = 202
          Hint = ''
          Caption = 'Telefono'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object LblRfc: TcxLabel
          Left = 16
          Top = 202
          Hint = ''
          Caption = 'R.F.C.'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object LblFax: TcxLabel
          Left = 16
          Top = 250
          Hint = ''
          Caption = 'Fax'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object LblEmail: TcxLabel
          Left = 248
          Top = 250
          Hint = ''
          Caption = 'E-mail'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object TxtId: TcxDBTextEdit
          Left = 16
          Top = 34
          Hint = ''
          DataBinding.DataField = 'ProveedorId'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 0
          Width = 121
        end
        object TxtNombre: TcxDBTextEdit
          Left = 16
          Top = 78
          Hint = ''
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 1
          Width = 439
        end
        object TxtCalle: TcxDBTextEdit
          Left = 16
          Top = 124
          Hint = ''
          DataBinding.DataField = 'Calle'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 2
          Width = 439
        end
        object TxtColonia: TcxDBTextEdit
          Left = 16
          Top = 170
          Hint = ''
          DataBinding.DataField = 'Colonia'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 3
          Width = 207
        end
        object TxtCiudad: TcxDBTextEdit
          Left = 248
          Top = 170
          Hint = ''
          DataBinding.DataField = 'Ciudad'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 4
          Width = 207
        end
        object TxtRfc: TcxDBTextEdit
          Left = 16
          Top = 218
          Hint = ''
          DataBinding.DataField = 'RFC'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 5
          Width = 207
        end
        object TxtTelefono: TcxDBTextEdit
          Left = 248
          Top = 218
          Hint = ''
          DataBinding.DataField = 'Telefono'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 6
          Width = 207
        end
        object TxtFax: TcxDBTextEdit
          AlignWithMargins = True
          Left = 16
          Top = 266
          Hint = ''
          DataBinding.DataField = 'Fax'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 7
          Width = 207
        end
        object TxtEmail: TcxDBTextEdit
          Left = 248
          Top = 266
          Hint = ''
          DataBinding.DataField = 'Email'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 8
          Width = 207
        end
        object LblCuentaContable: TcxLabel
          Left = 16
          Top = 295
          Hint = ''
          Caption = 'Cuenta Contable'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object TxtCuentaContable: TcxDBTextEdit
          Left = 16
          Top = 311
          Hint = ''
          DataBinding.DataField = 'CuentaContable'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 9
          Width = 207
        end
        object txtDiasPlazo: TcxDBTextEdit
          Left = 248
          Top = 311
          Hint = ''
          DataBinding.DataField = 'DiasPlazo'
          DataBinding.DataSource = dsCatalogo
          Properties.Alignment.Horz = taRightJustify
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 20
          Width = 207
        end
        object cxLabel1: TcxLabel
          Left = 248
          Top = 295
          Hint = ''
          Caption = 'Dias de Plazo'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'ProveedorId'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Calle'
        DataType = datString
        Size = 40
        Required = True
      end
      item
        Name = 'Colonia'
        DataType = datString
        Size = 30
        Required = True
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
        Required = True
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 15
        Required = True
      end
      item
        Name = 'Telefono'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Fax'
        DataType = datString
        Size = 20
      end
      item
        Name = 'CodPostal'
        DataType = datString
        Size = 5
      end
      item
        Name = 'Email'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 50
      end
      item
        Name = 'DiasPlazo'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
      end>
    LogicalName = 'dbo Proveedor'
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsCatalogoNewRecord
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
  end
end
