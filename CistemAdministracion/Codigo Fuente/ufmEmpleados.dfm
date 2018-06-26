inherited frmEmpleados: TfrmEmpleados
  Caption = 'frmEmpleados'
  ClientHeight = 503
  ClientWidth = 764
  ExplicitLeft = -293
  ExplicitWidth = 764
  ExplicitHeight = 503
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    Width = 764
    Height = 503
    Properties.ActivePage = cxTabSheet2
    ExplicitWidth = 764
    ExplicitHeight = 503
    ClientRectBottom = 473
    ClientRectRight = 758
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 755
      ExplicitHeight = 470
      inherited dbgCatalogo: TcxGrid
        Width = 755
        Height = 470
        ExplicitWidth = 755
        ExplicitHeight = 470
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          object dbgCatalogoDBTableView1RecID: TcxGridDBColumn
            DataBinding.FieldName = 'RecID'
            Visible = False
          end
          object dbgCatalogoDBTableView1IDEMPLEADO: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'IDEMPLEADO'
          end
          object dbgCatalogoDBTableView1NOMBRE: TcxGridDBColumn
            DataBinding.FieldName = 'NOMBRE'
          end
          object dbgCatalogoDBTableView1CODIGOEMPLEADO: TcxGridDBColumn
            DataBinding.FieldName = 'CODIGOEMPLEADO'
          end
          object dbgCatalogoDBTableView1DOMICILIO: TcxGridDBColumn
            DataBinding.FieldName = 'DOMICILIO'
          end
          object dbgCatalogoDBTableView1CIUDAD: TcxGridDBColumn
            DataBinding.FieldName = 'CIUDAD'
          end
          object dbgCatalogoDBTableView1TELEFONO: TcxGridDBColumn
            DataBinding.FieldName = 'TELEFONO'
          end
          object dbgCatalogoDBTableView1CUENTACONTABLE: TcxGridDBColumn
            DataBinding.FieldName = 'CUENTACONTABLE'
          end
          object dbgCatalogoDBTableView1FECHAALTA: TcxGridDBColumn
            DataBinding.FieldName = 'FECHAALTA'
          end
          object dbgCatalogoDBTableView1FECHABAJA: TcxGridDBColumn
            DataBinding.FieldName = 'FECHABAJA'
          end
          object dbgCatalogoDBTableView1IMSS: TcxGridDBColumn
            DataBinding.FieldName = 'IMSS'
            Width = 209
          end
          object dbgCatalogoDBTableView1STATUS: TcxGridDBColumn
            DataBinding.FieldName = 'STATUS'
          end
          object dbgCatalogoDBTableView1FOTOEMPLEADO: TcxGridDBColumn
            DataBinding.FieldName = 'FOTOEMPLEADO'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 755
      ExplicitHeight = 470
      object GrpBoxDatos: TcxGroupBox
        Left = 16
        Top = 3
        Hint = ''
        Caption = ' Datos '
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 0
        Height = 454
        Width = 665
        object LblID: TcxLabel
          Left = 21
          Top = 30
          Hint = ''
          Caption = 'Id Empleado'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object txtId: TcxDBTextEdit
          Left = 21
          Top = 47
          Hint = ''
          DataBinding.DataField = 'IDEMPLEADO'
          DataBinding.DataSource = dsCatalogo
          Enabled = False
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 0
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 0
          Width = 100
        end
        object cxLabel1: TcxLabel
          Left = 21
          Top = 387
          Hint = ''
          Caption = 'Estacion'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 127
          Top = 30
          Hint = ''
          Caption = 'Nombre Empleado'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cmbEstacion: TcxDBLookupComboBox
          Left = 21
          Top = 410
          Hint = ''
          DataBinding.DataField = 'IDESTACION'
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'IDESTACION'
          Properties.ListColumns = <
            item
              FieldName = 'NOMBRE'
            end>
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 4
          Width = 259
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 127
          Top = 47
          Hint = ''
          DataBinding.DataField = 'NOMBRE'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 5
          Width = 259
        end
        object cxLabel4: TcxLabel
          Left = 127
          Top = 72
          Hint = ''
          Caption = 'Domicilio'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 127
          Top = 89
          Hint = ''
          DataBinding.DataField = 'DOMICILIO'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 7
          Width = 259
        end
        object cxLabel6: TcxLabel
          Left = 21
          Top = 166
          Hint = ''
          Caption = 'IMSS'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 21
          Top = 183
          Hint = ''
          DataBinding.DataField = 'IMSS'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 9
          Width = 259
        end
        object LblCalle: TcxLabel
          Left = 21
          Top = 216
          Hint = ''
          Caption = 'Fecha Alta'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object dtpFechaAlta: TcxDBDateEdit
          Left = 21
          Top = 233
          Hint = ''
          TabStop = False
          DataBinding.DataField = 'FECHAALTA'
          DataBinding.DataSource = dsCatalogo
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 11
          Width = 132
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 159
          Top = 283
          Hint = ''
          Caption = 'Activo ?'
          DataBinding.DataField = 'STATUS'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 12
          Width = 71
        end
        object cxLabel8: TcxLabel
          Left = 246
          Top = 216
          Hint = ''
          Caption = 'Foto Empleado'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object Button1: TButton
          Left = 203
          Top = 357
          Width = 31
          Height = 32
          ImageIndex = 35
          Images = dmImages.ToolBarImages
          TabOrder = 14
          OnClick = Button1Click
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 21
          Top = 283
          Hint = ''
          TabStop = False
          DataBinding.DataField = 'FECHABAJA'
          DataBinding.DataSource = dsCatalogo
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 15
          Width = 132
        end
        object cxLabel7: TcxLabel
          Left = 21
          Top = 266
          Hint = ''
          Caption = 'Fecha Baja'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 21
          Top = 137
          Hint = ''
          DataBinding.DataField = 'CUENTACONTABLE'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 17
          Width = 259
        end
        object cxLabel5: TcxLabel
          Left = 21
          Top = 120
          Hint = ''
          Caption = 'Cuenta Contable'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 21
          Top = 89
          Hint = ''
          DataBinding.DataField = 'CODIGOEMPLEADO'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 19
          Width = 100
        end
        object cxLabel3: TcxLabel
          Left = 21
          Top = 72
          Hint = ''
          Caption = 'Codigo'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBImage1: TcxDBImage
          Left = 236
          Top = 239
          Hint = ''
          DataBinding.DataField = 'FOTOEMPLEADO'
          DataBinding.DataSource = dsCatalogo
          Properties.GraphicClassName = 'TJPEGImage'
          TabOrder = 21
          Height = 150
          Width = 150
        end
        object cxDBRadioGroup1: TcxDBRadioGroup
          Left = 21
          Top = 310
          Hint = ''
          Caption = 'Turno'
          DataBinding.DataField = 'TURNO'
          DataBinding.DataSource = dsCatalogo
          Properties.Items = <
            item
              Caption = 'Turno de la Ma'#241'ana'
              Value = 1
            end
            item
              Caption = 'Turno de la Tarde'
              Value = 2
            end
            item
              Caption = 'Turno de la Noche'
              Value = 3
            end>
          TabOrder = 22
          Height = 77
          Width = 176
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'IDEMPLEADO'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'NOMBRE'
        DataType = datString
        Size = 50
      end
      item
        Name = 'CODIGOEMPLEADO'
        DataType = datString
        Size = 10
      end
      item
        Name = 'DOMICILIO'
        DataType = datString
        Size = 100
      end
      item
        Name = 'CIUDAD'
        DataType = datString
        Size = 100
      end
      item
        Name = 'TELEFONO'
        DataType = datString
        Size = 20
      end
      item
        Name = 'CUENTACONTABLE'
        DataType = datString
        Size = 20
      end
      item
        Name = 'FECHAALTA'
        DataType = datDateTime
      end
      item
        Name = 'FECHABAJA'
        DataType = datDateTime
      end
      item
        Name = 'IMSS'
        DataType = datString
        Size = 150
      end
      item
        Name = 'STATUS'
        DataType = datBoolean
      end
      item
        Name = 'FOTOEMPLEADO'
        DataType = datBlob
      end
      item
        Name = 'IDESTACION'
        DataType = datInteger
      end
      item
        Name = 'TURNO'
        DataType = datInteger
      end>
    LogicalName = 'dbo.EMPLEADO'
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsCatalogoNewRecord
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
  end
end
