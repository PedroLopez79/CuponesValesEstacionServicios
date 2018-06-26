inherited frmProgramaMantenimiento: TfrmProgramaMantenimiento
  Caption = 'frmProgramaMantenimiento'
  ClientHeight = 533
  ClientWidth = 909
  ExplicitWidth = 909
  ExplicitHeight = 533
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    Width = 909
    Height = 533
    ExplicitWidth = 909
    ExplicitHeight = 533
    ClientRectBottom = 503
    ClientRectRight = 903
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 900
      ExplicitHeight = 500
      inherited dbgCatalogo: TcxGrid
        Width = 900
        Height = 500
        ExplicitWidth = 900
        ExplicitHeight = 500
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          object dbgCatalogoDBTableView1RecID: TcxGridDBColumn
            DataBinding.FieldName = 'RecID'
            Visible = False
          end
          object dbgCatalogoDBTableView1IDPROGRAMAMANTENIMIENTO: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'IDPROGRAMAMANTENIMIENTO'
            Width = 49
          end
          object dbgCatalogoDBTableView1CODIGO: TcxGridDBColumn
            DataBinding.FieldName = 'CODIGO'
            Width = 129
          end
          object dbgCatalogoDBTableView1CONCEPTO: TcxGridDBColumn
            DataBinding.FieldName = 'CONCEPTO'
            Width = 193
          end
          object dbgCatalogoDBTableView1IDTIPOMOVIMIENTO: TcxGridDBColumn
            DataBinding.FieldName = 'IDTIPOMOVIMIENTO'
            Width = 110
          end
          object dbgCatalogoDBTableView1FECHAMANTENIMIENTO: TcxGridDBColumn
            DataBinding.FieldName = 'FECHAMANTENIMIENTO'
            Width = 131
          end
          object dbgCatalogoDBTableView1PERIODICIDAD: TcxGridDBColumn
            DataBinding.FieldName = 'PERIODICIDAD'
            Width = 115
          end
          object dbgCatalogoDBTableView1IDESTACION: TcxGridDBColumn
            DataBinding.FieldName = 'IDESTACION'
            Width = 78
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 900
      ExplicitHeight = 500
      object GrpBoxDatos: TcxGroupBox
        Left = 16
        Top = 3
        Hint = ''
        Caption = ' Datos '
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 0
        Height = 470
        Width = 617
        object LblID: TcxLabel
          Left = 21
          Top = 30
          Hint = ''
          Caption = 'Id Programa Mantenimiento'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCalle: TcxLabel
          Left = 21
          Top = 77
          Hint = ''
          Caption = 'Concepto'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object txtId: TcxDBTextEdit
          Left = 21
          Top = 47
          Hint = ''
          DataBinding.DataField = 'IDPROGRAMAMANTENIMIENTO'
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
          Top = 274
          Hint = ''
          Caption = 'Estacion'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 184
          Top = 30
          Hint = ''
          Caption = 'Codigo'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object dtpFechaaRealizarMnto: TcxDBDateEdit
          Left = 21
          Top = 348
          Hint = ''
          TabStop = False
          DataBinding.DataField = 'FECHAMANTENIMIENTO'
          DataBinding.DataSource = dsCatalogo
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 5
          Width = 132
        end
        object cmbEstacion: TcxDBLookupComboBox
          Left = 21
          Top = 297
          Hint = ''
          DataBinding.DataField = 'IDESTACION'
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'IDESTACION'
          Properties.ListColumns = <
            item
              FieldName = 'NOMBRE'
            end>
          Properties.ListSource = dsEstacion
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 6
          Width = 259
        end
        object edtCodigo: TcxDBTextEdit
          Left = 184
          Top = 47
          Hint = ''
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 7
          Width = 81
        end
        object edtConcepto: TcxDBTextEdit
          Left = 21
          Top = 92
          Hint = ''
          DataBinding.DataField = 'CONCEPTO'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 8
          Width = 422
        end
        object cxLabel3: TcxLabel
          Left = 21
          Top = 119
          Hint = ''
          Caption = 'Tipo Mantenimiento'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cmbTipoMantenimiento: TcxDBLookupComboBox
          Left = 21
          Top = 135
          Hint = ''
          DataBinding.DataField = 'IDTIPOMOVIMIENTO'
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'IDTIPOMANTENIMIENTO'
          Properties.ListColumns = <
            item
              FieldName = 'CONCEPTO'
            end>
          Properties.ListSource = dsTipoMantenimiento
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 10
          Width = 259
        end
        object cxDBRadioGroup1: TcxDBRadioGroup
          Left = 21
          Top = 162
          Hint = ''
          Caption = 'Periodicidad'
          DataBinding.DataField = 'PERIODICIDAD'
          DataBinding.DataSource = dsCatalogo
          Properties.Columns = 4
          Properties.Items = <
            item
              Caption = 'DIARIO'
              Value = 'DIARIO'
            end
            item
              Caption = 'SEMANAL'
              Value = 'SEMANAL'
            end
            item
              Caption = 'MENSUAL'
              Value = 'MENSUAL'
            end
            item
              Caption = 'TRIMESTRAL'
              Value = 'TRIMESTRAL'
            end
            item
              Caption = 'CUATRIMESTRAL'
              Value = 'CUATRIMESTRAL'
            end
            item
              Caption = 'SEMESTRAL'
              Value = 'SEMESTRAL'
            end
            item
              Caption = 'ANUAL'
              Value = 'ANUAL'
            end>
          TabOrder = 11
          Height = 94
          Width = 580
        end
        object cxLabel4: TcxLabel
          Left = 21
          Top = 325
          Hint = ''
          Caption = 'Fecha a Realizar Mantenimiento'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'IDPROGRAMAMANTENIMIENTO'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'CODIGO'
        DataType = datString
        Size = 50
      end
      item
        Name = 'CONCEPTO'
        DataType = datString
        Size = 100
      end
      item
        Name = 'IDTIPOMOVIMIENTO'
        DataType = datInteger
      end
      item
        Name = 'FECHAMANTENIMIENTO'
        DataType = datDateTime
      end
      item
        Name = 'PERIODICIDAD'
        DataType = datString
        Size = 50
      end
      item
        Name = 'IDESTACION'
        DataType = datInteger
      end>
    LogicalName = 'dbo.PROGRAMAMANTENIMIENTO'
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsCatalogoNewRecord
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
  end
  object dsEstacion: TDADataSource
    DataSet = cdsEstacion.Dataset
    DataTable = cdsEstacion
    Left = 560
    Top = 408
  end
  object cdsEstacion: TDACDSDataTable
    Fields = <
      item
        Name = 'IDESTACION'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'NOMBRE'
        DataType = datString
        Size = 100
      end
      item
        Name = 'RAZONSOCIAL'
        DataType = datString
        Size = 100
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 30
      end
      item
        Name = 'HOST'
        DataType = datString
        Size = 30
      end
      item
        Name = 'CUENTACONTABLE'
        DataType = datString
        Size = 20
      end
      item
        Name = 'IMPUESTO'
        DataType = datFloat
      end
      item
        Name = 'CALLE'
        DataType = datString
        Size = 60
      end
      item
        Name = 'COLONIA'
        DataType = datString
        Size = 30
      end
      item
        Name = 'NOEXTERIOR'
        DataType = datString
        Size = 10
      end
      item
        Name = 'NOINTERIOR'
        DataType = datString
        Size = 10
      end
      item
        Name = 'CODIGOPOSTAL'
        DataType = datString
        Size = 10
      end
      item
        Name = 'MUNICIPIO'
        DataType = datString
        Size = 30
      end
      item
        Name = 'LOCALIDAD'
        DataType = datString
        Size = 30
      end
      item
        Name = 'ESTADO'
        DataType = datString
        Size = 30
      end
      item
        Name = 'EXCALLE'
        DataType = datString
        Size = 60
      end
      item
        Name = 'EXCOLONIA'
        DataType = datString
        Size = 30
      end
      item
        Name = 'EXNOEXTERIOR'
        DataType = datString
        Size = 10
      end
      item
        Name = 'EXNOINTERIOR'
        DataType = datString
        Size = 10
      end
      item
        Name = 'EXCODIGOPOSTAL'
        DataType = datString
        Size = 10
      end
      item
        Name = 'EXMUNICIPIO'
        DataType = datString
        Size = 30
      end
      item
        Name = 'EXLOCALIDAD'
        DataType = datString
        Size = 30
      end
      item
        Name = 'EXESTADO'
        DataType = datString
        Size = 30
      end
      item
        Name = 'NOAPROBACION'
        DataType = datInteger
      end
      item
        Name = 'FECHAAPROBACION'
        DataType = datInteger
      end
      item
        Name = 'NOAPROBACIONES'
        DataType = datString
        Size = 150
      end
      item
        Name = 'VERSIONCFD'
        DataType = datInteger
      end
      item
        Name = 'REGIMENFISCAL'
        DataType = datString
        Size = 150
      end
      item
        Name = 'CODIGOFACTURA'
        DataType = datString
        Size = 2
      end
      item
        Name = 'FORMATOFACTURAWEB'
        DataType = datString
        Size = 100
      end
      item
        Name = 'SERIEENLINEA'
        DataType = datString
        Size = 5
      end
      item
        Name = 'TELEFONO'
        DataType = datString
        Size = 20
      end
      item
        Name = 'IDESTACIONBANCARIA'
        DataType = datInteger
      end
      item
        Name = 'SERIEBANCARIA'
        DataType = datString
        Size = 5
      end
      item
        Name = 'LOGOESTACION'
        DataType = datBlob
      end
      item
        Name = 'PAIS'
        DataType = datString
        Size = 100
      end
      item
        Name = 'EXPAIS'
        DataType = datString
        Size = 100
      end
      item
        Name = 'EXREFERENCIA'
        DataType = datString
        Size = 100
      end>
    LogicalName = 'dbo.ESTACION'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 560
    Top = 360
  end
  object cdsTipoMantenimiento: TDACDSDataTable
    Fields = <
      item
        Name = 'IDTIPOMANTENIMIENTO'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'CONCEPTO'
        DataType = datString
        Size = 100
      end>
    LogicalName = 'dbo.TIPOMANTENIMIENTO'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 432
    Top = 360
  end
  object dsTipoMantenimiento: TDADataSource
    DataSet = cdsTipoMantenimiento.Dataset
    DataTable = cdsTipoMantenimiento
    Left = 432
    Top = 408
  end
end
