unit ClsProducto;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls,VCIF1Lib_TLB,
     IB_Components, StrMan, ESBDates,IniFiles,
     ClsTablas;

type
  TExistencias = record
    NumAlmacen:    string;
    NombreAlmacen: string;
    Existencia:    Double;
  end;

type TProducto = class(TObject)
    constructor Create;
    destructor Destroy;
  private
// Campos de la tabla MBA10004
    FCODPRODSER:String;
    FDESCRIPPRO:String;
    FCARAC1:String;
    FCARAC2:String;
    FCARAC3:String;
    FCATEGPROD:String;
    FCODFAMILIA:String;
    FCOSTOPROM:Double;
    FCOSTOSTD:Double;
    FCOSTOTOTAL:Double;
    FDIASINVFIS:Double;
    FDISTCOMP:String;
    FDISTDEVCTE:String;
    FDISTDEVPRO:String;
    FDISTVTA:String;
    FEDOACTPROD:SmallInt;
    FESTADPROD:SmallInt;
    FEXISCONSIG:Double;
    FEXISREMIS:Double;
    FEXISTOTAL:Double;
    FEXISALMACEN:Double;
    FFECCONTEO:TDateTime;
    FFAMPRDSRV:SmallInt;
    FFECALTPROD:TDateTime;
    FFECHABAJA:TDateTime;
    FFECINIEST:TDateTime;
    FFECULTCOMP:TDateTime;
    FFECULTENTP:TDateTime;
    FFECULTSALP:TDateTime;
    FFECULTVTAP:TDateTime;
    FPCIOCOMPRA:Double;
    FDESCTO1:Double;
    FDESCTO2:Double;
    FDESCTO3:Double;
    FDESCTO4:Double;
    FDESCTO5:Double;
    FDESCTO6:Double;
    FDESCTO7:Double;
    FDESCTO8:Double;
    FDESCTO9:Double;
    FDESCTO10:Double;
    FPCIONETO:Double;
    FGTOSIMPORT:Double;
    FGTOSFLETE:Double;
    FGTOSOTROS:Double;
    FCTOREAL:Double;
    FMARGEN1:Double;
    FMARGEN2:Double;
    FMARGEN3:Double;
    FMARGEN4:Double;
    FMARGEN5:Double;
    FMARGEN6:Double;
    FMARGEN7:Double;
    FMARGEN8:Double;
    FMARGEN9:Double;
    FMARGEN10:Double;
    FPCIOVTA1:Double;
    FPCIOVTA2:Double;
    FPCIOVTA3:Double;
    FPCIOVTA4:Double;
    FPCIOVTA5:Double;
    FPCIOVTA6:Double;
    FPCIOVTA7:Double;
    FPCIOVTA8:Double;
    FPCIOVTA9:Double;
    FPCIOVTA10:Double;
    FPEDIMENTOS:SmallInt;
    FPESO:Double;
    FPORCOMVTA:Double;
    FPORDESCAUT:Double;
    FPORC2VTA:Double;
    FPORC3VTA:Double;
    FPORC4VTA:Double;
    FPORC5VTA:Double;
    FPORCMARGEN:Double;
    FSERIES:SmallInt;
    FTABMEDIDA:String;
    FTIPOPROD:String;
    FULTCOSTO:Double;
    FUNIDPEDCTE:Double;
    FUNIDPEDPRO:Double;
    FUNIVTA:String;
    FUNIADQ:String;
    FINCLUYE:String;
    FERRORCOSTO:SmallInt;
    FFECERRCOST:TDateTime;
    FCOSTOENT:Double;
    FTOTALENT:Double;
    FEXTRA1:String;
    FEXTRA2:String;
    FEXTRA3:String;
    FUSERACT1:String;
    FFECHAACT1:TDateTime;
    FUSERACT2:String;
    FFECHAACT2:TDateTime;
    FUSERACT3:String;
    FFECHAACT3:TDateTime;
    FPATHFOTO:String;
    FCODCTEPROV:String;
    FCODCTEPROV2:String;
// Campos adicionales
    FUNIVTADESC:String;  //Descripcion de Unidad de Venta
    FUNIADQDESC:String;  //Descripcion de Unidad de Compra / adquisición
    FDESCROTA:Double;
    FSTATUSROTA:SmallInt;
    FTIPOCALCULO:SmallInt;
    FMAXIMO:Double;
    FMINIMO:Double;
    FREORDEN:Double;
    FPRIORIDAD: Integer;
    FLONGITUD: Double;
    FFIGURA: String;
    FNUMALMAC: String;
// Campos adicionales
    FDESCRIPTEC: String;
    FNUMSERIE: String;
    FCAMBIO:SmallInt;
// Campos Oct/2017
    FCLAVESAT: String;
    FCLAVEUNIDAD:String;
    FCOBRO_IVA:SmallInt;
    FCOBRO_RETIVA:SmallInt;
    FCOBRO_IEPS:SmallInt;
    FPORC_IVA:Double;
    FPORC_RETIVA:Double;
    FPORC_IEPS:Double;
    FES_DLS:SmallInt;

    FError:Integer;
    oTabla:TTabla;
    icu:TIB_Cursor;
    icu0:TIB_Cursor;
    icu1:TIB_Cursor;
    icu2:TIB_Cursor;
    icu3:TIB_Cursor;

    function GetCODPRODSER:String;
    procedure SetCODPRODSER(pCODPRODSER:String);
    function GetDESCRIPPRO:String;
    procedure SetDESCRIPPRO(pDESCRIPPRO:String);
    function GetCARAC1:String;
    procedure SetCARAC1(pCARAC1:String);
    function GetCARAC2:String;
    procedure SetCARAC2(pCARAC2:String);
    function GetCARAC3:String;
    procedure SetCARAC3(pCARAC3:String);
    function GetCATEGPROD:String;
    procedure SetCATEGPROD(pCATEGPROD:String);
    function GetCODFAMILIA:String;
    procedure SetCODFAMILIA(pCODFAMILIA:String);
    function GetCOSTOPROM:Double;
    procedure SetCOSTOPROM(pCOSTOPROM:Double);
    function GetCOSTOSTD:Double;
    procedure SetCOSTOSTD(pCOSTOSTD:Double);
    function GetCOSTOTOTAL:Double;
    procedure SetCOSTOTOTAL(pCOSTOTOTAL:Double);
    function GetDIASINVFIS:Double;
    procedure SetDIASINVFIS(pDIASINVFIS:Double);
    function GetDISTCOMP:String;
    procedure SetDISTCOMP(pDISTCOMP:String);
    function GetDISTDEVCTE:String;
    procedure SetDISTDEVCTE(pDISTDEVCTE:String);
    function GetDISTDEVPRO:String;
    procedure SetDISTDEVPRO(pDISTDEVPRO:String);
    function GetDISTVTA:String;
    procedure SetDISTVTA(pDISTVTA:String);
    function GetEDOACTPROD:SmallInt;
    procedure SetEDOACTPROD(pEDOACTPROD:SmallInt);
    function GetESTADPROD:SmallInt;
    procedure SetESTADPROD(pESTADPROD:SmallInt);
    function GetEXISCONSIG:Double;
    procedure SetEXISCONSIG(pEXISCONSIG:Double);
    function GetEXISREMIS:Double;
    procedure SetEXISREMIS(pEXISREMIS:Double);
    function GetEXISTOTAL:Double;
    function GetEXISALMACEN:Double;
    procedure SetEXISTOTAL(pEXISTOTAL:Double);
    function GetFAMPRDSRV:SmallInt;
    procedure SetFAMPRDSRV(pFAMPRDSRV:SmallInt);
    function GetFECALTPROD:TDateTime;
    procedure SetFECALTPROD(pFECALTPROD:TDateTime);
    function GetFECHABAJA:TDateTime;
    procedure SetFECHABAJA(pFECHABAJA:TDateTime);
    function GetFECINIEST:TDateTime;
    procedure SetFECINIEST(pFECINIEST:TDateTime);
    function GetFECULTCOMP:TDateTime;
    procedure SetFECULTCOMP(pFECULTCOMP:TDateTime);
    function GetFECULTENTP:TDateTime;
    procedure SetFECULTENTP(pFECULTENTP:TDateTime);
    function GetFECULTSALP:TDateTime;
    procedure SetFECULTSALP(pFECULTSALP:TDateTime);
    function GetFECULTVTAP:TDateTime;
    procedure SetFECULTVTAP(pFECULTVTAP:TDateTime);
    function GetPCIOCOMPRA:Double;
    procedure SetPCIOCOMPRA(pPCIOCOMPRA:Double);
    function GetDESCTO1:Double;
    procedure SetDESCTO1(pDESCTO1:Double);
    function GetDESCTO2:Double;
    procedure SetDESCTO2(pDESCTO2:Double);
    function GetDESCTO3:Double;
    procedure SetDESCTO3(pDESCTO3:Double);
    function GetDESCTO4:Double;
    procedure SetDESCTO4(pDESCTO4:Double);
    function GetDESCTO5:Double;
    procedure SetDESCTO5(pDESCTO5:Double);
    function GetDESCTO6:Double;
    procedure SetDESCTO6(pDESCTO6:Double);
    function GetDESCTO7:Double;
    procedure SetDESCTO7(pDESCTO7:Double);
    function GetDESCTO8:Double;
    procedure SetDESCTO8(pDESCTO8:Double);
    function GetDESCTO9:Double;
    procedure SetDESCTO9(pDESCTO9:Double);
    function GetDESCTO10:Double;
    procedure SetDESCTO10(pDESCTO10:Double);
    function GetPCIONETO:Double;
    procedure SetPCIONETO(pPCIONETO:Double);
    function GetGTOSIMPORT:Double;
    procedure SetGTOSIMPORT(pGTOSIMPORT:Double);
    function GetGTOSFLETE:Double;
    procedure SetGTOSFLETE(pGTOSFLETE:Double);
    function GetGTOSOTROS:Double;
    procedure SetGTOSOTROS(pGTOSOTROS:Double);
    function GetCTOREAL:Double;
    procedure SetCTOREAL(pCTOREAL:Double);
    function GetMARGEN1:Double;
    procedure SetMARGEN1(pMARGEN1:Double);
    function GetMARGEN2:Double;
    procedure SetMARGEN2(pMARGEN2:Double);
    function GetMARGEN3:Double;
    procedure SetMARGEN3(pMARGEN3:Double);
    function GetMARGEN4:Double;
    procedure SetMARGEN4(pMARGEN4:Double);
    function GetMARGEN5:Double;
    procedure SetMARGEN5(pMARGEN5:Double);
    function GetMARGEN6:Double;
    procedure SetMARGEN6(pMARGEN6:Double);
    function GetMARGEN7:Double;
    procedure SetMARGEN7(pMARGEN7:Double);
    function GetMARGEN8:Double;
    procedure SetMARGEN8(pMARGEN8:Double);
    function GetMARGEN9:Double;
    procedure SetMARGEN9(pMARGEN9:Double);
    function GetMARGEN10:Double;
    procedure SetMARGEN10(pMARGEN10:Double);
    function GetPCIOVTA1:Double;
    procedure SetPCIOVTA1(pPCIOVTA1:Double);
    function GetPCIOVTA2:Double;
    procedure SetPCIOVTA2(pPCIOVTA2:Double);
    function GetPCIOVTA3:Double;
    procedure SetPCIOVTA3(pPCIOVTA3:Double);
    function GetPCIOVTA4:Double;
    procedure SetPCIOVTA4(pPCIOVTA4:Double);
    function GetPCIOVTA5:Double;
    procedure SetPCIOVTA5(pPCIOVTA5:Double);
    function GetPCIOVTA6:Double;
    procedure SetPCIOVTA6(pPCIOVTA6:Double);
    function GetPCIOVTA7:Double;
    procedure SetPCIOVTA7(pPCIOVTA7:Double);
    function GetPCIOVTA8:Double;
    procedure SetPCIOVTA8(pPCIOVTA8:Double);
    function GetPCIOVTA9:Double;
    procedure SetPCIOVTA9(pPCIOVTA9:Double);
    function GetPCIOVTA10:Double;
    procedure SetPCIOVTA10(pPCIOVTA10:Double);
    function GetPEDIMENTOS:SmallInt;
    procedure SetPEDIMENTOS(pPEDIMENTOS:SmallInt);
    function GetPESO:Double;
    procedure SetPESO(pPESO:Double);
    function GetPORCOMVTA:Double;
    procedure SetPORCOMVTA(pPORCOMVTA:Double);
    function GetPORDESCAUT:Double;
    procedure SetPORDESCAUT(pPORDESCAUT:Double);
    function GetPORC2VTA:Double;
    procedure SetPORC2VTA(pPORC2VTA:Double);
    function GetPORC3VTA:Double;
    procedure SetPORC3VTA(pPORC3VTA:Double);
    function GetPORC4VTA:Double;
    procedure SetPORC4VTA(pPORC4VTA:Double);
    function GetPORC5VTA:Double;
    procedure SetPORC5VTA(pPORC5VTA:Double);
    function GetPORCMARGEN:Double;
    procedure SetPORCMARGEN(pPORCMARGEN:Double);
    function GetSERIES:SmallInt;
    procedure SetSERIES(pSERIES:SmallInt);
    function GetTABMEDIDA:String;
    procedure SetTABMEDIDA(pTABMEDIDA:String);
    function GetTIPOPROD:String;
    procedure SetTIPOPROD(pTIPOPROD:String);
    function GetULTCOSTO:Double;
    procedure SetULTCOSTO(pULTCOSTO:Double);
    function GetUNIDPEDCTE:Double;
    procedure SetUNIDPEDCTE(pUNIDPEDCTE:Double);
    function GetUNIDPEDPRO:Double;
    procedure SetUNIDPEDPRO(pUNIDPEDPRO:Double);
    function GetUNIVTA:String;
    procedure SetUNIVTA(pUNIVTA:String);
    function GetUNIADQ:String;
    procedure SetUNIADQ(pUNIADQ:String);
    function GetINCLUYE:String;
    procedure SetINCLUYE(pINCLUYE:String);
    function GetERRORCOSTO:SmallInt;
    procedure SetERRORCOSTO(pERRORCOSTO:SmallInt);
    function GetFECERRCOST:TDateTime;
    procedure SetFECERRCOST(pFECERRCOST:TDateTime);
    function GetCOSTOENT:Double;
    procedure SetCOSTOENT(pCOSTOENT:Double);
    function GetTOTALENT:Double;
    procedure SetTOTALENT(pTOTALENT:Double);
    function GetEXTRA1:String;
    procedure SetEXTRA1(pEXTRA1:String);
    function GetEXTRA2:String;
    procedure SetEXTRA2(pEXTRA2:String);
    function GetEXTRA3:String;
    procedure SetEXTRA3(pEXTRA3:String);
    function GetUSERACT1:String;
    procedure SetUSERACT1(pUSERACT1:String);
    function GetFECHAACT1:TDateTime;
    procedure SetFECHAACT1(pFECHAACT1:TDateTime);
    function GetUSERACT2:String;
    procedure SetUSERACT2(pUSERACT2:String);
    function GetFECHAACT2:TDateTime;
    procedure SetFECHAACT2(pFECHAACT2:TDateTime);
    function GetUSERACT3:String;
    procedure SetUSERACT3(pUSERACT3:String);
    function GetFECHAACT3:TDateTime;
    procedure SetFECHAACT3(pFECHAACT3:TDateTime);
    function GetPATHFOTO:String;
    procedure SetPATHFOTO(pPATHFOTO:String);

  public
    property CODPRODSER: String read GetCODPRODSER  write SetCODPRODSER;
    property CODPRODSER_SF: String read FCODPRODSER  write FCODPRODSER;
    property DESCRIPPRO: String read GetDESCRIPPRO  write SetDESCRIPPRO;
    property CARAC1: String read GetCARAC1  write SetCARAC1;
    property CARAC2: String read GetCARAC2  write SetCARAC2;
    property CARAC3: String read GetCARAC3  write SetCARAC3;
    property CATEGPROD: String read GetCATEGPROD  write SetCATEGPROD;
    property CODFAMILIA: String read GetCODFAMILIA  write SetCODFAMILIA;
    property COSTOPROM: Double read GetCOSTOPROM  write SetCOSTOPROM;
    property COSTOSTD: Double read GetCOSTOSTD  write SetCOSTOSTD;
    property COSTOTOTAL: Double read GetCOSTOTOTAL  write SetCOSTOTOTAL;
    property DIASINVFIS: Double read GetDIASINVFIS  write SetDIASINVFIS;
    property DISTCOMP: String read GetDISTCOMP  write SetDISTCOMP;
    property DISTDEVCTE: String read GetDISTDEVCTE  write SetDISTDEVCTE;
    property DISTDEVPRO: String read GetDISTDEVPRO  write SetDISTDEVPRO;
    property DISTVTA: String read GetDISTVTA  write SetDISTVTA;
    property EDOACTPROD: SmallInt read GetEDOACTPROD  write SetEDOACTPROD;
    property ESTADPROD: SmallInt read GetESTADPROD  write SetESTADPROD;
    property EXISCONSIG: Double read GetEXISCONSIG  write SetEXISCONSIG;
    property EXISREMIS: Double read GetEXISREMIS  write SetEXISREMIS;
    property EXISTOTAL: Double read GetEXISTOTAL  write SetEXISTOTAL;
    property EXISALMACEN: Double read GetEXISALMACEN;
    property FECCONTEO: TDateTime read FFECCONTEO  write FFECCONTEO;
    property FAMPRDSRV: SmallInt read GetFAMPRDSRV  write SetFAMPRDSRV;
    property FECALTPROD: TDateTime read GetFECALTPROD  write SetFECALTPROD;
    property FECHABAJA: TDateTime read GetFECHABAJA  write SetFECHABAJA;
    property FECINIEST: TDateTime read GetFECINIEST  write SetFECINIEST;
    property FECULTCOMP: TDateTime read GetFECULTCOMP  write SetFECULTCOMP;
    property FECULTENTP: TDateTime read GetFECULTENTP  write SetFECULTENTP;
    property FECULTSALP: TDateTime read GetFECULTSALP  write SetFECULTSALP;
    property FECULTVTAP: TDateTime read GetFECULTVTAP  write SetFECULTVTAP;
    property PCIOCOMPRA: Double read GetPCIOCOMPRA  write SetPCIOCOMPRA;
    property DESCTO1: Double read GetDESCTO1  write SetDESCTO1;
    property DESCTO2: Double read GetDESCTO2  write SetDESCTO2;
    property DESCTO3: Double read GetDESCTO3  write SetDESCTO3;
    property DESCTO4: Double read GetDESCTO4  write SetDESCTO4;
    property DESCTO5: Double read GetDESCTO5  write SetDESCTO5;
    property DESCTO6: Double read GetDESCTO6  write SetDESCTO6;
    property DESCTO7: Double read GetDESCTO7  write SetDESCTO7;
    property DESCTO8: Double read GetDESCTO8  write SetDESCTO8;
    property DESCTO9: Double read GetDESCTO9  write SetDESCTO9;
    property DESCTO10: Double read GetDESCTO10  write SetDESCTO10;
    property PCIONETO: Double read GetPCIONETO  write SetPCIONETO;
    property GTOSIMPORT: Double read GetGTOSIMPORT  write SetGTOSIMPORT;
    property GTOSFLETE: Double read GetGTOSFLETE  write SetGTOSFLETE;
    property GTOSOTROS: Double read GetGTOSOTROS  write SetGTOSOTROS;
    property CTOREAL: Double read GetCTOREAL  write SetCTOREAL;
    property MARGEN1: Double read GetMARGEN1  write SetMARGEN1;
    property MARGEN2: Double read GetMARGEN2  write SetMARGEN2;
    property MARGEN3: Double read GetMARGEN3  write SetMARGEN3;
    property MARGEN4: Double read GetMARGEN4  write SetMARGEN4;
    property MARGEN5: Double read GetMARGEN5  write SetMARGEN5;
    property MARGEN6: Double read GetMARGEN6  write SetMARGEN6;
    property MARGEN7: Double read GetMARGEN7  write SetMARGEN7;
    property MARGEN8: Double read GetMARGEN8  write SetMARGEN8;
    property MARGEN9: Double read GetMARGEN9  write SetMARGEN9;
    property MARGEN10: Double read GetMARGEN10  write SetMARGEN10;
    property PCIOVTA1: Double read GetPCIOVTA1  write SetPCIOVTA1;
    property PCIOVTA2: Double read GetPCIOVTA2  write SetPCIOVTA2;
    property PCIOVTA3: Double read GetPCIOVTA3  write SetPCIOVTA3;
    property PCIOVTA4: Double read GetPCIOVTA4  write SetPCIOVTA4;
    property PCIOVTA5: Double read GetPCIOVTA5  write SetPCIOVTA5;
    property PCIOVTA6: Double read GetPCIOVTA6  write SetPCIOVTA6;
    property PCIOVTA7: Double read GetPCIOVTA7  write SetPCIOVTA7;
    property PCIOVTA8: Double read GetPCIOVTA8  write SetPCIOVTA8;
    property PCIOVTA9: Double read GetPCIOVTA9  write SetPCIOVTA9;
    property PCIOVTA10: Double read GetPCIOVTA10  write SetPCIOVTA10;
    property PEDIMENTOS: SmallInt read GetPEDIMENTOS  write SetPEDIMENTOS;
    property PESO: Double read GetPESO  write SetPESO;
    property PORCOMVTA: Double read GetPORCOMVTA  write SetPORCOMVTA;
    property PORDESCAUT: Double read GetPORDESCAUT  write SetPORDESCAUT;
    property PORC2VTA: Double read GetPORC2VTA  write SetPORC2VTA;
    property PORC3VTA: Double read GetPORC3VTA  write SetPORC3VTA;
    property PORC4VTA: Double read GetPORC4VTA  write SetPORC4VTA;
    property PORC5VTA: Double read GetPORC5VTA  write SetPORC5VTA;
    property PORCMARGEN: Double read GetPORCMARGEN  write SetPORCMARGEN;
    property SERIES: SmallInt read GetSERIES  write SetSERIES;
    property TABMEDIDA: String read GetTABMEDIDA  write SetTABMEDIDA;
    property TIPOPROD: String read GetTIPOPROD  write SetTIPOPROD;
    property ULTCOSTO: Double read GetULTCOSTO  write SetULTCOSTO;
    property UNIDPEDCTE: Double read GetUNIDPEDCTE  write SetUNIDPEDCTE;
    property UNIDPEDPRO: Double read GetUNIDPEDPRO  write SetUNIDPEDPRO;
    property UNIVTA: String read GetUNIVTA  write SetUNIVTA;
    property UNIADQ: String read GetUNIADQ  write SetUNIADQ;
    property INCLUYE: String read GetINCLUYE  write SetINCLUYE;
    property ERRORCOSTO: SmallInt read GetERRORCOSTO  write SetERRORCOSTO;
    property FECERRCOST: TDateTime read GetFECERRCOST  write SetFECERRCOST;
    property COSTOENT: Double read GetCOSTOENT  write SetCOSTOENT;
    property TOTALENT: Double read GetTOTALENT  write SetTOTALENT;
    property EXTRA1: String read GetEXTRA1  write SetEXTRA1;
    property EXTRA2: String read GetEXTRA2  write SetEXTRA2;
    property EXTRA3: String read GetEXTRA3  write SetEXTRA3;
    property USERACT1: String read GetUSERACT1  write SetUSERACT1;
    property FECHAACT1: TDateTime read GetFECHAACT1  write SetFECHAACT1;
    property USERACT2: String read GetUSERACT2  write SetUSERACT2;
    property FECHAACT2: TDateTime read GetFECHAACT2  write SetFECHAACT2;
    property USERACT3: String read GetUSERACT3  write SetUSERACT3;
    property FECHAACT3: TDateTime read GetFECHAACT3  write SetFECHAACT3;
    property PATHFOTO: String read GetPATHFOTO  write SetPATHFOTO;
    property CODCTEPROV: String read FCODCTEPROV  write FCODCTEPROV;
    property CODCTEPROV2: String read FCODCTEPROV2  write FCODCTEPROV2;

    property UNIVTADESC:String read FUNIVTADESC;
    property DESCROTA:Double read FDESCROTA write FDESCROTA;
    property STATUSROTA:smallint read FSTATUSROTA write FSTATUSROTA;
    property TIPOCALCULO:smallint read FTIPOCALCULO write FTIPOCALCULO;
    property MAXIMO:Double  read FMAXIMO  write FMAXIMO;
    property MINIMO:Double  read FMINIMO  write FMINIMO;
    property REORDEN:Double  read FREORDEN  write FREORDEN;
    property PRIORIDAD: Integer  read FPRIORIDAD  write FPRIORIDAD;
    property LONGITUD: Double  read FLONGITUD  write FLONGITUD;
    property FIGURA: String  read FFIGURA  write FFIGURA;

    property NUMALMAC: String  read FNUMALMAC  write FNUMALMAC;

    property DESCRIPTEC: String  read FDESCRIPTEC  write FDESCRIPTEC;
    property NUMSERIE: String  read FNUMSERIE  write FNUMSERIE;
    property CAMBIO:smallint read FCAMBIO write FCAMBIO;

    property CLAVESAT:String       read FCLAVESAT     write FCLAVESAT;
    property CLAVEUNIDAD:String    read FCLAVEUNIDAD  write FCLAVEUNIDAD;
    property COBRO_IVA:smallint    read FCOBRO_IVA    write FCOBRO_IVA;
    property COBRO_RETIVA:smallint read FCOBRO_RETIVA write FCOBRO_RETIVA;
    property COBRO_IEPS:smallint   read FCOBRO_IEPS   write FCOBRO_IEPS;
    property PORC_IVA:Double       read FPORC_IVA     write FPORC_IVA;
    property PORC_RETIVA:Double    read FPORC_RETIVA  write FPORC_RETIVA;
    property PORC_IEPS:Double      read FPORC_IEPS    write FPORC_IEPS;
    property ES_DLS:smallint       read FES_DLS       write FES_DLS;


    property Error:Integer read FError write FError;
    procedure Retrieve;
    procedure RetrieveHRC(AHoja,ARen,ACol:Integer);
    procedure RetrieveDescri(ADescri:String);
    procedure Save;
    procedure Delete;
    procedure Clear;
    function  GetPrecio(piLista:Integer):Double;
    function FormateaCodigo(ptCodigo :String):String;
    function ValidarCodigo(ACodigo:String):Integer;
    procedure CalculaExistencias;
    function GetExistencia(ANumAlmac:String):Double;
end;

function GetNombreStatusRota(piNumero:Smallint):String;

var
  aExistencia: array [1..10] of TExistencias;

implementation

uses DM_MBA;
{==================================================================
Implementacion: TProducto
==================================================================}
constructor TProducto.Create;
begin
  inherited Create;  // Inicializa las partes heredadas
  oTabla := TTabla.Create;
  icu := TIB_Cursor.Create(nil);
  icu.IB_Connection := DM1.cnMBA;
  icu.IB_Transaction := DM1.trMBA;
  icu.SQL.Clear;
  icu.SQL.Add('Select sum(ExisIniPer+EntPerExis-SalPerExis) from MBA10016 where CodProdSer = ?CodProdSer;');
  icu.Prepare;

  icu0 := TIB_Cursor.Create(nil);
  icu0.IB_Connection := DM1.cnMBA;
  icu0.IB_Transaction := DM1.trMBA;
  icu0.SQL.Clear;
  icu0.SQL.Add('Select ExisIniPer+EntPerExis-SalPerExis, fecconteo from MBA10016 where (CodProdSer = ?CodProdSer) AND (NUMALMAC = ?NumAlmac);');
  icu0.Prepare;

  icu1 := TIB_Cursor.Create(nil);
  icu1.IB_Connection := DM1.cnMBA;
  icu1.IB_Transaction := DM1.trMBA;
  icu1.SQL.Clear;
  icu1.SQL.Add('Select CODPRODSER FROM MBA10004 WHERE (HOJA =?HOJA) AND (REN = ?REN) AND (COL = ?COL);');
  icu1.Prepare;

  icu2 := TIB_Cursor.Create(nil);
  icu2.IB_Connection := DM1.cnMBA;
  icu2.IB_Transaction := DM1.trMBA;
  icu2.SQL.Clear;
  icu2.SQL.Add('Select CODPRODSER,DESCRIPPRO,CTOREAL,UNIVTA FROM MBA10004 WHERE (DESCRIPPRO = ?DESCRIPPRO);');
  icu2.Prepare;

  icu3 := TIB_Cursor.Create(nil);
  icu3.IB_Connection := DM1.cnMBA;
  icu3.IB_Transaction := DM1.trMBA;
  icu3.SQL.Clear;
  icu3.SQL.Add('Select * from EXISTENCIAS_ALMACEN1(?CodProdSer)');
  icu3.Prepare;

end;


destructor TProducto.Destroy;
begin
    icu.Free;
    oTabla.Free;
    inherited Destroy;
end;

function  TProducto.GetPrecio(piLista:Integer):Double;
begin
    case piLista of
    0,1: Result := PCIOVTA1;
    2: Result := PCIOVTA2;
    3: Result := PCIOVTA3;
    4: Result := PCIOVTA4;
    5: Result := PCIOVTA5;
    6: Result := PCIOVTA6;
    7: Result := PCIOVTA7;
    8: Result := PCIOVTA8;
    9: Result := PCIOVTA9;
    10: Result := PCIOVTA10;
    else
        Result := PCIOVTA1;
    end;
end;

procedure TProducto.Retrieve;
begin
//
    DM1.ispProd_S.ParamByName('P_CODPRODSER').AsString := FCODPRODSER;

    DM1.ispProd_S.ExecProc;

//    FCODPRODSER := DM1.ispProd_S.FieldByName('CODPRODSER').String;
    FDESCRIPPRO   := DM1.ispProd_S.FieldByName('DESCRIPPRO').AsString;
    FCARAC1       := DM1.ispProd_S.FieldByName('CARAC1').AsString;
    FCARAC2       := DM1.ispProd_S.FieldByName('CARAC2').AsString;
    FCARAC3       := DM1.ispProd_S.FieldByName('CARAC3').AsString;
    FCATEGPROD    := DM1.ispProd_S.FieldByName('CATEGPROD').AsString;
    FCODFAMILIA   := DM1.ispProd_S.FieldByName('CODFAMILIA').AsString;
    FCOSTOPROM    := DM1.ispProd_S.FieldByName('COSTOPROM').AsDouble;
    FCOSTOSTD     := DM1.ispProd_S.FieldByName('COSTOSTD').AsDouble;
    FCOSTOTOTAL   := DM1.ispProd_S.FieldByName('COSTOTOTAL').AsDouble;
    FDIASINVFIS   := DM1.ispProd_S.FieldByName('DIASINVFIS').AsDouble;
    FDISTCOMP     := DM1.ispProd_S.FieldByName('DISTCOMP').AsString;
    FDISTDEVCTE   := DM1.ispProd_S.FieldByName('DISTDEVCTE').AsString;
    FDISTDEVPRO   := DM1.ispProd_S.FieldByName('DISTDEVPRO').AsString;
    FDISTVTA      := DM1.ispProd_S.FieldByName('DISTVTA').AsString;
    FEDOACTPROD   := DM1.ispProd_S.FieldByName('EDOACTPROD').AsSmallInt;
    FESTADPROD    := DM1.ispProd_S.FieldByName('ESTADPROD').AsSmallInt;
    FEXISCONSIG   := DM1.ispProd_S.FieldByName('EXISCONSIG').AsDouble;
    FEXISREMIS    := DM1.ispProd_S.FieldByName('EXISREMIS').AsDouble;
    FEXISTOTAL    := DM1.ispProd_S.FieldByName('EXISTOTAL').AsDouble;
    FFAMPRDSRV    := DM1.ispProd_S.FieldByName('FAMPRDSRV').AsSmallInt;
    FFECALTPROD   := DM1.ispProd_S.FieldByName('FECALTPROD').AsDateTime;
    FFECHABAJA    := DM1.ispProd_S.FieldByName('FECHABAJA').AsDateTime;
    FFECINIEST    := DM1.ispProd_S.FieldByName('FECINIEST').AsDateTime;
    FFECULTCOMP   := DM1.ispProd_S.FieldByName('FECULTCOMP').AsDateTime;
    FFECULTENTP   := DM1.ispProd_S.FieldByName('FECULTENTP').AsDateTime;
    FFECULTSALP   := DM1.ispProd_S.FieldByName('FECULTSALP').AsDateTime;
    FFECULTVTAP   := DM1.ispProd_S.FieldByName('FECULTVTAP').AsDateTime;
    FPCIOCOMPRA   := DM1.ispProd_S.FieldByName('PCIOCOMPRA').AsDouble;
    FDESCTO1      := DM1.ispProd_S.FieldByName('DESCTO1').AsDouble;
    FDESCTO2      := DM1.ispProd_S.FieldByName('DESCTO2').AsDouble;
    FDESCTO3      := DM1.ispProd_S.FieldByName('DESCTO3').AsDouble;
    FDESCTO4      := DM1.ispProd_S.FieldByName('DESCTO4').AsDouble;
    FDESCTO5      := DM1.ispProd_S.FieldByName('DESCTO5').AsDouble;
    FDESCTO6      := DM1.ispProd_S.FieldByName('DESCTO6').AsDouble;
    FDESCTO7      := DM1.ispProd_S.FieldByName('DESCTO7').AsDouble;
    FDESCTO8      := DM1.ispProd_S.FieldByName('DESCTO8').AsDouble;
    FDESCTO9      := DM1.ispProd_S.FieldByName('DESCTO9').AsDouble;
    FDESCTO10     := DM1.ispProd_S.FieldByName('DESCTO10').AsDouble;
    FPCIONETO     := DM1.ispProd_S.FieldByName('PCIONETO').AsDouble;
    FGTOSIMPORT   := DM1.ispProd_S.FieldByName('GTOSIMPORT').AsDouble;
    FGTOSFLETE    := DM1.ispProd_S.FieldByName('GTOSFLETE').AsDouble;
    FGTOSOTROS    := DM1.ispProd_S.FieldByName('GTOSOTROS').AsDouble;
    FCTOREAL      := DM1.ispProd_S.FieldByName('CTOREAL').AsDouble;
    FMARGEN1      := DM1.ispProd_S.FieldByName('MARGEN1').AsDouble;
    FMARGEN2      := DM1.ispProd_S.FieldByName('MARGEN2').AsDouble;
    FMARGEN3      := DM1.ispProd_S.FieldByName('MARGEN3').AsDouble;
    FMARGEN4      := DM1.ispProd_S.FieldByName('MARGEN4').AsDouble;
    FMARGEN5      := DM1.ispProd_S.FieldByName('MARGEN5').AsDouble;
    FMARGEN6      := DM1.ispProd_S.FieldByName('MARGEN6').AsDouble;
    FMARGEN7      := DM1.ispProd_S.FieldByName('MARGEN7').AsDouble;
    FMARGEN8      := DM1.ispProd_S.FieldByName('MARGEN8').AsDouble;
    FMARGEN9      := DM1.ispProd_S.FieldByName('MARGEN9').AsDouble;
    FMARGEN10     := DM1.ispProd_S.FieldByName('MARGEN10').AsDouble;
    FPCIOVTA1     := DM1.ispProd_S.FieldByName('PCIOVTA1').AsDouble;
    FPCIOVTA2     := DM1.ispProd_S.FieldByName('PCIOVTA2').AsDouble;
    FPCIOVTA3     := DM1.ispProd_S.FieldByName('PCIOVTA3').AsDouble;
    FPCIOVTA4     := DM1.ispProd_S.FieldByName('PCIOVTA4').AsDouble;
    FPCIOVTA5     := DM1.ispProd_S.FieldByName('PCIOVTA5').AsDouble;
    FPCIOVTA6     := DM1.ispProd_S.FieldByName('PCIOVTA6').AsDouble;
    FPCIOVTA7     := DM1.ispProd_S.FieldByName('PCIOVTA7').AsDouble;
    FPCIOVTA8     := DM1.ispProd_S.FieldByName('PCIOVTA8').AsDouble;
    FPCIOVTA9     := DM1.ispProd_S.FieldByName('PCIOVTA9').AsDouble;
    FPCIOVTA10    := DM1.ispProd_S.FieldByName('PCIOVTA10').AsDouble;
    FPEDIMENTOS   := DM1.ispProd_S.FieldByName('PEDIMENTOS').AsSmallInt;
    FPESO         := DM1.ispProd_S.FieldByName('PESO').AsDouble;
    FPORCOMVTA    := DM1.ispProd_S.FieldByName('PORCOMVTA').AsDouble;
    FPORDESCAUT   := DM1.ispProd_S.FieldByName('PORDESCAUT').AsDouble;
    FPORC2VTA     := DM1.ispProd_S.FieldByName('PORC2VTA').AsDouble;
    FPORC3VTA     := DM1.ispProd_S.FieldByName('PORC3VTA').AsDouble;
    FPORC4VTA     := DM1.ispProd_S.FieldByName('PORC4VTA').AsDouble;
    FPORC5VTA     := DM1.ispProd_S.FieldByName('PORC5VTA').AsDouble;
    FPORCMARGEN   := DM1.ispProd_S.FieldByName('PORCMARGEN').AsDouble;
    FSERIES       := DM1.ispProd_S.FieldByName('SERIES').AsSmallInt;
    FTABMEDIDA    := DM1.ispProd_S.FieldByName('TABMEDIDA').AsString;
    FTIPOPROD     := DM1.ispProd_S.FieldByName('TIPOPROD').AsString;
    FULTCOSTO     := DM1.ispProd_S.FieldByName('ULTCOSTO').AsDouble;
    FUNIDPEDCTE   := DM1.ispProd_S.FieldByName('UNIDPEDCTE').AsDouble;
    FUNIDPEDPRO   := DM1.ispProd_S.FieldByName('UNIDPEDPRO').AsDouble;
    FUNIVTA       := DM1.ispProd_S.FieldByName('UNIVTA').AsString;
    FUNIADQ       := DM1.ispProd_S.FieldByName('UNIADQ').AsString;
    FINCLUYE      := DM1.ispProd_S.FieldByName('INCLUYE').AsString;
    FERRORCOSTO   := DM1.ispProd_S.FieldByName('ERRORCOSTO').AsSmallInt;
    FFECERRCOST   := DM1.ispProd_S.FieldByName('FECERRCOST').AsDateTime;
    FCOSTOENT     := DM1.ispProd_S.FieldByName('COSTOENT').AsDouble;
    FTOTALENT     := DM1.ispProd_S.FieldByName('TOTALENT').AsDouble;
    FEXTRA1       := DM1.ispProd_S.FieldByName('EXTRA1').AsString;
    FEXTRA2       := DM1.ispProd_S.FieldByName('EXTRA2').AsString;
    FEXTRA3       := DM1.ispProd_S.FieldByName('EXTRA3').AsString;
    FUSERACT1     := DM1.ispProd_S.FieldByName('USERACT1').AsString;
    FFECHAACT1    := DM1.ispProd_S.FieldByName('FECHAACT1').AsDateTime;
    FUSERACT2     := DM1.ispProd_S.FieldByName('USERACT2').AsString;
    FFECHAACT2    := DM1.ispProd_S.FieldByName('FECHAACT2').AsDateTime;
    FUSERACT3     := DM1.ispProd_S.FieldByName('USERACT3').AsString;
    FFECHAACT3    := DM1.ispProd_S.FieldByName('FECHAACT3').AsDateTime;
    FPATHFOTO     := DM1.ispProd_S.FieldByName('PATHFOTO').AsString;
    FCODCTEPROV   := DM1.ispProd_S.FieldByName('CODCTEPROV').AsString;
    FCODCTEPROV2  := DM1.ispProd_S.FieldByName('CODCTEPROV2').AsString;
    FDESCRIPTEC   := DM1.ispProd_S.FieldByName('DESCRIPTEC').AsString;

    SetUniVta(FUNIVTA);

    FDESCROTA     := DM1.ispProd_S.FieldByName('DESCROTA').AsDouble;
    FSTATUSROTA   := DM1.ispProd_S.FieldByName('STATUSROTA').AsSmallint;
    FTIPOCALCULO  := DM1.ispProd_S.FieldByName('TIPOCALCULO').AsSmallInt;
    FMAXIMO       := DM1.ispProd_S.FieldByName('MAXIMO').AsDouble;
    FMINIMO       := DM1.ispProd_S.FieldByName('MINIMO').AsDouble;
    FREORDEN      := DM1.ispProd_S.FieldByName('REORDEN').AsDouble;
    FPRIORIDAD    := DM1.ispProd_S.FieldByName('PRIORIDAD').AsInteger;
    FLONGITUD     := DM1.ispProd_S.FieldByName('LONGITUD').AsDouble;
    FFIGURA       := DM1.ispProd_S.FieldByName('FIGURA').AsString;
    FNUMSERIE     := DM1.ispProd_S.FieldByName('NUMSERIE').AsString;
    FCAMBIO       := DM1.ispProd_S.FieldByName('CAMBIO').AsSmallInt;

    FCLAVESAT     := DM1.ispProd_S.FieldByName('CLAVEPRODSERV').AsString;
    FCLAVEUNIDAD  := DM1.ispProd_S.FieldByName('CLAVEUNIDAD').AsString;
    FCOBRO_IVA    := DM1.ispProd_S.FieldByName('COBRO_IVA').AsSmallInt;
    FCOBRO_RETIVA := DM1.ispProd_S.FieldByName('COBRO_RETIVA').AsSmallInt;
    FCOBRO_IEPS   := DM1.ispProd_S.FieldByName('COBRO_IEPS').AsSmallInt;
    FPORC_IVA     := DM1.ispProd_S.FieldByName('PORC_IVA').AsDouble;
    FPORC_RETIVA  := DM1.ispProd_S.FieldByName('PORC_RETIVA').AsDouble;
    FPORC_IEPS    := DM1.ispProd_S.FieldByName('PORC_IEPS').AsDouble;
    FES_DLS       := DM1.ispProd_S.FieldByName('ES_DLS').AsSmallInt;

end;
procedure TProducto.RetrieveHRC(AHoja,ARen,ACol:Integer);
begin
  FError := 0;
  icu1.Close;
  icu1.ParamByName('HOJA').AsInteger := AHoja;
  icu1.ParamByName('REN').AsInteger := ARen;
  icu1.ParamByName('COL').AsInteger := ACol;
  icu1.Open;

  if icu1.eof then begin
    FError := 10;
    icu1.Close;
    Exit;
  end;

  FCODPRODSER := icu1.FieldByName('CODPRODSER').AsString;
  Retrieve;
  icu1.Close;

end;

procedure TProducto.RetrieveDescri(ADescri:String);
begin
  FError := 0;
  icu2.Close;
  icu2.ParamByName('DESCRIPPRO').AsString := ADescri;
  icu2.Open;

  if icu2.eof then begin
    FError := 10;
    icu2.Close;
    Exit;
  end;

  FCODPRODSER := icu2.FieldByName('CODPRODSER').AsString;
  FDESCRIPPRO := icu2.FieldByName('DESCRIPPRO').AsString;
  FUNIVTA     := icu2.FieldByName('UNIVTA').AsString;
  FCTOREAL    := icu2.FieldByName('CTOREAL').AsDouble;
  icu2.Close;

end;

procedure TProducto.Save;
var iFolio:Integer;
begin
//

    DM1.ispProd_U.ParamByName('CODPRODSER').AsString := FCODPRODSER;
    DM1.ispProd_U.ParamByName('DESCRIPPRO').AsString := FDESCRIPPRO;
//    DM1.ispProd_U.ParamByName('CARAC1').AsString := FCARAC1;
//    DM1.ispProd_U.ParamByName('CARAC2').AsString := FCARAC2;
//    DM1.ispProd_U.ParamByName('CARAC3').AsString := FCARAC3;
//    DM1.ispProd_U.ParamByName('CATEGPROD').AsString := FCATEGPROD;
    DM1.ispProd_U.ParamByName('CODFAMILIA').AsString := FCODFAMILIA;
    DM1.ispProd_U.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;
//    DM1.ispProd_U.ParamByName('COSTOPROM').AsDouble := FCOSTOPROM;
//    DM1.ispProd_U.ParamByName('COSTOSTD').AsDouble := FCOSTOSTD;
//    DM1.ispProd_U.ParamByName('COSTOTOTAL').AsDouble := FCOSTOTOTAL;
//    DM1.ispProd_U.ParamByName('DIASINVFIS').AsDouble := FDIASINVFIS;
//    DM1.ispProd_U.ParamByName('DISTCOMP').AsString := FDISTCOMP;
//    DM1.ispProd_U.ParamByName('DISTDEVCTE').AsString := FDISTDEVCTE;
//    DM1.ispProd_U.ParamByName('DISTDEVPRO').AsString := FDISTDEVPRO;
//    DM1.ispProd_U.ParamByName('DISTVTA').AsString := FDISTVTA;
    DM1.ispProd_U.ParamByName('EDOACTPROD').AsSmallInt := FEDOACTPROD;
//    DM1.ispProd_U.ParamByName('ESTADPROD').AsSmallInt := FESTADPROD;
//    DM1.ispProd_U.ParamByName('EXISCONSIG').AsDouble := FEXISCONSIG;
//    DM1.ispProd_U.ParamByName('EXISREMIS').AsDouble := FEXISREMIS;
//    DM1.ispProd_U.ParamByName('EXISTOTAL').AsDouble := FEXISTOTAL;
//    DM1.ispProd_U.ParamByName('FAMPRDSRV').AsSmallInt := FFAMPRDSRV;
    DM1.ispProd_U.ParamByName('FECALTPROD').AsDateTime := FFECALTPROD;
//    DM1.ispProd_U.ParamByName('FECHABAJA').AsDateTime := FFECHABAJA;
//    DM1.ispProd_U.ParamByName('FECINIEST').AsDateTime := FFECINIEST;
//    DM1.ispProd_U.ParamByName('FECULTCOMP').AsDateTime := FFECULTCOMP;
//    DM1.ispProd_U.ParamByName('FECULTENTP').AsDateTime := FFECULTENTP;
//    DM1.ispProd_U.ParamByName('FECULTSALP').AsDateTime := FFECULTSALP;
//    DM1.ispProd_U.ParamByName('FECULTVTAP').AsDateTime := FFECULTVTAP;
//    DM1.ispProd_U.ParamByName('PCIOCOMPRA').AsDouble := FPCIOCOMPRA;
//    DM1.ispProd_U.ParamByName('DESCTO1').AsDouble := FDESCTO1;
//    DM1.ispProd_U.ParamByName('DESCTO2').AsDouble := FDESCTO2;
//    DM1.ispProd_U.ParamByName('DESCTO3').AsDouble := FDESCTO3;
//    DM1.ispProd_U.ParamByName('DESCTO4').AsDouble := FDESCTO4;
//    DM1.ispProd_U.ParamByName('DESCTO5').AsDouble := FDESCTO5;
//    DM1.ispProd_U.ParamByName('DESCTO6').AsDouble := FDESCTO6;
//    DM1.ispProd_U.ParamByName('DESCTO7').AsDouble := FDESCTO7;
//    DM1.ispProd_U.ParamByName('DESCTO8').AsDouble := FDESCTO8;
//    DM1.ispProd_U.ParamByName('DESCTO9').AsDouble := FDESCTO9;
//    DM1.ispProd_U.ParamByName('DESCTO10').AsDouble := FDESCTO10;
//    DM1.ispProd_U.ParamByName('PCIONETO').AsDouble := FPCIONETO;
//    DM1.ispProd_U.ParamByName('GTOSIMPORT').AsDouble := FGTOSIMPORT;
//    DM1.ispProd_U.ParamByName('GTOSFLETE').AsDouble := FGTOSFLETE;
//    DM1.ispProd_U.ParamByName('GTOSOTROS').AsDouble := FGTOSOTROS;
    DM1.ispProd_U.ParamByName('CTOREAL').AsDouble := FCTOREAL;
//    DM1.ispProd_U.ParamByName('MARGEN1').AsDouble := FMARGEN1;
//    DM1.ispProd_U.ParamByName('MARGEN2').AsDouble := FMARGEN2;
//    DM1.ispProd_U.ParamByName('MARGEN3').AsDouble := FMARGEN3;
//    DM1.ispProd_U.ParamByName('MARGEN4').AsDouble := FMARGEN4;
//    DM1.ispProd_U.ParamByName('MARGEN5').AsDouble := FMARGEN5;
//    DM1.ispProd_U.ParamByName('MARGEN6').AsDouble := FMARGEN6;
//    DM1.ispProd_U.ParamByName('MARGEN7').AsDouble := FMARGEN7;
//    DM1.ispProd_U.ParamByName('MARGEN8').AsDouble := FMARGEN8;
//    DM1.ispProd_U.ParamByName('MARGEN9').AsDouble := FMARGEN9;
//    DM1.ispProd_U.ParamByName('MARGEN10').AsDouble := FMARGEN10;
    DM1.ispProd_U.ParamByName('PCIOVTA1').AsDouble := FPCIOVTA1;
    DM1.ispProd_U.ParamByName('PCIOVTA2').AsDouble := FPCIOVTA2;
//    DM1.ispProd_U.ParamByName('PCIOVTA3').AsDouble := FPCIOVTA3;
//    DM1.ispProd_U.ParamByName('PCIOVTA4').AsDouble := FPCIOVTA4;
//    DM1.ispProd_U.ParamByName('PCIOVTA5').AsDouble := FPCIOVTA5;
//    DM1.ispProd_U.ParamByName('PCIOVTA6').AsDouble := FPCIOVTA6;
//    DM1.ispProd_U.ParamByName('PCIOVTA7').AsDouble := FPCIOVTA7;
//    DM1.ispProd_U.ParamByName('PCIOVTA8').AsDouble := FPCIOVTA8;
//    DM1.ispProd_U.ParamByName('PCIOVTA9').AsDouble := FPCIOVTA9;
//    DM1.ispProd_U.ParamByName('PCIOVTA10').AsDouble := FPCIOVTA10;
//    DM1.ispProd_U.ParamByName('PEDIMENTOS').AsSmallInt := FPEDIMENTOS;
    DM1.ispProd_U.ParamByName('PESO').AsDouble := FPESO;
//    DM1.ispProd_U.ParamByName('PORCOMVTA').AsDouble := FPORCOMVTA;
//    DM1.ispProd_U.ParamByName('PORDESCAUT').AsDouble := FPORDESCAUT;
//    DM1.ispProd_U.ParamByName('PORC2VTA').AsDouble := FPORC2VTA;
//    DM1.ispProd_U.ParamByName('PORC3VTA').AsDouble := FPORC3VTA;
//    DM1.ispProd_U.ParamByName('PORC4VTA').AsDouble := FPORC4VTA;
//    DM1.ispProd_U.ParamByName('PORC5VTA').AsDouble := FPORC5VTA;
//    DM1.ispProd_U.ParamByName('PORCMARGEN').AsDouble := FPORCMARGEN;
//    DM1.ispProd_U.ParamByName('SERIES').AsSmallInt := FSERIES;
//    DM1.ispProd_U.ParamByName('TABMEDIDA').AsString := FTABMEDIDA;
//    DM1.ispProd_U.ParamByName('TIPOPROD').AsString := FTIPOPROD;
//    DM1.ispProd_U.ParamByName('ULTCOSTO').AsDouble := FULTCOSTO;
//    DM1.ispProd_U.ParamByName('UNIDPEDCTE').AsDouble := FUNIDPEDCTE;
//    DM1.ispProd_U.ParamByName('UNIDPEDPRO').AsDouble := FUNIDPEDPRO;
    DM1.ispProd_U.ParamByName('UNIVTA').AsString := FUNIVTA;
//    DM1.ispProd_U.ParamByName('UNIADQ').AsString := FUNIADQ;
//    DM1.ispProd_U.ParamByName('INCLUYE').AsString := FINCLUYE;
//    DM1.ispProd_U.ParamByName('ERRORCOSTO').AsSmallInt := FERRORCOSTO;
//    DM1.ispProd_U.ParamByName('FECERRCOST').AsDateTime := FFECERRCOST;
//    DM1.ispProd_U.ParamByName('COSTOENT').AsDouble := FCOSTOENT;
//    DM1.ispProd_U.ParamByName('TOTALENT').AsDouble := FTOTALENT;
//    DM1.ispProd_U.ParamByName('EXTRA1').AsString := FEXTRA1;
//    DM1.ispProd_U.ParamByName('EXTRA2').AsString := FEXTRA2;
//    DM1.ispProd_U.ParamByName('EXTRA3').AsString := FEXTRA3;
    DM1.ispProd_U.ParamByName('USERACT1').AsString := FUSERACT1;
    DM1.ispProd_U.ParamByName('FECHAACT1').AsDateTime := FFECHAACT1;
//    DM1.ispProd_U.ParamByName('USERACT2').AsString := FUSERACT2;
//    DM1.ispProd_U.ParamByName('FECHAACT2').AsDateTime := FFECHAACT2;
//    DM1.ispProd_U.ParamByName('USERACT3').AsString := FUSERACT3;
//    DM1.ispProd_U.ParamByName('FECHAACT3').AsDateTime := FFECHAACT3;
//    DM1.ispProd_U.ParamByName('PATHFOTO').AsString := FPATHFOTO;
//    DM1.ispProd_U.ParamByName('CODCTEPROV2').AsString := FCODCTEPROV2;
//    DM1.ispProd_U.ParamByName('DESCROTA').AsDouble := FDESCROTA;
//    DM1.ispProd_U.ParamByName('STATUSROTA').AsDouble := FSTATUSROTA;
    DM1.ispProd_U.ParamByName('TIPOCALCULO').AsSmallInt := FTIPOCALCULO;
    DM1.ispProd_U.ParamByName('MAXIMO').AsDouble := FMAXIMO;
    DM1.ispProd_U.ParamByName('MINIMO').AsDouble := FMINIMO;
    DM1.ispProd_U.ParamByName('REORDEN').AsDouble:= FREORDEN;
    DM1.ispProd_U.ParamByName('PRIORIDAD').AsInteger:= FPRIORIDAD;
    DM1.ispProd_U.ParamByName('LONGITUD').AsDouble:= FLONGITUD;
    DM1.ispProd_U.ParamByName('FIGURA').AsString:= FFIGURA;
    DM1.ispProd_U.ParamByName('NUMSERIE').AsString:= FNUMSERIE;
    DM1.ispProd_U.ParamByName('CAMBIO').AsSmallInt:= FCAMBIO;
    DM1.ispProd_U.ParamByName('TIPOPROD').AsString:= FTIPOPROD;
    DM1.ispProd_U.ParamByName('PATHFOTO').AsString:= FPATHFOTO;
    DM1.ispProd_U.ParamByName('DESCRIPTEC').AsString:= FDESCRIPTEC;


    DM1.ispProd_U.ExecProc;

end;

procedure TProducto.Delete;
begin
//
//    DM1.ispProd_U.ParamByName('CODPRODSER').AsString := FCODPRODSER;

//    DM1.ispDoc_U.ExecProc;

end;
//-------------------------------------------------------------
function TProducto.FormateaCodigo(ptCodigo :String):String;
var tKey,tLet,tNum:String;
    iPos,iCant:Integer;
begin
    tKey := sm.Strip (ptCodigo);

    iPos := pos(tKey,'-');
    if iPos <= 0 then begin
        tLet := sm.GetAlpha (tKey);
        tLet := uppercase(tLet);
        tNum := sm.GetDigit (tKey);
        tNum := sm.PadLeft (tNum,4,'0');
        tKey := tLet+'-'+tNum;
    end else begin
        tLet := copy(tKey,1,iPos-1);
        tNum := copy(tKey,iPos+1,length(tKey) - iPos);
        tNum := sm.PadLeft (tNum,4,'0');
        tKey := tLet+'-'+tNum;
    end;

    Result := tKey;
end;

procedure TProducto.Clear;
begin
    FCODPRODSER:='';
    FDESCRIPPRO:='';
    FCARAC1:='';
    FCARAC2:='';
    FCARAC3:='';
    FCATEGPROD:='';
    FCODFAMILIA:='';
    FCOSTOPROM:=0;
    FCOSTOSTD:=0;
    FCOSTOTOTAL:=0;
    FDIASINVFIS:=0;
    FDISTCOMP:='';
    FDISTDEVCTE:='';
    FDISTDEVPRO:='';
    FDISTVTA:='';
    FEDOACTPROD:=0;
    FESTADPROD:=0;
    FEXISCONSIG:=0;
    FEXISREMIS:=0;
    FEXISTOTAL:=0;
    FFAMPRDSRV:=0;
    FFECALTPROD:=1;
    FFECHABAJA:=1;
    FFECINIEST:=1;
    FFECULTCOMP:=1;
    FFECULTENTP:=1;
    FFECULTSALP:=1;
    FFECULTVTAP:=1;
    FPCIOCOMPRA:=0;
    FDESCTO1:=0;
    FDESCTO2:=0;
    FDESCTO3:=0;
    FDESCTO4:=0;
    FDESCTO5:=0;
    FDESCTO6:=0;
    FDESCTO7:=0;
    FDESCTO8:=0;
    FDESCTO9:=0;
    FDESCTO10:=0;
    FPCIONETO:=0;
    FGTOSIMPORT:=0;
    FGTOSFLETE:=0;
    FGTOSOTROS:=0;
    FCTOREAL:=0;
    FMARGEN1:=0;
    FMARGEN2:=0;
    FMARGEN3:=0;
    FMARGEN4:=0;
    FMARGEN5:=0;
    FMARGEN6:=0;
    FMARGEN7:=0;
    FMARGEN8:=0;
    FMARGEN9:=0;
    FMARGEN10:=0;
    FPCIOVTA1:=0;
    FPCIOVTA2:=0;
    FPCIOVTA3:=0;
    FPCIOVTA4:=0;
    FPCIOVTA5:=0;
    FPCIOVTA6:=0;
    FPCIOVTA7:=0;
    FPCIOVTA8:=0;
    FPCIOVTA9:=0;
    FPCIOVTA10:=0;
    FPEDIMENTOS:=0;
    FPESO:=0;
    FPORCOMVTA:=0;
    FPORDESCAUT:=0;
    FPORC2VTA:=0;
    FPORC3VTA:=0;
    FPORC4VTA:=0;
    FPORC5VTA:=0;
    FPORCMARGEN:=0;
    FSERIES:=0;
    FTABMEDIDA:='';
    FTIPOPROD:='';
    FULTCOSTO:=0;
    FUNIDPEDCTE:=0;
    FUNIDPEDPRO:=0;
    FUNIVTA:='';
    FUNIADQ:='';
    FINCLUYE:='';
    FERRORCOSTO:=0;
    FFECERRCOST:=1;
    FCOSTOENT:=0;
    FTOTALENT:=0;
    FEXTRA1:='';
    FEXTRA2:='';
    FEXTRA3:='';
    FUSERACT1:='';
    FFECHAACT1:=1;
    FUSERACT2:='';
    FFECHAACT2:=1;
    FUSERACT3:='';
    FFECHAACT3:=1;
    FPATHFOTO:='';
    FCODCTEPROV:='';
    FCODCTEPROV2:='';
    FUNIVTADESC:='';  //Descripcion de Unidad de Venta
    FUNIADQDESC:='';  //Descripcion de Unidad de Compra / adquisición
    FDESCROTA:=0;
    FSTATUSROTA:=0;
    FTIPOCALCULO:=0;
    FMAXIMO:=0;
    FMINIMO:=0;
    FREORDEN:=0;
    FPRIORIDAD:=0;
    FLONGITUD:=0;
    FFIGURA:='';

    FError:=0;
end;
//============================================================

function TProducto.GetCODPRODSER:String;
begin
    Result := FCODPRODSER
end;
procedure TProducto.SetCODPRODSER(pCODPRODSER:String);
begin
//    FCODPRODSER := FormateaCodigo(pCODPRODSER);
//-- Le quite el formateo debido a que en AR no se utiliza,
//-- y talvez en ASH no haya problema si se lo quito
//-- 08/Mar/2010 14:29 FPG
    FCODPRODSER := UpperCase(pCODPRODSER);
end;
function TProducto.GetDESCRIPPRO:String;
begin
    Result := FDESCRIPPRO
end;
procedure TProducto.SetDESCRIPPRO(pDESCRIPPRO:String);
begin
    FDESCRIPPRO := pDESCRIPPRO;
end;
function TProducto.GetCARAC1:String;
begin
    Result := FCARAC1
end;
procedure TProducto.SetCARAC1(pCARAC1:String);
begin
    FCARAC1 := pCARAC1;
end;
function TProducto.GetCARAC2:String;
begin
    Result := FCARAC2
end;
procedure TProducto.SetCARAC2(pCARAC2:String);
begin
    FCARAC2 := pCARAC2;
end;
function TProducto.GetCARAC3:String;
begin
    Result := FCARAC3
end;
procedure TProducto.SetCARAC3(pCARAC3:String);
begin
    FCARAC3 := pCARAC3;
end;
function TProducto.GetCATEGPROD:String;
begin
    Result := FCATEGPROD
end;
procedure TProducto.SetCATEGPROD(pCATEGPROD:String);
begin
    FCATEGPROD := pCATEGPROD;
end;
function TProducto.GetCODFAMILIA:String;
begin
    Result := FCODFAMILIA
end;
procedure TProducto.SetCODFAMILIA(pCODFAMILIA:String);
begin
    FCODFAMILIA := pCODFAMILIA;
end;
function TProducto.GetCOSTOPROM:Double;
begin
    Result := FCOSTOPROM
end;
procedure TProducto.SetCOSTOPROM(pCOSTOPROM:Double);
begin
    FCOSTOPROM := pCOSTOPROM;
end;
function TProducto.GetCOSTOSTD:Double;
begin
    Result := FCOSTOSTD
end;
procedure TProducto.SetCOSTOSTD(pCOSTOSTD:Double);
begin
    FCOSTOSTD := pCOSTOSTD;
end;
function TProducto.GetCOSTOTOTAL:Double;
begin
    Result := FCOSTOTOTAL
end;
procedure TProducto.SetCOSTOTOTAL(pCOSTOTOTAL:Double);
begin
    FCOSTOTOTAL := pCOSTOTOTAL;
end;
function TProducto.GetDIASINVFIS:Double;
begin
    Result := FDIASINVFIS
end;
procedure TProducto.SetDIASINVFIS(pDIASINVFIS:Double);
begin
    FDIASINVFIS := pDIASINVFIS;
end;
function TProducto.GetDISTCOMP:String;
begin
    Result := FDISTCOMP
end;
procedure TProducto.SetDISTCOMP(pDISTCOMP:String);
begin
    FDISTCOMP := pDISTCOMP;
end;
function TProducto.GetDISTDEVCTE:String;
begin
    Result := FDISTDEVCTE
end;
procedure TProducto.SetDISTDEVCTE(pDISTDEVCTE:String);
begin
    FDISTDEVCTE := pDISTDEVCTE;
end;
function TProducto.GetDISTDEVPRO:String;
begin
    Result := FDISTDEVPRO
end;
procedure TProducto.SetDISTDEVPRO(pDISTDEVPRO:String);
begin
    FDISTDEVPRO := pDISTDEVPRO;
end;
function TProducto.GetDISTVTA:String;
begin
    Result := FDISTVTA
end;
procedure TProducto.SetDISTVTA(pDISTVTA:String);
begin
    FDISTVTA := pDISTVTA;
end;
function TProducto.GetEDOACTPROD:SmallInt;
begin
    Result := FEDOACTPROD
end;
procedure TProducto.SetEDOACTPROD(pEDOACTPROD:SmallInt);
begin
    FEDOACTPROD := pEDOACTPROD;
end;
function TProducto.GetESTADPROD:SmallInt;
begin
    Result := FESTADPROD
end;
procedure TProducto.SetESTADPROD(pESTADPROD:SmallInt);
begin
    FESTADPROD := pESTADPROD;
end;
function TProducto.GetEXISCONSIG:Double;
begin
    Result := FEXISCONSIG
end;
procedure TProducto.SetEXISCONSIG(pEXISCONSIG:Double);
begin
    FEXISCONSIG := pEXISCONSIG;
end;
function TProducto.GetEXISREMIS:Double;
begin
    Result := FEXISREMIS
end;
procedure TProducto.SetEXISREMIS(pEXISREMIS:Double);
begin
    FEXISREMIS := pEXISREMIS;
end;
function TProducto.GetEXISTOTAL:Double;
begin
  icu.ParamByName('CodPRodSer').AsString := FCODPRODSER;
  icu.Open;
  FEXISTOTAL := icu.Fields[0].AsDouble;
  icu.Close;
  Result := FEXISTOTAL
end;
function TProducto.GetEXISALMACEN:Double;
begin
  icu0.ParamByName('CodPRodSer').AsString := FCODPRODSER;
  icu0.ParamByName('NumAlmac').AsString := FNUMALMAC;
  icu0.Open;
  FEXISALMACEN := icu0.Fields[0].AsDouble;
  FFECCONTEO   := icu0.Fields[1].AsDateTime;
  icu0.Close;
  Result := FEXISALMACEN;
end;
procedure TProducto.SetEXISTOTAL(pEXISTOTAL:Double);
begin
    FEXISTOTAL := pEXISTOTAL;
end;
function TProducto.GetFAMPRDSRV:SmallInt;
begin
    Result := FFAMPRDSRV
end;
procedure TProducto.SetFAMPRDSRV(pFAMPRDSRV:SmallInt);
begin
    FFAMPRDSRV := pFAMPRDSRV;
end;
function TProducto.GetFECALTPROD:TDateTime;
begin
    Result := FFECALTPROD
end;
procedure TProducto.SetFECALTPROD(pFECALTPROD:TDateTime);
begin
    FFECALTPROD := pFECALTPROD;
end;
function TProducto.GetFECHABAJA:TDateTime;
begin
    Result := FFECHABAJA
end;
procedure TProducto.SetFECHABAJA(pFECHABAJA:TDateTime);
begin
    FFECHABAJA := pFECHABAJA;
end;
function TProducto.GetFECINIEST:TDateTime;
begin
    Result := FFECINIEST
end;
procedure TProducto.SetFECINIEST(pFECINIEST:TDateTime);
begin
    FFECINIEST := pFECINIEST;
end;
function TProducto.GetFECULTCOMP:TDateTime;
begin
    Result := FFECULTCOMP
end;
procedure TProducto.SetFECULTCOMP(pFECULTCOMP:TDateTime);
begin
    FFECULTCOMP := pFECULTCOMP;
end;
function TProducto.GetFECULTENTP:TDateTime;
begin
    Result := FFECULTENTP
end;
procedure TProducto.SetFECULTENTP(pFECULTENTP:TDateTime);
begin
    FFECULTENTP := pFECULTENTP;
end;
function TProducto.GetFECULTSALP:TDateTime;
begin
    Result := FFECULTSALP
end;
procedure TProducto.SetFECULTSALP(pFECULTSALP:TDateTime);
begin
    FFECULTSALP := pFECULTSALP;
end;
function TProducto.GetFECULTVTAP:TDateTime;
begin
    Result := FFECULTVTAP
end;
procedure TProducto.SetFECULTVTAP(pFECULTVTAP:TDateTime);
begin
    FFECULTVTAP := pFECULTVTAP;
end;
function TProducto.GetPCIOCOMPRA:Double;
begin
    Result := FPCIOCOMPRA
end;
procedure TProducto.SetPCIOCOMPRA(pPCIOCOMPRA:Double);
begin
    FPCIOCOMPRA := pPCIOCOMPRA;
end;
function TProducto.GetDESCTO1:Double;
begin
    Result := FDESCTO1
end;
procedure TProducto.SetDESCTO1(pDESCTO1:Double);
begin
    FDESCTO1 := pDESCTO1;
end;
function TProducto.GetDESCTO2:Double;
begin
    Result := FDESCTO2
end;
procedure TProducto.SetDESCTO2(pDESCTO2:Double);
begin
    FDESCTO2 := pDESCTO2;
end;
function TProducto.GetDESCTO3:Double;
begin
    Result := FDESCTO3
end;
procedure TProducto.SetDESCTO3(pDESCTO3:Double);
begin
    FDESCTO3 := pDESCTO3;
end;
function TProducto.GetDESCTO4:Double;
begin
    Result := FDESCTO4
end;
procedure TProducto.SetDESCTO4(pDESCTO4:Double);
begin
    FDESCTO4 := pDESCTO4;
end;
function TProducto.GetDESCTO5:Double;
begin
    Result := FDESCTO5
end;
procedure TProducto.SetDESCTO5(pDESCTO5:Double);
begin
    FDESCTO5 := pDESCTO5;
end;
function TProducto.GetDESCTO6:Double;
begin
    Result := FDESCTO6
end;
procedure TProducto.SetDESCTO6(pDESCTO6:Double);
begin
    FDESCTO6 := pDESCTO6;
end;
function TProducto.GetDESCTO7:Double;
begin
    Result := FDESCTO7
end;
procedure TProducto.SetDESCTO7(pDESCTO7:Double);
begin
    FDESCTO7 := pDESCTO7;
end;
function TProducto.GetDESCTO8:Double;
begin
    Result := FDESCTO8
end;
procedure TProducto.SetDESCTO8(pDESCTO8:Double);
begin
    FDESCTO8 := pDESCTO8;
end;
function TProducto.GetDESCTO9:Double;
begin
    Result := FDESCTO9
end;
procedure TProducto.SetDESCTO9(pDESCTO9:Double);
begin
    FDESCTO9 := pDESCTO9;
end;
function TProducto.GetDESCTO10:Double;
begin
    Result := FDESCTO10
end;
procedure TProducto.SetDESCTO10(pDESCTO10:Double);
begin
    FDESCTO10 := pDESCTO10;
end;
function TProducto.GetPCIONETO:Double;
begin
    Result := FPCIONETO
end;
procedure TProducto.SetPCIONETO(pPCIONETO:Double);
begin
    FPCIONETO := pPCIONETO;
end;
function TProducto.GetGTOSIMPORT:Double;
begin
    Result := FGTOSIMPORT
end;
procedure TProducto.SetGTOSIMPORT(pGTOSIMPORT:Double);
begin
    FGTOSIMPORT := pGTOSIMPORT;
end;
function TProducto.GetGTOSFLETE:Double;
begin
    Result := FGTOSFLETE
end;
procedure TProducto.SetGTOSFLETE(pGTOSFLETE:Double);
begin
    FGTOSFLETE := pGTOSFLETE;
end;
function TProducto.GetGTOSOTROS:Double;
begin
    Result := FGTOSOTROS
end;
procedure TProducto.SetGTOSOTROS(pGTOSOTROS:Double);
begin
    FGTOSOTROS := pGTOSOTROS;
end;
function TProducto.GetCTOREAL:Double;
begin
    Result := FCTOREAL
end;
procedure TProducto.SetCTOREAL(pCTOREAL:Double);
begin
    FCTOREAL := pCTOREAL;
end;
function TProducto.GetMARGEN1:Double;
begin
    Result := FMARGEN1
end;
procedure TProducto.SetMARGEN1(pMARGEN1:Double);
begin
    FMARGEN1 := pMARGEN1;
end;
function TProducto.GetMARGEN2:Double;
begin
    Result := FMARGEN2
end;
procedure TProducto.SetMARGEN2(pMARGEN2:Double);
begin
    FMARGEN2 := pMARGEN2;
end;
function TProducto.GetMARGEN3:Double;
begin
    Result := FMARGEN3
end;
procedure TProducto.SetMARGEN3(pMARGEN3:Double);
begin
    FMARGEN3 := pMARGEN3;
end;
function TProducto.GetMARGEN4:Double;
begin
    Result := FMARGEN4
end;
procedure TProducto.SetMARGEN4(pMARGEN4:Double);
begin
    FMARGEN4 := pMARGEN4;
end;
function TProducto.GetMARGEN5:Double;
begin
    Result := FMARGEN5
end;
procedure TProducto.SetMARGEN5(pMARGEN5:Double);
begin
    FMARGEN5 := pMARGEN5;
end;
function TProducto.GetMARGEN6:Double;
begin
    Result := FMARGEN6
end;
procedure TProducto.SetMARGEN6(pMARGEN6:Double);
begin
    FMARGEN6 := pMARGEN6;
end;
function TProducto.GetMARGEN7:Double;
begin
    Result := FMARGEN7
end;
procedure TProducto.SetMARGEN7(pMARGEN7:Double);
begin
    FMARGEN7 := pMARGEN7;
end;
function TProducto.GetMARGEN8:Double;
begin
    Result := FMARGEN8
end;
procedure TProducto.SetMARGEN8(pMARGEN8:Double);
begin
    FMARGEN8 := pMARGEN8;
end;
function TProducto.GetMARGEN9:Double;
begin
    Result := FMARGEN9
end;
procedure TProducto.SetMARGEN9(pMARGEN9:Double);
begin
    FMARGEN9 := pMARGEN9;
end;
function TProducto.GetMARGEN10:Double;
begin
    Result := FMARGEN10
end;
procedure TProducto.SetMARGEN10(pMARGEN10:Double);
begin
    FMARGEN10 := pMARGEN10;
end;
function TProducto.GetPCIOVTA1:Double;
begin
    Result := FPCIOVTA1
end;
procedure TProducto.SetPCIOVTA1(pPCIOVTA1:Double);
begin
    FPCIOVTA1 := pPCIOVTA1;
end;
function TProducto.GetPCIOVTA2:Double;
begin
    Result := FPCIOVTA2
end;
procedure TProducto.SetPCIOVTA2(pPCIOVTA2:Double);
begin
    FPCIOVTA2 := pPCIOVTA2;
end;
function TProducto.GetPCIOVTA3:Double;
begin
    Result := FPCIOVTA3
end;
procedure TProducto.SetPCIOVTA3(pPCIOVTA3:Double);
begin
    FPCIOVTA3 := pPCIOVTA3;
end;
function TProducto.GetPCIOVTA4:Double;
begin
    Result := FPCIOVTA4
end;
procedure TProducto.SetPCIOVTA4(pPCIOVTA4:Double);
begin
    FPCIOVTA4 := pPCIOVTA4;
end;
function TProducto.GetPCIOVTA5:Double;
begin
    Result := FPCIOVTA5
end;
procedure TProducto.SetPCIOVTA5(pPCIOVTA5:Double);
begin
    FPCIOVTA5 := pPCIOVTA5;
end;
function TProducto.GetPCIOVTA6:Double;
begin
    Result := FPCIOVTA6
end;
procedure TProducto.SetPCIOVTA6(pPCIOVTA6:Double);
begin
    FPCIOVTA6 := pPCIOVTA6;
end;
function TProducto.GetPCIOVTA7:Double;
begin
    Result := FPCIOVTA7
end;
procedure TProducto.SetPCIOVTA7(pPCIOVTA7:Double);
begin
    FPCIOVTA7 := pPCIOVTA7;
end;
function TProducto.GetPCIOVTA8:Double;
begin
    Result := FPCIOVTA8
end;
procedure TProducto.SetPCIOVTA8(pPCIOVTA8:Double);
begin
    FPCIOVTA8 := pPCIOVTA8;
end;
function TProducto.GetPCIOVTA9:Double;
begin
    Result := FPCIOVTA9
end;
procedure TProducto.SetPCIOVTA9(pPCIOVTA9:Double);
begin
    FPCIOVTA9 := pPCIOVTA9;
end;
function TProducto.GetPCIOVTA10:Double;
begin
    Result := FPCIOVTA10
end;
procedure TProducto.SetPCIOVTA10(pPCIOVTA10:Double);
begin
    FPCIOVTA10 := pPCIOVTA10;
end;
function TProducto.GetPEDIMENTOS:SmallInt;
begin
    Result := FPEDIMENTOS
end;
procedure TProducto.SetPEDIMENTOS(pPEDIMENTOS:SmallInt);
begin
    FPEDIMENTOS := pPEDIMENTOS;
end;
function TProducto.GetPESO:Double;
begin
    Result := FPESO
end;
procedure TProducto.SetPESO(pPESO:Double);
begin
    FPESO := pPESO;
end;
function TProducto.GetPORCOMVTA:Double;
begin
    Result := FPORCOMVTA
end;
procedure TProducto.SetPORCOMVTA(pPORCOMVTA:Double);
begin
    FPORCOMVTA := pPORCOMVTA;
end;
function TProducto.GetPORDESCAUT:Double;
begin
    Result := FPORDESCAUT
end;
procedure TProducto.SetPORDESCAUT(pPORDESCAUT:Double);
begin
    FPORDESCAUT := pPORDESCAUT;
end;
function TProducto.GetPORC2VTA:Double;
begin
    Result := FPORC2VTA
end;
procedure TProducto.SetPORC2VTA(pPORC2VTA:Double);
begin
    FPORC2VTA := pPORC2VTA;
end;
function TProducto.GetPORC3VTA:Double;
begin
    Result := FPORC3VTA
end;
procedure TProducto.SetPORC3VTA(pPORC3VTA:Double);
begin
    FPORC3VTA := pPORC3VTA;
end;
function TProducto.GetPORC4VTA:Double;
begin
    Result := FPORC4VTA
end;
procedure TProducto.SetPORC4VTA(pPORC4VTA:Double);
begin
    FPORC4VTA := pPORC4VTA;
end;
function TProducto.GetPORC5VTA:Double;
begin
    Result := FPORC5VTA
end;
procedure TProducto.SetPORC5VTA(pPORC5VTA:Double);
begin
    FPORC5VTA := pPORC5VTA;
end;
function TProducto.GetPORCMARGEN:Double;
begin
    Result := FPORCMARGEN
end;
procedure TProducto.SetPORCMARGEN(pPORCMARGEN:Double);
begin
    FPORCMARGEN := pPORCMARGEN;
end;
function TProducto.GetSERIES:SmallInt;
begin
    Result := FSERIES
end;
procedure TProducto.SetSERIES(pSERIES:SmallInt);
begin
    FSERIES := pSERIES;
end;
function TProducto.GetTABMEDIDA:String;
begin
    Result := FTABMEDIDA
end;
procedure TProducto.SetTABMEDIDA(pTABMEDIDA:String);
begin
    FTABMEDIDA := pTABMEDIDA;
end;
function TProducto.GetTIPOPROD:String;
begin
    Result := FTIPOPROD
end;
procedure TProducto.SetTIPOPROD(pTIPOPROD:String);
begin
    FTIPOPROD := pTIPOPROD;
end;
function TProducto.GetULTCOSTO:Double;
begin
    Result := FULTCOSTO
end;
procedure TProducto.SetULTCOSTO(pULTCOSTO:Double);
begin
    FULTCOSTO := pULTCOSTO;
end;
function TProducto.GetUNIDPEDCTE:Double;
begin
    Result := FUNIDPEDCTE
end;
procedure TProducto.SetUNIDPEDCTE(pUNIDPEDCTE:Double);
begin
    FUNIDPEDCTE := pUNIDPEDCTE;
end;
function TProducto.GetUNIDPEDPRO:Double;
begin
    Result := FUNIDPEDPRO
end;
procedure TProducto.SetUNIDPEDPRO(pUNIDPEDPRO:Double);
begin
    FUNIDPEDPRO := pUNIDPEDPRO;
end;
function TProducto.GetUNIVTA:String;
begin
    Result := FUNIVTA
end;
procedure TProducto.SetUNIVTA(pUNIVTA:String);
begin
    pUniVta := Trim(pUniVta);
    FUNIVTA := pUniVta;

    FUNIVTADESC := oTabla.GetDescri ('11',FUNIVTA);
end;
function TProducto.GetUNIADQ:String;
begin
    Result := FUNIADQ
end;
procedure TProducto.SetUNIADQ(pUNIADQ:String);
begin
    FUNIADQ := pUNIADQ;
end;
function TProducto.GetINCLUYE:String;
begin
    Result := FINCLUYE
end;
procedure TProducto.SetINCLUYE(pINCLUYE:String);
begin
    FINCLUYE := pINCLUYE;
end;
function TProducto.GetERRORCOSTO:SmallInt;
begin
    Result := FERRORCOSTO
end;
procedure TProducto.SetERRORCOSTO(pERRORCOSTO:SmallInt);
begin
    FERRORCOSTO := pERRORCOSTO;
end;
function TProducto.GetFECERRCOST:TDateTime;
begin
    Result := FFECERRCOST
end;
procedure TProducto.SetFECERRCOST(pFECERRCOST:TDateTime);
begin
    FFECERRCOST := pFECERRCOST;
end;
function TProducto.GetCOSTOENT:Double;
begin
    Result := FCOSTOENT
end;
procedure TProducto.SetCOSTOENT(pCOSTOENT:Double);
begin
    FCOSTOENT := pCOSTOENT;
end;
function TProducto.GetTOTALENT:Double;
begin
    Result := FTOTALENT
end;
procedure TProducto.SetTOTALENT(pTOTALENT:Double);
begin
    FTOTALENT := pTOTALENT;
end;
function TProducto.GetEXTRA1:String;
begin
    Result := FEXTRA1
end;
procedure TProducto.SetEXTRA1(pEXTRA1:String);
begin
    FEXTRA1 := pEXTRA1;
end;
function TProducto.GetEXTRA2:String;
begin
    Result := FEXTRA2
end;
procedure TProducto.SetEXTRA2(pEXTRA2:String);
begin
    FEXTRA2 := pEXTRA2;
end;
function TProducto.GetEXTRA3:String;
begin
    Result := FEXTRA3
end;
procedure TProducto.SetEXTRA3(pEXTRA3:String);
begin
    FEXTRA3 := pEXTRA3;
end;
function TProducto.GetUSERACT1:String;
begin
    Result := FUSERACT1
end;
procedure TProducto.SetUSERACT1(pUSERACT1:String);
begin
    FUSERACT1 := pUSERACT1;
end;
function TProducto.GetFECHAACT1:TDateTime;
begin
    Result := FFECHAACT1
end;
procedure TProducto.SetFECHAACT1(pFECHAACT1:TDateTime);
begin
    FFECHAACT1 := pFECHAACT1;
end;
function TProducto.GetUSERACT2:String;
begin
    Result := FUSERACT2
end;
procedure TProducto.SetUSERACT2(pUSERACT2:String);
begin
    FUSERACT2 := pUSERACT2;
end;
function TProducto.GetFECHAACT2:TDateTime;
begin
    Result := FFECHAACT2
end;
procedure TProducto.SetFECHAACT2(pFECHAACT2:TDateTime);
begin
    FFECHAACT2 := pFECHAACT2;
end;
function TProducto.GetUSERACT3:String;
begin
    Result := FUSERACT3
end;
procedure TProducto.SetUSERACT3(pUSERACT3:String);
begin
    FUSERACT3 := pUSERACT3;
end;
function TProducto.GetFECHAACT3:TDateTime;
begin
    Result := FFECHAACT3
end;
procedure TProducto.SetFECHAACT3(pFECHAACT3:TDateTime);
begin
    FFECHAACT3 := pFECHAACT3;
end;
function TProducto.GetPATHFOTO:String;
begin
    Result := FPATHFOTO
end;
procedure TProducto.SetPATHFOTO(pPATHFOTO:String);
begin
    FPATHFOTO := pPATHFOTO;
end;

function TProducto.ValidarCodigo(ACodigo:String):Integer;
  var
    t:String;
begin
  Result := 0;
//  t := sm.GetChars(ACodigo,[' ' ,'/','\','%','?']);
  t := sm.GetType(ACodigo,[cfPunct,cfControl,cfDelim]);
  if length(t) > 0 then Result := 1;

end;

procedure TProducto.CalculaExistencias;
var
  i:Integer;
  dAcum:Double;
begin
  icu3.ParamByName('CodPRodSer').AsString := FCODPRODSER;
  icu3.Open;
  dAcum := 0;
  i:= 1;
  while not icu3.Eof do begin
    aExistencia[i].NumAlmacen    := icu3.FieldByName('NUMALMAC').AsString;
    aExistencia[i].NombreAlmacen := icu3.FieldByName('NOMBREALM').AsString;
    aExistencia[i].Existencia    := icu3.FieldByName('EXISTENCIA').AsDouble;
    {-- Acumular existencias que NO es transito  --}
    if aExistencia[i].NumAlmacen <> 'T' then
      dAcum := dAcum + aExistencia[i].Existencia;

    i := i + 1;
    if i >= 10 then break;
   icu3.Next;
  end;

  aExistencia[i].NumAlmacen    := '*';
  aExistencia[i].NombreAlmacen := '* Todos *';
  aExistencia[i].Existencia    := dAcum;

  icu3.Close;

end;
function TProducto.GetExistencia(ANumAlmac:String):Double;
var i:Integer;
begin
  Result := 0;
  for i := 1 to 10 do begin
    if ANumAlmac = aExistencia[i].NumAlmacen then begin
      Result := aExistencia[i].Existencia;
      break;
    end;
  end;
end;

function GetNombreStatusRota(piNumero:Smallint):String;
begin
  Result := '';
  case piNumero of
    1: Result := 'Normal';
    2: Result := 'Baja';
    3: Result := 'Nulo';
  end;
end;

end.
