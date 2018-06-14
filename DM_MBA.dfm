object DM1: TDM1
  OldCreateOrder = False
  Height = 492
  Width = 637
  object cnMBA: TIB_Connection
    DefaultTransaction = trMBA
    PasswordStorage = psKeyFromUserReg
    SQLDialect = 3
    DatabaseName = 'MBA'
    Params.Strings = (
      'SQL DIALECT=3'
      'USER NAME=SYSDBA'
      'PATH=E:\@MBA\MBAAR.gdb'
      'PROTOCOL=TCP/IP'
      'SERVER=svr-01')
    AfterConnect = cnMBAAfterConnect
    OnError = cnMBAError
    Left = 8
    Top = 8
    SavedPassword = '.JuMbLe.01.6E2249149982998CBB'
  end
  object trMBA: TIB_Transaction
    IB_Connection = cnMBA
    AutoCommit = True
    Isolation = tiCommitted
    Left = 54
    Top = 8
  end
  object ispCon: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE CTR_UPD_ALL')
    StoredProcName = 'CTR_UPD_ALL'
    Left = 72
    Top = 153
  end
  object ispEmp: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE EMP_UPD_ALL')
    StoredProcName = 'EMP_UPD_ALL'
    Left = 120
    Top = 153
  end
  object ispGetFolio: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE GETFOLIO'
      '  ?GETFOLIO.P_NUMTIPODOC')
    ParamNames.Strings = (
      'P_NUMTIPODOC')
    StoredProcName = 'GETFOLIO'
    Left = 216
    Top = 145
  end
  object ispSetFolio: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE SETFOLIO'
      '  ?SETFOLIO.P_NUMTIPODOC,'
      '  ?SETFOLIO.P_FOLIO')
    ParamNames.Strings = (
      'P_NUMTIPODOC'
      'P_FOLIO')
    StoredProcName = 'SETFOLIO'
    Left = 280
    Top = 145
  end
  object ispSaveReporte: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE REP_U_00')
    StoredProcName = 'REP_U_00'
    Left = 8
    Top = 153
  end
  object ispTablas: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10021_S_01'
      '  ?MBA10021_S_01.P_TIPOTABLA,'
      '  ?MBA10021_S_01.P_NUMTABLA')
    AutoDefineParams = False
    ParamNames.Strings = (
      'P_TIPOTABLA'
      'P_NUMTABLA')
    StoredProcName = 'MBA10021_S_01'
    Left = 56
    Top = 208
  end
  object ispConfig: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE GETFOLIO'
      '  ?GETFOLIO.P_NUMTIPODOC')
    ParamNames.Strings = (
      'P_NUMTIPODOC')
    StoredProcName = 'GETFOLIO'
    Left = 160
    Top = 8
  end
  object ispDoc_U: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10008_U_02'
      '  ?MBA10008_U_02.ANIODOCTO,'
      '  ?MBA10008_U_02.PERDOCTO,'
      '  ?MBA10008_U_02.NUMTIPODOC,'
      '  ?MBA10008_U_02.SERIEDOCTO,'
      '  ?MBA10008_U_02.NUMDOCTO,'
      '  ?MBA10008_U_02.AFECTESTAD,'
      '  ?MBA10008_U_02.CLASEDOC,'
      '  ?MBA10008_U_02.CODCTEPROV,'
      '  ?MBA10008_U_02.DIAESP,'
      '  ?MBA10008_U_02.FECDOCTO,'
      '  ?MBA10008_U_02.FECENVIO,'
      '  ?MBA10008_U_02.FECPEDIDO,'
      '  ?MBA10008_U_02.FECPOSPAGO,'
      '  ?MBA10008_U_02.FECVENCEDO,'
      '  ?MBA10008_U_02.FECHRELCOB,'
      '  ?MBA10008_U_02.FECHAPP,'
      '  ?MBA10008_U_02.IMPCOMISDO,'
      '  ?MBA10008_U_02.IMPDESCAUT,'
      '  ?MBA10008_U_02.IMPDESCESP,'
      '  ?MBA10008_U_02.IMPDESCPP,'
      '  ?MBA10008_U_02.IMPGTOSCOM,'
      '  ?MBA10008_U_02.IMPIEPSDOC,'
      '  ?MBA10008_U_02.IMPIVADOCT,'
      '  ?MBA10008_U_02.IMPRETIVADOC,'
      '  ?MBA10008_U_02.IMPNETODOC,'
      '  ?MBA10008_U_02.IMPPENDDOC,'
      '  ?MBA10008_U_02.IMPTOTALDO,'
      '  ?MBA10008_U_02.IMPRESODOC,'
      '  ?MBA10008_U_02.INTERFAZCO,'
      '  ?MBA10008_U_02.MONEDADOCT,'
      '  ?MBA10008_U_02.NALMTRASP,'
      '  ?MBA10008_U_02.NATURALEZA,'
      '  ?MBA10008_U_02.NUMAGENTE,'
      '  ?MBA10008_U_02.NUMALMAC,'
      '  ?MBA10008_U_02.NUMBULTOS,'
      '  ?MBA10008_U_02.NUMMOVESP,'
      '  ?MBA10008_U_02.NUMRELCOBR,'
      '  ?MBA10008_U_02.ORDENCOMPR,'
      '  ?MBA10008_U_02.ORIGENDOCT,'
      '  ?MBA10008_U_02.PORCCOMISD,'
      '  ?MBA10008_U_02.PORCDESCPP,'
      '  ?MBA10008_U_02.PORCINTMOR,'
      '  ?MBA10008_U_02.PORCIVADOC,'
      '  ?MBA10008_U_02.PRNEDOCTA,'
      '  ?MBA10008_U_02.REFERDOCTO,'
      '  ?MBA10008_U_02.REFERDOCTO2,'
      '  ?MBA10008_U_02.TALON,'
      '  ?MBA10008_U_02.TIPOCAMBIO,'
      '  ?MBA10008_U_02.TRANSPOR,'
      '  ?MBA10008_U_02.UNIDADESTL,'
      '  ?MBA10008_U_02.VIATRANS,'
      '  ?MBA10008_U_02.LLAVEPOL,'
      '  ?MBA10008_U_02.CANCELA,'
      '  ?MBA10008_U_02.OBSERVA,'
      '  ?MBA10008_U_02.IMPCHEQPAQ,'
      '  ?MBA10008_U_02.SISTORIG,'
      '  ?MBA10008_U_02.HONORARIOS,'
      '  ?MBA10008_U_02.ATENCIONA,'
      '  ?MBA10008_U_02.FECHAACT,'
      '  ?MBA10008_U_02.USERACT,'
      '  ?MBA10008_U_02.IDRECURSO,'
      '  ?MBA10008_U_02.IDDEPTO,'
      '  ?MBA10008_U_02.DOCTO_ID,'
      '  ?MBA10008_U_02.IDDIRENTREGA,'
      '  ?MBA10008_U_02.METODOPAGO,'
      '  ?MBA10008_U_02.FORMAPAGO,'
      '  ?MBA10008_U_02.USOCFDI')
    ParamNames.Strings = (
      'ANIODOCTO'
      'PERDOCTO'
      'NUMTIPODOC'
      'SERIEDOCTO'
      'NUMDOCTO'
      'AFECTESTAD'
      'CLASEDOC'
      'CODCTEPROV'
      'DIAESP'
      'FECDOCTO'
      'FECENVIO'
      'FECPEDIDO'
      'FECPOSPAGO'
      'FECVENCEDO'
      'FECHRELCOB'
      'FECHAPP'
      'IMPCOMISDO'
      'IMPDESCAUT'
      'IMPDESCESP'
      'IMPDESCPP'
      'IMPGTOSCOM'
      'IMPIEPSDOC'
      'IMPIVADOCT'
      'IMPRETIVADOC'
      'IMPNETODOC'
      'IMPPENDDOC'
      'IMPTOTALDO'
      'IMPRESODOC'
      'INTERFAZCO'
      'MONEDADOCT'
      'NALMTRASP'
      'NATURALEZA'
      'NUMAGENTE'
      'NUMALMAC'
      'NUMBULTOS'
      'NUMMOVESP'
      'NUMRELCOBR'
      'ORDENCOMPR'
      'ORIGENDOCT'
      'PORCCOMISD'
      'PORCDESCPP'
      'PORCINTMOR'
      'PORCIVADOC'
      'PRNEDOCTA'
      'REFERDOCTO'
      'REFERDOCTO2'
      'TALON'
      'TIPOCAMBIO'
      'TRANSPOR'
      'UNIDADESTL'
      'VIATRANS'
      'LLAVEPOL'
      'CANCELA'
      'OBSERVA'
      'IMPCHEQPAQ'
      'SISTORIG'
      'HONORARIOS'
      'ATENCIONA'
      'FECHAACT'
      'USERACT'
      'IDRECURSO'
      'IDDEPTO'
      'DOCTO_ID'
      'IDDIRENTREGA'
      'METODOPAGO'
      'FORMAPAGO'
      'USOCFDI')
    StoredProcName = 'MBA10008_U_02'
    Left = 8
    Top = 56
  end
  object ispDoc_S: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10008_S_00'
      '  ?MBA10008_S_00.P_NUMTIPODOC,'
      '  ?MBA10008_S_00.P_SERIEDOCTO,'
      '  ?MBA10008_S_00.P_NUMDOCTO')
    ParamNames.Strings = (
      'P_NUMTIPODOC'
      'P_SERIEDOCTO'
      'P_NUMDOCTO')
    StoredProcName = 'MBA10008_S_00'
    Left = 65
    Top = 56
  end
  object ispDoc_U1: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10008_U_01'
      '  ?MBA10008_U_01.P_NUMTIPODOC,'
      '  ?MBA10008_U_01.P_SERIEDOCTO,'
      '  ?MBA10008_U_01.P_NUMDOCTO,'
      '  ?MBA10008_U_01.P_CANCELA')
    ParamNames.Strings = (
      'P_NUMTIPODOC'
      'P_SERIEDOCTO'
      'P_NUMDOCTO'
      'P_CANCELA')
    StoredProcName = 'MBA10008_U_01'
    Left = 121
    Top = 56
  end
  object ispCambios: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE CAMBIARCODIGOS'
      '  ?CAMBIARCODIGOS.P_CODPRODSER1,'
      '  ?CAMBIARCODIGOS.P_CODPRODSER2')
    ParamNames.Strings = (
      'P_CODPRODSER1'
      'P_CODPRODSER2')
    StoredProcName = 'CAMBIARCODIGOS'
    Left = 368
    Top = 232
  end
  object isqlDet: TIB_DSQL
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'delete from MBA10010 where (NUMTIPODOC = ?P_NUMTIPODOC) AND '
      '(SERIEDOCTO = ?P_SERIEDOCTO) AND (NUMDOCTO = ?P_NUMDOCTO);')
    Left = 288
    Top = 56
  end
  object iqrDet: TIB_Query
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'SELECT A.NUMTIPODOC'
      '     , A.SERIEDOCTO'
      '     , A.NUMDOCTO'
      '     , A.NUMMOVTO'
      '     , A.CODPRODSER'
      '     , A.DESCRIPPRO'
      '     , A.UNIDADES'
      '     , A.PRECIO'
      '     , A.COSTOMOV'
      '     , A.IMPNETOMOV'
      '     , A.IMPIEPSMOV'
      '     , A.IMPIVAMOVT'
      '     , A.IMPRETIVAMOV'
      '     , A.PORCIEPSMO'
      '     , A.PORCIVAMOV'
      '     , A.PORCRETIVAMOV'
      '     , A.PORCCOMISV'
      '     , A.PORCDESCAU'
      '     , A.TOTALMOVTO'
      '     , A.UNIVTA'
      '     , A.PrecioLista'
      '     , A.DeNumTipoDoc'
      '     , A.DeSerieDocto'
      '     , A.DeNumDocto'
      '     , A.DeNumMovto'
      '     , A.Descto1'
      '     , A.Descto2'
      '     , A.Descto3'
      '     , A.Descto4'
      '     , A.Descto5'
      '     , A.Descto6'
      '     , A.Descto7'
      '     , A.Descto8'
      '     , A.Descto9'
      '     , A.Descto10'
      '     , A.CodFamilia'
      '     , A.Pedimento1'
      '     , A.Aduana'
      '     , A.FechaEnt'
      '     , A.TipoCalculo'
      '     , A.Cancela'
      ''
      'FROM MBA10010 A'
      'WHERE (A.NUMTIPODOC = ?P_NUMTIPODOC) AND '
      '      (A.SERIEDOCTO = ?P_SERIEDOCTO) AND'
      '      (A.NUMDOCTO = ?P_NUMDOCTO) AND'
      '      (A.FECDOCTO = ?P_FECDOCTO)')
    AutoFetchAll = True
    Left = 344
    Top = 56
  end
  object ispProd_S: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10004_S_00'
      '  ?MBA10004_S_00.P_CODPRODSER')
    ParamNames.Strings = (
      'P_CODPRODSER')
    StoredProcName = 'MBA10004_S_00'
    Left = 9
    Top = 104
  end
  object ispProd_U: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10004_U_00'
      '  ?MBA10004_U_00.CODPRODSER,'
      '  ?MBA10004_U_00.DESCRIPPRO,'
      '  ?MBA10004_U_00.CODFAMILIA,'
      '  ?MBA10004_U_00.CODCTEPROV,'
      '  ?MBA10004_U_00.EDOACTPROD,'
      '  ?MBA10004_U_00.FECALTPROD,'
      '  ?MBA10004_U_00.CTOREAL,'
      '  ?MBA10004_U_00.PCIOVTA1,'
      '  ?MBA10004_U_00.PCIOVTA2,'
      '  ?MBA10004_U_00.PESO,'
      '  ?MBA10004_U_00.UNIVTA,'
      '  ?MBA10004_U_00.USERACT1,'
      '  ?MBA10004_U_00.FECHAACT1,'
      '  ?MBA10004_U_00.TIPOCALCULO,'
      '  ?MBA10004_U_00.MAXIMO,'
      '  ?MBA10004_U_00.MINIMO,'
      '  ?MBA10004_U_00.REORDEN,'
      '  ?MBA10004_U_00.PRIORIDAD,'
      '  ?MBA10004_U_00.LONGITUD,'
      '  ?MBA10004_U_00.FIGURA,'
      '  ?MBA10004_U_00.NUMSERIE,'
      '  ?MBA10004_U_00.CAMBIO,'
      '  ?MBA10004_U_00.TIPOPROD,'
      '  ?MBA10004_U_00.PATHFOTO,'
      '  ?MBA10004_U_00.DESCRIPTEC')
    ParamNames.Strings = (
      'CODPRODSER'
      'DESCRIPPRO'
      'CODFAMILIA'
      'CODCTEPROV'
      'EDOACTPROD'
      'FECALTPROD'
      'CTOREAL'
      'PCIOVTA1'
      'PCIOVTA2'
      'PESO'
      'UNIVTA'
      'USERACT1'
      'FECHAACT1'
      'TIPOCALCULO'
      'MAXIMO'
      'MINIMO'
      'REORDEN'
      'PRIORIDAD'
      'LONGITUD'
      'FIGURA'
      'NUMSERIE'
      'CAMBIO'
      'TIPOPROD'
      'PATHFOTO'
      'DESCRIPTEC')
    StoredProcName = 'MBA10004_U_00'
    Left = 65
    Top = 104
  end
  object iqrArt: TIB_Query
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'SELECT A.NUMTIPODOC'
      '     , A.SERIEDOCTO'
      '     , A.NUMDOCTO'
      '     , A.NUMMOVTO'
      '     , A.CODPRODSER'
      '     , B.DESCRIPPRO'
      '     , A.UNIDADES'
      '     , A.PRECIO'
      '     , A.IMPNETOMOV'
      '     , A.IMPIVAMOVT'
      '     , A.PORCIVAMOV'
      '     , A.TOTALMOVTO'
      'FROM MBA10010 A, MBA10004 B'
      'WHERE (A.NUMTIPODOC = ?P_NUMTIPODOC) AND '
      '      (A.SERIEDOCTO = ?P_SERIEDOCTO) AND'
      '      (A.NUMDOCTO = ?P_NUMDOCTO) AND'
      '      (A.CODPRODSER = B.CODPRODSER)')
    AutoFetchAll = True
    Left = 8
    Top = 264
  end
  object ispArt_U_01: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10004_U_01'
      '  ?MBA10004_U_01.CODPRODSER,'
      '  ?MBA10004_U_01.PCIOCOMPRADL,'
      '  ?MBA10004_U_01.PCIOCOMPRA,'
      '  ?MBA10004_U_01.DESCTO1,'
      '  ?MBA10004_U_01.DESCTO2,'
      '  ?MBA10004_U_01.DESCTO3,'
      '  ?MBA10004_U_01.DESCTO4,'
      '  ?MBA10004_U_01.DESCTO5,'
      '  ?MBA10004_U_01.DESCTO6,'
      '  ?MBA10004_U_01.DESCTO7,'
      '  ?MBA10004_U_01.DESCTO8,'
      '  ?MBA10004_U_01.DESCTO9,'
      '  ?MBA10004_U_01.DESCTO10,'
      '  ?MBA10004_U_01.PCIONETO,'
      '  ?MBA10004_U_01.GTOSIMPORT,'
      '  ?MBA10004_U_01.GTOSFLETE,'
      '  ?MBA10004_U_01.GTOSOTROS,'
      '  ?MBA10004_U_01.CTOREAL,'
      '  ?MBA10004_U_01.MARGEN1,'
      '  ?MBA10004_U_01.MARGEN2,'
      '  ?MBA10004_U_01.MARGEN3,'
      '  ?MBA10004_U_01.MARGEN4,'
      '  ?MBA10004_U_01.MARGEN5,'
      '  ?MBA10004_U_01.MARGEN6,'
      '  ?MBA10004_U_01.MARGEN7,'
      '  ?MBA10004_U_01.MARGEN8,'
      '  ?MBA10004_U_01.MARGEN9,'
      '  ?MBA10004_U_01.MARGEN10,'
      '  ?MBA10004_U_01.PCIOVTA1,'
      '  ?MBA10004_U_01.PCIOVTA2,'
      '  ?MBA10004_U_01.PCIOVTA3,'
      '  ?MBA10004_U_01.PCIOVTA4,'
      '  ?MBA10004_U_01.PCIOVTA5,'
      '  ?MBA10004_U_01.PCIOVTA6,'
      '  ?MBA10004_U_01.PCIOVTA7,'
      '  ?MBA10004_U_01.PCIOVTA8,'
      '  ?MBA10004_U_01.PCIOVTA9,'
      '  ?MBA10004_U_01.PCIOVTA10,'
      '  ?MBA10004_U_01.USERACT1,'
      '  ?MBA10004_U_01.FECHAACT1')
    ParamNames.Strings = (
      'CODPRODSER'
      'PCIOCOMPRADL'
      'PCIOCOMPRA'
      'DESCTO1'
      'DESCTO2'
      'DESCTO3'
      'DESCTO4'
      'DESCTO5'
      'DESCTO6'
      'DESCTO7'
      'DESCTO8'
      'DESCTO9'
      'DESCTO10'
      'PCIONETO'
      'GTOSIMPORT'
      'GTOSFLETE'
      'GTOSOTROS'
      'CTOREAL'
      'MARGEN1'
      'MARGEN2'
      'MARGEN3'
      'MARGEN4'
      'MARGEN5'
      'MARGEN6'
      'MARGEN7'
      'MARGEN8'
      'MARGEN9'
      'MARGEN10'
      'PCIOVTA1'
      'PCIOVTA2'
      'PCIOVTA3'
      'PCIOVTA4'
      'PCIOVTA5'
      'PCIOVTA6'
      'PCIOVTA7'
      'PCIOVTA8'
      'PCIOVTA9'
      'PCIOVTA10'
      'USERACT1'
      'FECHAACT1')
    StoredProcName = 'MBA10004_U_01'
    Left = 64
    Top = 264
  end
  object ispArt_D_00: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10004_D_00'
      '  ?MBA10004_D_00.CODPRODSER')
    ParamNames.Strings = (
      'CODPRODSER')
    StoredProcName = 'MBA10004_D_00'
    Left = 128
    Top = 264
  end
  object ispCte_S00: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10002_S_00'
      '  ?MBA10002_S_00.P_CODCTEPROV')
    ParamNames.Strings = (
      'P_CODCTEPROV')
    StoredProcName = 'MBA10002_S_00'
    Left = 8
    Top = 328
  end
  object ispCte_U00: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10002_U00'
      '  ?MBA10002_U00.CODCTEPROV,'
      '  ?MBA10002_U00.RAZSOCIAL,'
      '  ?MBA10002_U00.NUMAGENTE,'
      '  ?MBA10002_U00.CODPOSTAL,'
      '  ?MBA10002_U00.COLONIACTE,'
      '  ?MBA10002_U00.DOMICILIO,'
      '  ?MBA10002_U00.EDOACTCTE,'
      '  ?MBA10002_U00.ESTADOCTE,'
      '  ?MBA10002_U00.FECHAALTA,'
      '  ?MBA10002_U00.FECBAJACTE,'
      '  ?MBA10002_U00.LIMCREDCTE,'
      '  ?MBA10002_U00.LISTPRECIO,'
      '  ?MBA10002_U00.MONEDACTE,'
      '  ?MBA10002_U00.POBLACTE,'
      '  ?MBA10002_U00.RFC,'
      '  ?MBA10002_U00.RUTA,'
      '  ?MBA10002_U00.TELEFONO1,'
      '  ?MBA10002_U00.TELEFONO2,'
      '  ?MBA10002_U00.TELEFONO3,'
      '  ?MBA10002_U00.ZONA,'
      '  ?MBA10002_U00.DIASCREDIT,'
      '  ?MBA10002_U00.PAISCTE,'
      '  ?MBA10002_U00.DIASPPAGO,'
      '  ?MBA10002_U00.PDESCPPAGO,'
      '  ?MBA10002_U00.CURP,'
      '  ?MBA10002_U00.VIATRANS,'
      '  ?MBA10002_U00.JEFEPAGOS,'
      '  ?MBA10002_U00.EMAIL,'
      '  ?MBA10002_U00.COMENTARIOS,'
      '  ?MBA10002_U00.JEFECOMPRAS,'
      '  ?MBA10002_U00.CURP2,'
      '  ?MBA10002_U00.ENTREGAR,'
      '  ?MBA10002_U00.NUM_EXTERIOR,'
      '  ?MBA10002_U00.NUM_INTERIOR,'
      '  ?MBA10002_U00.CALLE,'
      '  ?MBA10002_U00.CUENTABANCO,'
      '  ?MBA10002_U00.METODOPAGO,'
      '  ?MBA10002_U00.EMAILPAGOS,'
      '  ?MBA10002_U00.EMAILFACTURA,'
      '  ?MBA10002_U00.REFERENCIA')
    ParamNames.Strings = (
      'CODCTEPROV'
      'RAZSOCIAL'
      'NUMAGENTE'
      'CODPOSTAL'
      'COLONIACTE'
      'DOMICILIO'
      'EDOACTCTE'
      'ESTADOCTE'
      'FECHAALTA'
      'FECBAJACTE'
      'LIMCREDCTE'
      'LISTPRECIO'
      'MONEDACTE'
      'POBLACTE'
      'RFC'
      'RUTA'
      'TELEFONO1'
      'TELEFONO2'
      'TELEFONO3'
      'ZONA'
      'DIASCREDIT'
      'PAISCTE'
      'DIASPPAGO'
      'PDESCPPAGO'
      'CURP'
      'VIATRANS'
      'JEFEPAGOS'
      'EMAIL'
      'COMENTARIOS'
      'JEFECOMPRAS'
      'CURP2'
      'ENTREGAR'
      'NUM_EXTERIOR'
      'NUM_INTERIOR'
      'CALLE'
      'CUENTABANCO'
      'METODOPAGO'
      'EMAILPAGOS'
      'EMAILFACTURA'
      'REFERENCIA')
    StoredProcName = 'MBA10002_U00'
    Left = 81
    Top = 328
  end
  object ispTipoDocS00: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10008_U_00'
      '  ?MBA10008_U_00.ANIODOCTO,'
      '  ?MBA10008_U_00.PERDOCTO,'
      '  ?MBA10008_U_00.NUMTIPODOC,'
      '  ?MBA10008_U_00.SERIEDOCTO,'
      '  ?MBA10008_U_00.NUMDOCTO,'
      '  ?MBA10008_U_00.AFECTESTAD,'
      '  ?MBA10008_U_00.CLASEDOC,'
      '  ?MBA10008_U_00.CODCTEPROV,'
      '  ?MBA10008_U_00.DIAESP,'
      '  ?MBA10008_U_00.FECDOCTO,'
      '  ?MBA10008_U_00.FECENVIO,'
      '  ?MBA10008_U_00.FECPEDIDO,'
      '  ?MBA10008_U_00.FECPOSPAGO,'
      '  ?MBA10008_U_00.FECVENCEDO,'
      '  ?MBA10008_U_00.FECHRELCOB,'
      '  ?MBA10008_U_00.FECHAPP,'
      '  ?MBA10008_U_00.IMPCOMISDO,'
      '  ?MBA10008_U_00.IMPDESCAUT,'
      '  ?MBA10008_U_00.IMPDESCESP,'
      '  ?MBA10008_U_00.IMPDESCPP,'
      '  ?MBA10008_U_00.IMPGTOSCOM,'
      '  ?MBA10008_U_00.IMPIEPSDOC,'
      '  ?MBA10008_U_00.IMPIVADOCT,'
      '  ?MBA10008_U_00.IMPNETODOC,'
      '  ?MBA10008_U_00.IMPPENDDOC,'
      '  ?MBA10008_U_00.IMPTOTALDO,'
      '  ?MBA10008_U_00.IMPRESODOC,'
      '  ?MBA10008_U_00.INTERFAZCO,'
      '  ?MBA10008_U_00.MONEDADOCT,'
      '  ?MBA10008_U_00.NALMTRASP,'
      '  ?MBA10008_U_00.NATURALEZA,'
      '  ?MBA10008_U_00.NUMAGENTE,'
      '  ?MBA10008_U_00.NUMALMAC,'
      '  ?MBA10008_U_00.NUMBULTOS,'
      '  ?MBA10008_U_00.NUMMOVESP,'
      '  ?MBA10008_U_00.NUMRELCOBR,'
      '  ?MBA10008_U_00.ORDENCOMPR,'
      '  ?MBA10008_U_00.ORIGENDOCT,'
      '  ?MBA10008_U_00.PORCCOMISD,'
      '  ?MBA10008_U_00.PORCDESCPP,'
      '  ?MBA10008_U_00.PORCINTMOR,'
      '  ?MBA10008_U_00.PORCIVADOC,'
      '  ?MBA10008_U_00.PRNEDOCTA,'
      '  ?MBA10008_U_00.REFERDOCTO,'
      '  ?MBA10008_U_00.REFERDOCTO2,'
      '  ?MBA10008_U_00.TALON,'
      '  ?MBA10008_U_00.TIPOCAMBIO,'
      '  ?MBA10008_U_00.TRANSPOR,'
      '  ?MBA10008_U_00.UNIDADESTL,'
      '  ?MBA10008_U_00.VIATRANS,'
      '  ?MBA10008_U_00.LLAVEPOL,'
      '  ?MBA10008_U_00.CANCELA,'
      '  ?MBA10008_U_00.OBSERVA,'
      '  ?MBA10008_U_00.IMPCHEQPAQ,'
      '  ?MBA10008_U_00.SISTORIG,'
      '  ?MBA10008_U_00.HONORARIOS,'
      '  ?MBA10008_U_00.ATENCIONA,'
      '  ?MBA10008_U_00.FECHAACT,'
      '  ?MBA10008_U_00.USERACT,'
      '  ?MBA10008_U_00.DOCTO_ID')
    ParamNames.Strings = (
      'ANIODOCTO'
      'PERDOCTO'
      'NUMTIPODOC'
      'SERIEDOCTO'
      'NUMDOCTO'
      'AFECTESTAD'
      'CLASEDOC'
      'CODCTEPROV'
      'DIAESP'
      'FECDOCTO'
      'FECENVIO'
      'FECPEDIDO'
      'FECPOSPAGO'
      'FECVENCEDO'
      'FECHRELCOB'
      'FECHAPP'
      'IMPCOMISDO'
      'IMPDESCAUT'
      'IMPDESCESP'
      'IMPDESCPP'
      'IMPGTOSCOM'
      'IMPIEPSDOC'
      'IMPIVADOCT'
      'IMPNETODOC'
      'IMPPENDDOC'
      'IMPTOTALDO'
      'IMPRESODOC'
      'INTERFAZCO'
      'MONEDADOCT'
      'NALMTRASP'
      'NATURALEZA'
      'NUMAGENTE'
      'NUMALMAC'
      'NUMBULTOS'
      'NUMMOVESP'
      'NUMRELCOBR'
      'ORDENCOMPR'
      'ORIGENDOCT'
      'PORCCOMISD'
      'PORCDESCPP'
      'PORCINTMOR'
      'PORCIVADOC'
      'PRNEDOCTA'
      'REFERDOCTO'
      'REFERDOCTO2'
      'TALON'
      'TIPOCAMBIO'
      'TRANSPOR'
      'UNIDADESTL'
      'VIATRANS'
      'LLAVEPOL'
      'CANCELA'
      'OBSERVA'
      'IMPCHEQPAQ'
      'SISTORIG'
      'HONORARIOS'
      'ATENCIONA'
      'FECHAACT'
      'USERACT'
      'DOCTO_ID')
    StoredProcName = 'MBA10008_U_00'
    Left = 144
    Top = 104
  end
  object ispTipoDocU00: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10006_U00')
    OnError = cnMBAError
    StoredProcName = 'MBA10006_U00'
    Left = 249
    Top = 104
  end
  object ispDetU02: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10010_U_02'
      '  ?MBA10010_U_02.NUMTIPODOC,'
      '  ?MBA10010_U_02.SERIEDOCTO,'
      '  ?MBA10010_U_02.NUMDOCTO,'
      '  ?MBA10010_U_02.NUMMOVTO,'
      '  ?MBA10010_U_02.UNIFACT')
    ParamNames.Strings = (
      'NUMTIPODOC'
      'SERIEDOCTO'
      'NUMDOCTO'
      'NUMMOVTO'
      'UNIFACT')
    StoredProcName = 'MBA10010_U_02'
    Left = 400
    Top = 56
  end
  object iqrTemp: TIB_Query
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'SELECT A.NUMTIPODOC'
      '     , A.SERIEDOCTO'
      '     , A.NUMDOCTO'
      '     , A.NUMMOVTO'
      '     , A.CODPRODSER'
      '     , B.DESCRIPPRO'
      '     , A.UNIDADES'
      '     , A.PRECIO'
      '     , A.IMPNETOMOV'
      '     , A.IMPIVAMOVT'
      '     , A.PORCIVAMOV'
      '     , A.TOTALMOVTO'
      'FROM MBA10010 A, MBA10004 B'
      'WHERE (A.NUMTIPODOC = ?P_NUMTIPODOC) AND '
      '      (A.SERIEDOCTO = ?P_SERIEDOCTO) AND'
      '      (A.NUMDOCTO = ?P_NUMDOCTO) AND'
      '      (A.CODPRODSER = B.CODPRODSER)')
    AutoFetchAll = True
    Left = 208
    Top = 8
  end
  object icuPedimento: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'select * from mba10014'
      'WHERE UNIDADES_E > UNIDADES_S'
      '      AND DESCRIPRO CONTAINING ?CODFAMILIA'
      'order by Fecha;')
    Left = 280
    Top = 370
  end
  object icuRep: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    Left = 256
    Top = 232
  end
  object ispProv_S00: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10013_S00'
      '  ?MBA10013_S00.P_CODCTEPROV')
    ParamNames.Strings = (
      'P_CODCTEPROV')
    StoredProcName = 'MBA10013_S00'
    Left = 208
    Top = 328
  end
  object ispProv_U00: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10013_U00'
      '  ?MBA10013_U00.CODCTEPROV,'
      '  ?MBA10013_U00.NOMBPROVEE,'
      '  ?MBA10013_U00.AGRUPAPROV,'
      '  ?MBA10013_U00.CATEGPROV,'
      '  ?MBA10013_U00.CODPOSTPRO,'
      '  ?MBA10013_U00.COLONIAPRO,'
      '  ?MBA10013_U00.CTACXP,'
      '  ?MBA10013_U00.CTADXP,'
      '  ?MBA10013_U00.CTAESTPROV,'
      '  ?MBA10013_U00.CTAPAGANTI,'
      '  ?MBA10013_U00.DENOMINA,'
      '  ?MBA10013_U00.DIASCREDIT,'
      '  ?MBA10013_U00.DIRECPROVE,'
      '  ?MBA10013_U00.EDOACTPROV,'
      '  ?MBA10013_U00.ESTADPROV,'
      '  ?MBA10013_U00.ESTADOPROV,'
      '  ?MBA10013_U00.ESTCODPROV,'
      '  ?MBA10013_U00.FECALTPROV,'
      '  ?MBA10013_U00.FECBAJPROV,'
      '  ?MBA10013_U00.FECINIEST,'
      '  ?MBA10013_U00.FECULTCOMP,'
      '  ?MBA10013_U00.FULTPAGPRO,'
      '  ?MBA10013_U00.FULTPEDPRO,'
      '  ?MBA10013_U00.LIMCREDPRO,'
      '  ?MBA10013_U00.MONEDAPROV,'
      '  ?MBA10013_U00.POBLAPROVE,'
      '  ?MBA10013_U00.REPRESPROV,'
      '  ?MBA10013_U00.RFCPROVED,'
      '  ?MBA10013_U00.SDOACTPROV,'
      '  ?MBA10013_U00.SDOANTPROV,'
      '  ?MBA10013_U00.SDOCXP,'
      '  ?MBA10013_U00.SDODXP,'
      '  ?MBA10013_U00.TELPROV1,'
      '  ?MBA10013_U00.TELPROV2,'
      '  ?MBA10013_U00.TELPROV3,'
      '  ?MBA10013_U00.PAISPROV,'
      '  ?MBA10013_U00.CTACOMPLEM,'
      '  ?MBA10013_U00.IDCHQ,'
      '  ?MBA10013_U00.CURP,'
      '  ?MBA10013_U00.EMAIL,'
      '  ?MBA10013_U00.WEB,'
      '  ?MBA10013_U00.CONTACTO1,'
      '  ?MBA10013_U00.CONTACTO2,'
      '  ?MBA10013_U00.PORCIVA')
    ParamNames.Strings = (
      'CODCTEPROV'
      'NOMBPROVEE'
      'AGRUPAPROV'
      'CATEGPROV'
      'CODPOSTPRO'
      'COLONIAPRO'
      'CTACXP'
      'CTADXP'
      'CTAESTPROV'
      'CTAPAGANTI'
      'DENOMINA'
      'DIASCREDIT'
      'DIRECPROVE'
      'EDOACTPROV'
      'ESTADPROV'
      'ESTADOPROV'
      'ESTCODPROV'
      'FECALTPROV'
      'FECBAJPROV'
      'FECINIEST'
      'FECULTCOMP'
      'FULTPAGPRO'
      'FULTPEDPRO'
      'LIMCREDPRO'
      'MONEDAPROV'
      'POBLAPROVE'
      'REPRESPROV'
      'RFCPROVED'
      'SDOACTPROV'
      'SDOANTPROV'
      'SDOCXP'
      'SDODXP'
      'TELPROV1'
      'TELPROV2'
      'TELPROV3'
      'PAISPROV'
      'CTACOMPLEM'
      'IDCHQ'
      'CURP'
      'EMAIL'
      'WEB'
      'CONTACTO1'
      'CONTACTO2'
      'PORCIVA')
    StoredProcName = 'MBA10013_U00'
    Left = 273
    Top = 328
  end
  object icuSQL: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'select sqltxt from mba10500 where codigo = ?codigo')
    Left = 296
    Top = 8
  end
  object ispDet_U04: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10010_U04'
      '  ?MBA10010_U04.NUMTIPODOC,'
      '  ?MBA10010_U04.SERIEDOCTO,'
      '  ?MBA10010_U04.NUMDOCTO')
    ParamNames.Strings = (
      'NUMTIPODOC'
      'SERIEDOCTO'
      'NUMDOCTO')
    StoredProcName = 'MBA10010_U04'
    Left = 328
    Top = 104
  end
  object ispDoc_U04: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10008_U04'
      '  ?MBA10008_U04.P_NUMTIPODOC,'
      '  ?MBA10008_U04.P_SERIEDOCTO,'
      '  ?MBA10008_U04.P_NUMDOCTO,'
      '  ?MBA10008_U04.P_NUMNOTACRE,'
      '  ?MBA10008_U04.P_STATUS')
    ParamNames.Strings = (
      'P_NUMTIPODOC'
      'P_SERIEDOCTO'
      'P_NUMDOCTO'
      'P_NUMNOTACRE'
      'P_STATUS')
    StoredProcName = 'MBA10008_U04'
    Left = 185
    Top = 56
  end
  object iqrDetOC: TIB_Query
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'SELECT A.NUMTIPODOC'
      '     , A.SERIEDOCTO'
      '     , A.NUMDOCTO'
      '     , A.NUMMOVTO'
      '     , A.CODPRODSER'
      '     , A.DESCRIPPRO'
      '     , A.UNIDADES'
      '     , A.PRECIO'
      '     , A.IMPNETOMOV'
      '     , A.IMPIVAMOVT'
      '     , A.PORCIVAMOV'
      '     , A.TOTALMOVTO'
      '     , A.UNIVTA '
      '     , A.PrecioLista'
      '     , A.Descto1'
      '     , A.Descto2'
      '     , A.Descto3'
      '     , A.Descto4'
      '     , A.Descto5'
      '     , A.Descto6'
      '     , A.Descto7'
      '     , A.Descto8'
      '     , A.Descto9'
      '     , A.Descto10'
      ''
      'FROM MBA10010 A'
      'WHERE (A.NUMTIPODOC = ?P_NUMTIPODOC) AND '
      '      (A.SERIEDOCTO = ?P_SERIEDOCTO) AND'
      '      (A.NUMDOCTO = ?P_NUMDOCTO) ')
    AutoFetchAll = True
    Left = 304
    Top = 232
  end
  object ispPro: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    Left = 8
    Top = 370
  end
  object icuCotiza: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'select * from MBA10004_SL06(?p_CodProdSer,?p_DescripPro)')
    Left = 344
    Top = 328
    ParamValues = (
      'P_CODPRODSER=ASH')
  end
  object ispMBA10010: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10010_U10'
      '  ?MBA10010_U10.NUMTIPODOC,'
      '  ?MBA10010_U10.SERIEDOCTO,'
      '  ?MBA10010_U10.NUMDOCTO,'
      '  ?MBA10010_U10.AFECTADO')
    ParamNames.Strings = (
      'NUMTIPODOC'
      'SERIEDOCTO'
      'NUMDOCTO'
      'AFECTADO')
    StoredProcName = 'MBA10010_U10'
    Left = 152
    Top = 370
  end
  object ispMBA10016: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10016_U10'
      '  ?MBA10016_U10.P_NUMTIPODOC,'
      '  ?MBA10016_U10.P_SERIEDOCTO,'
      '  ?MBA10016_U10.P_NUMDOCTO,'
      '  ?MBA10016_U10.P_CANCELA,'
      '  ?MBA10016_U10.P_USER')
    AutoDefineParams = False
    ParamNames.Strings = (
      'P_NUMTIPODOC'
      'P_SERIEDOCTO'
      'P_NUMDOCTO'
      'P_CANCELA'
      'P_USER')
    StoredProcName = 'MBA10016_U10'
    Left = 80
    Top = 370
  end
  object icuTemp: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    Left = 248
    Top = 8
  end
  object trMBA2: TIB_Transaction
    IB_Connection = cnMBA
    Isolation = tiCommitted
    Left = 102
    Top = 8
  end
  object ispDet: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10010_U_00'
      '  ?MBA10010_U_00.ANIODOCTO,'
      '  ?MBA10010_U_00.PERDOCTO,'
      '  ?MBA10010_U_00.NUMTIPODOC,'
      '  ?MBA10010_U_00.SERIEDOCTO,'
      '  ?MBA10010_U_00.NUMDOCTO,'
      '  ?MBA10010_U_00.NUMMOVTO,'
      '  ?MBA10010_U_00.TIPOMOV,'
      '  ?MBA10010_U_00.CAUSADEVOL,'
      '  ?MBA10010_U_00.CODCTEPROV,'
      '  ?MBA10010_U_00.CODPRODSER,'
      '  ?MBA10010_U_00.COSTOMOV,'
      '  ?MBA10010_U_00.DISTCONT,'
      '  ?MBA10010_U_00.FACTGTOSCO,'
      '  ?MBA10010_U_00.FECDOCTO,'
      '  ?MBA10010_U_00.IMPCOMISMO,'
      '  ?MBA10010_U_00.IMPDESCAUT,'
      '  ?MBA10010_U_00.IMPDESCESP,'
      '  ?MBA10010_U_00.IMPIEPSMOV,'
      '  ?MBA10010_U_00.IMPIVAMOVT,'
      '  ?MBA10010_U_00.IMPRETIVAMOV,'
      '  ?MBA10010_U_00.IMPNETOMOV,'
      '  ?MBA10010_U_00.NUMCONC,'
      '  ?MBA10010_U_00.NUMCONCTRA,'
      '  ?MBA10010_U_00.PORCCOMISV,'
      '  ?MBA10010_U_00.PORCDESCAU,'
      '  ?MBA10010_U_00.PORCDESCES,'
      '  ?MBA10010_U_00.PORCIEPSMO,'
      '  ?MBA10010_U_00.PORCIVAMOV,'
      '  ?MBA10010_U_00.PORCRETIVAMOV,'
      '  ?MBA10010_U_00.PRECIO,'
      '  ?MBA10010_U_00.REFERMOVTO,'
      '  ?MBA10010_U_00.TIPCOSTO,'
      '  ?MBA10010_U_00.TOTALMOVTO,'
      '  ?MBA10010_U_00.UNIADQUIS,'
      '  ?MBA10010_U_00.UNIDADES,'
      '  ?MBA10010_U_00.UNIPEND,'
      '  ?MBA10010_U_00.CANCELA,'
      '  ?MBA10010_U_00.OBSERVA,'
      '  ?MBA10010_U_00.PRECUNIADQ,'
      '  ?MBA10010_U_00.NUMALMAC,'
      '  ?MBA10010_U_00.NALMTRASP,'
      '  ?MBA10010_U_00.HONORARIOS,'
      '  ?MBA10010_U_00.DENUMTIPODOC,'
      '  ?MBA10010_U_00.DESERIEDOCTO,'
      '  ?MBA10010_U_00.DENUMDOCTO,'
      '  ?MBA10010_U_00.DENUMMOVTO,'
      '  ?MBA10010_U_00.UNIFACT,'
      '  ?MBA10010_U_00.PRECIOLISTA,'
      '  ?MBA10010_U_00.DESCTO1,'
      '  ?MBA10010_U_00.DESCTO2,'
      '  ?MBA10010_U_00.DESCTO3,'
      '  ?MBA10010_U_00.DESCTO4,'
      '  ?MBA10010_U_00.DESCTO5,'
      '  ?MBA10010_U_00.DESCTO6,'
      '  ?MBA10010_U_00.DESCTO7,'
      '  ?MBA10010_U_00.DESCTO8,'
      '  ?MBA10010_U_00.DESCTO9,'
      '  ?MBA10010_U_00.DESCTO10,'
      '  ?MBA10010_U_00.DESCRIPPRO,'
      '  ?MBA10010_U_00.UNIVTA,'
      '  ?MBA10010_U_00.TIPOCAMBIO,'
      '  ?MBA10010_U_00.CODFAMILIA,'
      '  ?MBA10010_U_00.PEDIMENTO1,'
      '  ?MBA10010_U_00.ADUANA,'
      '  ?MBA10010_U_00.FECHAENT,'
      '  ?MBA10010_U_00.FECHAACT,'
      '  ?MBA10010_U_00.USERACT,'
      '  ?MBA10010_U_00.DOCTO_ID,'
      '  ?MBA10010_U_00.TIPOCALCULO')
    ParamNames.Strings = (
      'ANIODOCTO'
      'PERDOCTO'
      'NUMTIPODOC'
      'SERIEDOCTO'
      'NUMDOCTO'
      'NUMMOVTO'
      'TIPOMOV'
      'CAUSADEVOL'
      'CODCTEPROV'
      'CODPRODSER'
      'COSTOMOV'
      'DISTCONT'
      'FACTGTOSCO'
      'FECDOCTO'
      'IMPCOMISMO'
      'IMPDESCAUT'
      'IMPDESCESP'
      'IMPIEPSMOV'
      'IMPIVAMOVT'
      'IMPRETIVAMOV'
      'IMPNETOMOV'
      'NUMCONC'
      'NUMCONCTRA'
      'PORCCOMISV'
      'PORCDESCAU'
      'PORCDESCES'
      'PORCIEPSMO'
      'PORCIVAMOV'
      'PORCRETIVAMOV'
      'PRECIO'
      'REFERMOVTO'
      'TIPCOSTO'
      'TOTALMOVTO'
      'UNIADQUIS'
      'UNIDADES'
      'UNIPEND'
      'CANCELA'
      'OBSERVA'
      'PRECUNIADQ'
      'NUMALMAC'
      'NALMTRASP'
      'HONORARIOS'
      'DENUMTIPODOC'
      'DESERIEDOCTO'
      'DENUMDOCTO'
      'DENUMMOVTO'
      'UNIFACT'
      'PRECIOLISTA'
      'DESCTO1'
      'DESCTO2'
      'DESCTO3'
      'DESCTO4'
      'DESCTO5'
      'DESCTO6'
      'DESCTO7'
      'DESCTO8'
      'DESCTO9'
      'DESCTO10'
      'DESCRIPPRO'
      'UNIVTA'
      'TIPOCAMBIO'
      'CODFAMILIA'
      'PEDIMENTO1'
      'ADUANA'
      'FECHAENT'
      'FECHAACT'
      'USERACT'
      'DOCTO_ID'
      'TIPOCALCULO')
    StoredProcName = 'MBA10010_U_00'
    Left = 240
    Top = 56
  end
  object isqlTemp: TIB_DSQL
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    Left = 336
    Top = 8
  end
  object ispTemp: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    AutoDefineParams = False
    Left = 384
    Top = 8
  end
  object ispArt_U03: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10004_U03'
      '  ?MBA10004_U03.CODPRODSER,'
      '  ?MBA10004_U03.PCIOCOMPRADL,'
      '  ?MBA10004_U03.PCIOCOMPRA,'
      '  ?MBA10004_U03.DESCTO1,'
      '  ?MBA10004_U03.DESCTO2,'
      '  ?MBA10004_U03.DESCTO3,'
      '  ?MBA10004_U03.DESCTO4,'
      '  ?MBA10004_U03.DESCTO5,'
      '  ?MBA10004_U03.DESCTO6,'
      '  ?MBA10004_U03.DESCTO7,'
      '  ?MBA10004_U03.DESCTO8,'
      '  ?MBA10004_U03.DESCTO9,'
      '  ?MBA10004_U03.DESCTO10,'
      '  ?MBA10004_U03.PCIONETO,'
      '  ?MBA10004_U03.USERACT1,'
      '  ?MBA10004_U03.FECHAACT1')
    AutoDefineParams = False
    ParamNames.Strings = (
      'CODPRODSER'
      'PCIOCOMPRADL'
      'PCIOCOMPRA'
      'DESCTO1'
      'DESCTO2'
      'DESCTO3'
      'DESCTO4'
      'DESCTO5'
      'DESCTO6'
      'DESCTO7'
      'DESCTO8'
      'DESCTO9'
      'DESCTO10'
      'PCIONETO'
      'USERACT1'
      'FECHAACT1')
    StoredProcName = 'MBA10004_U03'
    Left = 200
    Top = 264
  end
  object ispDetU12: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10010_U12'
      '  ?MBA10010_U12.P_IDPEDIMENTO,'
      '  ?MBA10010_U12.P_UNIDADES')
    ParamNames.Strings = (
      'P_IDPEDIMENTO'
      'P_UNIDADES')
    StoredProcName = 'MBA10010_U12'
    Left = 464
    Top = 56
  end
  object ispGenId: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE GEN_DOCID')
    StoredProcName = 'GEN_DOCID'
    Left = 472
    Top = 161
  end
  object IB_Import1: TIB_Import
    DateFormat = dfDMY
    SkipFieldMarker = 'SKIP'
    ImportMode = mAppend
    Left = 488
    Top = 288
  end
  object IB_Export1: TIB_Export
    BooleanTrueText = 'T'
    BooleanFalseText = 'F'
    DateTimeFormat = 'dd/MM/yyyy h:mm'
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'h:mm'
    Left = 496
    Top = 352
  end
  object ispCte_U01: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE MBA10002_U01'
      '  ?MBA10002_U01.CODCTEPROV,'
      '  ?MBA10002_U01.RAZSOCIAL,'
      '  ?MBA10002_U01.NUMAGENTE,'
      '  ?MBA10002_U01.CODPOSTAL,'
      '  ?MBA10002_U01.COLONIACTE,'
      '  ?MBA10002_U01.DOMICILIO,'
      '  ?MBA10002_U01.EDOACTCTE,'
      '  ?MBA10002_U01.ESTADOCTE,'
      '  ?MBA10002_U01.FECHAALTA,'
      '  ?MBA10002_U01.FECBAJACTE,'
      '  ?MBA10002_U01.LIMCREDCTE,'
      '  ?MBA10002_U01.LISTPRECIO,'
      '  ?MBA10002_U01.MONEDACTE,'
      '  ?MBA10002_U01.POBLACTE,'
      '  ?MBA10002_U01.RFC,'
      '  ?MBA10002_U01.RUTA,'
      '  ?MBA10002_U01.TELEFONO1,'
      '  ?MBA10002_U01.TELEFONO2,'
      '  ?MBA10002_U01.TELEFONO3,'
      '  ?MBA10002_U01.ZONA,'
      '  ?MBA10002_U01.DIASCREDIT,'
      '  ?MBA10002_U01.PAISCTE,'
      '  ?MBA10002_U01.DIASPPAGO,'
      '  ?MBA10002_U01.PDESCPPAGO,'
      '  ?MBA10002_U01.CURP,'
      '  ?MBA10002_U01.VIATRANS,'
      '  ?MBA10002_U01.JEFEPAGOS,'
      '  ?MBA10002_U01.EMAIL,'
      '  ?MBA10002_U01.COMENTARIOS,'
      '  ?MBA10002_U01.JEFECOMPRAS,'
      '  ?MBA10002_U01.CURP2,'
      '  ?MBA10002_U01.ENTREGAR,'
      '  ?MBA10002_U01.NUM_EXTERIOR,'
      '  ?MBA10002_U01.NUM_INTERIOR,'
      '  ?MBA10002_U01.CALLE,'
      '  ?MBA10002_U01.CUENTABANCO,'
      '  ?MBA10002_U01.METODOPAGO,'
      '  ?MBA10002_U01.EMAILPAGOS,'
      '  ?MBA10002_U01.EMAILFACTURA,'
      '  ?MBA10002_U01.REFERENCIA')
    ParamNames.Strings = (
      'CODCTEPROV'
      'RAZSOCIAL'
      'NUMAGENTE'
      'CODPOSTAL'
      'COLONIACTE'
      'DOMICILIO'
      'EDOACTCTE'
      'ESTADOCTE'
      'FECHAALTA'
      'FECBAJACTE'
      'LIMCREDCTE'
      'LISTPRECIO'
      'MONEDACTE'
      'POBLACTE'
      'RFC'
      'RUTA'
      'TELEFONO1'
      'TELEFONO2'
      'TELEFONO3'
      'ZONA'
      'DIASCREDIT'
      'PAISCTE'
      'DIASPPAGO'
      'PDESCPPAGO'
      'CURP'
      'VIATRANS'
      'JEFEPAGOS'
      'EMAIL'
      'COMENTARIOS'
      'JEFECOMPRAS'
      'CURP2'
      'ENTREGAR'
      'NUM_EXTERIOR'
      'NUM_INTERIOR'
      'CALLE'
      'CUENTABANCO'
      'METODOPAGO'
      'EMAILPAGOS'
      'EMAILFACTURA'
      'REFERENCIA')
    StoredProcName = 'MBA10002_U01'
    Left = 145
    Top = 328
  end
  object icuListaArt2: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      
        'select * from MBA10004_SL09(?p_CodProdSer,?p_DescripPro,?p_NumAl' +
        'macen)')
    Left = 344
    Top = 384
    ParamValues = (
      'P_CODPRODSER=ASH')
  end
  object icuDesctos_Cte: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'select * from DESCTOS_CTE(?p_CodCteProv)')
    Left = 440
    Top = 400
    ParamValues = (
      'P_CODPRODSER=ASH')
  end
  object ispGen_CostosId: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE GEN_COSTOSID')
    AutoDefineParams = False
    StoredProcName = 'GEN_COSTOSID'
    Left = 560
    Top = 161
  end
  object ispCatalogoId: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE GEN_CATALOGOID')
    StoredProcName = 'GEN_CATALOGOID'
    Left = 472
    Top = 209
  end
  object ispGen_Orden: TIB_StoredProc
    DatabaseName = 'MBA'
    IB_Connection = cnMBA
    SQL.Strings = (
      'EXECUTE PROCEDURE GEN_ORDEN')
    StoredProcName = 'GEN_ORDEN'
    Left = 560
    Top = 217
  end
end
