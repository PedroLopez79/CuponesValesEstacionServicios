inherited frmDepositos: TfrmDepositos
  Caption = 'Depositos'
  ClientHeight = 468
  ClientWidth = 705
  ExplicitWidth = 705
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 13
  object pgcDepositos: TcxPageControl
    Left = 0
    Top = 0
    Width = 705
    Height = 468
    ActivePage = cxTabSheet1
    Align = alClient
    Images = dmImages.Imagenes
    TabOrder = 0
    TabPosition = tpBottom
    ClientRectBottom = 438
    ClientRectLeft = 3
    ClientRectRight = 699
    ClientRectTop = 3
    object cxTabSheet1: TcxTabSheet
      Caption = 'Secuencias'
      ImageIndex = 21
      object dbgDepositos: TcxGrid
        Left = 0
        Top = 105
        Width = 696
        Height = 330
        Align = alClient
        TabOrder = 0
        object dbgDepositosDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsSecuencias
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,#0.00'
              Kind = skSum
              Column = dbgDepositosDBTableView1Total
            end
            item
              Format = '#,#0.00'
              Kind = skSum
              Column = dbgDepositosDBTableView1Mainbe
            end
            item
              Format = '#,#0.00'
              Kind = skSum
              Column = dbgDepositosDBTableView1Credito
            end
            item
              Format = '#,#0.00'
              Kind = skSum
              Column = dbgDepositosDBTableView1Efectivo
            end
            item
              Format = '#,#0.00'
              Kind = skSum
              Column = dbgDepositosDBTableView1Column1
            end
            item
              Format = '#,#0.00'
              Kind = skSum
              Column = dbgDepositosDBTableView1Column2
            end
            item
              Format = '#,#0.00'
              Kind = skSum
              Column = dbgDepositosDBTableView1Column3
            end
            item
              Format = '#,#0.00'
              Kind = skSum
              Column = dbgDepositosDBTableView1Column4
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object dbgDepositosDBTableView1Estacion: TcxGridDBColumn
            DataBinding.FieldName = 'Estacion'
            Width = 70
          end
          object dbgDepositosDBTableView1Secuencia: TcxGridDBColumn
            DataBinding.FieldName = 'Secuencia'
            Width = 86
          end
          object dbgDepositosDBTableView1Fecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Width = 111
          end
          object dbgDepositosDBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'Calibraciones'
            Width = 94
          end
          object dbgDepositosDBTableView1Column2: TcxGridDBColumn
            Caption = 'Consumo Interno'
            DataBinding.FieldName = 'ConsumoInterno'
            Width = 94
          end
          object dbgDepositosDBTableView1Column3: TcxGridDBColumn
            DataBinding.FieldName = 'Faltantes'
            Width = 94
          end
          object dbgDepositosDBTableView1Column4: TcxGridDBColumn
            DataBinding.FieldName = 'Sobrantes'
            Width = 94
          end
          object dbgDepositosDBTableView1Credito: TcxGridDBColumn
            DataBinding.FieldName = 'Credito'
            Width = 94
          end
          object dbgDepositosDBTableView1Efectivo: TcxGridDBColumn
            DataBinding.FieldName = 'Efectivo'
            Width = 94
          end
          object dbgDepositosDBTableView1Mainbe: TcxGridDBColumn
            Caption = 'Documentos'
            DataBinding.FieldName = 'Mainbe'
            Width = 92
          end
          object dbgDepositosDBTableView1Total: TcxGridDBColumn
            DataBinding.FieldName = 'Total'
            Width = 101
          end
        end
        object dbgDepositosLevel1: TcxGridLevel
          GridView = dbgDepositosDBTableView1
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Agregar Secuencia'
        TabOrder = 1
        Height = 105
        Width = 696
        object cxLabel1: TcxLabel
          Left = 16
          Top = 40
          Caption = 'Fecha'
          Transparent = True
        end
        object dtpFecha: TcxDateEdit
          Left = 16
          Top = 56
          Enabled = False
          TabOrder = 1
          OnExit = dtpFechaExit
          Width = 113
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Dep'#243'sitos'
      ImageIndex = 41
      object gbDepositos: TcxGroupBox
        Left = 24
        Top = 8
        Caption = 'Datos del Dep'#243'sito'
        Enabled = False
        TabOrder = 0
        Height = 321
        Width = 305
        object edtBilletes: TcxCurrencyEdit
          Left = 16
          Top = 48
          EditValue = '0'
          Properties.Alignment.Horz = taRightJustify
          Properties.OnEditValueChanged = edtBilletesPropertiesEditValueChanged
          TabOrder = 0
          Width = 121
        end
        object lblBilletes: TcxLabel
          Left = 16
          Top = 32
          Caption = 'Billetes'
          Transparent = True
        end
        object lblMonedas: TcxLabel
          Left = 16
          Top = 128
          Caption = 'Monedas'
          Transparent = True
        end
        object edtMonedas: TcxCurrencyEdit
          Left = 16
          Top = 144
          EditValue = '0'
          Properties.Alignment.Horz = taRightJustify
          Properties.OnEditValueChanged = edtBilletesPropertiesEditValueChanged
          TabOrder = 2
          Width = 121
        end
        object lblDolares: TcxLabel
          Left = 16
          Top = 176
          Caption = 'D'#243'lares'
          Transparent = True
        end
        object edtDolares: TcxCurrencyEdit
          Left = 16
          Top = 192
          EditValue = '0'
          Properties.Alignment.Horz = taRightJustify
          Properties.OnEditValueChanged = edtBilletesPropertiesEditValueChanged
          TabOrder = 3
          Width = 121
        end
        object lblCreditos: TcxLabel
          Left = 168
          Top = 32
          Caption = 'Cr'#233'ditos'
          Transparent = True
        end
        object edtRetiros: TcxCurrencyEdit
          Left = 16
          Top = 240
          EditValue = '0'
          Properties.Alignment.Horz = taRightJustify
          Properties.OnEditValueChanged = edtBilletesPropertiesEditValueChanged
          TabOrder = 4
          Width = 121
        end
        object lblRetiros: TcxLabel
          Left = 16
          Top = 224
          Caption = 'Retiros'
          Transparent = True
        end
        object edtCreditos: TcxCurrencyEdit
          Left = 168
          Top = 48
          EditValue = '0'
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 11
          Width = 121
        end
        object lblCheques: TcxLabel
          Left = 16
          Top = 272
          Caption = 'Cheques'
          Transparent = True
        end
        object edtCheques: TcxCurrencyEdit
          Left = 16
          Top = 288
          EditValue = '0'
          Properties.Alignment.Horz = taRightJustify
          Properties.OnEditValueChanged = edtBilletesPropertiesEditValueChanged
          TabOrder = 5
          Width = 121
        end
        object lblDocumentos: TcxLabel
          Left = 168
          Top = 80
          Caption = 'Documentos'
          Transparent = True
        end
        object edtDocumentos: TcxCurrencyEdit
          Left = 168
          Top = 96
          EditValue = '0'
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 14
          Width = 121
        end
        object edtBilletes2: TcxCurrencyEdit
          Left = 16
          Top = 96
          EditValue = '0'
          Properties.Alignment.Horz = taRightJustify
          Properties.OnEditValueChanged = edtBilletesPropertiesEditValueChanged
          TabOrder = 1
          Width = 121
        end
        object cxLabel2: TcxLabel
          Left = 16
          Top = 80
          Caption = 'Billetes II'
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 168
          Top = 128
          Caption = 'Calibraciones'
          Transparent = True
        end
        object edtCalibraciones: TcxCurrencyEdit
          Left = 168
          Top = 144
          EditValue = '0'
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 17
          Width = 121
        end
        object cxLabel4: TcxLabel
          Left = 168
          Top = 176
          Caption = 'Consumo Interno'
          Transparent = True
        end
        object edtConsumoInterno: TcxCurrencyEdit
          Left = 168
          Top = 192
          EditValue = '0'
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 19
          Width = 121
        end
        object cxLabel5: TcxLabel
          Left = 168
          Top = 224
          Caption = 'Faltantes'
          Transparent = True
        end
        object edtFaltantes: TcxCurrencyEdit
          Left = 168
          Top = 240
          EditValue = '0'
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 21
          Width = 121
        end
        object cxLabel6: TcxLabel
          Left = 168
          Top = 272
          Caption = 'Sobrantes'
          Transparent = True
        end
        object edtSobrantes: TcxCurrencyEdit
          Left = 168
          Top = 288
          EditValue = '0'
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 23
          Width = 121
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 352
        Top = 8
        Caption = 'Totales'
        Enabled = False
        TabOrder = 1
        Height = 185
        Width = 185
        object lblTotal: TcxLabel
          Left = 16
          Top = 32
          Caption = 'Total Liquidaci'#243'n'
          Transparent = True
        end
        object lblDepositos: TcxLabel
          Left = 16
          Top = 80
          Caption = 'Dep'#243'sitos'
          Transparent = True
        end
        object edtDepositos: TcxCurrencyEdit
          Left = 16
          Top = 96
          EditValue = '0'
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 2
          Width = 121
        end
        object lblDiferencia: TcxLabel
          Left = 16
          Top = 128
          Caption = 'Diferencia'
          Transparent = True
        end
        object edtDiferencia: TcxCurrencyEdit
          Left = 16
          Top = 144
          EditValue = '0'
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 4
          Width = 121
        end
        object edtTotal: TcxCurrencyEdit
          Left = 16
          Top = 48
          EditValue = '0'
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 5
          Width = 121
        end
      end
    end
  end
  object tblSecuencias: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 296
    Top = 200
    object tblSecuenciasEstacion: TIntegerField
      FieldName = 'Estacion'
    end
    object tblSecuenciasSecuencia: TIntegerField
      FieldName = 'Secuencia'
    end
    object tblSecuenciasFecha: TDateField
      FieldName = 'Fecha'
    end
    object tblSecuenciasEfectivo: TFloatField
      FieldName = 'Efectivo'
      DisplayFormat = '#,#0.00'
    end
    object tblSecuenciasCredito: TFloatField
      FieldName = 'Credito'
      DisplayFormat = '#,#0.00'
    end
    object tblSecuenciasMainbe: TFloatField
      FieldName = 'Mainbe'
      DisplayFormat = '#,#0.00'
    end
    object tblSecuenciasTotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = '#,#0.00'
    end
    object tblSecuenciasCalibraciones: TFloatField
      FieldName = 'Calibraciones'
      DisplayFormat = '#,#0.00'
    end
    object tblSecuenciasConsumoInterno: TFloatField
      FieldName = 'ConsumoInterno'
      DisplayFormat = '#,#0.00'
    end
    object tblSecuenciasFaltantes: TFloatField
      FieldName = 'Faltantes'
      DisplayFormat = '#,#0.00'
    end
    object tblSecuenciasSobrantes: TFloatField
      FieldName = 'Sobrantes'
      DisplayFormat = '#,#0.00'
    end
  end
  object dsSecuencias: TDataSource
    DataSet = tblSecuencias
    Left = 296
    Top = 256
  end
  object cdsTurnosFecha: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'TurnoID'
        DataType = datInteger
      end
      item
        Name = 'Creditos'
        DataType = datFloat
      end>
    Params = <
      item
        Name = 'Fecha'
        Value = '02/02/2008'
      end
      item
        Name = 'EstacionID'
        Value = '1'
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'spTurnosFecha'
    IndexDefs = <>
    Left = 376
    Top = 200
  end
  object cdsDepositos: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'DepositoID'
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
        Name = 'Ejercicio'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Dia'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Periodo'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Total'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Billetes'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Billetes2'
        DataType = datFloat
      end
      item
        Name = 'Monedas'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Dolares'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Retiros'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Cheques'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Creditos'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Documentos'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Calibraciones'
        DataType = datFloat
      end
      item
        Name = 'ConsumoInterno'
        DataType = datFloat
      end
      item
        Name = 'Faltantes'
        DataType = datFloat
      end
      item
        Name = 'Sobrantes'
        DataType = datFloat
      end
      item
        Name = 'UsuarioID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end>
    Params = <
      item
        Name = 'Fecha'
        Value = '1/1/1'
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Value = '1'
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo Deposito2'
    IndexDefs = <>
    Left = 376
    Top = 256
  end
end
