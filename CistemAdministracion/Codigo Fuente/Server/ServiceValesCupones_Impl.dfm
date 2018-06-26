object ServiceValesCupones: TServiceValesCupones
  OldCreateOrder = True
  OnCreate = DataAbstractServiceCreate
  SessionManager = ServerDataModule.SessionManager
  ServiceSchema = Schema
  ServiceDataStreamer = DataStreamer
  ExportedDataTables = <>
  Height = 300
  Width = 315
  object Schema: TDASchema
    ConnectionManager = ServerDataModule.ConnectionManager
    Datasets = <
      item
        Params = <>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.USUARIO'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'IDEMPLEADO'
                TableField = 'IDEMPLEADO'
              end
              item
                DatasetField = 'CODIGO'
                TableField = 'CODIGO'
              end
              item
                DatasetField = 'NOMBRE'
                TableField = 'NOMBRE'
              end
              item
                DatasetField = 'USERNAME'
                TableField = 'USERNAME'
              end
              item
                DatasetField = 'USERPASSWORD'
                TableField = 'USERPASSWORD'
              end
              item
                DatasetField = 'FIRMADEFAULT'
                TableField = 'FIRMADEFAULT'
              end>
          end>
        Name = 'dbo.usuarios'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IDEMPLEADO'
            DataType = datInteger
          end
          item
            Name = 'CODIGO'
            DataType = datString
            Size = 10
          end
          item
            Name = 'NOMBRE'
            DataType = datString
            Size = 70
          end
          item
            Name = 'USERNAME'
            DataType = datString
            Size = 10
          end
          item
            Name = 'USERPASSWORD'
            DataType = datString
            Size = 10
          end
          item
            Name = 'FIRMADEFAULT'
            DataType = datBlob
          end>
      end
      item
        Params = <
          item
            Name = 'EstacionID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            SQL = 
              'select top 1 *'#10'from tipocambio'#10'where EstacionID=:EstacionID'#10'orde' +
              'r by Fecha desc'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'TipoCambioID'
                TableField = 'TipoCambioID'
              end
              item
                DatasetField = 'TipoCambio'
                TableField = 'TipoCambio'
              end
              item
                DatasetField = 'EstacionID'
                TableField = 'EstacionID'
              end
              item
                DatasetField = 'Fecha'
                TableField = 'Fecha'
              end>
          end>
        Name = 'ObtenerTipoCambioPorEstacion'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'TipoCambioID'
            DataType = datInteger
          end
          item
            Name = 'TipoCambio'
            DataType = datFloat
          end
          item
            Name = 'EstacionID'
            DataType = datInteger
          end
          item
            Name = 'Fecha'
            DataType = datDateTime
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.TipoCambio'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'TipoCambioID'
                TableField = 'TipoCambioID'
              end
              item
                DatasetField = 'TipoCambio'
                TableField = 'TipoCambio'
              end
              item
                DatasetField = 'EstacionID'
                TableField = 'EstacionID'
              end
              item
                DatasetField = 'Fecha'
                TableField = 'Fecha'
              end>
          end>
        Name = 'dbo.TipoCambio'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'TipoCambioID'
            DataType = datInteger
          end
          item
            Name = 'TipoCambio'
            DataType = datFloat
          end
          item
            Name = 'EstacionID'
            DataType = datInteger
          end
          item
            Name = 'Fecha'
            DataType = datDateTime
          end>
      end
      item
        Params = <
          item
            Name = 'Usuario'
            Value = '1'
            ParamType = daptInput
          end
          item
            Name = 'Clave'
            Value = '1'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            SQL = 
              'SELECT IDEMPLEADO, NOMBRE'#10'FROM USUARIO'#10'WHERE (USERNAME = :Usuari' +
              'o) AND (USERPASSWORD = :Clave)'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'IDEMPLEADO'
                TableField = 'IDEMPLEADO'
              end
              item
                DatasetField = 'NOMBRE'
                TableField = 'NOMBRE'
              end>
          end>
        Name = 'spValidaUsuario'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IDEMPLEADO'
            DataType = datInteger
          end
          item
            Name = 'NOMBRE'
            DataType = datString
            Size = 70
          end>
      end
      item
        Params = <
          item
            Name = 'UsuarioID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            SQL = 
              'DECLARE @UsuarioID AS INT'#10#10'SELECT @UsuarioID = :UsuarioID'#10#10'SELEC' +
              'T DISTINCT Opcion.OpcionID, Descripcion FROM'#10'       (SELECT     ' +
              'OpcionID'#10'        FROM       Acceso'#10'        WHERE usuarioid = @Us' +
              'uarioID'#10#10'        UNION'#10#10'        SELECT     OpcionID'#10'        FROM' +
              '       GrupoAcceso'#10'        WHERE GrupoID IN (SELECT GrupoID FROM' +
              ' GrupoUsuario'#10'                          WHERE UsuarioID = @Usuar' +
              'ioID)) SelectUnion  INNER JOIN'#10'                          Opcion ' +
              'ON Opcion.OpcionID = SelectUnion.OpcionID'#10'ORDER BY Opcion.Opcion' +
              'ID'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'OpcionID'
                TableField = 'OpcionID'
              end
              item
                DatasetField = 'Descripcion'
                TableField = 'Descripcion'
              end>
          end>
        Name = 'spAccesos'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'OpcionID'
            DataType = datInteger
          end
          item
            Name = 'Descripcion'
            DataType = datString
            Size = 50
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Acceso'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'UsuarioID'
                TableField = 'UsuarioID'
              end
              item
                DatasetField = 'OpcionID'
                TableField = 'OpcionID'
              end>
          end>
        Name = 'dbo.Acceso'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'UsuarioID'
            DataType = datInteger
          end
          item
            Name = 'OpcionID'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Opcion'
            SQL = 'SELECT * FROM dbo.Opcion'#10'Order by OpcionID asc'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'OpcionID'
                TableField = 'OpcionID'
              end
              item
                DatasetField = 'Descripcion'
                TableField = 'Descripcion'
              end
              item
                DatasetField = 'ImageIndex'
                TableField = 'ImageIndex'
              end
              item
                DatasetField = 'PadreID'
                TableField = 'PadreID'
              end
              item
                DatasetField = 'Orden'
                TableField = 'Orden'
              end>
          end>
        Name = 'dbo.Opcion'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'OpcionID'
            DataType = datInteger
          end
          item
            Name = 'Descripcion'
            DataType = datString
            Size = 50
          end
          item
            Name = 'ImageIndex'
            DataType = datInteger
          end
          item
            Name = 'PadreID'
            DataType = datInteger
          end
          item
            Name = 'Orden'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <>
        Name = 'ObtenerLimiteAFacturar'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Empresas'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'EMPRESAID'
                TableField = 'EMPRESAID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'RazonSocial'
                TableField = 'RazonSocial'
              end
              item
                DatasetField = 'RFC'
                TableField = 'RFC'
              end
              item
                DatasetField = 'ClavePemex'
                TableField = 'ClavePemex'
              end
              item
                DatasetField = 'NoBombas'
                TableField = 'NoBombas'
              end
              item
                DatasetField = 'Colonia'
                TableField = 'Colonia'
              end
              item
                DatasetField = 'Ciudad'
                TableField = 'Ciudad'
              end
              item
                DatasetField = 'CodigoPostal'
                TableField = 'CodigoPostal'
              end
              item
                DatasetField = 'Host'
                TableField = 'Host'
              end
              item
                DatasetField = 'CuentaContable'
                TableField = 'CuentaContable'
              end
              item
                DatasetField = 'Impuesto'
                TableField = 'Impuesto'
              end
              item
                DatasetField = 'ClienteSagarpa'
                TableField = 'ClienteSagarpa'
              end
              item
                DatasetField = 'ClienteSagarpaPemex'
                TableField = 'ClienteSagarpaPemex'
              end
              item
                DatasetField = 'IvaRetenido'
                TableField = 'IvaRetenido'
              end
              item
                DatasetField = 'ISR'
                TableField = 'ISR'
              end>
          end>
        Name = 'dbo.Empresas'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'EMPRESAID'
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
            Name = 'RFC'
            DataType = datString
            Size = 30
          end
          item
            Name = 'ClavePemex'
            DataType = datString
            Size = 10
          end
          item
            Name = 'NoBombas'
            DataType = datInteger
          end
          item
            Name = 'Colonia'
            DataType = datString
            Size = 80
          end
          item
            Name = 'Ciudad'
            DataType = datString
            Size = 30
          end
          item
            Name = 'CodigoPostal'
            DataType = datString
            Size = 10
          end
          item
            Name = 'Host'
            DataType = datString
            Size = 30
          end
          item
            Name = 'CuentaContable'
            DataType = datString
            Size = 30
          end
          item
            Name = 'Impuesto'
            DataType = datFloat
          end
          item
            Name = 'ClienteSagarpa'
            DataType = datInteger
          end
          item
            Name = 'ClienteSagarpaPemex'
            DataType = datInteger
          end
          item
            Name = 'IvaRetenido'
            DataType = datBoolean
          end
          item
            Name = 'ISR'
            DataType = datFloat
          end>
      end
      item
        Params = <
          item
            Name = 'EstacionID'
            Value = '1'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            SQL = 
              'declare @EstacionID as integer'#10#10'Select @EstacionID = (Select :Es' +
              'tacionID)'#10#10'SELECT '#10'    IDESTACION, Nombre, RazonSocial, RFC, '#10'  ' +
              '  Colonia, CodigoPostal, Host, CuentaContable, '#10'    Impuesto'#10'  F' +
              'ROM'#10'    dbo.Estacion'#10'  WHERE IDESTACION = @EstacionID'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'IDESTACION'
                TableField = 'IDESTACION'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'RazonSocial'
                TableField = 'RazonSocial'
              end
              item
                DatasetField = 'RFC'
                TableField = 'RFC'
              end
              item
                DatasetField = 'Colonia'
                TableField = 'Colonia'
              end
              item
                DatasetField = 'CodigoPostal'
                TableField = 'CodigoPostal'
              end
              item
                DatasetField = 'Host'
                TableField = 'Host'
              end
              item
                DatasetField = 'CuentaContable'
                TableField = 'CuentaContable'
              end
              item
                DatasetField = 'Impuesto'
                TableField = 'Impuesto'
              end>
          end>
        Name = 'ObtenerDatosEstacion'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IDESTACION'
            DataType = datInteger
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 100
          end
          item
            Name = 'RazonSocial'
            DataType = datString
            Size = 100
          end
          item
            Name = 'RFC'
            DataType = datString
            Size = 30
          end
          item
            Name = 'Colonia'
            DataType = datString
            Size = 30
          end
          item
            Name = 'CodigoPostal'
            DataType = datString
            Size = 10
          end
          item
            Name = 'Host'
            DataType = datString
            Size = 30
          end
          item
            Name = 'CuentaContable'
            DataType = datString
            Size = 20
          end
          item
            Name = 'Impuesto'
            DataType = datFloat
          end>
      end
      item
        Params = <
          item
            Name = 'EstacionID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            SQL = 
              'SELECT'#10'    TipoCambioID, TipoCambio, EstacionID, Fecha'#10'FROM'#10'    ' +
              'dbo.TipoCambio'#10'where (EstacionID=:EstacionID)'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'TipoCambioID'
                TableField = 'TipoCambioID'
              end
              item
                DatasetField = 'TipoCambio'
                TableField = 'TipoCambio'
              end
              item
                DatasetField = 'EstacionID'
                TableField = 'EstacionID'
              end
              item
                DatasetField = 'Fecha'
                TableField = 'Fecha'
              end>
          end>
        Name = 'ObtenerHistorialTipoCambio'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'TipoCambioID'
            DataType = datInteger
          end
          item
            Name = 'TipoCambio'
            DataType = datFloat
          end
          item
            Name = 'EstacionID'
            DataType = datInteger
          end
          item
            Name = 'Fecha'
            DataType = datDateTime
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.DatosSATEmpresas'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'DatosSatEmpresasID'
                TableField = 'DatosSatEmpresasID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'Domicilio'
                TableField = 'Domicilio'
              end
              item
                DatasetField = 'RFC'
                TableField = 'RFC'
              end
              item
                DatasetField = 'IVA'
                TableField = 'IVA'
              end
              item
                DatasetField = 'NoExterior'
                TableField = 'NoExterior'
              end
              item
                DatasetField = 'NoInterior'
                TableField = 'NoInterior'
              end
              item
                DatasetField = 'Localidad'
                TableField = 'Localidad'
              end
              item
                DatasetField = 'Municipio'
                TableField = 'Municipio'
              end
              item
                DatasetField = 'Estado'
                TableField = 'Estado'
              end
              item
                DatasetField = 'Pais'
                TableField = 'Pais'
              end
              item
                DatasetField = 'NoAprobacion'
                TableField = 'NoAprobacion'
              end
              item
                DatasetField = 'Colonia'
                TableField = 'Colonia'
              end
              item
                DatasetField = 'CodigoPostal'
                TableField = 'CodigoPostal'
              end
              item
                DatasetField = 'NoCertificado'
                TableField = 'NoCertificado'
              end
              item
                DatasetField = 'ArchivoClavePrivada'
                TableField = 'ArchivoClavePrivada'
              end
              item
                DatasetField = 'ArchivoCertificado'
                TableField = 'ArchivoCertificado'
              end
              item
                DatasetField = 'ClavePriv'
                TableField = 'ClavePriv'
              end
              item
                DatasetField = 'Certificado'
                TableField = 'Certificado'
              end
              item
                DatasetField = 'PasswordFCTElect'
                TableField = 'PasswordFCTElect'
              end
              item
                DatasetField = 'EmpresaID'
                TableField = 'EmpresaID'
              end
              item
                DatasetField = 'Sucursal'
                TableField = 'Sucursal'
              end
              item
                DatasetField = 'SucursalDE'
                TableField = 'SucursalDE'
              end
              item
                DatasetField = 'Telefono1'
                TableField = 'Telefono1'
              end
              item
                DatasetField = 'Telefono2'
                TableField = 'Telefono2'
              end
              item
                DatasetField = 'AnoAprobacion'
                TableField = 'AnoAprobacion'
              end
              item
                DatasetField = 'FolioInicial'
                TableField = 'FolioInicial'
              end
              item
                DatasetField = 'FolioFinal'
                TableField = 'FolioFinal'
              end>
          end>
        Name = 'dbo.DatosSATEmpresas'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'DatosSatEmpresasID'
            DataType = datInteger
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 70
          end
          item
            Name = 'Domicilio'
            DataType = datString
            Size = 100
          end
          item
            Name = 'RFC'
            DataType = datString
            Size = 20
          end
          item
            Name = 'IVA'
            DataType = datFloat
          end
          item
            Name = 'NoExterior'
            DataType = datString
            Size = 20
          end
          item
            Name = 'NoInterior'
            DataType = datString
            Size = 20
          end
          item
            Name = 'Localidad'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Municipio'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Estado'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Pais'
            DataType = datString
            Size = 50
          end
          item
            Name = 'NoAprobacion'
            DataType = datInteger
          end
          item
            Name = 'Colonia'
            DataType = datString
            Size = 50
          end
          item
            Name = 'CodigoPostal'
            DataType = datString
            Size = 50
          end
          item
            Name = 'NoCertificado'
            DataType = datString
            Size = 50
          end
          item
            Name = 'ArchivoClavePrivada'
            DataType = datString
            Size = 200
          end
          item
            Name = 'ArchivoCertificado'
            DataType = datString
            Size = 200
          end
          item
            Name = 'ClavePriv'
            DataType = datString
            Size = 200
          end
          item
            Name = 'Certificado'
            DataType = datString
            Size = 4000
          end
          item
            Name = 'PasswordFCTElect'
            DataType = datString
            Size = 200
          end
          item
            Name = 'EmpresaID'
            DataType = datInteger
          end
          item
            Name = 'Sucursal'
            DataType = datInteger
          end
          item
            Name = 'SucursalDE'
            DataType = datInteger
          end
          item
            Name = 'Telefono1'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Telefono2'
            DataType = datString
            Size = 50
          end
          item
            Name = 'AnoAprobacion'
            DataType = datDateTime
          end
          item
            Name = 'FolioInicial'
            DataType = datInteger
          end
          item
            Name = 'FolioFinal'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Reporte'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'ReporteID'
                TableField = 'ReporteID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'Tipo'
                TableField = 'Tipo'
              end
              item
                DatasetField = 'Parametros'
                TableField = 'Parametros'
              end
              item
                DatasetField = 'Template'
                TableField = 'Template'
              end
              item
                DatasetField = 'TemplateMedia'
                TableField = 'TemplateMedia'
              end
              item
                DatasetField = 'TemplateBaja'
                TableField = 'TemplateBaja'
              end
              item
                DatasetField = 'TemplateExportar'
                TableField = 'TemplateExportar'
              end
              item
                DatasetField = 'SQL1'
                TableField = 'SQL1'
              end
              item
                DatasetField = 'SQL2'
                TableField = 'SQL2'
              end
              item
                DatasetField = 'CampoJoin'
                TableField = 'CampoJoin'
              end
              item
                DatasetField = 'USUARIOS'
                TableField = 'USUARIOS'
              end>
          end>
        Name = 'dbo.Reporte'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'ReporteID'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 50
            Required = True
          end
          item
            Name = 'Tipo'
            DataType = datInteger
          end
          item
            Name = 'Parametros'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Template'
            DataType = datMemo
          end
          item
            Name = 'TemplateMedia'
            DataType = datMemo
          end
          item
            Name = 'TemplateBaja'
            DataType = datMemo
          end
          item
            Name = 'TemplateExportar'
            DataType = datMemo
          end
          item
            Name = 'SQL1'
            DataType = datMemo
          end
          item
            Name = 'SQL2'
            DataType = datMemo
          end
          item
            Name = 'CampoJoin'
            DataType = datString
            Size = 20
          end
          item
            Name = 'USUARIOS'
            DataType = datString
            Size = 1000
          end>
      end
      item
        Params = <
          item
            Name = 'Tipo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'USUARIOS'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            SQL = 
              'Select ReporteID,Nombre,Tipo,Parametros,'#10'       Template,SQL1,SQ' +
              'L2,CampoJoin'#10'From Reporte'#10'Where  Tipo = :Tipo AND'#10'USUARIOS LIKE ' +
              ' '#39'%'#39'+ :USUARIOS +'#39'%'#39#10'order by Nombre'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'ReporteID'
                TableField = 'ReporteID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'Tipo'
                TableField = 'Tipo'
              end
              item
                DatasetField = 'Parametros'
                TableField = 'Parametros'
              end
              item
                DatasetField = 'Template'
                TableField = 'Template'
              end
              item
                DatasetField = 'SQL1'
                TableField = 'SQL1'
              end
              item
                DatasetField = 'SQL2'
                TableField = 'SQL2'
              end
              item
                DatasetField = 'CampoJoin'
                TableField = 'CampoJoin'
              end>
          end>
        Name = 'Reportes'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'ReporteID'
            DataType = datInteger
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Tipo'
            DataType = datInteger
          end
          item
            Name = 'Parametros'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Template'
            DataType = datMemo
          end
          item
            Name = 'SQL1'
            DataType = datMemo
          end
          item
            Name = 'SQL2'
            DataType = datMemo
          end
          item
            Name = 'CampoJoin'
            DataType = datString
            Size = 20
          end>
      end
      item
        Params = <
          item
            Name = 'Campo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Serie'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Folio'
            SQL = 
              'declare @Campo as varchar(50)'#10'declare @Serie as varchar(10)'#10#10'sel' +
              'ect @Campo = (Select :Campo)'#10'select @Serie = (Select :Serie)'#10#10'se' +
              'lect Folio from folio'#10'where campo = @campo and serie = @serie'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'Folio'
                TableField = 'Folio'
              end>
          end>
        Name = 'spFolioActual'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'Folio'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.ESTACION'
            SQL = 
              'SELECT '#10'    IDESTACION, Nombre, RazonSocial, RFC, ClavePemex, ES' +
              'TADO, IVA, Fabricante, Colonia, Host, Impuesto, CuentaContable'#10' ' +
              ' FROM'#10'    dbo.Estacion'#10'order by IDESTACION'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'IDESTACION'
                TableField = 'IDESTACION'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'NOMBRE'
                SQLOrigin = 'Nombre'
              end
              item
                DatasetField = 'RazonSocial'
                TableField = 'RAZONSOCIAL'
                SQLOrigin = 'RazonSocial'
              end
              item
                DatasetField = 'RFC'
                TableField = 'RFC'
              end
              item
                DatasetField = 'ClavePemex'
                TableField = 'ClavePemex'
              end
              item
                DatasetField = 'ESTADO'
                TableField = 'ESTADO'
              end
              item
                DatasetField = 'IVA'
                TableField = 'IVA'
              end
              item
                DatasetField = 'Fabricante'
                TableField = 'Fabricante'
              end
              item
                DatasetField = 'Colonia'
                TableField = 'COLONIA'
                SQLOrigin = 'Colonia'
              end
              item
                DatasetField = 'Host'
                TableField = 'HOST'
                SQLOrigin = 'Host'
              end
              item
                DatasetField = 'Impuesto'
                TableField = 'IMPUESTO'
                SQLOrigin = 'Impuesto'
              end
              item
                DatasetField = 'CuentaContable'
                TableField = 'CUENTACONTABLE'
                SQLOrigin = 'CuentaContable'
              end>
          end>
        Name = 'dbo.ESTACION'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IDESTACION'
            DataType = datInteger
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 100
          end
          item
            Name = 'RazonSocial'
            DataType = datString
            Size = 100
          end
          item
            Name = 'RFC'
            DataType = datString
            Size = 30
          end
          item
            Name = 'ClavePemex'
            DataType = datString
            Size = 15
          end
          item
            Name = 'ESTADO'
            DataType = datString
            Size = 30
          end
          item
            Name = 'IVA'
            DataType = datFloat
          end
          item
            Name = 'Fabricante'
            DataType = datInteger
          end
          item
            Name = 'Colonia'
            DataType = datString
            Size = 30
          end
          item
            Name = 'Host'
            DataType = datString
            Size = 30
          end
          item
            Name = 'Impuesto'
            DataType = datFloat
          end
          item
            Name = 'CuentaContable'
            DataType = datString
            Size = 20
          end>
      end
      item
        Params = <
          item
            Name = 'Campo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Serie'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Folio'
            SQL = 
              'DECLARE @Campo AS VARCHAR(30)'#10'DECLARE @Serie AS VARCHAR(20)'#10#10'SEL' +
              'ECT @Campo = :Campo'#10'SELECT @Serie = :Serie'#10#10'SELECT Folio'#10'FROM Fo' +
              'lio'#10'WHERE (UPPER(Campo) = UPPER(@Campo)) AND (UPPER(Serie) = UPP' +
              'ER(@Serie))'#10#10'UPDATE Folio'#10'SET Folio = Folio + 1'#10'WHERE (UPPER(Cam' +
              'po) = UPPER(@Campo)) AND (UPPER(Serie) = UPPER(@Serie))'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'Folio'
                TableField = 'Folio'
              end>
          end>
        Name = 'spFolio'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'Folio'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.BITACORAESTACION'
            SQL = 
              'SELECT '#9#10#9'"BITACORAID", "USUARIOID", "FECHA", '#10#9'"NOTA", "ACTIVID' +
              'AD", "FRECUENCIA", '#10#9'"OBSERVACIONES", "ESTACIONID", "FIRMA", '#10#9'"' +
              'FECHAHORA", "FOLIO", "FOTO1" '#10'FROM '#10#9'"dbo"."BITACORAESTACION" '#10'W' +
              'HERE '#10#9'BITACORAID = -1'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'BITACORAID'
                TableField = 'BITACORAID'
              end
              item
                DatasetField = 'USUARIOID'
                TableField = 'USUARIOID'
              end
              item
                DatasetField = 'FECHA'
                TableField = 'FECHA'
              end
              item
                DatasetField = 'NOTA'
                TableField = 'NOTA'
              end
              item
                DatasetField = 'ACTIVIDAD'
                TableField = 'ACTIVIDAD'
              end
              item
                DatasetField = 'FRECUENCIA'
                TableField = 'FRECUENCIA'
              end
              item
                DatasetField = 'OBSERVACIONES'
                TableField = 'OBSERVACIONES'
              end
              item
                DatasetField = 'ESTACIONID'
                TableField = 'ESTACIONID'
              end
              item
                DatasetField = 'FIRMA'
                TableField = 'FIRMA'
              end
              item
                DatasetField = 'FECHAHORA'
                TableField = 'FECHAHORA'
              end
              item
                DatasetField = 'FOLIO'
                TableField = 'FOLIO'
              end
              item
                DatasetField = 'FOTO1'
                TableField = 'FOTO1'
              end>
          end>
        Name = 'dbo.BITACORAESTACION'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'BITACORAID'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'USUARIOID'
            DataType = datInteger
          end
          item
            Name = 'FECHA'
            DataType = datDateTime
          end
          item
            Name = 'NOTA'
            DataType = datString
            Size = 200
          end
          item
            Name = 'ACTIVIDAD'
            DataType = datString
            Size = 1000
          end
          item
            Name = 'FRECUENCIA'
            DataType = datString
            Size = 1000
          end
          item
            Name = 'OBSERVACIONES'
            DataType = datString
            Size = 1000
          end
          item
            Name = 'ESTACIONID'
            DataType = datInteger
          end
          item
            Name = 'FIRMA'
            DataType = datBlob
          end
          item
            Name = 'FECHAHORA'
            DataType = datDateTime
          end
          item
            Name = 'FOLIO'
            DataType = datInteger
          end
          item
            Name = 'FOTO1'
            DataType = datBlob
          end>
      end
      item
        Params = <
          item
            Name = 'FIRMADEFAULT'
            DataType = datBlob
            BlobType = dabtBlob
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'UsuarioID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.USUARIO'
            SQL = 
              'UPDATE USUARIO'#10'set FIRMADEFAULT = :FIRMADEFAULT,'#10'    CODIGO = '#39'P' +
              'ETER'#39#10'where USUARIO.IDEMPLEADO = :UsuarioID'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spActualizaFirmaDefault'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <>
      end
      item
        Params = <
          item
            Name = 'USUARIOID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'GAUSS'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.USUARIO'
            SQL = 
              'SELECT '#9#10#9'"IDEMPLEADO", "CODIGO", "NOMBRE", '#10#9'"USERNAME", "USERP' +
              'ASSWORD", "FIRMADEFAULT" '#10'FROM '#10#9'"dbo"."USUARIO" '#10'WHERE '#10#9'IDEMPL' +
              'EADO = :USUARIOID'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'IDEMPLEADO'
                TableField = 'IDEMPLEADO'
              end
              item
                DatasetField = 'CODIGO'
                TableField = 'CODIGO'
              end
              item
                DatasetField = 'NOMBRE'
                TableField = 'NOMBRE'
              end
              item
                DatasetField = 'USERNAME'
                TableField = 'USERNAME'
              end
              item
                DatasetField = 'USERPASSWORD'
                TableField = 'USERPASSWORD'
              end
              item
                DatasetField = 'FIRMADEFAULT'
                TableField = 'FIRMADEFAULT'
              end>
          end>
        Name = 'dbo.USUARIO'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IDEMPLEADO'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'CODIGO'
            DataType = datString
            Size = 10
          end
          item
            Name = 'NOMBRE'
            DataType = datString
            Size = 70
          end
          item
            Name = 'USERNAME'
            DataType = datString
            Size = 10
            Required = True
          end
          item
            Name = 'USERPASSWORD'
            DataType = datString
            Size = 10
            Required = True
          end
          item
            Name = 'FIRMADEFAULT'
            DataType = datBlob
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.EMPLEADO'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'IDEMPLEADO'
                TableField = 'IDEMPLEADO'
              end
              item
                DatasetField = 'NOMBRE'
                TableField = 'NOMBRE'
              end
              item
                DatasetField = 'CODIGOEMPLEADO'
                TableField = 'CODIGOEMPLEADO'
              end
              item
                DatasetField = 'DOMICILIO'
                TableField = 'DOMICILIO'
              end
              item
                DatasetField = 'CIUDAD'
                TableField = 'CIUDAD'
              end
              item
                DatasetField = 'TELEFONO'
                TableField = 'TELEFONO'
              end
              item
                DatasetField = 'CUENTACONTABLE'
                TableField = 'CUENTACONTABLE'
              end
              item
                DatasetField = 'FECHAALTA'
                TableField = 'FECHAALTA'
              end
              item
                DatasetField = 'FECHABAJA'
                TableField = 'FECHABAJA'
              end
              item
                DatasetField = 'IMSS'
                TableField = 'IMSS'
              end
              item
                DatasetField = 'STATUS'
                TableField = 'STATUS'
              end
              item
                DatasetField = 'FOTOEMPLEADO'
                TableField = 'FOTOEMPLEADO'
              end
              item
                DatasetField = 'IDESTACION'
                TableField = 'IDESTACION'
              end
              item
                DatasetField = 'TURNO'
                TableField = 'TURNO'
              end>
          end>
        Name = 'dbo.EMPLEADO'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.HORARIOEMPLEADO'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'IDHORARIO'
                TableField = 'IDHORARIO'
              end
              item
                DatasetField = 'IDEMPLEADO'
                TableField = 'IDEMPLEADO'
              end
              item
                DatasetField = 'FECHAALTA'
                TableField = 'FECHAALTA'
              end
              item
                DatasetField = 'HORAINICIO'
                TableField = 'HORAINICIO'
              end
              item
                DatasetField = 'HORAFINAL'
                TableField = 'HORAFINAL'
              end
              item
                DatasetField = 'REFERENCIA'
                TableField = 'REFERENCIA'
              end
              item
                DatasetField = 'NOMBREEMPLEADO'
                TableField = 'NOMBREEMPLEADO'
              end
              item
                DatasetField = 'IDESTACION'
                TableField = 'IDESTACION'
              end>
          end>
        Name = 'dbo.HORARIOEMPLEADO'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IDHORARIO'
            DataType = datInteger
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'IDEMPLEADO'
            DataType = datInteger
          end
          item
            Name = 'FECHAALTA'
            DataType = datDateTime
          end
          item
            Name = 'HORAINICIO'
            DataType = datDateTime
          end
          item
            Name = 'HORAFINAL'
            DataType = datDateTime
          end
          item
            Name = 'REFERENCIA'
            DataType = datString
            Size = 100
          end
          item
            Name = 'NOMBREEMPLEADO'
            DataType = datString
            Size = 150
          end
          item
            Name = 'IDESTACION'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.PROGRAMAMANTENIMIENTO'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'IDPROGRAMAMANTENIMIENTO'
                TableField = 'IDPROGRAMAMANTENIMIENTO'
              end
              item
                DatasetField = 'CODIGO'
                TableField = 'CODIGO'
              end
              item
                DatasetField = 'CONCEPTO'
                TableField = 'CONCEPTO'
              end
              item
                DatasetField = 'IDTIPOMOVIMIENTO'
                TableField = 'IDTIPOMOVIMIENTO'
              end
              item
                DatasetField = 'FECHAMANTENIMIENTO'
                TableField = 'FECHAMANTENIMIENTO'
              end
              item
                DatasetField = 'PERIODICIDAD'
                TableField = 'PERIODICIDAD'
              end
              item
                DatasetField = 'IDESTACION'
                TableField = 'IDESTACION'
              end>
          end>
        Name = 'dbo.PROGRAMAMANTENIMIENTO'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
            Size = 500
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
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.TIPOMANTENIMIENTO'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'IDTIPOMANTENIMIENTO'
                TableField = 'IDTIPOMANTENIMIENTO'
              end
              item
                DatasetField = 'CONCEPTO'
                TableField = 'CONCEPTO'
              end>
          end>
        Name = 'dbo.TIPOMANTENIMIENTO'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
      end
      item
        Params = <
          item
            Name = 'TIPO'
            DataType = datMemo
            Value = '5'
            ParamType = daptInput
          end
          item
            Name = 'IDESTACION'
            DataType = datMemo
            Value = '2601'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'DECLARE @XML VARCHAR(MAX)'#10'DECLARE @IDESTACION INT'#10'DECLARE @TIPO ' +
              'INT'#10'DECLARE @COUNT INT'#10#10'SET @TIPO = :TIPO'#10'SET @IDESTACION = :IDE' +
              'STACION'#10#10#10'IF @TIPO = 1'#10'BEGIN'#10'SET @COUNT = (SELECT COUNT(PROGRAMA' +
              'MANTENIMIENTO.IDPROGRAMAMANTENIMIENTO) FROM PROGRAMAMANTENIMIENT' +
              'O'#10'INNER JOIN MANTENIMIENTOACTIVIDAD ON MANTENIMIENTOACTIVIDAD.ID' +
              'PROGRAMAMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIM' +
              'IENTO'#10'INNER JOIN TIPOMANTENIMIENTO ON TIPOMANTENIMIENTO.IDTIPOMA' +
              'NTENIMIENTO = PROGRAMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHERE PROGR' +
              'AMAMANTENIMIENTO.IDESTACION = @IDESTACION AND MANTENIMIENTOACTIV' +
              'IDAD.STATUS= '#39'PENDIENTE'#39')'#10'SET @XML ='#10'(SELECT TOP 50 MANTENIMIENT' +
              'OACTIVIDAD.IDMANTENIMIENTOACTIVIDAD, PROGRAMAMANTENIMIENTO.CODIG' +
              'O, PROGRAMAMANTENIMIENTO.CONCEPTO, TIPOMANTENIMIENTO.CONCEPTO TI' +
              'POMANTO,'#10'       MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIEN' +
              'TO, MANTENIMIENTOACTIVIDAD.STATUS FROM PROGRAMAMANTENIMIENTO'#10'INN' +
              'ER JOIN MANTENIMIENTOACTIVIDAD ON MANTENIMIENTOACTIVIDAD.IDPROGR' +
              'AMAMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIMIENTO' +
              #10'INNER JOIN TIPOMANTENIMIENTO ON TIPOMANTENIMIENTO.IDTIPOMANTENI' +
              'MIENTO = PROGRAMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHERE PROGRAMAMA' +
              'NTENIMIENTO.IDESTACION = @IDESTACION AND MANTENIMIENTOACTIVIDAD.' +
              'STATUS= '#39'PENDIENTE'#39' ORDER BY MANTENIMIENTOACTIVIDAD.FECHAAREALIZ' +
              'ARMANTENIMIENTO ASC'#10'FOR XML RAW ('#39'SERVICES'#39'), ELEMENTS)'#10'END'#10#10'IF ' +
              '@TIPO = 2'#10'BEGIN'#10'SET @COUNT = (5)'#10'SET @XML ='#10'(SELECT TOP 5 MANTEN' +
              'IMIENTOACTIVIDAD.IDMANTENIMIENTOACTIVIDAD, PROGRAMAMANTENIMIENTO' +
              '.CODIGO, PROGRAMAMANTENIMIENTO.CONCEPTO, TIPOMANTENIMIENTO.CONCE' +
              'PTO TIPOMANTO,'#10'       MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTE' +
              'NIMIENTO, MANTENIMIENTOACTIVIDAD.STATUS FROM PROGRAMAMANTENIMIEN' +
              'TO'#10'INNER JOIN MANTENIMIENTOACTIVIDAD ON MANTENIMIENTOACTIVIDAD.I' +
              'DPROGRAMAMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENI' +
              'MIENTO'#10'INNER JOIN TIPOMANTENIMIENTO ON TIPOMANTENIMIENTO.IDTIPOM' +
              'ANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHERE PROG' +
              'RAMAMANTENIMIENTO.IDESTACION = @IDESTACION AND MANTENIMIENTOACTI' +
              'VIDAD.STATUS= '#39'PENDIENTE'#39' ORDER BY MANTENIMIENTOACTIVIDAD.FECHAA' +
              'REALIZARMANTENIMIENTO ASC'#10'FOR XML RAW ('#39'SERVICES'#39'), ELEMENTS)'#10'EN' +
              'D'#10#10'IF @TIPO = 3'#10'BEGIN'#10'SET @COUNT = (SELECT COUNT(PROGRAMAMANTENI' +
              'MIENTO.IDPROGRAMAMANTENIMIENTO) FROM PROGRAMAMANTENIMIENTO'#10'INNER' +
              ' JOIN MANTENIMIENTOACTIVIDAD ON MANTENIMIENTOACTIVIDAD.IDPROGRAM' +
              'AMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIMIENTO'#10'I' +
              'NNER JOIN TIPOMANTENIMIENTO ON TIPOMANTENIMIENTO.IDTIPOMANTENIMI' +
              'ENTO = PROGRAMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHERE PROGRAMAMANT' +
              'ENIMIENTO.IDESTACION = @IDESTACION AND MANTENIMIENTOACTIVIDAD.ST' +
              'ATUS= '#39'PENDIENTE'#39' AND MONTH(MANTENIMIENTOACTIVIDAD.FECHAAREALIZA' +
              'RMANTENIMIENTO) = MONTH(GETDATE())'#10'                             ' +
              '                        AND DAY(MANTENIMIENTOACTIVIDAD.FECHAAREA' +
              'LIZARMANTENIMIENTO) = DAY(GETDATE())'#10#9#9#9#9#9#9#9#9#9#9#9#9#9' AND YEAR(MANT' +
              'ENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIENTO) = YEAR(GETDATE()' +
              '))'#10'SET @XML ='#10'(SELECT MANTENIMIENTOACTIVIDAD.IDMANTENIMIENTOACTI' +
              'VIDAD, PROGRAMAMANTENIMIENTO.CODIGO, PROGRAMAMANTENIMIENTO.CONCE' +
              'PTO, TIPOMANTENIMIENTO.CONCEPTO TIPOMANTO,'#10'       MANTENIMIENTOA' +
              'CTIVIDAD.FECHAAREALIZARMANTENIMIENTO, MANTENIMIENTOACTIVIDAD.STA' +
              'TUS FROM PROGRAMAMANTENIMIENTO'#10'INNER JOIN MANTENIMIENTOACTIVIDAD' +
              ' ON MANTENIMIENTOACTIVIDAD.IDPROGRAMAMANTENIMIENTO = PROGRAMAMAN' +
              'TENIMIENTO.IDPROGRAMAMANTENIMIENTO'#10'INNER JOIN TIPOMANTENIMIENTO ' +
              'ON TIPOMANTENIMIENTO.IDTIPOMANTENIMIENTO = PROGRAMAMANTENIMIENTO' +
              '.IDTIPOMOVIMIENTO'#10'WHERE PROGRAMAMANTENIMIENTO.IDESTACION = @IDES' +
              'TACION AND MANTENIMIENTOACTIVIDAD.STATUS= '#39'PENDIENTE'#39' AND MONTH(' +
              'MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIENTO) = MONTH(GETD' +
              'ATE())'#10'                                                     AND ' +
              'DAY(MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIENTO) = DAY(GE' +
              'TDATE())'#10#9#9#9#9#9#9#9#9#9#9#9#9#9' AND YEAR(MANTENIMIENTOACTIVIDAD.FECHAAREA' +
              'LIZARMANTENIMIENTO) = YEAR(GETDATE()) ORDER BY MANTENIMIENTOACTI' +
              'VIDAD.FECHAAREALIZARMANTENIMIENTO ASC'#10'FOR XML RAW ('#39'SERVICES'#39'), ' +
              'ELEMENTS)'#10'END'#10#10'IF @TIPO = 4'#10'BEGIN'#10'SET @COUNT = (SELECT COUNT(PRO' +
              'GRAMAMANTENIMIENTO.IDPROGRAMAMANTENIMIENTO) FROM PROGRAMAMANTENI' +
              'MIENTO'#10'INNER JOIN MANTENIMIENTOACTIVIDAD ON MANTENIMIENTOACTIVID' +
              'AD.IDPROGRAMAMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDPROGRAMAMAN' +
              'TENIMIENTO'#10'INNER JOIN TIPOMANTENIMIENTO ON TIPOMANTENIMIENTO.IDT' +
              'IPOMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHERE ' +
              'PROGRAMAMANTENIMIENTO.IDESTACION = @IDESTACION AND MANTENIMIENTO' +
              'ACTIVIDAD.STATUS<> '#39'PENDIENTE'#39')'#10#10'SET @XML ='#10'(SELECT MANTENIMIENT' +
              'OACTIVIDAD.IDMANTENIMIENTOACTIVIDAD, PROGRAMAMANTENIMIENTO.CODIG' +
              'O, PROGRAMAMANTENIMIENTO.CONCEPTO, TIPOMANTENIMIENTO.CONCEPTO TI' +
              'POMANTO,'#10'       MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIEN' +
              'TO, MANTENIMIENTOACTIVIDAD.STATUS FROM PROGRAMAMANTENIMIENTO'#10'INN' +
              'ER JOIN MANTENIMIENTOACTIVIDAD ON MANTENIMIENTOACTIVIDAD.IDPROGR' +
              'AMAMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIMIENTO' +
              #10'INNER JOIN TIPOMANTENIMIENTO ON TIPOMANTENIMIENTO.IDTIPOMANTENI' +
              'MIENTO = PROGRAMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHERE PROGRAMAMA' +
              'NTENIMIENTO.IDESTACION = @IDESTACION AND MANTENIMIENTOACTIVIDAD.' +
              'STATUS<> '#39'PENDIENTE'#39' ORDER BY MANTENIMIENTOACTIVIDAD.FECHAAREALI' +
              'ZARMANTENIMIENTO ASC'#10'FOR XML RAW ('#39'SERVICES'#39'), ELEMENTS)'#10'END'#10#10'IF' +
              ' @TIPO = 5'#10'BEGIN'#10'SET @COUNT = (SELECT COUNT(PROGRAMAMANTENIMIENT' +
              'O.IDPROGRAMAMANTENIMIENTO) FROM PROGRAMAMANTENIMIENTO'#10'INNER JOIN' +
              ' MANTENIMIENTOACTIVIDAD ON MANTENIMIENTOACTIVIDAD.IDPROGRAMAMANT' +
              'ENIMIENTO = PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIMIENTO'#10'INNER ' +
              'JOIN TIPOMANTENIMIENTO ON TIPOMANTENIMIENTO.IDTIPOMANTENIMIENTO ' +
              '= PROGRAMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHERE PROGRAMAMANTENIMI' +
              'ENTO.IDESTACION = @IDESTACION AND MANTENIMIENTOACTIVIDAD.STATUS=' +
              ' '#39'PENDIENTE'#39' AND CAST(MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTE' +
              'NIMIENTO AS DATE) <= CAST(GETDATE() AS DATE))'#10#10'SET @XML ='#10'(SELEC' +
              'T MANTENIMIENTOACTIVIDAD.IDMANTENIMIENTOACTIVIDAD, PROGRAMAMANTE' +
              'NIMIENTO.CODIGO, PROGRAMAMANTENIMIENTO.CONCEPTO, TIPOMANTENIMIEN' +
              'TO.CONCEPTO TIPOMANTO,'#10'       MANTENIMIENTOACTIVIDAD.FECHAAREALI' +
              'ZARMANTENIMIENTO, MANTENIMIENTOACTIVIDAD.STATUS FROM PROGRAMAMAN' +
              'TENIMIENTO'#10'INNER JOIN MANTENIMIENTOACTIVIDAD ON MANTENIMIENTOACT' +
              'IVIDAD.IDPROGRAMAMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDPROGRAM' +
              'AMANTENIMIENTO'#10'INNER JOIN TIPOMANTENIMIENTO ON TIPOMANTENIMIENTO' +
              '.IDTIPOMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WH' +
              'ERE PROGRAMAMANTENIMIENTO.IDESTACION = @IDESTACION AND MANTENIMI' +
              'ENTOACTIVIDAD.STATUS= '#39'PENDIENTE'#39' AND CAST(MANTENIMIENTOACTIVIDA' +
              'D.FECHAAREALIZARMANTENIMIENTO AS DATE) <= CAST(GETDATE() AS DATE' +
              ') ORDER BY MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIENTO AS' +
              'C'#10'FOR XML RAW ('#39'SERVICES'#39'), ELEMENTS)'#10'END'#10#10'SELECT CAST(@COUNT AS' +
              ' VARCHAR(100)) + @XML AS XML'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'XML'
                TableField = 'XML'
              end>
          end>
        Name = 'spObtenActividadesProgramadas'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'XML'
            DataType = datMemo
          end>
      end
      item
        Params = <
          item
            Name = 'EstacionID'
            DataType = datInteger
            Value = '2601'
            ParamType = daptInput
          end
          item
            Name = 'TURNO'
            DataType = datInteger
            Value = '2'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'DECLARE @IDEMPLEADO INT'#10'DECLARE @FOTOEMPLEADO VARBINARY(MAX)'#10'DEC' +
              'LARE @FOTOBASE64 VARCHAR(MAX)'#10'DECLARE @COUNT INT'#10#10'SET @COUNT = (' +
              'SELECT COUNT(HORARIOEMPLEADO.IDEMPLEADO)'#10'              FROM HORA' +
              'RIOEMPLEADO INNER JOIN EMPLEADO ON EMPLEADO.IDEMPLEADO = HORARIO' +
              'EMPLEADO.IDEMPLEADO'#10'              WHERE HORARIOEMPLEADO.IDESTACI' +
              'ON = :EstacionID AND EMPLEADO.TURNO = :TURNO)'#10'              '#10'CRE' +
              'ATE TABLE #HORARIOEMPLEADO'#10'(IDEMPLEADO INT,'#10' HORAINICIO VARCHAR(' +
              '100),     '#10' HORAFINAL VARCHAR(100),'#10' REFERENCIA VARCHAR(100),'#10' I' +
              'DESTACION INT,'#10' NOMBREEMPLEADO VARCHAR(100),'#10' FOTOEMPLEADO varbi' +
              'nary(MAX),'#10' FOTOBASE64 VARCHAR(MAX))    '#10#10'INSERT INTO #HORARIOEM' +
              'PLEADO'#10'SELECT HORARIOEMPLEADO.IDEMPLEADO, '#10'       LTRIM(RIGHT(co' +
              'nvert(VARCHAR(20), HORARIOEMPLEADO.HORAINICIO, 100),7)) HORAINIC' +
              'IO,'#10#9'   LTRIM(RIGHT(convert(VARCHAR(20), HORARIOEMPLEADO.HORAFIN' +
              'AL, 100),7))  HORAFINAL,'#10'HORARIOEMPLEADO.REFERENCIA, HORARIOEMPL' +
              'EADO.IDESTACION, HORARIOEMPLEADO.NOMBREEMPLEADO,'#10'EMPLEADO.FOTOEM' +
              'PLEADO, '#39#39#10'FROM HORARIOEMPLEADO INNER JOIN EMPLEADO ON EMPLEADO.' +
              'IDEMPLEADO = HORARIOEMPLEADO.IDEMPLEADO'#10'WHERE HORARIOEMPLEADO.ID' +
              'ESTACION = :EstacionID AND EMPLEADO.TURNO = :TURNO AND EMPLEADO.' +
              'STATUS = 1'#10#10'DECLARE CMIEMPLEADO CURSOR FOR'#10'SELECT     IDEMPLEADO' +
              #10'FROM         #HORARIOEMPLEADO'#10'OPEN CMIEMPLEADO'#10'FETCH NEXT FROM ' +
              'CMIEMPLEADO INTO @IDEMPLEADO'#10'    WHILE (@@FETCH_STATUS = 0)'#10#9'BEG' +
              'IN'#10#9#9'SET @FOTOEMPLEADO = (SELECT #HORARIOEMPLEADO.FOTOEMPLEADO F' +
              'ROM #HORARIOEMPLEADO WHERE #HORARIOEMPLEADO.IDEMPLEADO = @IDEMPL' +
              'EADO)'#10#10#9#9'SET @FOTOBASE64 = (SELECT '#10'                          CA' +
              'ST('#39#39' AS XML).value('#39'xs:base64Binary(sql:variable("@FOTOEMPLEADO' +
              '"))'#39','#39'VARCHAR(MAX)'#39') AS FOTOB64'#10'                          FROM #' +
              'HORARIOEMPLEADO'#10'                          WHERE #HORARIOEMPLEADO' +
              '.IDEMPLEADO = @IDEMPLEADO)'#10#10'        UPDATE #HORARIOEMPLEADO'#10#9#9'SE' +
              'T FOTOBASE64 = @FOTOBASE64 WHERE #HORARIOEMPLEADO.IDEMPLEADO = @' +
              'IDEMPLEADO'#10#10#9#9'SET @FOTOEMPLEADO = NULL'#10#9#9'FETCH NEXT FROM CMIEMPL' +
              'EADO INTO @IDEMPLEADO      '#10'    END'#10'    CLOSE CMIEMPLEADO'#10'    DE' +
              'ALLOCATE CMIEMPLEADO '#10#10'DECLARE @XML VARCHAR(MAX)'#10#10'SET @XML = (SE' +
              'LECT #HORARIOEMPLEADO.IDEMPLEADO, #HORARIOEMPLEADO.HORAINICIO, #' +
              'HORARIOEMPLEADO.HORAFINAL, #HORARIOEMPLEADO.IDESTACION,'#10'       #' +
              'HORARIOEMPLEADO.NOMBREEMPLEADO, #HORARIOEMPLEADO.REFERENCIA, #HO' +
              'RARIOEMPLEADO.FOTOBASE64 FROM #HORARIOEMPLEADO'#10'FOR XML RAW ('#39'SER' +
              'VICES'#39'), ELEMENTS)'#10#10'SELECT CAST(@COUNT AS VARCHAR(100)) + @XML A' +
              'S XML'#10#10'DROP TABLE #HORARIOEMPLEADO'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'XML'
                TableField = 'XML'
              end>
          end>
        Name = 'spObtenFotosEmpleado'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'XML'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'IDESTACION'
            DataType = datInteger
            Value = '2601'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'DECLARE @XML VARCHAR(MAX)'#10'DECLARE @IDESTACION INT'#10'DECLARE @COUNT' +
              ' INT'#10#10'SET @IDESTACION = :IDESTACION'#10#10'SET @COUNT = (SELECT COUNT(' +
              'PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIMIENTO) FROM PROGRAMAMANT' +
              'ENIMIENTO'#10'INNER JOIN MANTENIMIENTOACTIVIDAD ON MANTENIMIENTOACTI' +
              'VIDAD.IDPROGRAMAMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDPROGRAMA' +
              'MANTENIMIENTO'#10'INNER JOIN TIPOMANTENIMIENTO ON TIPOMANTENIMIENTO.' +
              'IDTIPOMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHE' +
              'RE PROGRAMAMANTENIMIENTO.IDESTACION = @IDESTACION AND MANTENIMIE' +
              'NTOACTIVIDAD.STATUS= '#39'PENDIENTE'#39' AND MONTH(MANTENIMIENTOACTIVIDA' +
              'D.FECHAAREALIZARMANTENIMIENTO) <= MONTH(GETDATE())'#10'             ' +
              '                                        AND DAY(MANTENIMIENTOACT' +
              'IVIDAD.FECHAAREALIZARMANTENIMIENTO) <= DAY(GETDATE())'#10#9#9#9#9#9#9#9#9#9#9 +
              #9#9#9' AND YEAR(MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIENTO)' +
              ' <= YEAR(GETDATE()))'#10#10'SET @XML ='#10'(SELECT PROGRAMAMANTENIMIENTO.I' +
              'DPROGRAMAMANTENIMIENTO, PROGRAMAMANTENIMIENTO.CODIGO, PROGRAMAMA' +
              'NTENIMIENTO.CONCEPTO, TIPOMANTENIMIENTO.CONCEPTO TIPOMANTO,'#10'    ' +
              '   MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIENTO, MANTENIMI' +
              'ENTOACTIVIDAD.STATUS FROM PROGRAMAMANTENIMIENTO'#10'INNER JOIN MANTE' +
              'NIMIENTOACTIVIDAD ON MANTENIMIENTOACTIVIDAD.IDPROGRAMAMANTENIMIE' +
              'NTO = PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIMIENTO'#10'INNER JOIN T' +
              'IPOMANTENIMIENTO ON TIPOMANTENIMIENTO.IDTIPOMANTENIMIENTO = PROG' +
              'RAMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHERE PROGRAMAMANTENIMIENTO.I' +
              'DESTACION = @IDESTACION AND MANTENIMIENTOACTIVIDAD.STATUS= '#39'PEND' +
              'IENTE'#39' AND MONTH(MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIE' +
              'NTO) <= MONTH(GETDATE())'#10'                                       ' +
              '              AND DAY(MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTE' +
              'NIMIENTO) <= DAY(GETDATE())'#10#9#9#9#9#9#9#9#9#9#9#9#9#9' AND YEAR(MANTENIMIENTO' +
              'ACTIVIDAD.FECHAAREALIZARMANTENIMIENTO) <= YEAR(GETDATE())'#10'FOR XM' +
              'L RAW ('#39'SERVICES'#39'), ELEMENTS)'#10#10'SELECT CAST(@COUNT AS VARCHAR(100' +
              ')) + @XML AS XML'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'XML'
                TableField = 'XML'
              end>
          end>
        Name = 'spObtenNotificacionesDiarias'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'XML'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'IDMANTENIMIENTOACTIVIDAD'
            DataType = datInteger
            Value = '1'
            ParamType = daptInput
          end
          item
            Name = 'STATUS'
            DataType = datString
            Size = 65536
            Value = 'Actividad no Realizada'
            ParamType = daptInput
          end
          item
            Name = 'NOTA'
            DataType = datString
            Size = 65536
            Value = 'falto equipo'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'DECLARE @IDMANTE INT'#10'DECLARE @FECHAAREALIZARMANTENIMIENTO AS DAT' +
              'ETIME'#10'DECLARE @PERIODICIDAD AS VARCHAR(100)'#10'DECLARE @FECHA AS DA' +
              'TETIME'#10'DECLARE @IDPROGRAMAMANTENIMIENTO INT'#10'DECLARE @PENDIENTERE' +
              'GISTRADO INT'#10#10'DECLARE @FECHAHOY DATETIME'#10#10'SET @FECHAHOY = GETDAT' +
              'E()'#10'SET @PENDIENTEREGISTRADO = 0'#10'SET @IDPROGRAMAMANTENIMIENTO = ' +
              '(SELECT IDPROGRAMAMANTENIMIENTO FROM MANTENIMIENTOACTIVIDAD WHER' +
              'E IDMANTENIMIENTOACTIVIDAD = :IDMANTENIMIENTOACTIVIDAD)'#10'SET @FEC' +
              'HAAREALIZARMANTENIMIENTO= (SELECT FECHAAREALIZARMANTENIMIENTO FR' +
              'OM MANTENIMIENTOACTIVIDAD'#10'                                   WHE' +
              'RE IDMANTENIMIENTOACTIVIDAD = :IDMANTENIMIENTOACTIVIDAD)'#10'SET @PE' +
              'RIODICIDAD = (SELECT PROGRAMAMANTENIMIENTO.PERIODICIDAD FROM MAN' +
              'TENIMIENTOACTIVIDAD INNER JOIN'#10'PROGRAMAMANTENIMIENTO ON PROGRAMA' +
              'MANTENIMIENTO.IDPROGRAMAMANTENIMIENTO = MANTENIMIENTOACTIVIDAD.I' +
              'DPROGRAMAMANTENIMIENTO'#10'WHERE IDMANTENIMIENTOACTIVIDAD = :IDMANTE' +
              'NIMIENTOACTIVIDAD)'#10'SET @IDMANTE = (SELECT ISNULL(MAX(IDMANTENIMI' +
              'ENTOACTIVIDAD),0)+1 FROM MANTENIMIENTOACTIVIDAD)'#10#10'IF (@PERIODICI' +
              'DAD = '#39'DIARIO'#39')'#10#9'SET @FECHA = DATEADD(day, 1, @FECHAAREALIZARMAN' +
              'TENIMIENTO)'#10#10'IF (@PERIODICIDAD = '#39'SEMANAL'#39')'#10#9'SET @FECHA = DATEAD' +
              'D(day, 7, @FECHAAREALIZARMANTENIMIENTO)'#10#10'IF (@PERIODICIDAD = '#39'ME' +
              'NSUAL'#39')'#10#9'SET @FECHA = DATEADD(month, 1, @FECHAAREALIZARMANTENIMI' +
              'ENTO)'#10#10'IF (@PERIODICIDAD = '#39'TRIMESTRAL'#39')'#10#9'SET @FECHA = DATEADD(m' +
              'onth, 3, @FECHAAREALIZARMANTENIMIENTO)'#10#10'IF (@PERIODICIDAD = '#39'CUA' +
              'TRIMESTRAL'#39')'#10#9'SET @FECHA = DATEADD(month, 4, @FECHAAREALIZARMANT' +
              'ENIMIENTO)'#10#10'IF (@PERIODICIDAD = '#39'SEMESTRAL'#39')'#10#9'SET @FECHA = DATEA' +
              'DD(month, 6, @FECHAAREALIZARMANTENIMIENTO)'#10#10'IF (@PERIODICIDAD = ' +
              #39'ANUAL'#39')'#10#9'SET @FECHA = DATEADD(month, 12, @FECHAAREALIZARMANTENI' +
              'MIENTO)'#10#9#10'SET @PENDIENTEREGISTRADO = (SELECT COUNT(IDPROGRAMAMAN' +
              'TENIMIENTO) FROM MANTENIMIENTOACTIVIDAD WHERE IDPROGRAMAMANTENIM' +
              'IENTO = @IDPROGRAMAMANTENIMIENTO AND STATUS = '#39'PENDIENTE'#39' AND ID' +
              'MANTENIMIENTOACTIVIDAD = :IDMANTENIMIENTOACTIVIDAD)'#9#10'IF (@PENDIE' +
              'NTEREGISTRADO = 1)'#10'BEGIN'#10#9#10'UPDATE MANTENIMIENTOACTIVIDAD'#10'SET STA' +
              'TUS = :STATUS,'#10'    REFERENCIA = :NOTA'#10'WHERE IDMANTENIMIENTOACTIV' +
              'IDAD = :IDMANTENIMIENTOACTIVIDAD'#10#9#10'INSERT INTO MANTENIMIENTOACTI' +
              'VIDAD SELECT @IDMANTE, @IDPROGRAMAMANTENIMIENTO, @FECHA, '#39'PENDIE' +
              'NTE'#39', '#39#39#10#10'END'#10#10'SELECT '#39'ACTIVIDAD REGISTRADA, SE REAGENDO LA ACTI' +
              'VIDAD SEGUN SU PERIODICIDAD'#39' AS RESULTADO'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spRegistraActividadRealizada'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'RESULTADO'
            DataType = datString
            Size = 68
          end>
      end
      item
        Params = <
          item
            Name = 'LoteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'UsuarioID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @LoteID int'#10'declare @Fecha datetime'#10'declare @usuarioid i' +
              'nt'#10'declare @Resultado varchar(100)'#10#10#10'select @LoteID = (Select :L' +
              'oteID)'#10'select @usuarioid = (select :UsuarioID)'#10'select @Fecha = (' +
              'select GetDate())'#10#10'if ((select Count(*) from lotecupon where Lot' +
              'eCuponID = @LoteID and Status = '#39'A'#39') > 0)'#10'begin'#10#9'if ((select cou' +
              'nt(*) from cupon where lotecuponid = @LoteID and status = '#39'A'#39') >' +
              ' 0)'#10#9'begin'#10#9#9'Update LoteCupon set Status = '#39'C'#39', UsuarioCanceloID' +
              ' = @UsuarioID, FechaCancelo = @Fecha'#10#9#9'where LoteCuponID = @Lote' +
              'ID'#10#10#9#9'update Cupon'#10'                set Status = '#39'I'#39', UsuarioCanc' +
              'eloID = @UsuarioID, FechaCancelo = @Fecha'#10#9#9'where LoteCuponID = ' +
              '@LoteID and status = '#39'A'#39#10#9#9#10#9#9'select @Resultado = (select '#39'la ca' +
              'ncelacion del lote fue exitosa.'#39')'#10#9'end'#10#9'else'#10#9'begin'#10'  '#9#9'select @' +
              'Resultado = (select '#39'El Lote no contiene cupones activos.'#39')'#10#9'end' +
              #10'end'#10'else'#10'begin'#10#9'select @Resultado = (select '#39'El Lote no existe ' +
              'o ya fue cancelado.'#39')'#10'end'#10#10'select @Resultado as Resultado'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'Resultado'
                TableField = 'Resultado'
              end>
          end>
        Name = 'spCancelaLote'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'Resultado'
            DataType = datString
            Size = 100
          end>
      end
      item
        Params = <
          item
            Name = 'Codigo'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @Codigo as varchar(20)'#10'declare @CuponID as int'#10#10'select @' +
              'Codigo = (Select :Codigo)'#10#10'select @CuponID = ISNULL((SELECT Cupo' +
              'nID FROM Cupon WHERE  (Barras = @Codigo) or (CAST(CuponID as var' +
              'char(10)) = @Codigo)), 0)'#10#10'select Status from Cupon where cuponi' +
              'd = @CuponID'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'Status'
                TableField = 'Status'
              end>
          end>
        Name = 'spStatusCuponCancelar'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'Status'
            DataType = datString
            Size = 1
          end>
      end
      item
        Params = <
          item
            Name = 'Nombre'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT'#10'    SQL1, SQL2, Template, CampoJoin'#10'  FROM'#10'    Reporte'#10'  ' +
              'WHERE'#10'    Nombre = :Nombre'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'SQL1'
                TableField = 'SQL1'
              end
              item
                DatasetField = 'SQL2'
                TableField = 'SQL2'
              end
              item
                DatasetField = 'Template'
                TableField = 'Template'
              end
              item
                DatasetField = 'CampoJoin'
                TableField = 'CampoJoin'
              end>
          end>
        Name = 'BuscarReporte'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'SQL1'
            DataType = datMemo
          end
          item
            Name = 'SQL2'
            DataType = datMemo
          end
          item
            Name = 'Template'
            DataType = datMemo
          end
          item
            Name = 'CampoJoin'
            DataType = datString
            Size = 30
          end>
      end
      item
        Params = <
          item
            Name = 'GASOLINERO'
            Value = '1'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT NOCERTIFICADO, NOAPROBACION, ANOAPROBACION, FOLIOINICIAL,' +
              ' FOLIOFINAL,'#10'CODIGOPOSTAL, RFC, DOMICILIO, NOMBRE, SUCURSAL, SUC' +
              'URSALDE, TELEFONO1, TELEFONO2'#10'FROM GASOLINERO WHERE GASOLINEROID' +
              ' = :GASOLINERO'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'NOCERTIFICADO'
                TableField = 'NOCERTIFICADO'
              end
              item
                DatasetField = 'NOAPROBACION'
                TableField = 'NOAPROBACION'
              end
              item
                DatasetField = 'ANOAPROBACION'
                TableField = 'ANOAPROBACION'
              end
              item
                DatasetField = 'FOLIOINICIAL'
                TableField = 'FOLIOINICIAL'
              end
              item
                DatasetField = 'FOLIOFINAL'
                TableField = 'FOLIOFINAL'
              end
              item
                DatasetField = 'CODIGOPOSTAL'
                TableField = 'CODIGOPOSTAL'
              end
              item
                DatasetField = 'RFC'
                TableField = 'RFC'
              end
              item
                DatasetField = 'DOMICILIO'
                TableField = 'DOMICILIO'
              end
              item
                DatasetField = 'NOMBRE'
                TableField = 'NOMBRE'
              end
              item
                DatasetField = 'SUCURSAL'
                TableField = 'SUCURSAL'
              end
              item
                DatasetField = 'SUCURSALDE'
                TableField = 'SUCURSALDE'
              end
              item
                DatasetField = 'TELEFONO1'
                TableField = 'TELEFONO1'
              end
              item
                DatasetField = 'TELEFONO2'
                TableField = 'TELEFONO2'
              end>
          end>
        Name = 'spObtenDatosGasolinero'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'NOCERTIFICADO'
            DataType = datString
            Size = 100
          end
          item
            Name = 'NOAPROBACION'
            DataType = datString
            Size = 50
          end
          item
            Name = 'ANOAPROBACION'
            DataType = datString
            Size = 50
          end
          item
            Name = 'FOLIOINICIAL'
            DataType = datString
            Size = 50
          end
          item
            Name = 'FOLIOFINAL'
            DataType = datString
            Size = 50
          end
          item
            Name = 'CODIGOPOSTAL'
            DataType = datString
            Size = 50
          end
          item
            Name = 'RFC'
            DataType = datString
            Size = 20
          end
          item
            Name = 'DOMICILIO'
            DataType = datString
            Size = 100
          end
          item
            Name = 'NOMBRE'
            DataType = datString
            Size = 70
          end
          item
            Name = 'SUCURSAL'
            DataType = datString
            Size = 50
          end
          item
            Name = 'SUCURSALDE'
            DataType = datString
            Size = 50
          end
          item
            Name = 'TELEFONO1'
            DataType = datString
            Size = 50
          end
          item
            Name = 'TELEFONO2'
            DataType = datString
            Size = 50
          end>
      end
      item
        Params = <
          item
            Name = 'ClienteID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'Declare @ClienteID as integer'#10#10'Select @ClienteID = (Select :Clie' +
              'nteID)'#10#10'SELECT distinct * FROM'#10'(SELECT distinct a.SaldoDocumento' +
              'ID, a.ClienteID, x.Saldo, b.Referencia, b.Importe, b.Fecha, b.Ve' +
              'ncimiento, a.MovimientoID'#10' FROM   (SELECT  distinct  SaldoDocume' +
              'ntoID, ClienteID, MovimientoID, SUM(Cargo - Abono) AS Saldo'#10'    ' +
              '    FROM        dbo.SaldoDocumento'#10'        GROUP BY    SaldoDocu' +
              'mentoID, ClienteID, MovimientoID'#10'        HAVING      (SUM(Cargo ' +
              '- Abono) > 0)) AS a INNER JOIN'#10'        (SELECT DISTINCT SaldoDoc' +
              'umentoID, Referencia, Cargo AS Importe, Fecha, MovimientoID, Fec' +
              'haVencimiento AS Vencimiento'#10'        FROM          dbo.SaldoDocu' +
              'mento'#10'        WHERE      (Abono = 0)) AS b ON a.MovimientoID = b' +
              '.MovimientoID and a.SaldoDocumentoID = b.SaldoDocumentoID Inner ' +
              'Join'#10'        (Select sum(Cargo - Abono) as saldo, MovimientoID'#10' ' +
              '        from dbo.SaldoDocumento'#10'         where(dbo.SaldoDocument' +
              'o.ClienteID = @ClienteID)'#10'         Group By MovimientoID)as x ON' +
              ' a.MovimientoID = x.MovimientoID ) AS c'#10#10'Where (c.ClienteID = @C' +
              'lienteID) and (c.saldo > 0.5)'#10
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spSaldoDocumento'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <>
      end
      item
        Params = <
          item
            Name = 'ProductoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'EstacionID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT     Estacion.IVA, A.PRECIOVENTA'#10'FROM         Estacion CRO' +
              'SS JOIN'#10'                          (SELECT     PRECIOVENTA'#10'      ' +
              '                      FROM          Producto'#10'                   ' +
              '         WHERE      IDPRODUCTO = :ProductoID) A'#10'WHERE     (Estac' +
              'ion.IDESTACION = :EstacionID)'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'IVA'
                TableField = 'IVA'
              end
              item
                DatasetField = 'PRECIOVENTA'
                TableField = 'PRECIOVENTA'
              end>
          end>
        Name = 'IVAEstacion'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IVA'
            DataType = datFloat
          end
          item
            Name = 'PRECIOVENTA'
            DataType = datFloat
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 'Select ClienteID, Nombre from Cliente'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end>
          end>
        Name = 'ClienteCupon'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'ClienteID'
            DataType = datInteger
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 70
          end>
      end
      item
        Params = <
          item
            Name = 'LoteCuponID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.LoteCupon'
            SQL = 
              'SELECT '#10'    LoteCuponID, Fecha, Ejercicio, Periodo, Dia, FechaVa' +
              'lido, '#10'    Total, Status, EstacionID, ClienteID, UsuarioID'#10'  FRO' +
              'M'#10'    dbo.LoteCupon'#10'  WHERE LoteCuponID = :LoteCuponID'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'LoteCuponID'
                TableField = 'LoteCuponID'
              end
              item
                DatasetField = 'Fecha'
                TableField = 'Fecha'
              end
              item
                DatasetField = 'Ejercicio'
                TableField = 'Ejercicio'
              end
              item
                DatasetField = 'Periodo'
                TableField = 'Periodo'
              end
              item
                DatasetField = 'Dia'
                TableField = 'Dia'
              end
              item
                DatasetField = 'FechaValido'
                TableField = 'FechaValido'
              end
              item
                DatasetField = 'Total'
                TableField = 'Total'
              end
              item
                DatasetField = 'Status'
                TableField = 'Status'
              end
              item
                DatasetField = 'EstacionID'
                TableField = 'EstacionID'
              end
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'UsuarioID'
                TableField = 'UsuarioID'
              end>
          end>
        Name = 'dbo.LoteCupon'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'LoteCuponID'
            DataType = datInteger
          end
          item
            Name = 'Fecha'
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
            Name = 'Dia'
            DataType = datInteger
          end
          item
            Name = 'FechaValido'
            DataType = datDateTime
          end
          item
            Name = 'Total'
            DataType = datFloat
          end
          item
            Name = 'Status'
            DataType = datString
            Size = 1
          end
          item
            Name = 'EstacionID'
            DataType = datInteger
          end
          item
            Name = 'ClienteID'
            DataType = datInteger
          end
          item
            Name = 'UsuarioID'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'Codigo'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @Codigo as varchar(20)'#10'declare @CuponID as int'#10'declare @' +
              'Ticket as int'#10'declare @EstacionID as int'#10#10'select @Codigo = (Sele' +
              'ct :Codigo)'#10#10'select @CuponID = ISNULL((SELECT CuponID FROM Cupon' +
              ' WHERE  (Barras = @Codigo) or (CAST(CuponID as varchar(10)) = @C' +
              'odigo)), 0)'#10#10'if (@CuponID > 0)'#10'begin'#10#9'select @Ticket = ISNULL((s' +
              'elect ConsumoSecuencia FROM Cupon WHERE CuponID = @CuponID), 0)'#10 +
              #9'select @EstacionID = ISNULL((select ConsumoEstacionID FROM Cupo' +
              'n WHERE CuponID = @CuponID), 0)'#10#9'if (@Ticket > 0)'#10#9'begin'#10#9#9'SELEC' +
              'T     CuponID, Importe, VolumenImporte, Status, FechaConsumo, Co' +
              'nsumoEstacionID, ConsumoSecuencia, ConsumoBombaID, ConsumoTurnoI' +
              'D, ConsumoImporte, ClienteID'#10#9#9'FROM         Cupon'#10#9#9'WHERE     (C' +
              'onsumoEstacionID = @EstacionID) and (ConsumoSecuencia = @Ticket)' +
              #10#9'end'#10#9'else'#10#9'begin'#10#9#9'SELECT     CuponID, Importe, VolumenImporte' +
              ', Status, FechaConsumo, ConsumoEstacionID, ConsumoSecuencia, Con' +
              'sumoBombaID, ConsumoTurnoID, ConsumoImporte, ClienteID'#10#9#9'FROM   ' +
              '      Cupon'#10#9#9'WHERE     (CuponID = @CuponID)'#10#9'end'#10'end'#10'else'#10'begin' +
              #10#9'SELECT     CuponID, Importe, VolumenImporte, Status, FechaCons' +
              'umo, ConsumoEstacionID, ConsumoSecuencia, ConsumoBombaID, Consum' +
              'oTurnoID, ConsumoImporte, ClienteID'#10#9'FROM         Cupon'#10#9'WHERE  ' +
              '   (1=2)'#10'end'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'CuponID'
                TableField = 'CuponID'
              end
              item
                DatasetField = 'Importe'
                TableField = 'Importe'
              end
              item
                DatasetField = 'VolumenImporte'
                TableField = 'VolumenImporte'
              end
              item
                DatasetField = 'Status'
                TableField = 'Status'
              end
              item
                DatasetField = 'FechaConsumo'
                TableField = 'FechaConsumo'
              end
              item
                DatasetField = 'ConsumoEstacionID'
                TableField = 'ConsumoEstacionID'
              end
              item
                DatasetField = 'ConsumoSecuencia'
                TableField = 'ConsumoSecuencia'
              end
              item
                DatasetField = 'ConsumoBombaID'
                TableField = 'ConsumoBombaID'
              end
              item
                DatasetField = 'ConsumoTurnoID'
                TableField = 'ConsumoTurnoID'
              end
              item
                DatasetField = 'ConsumoImporte'
                TableField = 'ConsumoImporte'
              end
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end>
          end>
        Name = 'spStatusCupon'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'CuponID'
            DataType = datInteger
          end
          item
            Name = 'Importe'
            DataType = datFloat
          end
          item
            Name = 'VolumenImporte'
            DataType = datString
            Size = 1
          end
          item
            Name = 'Status'
            DataType = datString
            Size = 1
          end
          item
            Name = 'FechaConsumo'
            DataType = datDateTime
          end
          item
            Name = 'ConsumoEstacionID'
            DataType = datInteger
          end
          item
            Name = 'ConsumoSecuencia'
            DataType = datInteger
          end
          item
            Name = 'ConsumoBombaID'
            DataType = datInteger
          end
          item
            Name = 'ConsumoTurnoID'
            DataType = datInteger
          end
          item
            Name = 'ConsumoImporte'
            DataType = datFloat
          end
          item
            Name = 'ClienteID'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'LoteCuponID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Cupon'
            SQL = 
              'SELECT '#10'    CuponID, Referencia, Importe, FechaConsumo, FechaVal' +
              'ido, VolumenImporte,'#10'    Status, Barras, ClienteID, EstacionID, ' +
              'LoteCuponID'#10'  FROM'#10'    dbo.Cupon'#10'  WHERE LoteCuponID = :LoteCupo' +
              'nID'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'CuponID'
                TableField = 'CuponID'
              end
              item
                DatasetField = 'Referencia'
                TableField = 'Referencia'
              end
              item
                DatasetField = 'Importe'
                TableField = 'Importe'
              end
              item
                DatasetField = 'FechaConsumo'
                TableField = 'FechaConsumo'
              end
              item
                DatasetField = 'FechaValido'
                TableField = 'FechaValido'
              end
              item
                DatasetField = 'VolumenImporte'
                TableField = 'VolumenImporte'
              end
              item
                DatasetField = 'Status'
                TableField = 'Status'
              end
              item
                DatasetField = 'Barras'
                TableField = 'Barras'
              end
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'EstacionID'
                TableField = 'EstacionID'
              end
              item
                DatasetField = 'LoteCuponID'
                TableField = 'LoteCuponID'
              end>
          end>
        Name = 'dbo Cupon'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'CuponID'
            DataType = datInteger
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
            Name = 'FechaConsumo'
            DataType = datDateTime
          end
          item
            Name = 'FechaValido'
            DataType = datDateTime
          end
          item
            Name = 'VolumenImporte'
            DataType = datString
            Size = 1
          end
          item
            Name = 'Status'
            DataType = datString
            Size = 1
          end
          item
            Name = 'Barras'
            DataType = datString
            Size = 16
          end
          item
            Name = 'ClienteID'
            DataType = datInteger
          end
          item
            Name = 'EstacionID'
            DataType = datInteger
          end
          item
            Name = 'LoteCuponID'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Cupon'
            SQL = 
              'SELECT '#10'    ClienteID, Nombre, RazonSocial, Domicilio, Grupo, Co' +
              'lonia, '#10'    CodigoPostal, Ciudad, Telefono, RFC, CuentaContable,' +
              ' '#10'    PlazoPago, Estatus, FechaIngreso, NIP, FechaBaja, LimiteCr' +
              'edito, '#10'    Deposito, CambioCredito, CambioCreditoAnterior, Ulti' +
              'moPago, '#10'    DiaCorteSemana, ClienteNuevo, Tasa, TarjetaID, Form' +
              'aPagoID,'#10'    GrupoFacturarID, VendedorID, GasolineroID, FormaCom' +
              'praID, ClasificacionID,'#10'    FacturaConsumoCupon, NoExterior, Loc' +
              'alidad, Municipio, Estado, Pais, email'#10'  FROM'#10'    dbo.Cliente'#10#10'o' +
              'rder by ClienteID'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Referencia'
                SQLOrigin = 'Nombre'
              end
              item
                DatasetField = 'RazonSocial'
                TableField = 'Importe'
                SQLOrigin = 'RazonSocial'
              end
              item
                DatasetField = 'Domicilio'
                TableField = 'FechaConsumo'
                SQLOrigin = 'Domicilio'
              end
              item
                DatasetField = 'Grupo'
                TableField = 'FechaValido'
                SQLOrigin = 'Grupo'
              end
              item
                DatasetField = 'Colonia'
                TableField = 'VolumenImporte'
                SQLOrigin = 'Colonia'
              end
              item
                DatasetField = 'CodigoPostal'
                TableField = 'Status'
                SQLOrigin = 'CodigoPostal'
              end
              item
                DatasetField = 'Ciudad'
                TableField = 'Barras'
                SQLOrigin = 'Ciudad'
              end
              item
                DatasetField = 'Telefono'
                TableField = 'ClienteID'
                SQLOrigin = 'Telefono'
              end
              item
                DatasetField = 'RFC'
                TableField = 'EstacionID'
                SQLOrigin = 'RFC'
              end
              item
                DatasetField = 'CuentaContable'
                TableField = 'LoteCuponID'
                SQLOrigin = 'CuentaContable'
              end
              item
                DatasetField = 'PlazoPago'
                TableField = 'ConsumoEstacionID'
                SQLOrigin = 'PlazoPago'
              end
              item
                DatasetField = 'Estatus'
                TableField = 'ConsumoSecuencia'
                SQLOrigin = 'Estatus'
              end
              item
                DatasetField = 'FechaIngreso'
                TableField = 'ConsumoBombaID'
                SQLOrigin = 'FechaIngreso'
              end
              item
                DatasetField = 'NIP'
                TableField = 'ConsumoTurnoID'
                SQLOrigin = 'NIP'
              end
              item
                DatasetField = 'FechaBaja'
                TableField = 'ConsumoImporte'
                SQLOrigin = 'FechaBaja'
              end
              item
                DatasetField = 'LimiteCredito'
                TableField = 'UsuarioCanceloID'
                SQLOrigin = 'LimiteCredito'
              end
              item
                DatasetField = 'Deposito'
                TableField = 'FechaCancelo'
                SQLOrigin = 'Deposito'
              end
              item
                DatasetField = 'CambioCredito'
                TableField = 'Facturado'
                SQLOrigin = 'CambioCredito'
              end
              item
                DatasetField = 'CambioCreditoAnterior'
                TableField = 'DigitoSeguridad'
                SQLOrigin = 'CambioCreditoAnterior'
              end
              item
                DatasetField = 'UltimoPago'
                TableField = 'Cargando'
                SQLOrigin = 'UltimoPago'
              end
              item
                DatasetField = 'DiaCorteSemana'
                SQLOrigin = 'DiaCorteSemana'
              end
              item
                DatasetField = 'ClienteNuevo'
                SQLOrigin = 'ClienteNuevo'
              end
              item
                DatasetField = 'Tasa'
                SQLOrigin = 'Tasa'
              end
              item
                DatasetField = 'TarjetaID'
                SQLOrigin = 'TarjetaID'
              end
              item
                DatasetField = 'FormaPagoID'
                SQLOrigin = 'FormaPagoID'
              end
              item
                DatasetField = 'GrupoFacturarID'
                SQLOrigin = 'GrupoFacturarID'
              end
              item
                DatasetField = 'VendedorID'
                SQLOrigin = 'VendedorID'
              end
              item
                DatasetField = 'GasolineroID'
                SQLOrigin = 'GasolineroID'
              end
              item
                DatasetField = 'FormaCompraID'
                SQLOrigin = 'FormaCompraID'
              end
              item
                DatasetField = 'ClasificacionID'
                SQLOrigin = 'ClasificacionID'
              end
              item
                DatasetField = 'FacturaConsumoCupon'
                SQLOrigin = 'FacturaConsumoCupon'
              end
              item
                DatasetField = 'NoExterior'
                SQLOrigin = 'NoExterior'
              end
              item
                DatasetField = 'Localidad'
                SQLOrigin = 'Localidad'
              end
              item
                DatasetField = 'Municipio'
                SQLOrigin = 'Municipio'
              end
              item
                DatasetField = 'Estado'
                SQLOrigin = 'Estado'
              end
              item
                DatasetField = 'Pais'
                SQLOrigin = 'Pais'
              end
              item
                DatasetField = 'email'
                SQLOrigin = 'email'
              end>
          end>
        Name = 'dbo Cliente'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'ClienteID'
            DataType = datInteger
            InPrimaryKey = True
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 70
          end
          item
            Name = 'RazonSocial'
            DataType = datString
            Size = 100
          end
          item
            Name = 'Domicilio'
            DataType = datString
            Size = 90
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
          end
          item
            Name = 'FechaIngreso'
            DataType = datDateTime
          end
          item
            Name = 'NIP'
            DataType = datString
            Size = 8
          end
          item
            Name = 'FechaBaja'
            DataType = datDateTime
          end
          item
            Name = 'LimiteCredito'
            DataType = datFloat
          end
          item
            Name = 'Deposito'
            DataType = datFloat
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
          end
          item
            Name = 'ClienteNuevo'
            DataType = datBoolean
          end
          item
            Name = 'Tasa'
            DataType = datFloat
          end
          item
            Name = 'TarjetaID'
            DataType = datInteger
          end
          item
            Name = 'FormaPagoID'
            DataType = datInteger
          end
          item
            Name = 'GrupoFacturarID'
            DataType = datInteger
          end
          item
            Name = 'VendedorID'
            DataType = datInteger
          end
          item
            Name = 'GasolineroID'
            DataType = datInteger
          end
          item
            Name = 'FormaCompraID'
            DataType = datInteger
          end
          item
            Name = 'ClasificacionID'
            DataType = datInteger
          end
          item
            Name = 'FacturaConsumoCupon'
            DataType = datInteger
          end
          item
            Name = 'NoExterior'
            DataType = datString
            Size = 10
          end
          item
            Name = 'Localidad'
            DataType = datString
            Size = 30
          end
          item
            Name = 'Municipio'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Estado'
            DataType = datString
            Size = 30
          end
          item
            Name = 'Pais'
            DataType = datString
            Size = 50
          end
          item
            Name = 'email'
            DataType = datMemo
          end>
        InsertCommandName = 'dbo Cliente_INSERT'
        DeleteCommandName = 'dbo Cliente_DELETE'
        UpdateCommandName = 'dbo Cliente_UPDATE'
      end
      item
        Params = <
          item
            Name = 'ClienteIni'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClienteFin'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @ClienteIni as INT'#10'declare @ClienteFin as INT'#10#10'select @C' +
              'lienteIni = (select :ClienteIni)'#10'select @ClienteFin = (select :C' +
              'lienteFin)'#10#10'SELECT     A.ClienteID, A.Nombre, CAST(A.LimiteCredi' +
              'to AS money) AS Limite, CAST(ISNULL(B.Importe, 0) AS money) AS C' +
              'onsumosPendientes,'#10#9'   CAST(ISNULL(F.Cupones, 0) AS money) AS Cu' +
              'ponesPendientes,'#10'                      CAST(A.Moviminetos AS mon' +
              'ey) AS Movimientos, CAST(A.LimiteCredito - ISNULL(B.Importe, 0) ' +
              '- A.Moviminetos - F.Cupones AS money) AS Saldo'#10'FROM         (SEL' +
              'ECT     Cliente.ClienteID, Cliente.Nombre, Cliente.LimiteCredito' +
              ', ISNULL(SUM(Movimiento.Cargo - Movimiento.Abono), 0) AS Movimin' +
              'etos'#10'              FROM          Cliente LEFT OUTER JOIN'#10'       ' +
              '                     Movimiento ON Cliente.ClienteID = Movimient' +
              'o.ClienteID'#10'              WHERE      (Cliente.ClienteID BETWEEN ' +
              '@ClienteIni AND @ClienteFin)'#10'              GROUP BY Cliente.Clie' +
              'nteID, Cliente.Nombre, Cliente.LimiteCredito) AS A LEFT OUTER JO' +
              'IN'#10'                         (SELECT     Cliente_1.ClienteID, ISN' +
              'ULL(SUM(Consumo.Importe), 0) AS Importe'#10'                        ' +
              '  FROM          Cliente AS Cliente_1 INNER JOIN'#10'                ' +
              '                        Consumo ON Cliente_1.ClienteID = Consumo' +
              '.ClienteID'#10'                          WHERE      (Cliente_1.Clien' +
              'teID BETWEEN @ClienteIni AND @ClienteFin) AND (Consumo.Facturado' +
              ' = 0)'#10'                          GROUP BY Cliente_1.ClienteID) AS' +
              ' B ON A.ClienteID = B.ClienteID INNER JOIN (SELECT     Cliente.C' +
              'lienteID, ISNULL(D.Importe, 0) AS Cupones'#10'FROM         (SELECT  ' +
              '   ClienteID, SUM(Importe) AS Importe'#10'                       FRO' +
              'M          Cupon'#10'                       WHERE      (Status = '#39'A'#39 +
              ') AND (ClienteID BETWEEN @ClienteIni AND @ClienteFin)'#10'          ' +
              '             GROUP BY ClienteID) D RIGHT OUTER JOIN'#10'            ' +
              '          Cliente ON D.ClienteID = Cliente.ClienteID'#10'WHERE     (' +
              'Cliente.ClienteID BETWEEN @ClienteIni AND @ClienteFin)) F ON A.C' +
              'lienteID = F.ClienteID'#10'ORDER BY A.ClienteID'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'Limite'
                TableField = 'Limite'
              end
              item
                DatasetField = 'ConsumosPendientes'
                TableField = 'ConsumosPendientes'
              end
              item
                DatasetField = 'CuponesPendientes'
                TableField = 'CuponesPendientes'
              end
              item
                DatasetField = 'Movimientos'
                TableField = 'Movimientos'
              end
              item
                DatasetField = 'Saldo'
                TableField = 'Saldo'
              end>
          end>
        Name = 'validaTarSaldoEjerc'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
            Name = 'Limite'
            DataType = datFloat
          end
          item
            Name = 'ConsumosPendientes'
            DataType = datFloat
          end
          item
            Name = 'CuponesPendientes'
            DataType = datFloat
          end
          item
            Name = 'Movimientos'
            DataType = datFloat
          end
          item
            Name = 'Saldo'
            DataType = datFloat
          end>
      end
      item
        Params = <
          item
            Name = 'LoteCuponID'
            DataType = datInteger
            Value = '11'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT     LoteCupon.LoteCuponID, LoteCupon.Fecha, LoteCupon.Sta' +
              'tus, LoteCupon.Total, Estacion.IDESTACION As EstacionID, Estacio' +
              'n.Nombre AS Estacion, Cliente.ClienteID,'#10'                      C' +
              'liente.Nombre AS Cliente, Usuario.IDEMPLEADO As UsuarioID, Usuar' +
              'io.Nombre AS Usuario'#10'FROM         LoteCupon INNER JOIN'#10'         ' +
              '             Estacion ON LoteCupon.EstacionID = Estacion.IDESTAC' +
              'ION INNER JOIN'#10'                      Cliente ON LoteCupon.Client' +
              'eID = Cliente.ClienteID INNER JOIN'#10'                      Usuario' +
              ' ON LoteCupon.UsuarioID = Usuario.IDEMPLEADO'#10'WHERE     (LoteCupo' +
              'nID = :LoteCuponID)'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'LoteCuponID'
                TableField = 'LoteCuponID'
              end
              item
                DatasetField = 'Fecha'
                TableField = 'Fecha'
              end
              item
                DatasetField = 'Status'
                TableField = 'Status'
              end
              item
                DatasetField = 'Total'
                TableField = 'Total'
              end
              item
                DatasetField = 'EstacionID'
                TableField = 'EstacionID'
              end
              item
                DatasetField = 'Estacion'
                TableField = 'Estacion'
              end
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'Cliente'
                TableField = 'Cliente'
              end
              item
                DatasetField = 'UsuarioID'
                TableField = 'UsuarioID'
              end
              item
                DatasetField = 'Usuario'
                TableField = 'Usuario'
              end>
          end>
        Name = 'spBuscaLoteCupon'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'LoteCuponID'
            DataType = datInteger
          end
          item
            Name = 'Fecha'
            DataType = datDateTime
          end
          item
            Name = 'Status'
            DataType = datString
            Size = 1
          end
          item
            Name = 'Total'
            DataType = datFloat
          end
          item
            Name = 'EstacionID'
            DataType = datInteger
          end
          item
            Name = 'Estacion'
            DataType = datString
            Size = 100
          end
          item
            Name = 'ClienteID'
            DataType = datInteger
          end
          item
            Name = 'Cliente'
            DataType = datString
            Size = 70
          end
          item
            Name = 'UsuarioID'
            DataType = datInteger
          end
          item
            Name = 'Usuario'
            DataType = datString
            Size = 70
          end>
      end
      item
        Params = <
          item
            Name = 'LoteCuponID'
            DataType = datInteger
            Value = '11'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT     CuponID, Importe, VolumenImporte, Status, FechaConsum' +
              'o, ConsumoEstacionID, ConsumoSecuencia, ConsumoBombaID, ConsumoT' +
              'urnoID, ConsumoImporte'#10#9#9'FROM         Cupon'#10#9#9'WHERE     (LoteCup' +
              'onID = :LoteCuponID)'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'CuponID'
                TableField = 'CuponID'
              end
              item
                DatasetField = 'Importe'
                TableField = 'Importe'
              end
              item
                DatasetField = 'VolumenImporte'
                TableField = 'VolumenImporte'
              end
              item
                DatasetField = 'Status'
                TableField = 'Status'
              end
              item
                DatasetField = 'FechaConsumo'
                TableField = 'FechaConsumo'
              end
              item
                DatasetField = 'ConsumoEstacionID'
                TableField = 'ConsumoEstacionID'
              end
              item
                DatasetField = 'ConsumoSecuencia'
                TableField = 'ConsumoSecuencia'
              end
              item
                DatasetField = 'ConsumoBombaID'
                TableField = 'ConsumoBombaID'
              end
              item
                DatasetField = 'ConsumoTurnoID'
                TableField = 'ConsumoTurnoID'
              end
              item
                DatasetField = 'ConsumoImporte'
                TableField = 'ConsumoImporte'
              end>
          end>
        Name = 'spCuponesPorLote'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'CuponID'
            DataType = datInteger
          end
          item
            Name = 'Importe'
            DataType = datFloat
          end
          item
            Name = 'VolumenImporte'
            DataType = datString
            Size = 1
          end
          item
            Name = 'Status'
            DataType = datString
            Size = 1
          end
          item
            Name = 'FechaConsumo'
            DataType = datDateTime
          end
          item
            Name = 'ConsumoEstacionID'
            DataType = datInteger
          end
          item
            Name = 'ConsumoSecuencia'
            DataType = datInteger
          end
          item
            Name = 'ConsumoBombaID'
            DataType = datInteger
          end
          item
            Name = 'ConsumoTurnoID'
            DataType = datInteger
          end
          item
            Name = 'ConsumoImporte'
            DataType = datFloat
          end>
      end
      item
        Params = <
          item
            Name = 'Barras'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @Barras varchar(50)'#10#10'select @Barras = (Select :Barras)'#10#10 +
              'if (Len(@Barras) <= 10)'#10'begin'#10#9'SELECT     Cupon.CuponID, Cupon.I' +
              'mporte, Cupon.Status, Cupon.Referencia, Cupon.Barras, Cupon.Clie' +
              'nteID, Cliente.Nombre, Cliente.RazonSocial, Cliente.Domicilio,'#10#9 +
              '                      Cliente.RFC, Cliente.CuentaContable, Clien' +
              'te.TarjetaID, Cliente.GasolineroID,'#10#9'                      LoteC' +
              'upon.FechaValido'#10#9'FROM         Cupon INNER JOIN'#10#9'               ' +
              '       Cliente ON Cliente.ClienteID = Cupon.ClienteID INNER JOIN' +
              #10#9'                      LoteCupon ON Cupon.LoteCuponID = LoteCup' +
              'on.LoteCuponID'#10#9'where (cast(dbo.Cupon.CuponID as varchar(50)) = ' +
              '@Barras)'#10'end'#10'else'#10'begin'#10#9'SELECT     Cupon.CuponID, Cupon.Importe' +
              ', Cupon.Status, Cupon.Referencia, Cupon.Barras, Cupon.ClienteID,' +
              ' Cliente.Nombre, Cliente.RazonSocial, Cliente.Domicilio,'#10#9'      ' +
              '                Cliente.RFC, Cliente.CuentaContable, Cliente.Tar' +
              'jetaID, Cliente.GasolineroID,'#10'                              Lote' +
              'Cupon.FechaValido'#10#9'FROM         Cupon INNER JOIN'#10#9'              ' +
              '        Cliente ON Cliente.ClienteID = Cupon.ClienteID INNER JOI' +
              'N'#10#9'                      LoteCupon ON Cupon.LoteCuponID = LoteCu' +
              'pon.LoteCuponID'#10#9'where (dbo.Cupon.Barras = @Barras)'#10'end'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'CuponID'
                TableField = 'CuponID'
              end
              item
                DatasetField = 'Importe'
                TableField = 'Importe'
              end
              item
                DatasetField = 'Status'
                TableField = 'Status'
              end
              item
                DatasetField = 'Referencia'
                TableField = 'Referencia'
              end
              item
                DatasetField = 'Barras'
                TableField = 'Barras'
              end
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'RazonSocial'
                TableField = 'RazonSocial'
              end
              item
                DatasetField = 'Domicilio'
                TableField = 'Domicilio'
              end
              item
                DatasetField = 'RFC'
                TableField = 'RFC'
              end
              item
                DatasetField = 'CuentaContable'
                TableField = 'CuentaContable'
              end
              item
                DatasetField = 'TarjetaID'
                TableField = 'TarjetaID'
              end
              item
                DatasetField = 'GasolineroID'
                TableField = 'GasolineroID'
              end
              item
                DatasetField = 'FechaValido'
                TableField = 'FechaValido'
              end>
          end>
        Name = 'spObtenCuponValido'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'CuponID'
            DataType = datInteger
          end
          item
            Name = 'Importe'
            DataType = datFloat
          end
          item
            Name = 'Status'
            DataType = datString
            Size = 1
          end
          item
            Name = 'Referencia'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Barras'
            DataType = datString
            Size = 16
          end
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
            Name = 'RazonSocial'
            DataType = datString
            Size = 70
          end
          item
            Name = 'Domicilio'
            DataType = datString
            Size = 90
          end
          item
            Name = 'RFC'
            DataType = datString
            Size = 20
          end
          item
            Name = 'CuentaContable'
            DataType = datString
            Size = 20
          end
          item
            Name = 'TarjetaID'
            DataType = datInteger
          end
          item
            Name = 'GasolineroID'
            DataType = datInteger
          end
          item
            Name = 'FechaValido'
            DataType = datDateTime
          end>
      end
      item
        Params = <
          item
            Name = 'CUPONID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'if (Len(:CUPONID) <= 10)'#10'begin'#10'        SELECT ISNULL(TIPOCUPON, ' +
              '0) AS TIPOCUPON FROM CUPON WHERE CUPONID =  :CUPONID'#10'end'#10'else'#10'be' +
              'gin'#10#10'        SELECT ISNULL(TIPOCUPON, 0) AS TIPOCUPON FROM CUPON' +
              ' WHERE BARRAS =  :CUPONID'#10'end'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'TIPOCUPON'
                TableField = 'TIPOCUPON'
              end>
          end>
        Name = 'spTipoCupon'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'TIPOCUPON'
            DataType = datBoolean
          end>
      end
      item
        Params = <
          item
            Name = 'VehiculoID'
            DataType = datString
            Size = 65536
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT     Cliente.ClienteID, Cliente.Nombre, Vehiculo.VehiculoI' +
              'D, Referencia.Referencia'#10'FROM         Cliente INNER JOIN'#10'       ' +
              '               Vehiculo ON Cliente.ClienteID = Vehiculo.ClienteI' +
              'D INNER JOIN'#10'                      Referencia ON Vehiculo.Vehicu' +
              'loID = Referencia.VehiculoID'#10'Where Vehiculo.VehiculoID = :Vehicu' +
              'loID'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'VehiculoID'
                TableField = 'VehiculoID'
              end
              item
                DatasetField = 'Referencia'
                TableField = 'Referencia'
              end>
          end>
        Name = 'DatosVehiculo'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
            Name = 'VehiculoID'
            DataType = datInteger
          end
          item
            Name = 'Referencia'
            DataType = datString
            Size = 50
          end>
      end
      item
        Params = <
          item
            Name = 'ESTACIONID'
            DataType = datInteger
            Value = '1'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT TOP 1 VEHICULO.VEHICULOID, ESTACION.IDESTACION from ESTAC' +
              'ION INNER JOIN CLIENTE ON CLIENTE.CLIENTEID = ESTACION.IDESTACIO' +
              'N'#10'INNER JOIN VEHICULO ON VEHICULO.CLIENTEID = CLIENTE.CLIENTEID'#10 +
              'WHERE ESTACION.IDESTACION = :ESTACIONID'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'VEHICULOID'
                TableField = 'VEHICULOID'
              end
              item
                DatasetField = 'IDESTACION'
                TableField = 'IDESTACION'
              end>
          end>
        Name = 'BuscaClienteEmpresaDebito'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'VEHICULOID'
            DataType = datInteger
          end
          item
            Name = 'IDESTACION'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'VehiculoID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @vehiculoid as int'#10'declare @AfectarHistorico bit'#10'declare' +
              ' @KMS integer'#10'select @vehiculoid = (select :VehiculoID)'#10#10'select ' +
              '@afectarhistorico = isnull((Select afectarhistorico from Cliente' +
              #10'inner join Vehiculo on Cliente.ClienteID = Vehiculo.ClienteID'#10'w' +
              'here VehiculoID = @VehiculoID), 0)'#10#10'select @kms = isnull((select' +
              ' top 1 Kilometraje from Consumo'#10'where vehiculoid = @vehiculoid a' +
              'nd productoid < 4'#10'order by FechaCarga desc), 0)'#10#10'select @afectar' +
              'historico as AfectarHistorico, @kms as KMS'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'AfectarHistorico'
                TableField = 'AfectarHistorico'
              end
              item
                DatasetField = 'KMS'
                TableField = 'KMS'
              end>
          end>
        Name = 'spDatosVerifica'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'AfectarHistorico'
            DataType = datBoolean
          end
          item
            Name = 'KMS'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'Referencia'
            DataType = datString
            Size = 65536
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @vehiculoid as int'#10'declare @AfectarHistorico bit'#10'declare' +
              ' @KMS integer'#10'select @vehiculoid = (select top 1 vehiculoid from' +
              ' referencia where referencia = :Referencia)'#10#10'select @afectarhist' +
              'orico = isnull((Select afectarhistorico from Cliente'#10'inner join ' +
              'Vehiculo on Cliente.ClienteID = Vehiculo.ClienteID'#10'where Vehicul' +
              'oID = @VehiculoID), 0)'#10#10'select @kms = isnull((select top 1 Kilom' +
              'etraje from Consumo'#10'where vehiculoid = @vehiculoid and productoi' +
              'd < 4'#10'order by FechaCarga desc), 0)'#10#10'select @afectarhistorico as' +
              ' AfectarHistorico, @kms as KMS'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'AfectarHistorico'
                TableField = 'AfectarHistorico'
              end
              item
                DatasetField = 'KMS'
                TableField = 'KMS'
              end>
          end>
        Name = 'spDatosVerificaReferencia'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'AfectarHistorico'
            DataType = datBoolean
          end
          item
            Name = 'KMS'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'ClienteID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'GasolineroID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'VehiculoID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'Select * from Autorizacion'#10'Where (ClienteID = :ClienteID) and (G' +
              'asolineroID = :GasolineroID) and'#10'      (VehiculoID = :VehiculoID' +
              ') and (Tipo = 1)'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'AutorizacionID'
                TableField = 'AutorizacionID'
              end
              item
                DatasetField = 'Fecha'
                TableField = 'Fecha'
              end
              item
                DatasetField = 'Importe'
                TableField = 'Importe'
              end
              item
                DatasetField = 'Cantidad'
                TableField = 'Cantidad'
              end
              item
                DatasetField = 'ImporteCantidad'
                TableField = 'ImporteCantidad'
              end
              item
                DatasetField = 'PosicionCarga'
                TableField = 'PosicionCarga'
              end
              item
                DatasetField = 'Referencia'
                TableField = 'Referencia'
              end
              item
                DatasetField = 'EstacionID'
                TableField = 'EstacionID'
              end
              item
                DatasetField = 'VehiculoID'
                TableField = 'VehiculoID'
              end
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'GasolineroID'
                TableField = 'GasolineroID'
              end
              item
                DatasetField = 'Tipo'
                TableField = 'Tipo'
              end
              item
                DatasetField = 'Odometro'
                TableField = 'Odometro'
              end>
          end>
        Name = 'spBuscaAutorizacionTarjeta'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'AutorizacionID'
            DataType = datInteger
          end
          item
            Name = 'Fecha'
            DataType = datDateTime
          end
          item
            Name = 'Importe'
            DataType = datFloat
          end
          item
            Name = 'Cantidad'
            DataType = datFloat
          end
          item
            Name = 'ImporteCantidad'
            DataType = datString
            Size = 1
          end
          item
            Name = 'PosicionCarga'
            DataType = datInteger
          end
          item
            Name = 'Referencia'
            DataType = datString
            Size = 50
          end
          item
            Name = 'EstacionID'
            DataType = datInteger
          end
          item
            Name = 'VehiculoID'
            DataType = datInteger
          end
          item
            Name = 'ClienteID'
            DataType = datInteger
          end
          item
            Name = 'GasolineroID'
            DataType = datInteger
          end
          item
            Name = 'Tipo'
            DataType = datInteger
          end
          item
            Name = 'Odometro'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'Dispensario'
            DataType = datString
            Size = 65536
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT     TOP 1 Estado'#10'FROM         V2ArchivoADI'#10'WHERE     (Dis' +
              'pensario = :Dispensario)'#10'ORDER BY ID DESC'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'Estado'
                TableField = 'Estado'
              end>
          end>
        Name = 'UltimoEstadoDispensario'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'Estado'
            DataType = datString
            Size = 1
          end>
      end
      item
        Params = <
          item
            Name = 'TurnoID'
            DataType = datInteger
            Value = '1'
            ParamType = daptInput
          end
          item
            Name = 'BombaID'
            DataType = datInteger
            Value = '1'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT MangueraID, SUM(importe) AS Importe,'#10'    MAX(Precio) AS P' +
              'recio, SUM(volumen) AS Volumen'#10'FROM Trama'#10'WHERE turnoid = :Turno' +
              'ID and BombaID = :BombaID'#10'GROUP BY mangueraid'#10'ORDER BY manguerai' +
              'd'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'DatosTurno'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'MangueraID'
            DataType = datInteger
          end
          item
            Name = 'Importe'
            DataType = datFloat
          end
          item
            Name = 'Precio'
            DataType = datFloat
          end
          item
            Name = 'Volumen'
            DataType = datFloat
          end>
      end
      item
        Params = <
          item
            Name = 'TurnoID'
            DataType = datInteger
            Value = '1'
            ParamType = daptInput
          end
          item
            Name = 'BombaID'
            DataType = datInteger
            Value = '1'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'Select MangueraID'#10'from Turno'#10'where turnoID = :TurnoID and BombaI' +
              'D = :BombaID'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'MangueraID'
                TableField = 'MangueraID'
              end>
          end>
        Name = 'BombasTurno'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'MangueraID'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT     BombaID, MAX(TurnoID) AS TurnoID'#10'FROM         Turno'#10'G' +
              'ROUP BY BombaID'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'BombaID'
                TableField = 'BombaID'
              end
              item
                DatasetField = 'TurnoID'
                TableField = 'TurnoID'
              end>
          end>
        Name = 'UltimoTurno'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'BombaID'
            DataType = datInteger
          end
          item
            Name = 'TurnoID'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'TurnoID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT DISTINCT SUBSTRING(Referencia, 5, 4) AS GasolineroID'#10'FROM' +
              '         Trama'#10'WHERE     (Referencia <> '#39#39') AND (Tipo = 2) AND (' +
              'TurnoID = :TurnoID)'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'GasolineroID'
                TableField = 'GasolineroID'
              end>
          end>
        Name = 'SecuenciasGasolinero'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'GasolineroID'
            DataType = datString
            Size = 4
          end>
      end
      item
        Params = <
          item
            Name = 'GasolineroID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TurnoID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT     TramaID'#10'FROM         Trama'#10'WHERE     (Tipo = 2) AND (' +
              'SUBSTRING(Referencia, 5, 4) = cast(:GasolineroID as varchar(10))' +
              ') AND (TurnoID = :TurnoID)'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'TramaID'
                TableField = 'TramaID'
              end>
          end>
        Name = 'SecuenciasTarjetasCupones'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'TramaID'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT     TablaBombas.BombaID, TablaBombas.MangueraID, TablaBom' +
              'bas.ProductoID, TablaBombas.Precio, TablaBombas.Codigo, TablaBom' +
              'bas.IDInterno,'#10'                      TablaBombas.Nombre, TablaBo' +
              'mbas.Minimo, TablaBombas.Maximo, TablaBombas.Operacion, TablaBom' +
              'bas.TotalBombas,'#10'                      TablaBombas.Mangueras, Ta' +
              'blaBombas.TurnoID, Estacion.IDEstacion as EstacionID, Estacion.F' +
              'abricante, TablaBombas.Modo, TablaBombas.FactorCambioPrecios,'#10'  ' +
              '                    TablaBombas.FactorPrecio, TablaBombas.Factor' +
              'Volumen, TablaBombas.FactorImporte, TablaBombas.FactorLecturaVol' +
              'umen,'#10'                      TablaBombas.FactorLecturaImporte, Ta' +
              'blaBombas.FactorPrefijarVolumen, TablaBombas.FactorPrefijarImpor' +
              'te, TablaBombas.MaximoLecturasImporte,'#10'                      Tab' +
              'laBombas.MaximoLecturasVolumen, TablaBombas.AutoImprimir, TablaB' +
              'ombas.FactorDespliegaVolumen, TablaBombas.FactorDespliegaImporte' +
              ','#10'                      TablaBombas.Impresora, LecturaInicialVol' +
              'umen, LecturaInicialImporte'#10'FROM         (SELECT     MisBombas.B' +
              'ombaID, MisBombas.MangueraID, MisBombas.ProductoID, MisBombas.Pr' +
              'ecio, MisBombas.Codigo, MisBombas.IDInterno,'#10'                   ' +
              '                           MisBombas.Nombre, MisBombas.Minimo, M' +
              'isBombas.Maximo, MisBombas.Operacion, MisBombas.TotalBombas, Mis' +
              'Bombas.Modo,'#10'                                              MisBo' +
              'mbas.Mangueras, MiTurno.TurnoID, MisBombas.FactorCambioPrecios, ' +
              'FactorPrecio, FactorVolumen, FactorImporte,'#10'                    ' +
              '                          FactorLecturaVolumen, FactorLecturaImp' +
              'orte, FactorPrefijarVolumen, FactorPrefijarImporte, MaximoLectur' +
              'asImporte,'#10'                                              MaximoL' +
              'ecturasVolumen, AutoImprimir, FactorDespliegaVolumen, FactorDesp' +
              'liegaImporte, Impresora, LecturaInicialVolumen, LecturaInicialIm' +
              'porte'#10'                       FROM          (SELECT     A.BombaID' +
              ', B.MangueraID, B.ProductoID, C.Precio, C.Codigo, C.IDInterno, C' +
              '.Nombre, B.Minimo, B.Maximo, B.Operacion,'#10'                      ' +
              '                                                B.Modo, D .Total' +
              'Bombas, A.Mangueras, B.FactorCambioPrecios, B.FactorPrecio, B.Fa' +
              'ctorVolumen, B.FactorImporte,'#10'                                  ' +
              '                                    B.FactorLecturaVolumen, B.Fa' +
              'ctorLecturaImporte, B.FactorPrefijarVolumen, B.FactorPrefijarImp' +
              'orte, B.MaximoLecturasImporte,'#10'                                 ' +
              '                                     B.MaximoLecturasVolumen, B.' +
              'AutoImprimir, B.Factordespliegavolumen, B.FactorDespliegaImporte' +
              ', B.Impresora'#10'                                               FRO' +
              'M          (SELECT     BombaID, COUNT(MangueraID) AS Mangueras'#10' ' +
              '                                                                ' +
              '      FROM          Bomba'#10'                                      ' +
              '                                 GROUP BY BombaID) AS A INNER JO' +
              'IN'#10'                                                             ' +
              '             (SELECT     BombaID, MangueraID, ProductoID, Minimo' +
              ', Maximo, Operacion, Modo, FactorCambioPrecios, FactorPrecio,'#10'  ' +
              '                                                                ' +
              '                                 FactorVolumen, FactorImporte, F' +
              'actorLecturaVolumen, FactorLecturaImporte, FactorPrefijarVolumen' +
              ','#10'                                                              ' +
              '                                     FactorPrefijarImporte, Maxi' +
              'moLecturasImporte, MaximoLecturasVolumen, AutoImprimir, FactorDe' +
              'spliegaVolumen,'#10'                                                ' +
              '                                                   FactorDesplie' +
              'gaImporte, Impresora'#10'                                           ' +
              '                                 FROM          Bomba AS Bomba_1)' +
              ' AS B ON A.BombaID = B.BombaID INNER JOIN'#10'                      ' +
              '                                                    (SELECT     ' +
              'IDProducto as ProductoID, CODIGOPRODUCTO as Codigo, Nombre, Prec' +
              'io, PrecioProgramado, Impuesto, IDInterno, Combustible'#10'         ' +
              '                                                                ' +
              '   FROM          Producto) AS C ON B.ProductoID = C.ProductoID C' +
              'ROSS JOIN'#10'                                                      ' +
              '                    (SELECT     COUNT(*) AS TotalBombas'#10'        ' +
              '                                                                ' +
              '    FROM          (SELECT DISTINCT BombaID'#10'                     ' +
              '                                                                ' +
              '               FROM          Bomba AS Bomba_2) AS derivedtbl_1) ' +
              'AS D) AS MisBombas LEFT OUTER JOIN'#10'                             ' +
              '                     (SELECT     TurnoX.BombaID, TurnoX.Manguera' +
              'ID, TurnoX.TurnoID, Turno.LecturaInicialImporte, Turno.LecturaIn' +
              'icialVolumen'#10'                                                   ' +
              ' FROM          (SELECT     BombaID, MangueraID, MAX(TurnoID) AS ' +
              'TurnoID'#10'                                                        ' +
              '                    FROM          Turno'#10'                        ' +
              '                                                    GROUP BY Bom' +
              'baID, MangueraID) TurnoX INNER JOIN'#10'                            ' +
              '                                               Turno ON TurnoX.T' +
              'urnoID = Turno.TurnoID AND TurnoX.BombaID = Turno.BombaID AND'#10'  ' +
              '                                                                ' +
              '         TurnoX.MangueraID = Turno.MangueraID) AS MiTurno ON Mis' +
              'Bombas.BombaID = MiTurno.BombaID AND'#10'                           ' +
              '                   MisBombas.MangueraID = MiTurno.MangueraID) Ta' +
              'blaBombas CROSS JOIN'#10'                      Estacion'#10'ORDER BY Tab' +
              'laBombas.BombaID, TablaBombas.MangueraID'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'BombaID'
                TableField = 'BombaID'
              end
              item
                DatasetField = 'MangueraID'
                TableField = 'MangueraID'
              end
              item
                DatasetField = 'ProductoID'
                TableField = 'ProductoID'
              end
              item
                DatasetField = 'Precio'
                TableField = 'Precio'
              end
              item
                DatasetField = 'Codigo'
                TableField = 'Codigo'
              end
              item
                DatasetField = 'IDInterno'
                TableField = 'IDInterno'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'Minimo'
                TableField = 'Minimo'
              end
              item
                DatasetField = 'Maximo'
                TableField = 'Maximo'
              end
              item
                DatasetField = 'Operacion'
                TableField = 'Operacion'
              end
              item
                DatasetField = 'TotalBombas'
                TableField = 'TotalBombas'
              end
              item
                DatasetField = 'Mangueras'
                TableField = 'Mangueras'
              end
              item
                DatasetField = 'TurnoID'
                TableField = 'TurnoID'
              end
              item
                DatasetField = 'EstacionID'
                TableField = 'EstacionID'
              end
              item
                DatasetField = 'Fabricante'
                TableField = 'Fabricante'
              end
              item
                DatasetField = 'Modo'
                TableField = 'Modo'
              end
              item
                DatasetField = 'FactorCambioPrecios'
                TableField = 'FactorCambioPrecios'
              end
              item
                DatasetField = 'FactorPrecio'
                TableField = 'FactorPrecio'
              end
              item
                DatasetField = 'FactorVolumen'
                TableField = 'FactorVolumen'
              end
              item
                DatasetField = 'FactorImporte'
                TableField = 'FactorImporte'
              end
              item
                DatasetField = 'FactorLecturaVolumen'
                TableField = 'FactorLecturaVolumen'
              end
              item
                DatasetField = 'FactorLecturaImporte'
                TableField = 'FactorLecturaImporte'
              end
              item
                DatasetField = 'FactorPrefijarVolumen'
                TableField = 'FactorPrefijarVolumen'
              end
              item
                DatasetField = 'FactorPrefijarImporte'
                TableField = 'FactorPrefijarImporte'
              end
              item
                DatasetField = 'MaximoLecturasImporte'
                TableField = 'MaximoLecturasImporte'
              end
              item
                DatasetField = 'MaximoLecturasVolumen'
                TableField = 'MaximoLecturasVolumen'
              end
              item
                DatasetField = 'AutoImprimir'
                TableField = 'AutoImprimir'
              end
              item
                DatasetField = 'FactorDespliegaVolumen'
                TableField = 'FactorDespliegaVolumen'
              end
              item
                DatasetField = 'FactorDespliegaImporte'
                TableField = 'FactorDespliegaImporte'
              end
              item
                DatasetField = 'Impresora'
                TableField = 'Impresora'
              end
              item
                DatasetField = 'LecturaInicialVolumen'
                TableField = 'LecturaInicialVolumen'
              end
              item
                DatasetField = 'LecturaInicialImporte'
                TableField = 'LecturaInicialImporte'
              end>
          end>
        Name = 'AsignaBombas'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'BombaID'
            DataType = datInteger
          end
          item
            Name = 'MangueraID'
            DataType = datInteger
          end
          item
            Name = 'ProductoID'
            DataType = datInteger
          end
          item
            Name = 'Precio'
            DataType = datFloat
          end
          item
            Name = 'Codigo'
            DataType = datString
            Size = 10
          end
          item
            Name = 'IDInterno'
            DataType = datInteger
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 150
          end
          item
            Name = 'Minimo'
            DataType = datFloat
          end
          item
            Name = 'Maximo'
            DataType = datFloat
          end
          item
            Name = 'Operacion'
            DataType = datInteger
          end
          item
            Name = 'TotalBombas'
            DataType = datInteger
          end
          item
            Name = 'Mangueras'
            DataType = datInteger
          end
          item
            Name = 'TurnoID'
            DataType = datInteger
          end
          item
            Name = 'EstacionID'
            DataType = datInteger
          end
          item
            Name = 'Fabricante'
            DataType = datInteger
          end
          item
            Name = 'Modo'
            DataType = datInteger
          end
          item
            Name = 'FactorCambioPrecios'
            DataType = datFloat
          end
          item
            Name = 'FactorPrecio'
            DataType = datFloat
          end
          item
            Name = 'FactorVolumen'
            DataType = datFloat
          end
          item
            Name = 'FactorImporte'
            DataType = datFloat
          end
          item
            Name = 'FactorLecturaVolumen'
            DataType = datFloat
          end
          item
            Name = 'FactorLecturaImporte'
            DataType = datFloat
          end
          item
            Name = 'FactorPrefijarVolumen'
            DataType = datFloat
          end
          item
            Name = 'FactorPrefijarImporte'
            DataType = datFloat
          end
          item
            Name = 'MaximoLecturasImporte'
            DataType = datFloat
          end
          item
            Name = 'MaximoLecturasVolumen'
            DataType = datFloat
          end
          item
            Name = 'AutoImprimir'
            DataType = datBoolean
          end
          item
            Name = 'FactorDespliegaVolumen'
            DataType = datFloat
          end
          item
            Name = 'FactorDespliegaImporte'
            DataType = datFloat
          end
          item
            Name = 'Impresora'
            DataType = datString
            Size = 150
          end
          item
            Name = 'LecturaInicialVolumen'
            DataType = datFloat
          end
          item
            Name = 'LecturaInicialImporte'
            DataType = datFloat
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT'#10'    IDProducto as ProductoID, CODIGOPRODUCTO as Codigo, N' +
              'ombre, Precio, PrecioProgramado, '#10'    Impuesto, IDInterno, Combu' +
              'stible, IEPS, IEPSProgramado'#10'  FROM'#10'    dbo.Producto'#10'  WHERE'#10'   ' +
              ' Combustible = 1'#10'ORDER BY ProductoID'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'ProductoID'
                TableField = 'ProductoID'
              end
              item
                DatasetField = 'Codigo'
                TableField = 'Codigo'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'Precio'
                TableField = 'Precio'
              end
              item
                DatasetField = 'PrecioProgramado'
                TableField = 'PrecioProgramado'
              end
              item
                DatasetField = 'Impuesto'
                TableField = 'Impuesto'
              end
              item
                DatasetField = 'IDInterno'
                TableField = 'IDInterno'
              end
              item
                DatasetField = 'Combustible'
                TableField = 'Combustible'
              end
              item
                DatasetField = 'IEPS'
                TableField = 'IEPS'
              end
              item
                DatasetField = 'IEPSProgramado'
                TableField = 'IEPSProgramado'
              end>
          end>
        Name = 'AsignaProductos'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'ProductoID'
            DataType = datInteger
          end
          item
            Name = 'Codigo'
            DataType = datString
            Size = 10
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 150
          end
          item
            Name = 'Precio'
            DataType = datFloat
          end
          item
            Name = 'PrecioProgramado'
            DataType = datFloat
          end
          item
            Name = 'Impuesto'
            DataType = datFloat
          end
          item
            Name = 'IDInterno'
            DataType = datInteger
          end
          item
            Name = 'Combustible'
            DataType = datBoolean
          end
          item
            Name = 'IEPS'
            DataType = datFloat
          end
          item
            Name = 'IEPSProgramado'
            DataType = datFloat
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT     Tanque.Nombre, Tanque.TanqueID, Tanque.Tanque, Tanque' +
              '.Capacidad, Tanque.Fondaje, Tanque.Inicial, Tanque.ProductoID,'#10' ' +
              '                     Tanque.Inicial, Estacion.Telemedicion'#10'FROM ' +
              '        Tanque CROSS JOIN'#10'                      Estacion'#10'ORDER B' +
              'Y Tanque.TanqueID'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'TanqueID'
                TableField = 'TanqueID'
              end
              item
                DatasetField = 'Tanque'
                TableField = 'Tanque'
              end
              item
                DatasetField = 'Capacidad'
                TableField = 'Capacidad'
              end
              item
                DatasetField = 'Fondaje'
                TableField = 'Fondaje'
              end
              item
                DatasetField = 'Inicial'
                TableField = 'Inicial'
              end
              item
                DatasetField = 'ProductoID'
                TableField = 'ProductoID'
              end
              item
                DatasetField = 'Inicial_1'
                TableField = 'Inicial_1'
              end
              item
                DatasetField = 'Telemedicion'
                TableField = 'Telemedicion'
              end>
          end>
        Name = 'AsignaTanques'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'Nombre'
            DataType = datString
            Size = 50
          end
          item
            Name = 'TanqueID'
            DataType = datInteger
          end
          item
            Name = 'Tanque'
            DataType = datInteger
          end
          item
            Name = 'Capacidad'
            DataType = datFloat
          end
          item
            Name = 'Fondaje'
            DataType = datFloat
          end
          item
            Name = 'Inicial'
            DataType = datFloat
          end
          item
            Name = 'ProductoID'
            DataType = datInteger
          end
          item
            Name = 'Inicial_1'
            DataType = datFloat
          end
          item
            Name = 'Telemedicion'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Dispositivo'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'DispositivoID'
                TableField = 'DispositivoID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'Activo'
                TableField = 'Activo'
              end
              item
                DatasetField = 'Puerto'
                TableField = 'Puerto'
              end
              item
                DatasetField = 'Velocidad'
                TableField = 'Velocidad'
              end
              item
                DatasetField = 'BitsDatos'
                TableField = 'BitsDatos'
              end
              item
                DatasetField = 'Paridad'
                TableField = 'Paridad'
              end
              item
                DatasetField = 'BitParo'
                TableField = 'BitParo'
              end
              item
                DatasetField = 'RetardoLectura'
                TableField = 'RetardoLectura'
              end
              item
                DatasetField = 'RetardoCiclo'
                TableField = 'RetardoCiclo'
              end>
          end>
        Name = 'dbo.Dispositivo'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'DispositivoID'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Activo'
            DataType = datBoolean
          end
          item
            Name = 'Puerto'
            DataType = datInteger
          end
          item
            Name = 'Velocidad'
            DataType = datInteger
          end
          item
            Name = 'BitsDatos'
            DataType = datInteger
          end
          item
            Name = 'Paridad'
            DataType = datInteger
          end
          item
            Name = 'BitParo'
            DataType = datInteger
          end
          item
            Name = 'RetardoLectura'
            DataType = datInteger
          end
          item
            Name = 'RetardoCiclo'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'BombaID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT     TOP 3 Trama.TramaID, Trama.FechaCarga, Trama.FechaCon' +
              'table, Trama.Ejercicio, Trama.Periodo, Trama.Dia, Trama.Odometro' +
              ', Trama.Referencia,'#10'                      Trama.Precio, Trama.Vo' +
              'lumen, Trama.Importe, Trama.Impreso, Trama.Tipo, Trama.TipoTrama' +
              ', Trama.Estado, Trama.MangueraID, Trama.EstacionID,'#10'            ' +
              '          Trama.BombaID, Trama.ProductoID, Trama.TurnoID, Produc' +
              'to.CODIGOPRODUCTO Codigo, Producto.Nombre AS Descripcion, Produc' +
              'to.Impuesto'#10'FROM         Trama INNER JOIN'#10'                      ' +
              'Producto ON Trama.ProductoID = Producto.IDProducto'#10'WHERE Trama.B' +
              'ombaID = :BombaID'#10'ORDER BY Trama.TramaID DESC'#10#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'TramaID'
                TableField = 'TramaID'
              end
              item
                DatasetField = 'FechaCarga'
                TableField = 'FechaCarga'
              end
              item
                DatasetField = 'FechaContable'
                TableField = 'FechaContable'
              end
              item
                DatasetField = 'Ejercicio'
                TableField = 'Ejercicio'
              end
              item
                DatasetField = 'Periodo'
                TableField = 'Periodo'
              end
              item
                DatasetField = 'Dia'
                TableField = 'Dia'
              end
              item
                DatasetField = 'Odometro'
                TableField = 'Odometro'
              end
              item
                DatasetField = 'Referencia'
                TableField = 'Referencia'
              end
              item
                DatasetField = 'Precio'
                TableField = 'Precio'
              end
              item
                DatasetField = 'Volumen'
                TableField = 'Volumen'
              end
              item
                DatasetField = 'Importe'
                TableField = 'Importe'
              end
              item
                DatasetField = 'Impreso'
                TableField = 'Impreso'
              end
              item
                DatasetField = 'Tipo'
                TableField = 'Tipo'
              end
              item
                DatasetField = 'TipoTrama'
                TableField = 'TipoTrama'
              end
              item
                DatasetField = 'Estado'
                TableField = 'Estado'
              end
              item
                DatasetField = 'MangueraID'
                TableField = 'MangueraID'
              end
              item
                DatasetField = 'EstacionID'
                TableField = 'EstacionID'
              end
              item
                DatasetField = 'BombaID'
                TableField = 'BombaID'
              end
              item
                DatasetField = 'ProductoID'
                TableField = 'ProductoID'
              end
              item
                DatasetField = 'TurnoID'
                TableField = 'TurnoID'
              end
              item
                DatasetField = 'Codigo'
                TableField = 'Codigo'
              end
              item
                DatasetField = 'Descripcion'
                TableField = 'Descripcion'
              end
              item
                DatasetField = 'Impuesto'
                TableField = 'Impuesto'
              end>
          end>
        Name = 'UltimasVentas'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'TramaID'
            DataType = datInteger
          end
          item
            Name = 'FechaCarga'
            DataType = datDateTime
          end
          item
            Name = 'FechaContable'
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
            Name = 'Dia'
            DataType = datInteger
          end
          item
            Name = 'Odometro'
            DataType = datInteger
          end
          item
            Name = 'Referencia'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Precio'
            DataType = datFloat
          end
          item
            Name = 'Volumen'
            DataType = datFloat
          end
          item
            Name = 'Importe'
            DataType = datFloat
          end
          item
            Name = 'Impreso'
            DataType = datInteger
          end
          item
            Name = 'Tipo'
            DataType = datInteger
          end
          item
            Name = 'TipoTrama'
            DataType = datFloat
          end
          item
            Name = 'Estado'
            DataType = datInteger
          end
          item
            Name = 'MangueraID'
            DataType = datInteger
          end
          item
            Name = 'EstacionID'
            DataType = datInteger
          end
          item
            Name = 'BombaID'
            DataType = datInteger
          end
          item
            Name = 'ProductoID'
            DataType = datInteger
          end
          item
            Name = 'TurnoID'
            DataType = datInteger
          end
          item
            Name = 'Codigo'
            DataType = datString
            Size = 10
          end
          item
            Name = 'Descripcion'
            DataType = datString
            Size = 150
          end
          item
            Name = 'Impuesto'
            DataType = datFloat
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.CambioPrecio'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'CambioPrecioID'
                TableField = 'CambioPrecioID'
              end
              item
                DatasetField = 'Fecha'
                TableField = 'Fecha'
              end
              item
                DatasetField = 'Activo'
                TableField = 'Activo'
              end
              item
                DatasetField = 'UsuarioID'
                TableField = 'UsuarioID'
              end>
          end>
        Name = 'dbo.CambioPrecio'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'CambioPrecioID'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'Fecha'
            DataType = datDateTime
          end
          item
            Name = 'Activo'
            DataType = datBoolean
          end
          item
            Name = 'UsuarioID'
            DataType = datInteger
            Required = True
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Nodo'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'GasolineroID'
                TableField = 'GasolineroID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'Tipo'
                TableField = 'Tipo'
              end
              item
                DatasetField = 'Host'
                TableField = 'Host'
              end
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'HostLocal'
                TableField = 'HostLocal'
              end
              item
                DatasetField = 'Conversiones'
                TableField = 'Conversiones'
              end
              item
                DatasetField = 'OrigenContacto'
                TableField = 'OrigenContacto'
              end
              item
                DatasetField = 'OrigenCiudadCiudad'
                TableField = 'OrigenCiudadCiudad'
              end
              item
                DatasetField = 'OrigenGrupo'
                TableField = 'OrigenGrupo'
              end
              item
                DatasetField = 'OrigenTelefono'
                TableField = 'OrigenTelefono'
              end>
          end>
        Name = 'dbo Nodo'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'GasolineroID'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 50
            Required = True
          end
          item
            Name = 'Tipo'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'Host'
            DataType = datString
            Size = 100
            Required = True
          end
          item
            Name = 'ClienteID'
            DataType = datInteger
          end
          item
            Name = 'HostLocal'
            DataType = datString
            Size = 100
          end
          item
            Name = 'Conversiones'
            DataType = datBoolean
          end
          item
            Name = 'OrigenContacto'
            DataType = datString
            Size = 50
          end
          item
            Name = 'OrigenCiudadCiudad'
            DataType = datString
            Size = 50
          end
          item
            Name = 'OrigenGrupo'
            DataType = datString
            Size = 50
          end
          item
            Name = 'OrigenTelefono'
            DataType = datString
            Size = 50
          end>
      end
      item
        Params = <
          item
            Name = 'Barras'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'Declare @Barras as Varchar(300)'#10'Select @Barras = (Select :Barras' +
              ')'#10#10'Select * from dbo.Autorizacion'#10'Where (dbo.Autorizacion.Refere' +
              'ncia = @Barras)'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'AutorizacionID'
                TableField = 'AutorizacionID'
              end
              item
                DatasetField = 'Fecha'
                TableField = 'Fecha'
              end
              item
                DatasetField = 'Importe'
                TableField = 'Importe'
              end
              item
                DatasetField = 'Cantidad'
                TableField = 'Cantidad'
              end
              item
                DatasetField = 'ImporteCantidad'
                TableField = 'ImporteCantidad'
              end
              item
                DatasetField = 'PosicionCarga'
                TableField = 'PosicionCarga'
              end
              item
                DatasetField = 'Referencia'
                TableField = 'Referencia'
              end
              item
                DatasetField = 'EstacionID'
                TableField = 'EstacionID'
              end
              item
                DatasetField = 'VehiculoID'
                TableField = 'VehiculoID'
              end
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'GasolineroID'
                TableField = 'GasolineroID'
              end
              item
                DatasetField = 'Tipo'
                TableField = 'Tipo'
              end
              item
                DatasetField = 'Odometro'
                TableField = 'Odometro'
              end>
          end>
        Name = 'spBuscaAutorizacion'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'AutorizacionID'
            DataType = datInteger
          end
          item
            Name = 'Fecha'
            DataType = datDateTime
          end
          item
            Name = 'Importe'
            DataType = datFloat
          end
          item
            Name = 'Cantidad'
            DataType = datFloat
          end
          item
            Name = 'ImporteCantidad'
            DataType = datString
            Size = 1
          end
          item
            Name = 'PosicionCarga'
            DataType = datInteger
          end
          item
            Name = 'Referencia'
            DataType = datString
            Size = 50
          end
          item
            Name = 'EstacionID'
            DataType = datInteger
          end
          item
            Name = 'VehiculoID'
            DataType = datInteger
          end
          item
            Name = 'ClienteID'
            DataType = datInteger
          end
          item
            Name = 'GasolineroID'
            DataType = datInteger
          end
          item
            Name = 'Tipo'
            DataType = datInteger
          end
          item
            Name = 'Odometro'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'FechaCorte'
            DataType = datDateTime
            Value = '04/24/2018'
            ParamType = daptInput
          end
          item
            Name = 'GrupoFacturar'
            DataType = datInteger
            Value = '1'
            ParamType = daptInput
          end
          item
            Name = 'Magna'
            DataType = datInteger
            Value = '1'
            ParamType = daptInput
          end
          item
            Name = 'Premium'
            DataType = datInteger
            Value = '2'
            ParamType = daptInput
          end
          item
            Name = 'Diesel'
            DataType = datInteger
            Value = '3'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'CREATE TABLE #TEMP1('#10'IVA FLOAT,'#10'CLIENTEID INT,'#10'PRECIO FLOAT,'#10'CAN' +
              'TIDAD FLOAT,'#10'PRODUCTOID INT,'#10'PLAZOPAGO INT,'#10'IMPORTE FLOAT,'#10'IMPUE' +
              'STOIMPORTE FLOAT'#10')'#10#10'declare @FechaCorte as DateTime'#10'declare @Gru' +
              'poFacturar as int'#10'declare @Magna as int'#10'declare @Premium as int'#10 +
              'declare @Diesel as int'#10#10'select @FechaCorte = (Select :FechaCorte' +
              ')'#10'select @GrupoFacturar = (Select :GrupoFacturar)'#10#10'INSERT INTO #' +
              'TEMP1'#10'SELECT     Estacion.IVA, cns.ClienteID, cns.Precio, SUM(cn' +
              's.Cantidad) AS Cantidad, cns.ProductoID, cli.PlazoPago, SUM(cns.' +
              'Importe) AS Importe, SUM(cns.ImpuestoImporte)'#10'                  ' +
              '    AS ImpuestoImporte'#10'from dbo.Consumo cns'#10'inner join dbo.Clien' +
              'te cli on (cns.ClienteID = cli.ClienteID) inner join Estacion on' +
              ' Estacion.IDESTACION = cns.EstacionID'#10'Where (cli.GrupoFacturarID' +
              ' = @GrupoFacturar)and(cns.Facturado = 0)and (cns.FechaMovimiento' +
              ' <= @FechaCorte)'#10'AND (CLI.FACTURACONSUMOCUPON = 1)AND(SUBSTRING(' +
              'CNS.TARJETA,1,4)<>'#39'0005'#39')AND(LEN(CNS.TARJETA)>=10)'#10'AND (CNS.TARJ' +
              'ETA <> '#39'GRUPO CUPONES'#39') AND ((cns.ProductoID = :Magna) OR (cns.P' +
              'roductoID = :Premium) OR (cns.ProductoID = :Diesel) OR'#10'      (cn' +
              's.ProductoID >= 10))'#10'GROUP BY Estacion.IVA, cns.ClienteID, cns.P' +
              'recio, cli.PlazoPago, cns.ProductoID'#10'having sum(cns.Importe) > 0' +
              #10'order by cns.ClienteID'#10#10'INSERT INTO #TEMP1'#10'SELECT     Estacion.' +
              'IVA, cns.ClienteID, cns.Precio, SUM(cns.Cantidad) AS Cantidad, c' +
              'ns.ProductoID, cli.PlazoPago, SUM(cns.Importe) AS Importe, SUM(c' +
              'ns.ImpuestoImporte)'#10'                      AS ImpuestoImporte'#10'fro' +
              'm dbo.Consumo cns'#10'inner join dbo.Cliente cli on (cns.ClienteID =' +
              ' cli.ClienteID) inner join Estacion on Estacion.IDESTACION = cns' +
              '.EstacionID'#10'Where (cli.GrupoFacturarID = @GrupoFacturar)and(cns.' +
              'Facturado = 0)and (cns.FechaMovimiento <= @FechaCorte)'#10'AND (ISNU' +
              'LL(CLI.FACTURACONSUMOCUPON,0) = 0) AND ((cns.ProductoID = :Magna' +
              ') OR (cns.ProductoID = :Premium) OR (cns.ProductoID = :Diesel) O' +
              'R'#10'      (cns.ProductoID >= 10))'#10'GROUP BY Estacion.IVA, cns.Clien' +
              'teID, cns.Precio, cli.PlazoPago, cns.ProductoID'#10'having sum(cns.I' +
              'mporte) > 0'#10'order by cns.ClienteID'#10#10#10'SELECT IVA, ClienteID, Prec' +
              'io, SUM(Cantidad) AS Cantidad, ProductoID, PlazoPago, SUM(Import' +
              'e) AS Importe, SUM(ImpuestoImporte)'#10'                      AS Imp' +
              'uestoImporte'#10'FROM #TEMP1'#10'GROUP BY IVA, ClienteID, Precio, PlazoP' +
              'ago, ProductoID'#10'ORDER BY CLIENTEID'#10#10'DROP TABLE #TEMP1'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'IVA'
                TableField = 'IVA'
              end
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'Precio'
                TableField = 'Precio'
              end
              item
                DatasetField = 'Cantidad'
                TableField = 'Cantidad'
              end
              item
                DatasetField = 'ProductoID'
                TableField = 'ProductoID'
              end
              item
                DatasetField = 'PlazoPago'
                TableField = 'PlazoPago'
              end
              item
                DatasetField = 'Importe'
                TableField = 'Importe'
              end
              item
                DatasetField = 'ImpuestoImporte'
                TableField = 'ImpuestoImporte'
              end>
          end>
        Name = 'spObtenClientesConsumos'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IVA'
            DataType = datFloat
          end
          item
            Name = 'ClienteID'
            DataType = datInteger
          end
          item
            Name = 'Precio'
            DataType = datFloat
          end
          item
            Name = 'Cantidad'
            DataType = datFloat
          end
          item
            Name = 'ProductoID'
            DataType = datInteger
          end
          item
            Name = 'PlazoPago'
            DataType = datInteger
          end
          item
            Name = 'Importe'
            DataType = datFloat
          end
          item
            Name = 'ImpuestoImporte'
            DataType = datFloat
          end>
      end
      item
        Params = <
          item
            Name = 'FechaCorte'
            Value = '04/20/2018'
            ParamType = daptInput
          end
          item
            Name = 'ClienteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Productos'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @FacturaConsumo as bit'#10'declare @FechaCorte as DateTime'#10'd' +
              'eclare @ClienteID as int'#10'declare @Productos as Varchar(100)'#10#10'sel' +
              'ect @FechaCorte = (Select :FechaCorte)'#10'select @ClienteID = (Sele' +
              'ct :ClienteID)'#10'select @Productos = (Select :Productos)'#10#10'Select @' +
              'FacturaConsumo = (SELECT FacturaConsumoCupon from'#10'              ' +
              '            dbo.Cliente  where (ClienteID = @ClienteID))'#10'       ' +
              '                   '#10'IF @FACTURACONSUMO = 1'#10'BEGIN'#10#10'SELECT Estacio' +
              'n.IVA, cns.ClienteID, cns.Precio, SUM(cns.Cantidad) AS Cantidad,' +
              ' cns.ProductoID, cli.PlazoPago,'#10'       SUM(cns.Importe) AS Impor' +
              'te, SUM(cns.ImpuestoImporte) AS ImpuestoImporte'#10'FROM dbo.Consumo' +
              ' cns'#10'INNER JOIN dbo.Cliente cli on (cns.ClienteID = cli.ClienteI' +
              'D)'#10'INNER JOIN Estacion on Estacion.IDESTACION = cns.EstacionID'#10'W' +
              'HERE (ISNULL(CLI.FACTURACONSUMOCUPON,0) = 1)AND((SUBSTRING(CNS.T' +
              'ARJETA,1,4)<>'#39'0005'#39')AND(LEN(CNS.TARJETA)>=10))'#10'AND (cns.Facturad' +
              'o = 0) AND (cns.FechaMovimiento <= @FechaCorte) AND'#10'      @Produ' +
              'ctos Like '#39'%'#39'+ Cast(cns.ProductoID as Varchar(50)) + '#39'%'#39#10'GROUP B' +
              'Y Estacion.IVA, cns.ClienteID, cns.Precio, cli.PlazoPago, cns.Pr' +
              'oductoID'#10'ORDER BY cns.ClienteID'#10#10'END'#10#10'ELSE'#10#10'BEGIN'#10#10'SELECT Estaci' +
              'on.IVA, cns.ClienteID, cns.Precio, SUM(cns.Cantidad) AS Cantidad' +
              ', cns.ProductoID, cli.PlazoPago,'#10'       SUM(cns.Importe) AS Impo' +
              'rte, SUM(cns.ImpuestoImporte) AS ImpuestoImporte'#10'FROM dbo.Consum' +
              'o cns'#10'INNER JOIN dbo.Cliente cli on (cns.ClienteID = cli.Cliente' +
              'ID)'#10'INNER JOIN Estacion on Estacion.IDESTACION = cns.EstacionID'#10 +
              'WHERE (ISNULL(CLI.FACTURACONSUMOCUPON,0) = 0)AND(cli.ClienteID =' +
              ' @ClienteID) AND (cns.Facturado = 0) AND (cns.FechaMovimiento <=' +
              ' @FechaCorte) AND'#10'      @Productos Like '#39'%'#39'+ Cast(cns.ProductoID' +
              ' as Varchar(50)) + '#39'%'#39#10'GROUP BY Estacion.IVA, cns.ClienteID, cns' +
              '.Precio, cli.PlazoPago, cns.ProductoID'#10'ORDER BY cns.ClienteID'#10#10'E' +
              'ND'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'IVA'
                TableField = 'IVA'
              end
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'Precio'
                TableField = 'Precio'
              end
              item
                DatasetField = 'Cantidad'
                TableField = 'Cantidad'
              end
              item
                DatasetField = 'ProductoID'
                TableField = 'ProductoID'
              end
              item
                DatasetField = 'PlazoPago'
                TableField = 'PlazoPago'
              end
              item
                DatasetField = 'Importe'
                TableField = 'Importe'
              end
              item
                DatasetField = 'ImpuestoImporte'
                TableField = 'ImpuestoImporte'
              end>
          end>
        Name = 'spObtenConsumosXCliente'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IVA'
            DataType = datFloat
          end
          item
            Name = 'ClienteID'
            DataType = datInteger
          end
          item
            Name = 'Precio'
            DataType = datFloat
          end
          item
            Name = 'Cantidad'
            DataType = datFloat
          end
          item
            Name = 'ProductoID'
            DataType = datInteger
          end
          item
            Name = 'PlazoPago'
            DataType = datInteger
          end
          item
            Name = 'Importe'
            DataType = datFloat
          end
          item
            Name = 'ImpuestoImporte'
            DataType = datFloat
          end>
      end
      item
        Params = <
          item
            Name = 'FechaCorte'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClienteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CadTicket'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @FechaCorte as DateTime'#10'declare @ClienteID as int'#10'declar' +
              'e @CadTicket as Varchar(500)'#10#10'select @FechaCorte = (Select :Fech' +
              'aCorte)'#10'select @ClienteID = (Select :ClienteID)'#10'select @CadTicke' +
              't = (Select :CadTicket)'#10#10#10'SELECT Estacion.IVA, cns.ClienteID, cn' +
              's.Precio, SUM(cns.Cantidad) AS Cantidad, cns.ProductoID, cli.Pla' +
              'zoPago,'#10'       SUM(cns.Importe) AS Importe, SUM(cns.ImpuestoImpo' +
              'rte) AS ImpuestoImporte'#10'FROM dbo.Consumo cns'#10'INNER JOIN dbo.Clie' +
              'nte cli on (cns.ClienteID = cli.ClienteID)'#10'INNER JOIN Estacion o' +
              'n Estacion.IDESTACION = cns.EstacionID'#10'WHERE (CLI.FACTURACONSUMO' +
              'CUPON = 1)AND((SUBSTRING(CNS.TARJETA,1,4)='#39'0005'#39')OR(LEN(CNS.TARJ' +
              'ETA)<10)OR'#10'(CNS.TARJETA = '#39'GRUPO CUPONES'#39'))AND(CNS.TARJETA <> '#39#39 +
              ')AND'#10'      @CadTicket Like '#39'%@'#39'+ Cast(cns.SecuenciaVenta as Varc' +
              'har(50)) + '#39'@%'#39#10'AND(cli.ClienteID = @ClienteID) AND (cns.Factura' +
              'do = 0) AND (cns.FechaMovimiento <= @FechaCorte)'#10'GROUP BY Estaci' +
              'on.IVA, cns.ClienteID, cns.Precio, cli.PlazoPago, cns.ProductoID' +
              #10'ORDER BY cns.ClienteID'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'IVA'
                TableField = 'IVA'
              end
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'Precio'
                TableField = 'Precio'
              end
              item
                DatasetField = 'Cantidad'
                TableField = 'Cantidad'
              end
              item
                DatasetField = 'ProductoID'
                TableField = 'ProductoID'
              end
              item
                DatasetField = 'PlazoPago'
                TableField = 'PlazoPago'
              end
              item
                DatasetField = 'Importe'
                TableField = 'Importe'
              end
              item
                DatasetField = 'ImpuestoImporte'
                TableField = 'ImpuestoImporte'
              end>
          end>
        Name = 'spObtenConsumosXClienteCupones'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IVA'
            DataType = datFloat
          end
          item
            Name = 'ClienteID'
            DataType = datInteger
          end
          item
            Name = 'Precio'
            DataType = datFloat
          end
          item
            Name = 'Cantidad'
            DataType = datFloat
          end
          item
            Name = 'ProductoID'
            DataType = datInteger
          end
          item
            Name = 'PlazoPago'
            DataType = datInteger
          end
          item
            Name = 'Importe'
            DataType = datFloat
          end
          item
            Name = 'ImpuestoImporte'
            DataType = datFloat
          end>
      end
      item
        Params = <
          item
            Name = 'Folio'
            DataType = datInteger
            Value = '1'
            ParamType = daptInput
          end
          item
            Name = 'Serie'
            DataType = datString
            Size = 65536
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @FacturaID as int'#10'declare @MovimientoID as int'#10'declare @' +
              'MiError as int'#10'declare @OK as bit'#10'declare @Pagos as float'#10#10'selec' +
              't @facturaid = (select top 1 isnull(facturaid, 0) from factura w' +
              'here folio = :Folio and Serie = :Serie)'#10'select @Ok = (select 0)'#10 +
              #10'if (@facturaid > 0)'#10'begin'#10#9'select @movimientoid = (select top 1' +
              ' movimientoid from factura where facturaid = @facturaid)'#10#10#9'selec' +
              't @pagos = isnull((select sum(abono) from saldodocumento where m' +
              'ovimientoid = @movimientoid), 0)'#10#10#9'if (@pagos = 0)'#10'    begin'#10#10#9#9 +
              'BEGIN TRANSACTION'#10#10#9#9'delete from detallefactura'#10#9#9'where facturai' +
              'd = @facturaid'#10#9#9'select @MiError = (Select @@ERROR)'#10#10#9#9'if (@MiEr' +
              'ror = 0)'#10#9#9'begin'#10#9#9#9'delete from movimiento'#10#9#9#9'where movimientoid' +
              ' = @movimientoid'#10#9#9#9'select @MiError = (Select @@ERROR)'#10#10#9#9#9'if (@' +
              'MiError = 0)'#10#9#9#9'begin'#10#9#9#9#9'delete from saldodocumento'#10#9#9#9#9'where m' +
              'ovimientoid = @movimientoid'#10#9#9#9#9'select @MiError = (Select @@ERRO' +
              'R)'#10#10#9#9#9#9'if (@MiError = 0)'#10#9#9#9#9'begin'#10#9#9#9#9#9'delete from factura'#10#9#9#9 +
              #9#9'where facturaid = @facturaid'#10#9#9#9#9#9'select @MiError = (Select @@' +
              'ERROR)'#10#10#9#9#9#9#9'if (@MiError = 0)'#10#9#9#9#9#9'begin'#10#9#9#9#9#9#9'update consumo s' +
              'et'#10#9#9#9#9#9#9'facturado = 0, facturaid = 0'#10#9#9#9#9#9#9'where facturaid = @F' +
              'acturaID'#10#9#9#9#9#9#9'select @MiError = (Select @@ERROR)'#10#9#9#9#9#9#9#10#9#9#9#9#9#9'i' +
              'f (@MiError = 0)'#10#9#9#9#9#9#9'begin'#10'                                   ' +
              '                delete from FacturaElectronica'#10'                 ' +
              '                                  where facturaid = @facturaid'#10' ' +
              '                                                  select @MiErro' +
              'r = (Select @@ERROR)'#10#9#9#9#9#9#9'end'#10#9#9#9#9#9'end'#10#9#9#9#9'end'#10#9#9#9'end'#10#9#9'end'#10#10#9#9 +
              'if (@MiError = 0)'#10#9#9'begin'#10#9#9'  COMMIT TRANSACTION'#10#9#9'  select @Ok ' +
              '= (select 1)'#10#9#9'end'#10#9#9'else'#10#9#9'begin'#10'                  ROLLBACK TRA' +
              'NSACTION'#10#9#9'end'#10#9'end'#10'end'#10#10'select @ok as Resultado'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'Resultado'
                TableField = 'Resultado'
              end>
          end>
        Name = 'spEliminaFactura'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'Resultado'
            DataType = datBoolean
          end>
      end
      item
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
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @Serie as varchar(5)'#10'declare @Folio as integer'#10#10'select @' +
              'Serie = (:Serie)'#10'select @Folio = (:Folio)'#10#10'select cli.Nombre, fc' +
              't.Fecha, fct.Total from dbo.Factura fct'#10'inner join dbo.Cliente c' +
              'li on (cli.ClienteID = fct.ClienteID)'#10'Where(fct.Serie = @Serie)a' +
              'nd(fct.Folio = @Folio)'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'Fecha'
                TableField = 'Fecha'
              end
              item
                DatasetField = 'Total'
                TableField = 'Total'
              end>
          end>
        Name = 'ObtenDatosFactura'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
      end
      item
        Params = <
          item
            Name = 'Recibo'
            DataType = datInteger
            Value = '1'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Recibo'
            SQL = 
              'SELECT '#10'    ReciboID, Folio, FechaMovimiento, Ejercicio, Periodo' +
              ', '#10'    Cheque, Referencia, Importe, CuentaContableCliente, '#10'    ' +
              'FechaCaptura, FechaAplicacion, UsuarioID, ClienteID, '#10'    Movimi' +
              'entoID, BancoID, EstacionID'#10'  FROM'#10'    dbo.Recibo'#10'WHERE (ReciboI' +
              'D = :Recibo)'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'ReciboID'
                TableField = 'ReciboID'
              end
              item
                DatasetField = 'Folio'
                TableField = 'Folio'
              end
              item
                DatasetField = 'FechaMovimiento'
                TableField = 'FechaMovimiento'
              end
              item
                DatasetField = 'Ejercicio'
                TableField = 'Ejercicio'
              end
              item
                DatasetField = 'Periodo'
                TableField = 'Periodo'
              end
              item
                DatasetField = 'Cheque'
                TableField = 'Cheque'
              end
              item
                DatasetField = 'Referencia'
                TableField = 'Referencia'
              end
              item
                DatasetField = 'Importe'
                TableField = 'Importe'
              end
              item
                DatasetField = 'CuentaContableCliente'
                TableField = 'CuentaContableCliente'
              end
              item
                DatasetField = 'FechaCaptura'
                TableField = 'FechaCaptura'
              end
              item
                DatasetField = 'FechaAplicacion'
                TableField = 'FechaAplicacion'
              end
              item
                DatasetField = 'UsuarioID'
                TableField = 'UsuarioID'
              end
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'MovimientoID'
                TableField = 'MovimientoID'
              end
              item
                DatasetField = 'BancoID'
                TableField = 'BancoID'
              end
              item
                DatasetField = 'EstacionID'
                TableField = 'EstacionID'
              end>
          end>
        Name = 'dbo Recibo'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
      end
      item
        Params = <
          item
            Name = 'Cliente'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'Select ClienteID, Nombre, Estatus, FormaPagoID, CuentaContable, ' +
              'FormaCompraID From dbo.Cliente'#10'Where(ClienteID = :Cliente)'#10'order' +
              ' by Nombre'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'Estatus'
                TableField = 'Estatus'
              end
              item
                DatasetField = 'FormaPagoID'
                TableField = 'FormaPagoID'
              end
              item
                DatasetField = 'CuentaContable'
                TableField = 'CuentaContable'
              end
              item
                DatasetField = 'FormaCompraID'
                TableField = 'FormaCompraID'
              end>
          end>
        Name = 'BuscaCliente'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.SaldoDocumento'
            SQL = 
              'SELECT '#10'    SaldodocumentoID, Fecha, FechaVencimiento, Cargo, Ab' +
              'ono, '#10'    Referencia, ClienteID, MovimientoID, ReciboID, BancoID' +
              #10'  FROM'#10'    dbo.SaldoDocumento'#10'  WHERE (2 = 1)'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'SaldodocumentoID'
                TableField = 'SaldodocumentoID'
              end
              item
                DatasetField = 'Fecha'
                TableField = 'Fecha'
              end
              item
                DatasetField = 'FechaVencimiento'
                TableField = 'FechaVencimiento'
              end
              item
                DatasetField = 'Cargo'
                TableField = 'Cargo'
              end
              item
                DatasetField = 'Abono'
                TableField = 'Abono'
              end
              item
                DatasetField = 'Referencia'
                TableField = 'Referencia'
              end
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'MovimientoID'
                TableField = 'MovimientoID'
              end
              item
                DatasetField = 'ReciboID'
                TableField = 'ReciboID'
              end
              item
                DatasetField = 'BancoID'
                TableField = 'BancoID'
              end>
          end>
        Name = 'dbo SaldoDocumento'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'SaldodocumentoID'
            DataType = datInteger
          end
          item
            Name = 'Fecha'
            DataType = datDateTime
          end
          item
            Name = 'FechaVencimiento'
            DataType = datDateTime
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
            Name = 'Referencia'
            DataType = datString
            Size = 50
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
            Name = 'ReciboID'
            DataType = datInteger
          end
          item
            Name = 'BancoID'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'Movimiento'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Movimiento'
            SQL = 
              'SELECT '#10'    MovimientoID, FechaMovimiento, FechaVencimiento, Ref' +
              'erencia, '#10'    Ejercicio, Periodo, CargoAbono, Cargo, Abono, Fech' +
              'aRegistro, '#10'    Origen, AfectaSaldos, TipoMovimientoID, UsuarioI' +
              'D, '#10'    ClienteID'#10'  FROM'#10'    dbo.Movimiento'#10'WHERE (MovimientoID ' +
              '= :Movimiento)'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'MovimientoID'
                TableField = 'MovimientoID'
              end
              item
                DatasetField = 'FechaMovimiento'
                TableField = 'FechaMovimiento'
              end
              item
                DatasetField = 'FechaVencimiento'
                TableField = 'FechaVencimiento'
              end
              item
                DatasetField = 'Referencia'
                TableField = 'Referencia'
              end
              item
                DatasetField = 'Ejercicio'
                TableField = 'Ejercicio'
              end
              item
                DatasetField = 'Periodo'
                TableField = 'Periodo'
              end
              item
                DatasetField = 'CargoAbono'
                TableField = 'CargoAbono'
              end
              item
                DatasetField = 'Cargo'
                TableField = 'Cargo'
              end
              item
                DatasetField = 'Abono'
                TableField = 'Abono'
              end
              item
                DatasetField = 'FechaRegistro'
                TableField = 'FechaRegistro'
              end
              item
                DatasetField = 'Origen'
                TableField = 'Origen'
              end
              item
                DatasetField = 'AfectaSaldos'
                TableField = 'AfectaSaldos'
              end
              item
                DatasetField = 'TipoMovimientoID'
                TableField = 'TipoMovimientoID'
              end
              item
                DatasetField = 'UsuarioID'
                TableField = 'UsuarioID'
              end
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end>
          end>
        Name = 'dbo Movimiento'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'MovimientoID'
            DataType = datInteger
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
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Banco'
            SQL = 'SELECT '#10'    BancoID, Nombre, CuentaContable'#10'  FROM'#10'    dbo.Banco'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'BancoID'
                TableField = 'BancoID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'CuentaContable'
                TableField = 'CuentaContable'
              end>
          end>
        Name = 'dbo Banco'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'BancoID'
            DataType = datInteger
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 50
          end
          item
            Name = 'CuentaContable'
            DataType = datString
            Size = 50
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.TipoMovimiento'
            SQL = 
              'SELECT '#10'    TipoMovimientoID, Descripcion, CargoAbono'#10'  FROM'#10'   ' +
              ' dbo.TipoMovimiento'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'TipoMovimientoID'
                TableField = 'TipoMovimientoID'
              end
              item
                DatasetField = 'Descripcion'
                TableField = 'Descripcion'
              end
              item
                DatasetField = 'CargoAbono'
                TableField = 'CargoAbono'
              end>
          end>
        Name = 'dbo TipoMovimiento'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'TipoMovimientoID'
            DataType = datString
            Size = 10
          end
          item
            Name = 'Descripcion'
            DataType = datString
            Size = 70
          end
          item
            Name = 'CargoAbono'
            DataType = datString
            Size = 1
          end>
      end
      item
        Params = <
          item
            Name = 'ClienteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaCorte'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'Select Consumo.SECUENCIAVENTA, NOMBRE Descripcion, Sum(Cantidad)' +
              ' as Cantidad, Sum(Importe) as Importe,'#10'       CONSUMO.TARJETA'#10'fr' +
              'om Consumo inner join'#10'       Producto on Producto.IDPRODUCTO = C' +
              'onsumo.ProductoID'#10'Where Consumo.ClienteID = :ClienteID and Consu' +
              'mo.FechaCarga <= :FechaCorte and Consumo.Facturado = 0'#10'AND((SUBS' +
              'TRING(CONSUMO.TARJETA,1,4)='#39'0005'#39')OR(LEN(CONSUMO.TARJETA)<10)OR'#10 +
              '(CONSUMO.TARJETA = '#39'GRUPO CUPONES'#39'))AND(CONSUMO.TARJETA <> '#39#39')'#10'G' +
              'roup by Consumo.SECUENCIAVENTA, Producto.Nombre, CONSUMO.TARJETA'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'SECUENCIAVENTA'
                TableField = 'SECUENCIAVENTA'
              end
              item
                DatasetField = 'Descripcion'
                TableField = 'Descripcion'
              end
              item
                DatasetField = 'Cantidad'
                TableField = 'Cantidad'
              end
              item
                DatasetField = 'Importe'
                TableField = 'Importe'
              end
              item
                DatasetField = 'TARJETA'
                TableField = 'TARJETA'
              end>
          end>
        Name = 'spPrevisualizacionCuponesClientes'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'SECUENCIAVENTA'
            DataType = datInteger
          end
          item
            Name = 'Descripcion'
            DataType = datString
            Size = 150
          end
          item
            Name = 'Cantidad'
            DataType = datFloat
          end
          item
            Name = 'Importe'
            DataType = datFloat
          end
          item
            Name = 'TARJETA'
            DataType = datString
            Size = 50
          end>
      end
      item
        Params = <
          item
            Name = 'FechaCorte'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClienteID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @FacturaConsumo as bit'#10'declare @FechaCorte as DateTime'#10'd' +
              'eclare @ClienteID as int'#10#10'select @FechaCorte = (Select :FechaCor' +
              'te)'#10'select @ClienteID = (Select :ClienteID)'#10#10#10'Select @FacturaCon' +
              'sumo = (SELECT FacturaConsumoCupon from'#10'                        ' +
              '  dbo.Cliente  where (ClienteID = @ClienteID))'#10#10'IF @FACTURACONSU' +
              'MO = 1'#10'BEGIN'#10#10'Select Consumo.ProductoID, NOMBRE Descripcion, Sum' +
              '(Cantidad) as Cantidad, Sum(Importe) as Importe'#10'from Consumo inn' +
              'er join'#10'       Producto on Producto.IDPRODUCTO = Consumo.Product' +
              'oID'#10'Where Consumo.ClienteID = :ClienteID and Consumo.FechaCarga ' +
              '<= :FechaCorte and Consumo.Facturado = 0'#10'AND((SUBSTRING(Consumo.' +
              'TARJETA,1,4)<>'#39'0005'#39')AND(LEN(Consumo.TARJETA)>=10)AND'#10'(Consumo.T' +
              'ARJETA <> '#39'GRUPO CUPONES'#39'))'#10'Group by Consumo.ProductoID, Product' +
              'o.NOMBRE'#10#10'END'#10'ELSE'#10'BEGIN'#10#10'Select Consumo.ProductoID, NOMBRE Desc' +
              'ripcion, Sum(Cantidad) as Cantidad, Sum(Importe) as Importe'#10'from' +
              ' Consumo inner join'#10'       Producto on Producto.IDPRODUCTO = Con' +
              'sumo.ProductoID'#10'Where Consumo.ClienteID = :ClienteID and Consumo' +
              '.FechaCarga <= :FechaCorte and Consumo.Facturado = 0'#10'Group by Co' +
              'nsumo.ProductoID, Producto.NOMBRE'#10#10'END'#10#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'ProductoID'
                TableField = 'ProductoID'
              end
              item
                DatasetField = 'Descripcion'
                TableField = 'Descripcion'
              end
              item
                DatasetField = 'Cantidad'
                TableField = 'Cantidad'
              end
              item
                DatasetField = 'Importe'
                TableField = 'Importe'
              end>
          end>
        Name = 'spPrevisualizaFacturaCliente'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'ProductoID'
            DataType = datInteger
          end
          item
            Name = 'Descripcion'
            DataType = datString
            Size = 150
          end
          item
            Name = 'Cantidad'
            DataType = datFloat
          end
          item
            Name = 'Importe'
            DataType = datFloat
          end>
      end
      item
        Params = <
          item
            Name = 'Folio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Serie'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT FacturaID'#10'FROM Factura'#10'WHERE (Folio = :Folio) AND (Serie ' +
              '= :Serie)'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'FacturaID'
                TableField = 'FacturaID'
              end>
          end>
        Name = 'spBuscaFolio'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'FacturaID'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.GrupoFacturar'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'GrupoFacturarID'
                TableField = 'GrupoFacturarID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end>
          end>
        Name = 'dbo GrupoFacturar'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
      end
      item
        Params = <
          item
            Name = 'param'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @param as Int'#10#10'select @param = (select :param)'#10#10'Select P' +
              'recio, NOMBRE Descripcion FROM dbo.Producto'#10'WHERE (IDPRODUCTO = ' +
              '@param)'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'Precio'
                TableField = 'Precio'
              end
              item
                DatasetField = 'Descripcion'
                TableField = 'Descripcion'
              end>
          end>
        Name = 'obtenDescPrecio'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'Precio'
            DataType = datFloat
          end
          item
            Name = 'Descripcion'
            DataType = datString
            Size = 150
          end>
      end
      item
        Params = <
          item
            Name = 'param'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @param as Varchar(15)'#10'select @param = (select :param)'#10#10's' +
              'elect Serie from dbo.Folio'#10'where (Campo = @param)'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'Serie'
                TableField = 'Serie'
              end>
          end>
        Name = 'obtenSerie'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'Serie'
            DataType = datString
            Size = 5
          end>
      end
      item
        Params = <
          item
            Name = 'Folio'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Serie'
            DataType = datString
            Size = 5
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Factura'
            SQL = 
              'SELECT FACTURAID, SERIE, FOLIO, FECHA, FECHAVENCIMIENTO, FECHAIM' +
              'PRESION,'#10'       EJERCICIO, PERIODO, SUBTOTAL, IMPUESTO, TOTAL, S' +
              'ALDO, TICKETS, CLIENTEID,'#10'       USUARIOID, MOVIMIENTOID'#10'FROM'#10'  ' +
              '     dbo.Factura'#10'WHERE  (FOLIO = :Folio)and(SERIE = :Serie)'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'FACTURAID'
                TableField = 'FacturaID'
                SQLOrigin = 'FACTURAID'
              end
              item
                DatasetField = 'SERIE'
                TableField = 'Serie'
                SQLOrigin = 'SERIE'
              end
              item
                DatasetField = 'FOLIO'
                TableField = 'Folio'
                SQLOrigin = 'FOLIO'
              end
              item
                DatasetField = 'FECHA'
                TableField = 'Fecha'
                SQLOrigin = 'FECHA'
              end
              item
                DatasetField = 'FECHAVENCIMIENTO'
                TableField = 'FechaVencimiento'
                SQLOrigin = 'FECHAVENCIMIENTO'
              end
              item
                DatasetField = 'FECHAIMPRESION'
                TableField = 'FechaImpresion'
                SQLOrigin = 'FECHAIMPRESION'
              end
              item
                DatasetField = 'EJERCICIO'
                TableField = 'Ejercicio'
                SQLOrigin = 'EJERCICIO'
              end
              item
                DatasetField = 'PERIODO'
                TableField = 'Periodo'
                SQLOrigin = 'PERIODO'
              end
              item
                DatasetField = 'SUBTOTAL'
                TableField = 'Subtotal'
                SQLOrigin = 'SUBTOTAL'
              end
              item
                DatasetField = 'IMPUESTO'
                TableField = 'Impuesto'
                SQLOrigin = 'IMPUESTO'
              end
              item
                DatasetField = 'TOTAL'
                TableField = 'Total'
                SQLOrigin = 'TOTAL'
              end
              item
                DatasetField = 'SALDO'
                TableField = 'Saldo'
                SQLOrigin = 'SALDO'
              end
              item
                DatasetField = 'TICKETS'
                TableField = 'Tickets'
                SQLOrigin = 'TICKETS'
              end
              item
                DatasetField = 'CLIENTEID'
                TableField = 'ClienteID'
                SQLOrigin = 'CLIENTEID'
              end
              item
                DatasetField = 'USUARIOID'
                TableField = 'UsuarioID'
                SQLOrigin = 'USUARIOID'
              end
              item
                DatasetField = 'MOVIMIENTOID'
                TableField = 'MovimientoID'
                SQLOrigin = 'MOVIMIENTOID'
              end>
          end>
        Name = 'dbo Factura'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
      end
      item
        Params = <
          item
            Name = 'FacturaID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.DetalleFactura'
            SQL = 
              'SELECT dtf.DetalleFacturaID, dtf.FacturaID, dtf.Cantidad, dtf.Pr' +
              'ecio,'#10'       dtf.Importe, dtf.ProductoID, pdt.NOMBRE Descripcion' +
              #10'FROM  dbo.DetalleFactura dtf'#10'inner join dbo.Producto pdt on (pd' +
              't.IDPRODUCTO = dtf.ProductoID)'#10'Where (dtf.FacturaID = :FacturaID' +
              ')'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'DetalleFacturaID'
                TableField = 'DetalleFacturaID'
              end
              item
                DatasetField = 'FacturaID'
                TableField = 'FacturaID'
              end
              item
                DatasetField = 'Cantidad'
                TableField = 'Cantidad'
              end
              item
                DatasetField = 'Precio'
                TableField = 'Precio'
              end
              item
                DatasetField = 'Importe'
                TableField = 'Importe'
              end
              item
                DatasetField = 'ProductoID'
                TableField = 'ProductoID'
              end
              item
                DatasetField = 'Descripcion'
                TableField = 'Importe'
                SQLOrigin = 'Descripcion'
              end>
          end>
        Name = 'dbo DetalleFactura'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
            Size = 150
          end>
      end
      item
        Params = <
          item
            Name = 'folio'
            DataType = datInteger
            Value = '1'
            ParamType = daptInput
          end
          item
            Name = 'Serie'
            DataType = datString
            Size = 65536
            Value = 'A'
            ParamType = daptInput
          end
          item
            Name = 'GasolineroID'
            DataType = datInteger
            Value = '2137'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @aFolio as varchar(50)'#10'declare @Serie as varchar(10)'#10'dec' +
              'lare @FolioInicial as integer'#10'declare @FolioFinal as integer'#10'dec' +
              'lare @reg as integer'#10#10'declare @folio as integer'#10#10'select @aFolio ' +
              '= (Select :folio)'#10'select @Serie = (Select :Serie)'#10'select @Folio ' +
              '= (Select -1)'#10#10'select @FolioInicial = (select FolioInicial from ' +
              'Gasolinero Where GasolineroID = :GasolineroID)'#10'select @FolioFina' +
              'l = (select FolioFinal from Gasolinero Where GasolineroID = :Gas' +
              'olineroID)'#10#10'select @reg = (select count (*) From Factura'#10'       ' +
              '        Where (Folio = @aFolio)AND(Serie = @Serie))'#10#10'if @reg = 0' +
              #10'BEGIN'#10#10'select @Folio = (select @aFolio)'#10#10'if (isnull(@Folio,0)) ' +
              '>= (isnull(@FolioInicial,0)) AND (isnull(@Folio,0)) <= (isnull(@' +
              'FolioFinal,0))'#10'   Select @Folio = @Folio'#10'Else'#10'   Select @Folio=-' +
              '1'#10#10'Select @Folio As Folio'#10'END'#10#10'select @Folio as Folio'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'Folio'
                TableField = 'Folio'
              end>
          end>
        Name = 'spFolioActual2'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'Folio'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'FACTURAID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT SecuenciaVenta'#10'FROM Consumo'#10'WHERE (FACTURAID = :FACTURAID' +
              ')'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'SecuenciaVenta'
                TableField = 'SecuenciaVenta'
              end>
          end>
        Name = 'spBuscaTicketFactura'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'SecuenciaVenta'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'ClienteID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Contacto'
            SQL = 
              'SELECT '#10'    ContactoID, Nombre, Empresa, Puesto, Departamento, '#10 +
              '    FechaNacimiento, TelefonoOficina, Celular, email, email2, '#10' ' +
              '   Observaciones, MensajesCelular, MensajesEmail, TipoMensajes, ' +
              #10'    ClienteID'#10'  FROM'#10'    dbo.Contacto'#10'  WHERE'#10'    ClienteID = :' +
              'ClienteID'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'ContactoID'
                TableField = 'ContactoID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'Empresa'
                TableField = 'Empresa'
              end
              item
                DatasetField = 'Puesto'
                TableField = 'Puesto'
              end
              item
                DatasetField = 'Departamento'
                TableField = 'Departamento'
              end
              item
                DatasetField = 'FechaNacimiento'
                TableField = 'FechaNacimiento'
              end
              item
                DatasetField = 'TelefonoOficina'
                TableField = 'TelefonoOficina'
              end
              item
                DatasetField = 'Celular'
                TableField = 'Celular'
              end
              item
                DatasetField = 'email'
                TableField = 'email'
              end
              item
                DatasetField = 'email2'
                TableField = 'email2'
              end
              item
                DatasetField = 'Observaciones'
                TableField = 'Observaciones'
              end
              item
                DatasetField = 'MensajesCelular'
                TableField = 'MensajesCelular'
              end
              item
                DatasetField = 'MensajesEmail'
                TableField = 'MensajesEmail'
              end
              item
                DatasetField = 'TipoMensajes'
                TableField = 'TipoMensajes'
              end
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end>
          end>
        Name = 'dbo Contacto'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Vendedor'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'VendedorID'
                TableField = 'VendedorID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end>
          end>
        Name = 'dbo Vendedor'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.FormaCompra'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'FormaCompraID'
                TableField = 'FormaCompraID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end>
          end>
        Name = 'dbo FormaCompra'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.FormaPago'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'FormaPagoID'
                TableField = 'FormaPagoID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'Codigo'
                TableField = 'Codigo'
              end>
          end>
        Name = 'dbo FormaPago'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Clasificacion'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'ClasificacionID'
                TableField = 'ClasificacionID'
              end
              item
                DatasetField = 'Codigo'
                TableField = 'Codigo'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end>
          end>
        Name = 'dbo Clasificacion'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'ClasificacionID'
            DataType = datInteger
            Required = True
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
      end
      item
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
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @Ejercicio Integer'#10'declare @Ini Integer'#10'declare @Fin Int' +
              'eger'#10'declare @ClienteIni INTEGER'#10'declare @ClienteFin INTEGER'#10'dec' +
              'lare @Grupo VARCHAR(100)'#10'declare @FormaCompra INTEGER'#10'declare @G' +
              'RUPOFacturar INTEGER'#10#10'select @ejercicio = (select :Ejercicio)'#10'se' +
              'lect @ini = (select :Ini)'#10'select @fin = (select :Fin)'#10'select @cl' +
              'ienteini = (select :ClienteIni)'#10'select @clientefin = (select :Cl' +
              'ienteFin)'#10'select @grupo = (select :Grupo)'#10'select @formacompra = ' +
              '(select :FormaCompraID)'#10'select @GRUPOfacturar = (select :GrupoFa' +
              'cturarID)'#10#10#10'/*================*/'#10#10'DECLARE @CONSUMOS MONEY'#10'DECLAR' +
              'E @CUPONES MONEY'#10'DECLARE @SALDOINICIAL MONEY'#10'DECLARE @SALDOFINAL' +
              ' MONEY'#10'DECLARE @TOTALCARGOS MONEY'#10'DECLARE @TOTALABONOS MONEY'#10'DEC' +
              'LARE @SUBTOTAL MONEY'#10'DECLARE @SALDO MONEY'#10'DECLARE @CUANTOS MONEY' +
              #10#9#9' DECLARE @XCLIENTE AS INT'#10#9#9' DECLARE @XNOMBRE AS VARCHAR(100)' +
              #10#9#9' DECLARE @XRFC AS VARCHAR(25)'#10#9#9' DECLARE @XCALLE AS VARCHAR(1' +
              '00)'#10#9#9' DECLARE @XFECHA AS DATETIME'#10#9#9' DECLARE @XREFERENCIA AS VA' +
              'RCHAR(80)'#10#9#9' DECLARE @XFACTURA AS VARCHAR(6)'#10#9#9' DECLARE @XCARGO ' +
              'AS FLOAT'#10#9#9' DECLARE @XABONO AS FLOAT'#10#9#9' DECLARE @XLIMITECREDITO ' +
              'AS FLOAT'#10#9#9' DECLARE @XSALDOINICIAL AS FLOAT'#10#9#9' DECLARE @XCONSUMO' +
              'S AS FLOAT'#10#9#9' DECLARE @XTOTALCARGOS AS FLOAT'#10#9#9' DECLARE @XTOTALA' +
              'BONOS AS FLOAT'#10#9#9' DECLARE @XSUBTOTAL AS FLOAT'#10#9#9' DECLARE @XSALDO' +
              ' AS FLOAT'#10#9#9' DECLARE @XDISPONIBLE AS FLOAT'#10#9#9' DECLARE @XSALDOPAR' +
              'CIAL AS FLOAT'#10#9#9' DECLARE @XOK AS INT'#10' '#9#9' DECLARE @XFC AS INT'#10#9#9'C' +
              'REATE TABLE #SALDOCLIENTE'#10#9#9'(CLIENTE INT,'#10#9#9' NOMBRE VARCHAR(100)' +
              ','#10#9#9' RFC VARCHAR(25),'#10#9#9' CALLE VARCHAR(100),'#10#9#9' FECHA DATETIME,'#10 +
              #9#9' REFERENCIA VARCHAR(80),'#10#9#9' DOCUMENTOID INT,'#10#9#9' CARGO MONEY,'#10#9 +
              #9' ABONO MONEY,'#10#9#9' LIMITECREDITO MONEY,'#10#9#9' SALDOINICIAL MONEY,'#10#9#9 +
              ' CONSUMOS MONEY,'#10#9#9' TOTALCARGOS MONEY,'#10#9#9' TOTALABONOS MONEY,'#10#9#9' ' +
              'SUBTOTAL MONEY,'#10#9#9' SALDO MONEY,'#10#9#9' DISPONIBLE MONEY,'#10#9#9' SALDOPAR' +
              'CIAL MONEY)'#10#9'WHILE (@CLIENTEINI <= @CLIENTEFIN)'#10'     BEGIN'#10#9'SELE' +
              'CT @XOK = 0'#10#9'IF (@GRUPO <> '#39#39' AND (SELECT COUNT(*) FROM Cliente ' +
              'WHERE ClienteID = @CLIENTEINI AND GRUPO = @GRUPO) < 1)'#10#9#9'SELECT ' +
              '@XOK = 1'#10#9'IF (@FORMACOMPRA > 0 AND (SELECT COUNT(*) FROM Cliente' +
              ' WHERE ClienteID = @CLIENTEINI AND FORMACOMPRAID = @FORMACOMPRA)' +
              ' < 1)'#10#9#9'SELECT @XOK = 1'#10#9'IF (@GRUPOFACTURAR > 0 AND (SELECT COUN' +
              'T(*) FROM Cliente WHERE ClienteID = @CLIENTEINI AND GrupoFactura' +
              'rID = @GRUPOFACTURAR) < 1)'#10#9#9'SELECT @XOK = 1'#10#9'IF (@XOK = 0)'#10#9'BEG' +
              'IN'#10#10#10#9'SELECT @XFC = (SELECT FORMACOMPRAID FROM Cliente WHERE Cli' +
              'enteID = @CLIENTEINI)'#10#9'IF (@XFC = 1)'#10#9'BEGIN'#10#9#9'SELECT @CONSUMOS =' +
              ' (SELECT SUM(IMPORTE) FROM Consumo WHERE (ClienteID = @CLIENTEIN' +
              'I) AND (FACTURADO = 0) AND ((Ejercicio < @EJERCICIO) OR ((Ejerci' +
              'cio = @EJERCICIO) AND (Periodo <= @FIN))))'#10#9'END'#10#9'ELSE'#10#9'BEGIN'#10#9#9'S' +
              'ELECT @CONSUMOS = (SELECT SUM(IMPORTE) FROM Consumo WHERE (Clien' +
              'teID = @CLIENTEINI) AND (FACTURADO = 0)'#10#9#9#9#9#9'    AND ((Ejercicio' +
              ' < @EJERCICIO) OR ((Ejercicio = @EJERCICIO) AND (Periodo <= @FIN' +
              '))))'#10#9'END'#10#9'SELECT @CONSUMOS = ISNULL(@CONSUMOS, 0)'#10'        SELEC' +
              'T @CUPONES = ISNULL((SELECT SUM(IMPORTE) FROM CUPON WHERE STATUS' +
              ' = '#39'A'#39' AND CLIENTEID = @CLIENTEINI), 0)'#10#9'SELECT @SALDOINICIAL = ' +
              '(SELECT SUM(CARGO - Abono) FROM Movimiento where (ClienteID = @C' +
              'lienteIni) AND ((ejercicio < @Ejercicio) or (ejercicio = @ejerci' +
              'cio and periodo < @ini)))'#10#9'SELECT @SALDOINICIAL = ISNULL(@SALDOI' +
              'NICIAL, 0)'#10#10#9'SELECT @TOTALCARGOS = ISNULL((SELECT SUM(CARGO) FRO' +
              'M         Movimiento'#10#9'WHERE  ClienteID = @CLIENTEINI AND Periodo' +
              ' Between @INI AND @FIN AND EJERCICIO = @Ejercicio), 0)'#10#10#9'SELECT ' +
              '@TOTALABONOS = ISNULL((SELECT SUM(ABONO) FROM         Movimiento' +
              #10#9'WHERE  ClienteID = @CLIENTEINI AND Periodo Between @INI AND @F' +
              'IN AND EJERCICIO = @Ejercicio), 0)'#10#10#9'SELECT @SUBTOTAL = ISNULL(@' +
              'SALDOINICIAL + @TOTALCARGOS - @TOTALABONOS, 0)'#10#9'SELECT @SALDO = ' +
              'ISNULL(@SUBTOTAL + @CONSUMOS + @CUPONES, 0)'#10'        SELECT @CUAN' +
              'TOS = (SELECT     COUNT(*)'#10#9'FROM    Movimiento'#10#9'WHERE  ClienteID' +
              ' = @CLIENTEINI AND Periodo Between @INI AND @FIN AND EJERCICIO =' +
              ' @Ejercicio)'#10#10#9'select @XSALDOPARCIAL = @SaldoInicial'#10#10#9'INSERT IN' +
              'TO #SALDOCLIENTE'#10#9'SELECT     Cliente.CLIENTEID, Cliente.NOMBRE, ' +
              'Cliente.RFC, Cliente.DOMICILIO, null, '#39'-= SALDO INICIAL =-'#39' AS R' +
              'EFERENCIA,'#10'                      '#9'null AS FACTURA, @SALDOINICIAL' +
              ' AS CARGO, 0.0 AS ABONO, Cliente.LIMITECREDITO, @SALDOINICIAL AS' +
              ' SALDOINICIAL,'#10#9#9'@CONSUMOS AS CONSUMOS, @TOTALCARGOS AS TOTALCAR' +
              'GOS, @TOTALABONOS AS TOTALABONOS, @SUBTOTAL AS SUBTOTAL,'#10#9#9'@SALD' +
              'O AS SALDO, (Cliente.LIMITECREDITO - @SALDO) AS DISPONIBLE, @SAL' +
              'DOINICIAL'#10#9'FROM         Cliente  '#9#9'WHERE  ClienteID = @CLIENTEIN' +
              'I'#10#10#9'IF (@CUANTOS > 0)'#10#9'BEGIN'#10#9#9'DECLARE CMISALDO1 CURSOR FOR'#10#9#9'SE' +
              'LECT     Cliente.CLIENTEID, Cliente.NOMBRE, Cliente.RFC, Cliente' +
              '.DOMICILIO, Movimiento.FECHAMOVIMIENTO, Movimiento.REFERENCIA,'#10#9 +
              '                      '#9'Movimiento.MovimientoID, Movimiento.CARGO' +
              ', Movimiento.ABONO, Cliente.LIMITECREDITO, @SALDOINICIAL AS SALD' +
              'OINICIAL,'#10#9#9#9'@CONSUMOS AS CONSUMOS, @TOTALCARGOS AS TOTALCARGOS,' +
              ' @TOTALABONOS AS TOTALABONOS, @SUBTOTAL AS SUBTOTAL,'#10#9#9#9'@SALDO A' +
              'S SALDO, (Cliente.LIMITECREDITO - @SALDO) AS DISPONIBLE, 0'#10#9#9'FRO' +
              'M         Movimiento INNER JOIN'#10#9'                      '#9'Cliente ' +
              'ON Movimiento.CLIENTEID = Cliente.CLIENTEID'#10#9#9'WHERE  Cliente.CLI' +
              'ENTEID = @CLIENTEINI AND Movimiento.Periodo BETWEEN @INI AND @FI' +
              'N AND Ejercicio = @Ejercicio'#10#9#9'ORDER BY Movimiento.FECHAMOVIMIEN' +
              'TO'#10#9#9'OPEN CMISALDO1'#10#9#9'FETCH NEXT FROM CMISALDO1 INTO @XCLIENTE, ' +
              '@XNOMBRE, @XRFC, @XCALLE, @XFECHA,'#10#9#9'@XREFERENCIA, @XFACTURA, @X' +
              'CARGO, @XABONO, @XLIMITECREDITO, @XSALDOINICIAL, @XCONSUMOS,'#10#9#9'@' +
              'XTOTALCARGOS, @XTOTALABONOS, @XSUBTOTAL, @XSALDO, @XDISPONIBLE, ' +
              '@XSALDOPARCIAL'#10#9#9'WHILE (@@FETCH_STATUS = 0)'#10#9#9'BEGIN'#10#9#9#9'SELECT @X' +
              'SALDOPARCIAL = @SALDOINICIAL + @XCARGO - @XABONO'#10#9#9#9'SELECT @SALD' +
              'OINICIAL = @XSALDOPARCIAL'#10#9#9#9'INSERT INTO #SALDOCLIENTE VALUES (@' +
              'XCLIENTE, @XNOMBRE, @XRFC, @XCALLE, @XFECHA,'#10#9#9#9'@XREFERENCIA, @X' +
              'FACTURA, @XCARGO, @XABONO, @XLIMITECREDITO, @XSALDOINICIAL, @XCO' +
              'NSUMOS,'#10#9#9#9'@XTOTALCARGOS, @XTOTALABONOS, @XSUBTOTAL, @XSALDO, @X' +
              'DISPONIBLE, @XSALDOPARCIAL)'#10#9#9#9'FETCH NEXT FROM CMISALDO1 INTO @X' +
              'CLIENTE, @XNOMBRE, @XRFC, @XCALLE, @XFECHA,'#10#9#9#9'@XREFERENCIA, @XF' +
              'ACTURA, @XCARGO, @XABONO, @XLIMITECREDITO, @XSALDOINICIAL, @XCON' +
              'SUMOS,'#10#9#9#9'@XTOTALCARGOS, @XTOTALABONOS, @XSUBTOTAL, @XSALDO, @XD' +
              'ISPONIBLE, @XSALDOPARCIAL'#10#9#9'END'#10#9#9'CLOSE CMISALDO1'#10#9#9'DEALLOCATE C' +
              'MISALDO1'#10#9'END'#10#9#9'INSERT INTO #SALDOCLIENTE'#10#9#9'SELECT     Cliente.C' +
              'LIENTEID, Cliente.NOMBRE, Cliente.RFC, Cliente.DOMICILIO, null, ' +
              #39'-= CONSUMOS PENDIENTES DE APLICAR =-'#39' AS REFERENCIA,'#10#9'         ' +
              '             '#9'null AS FACTURA, @CONSUMOS AS CARGO, 0.0 AS ABONO,' +
              ' Cliente.LIMITECREDITO, @SALDOINICIAL AS SALDOINICIAL,'#10#9#9#9'@CONSU' +
              'MOS AS CONSUMOS, @TOTALCARGOS AS TOTALCARGOS, @TOTALABONOS AS TO' +
              'TALABONOS, @SUBTOTAL AS SUBTOTAL,'#10#9#9#9'@SALDO AS SALDO, (Cliente.L' +
              'IMITECREDITO - @SALDO) AS DISPONIBLE, @XSALDOPARCIAL+ @CONSUMOS'#10 +
              #9#9'FROM         Cliente  '#9#9'WHERE  ClienteID = @CLIENTEINI'#10#10#9#9'INSE' +
              'RT INTO #SALDOCLIENTE'#10#9#9'SELECT     Cliente.CLIENTEID, Cliente.NO' +
              'MBRE, Cliente.RFC, Cliente.DOMICILIO, null, '#39'-= CUPONES ACTIVOS ' +
              '=-'#39' AS REFERENCIA,'#10#9'                      '#9'null AS FACTURA, @CUP' +
              'ONES AS CARGO, 0.0 AS ABONO, Cliente.LIMITECREDITO, @SALDOINICIA' +
              'L AS SALDOINICIAL,'#10#9#9#9'@CONSUMOS AS CONSUMOS, @TOTALCARGOS AS TOT' +
              'ALCARGOS, @TOTALABONOS AS TOTALABONOS, @SUBTOTAL AS SUBTOTAL,'#10#9#9 +
              #9'@SALDO AS SALDO, (Cliente.LIMITECREDITO - @SALDO) AS DISPONIBLE' +
              ', @XSALDOPARCIAL + @CONSUMOS + @CUPONES'#10#9#9'FROM         Cliente  ' +
              #9#9'WHERE  ClienteID = @CLIENTEINI'#10#10#9'SELECT @CLIENTEINI = @CLIENTE' +
              'INI + 1'#10'end'#10#9'END'#10'SELECT * FROM #SALDOCLIENTE'#10#10'drop table #SALDOC' +
              'LIENTE'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'CLIENTE'
                TableField = 'CLIENTE'
              end
              item
                DatasetField = 'NOMBRE'
                TableField = 'NOMBRE'
              end
              item
                DatasetField = 'RFC'
                TableField = 'RFC'
              end
              item
                DatasetField = 'CALLE'
                TableField = 'CALLE'
              end
              item
                DatasetField = 'FECHA'
                TableField = 'FECHA'
              end
              item
                DatasetField = 'REFERENCIA'
                TableField = 'REFERENCIA'
              end
              item
                DatasetField = 'DOCUMENTOID'
                TableField = 'DOCUMENTOID'
              end
              item
                DatasetField = 'CARGO'
                TableField = 'CARGO'
              end
              item
                DatasetField = 'ABONO'
                TableField = 'ABONO'
              end
              item
                DatasetField = 'LIMITECREDITO'
                TableField = 'LIMITECREDITO'
              end
              item
                DatasetField = 'SALDOINICIAL'
                TableField = 'SALDOINICIAL'
              end
              item
                DatasetField = 'CONSUMOS'
                TableField = 'CONSUMOS'
              end
              item
                DatasetField = 'TOTALCARGOS'
                TableField = 'TOTALCARGOS'
              end
              item
                DatasetField = 'TOTALABONOS'
                TableField = 'TOTALABONOS'
              end
              item
                DatasetField = 'SUBTOTAL'
                TableField = 'SUBTOTAL'
              end
              item
                DatasetField = 'SALDO'
                TableField = 'SALDO'
              end
              item
                DatasetField = 'DISPONIBLE'
                TableField = 'DISPONIBLE'
              end
              item
                DatasetField = 'SALDOPARCIAL'
                TableField = 'SALDOPARCIAL'
              end>
          end>
        Name = 'spSaldos'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT TOP 1 ISNULL(SECUENCIAVENTA,0) + 1 AS SECUENCIAVENTA FROM' +
              ' CONSUMO '#10'ORDER BY SECUENCIAVENTA DESC'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'SECUENCIAVENTA'
                TableField = 'SECUENCIAVENTA'
              end>
          end>
        Name = 'spObtenSecuenciaVentaActual'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'SECUENCIAVENTA'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'ClienteID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT'#10'    ClienteID, Nombre, RazonSocial, Domicilio,'#10'    Grupo,' +
              ' Colonia, CodigoPostal, Ciudad, Telefono, RFC,'#10'    CuentaContabl' +
              'e, PlazoPago, Estatus, FechaIngreso, NIP,'#10'    FechaBaja, LimiteC' +
              'redito, Deposito, CambioCredito,'#10'    CambioCreditoAnterior, Ulti' +
              'moPago, ClienteNuevo,'#10'    FormaPagoID, TarjetaID'#10'  FROM'#10'    dbo.' +
              'Cliente'#10'  WHERE'#10'    ClienteID = :ClienteID'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'RazonSocial'
                TableField = 'RazonSocial'
              end
              item
                DatasetField = 'Domicilio'
                TableField = 'Domicilio'
              end
              item
                DatasetField = 'Grupo'
                TableField = 'Grupo'
              end
              item
                DatasetField = 'Colonia'
                TableField = 'Colonia'
              end
              item
                DatasetField = 'CodigoPostal'
                TableField = 'CodigoPostal'
              end
              item
                DatasetField = 'Ciudad'
                TableField = 'Ciudad'
              end
              item
                DatasetField = 'Telefono'
                TableField = 'Telefono'
              end
              item
                DatasetField = 'RFC'
                TableField = 'RFC'
              end
              item
                DatasetField = 'CuentaContable'
                TableField = 'CuentaContable'
              end
              item
                DatasetField = 'PlazoPago'
                TableField = 'PlazoPago'
              end
              item
                DatasetField = 'Estatus'
                TableField = 'Estatus'
              end
              item
                DatasetField = 'FechaIngreso'
                TableField = 'FechaIngreso'
              end
              item
                DatasetField = 'NIP'
                TableField = 'NIP'
              end
              item
                DatasetField = 'FechaBaja'
                TableField = 'FechaBaja'
              end
              item
                DatasetField = 'LimiteCredito'
                TableField = 'LimiteCredito'
              end
              item
                DatasetField = 'Deposito'
                TableField = 'Deposito'
              end
              item
                DatasetField = 'CambioCredito'
                TableField = 'CambioCredito'
              end
              item
                DatasetField = 'CambioCreditoAnterior'
                TableField = 'CambioCreditoAnterior'
              end
              item
                DatasetField = 'UltimoPago'
                TableField = 'UltimoPago'
              end
              item
                DatasetField = 'ClienteNuevo'
                TableField = 'ClienteNuevo'
              end
              item
                DatasetField = 'FormaPagoID'
                TableField = 'FormaPagoID'
              end
              item
                DatasetField = 'TarjetaID'
                TableField = 'TarjetaID'
              end>
          end>
        Name = 'DatosCliente'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
            Name = 'RazonSocial'
            DataType = datString
            Size = 70
          end
          item
            Name = 'Domicilio'
            DataType = datString
            Size = 90
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
          end
          item
            Name = 'FechaIngreso'
            DataType = datDateTime
          end
          item
            Name = 'NIP'
            DataType = datString
            Size = 8
          end
          item
            Name = 'FechaBaja'
            DataType = datDateTime
          end
          item
            Name = 'LimiteCredito'
            DataType = datFloat
          end
          item
            Name = 'Deposito'
            DataType = datFloat
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
            Name = 'ClienteNuevo'
            DataType = datBoolean
          end
          item
            Name = 'FormaPagoID'
            DataType = datInteger
          end
          item
            Name = 'TarjetaID'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Cliente'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'ClienteID'
                TableField = 'ClienteID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'RazonSocial'
                TableField = 'RazonSocial'
              end
              item
                DatasetField = 'Domicilio'
                TableField = 'Domicilio'
              end
              item
                DatasetField = 'Grupo'
                TableField = 'Grupo'
              end
              item
                DatasetField = 'Colonia'
                TableField = 'Colonia'
              end
              item
                DatasetField = 'CodigoPostal'
                TableField = 'CodigoPostal'
              end
              item
                DatasetField = 'Ciudad'
                TableField = 'Ciudad'
              end
              item
                DatasetField = 'Telefono'
                TableField = 'Telefono'
              end
              item
                DatasetField = 'RFC'
                TableField = 'RFC'
              end
              item
                DatasetField = 'CuentaContable'
                TableField = 'CuentaContable'
              end
              item
                DatasetField = 'PlazoPago'
                TableField = 'PlazoPago'
              end
              item
                DatasetField = 'Estatus'
                TableField = 'Estatus'
              end
              item
                DatasetField = 'FechaIngreso'
                TableField = 'FechaIngreso'
              end
              item
                DatasetField = 'NIP'
                TableField = 'NIP'
              end
              item
                DatasetField = 'FechaBaja'
                TableField = 'FechaBaja'
              end
              item
                DatasetField = 'LimiteCredito'
                TableField = 'LimiteCredito'
              end
              item
                DatasetField = 'Deposito'
                TableField = 'Deposito'
              end
              item
                DatasetField = 'CambioCredito'
                TableField = 'CambioCredito'
              end
              item
                DatasetField = 'CambioCreditoAnterior'
                TableField = 'CambioCreditoAnterior'
              end
              item
                DatasetField = 'UltimoPago'
                TableField = 'UltimoPago'
              end
              item
                DatasetField = 'DiaCorteSemana'
                TableField = 'DiaCorteSemana'
              end
              item
                DatasetField = 'ClienteNuevo'
                TableField = 'ClienteNuevo'
              end
              item
                DatasetField = 'Tasa'
                TableField = 'Tasa'
              end
              item
                DatasetField = 'TarjetaID'
                TableField = 'TarjetaID'
              end
              item
                DatasetField = 'FormaPagoID'
                TableField = 'FormaPagoID'
              end
              item
                DatasetField = 'GrupoFacturarID'
                TableField = 'GrupoFacturarID'
              end
              item
                DatasetField = 'VendedorID'
                TableField = 'VendedorID'
              end
              item
                DatasetField = 'GasolineroID'
                TableField = 'GasolineroID'
              end
              item
                DatasetField = 'FormaCompraID'
                TableField = 'FormaCompraID'
              end
              item
                DatasetField = 'ClasificacionID'
                TableField = 'ClasificacionID'
              end
              item
                DatasetField = 'AfectarHistorico'
                TableField = 'AfectarHistorico'
              end
              item
                DatasetField = 'Localidad'
                TableField = 'Localidad'
              end
              item
                DatasetField = 'Estado'
                TableField = 'Estado'
              end
              item
                DatasetField = 'NoExterior'
                TableField = 'NoExterior'
              end
              item
                DatasetField = 'NoInterior'
                TableField = 'NoInterior'
              end
              item
                DatasetField = 'Actualizado'
                TableField = 'Actualizado'
              end
              item
                DatasetField = 'email'
                TableField = 'email'
              end
              item
                DatasetField = 'DiaRevisionID'
                TableField = 'DiaRevisionID'
              end
              item
                DatasetField = 'DiaPagoID'
                TableField = 'DiaPagoID'
              end
              item
                DatasetField = 'CuentaBancaria'
                TableField = 'CuentaBancaria'
              end
              item
                DatasetField = 'INE'
                TableField = 'INE'
              end
              item
                DatasetField = 'INETipoProceso'
                TableField = 'INETipoProceso'
              end
              item
                DatasetField = 'INETipoComite'
                TableField = 'INETipoComite'
              end
              item
                DatasetField = 'INEidContabilidad'
                TableField = 'INEidContabilidad'
              end
              item
                DatasetField = 'INEClaveEntidad'
                TableField = 'INEClaveEntidad'
              end
              item
                DatasetField = 'INEEntidadAmbito'
                TableField = 'INEEntidadAmbito'
              end
              item
                DatasetField = 'INEEntidadidContabilidad'
                TableField = 'INEEntidadidContabilidad'
              end
              item
                DatasetField = 'DescuentoPorcentaje'
                TableField = 'DescuentoPorcentaje'
              end
              item
                DatasetField = 'FacturaUsoID'
                TableField = 'FacturaUsoID'
              end
              item
                DatasetField = 'MetodoPagoID'
                TableField = 'MetodoPagoID'
              end
              item
                DatasetField = 'FacturaConsumoCupon'
                TableField = 'FacturaConsumoCupon'
              end
              item
                DatasetField = 'Municipio'
                TableField = 'Municipio'
              end
              item
                DatasetField = 'Pais'
                TableField = 'Pais'
              end>
          end>
        Name = 'dbo.Cliente'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
        InsertCommandName = 'dbo.Cliente_INSERT'
        DeleteCommandName = 'dbo.Cliente_DELETE'
        UpdateCommandName = 'dbo.Cliente_UPDATE'
      end
      item
        Params = <
          item
            Name = 'ClienteID'
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
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT LOTECUPONID, FECHA, STATUS, TOTAL FROM LOTECUPON'#10'WHERE CL' +
              'IENTEID = :ClienteID AND MONTH(FECHA) BETWEEN :PERIODOINI AND :P' +
              'ERIODOFIN'#10'AND YEAR(FECHA) = :EJERCICIO'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'LOTECUPONID'
                TableField = 'LOTECUPONID'
              end
              item
                DatasetField = 'FECHA'
                TableField = 'FECHA'
              end
              item
                DatasetField = 'STATUS'
                TableField = 'STATUS'
              end
              item
                DatasetField = 'TOTAL'
                TableField = 'TOTAL'
              end>
          end>
        Name = 'spObtenDatosLotesValesClientes'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
      end
      item
        Params = <
          item
            Name = 'LoteCuponID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT CUPONID, REFERENCIA, FECHAVALIDO, STATUS, BARRAS, '#39#39' AS C' +
              'LAVE,'#10'IMPORTE FROM CUPON WHERE LoteCuponID = :LoteCuponID'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'CUPONID'
                TableField = 'CUPONID'
              end
              item
                DatasetField = 'REFERENCIA'
                TableField = 'REFERENCIA'
              end
              item
                DatasetField = 'FECHAVALIDO'
                TableField = 'FECHAVALIDO'
              end
              item
                DatasetField = 'STATUS'
                TableField = 'STATUS'
              end
              item
                DatasetField = 'BARRAS'
                TableField = 'BARRAS'
              end
              item
                DatasetField = 'CLAVE'
                TableField = 'CLAVE'
              end
              item
                DatasetField = 'IMPORTE'
                TableField = 'IMPORTE'
              end>
          end>
        Name = 'spObtenValesCliente'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
      end
      item
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
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.SaldoDocumento'
            SQL = 
              'SELECT     SaldoDocumento.ReciboID, SaldoDocumento.MovimientoID,' +
              ' SaldoDocumento.Referencia, SaldoDocumento.FechaVencimiento, '#10'  ' +
              '         SaldoDocumento.Cargo AS TotalFactura, A.AbonoFactura, S' +
              'aldoDocumento.Fecha'#10'                            FROM          Sa' +
              'ldoDocumento INNER JOIN'#10'                                        ' +
              '               (SELECT  MovimientoID AS ID, Abono AS AbonoFactur' +
              'a'#10'                                                         FROM ' +
              '         SaldoDocumento AS SaldoDocumento_1'#10'                    ' +
              '                                     ) AS A ON SaldoDocumento.Mo' +
              'vimientoID = A.ID'#10'                            WHERE      SaldoDo' +
              'cumento.Abono = 0 and AbonoFactura > 0'#9#10'                        ' +
              '    AND SaldoDocumento.ClienteID = :CLIENTEID AND'#10#9#9#9#9#9#9#9'MONTH(F' +
              'ECHA) BETWEEN :PERIODOINI AND :PERIODOFIN AND YEAR(FECHA) = :EJE' +
              'RCICIO'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'ReciboID'
                TableField = 'ReciboID'
              end
              item
                DatasetField = 'MovimientoID'
                TableField = 'MovimientoID'
              end
              item
                DatasetField = 'Referencia'
                TableField = 'Referencia'
              end
              item
                DatasetField = 'FechaVencimiento'
                TableField = 'FechaVencimiento'
              end
              item
                DatasetField = 'TotalFactura'
                TableField = 'Abono'
                SQLOrigin = 'TotalFactura'
              end
              item
                DatasetField = 'AbonoFactura'
                TableField = 'Referencia'
                SQLOrigin = 'AbonoFactura'
              end
              item
                DatasetField = 'Fecha'
                TableField = 'Fecha'
              end>
          end>
        Name = 'spObtenDoctos'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
      end
      item
        Params = <
          item
            Name = 'MOVIMIENTOID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT RECIBOID FROM SaldoDocumento WHERE MOVIMIENTOID = :MOVIMI' +
              'ENTOID'#10'AND RECIBOID <> 0'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'RECIBOID'
                TableField = 'RECIBOID'
              end>
          end>
        Name = 'spObtenReciboID'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'RECIBOID'
            DataType = datInteger
          end>
      end
      item
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
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SELECT     SaldoDocumento.ReciboID, SaldoDocumento.MovimientoID,' +
              ' SaldoDocumento.Referencia, SaldoDocumento.FechaVencimiento, '#10'  ' +
              '         SaldoDocumento.Cargo AS TotalFactura, A.AbonoFactura, S' +
              'aldoDocumento.Fecha'#10'                            FROM          Sa' +
              'ldoDocumento INNER JOIN'#10'                                        ' +
              '               (SELECT  MovimientoID AS ID, Abono AS AbonoFactur' +
              'a'#10'                                                         FROM ' +
              '         SaldoDocumento AS SaldoDocumento_1'#10'                    ' +
              '                                     ) AS A ON SaldoDocumento.Mo' +
              'vimientoID = A.ID'#10'                            WHERE      SaldoDo' +
              'cumento.Abono = 0 and AbonoFactura = 0'#9#10'                        ' +
              '    AND SaldoDocumento.ClienteID = :CLIENTEID AND'#10#9#9#9#9#9#9#9'MONTH(F' +
              'ECHA) BETWEEN :PERIODOINI AND :PERIODOFIN AND YEAR(FECHA) = :EJE' +
              'RCICIO'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'ReciboID'
                TableField = 'ReciboID'
              end
              item
                DatasetField = 'MovimientoID'
                TableField = 'MovimientoID'
              end
              item
                DatasetField = 'Referencia'
                TableField = 'Referencia'
              end
              item
                DatasetField = 'FechaVencimiento'
                TableField = 'FechaVencimiento'
              end
              item
                DatasetField = 'TotalFactura'
                TableField = 'TotalFactura'
              end
              item
                DatasetField = 'AbonoFactura'
                TableField = 'AbonoFactura'
              end
              item
                DatasetField = 'Fecha'
                TableField = 'Fecha'
              end>
          end>
        Name = 'spObtenDoctosDebe'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
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
      end>
    JoinDataTables = <>
    UnionDataTables = <>
    Commands = <
      item
        Params = <
          item
            Name = 'UsuarioID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Acceso'
            SQL = 'DELETE'#10'FROM'#10'   Acceso'#10'WHERE'#10'   UsuarioID = :UsuarioID'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'AccesosEliminar'
      end
      item
        Params = <
          item
            Name = 'OpcionID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'UsuarioID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Acceso'
            SQL = 
              '  INSERT'#10'  INTO Acceso'#10'    (OpcionID, UsuarioID)'#10'  VALUES'#10'    (:' +
              'OpcionID, :UsuarioID)'#10
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'AccesosInsertar'
      end
      item
        Params = <
          item
            Name = 'OLD_ReporteID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Reporte'
            SQL = 
              'DELETE '#10'  FROM'#10'    dbo.Reporte'#10'  WHERE'#10'    (ReporteID = :OLD_Rep' +
              'orteID)'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'Delete_dbo Reporte'
      end
      item
        Params = <
          item
            Name = 'ReporteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Nombre'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Tipo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Parametros'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Template'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TemplateMedia'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TemplateBaja'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TemplateExportar'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'SQL1'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'SQL2'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CampoJoin'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Usuarios'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Reporte'
            SQL = 
              'INSERT'#10'  INTO dbo.Reporte'#10'    (ReporteID, Nombre, Tipo, Parametr' +
              'os, Template, TemplateMedia, '#10'     TemplateBaja, TemplateExporta' +
              'r, SQL1, SQL2, CampoJoin, Usuarios)'#10'  VALUES'#10'    (:ReporteID, :N' +
              'ombre, :Tipo, :Parametros, :Template, '#10'     :TemplateMedia, :Tem' +
              'plateBaja, :TemplateExportar, :SQL1, '#10'     :SQL2, :CampoJoin, :U' +
              'suarios)'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'Insert_dbo Reporte'
      end
      item
        Params = <
          item
            Name = 'ReporteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Nombre'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Tipo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Parametros'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Template'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TemplateMedia'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TemplateBaja'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TemplateExportar'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'SQL1'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'SQL2'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CampoJoin'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Usuarios'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'OLD_ReporteID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Reporte'
            SQL = 
              'UPDATE dbo.Reporte'#10'  SET '#10'    ReporteID = :ReporteID, '#10'    Nombr' +
              'e = :Nombre, '#10'    Tipo = :Tipo, '#10'    Parametros = :Parametros, '#10 +
              '    Template = :Template, '#10'    TemplateMedia = :TemplateMedia, '#10 +
              '    TemplateBaja = :TemplateBaja, '#10'    TemplateExportar = :Templ' +
              'ateExportar, '#10'    SQL1 = :SQL1, '#10'    SQL2 = :SQL2, '#10'    CampoJoi' +
              'n = :CampoJoin,'#10'    Usuarios = :Usuarios'#10'  WHERE'#10'    (ReporteID ' +
              '= :OLD_ReporteID)'#10
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'Update_dbo Reporte'
      end
      item
        Params = <
          item
            Name = 'IDPROGRAMAMANTENIMIENTO'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'IDESTACION'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FECHA'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'DECLARE @IDMANTENIMIENTOACTIVIDAD INT'#10'DECLARE @IDPROGRAMAMANTENI' +
              'MIENTO INT'#10'DECLARE @IDESTACION INT'#10'DECLARE @FECHA DATETIME'#10'DECLA' +
              'RE @PERIODICIDAD VARCHAR(30)'#10'DECLARE @CONT INT'#10#10'SET @IDPROGRAMAM' +
              'ANTENIMIENTO = :IDPROGRAMAMANTENIMIENTO'#10'SET @IDESTACION = :IDEST' +
              'ACION'#10'SET @FECHA = :FECHA'#10#10'SET @PERIODICIDAD = (SELECT PERIODICI' +
              'DAD FROM PROGRAMAMANTENIMIENTO WHERE IDPROGRAMAMANTENIMIENTO = @' +
              'IDPROGRAMAMANTENIMIENTO AND IDESTACION = @IDESTACION)'#10'/*SET @FEC' +
              'HA = (SELECT FECHAMANTENIMIENTO FROM PROGRAMAMANTENIMIENTO WHERE' +
              ' IDPROGRAMAMANTENIMIENTO = @IDPROGRAMAMANTENIMIENTO AND IDESTACI' +
              'ON = @IDESTACION)*/'#10'SET @IDMANTENIMIENTOACTIVIDAD = (SELECT ISNU' +
              'LL(MAX(IDMANTENIMIENTOACTIVIDAD),0)+1 FROM MANTENIMIENTOACTIVIDA' +
              'D)'#10#10'SET @CONT = (SELECT COUNT(*) AS RESULTADO FROM MANTENIMIENTO' +
              'ACTIVIDAD WHERE IDPROGRAMAMANTENIMIENTO = @IDPROGRAMAMANTENIMIEN' +
              'TO AND STATUS = '#39'PENDIENTE'#39')'#10#10'/*IF (@PERIODICIDAD = '#39'DIARIO'#39')'#10#9'S' +
              'ET @FECHA = DATEADD(day, 1, @FECHA)'#10#10'IF (@PERIODICIDAD = '#39'SEMANA' +
              'L'#39')'#10#9'SET @FECHA = DATEADD(day, 7, @FECHA)'#10#10'IF (@PERIODICIDAD = '#39 +
              'MENSUAL'#39')'#10#9'SET @FECHA = DATEADD(month, 1, @FECHA)'#10#10'IF (@PERIODIC' +
              'IDAD = '#39'TRIMESTRAL'#39')'#10#9'SET @FECHA = DATEADD(month, 3, @FECHA)'#10#10'IF' +
              ' (@PERIODICIDAD = '#39'CUATRIMESTRAL'#39')'#10#9'SET @FECHA = DATEADD(month, ' +
              '4, @FECHA)'#10#10'IF (@PERIODICIDAD = '#39'SEMESTRAL'#39')'#10#9'SET @FECHA = DATEA' +
              'DD(month, 6, @FECHA)'#10#10'IF (@PERIODICIDAD = '#39'ANUAL'#39')'#10#9'SET @FECHA =' +
              ' DATEADD(month, 12, @FECHA)*/'#10'IF @CONT = 0'#10'BEGIN'#10'INSERT INTO MAN' +
              'TENIMIENTOACTIVIDAD'#10'SELECT @IDMANTENIMIENTOACTIVIDAD, @IDPROGRAM' +
              'AMANTENIMIENTO, @FECHA, '#39'PENDIENTE'#39', '#39#39#10'END'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'cmdProgramaMantenimiento'
      end
      item
        Params = <
          item
            Name = 'FacturaID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Serie'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Folio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Fecha'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaVencimiento'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaImpresion'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Ejercicio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Periodo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Subtotal'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Impuesto'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Total'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Saldo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Tickets'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClienteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'UsuarioID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'MovimientoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'IVA'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              #10'insert into dbo.Factura'#10'   (FacturaID, Serie, Folio, Fecha, Fec' +
              'haVencimiento, FechaImpresion, Ejercicio, Periodo, Subtotal,'#10'   ' +
              ' Impuesto, Total, Saldo, Tickets, ClienteID, UsuarioID, Movimien' +
              'toID, IVA)'#10'    Values'#10'    (:FacturaID, :Serie, :Folio, :Fecha, :' +
              'FechaVencimiento, :FechaImpresion, :Ejercicio, :Periodo, :Subtot' +
              'al,'#10'    :Impuesto, :Total, :Saldo, :Tickets, :ClienteID, :Usuari' +
              'oID, :MovimientoID, :IVA)'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spInsertaFactura'
      end
      item
        Params = <
          item
            Name = 'DetalleFacturaID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FacturaID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Cantidad'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Precio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Importe'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ProductoID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @DetalleFacturaID as integer'#10'declare @FacturaID as integ' +
              'er'#10'declare @Cantidad as float'#10'declare @Precio as float'#10'declare @' +
              'Importe as float'#10'declare @ProductoID as integer'#10#10'select @Detalle' +
              'FacturaID = (select :DetalleFacturaID)'#10'select @FacturaID= (selec' +
              't :FacturaID)'#10'select @Cantidad = (Select :Cantidad)'#10'select @Prec' +
              'io = (select :Precio)'#10'select @Importe = (select :Importe)'#10'select' +
              ' @ProductoID = (select :ProductoID)'#10#10'insert into'#10'  dbo.DetalleFa' +
              'ctura'#10'  (DetalleFacturaID, FacturaID, Cantidad, Precio, Importe,' +
              ' ProductoID)'#10'  values'#10'  (@DetalleFacturaID, @FacturaID, @Cantida' +
              'd, @Precio, @Importe, @ProductoID)'#10
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spInsertaDetalleFactura'
      end
      item
        Params = <
          item
            Name = 'DetalleCuponID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Denominacion'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Cantidad'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Referencia'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FacturaID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @DetalleCuponID as integer'#10'declare @Denominacion as floa' +
              't'#10'declare @Cantidad as float'#10'declare @Referencia as varchar(50)'#10 +
              'declare @FacturaID as integer'#10#10'select @DetalleCuponID = (select ' +
              ':DetalleCuponID)'#10'select @Denominacion = (select :Denominacion)'#10's' +
              'elect @Cantidad = (select :Cantidad)'#10'select @Referencia = (selec' +
              't :Referencia)'#10'select @FacturaID = (select :FacturaID)'#10#10'insert i' +
              'nto dbo.DetalleCupon'#10'   (DetalleCuponID, Denominacion, Cantidad,' +
              ' Referencia, FacturaID)'#10'   values'#10'   (@DetalleCuponID, @Denomina' +
              'cion, @Cantidad, @Referencia, @FacturaID)'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spInsertaDetalleCupon'
      end
      item
        Params = <
          item
            Name = 'CuponID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Importe'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Status'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaEmision'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Ejercicio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Periodo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Dia'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Barras'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Secuencia'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClienteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FacturaID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'DetalleCuponID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'EstacionID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'insert into'#10'       dbo.Cupon'#10'  (CuponID, Importe, Status, FechaE' +
              'mision, EjercicioEmision, PeriodoEmision, DiaEmision, Barras, Se' +
              'cuencia,'#10'   ClienteID, FacturaID, DetalleCuponID, EstacionID)'#10'  ' +
              ' values'#10'  (:CuponID, :Importe, :Status, :FechaEmision, :Ejercici' +
              'o, :Periodo, :Dia,'#10'   :Barras, :Secuencia, :ClienteID, :FacturaI' +
              'D, :DetalleCuponID, :EstacionID)'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spInsertaCupon'
      end
      item
        Params = <
          item
            Name = 'CuponID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Importe'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaValido'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'VolumenImporte'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Status'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Barras'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClienteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'EstacionID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'LoteCuponID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Referencia'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TipoCupon'
            Value = ''
            ParamType = daptInput
          end
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
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'INSERT'#10'  INTO dbo.Cupon'#10'    (CuponID, Importe, FechaValido, Volu' +
              'menImporte,'#10'     Status, Barras, ClienteID, EstacionID, LoteCupo' +
              'nID, '#10'     Referencia, TipoCupon, Serie, Folio)'#10'  VALUES'#10'    (:C' +
              'uponID, :Importe, :FechaValido, :VolumenImporte,'#10'     :Status, :' +
              'Barras, :ClienteID, :EstacionID, :LoteCuponID, '#10'     :Referencia' +
              ', :TipoCupon, :Serie, :Folio)'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'Insert_dbo Cupon'
      end
      item
        Params = <
          item
            Name = 'Codigo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Fecha'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'UsuarioID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @Codigo as varchar(20)'#10'declare @CuponID as int'#10#10'select @' +
              'Codigo = (Select :Codigo)'#10#10'select @CuponID = ISNULL((SELECT Cupo' +
              'nID FROM Cupon WHERE  (Barras = @Codigo) or (CAST(CuponID as var' +
              'char(10)) = @Codigo)), 0)'#10#10'update'#10'  cupon'#10'set'#10'  status = '#39'X'#39','#10'  ' +
              'FechaCancelo = :Fecha,'#10'  UsuarioCanceloID = :UsuarioID'#10'where'#10'  c' +
              'uponid = @CuponID'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'UPDCancelaCupon'
        DynamicWhereXML = 
          'declare @Codigo as varchar(20)'#10'declare @CuponID as int'#10#10'select @' +
          'Codigo = (Select :Codigo)'#10#10'select @CuponID = ISNULL((SELECT Cupo' +
          'nID FROM Cupon WHERE  (Barras = @Codigo) or (CAST(CuponID as var' +
          'char(10)) = @Codigo)), 0)'#10#10'update'#10'  cupon'#10'set'#10'  status = '#39'X'#39','#10'  ' +
          'FechaCancelo = :Fecha,'#10'  UsuarioCanceloID = :UsuarioID'#10'where'#10'  c' +
          'uponid = @CuponID'
      end
      item
        Params = <
          item
            Name = 'AutorizacionID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Fecha'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Importe'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Cantidad'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ImporteCantidad'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'PosicionCarga'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Referencia'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'EstacionID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'VehiculoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClienteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'GasolineroID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Tipo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Odometro'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'INSERT'#10'  INTO dbo.Autorizacion'#10'    (AutorizacionID, Fecha, Impor' +
              'te, Cantidad, ImporteCantidad, '#10'     PosicionCarga, Referencia, ' +
              'EstacionID, VehiculoID, '#10'     ClienteID, GasolineroID, Tipo, Odo' +
              'metro)'#10'  VALUES'#10'    (:AutorizacionID, :Fecha, :Importe, :Cantida' +
              'd, :ImporteCantidad, '#10'     :PosicionCarga, :Referencia, :Estacio' +
              'nID, :VehiculoID, '#10'     :ClienteID, :GasolineroID, :Tipo, :Odome' +
              'tro)'#10
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spInsertarAutorizacion'
      end
      item
        Params = <
          item
            Name = 'Grupo'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 'delete from Autorizacion'#10'where Tipo = 2 AND ClienteID = :Grupo'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spCancelaGrupo'
      end
      item
        Params = <
          item
            Name = 'FechaCarga'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'EstacionID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Secuencia'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TurnoID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'BombaID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Importe'
            DataType = datFloat
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Barras'
            DataType = datString
            Size = 65536
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'update'#10'  cupon'#10'set'#10'  Status = '#39'C'#39','#10'  FechaConsumo = :FechaCarga,' +
              #10'  ConsumoEstacionID = :EstacionID,'#10'  ConsumoSecuencia = :Secuen' +
              'cia,'#10'  ConsumoTurnoID = :TurnoID,'#10'  ConsumoBombaID = :BombaID,'#10' ' +
              ' ConsumoImporte = :Importe'#10'from'#10'  cupon, Autorizacion'#10'where'#10'  cu' +
              'pon.cuponid = autorizacion.vehiculoid and autorizacion.Tipo = 2 ' +
              'and autorizacion.ClienteID = :Barras'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spModificaCupon'
      end
      item
        Params = <
          item
            Name = 'SecuenciaVenta'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Serie'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'EstacionID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaMovimiento'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaCarga'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Ejercicio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Periodo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Dia'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Turno'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Kilometraje'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Tarjeta'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'PosicionCarga'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Cantidad'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Precio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Importe'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ImpuestoImporte'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ImpuestoPorcentaje'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CuentaContable'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ManualAutomatico'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Facturado'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'EnIngresos'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Auditado'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FacturaID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ProductoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'GasolineroID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClienteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'VehiculoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'IEPS'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Rendimiento'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'UsuarioID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'insert into'#10'       dbo.Consumo'#10'  (SecuenciaVenta, Serie, Estacio' +
              'nID, FechaMovimiento, FechaCarga, Ejercicio,Periodo, Dia, Turno,' +
              ' Kilometraje,'#10'   Tarjeta, PosicionCarga, Cantidad, Precio, Impor' +
              'te, ImpuestoImporte, ImpuestoPorcentaje, CuentaContable,'#10'   Manu' +
              'alAutomatico, Facturado, EnIngresos, Auditado, FacturaID, Produc' +
              'toID, GasolineroID, ClienteID, VehiculoID,'#10'   IEPS, Rendimiento,' +
              ' UsuarioID)'#10'   values'#10'  (:SecuenciaVenta, :Serie, :EstacionID, :' +
              'FechaMovimiento, :FechaCarga, :Ejercicio, :Periodo, :Dia, :Turno' +
              ', :Kilometraje,'#10'   :Tarjeta, :PosicionCarga, :Cantidad, :Precio,' +
              ' :Importe, :ImpuestoImporte, :ImpuestoPorcentaje, :CuentaContabl' +
              'e,'#10'   :ManualAutomatico, :Facturado, :EnIngresos, :Auditado, :Fa' +
              'cturaID, :ProductoID, :GasolineroID, :ClienteID, :VehiculoID,'#10'  ' +
              ' :IEPS, :Rendimiento, :UsuarioID)'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spInsertaConsumo'
      end
      item
        Params = <
          item
            Name = 'Cantidad'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Importe'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClienteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'VehiculoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'GasolineroID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Fecha'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'SET DATEFIRST 1'#10#10'declare @Cantidad as float'#10'declare @Importe as ' +
              'float'#10'declare @Fecha datetime'#10'declare @Dia Integer'#10'declare @DiaF' +
              'echa integer'#10'declare @DiaGetDate Integer'#10'declare @ClienteID Inte' +
              'ger'#10'declare @VehiculoID Integer'#10'declare @GasolineroID Integer'#10#10'S' +
              'elect @Cantidad = (Select :Cantidad)'#10'Select @Importe = (Select :' +
              'Importe)'#10'select @ClienteID = (Select :ClienteID)'#10'select @Vehicul' +
              'oID = (Select :VehiculoID)'#10'select @GasolineroID = (Select :Gasol' +
              'ineroID)'#10'select @Fecha = (select :Fecha)'#10#10'if (month(getdate()) =' +
              ' month(@fecha) and year(getdate()) = year(@fecha))'#10'begin'#10'update ' +
              'dbo.Vehiculo set'#10'       ActualLTMes = ActualLTMes + @Cantidad,'#10' ' +
              '      ActualMNMes = ActualMNMes + @Importe'#10'WHERE (ClienteID = @C' +
              'lienteID)and(VehiculoID = @VehiculoID)and'#10'      (GasolineroID = ' +
              '@GasolineroID)'#10'end'#10#10'if (month(getdate()) = month(@fecha) and yea' +
              'r(getdate()) = year(@fecha) and day(getdate()) = day(@fecha))'#10'be' +
              'gin'#10'update dbo.Vehiculo set'#10'       ActualLTDia   = ActualLTDia +' +
              ' @Cantidad,'#10'       ActualMNDia = ActualMNDia + @Importe,'#10'       ' +
              'ActualCargas = ActualCargas + 1,'#10'       Mensaje = '#39#39#10'WHERE (Clie' +
              'nteID = @ClienteID)and(VehiculoID = @VehiculoID)and'#10'      (Gasol' +
              'ineroID = @GasolineroID)'#10'end'#10#10'select @DiaFecha = (select cast(ca' +
              'st(convert(varchar, @fecha, 101) as datetime) as int))'#10'select @D' +
              'ia = DATEPART(dw, cast(convert(varchar, getdate(), 101) as datet' +
              'ime))'#10'select @DiaGetDate = (select cast(cast(convert(varchar, ge' +
              'tdate(), 101) as datetime) as int)-@Dia+1)'#10#10'if (@DiaFecha >= @Di' +
              'aGetDate and @DiaFecha <= (@DiaGetDate + 6))'#10'begin'#10'update dbo.Ve' +
              'hiculo set'#10'       ActualLTSemana= ActualLTSemana + @Cantidad,'#10'  ' +
              '     ActualMNSemana = ActualMNSemana + @Importe'#10'WHERE (ClienteID' +
              ' = @ClienteID)and(VehiculoID = @VehiculoID) and'#10'      (Gasoliner' +
              'oID = @GasolineroID)'#10'end'#10#10'update dbo.Vehiculo set'#10'       ActualL' +
              'TTurno = ActualLTTurno + @Cantidad,'#10'       ActualMNTurno = Actua' +
              'lMNTurno + @Importe'#10'WHERE (ClienteID = @ClienteID)and(VehiculoID' +
              ' = @VehiculoID)and'#10'      (GasolineroID = @GasolineroID)'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spActualizaHistorial'
      end
      item
        Params = <
          item
            Name = 'ClienteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'VehiculoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'GasolineroID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'Delete from'#10'       dbo.Autorizacion'#10'Where'#10'     (dbo.Autorizacion' +
              '.ClienteID = :ClienteID) and'#10'     (dbo.Autorizacion.VehiculoID =' +
              ' :VehiculoID) and'#10'     (dbo.Autorizacion.GasolineroID = :Gasolin' +
              'eroID)'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spAutorizacionEliminarTarjeta'
      end
      item
        Params = <
          item
            Name = 'Barras'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @Barras as Varchar(300)'#10'Select @Barras= (Select :Barras)' +
              #10#10'Delete from dbo.Autorizacion'#10'Where(dbo.Autorizacion.Referencia' +
              ' = @Barras)'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spEliminaAutorizacion'
      end
      item
        Params = <
          item
            Name = 'Dispensario'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Manguera'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ProductoPemex'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ArchivoID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'INSERT INTO V2ArchivoDIS'#10'(Dispensario, Manguera, ProductoPemex, ' +
              'ArchivoID)'#10'VALUES'#10'(:Dispensario, :Manguera, :ProductoPemex, :Arc' +
              'hivoID)'#10
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'INSV2ArchivoADI'
      end
      item
        Params = <
          item
            Name = 'BitacoraID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Descripcion'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'BitacoraTipoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'EstacionID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Alerta'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Fecha'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'INSERT'#10'  INTO Bitacora'#10'    (BitacoraID, Descripcion, BitacoraTip' +
              'oID, EstacionID,'#10'     Alerta, Fecha)'#10'  VALUES'#10'    (:BitacoraID, ' +
              ':Descripcion, :BitacoraTipoID, :EstacionID,'#10'     :Alerta, :Fecha' +
              ')'#10
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'INSBitacora'
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'UPDATE'#10'  Producto'#10'SET'#10'  Precio = PrecioProgramado,'#10'  IEPS = IEPS' +
              'Programado'#10'WHERE'#10'  Combustible = 1'#10#10'UPDATE'#10'  CambioPrecio'#10'SET'#10'  ' +
              'Activo = 0'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'AutoCambioPrecio'
      end
      item
        Params = <
          item
            Name = 'FechaFinal'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Volumen'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Precio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Importe'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'LecturaFinalImporte'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'LecturaFinalVolumen'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TurnoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'BombaID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'MangueraID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'UPDATE dbo.Turno'#10'  SET '#10'    FechaFinal = :FechaFinal,'#10'    Volume' +
              'n = :Volumen, '#10'    Precio = :Precio, '#10'    Importe = :Importe, '#10' ' +
              '   LecturaFinalImporte = :LecturaFinalImporte, '#10'    LecturaFinal' +
              'Volumen = :LecturaFinalVolumen, '#10'    Status = 1'#10'  WHERE'#10'    (Tur' +
              'noID = :TurnoID) AND'#10'    (BombaID = :BombaID) AND'#10'    (MangueraI' +
              'D = :MangueraID)'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'CierraTurno'
      end
      item
        Params = <
          item
            Name = 'TurnoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'BombaID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'MangueraID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaInicio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'LecturaInicialImporte'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'LecturaInicialVolumen'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ProductoID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'INSERT'#10'  INTO dbo.Turno'#10'    (TurnoID, BombaID, MangueraID, Fecha' +
              'Inicio,'#10'     Volumen, Precio, Importe, LecturaInicialImporte, Le' +
              'cturaFinalImporte, '#10'     LecturaInicialVolumen, LecturaFinalVolu' +
              'men, Status, '#10'     ProductoID)'#10'  VALUES'#10'    (:TurnoID, :BombaID,' +
              ' :MangueraID, :FechaInicio,'#10'     0, 0, 0, :LecturaInicialImporte' +
              ','#10'     0, :LecturaInicialVolumen, 0,'#10'     0, :ProductoID)'#10
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'CreaTurno'
      end
      item
        Params = <
          item
            Name = 'Secuencia'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Dispensario'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Manguera'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ProductoPemex'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Volumen'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Precio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Importe'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Fecha'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'INSERT'#10'  INTO ArchivoVTA'#10'    (Secuencia, Dispensario, Manguera, ' +
              'ProductoPemex, Volumen, '#10'     Precio, Importe, Fecha)'#10'  VALUES'#10' ' +
              '   (:Secuencia, :Dispensario, :Manguera, :ProductoPemex, '#10'     :' +
              'Volumen, :Precio, :Importe, :Fecha)'#10
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'Insert_dbo.ArchivoVTA'
      end
      item
        Params = <
          item
            Name = 'TramaID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaCarga'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaContable'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Ejercicio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Periodo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Dia'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Odometro'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Referencia'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Precio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Volumen'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Importe'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Impreso'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Tipo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TipoTrama'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Estado'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'MangueraID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'EstacionID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'BombaID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ProductoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TurnoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'IEPS'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Host'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              #10'INSERT'#10'  INTO Trama'#10'    (TramaID, FechaCarga, FechaContable, Ej' +
              'ercicio, Periodo, '#10'     Dia, Odometro, Referencia, Precio, Volum' +
              'en, Importe, '#10'     Impreso, Tipo, TipoTrama, Estado, MangueraID,' +
              ' EstacionID, BombaID,'#10'     ProductoID, TurnoID, IEPS, Host)'#10'  VA' +
              'LUES'#10'    (:TramaID, :FechaCarga, :FechaContable, :Ejercicio, '#10'  ' +
              '   :Periodo, :Dia, :Odometro, :Referencia, :Precio, :Volumen, '#10' ' +
              '    :Importe, :Impreso, :Tipo, :TipoTrama, :Estado, :MangueraID,' +
              ' :EstacionID,'#10'     :BombaID, :ProductoID, :TurnoID, :IEPS, :Host' +
              ')'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'Insert_dbo.Trama'
      end
      item
        Params = <
          item
            Name = 'Secuencia'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TipoRegistro'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Dispensario'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Manguera'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ProductoPemex'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Volumen'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Precio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Importe'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Fecha'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'INSERT'#10'  INTO dbo.V2ArchivoVTA'#10'    (Secuencia, TipoRegistro, Dis' +
              'pensario, Manguera, ProductoPemex,'#10'     Volumen, Precio, Importe' +
              ', Fecha)'#10'  VALUES'#10'    (:Secuencia, :TipoRegistro, :Dispensario, ' +
              ':Manguera,'#10'     :ProductoPemex, :Volumen, :Precio, :Importe, :Fe' +
              'cha)'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'INSV2ArchivoVTA'
      end
      item
        Params = <
          item
            Name = 'Secuencia'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              #10'Update Trama'#10'Set Impreso = Impreso + 1'#10'where TramaID = :Secuenc' +
              'ia'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'IncrementaImpreso'
      end
      item
        Params = <
          item
            Name = 'ClientID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaCorte'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FacturaID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'IVA'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @ClientID   as integer'#10'declare @FacturaID  as integer'#10'de' +
              'clare @FechaCorte as DateTime'#10'declare @IVA as float'#10'declare @Fac' +
              'turaConsumo as bit'#10#10'select @ClientID = (select :ClientID)'#10'select' +
              ' @FechaCorte = (select :FechaCorte)'#10'select @FacturaID = (select ' +
              ':FacturaID)'#10'select @IVA = (select :IVA)'#10#10#10'Select @FacturaConsumo' +
              ' = (SELECT FacturaConsumoCupon from'#10'                          db' +
              'o.Cliente  where (ClienteID = @ClientID))'#10#10'if @FacturaConsumo = ' +
              '1'#10#10'BEGIN'#10#10'UPDATE    Consumo'#10'SET              Facturado = 1, Fact' +
              'uraID = @FacturaID'#10'FROM         Consumo INNER JOIN'#10'             ' +
              '         Estacion ON Consumo.EstacionID = Estacion.IDESTACION'#10'WH' +
              'ERE     ((SUBSTRING(Consumo.TARJETA,1,4)<>'#39'0005'#39')AND(LEN(Consumo' +
              '.TARJETA)>=10)AND(Consumo.TARJETA <> '#39'GRUPO CUPONES'#39'))'#10'AND (Cons' +
              'umo.ClienteID = @ClientID) AND (Consumo.FechaMovimiento <= @Fech' +
              'aCorte) AND (Consumo.Facturado = 0) AND (Estacion.IVA = @IVA)'#10#10#10 +
              'END'#10#10'ELSE'#10'BEGIN'#10#10'UPDATE    Consumo'#10'SET              Facturado = ' +
              '1, FacturaID = @FacturaID'#10'FROM         Consumo INNER JOIN'#10'      ' +
              '                Estacion ON Consumo.EstacionID = Estacion.IDESTA' +
              'CION'#10'WHERE     (Consumo.ClienteID = @ClientID) AND (Consumo.Fech' +
              'aMovimiento <= @FechaCorte) AND (Consumo.Facturado = 0)'#10#10'END'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spActualizaConsumoGenFact'
      end
      item
        Params = <
          item
            Name = 'ClientID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaCorte'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FacturaID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Productos'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @ClientID   as integer'#10'declare @FacturaID  as integer'#10'de' +
              'clare @FechaCorte as DateTime'#10'declare @Productos as Varchar(100)' +
              #10'DECLARE @FacturaConsumo as bit'#10#10'select @ClientID = (select :Cli' +
              'entID)'#10'select @FechaCorte = (select :FechaCorte)'#10'select @Factura' +
              'ID = (select :FacturaID)'#10'select @Productos = (select :Productos)' +
              #10#10'Select @FacturaConsumo = (SELECT FacturaConsumoCupon from'#10'    ' +
              '                      dbo.Cliente  where (ClienteID = @ClientID)' +
              ')'#10'                          '#10'IF @FacturaConsumo = 1'#10'BEGIN'#10#10'Updat' +
              'e dbo.Consumo'#10'set    Facturado = 1,'#10'       FacturaID = @FacturaI' +
              'D'#10'where (ClienteID = @ClientID)AND'#10'      ((SUBSTRING(Consumo.TAR' +
              'JETA,1,4)<>'#39'0005'#39')AND(LEN(Consumo.TARJETA)>=10)AND(Consumo.TARJE' +
              'TA <> '#39'GRUPO CUPONES'#39'))'#10'      AND'#10'      (@FechaCorte >= FechaMov' +
              'imiento) and'#10'      (Facturado = 0) and'#10'      @Productos Like '#39'%@' +
              #39'+ Cast(ProductoID as Varchar(50)) + '#39'@%'#39#10#10'END'#10#10'ELSE'#10'BEGIN'#10#10'Upda' +
              'te dbo.Consumo'#10'set    Facturado = 1,'#10'       FacturaID = @Factura' +
              'ID'#10'where (ClienteID = @ClientID)and'#10'      (@FechaCorte >= FechaM' +
              'ovimiento) and'#10'      (Facturado = 0) and'#10'      @Productos Like '#39 +
              '%@'#39'+ Cast(ProductoID as Varchar(50)) + '#39'@%'#39#10#10'END'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spActualizaConsumoGenFact2'
      end
      item
        Params = <
          item
            Name = 'MovimientoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaMovimiento'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaVencimiento'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Referencia'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Ejercicio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Periodo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CargoAbono'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Cargo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Abono'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaRegistro'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Origen'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'AfectaSaldos'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TipoMovimientoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'UsuarioID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClienteID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @MovimientoID as integer'#10'declare @FechaMovimiento as Dat' +
              'eTime'#10'declare @FechaVencimiento as DateTime'#10'declare @Referencia ' +
              'as varchar(50)'#10'declare @Ejercicio as integer'#10'declare @Periodo as' +
              ' integer'#10'declare @CargoAbono as varchar(1)'#10'declare @Cargo as flo' +
              'at'#10'declare @Abono as float'#10'declare @FechaRegistro as DateTime'#10'de' +
              'clare @Origen as varchar(5)'#10'declare @AfectaSaldos as bit'#10'declare' +
              ' @TipoMovimientoID as varchar(10)'#10'declare @UsuarioID as integer'#10 +
              'declare @ClienteID as integer'#10#10'select @MovimientoID = (select :M' +
              'ovimientoID)'#10'select @FechaMovimiento = (select :FechaMovimiento)' +
              #10'select @FechaVencimiento = (select :FechaVencimiento)'#10'select @R' +
              'eferencia = (select :Referencia)'#10'select @Ejercicio = (select :Ej' +
              'ercicio)'#10'select @Periodo = (select :Periodo)'#10'select @CargoAbono ' +
              '= (select :CargoAbono)'#10'select @Cargo = (select :Cargo)'#10'select @A' +
              'bono = (select :Abono)'#10'select @FechaRegistro = (select :FechaReg' +
              'istro)'#10'select @Origen = (select :Origen)'#10'select @AfectaSaldos = ' +
              '(select :AfectaSaldos)'#10'select @TipoMovimientoID = (select :TipoM' +
              'ovimientoID)'#10'select @UsuarioID = (select :UsuarioID)'#10'select @Cli' +
              'enteID = (select :ClienteID)'#10#10'insert into dbo.Movimiento'#10'       ' +
              '     (MovimientoID, FechaMovimiento, FechaVencimiento, Referenci' +
              'a,'#10'             Ejercicio, Periodo, CargoAbono, Cargo, Abono, Fe' +
              'chaRegistro,'#10'             Origen, AfectaSaldos, TipoMovimientoID' +
              ', UsuarioID, ClienteID)'#10'values'#10'            (@MovimientoID, @Fech' +
              'aMovimiento, @FechaVencimiento, @Referencia,'#10'             @Ejerc' +
              'icio, @Periodo, @CargoAbono, @Cargo, @Abono, @FechaRegistro,'#10'   ' +
              '          @Origen, @AfectaSaldos, @TipoMovimientoID, @UsuarioID,' +
              ' @ClienteID)'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spInsertarMovimiento'
      end
      item
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
          end
          item
            Name = 'FechaImpresion'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'NuevaSerie'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'NuevoFolio'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @Serie as varchar(10)'#10'declare @Folio as integer'#10'declare ' +
              '@FechaImpresion as DateTime'#10'declare @NuevaSerie as varchar(10)'#10'd' +
              'eclare @NuevoFolio as integer'#10#10'select @Serie = (select :Serie)'#10's' +
              'elect @Folio = (select :Folio)'#10'select @FechaImpresion = (select ' +
              ':FechaImpresion)'#10'select @NuevaSerie = (select :NuevaSerie)'#10'selec' +
              't @NuevoFolio = (select :NuevoFolio)'#10#10'update dbo.Factura'#10'set   S' +
              'erie = @NuevaSerie,'#10'      Folio = @NuevoFolio,'#10'      FechaImpres' +
              'ion = @FechaImpresion'#10'Where (Serie = @Serie)and(Folio = @Folio)'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spCambioNumeroFactura'
      end
      item
        Params = <
          item
            Name = 'SaldoDocumentoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Fecha'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaVencimiento'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Cargo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Abono'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Referencia'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClienteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'MovimientoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ReciboID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'BancoID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'insert into dbo.SaldoDocumento'#10'            (SaldoDocumentoID, Fe' +
              'cha, FechaVencimiento, Cargo,'#10'             Abono, Referencia, Cl' +
              'ienteID, MovimientoID, ReciboID, BancoID)'#10'values'#10'            (:S' +
              'aldoDocumentoID, :Fecha, :FechaVencimiento, :Cargo,'#10'            ' +
              ' :Abono, :Referencia, :ClienteID, :MovimientoID, :ReciboID, :Ban' +
              'coID)'#10
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spInsertaSaldoDocumentos'
      end
      item
        Params = <
          item
            Name = 'FacturaID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Serie'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Folio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Fecha'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaVencimiento'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaImpresion'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Ejercicio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Periodo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Subtotal'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Impuesto'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Total'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Saldo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Tickets'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClienteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'UsuarioID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'MovimientoID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'IVA'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'EstacionID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'insert into dbo.Factura'#10'   (FacturaID, Serie, Folio, Fecha, Fech' +
              'aVencimiento, FechaImpresion, Ejercicio, Periodo, Subtotal,'#10'    ' +
              'Impuesto, Total, Saldo, Tickets, ClienteID, UsuarioID, Movimient' +
              'oID, IVA, EstacionID)'#10'    Values'#10'    (:FacturaID, :Serie, :Folio' +
              ', :Fecha, :FechaVencimiento, :FechaImpresion, :Ejercicio, :Perio' +
              'do, :Subtotal,'#10'    :Impuesto, :Total, :Saldo, :Tickets, :Cliente' +
              'ID, :UsuarioID, :MovimientoID, :IVA, :EstacionID)'#10
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spInsertarFactura'
      end
      item
        Params = <
          item
            Name = 'DetalleFacturaID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FacturaID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Cantidad'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Precio'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Importe'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ProductoID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'declare @DetalleFacturaID as integer'#10'declare @FacturaID as integ' +
              'er'#10'declare @Cantidad as float'#10'declare @Precio as float'#10'declare @' +
              'Importe as float'#10'declare @ProductoID as integer'#10#10'select @Detalle' +
              'FacturaID = (select :DetalleFacturaID)'#10'select @FacturaID= (selec' +
              't :FacturaID)'#10'select @Cantidad = (Select :Cantidad)'#10'select @Prec' +
              'io = (select :Precio)'#10'select @Importe = (select :Importe)'#10'select' +
              ' @ProductoID = (select :ProductoID)'#10#10'insert into'#10'  dbo.DetalleFa' +
              'ctura'#10'  (DetalleFacturaID, FacturaID, Cantidad, Precio, Importe,' +
              ' ProductoID)'#10'  values'#10'  (@DetalleFacturaID, @FacturaID, @Cantida' +
              'd, @Precio, @Importe, @ProductoID)'#10
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spInsertarDetalleFactura'
      end
      item
        Params = <
          item
            Name = 'ClienteID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 70
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'RazonSocial'
            DataType = datString
            Size = 100
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Domicilio'
            DataType = datString
            Size = 90
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Grupo'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Colonia'
            DataType = datString
            Size = 40
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CodigoPostal'
            DataType = datString
            Size = 10
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Ciudad'
            DataType = datString
            Size = 30
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Telefono'
            DataType = datString
            Size = 20
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'RFC'
            DataType = datString
            Size = 20
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CuentaContable'
            DataType = datString
            Size = 20
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'PlazoPago'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Estatus'
            DataType = datString
            Size = 1
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaIngreso'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'NIP'
            DataType = datString
            Size = 8
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaBaja'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'LimiteCredito'
            DataType = datFloat
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Deposito'
            DataType = datFloat
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CambioCredito'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CambioCreditoAnterior'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'UltimoPago'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'DiaCorteSemana'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClienteNuevo'
            DataType = datBoolean
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Tasa'
            DataType = datFloat
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TarjetaID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FormaPagoID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'GrupoFacturarID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'VendedorID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'GasolineroID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FormaCompraID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClasificacionID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FacturaConsumoCupon'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'NoExterior'
            DataType = datString
            Size = 10
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Localidad'
            DataType = datString
            Size = 30
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Municipio'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Estado'
            DataType = datString
            Size = 30
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Pais'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'email'
            DataType = datMemo
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Cupon'
            SQL = 
              'INSERT INTO '#10#9'"dbo"."Cupon" ('#10#9'"ClienteID", "Referencia", "Impor' +
              'te", '#10#9'"FechaConsumo", "FechaValido", "VolumenImporte", '#10#9'"Statu' +
              's", "Barras", "ClienteID", '#10#9'"EstacionID", "LoteCuponID", "Consu' +
              'moEstacionID", '#10#9'"ConsumoSecuencia", "ConsumoBombaID", "ConsumoT' +
              'urnoID", '#10#9'"ConsumoImporte", "UsuarioCanceloID", "FechaCancelo",' +
              ' '#10#9'"Facturado", "DigitoSeguridad", "Cargando", '#10#9'"", "", "", '#10#9'"' +
              '", "", "", '#10#9'"", "", "", '#10#9'"", "", "", '#10#9'"", "", "", '#10#9'"", "") '#10 +
              'VALUES ('#10#9':ClienteID, :Nombre, :RazonSocial, '#10#9':Domicilio, :Grup' +
              'o, :Colonia, '#10#9':CodigoPostal, :Ciudad, :Telefono, '#10#9':RFC, :Cuent' +
              'aContable, :PlazoPago, '#10#9':Estatus, :FechaIngreso, :NIP, '#10#9':Fecha' +
              'Baja, :LimiteCredito, :Deposito, '#10#9':CambioCredito, :CambioCredit' +
              'oAnterior, :UltimoPago, '#10#9':DiaCorteSemana, :ClienteNuevo, :Tasa,' +
              ' '#10#9':TarjetaID, :FormaPagoID, :GrupoFacturarID, '#10#9':VendedorID, :G' +
              'asolineroID, :FormaCompraID, '#10#9':ClasificacionID, :FacturaConsumo' +
              'Cupon, :NoExterior, '#10#9':Localidad, :Municipio, :Estado, '#10#9':Pais, ' +
              ':email) '
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'dbo Cliente_INSERT'
      end
      item
        Params = <
          item
            Name = 'ClienteID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 70
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'RazonSocial'
            DataType = datString
            Size = 100
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Domicilio'
            DataType = datString
            Size = 90
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Grupo'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Colonia'
            DataType = datString
            Size = 40
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CodigoPostal'
            DataType = datString
            Size = 10
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Ciudad'
            DataType = datString
            Size = 30
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Telefono'
            DataType = datString
            Size = 20
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'RFC'
            DataType = datString
            Size = 20
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CuentaContable'
            DataType = datString
            Size = 20
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'PlazoPago'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Estatus'
            DataType = datString
            Size = 1
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaIngreso'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'NIP'
            DataType = datString
            Size = 8
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaBaja'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'LimiteCredito'
            DataType = datFloat
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Deposito'
            DataType = datFloat
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CambioCredito'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CambioCreditoAnterior'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'UltimoPago'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'DiaCorteSemana'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClienteNuevo'
            DataType = datBoolean
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Tasa'
            DataType = datFloat
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TarjetaID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FormaPagoID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'GrupoFacturarID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'VendedorID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'GasolineroID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FormaCompraID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClasificacionID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FacturaConsumoCupon'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'NoExterior'
            DataType = datString
            Size = 10
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Localidad'
            DataType = datString
            Size = 30
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Municipio'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Estado'
            DataType = datString
            Size = 30
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Pais'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'email'
            DataType = datMemo
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'OLD_ClienteID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Cupon'
            SQL = 
              'UPDATE '#10#9'"dbo"."Cupon" '#10'SET "ClienteID" = :ClienteID, '#10#9'"Referen' +
              'cia" = :Nombre, '#10#9'"Importe" = :RazonSocial, '#10#9'"FechaConsumo" = :' +
              'Domicilio, '#10#9'"FechaValido" = :Grupo, '#10#9'"VolumenImporte" = :Colon' +
              'ia, '#10#9'"Status" = :CodigoPostal, '#10#9'"Barras" = :Ciudad, '#10#9'"Cliente' +
              'ID" = :Telefono, '#10#9'"EstacionID" = :RFC, '#10#9'"LoteCuponID" = :Cuent' +
              'aContable, '#10#9'"ConsumoEstacionID" = :PlazoPago, '#10#9'"ConsumoSecuenc' +
              'ia" = :Estatus, '#10#9'"ConsumoBombaID" = :FechaIngreso, '#10#9'"ConsumoTu' +
              'rnoID" = :NIP, '#10#9'"ConsumoImporte" = :FechaBaja, '#10#9'"UsuarioCancel' +
              'oID" = :LimiteCredito, '#10#9'"FechaCancelo" = :Deposito, '#10#9'"Facturad' +
              'o" = :CambioCredito, '#10#9'"DigitoSeguridad" = :CambioCreditoAnterio' +
              'r, '#10#9'"Cargando" = :UltimoPago, '#10#9'"" = :DiaCorteSemana, '#10#9'"" = :C' +
              'lienteNuevo, '#10#9'"" = :Tasa, '#10#9'"" = :TarjetaID, '#10#9'"" = :FormaPagoI' +
              'D, '#10#9'"" = :GrupoFacturarID, '#10#9'"" = :VendedorID, '#10#9'"" = :Gasoline' +
              'roID, '#10#9'"" = :FormaCompraID, '#10#9'"" = :ClasificacionID, '#10#9'"" = :Fa' +
              'cturaConsumoCupon, '#10#9'"" = :NoExterior, '#10#9'"" = :Localidad, '#10#9'"" =' +
              ' :Municipio, '#10#9'"" = :Estado, '#10#9'"" = :Pais, '#10#9'"" = :email '#10'WHERE ' +
              '"ClienteID" = :OLD_ClienteID '
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'dbo Cliente_UPDATE'
      end
      item
        Params = <
          item
            Name = 'OLD_ClienteID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Cupon'
            SQL = 
              'DELETE FROM '#10#9'"dbo"."Cupon" '#10'WHERE '#10#9'"ClienteID" = :OLD_ClienteI' +
              'D '
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'dbo Cliente_DELETE'
      end
      item
        Params = <
          item
            Name = 'ClienteID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 70
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'RazonSocial'
            DataType = datString
            Size = 70
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Domicilio'
            DataType = datString
            Size = 90
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Grupo'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Colonia'
            DataType = datString
            Size = 40
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CodigoPostal'
            DataType = datString
            Size = 10
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Ciudad'
            DataType = datString
            Size = 30
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Telefono'
            DataType = datString
            Size = 20
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'RFC'
            DataType = datString
            Size = 20
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CuentaContable'
            DataType = datString
            Size = 20
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'PlazoPago'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Estatus'
            DataType = datString
            Size = 1
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaIngreso'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'NIP'
            DataType = datString
            Size = 8
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaBaja'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'LimiteCredito'
            DataType = datFloat
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Deposito'
            DataType = datFloat
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CambioCredito'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CambioCreditoAnterior'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'UltimoPago'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'DiaCorteSemana'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClienteNuevo'
            DataType = datBoolean
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Tasa'
            DataType = datFloat
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TarjetaID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FormaPagoID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'GrupoFacturarID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'VendedorID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'GasolineroID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FormaCompraID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClasificacionID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'AfectarHistorico'
            DataType = datBoolean
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Localidad'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Estado'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'NoExterior'
            DataType = datString
            Size = 20
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'NoInterior'
            DataType = datString
            Size = 10
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Actualizado'
            DataType = datBoolean
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'email'
            DataType = datString
            Size = 100
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'DiaRevisionID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'DiaPagoID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CuentaBancaria'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'INE'
            DataType = datBoolean
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'INETipoProceso'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'INETipoComite'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'INEidContabilidad'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'INEClaveEntidad'
            DataType = datString
            Size = 5
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'INEEntidadAmbito'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'INEEntidadidContabilidad'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'DescuentoPorcentaje'
            DataType = datFloat
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FacturaUsoID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'MetodoPagoID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FacturaConsumoCupon'
            DataType = datBoolean
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Municipio'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Pais'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Cliente'
            SQL = 
              'INSERT INTO '#10#9'"dbo"."Cliente" ('#10#9'"ClienteID", "Nombre", "RazonSo' +
              'cial", '#10#9'"Domicilio", "Grupo", "Colonia", '#10#9'"CodigoPostal", "Ciu' +
              'dad", "Telefono", '#10#9'"RFC", "CuentaContable", "PlazoPago", '#10#9'"Est' +
              'atus", "FechaIngreso", "NIP", '#10#9'"FechaBaja", "LimiteCredito", "D' +
              'eposito", '#10#9'"CambioCredito", "CambioCreditoAnterior", "UltimoPag' +
              'o", '#10#9'"DiaCorteSemana", "ClienteNuevo", "Tasa", '#10#9'"TarjetaID", "' +
              'FormaPagoID", "GrupoFacturarID", '#10#9'"VendedorID", "GasolineroID",' +
              ' "FormaCompraID", '#10#9'"ClasificacionID", "AfectarHistorico", "Loca' +
              'lidad", '#10#9'"Estado", "NoExterior", "NoInterior", '#10#9'"Actualizado",' +
              ' "email", "DiaRevisionID", '#10#9'"DiaPagoID", "CuentaBancaria", "INE' +
              '", '#10#9'"INETipoProceso", "INETipoComite", "INEidContabilidad", '#10#9'"' +
              'INEClaveEntidad", "INEEntidadAmbito", "INEEntidadidContabilidad"' +
              ', '#10#9'"DescuentoPorcentaje", "FacturaUsoID", "MetodoPagoID", '#10#9'"Fa' +
              'cturaConsumoCupon", "Municipio", "Pais") '#10'VALUES ('#10#9':ClienteID, ' +
              ':Nombre, :RazonSocial, '#10#9':Domicilio, :Grupo, :Colonia, '#10#9':Codigo' +
              'Postal, :Ciudad, :Telefono, '#10#9':RFC, :CuentaContable, :PlazoPago,' +
              ' '#10#9':Estatus, :FechaIngreso, :NIP, '#10#9':FechaBaja, :LimiteCredito, ' +
              ':Deposito, '#10#9':CambioCredito, :CambioCreditoAnterior, :UltimoPago' +
              ', '#10#9':DiaCorteSemana, :ClienteNuevo, :Tasa, '#10#9':TarjetaID, :FormaP' +
              'agoID, :GrupoFacturarID, '#10#9':VendedorID, :GasolineroID, :FormaCom' +
              'praID, '#10#9':ClasificacionID, :AfectarHistorico, :Localidad, '#10#9':Est' +
              'ado, :NoExterior, :NoInterior, '#10#9':Actualizado, :email, :DiaRevis' +
              'ionID, '#10#9':DiaPagoID, :CuentaBancaria, :INE, '#10#9':INETipoProceso, :' +
              'INETipoComite, :INEidContabilidad, '#10#9':INEClaveEntidad, :INEEntid' +
              'adAmbito, :INEEntidadidContabilidad, '#10#9':DescuentoPorcentaje, :Fa' +
              'cturaUsoID, :MetodoPagoID, '#10#9':FacturaConsumoCupon, :Municipio, :' +
              'Pais) '
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'dbo.Cliente_INSERT'
      end
      item
        Params = <
          item
            Name = 'ClienteID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 70
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'RazonSocial'
            DataType = datString
            Size = 70
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Domicilio'
            DataType = datString
            Size = 90
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Grupo'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Colonia'
            DataType = datString
            Size = 40
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CodigoPostal'
            DataType = datString
            Size = 10
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Ciudad'
            DataType = datString
            Size = 30
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Telefono'
            DataType = datString
            Size = 20
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'RFC'
            DataType = datString
            Size = 20
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CuentaContable'
            DataType = datString
            Size = 20
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'PlazoPago'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Estatus'
            DataType = datString
            Size = 1
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaIngreso'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'NIP'
            DataType = datString
            Size = 8
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FechaBaja'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'LimiteCredito'
            DataType = datFloat
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Deposito'
            DataType = datFloat
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CambioCredito'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CambioCreditoAnterior'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'UltimoPago'
            DataType = datDateTime
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'DiaCorteSemana'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClienteNuevo'
            DataType = datBoolean
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Tasa'
            DataType = datFloat
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TarjetaID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FormaPagoID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'GrupoFacturarID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'VendedorID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'GasolineroID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FormaCompraID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'ClasificacionID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'AfectarHistorico'
            DataType = datBoolean
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Localidad'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Estado'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'NoExterior'
            DataType = datString
            Size = 20
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'NoInterior'
            DataType = datString
            Size = 10
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Actualizado'
            DataType = datBoolean
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'email'
            DataType = datString
            Size = 100
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'DiaRevisionID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'DiaPagoID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CuentaBancaria'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'INE'
            DataType = datBoolean
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'INETipoProceso'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'INETipoComite'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'INEidContabilidad'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'INEClaveEntidad'
            DataType = datString
            Size = 5
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'INEEntidadAmbito'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'INEEntidadidContabilidad'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'DescuentoPorcentaje'
            DataType = datFloat
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FacturaUsoID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'MetodoPagoID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'FacturaConsumoCupon'
            DataType = datBoolean
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Municipio'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Pais'
            DataType = datString
            Size = 50
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'OLD_ClienteID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Cliente'
            SQL = 
              'UPDATE '#10#9'"dbo"."Cliente" '#10'SET "ClienteID" = :ClienteID, '#10#9'"Nombr' +
              'e" = :Nombre, '#10#9'"RazonSocial" = :RazonSocial, '#10#9'"Domicilio" = :D' +
              'omicilio, '#10#9'"Grupo" = :Grupo, '#10#9'"Colonia" = :Colonia, '#10#9'"CodigoP' +
              'ostal" = :CodigoPostal, '#10#9'"Ciudad" = :Ciudad, '#10#9'"Telefono" = :Te' +
              'lefono, '#10#9'"RFC" = :RFC, '#10#9'"CuentaContable" = :CuentaContable, '#10#9 +
              '"PlazoPago" = :PlazoPago, '#10#9'"Estatus" = :Estatus, '#10#9'"FechaIngres' +
              'o" = :FechaIngreso, '#10#9'"NIP" = :NIP, '#10#9'"FechaBaja" = :FechaBaja, ' +
              #10#9'"LimiteCredito" = :LimiteCredito, '#10#9'"Deposito" = :Deposito, '#10#9 +
              '"CambioCredito" = :CambioCredito, '#10#9'"CambioCreditoAnterior" = :C' +
              'ambioCreditoAnterior, '#10#9'"UltimoPago" = :UltimoPago, '#10#9'"DiaCorteS' +
              'emana" = :DiaCorteSemana, '#10#9'"ClienteNuevo" = :ClienteNuevo, '#10#9'"T' +
              'asa" = :Tasa, '#10#9'"TarjetaID" = :TarjetaID, '#10#9'"FormaPagoID" = :For' +
              'maPagoID, '#10#9'"GrupoFacturarID" = :GrupoFacturarID, '#10#9'"VendedorID"' +
              ' = :VendedorID, '#10#9'"GasolineroID" = :GasolineroID, '#10#9'"FormaCompra' +
              'ID" = :FormaCompraID, '#10#9'"ClasificacionID" = :ClasificacionID, '#10#9 +
              '"AfectarHistorico" = :AfectarHistorico, '#10#9'"Localidad" = :Localid' +
              'ad, '#10#9'"Estado" = :Estado, '#10#9'"NoExterior" = :NoExterior, '#10#9'"NoInt' +
              'erior" = :NoInterior, '#10#9'"Actualizado" = :Actualizado, '#10#9'"email" ' +
              '= :email, '#10#9'"DiaRevisionID" = :DiaRevisionID, '#10#9'"DiaPagoID" = :D' +
              'iaPagoID, '#10#9'"CuentaBancaria" = :CuentaBancaria, '#10#9'"INE" = :INE, ' +
              #10#9'"INETipoProceso" = :INETipoProceso, '#10#9'"INETipoComite" = :INETi' +
              'poComite, '#10#9'"INEidContabilidad" = :INEidContabilidad, '#10#9'"INEClav' +
              'eEntidad" = :INEClaveEntidad, '#10#9'"INEEntidadAmbito" = :INEEntidad' +
              'Ambito, '#10#9'"INEEntidadidContabilidad" = :INEEntidadidContabilidad' +
              ', '#10#9'"DescuentoPorcentaje" = :DescuentoPorcentaje, '#10#9'"FacturaUsoI' +
              'D" = :FacturaUsoID, '#10#9'"MetodoPagoID" = :MetodoPagoID, '#10#9'"Factura' +
              'ConsumoCupon" = :FacturaConsumoCupon, '#10#9'"Municipio" = :Municipio' +
              ', '#10#9'"Pais" = :Pais '#10'WHERE "ClienteID" = :OLD_ClienteID '
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'dbo.Cliente_UPDATE'
      end
      item
        Params = <
          item
            Name = 'OLD_ClienteID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'ValeCuponServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.Cliente'
            SQL = 
              'DELETE FROM '#10#9'"dbo"."Cliente" '#10'WHERE '#10#9'"ClienteID" = :OLD_Client' +
              'eID '
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'dbo.Cliente_DELETE'
      end>
    RelationShips = <
      item
        Name = 'FK_spValidaUsuario_spValidaUsuario'
        MasterDatasetName = 'spValidaUsuario'
        DetailDatasetName = 'spValidaUsuario'
        RelationshipType = rtForeignKey
      end
      item
        Name = 'FK_dbo.Reporte_dbo.Reporte'
        MasterDatasetName = 'dbo.Reporte'
        DetailDatasetName = 'dbo.Reporte'
        RelationshipType = rtForeignKey
      end
      item
        Name = 'FK_dbo.BITACORAESTACION_dbo.BITACORAESTACION'
        MasterDatasetName = 'dbo.BITACORAESTACION'
        DetailDatasetName = 'dbo.BITACORAESTACION'
        RelationshipType = rtForeignKey
      end>
    UpdateRules = <>
    Version = 0
    Left = 24
    Top = 72
  end
  object dbpUsuario: TDABusinessProcessor
    Schema = Schema
    InsertCommandName = 'Insert_dbo Usuario'
    DeleteCommandName = 'Delete_dbo Usuario'
    UpdateCommandName = 'Update_dbo Usuario'
    ReferencedDataset = 'dbo Usuario'
    ProcessorOptions = [poAutoGenerateRefreshDataset]
    UpdateMode = updWhereKeyOnly
    Left = 128
    Top = 24
  end
  object bpReporte: TDABusinessProcessor
    Schema = Schema
    InsertCommandName = 'Insert_dbo Reporte'
    DeleteCommandName = 'Delete_dbo Reporte'
    UpdateCommandName = 'Update_dbo Reporte'
    ReferencedDataset = 'dbo Reporte'
    ProcessorOptions = []
    UpdateMode = updWhereKeyOnly
    RaiseExceptionAtError = True
    Left = 128
    Top = 78
  end
  object DataStreamer: TDABin2DataStreamer
    Left = 24
    Top = 16
  end
  object dbpDetalleLiquidacion: TDABusinessProcessor
    Schema = Schema
    InsertCommandName = 'Insert_dbo DetalleLiquidacion2'
    DeleteCommandName = 'Delete_dbo DetalleLiquidacion2'
    UpdateCommandName = 'Update_dbo DetalleLiquidacion2'
    ReferencedDataset = 'LIQDetalleLiquidacion2'
    ProcessorOptions = [poAutoGenerateRefreshDataset]
    UpdateMode = updWhereKeyOnly
    Left = 128
    Top = 128
  end
  object dbpLiquidacion: TDABusinessProcessor
    Schema = Schema
    InsertCommandName = 'Insert_dbo Liquidacion2'
    DeleteCommandName = 'Delete_dbo Liquidacion2'
    UpdateCommandName = 'Update_dbo Liquidacion2'
    ReferencedDataset = 'LIQLiquidacion2'
    ProcessorOptions = [poAutoGenerateRefreshDataset]
    UpdateMode = updWhereKeyOnly
    Left = 256
    Top = 16
  end
end