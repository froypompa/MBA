unit ClsDoc;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls,VCIF1Lib_TLB,
     IB_Components, StrMan, ESBDates,IniFiles,
     ClsTipoDoc,Constants_App;

//Indicar el estado del Docto al estar editandolo
type TDocState = (edInsert, edBrowse, edCancel);

type TDoc = class(TObject)
    constructor Create;
    destructor Destroy;
  private
    FANIODOCTO:SmallInt;
    FPERDOCTO:SmallInt;
    FNUMTIPODOC:String;
    FSERIEDOCTO:String;
    FNUMDOCTO:String;
    FAFECTESTAD:SmallInt;
    FCLASEDOC:SmallInt;
    FCODCTEPROV:String;
    FDIAESP:String;
    FFECDOCTO:TDateTime;
    FFECENVIO:TDateTime;
    FFECPEDIDO:TDateTime;
    FFECPOSPAGO:TDateTime;
    FFECVENCEDO:TDateTime;
    FFECHRELCOB:TDateTime;
    FFECHAPP:TDateTime;
    FIMPCOMISDO:Double;
    FIMPDESCAUT:Double;
    FIMPDESCESP:Double;
    FIMPDESCPP:Double;
    FIMPGTOSCOM:Double;
    FIMPIEPSDOC:Double;
    FIMPIVADOCT:Double;
    FIMPRETIVADOC:Double;
    FIMPNETODOC:Double;
    FIMPPENDDOC:Double;
    FIMPTOTALDO:Double;
    FIMPRESODOC:SmallInt;
    FINTERFAZCO:String;
    FMONEDADOCT:String;
    FNALMTRASP:String;
    FNATURALEZA:String;
    FNUMAGENTE:String;
    FNUMALMAC:String;
    FNUMBULTOS:SmallInt;
    FNUMMOVESP:Integer;
    FNUMRELCOBR:Integer;
    FORDENCOMPR:String;
    FORIGENDOCT:SmallInt;
    FPORCCOMISD:Double;
    FPORCDESCPP:Double;
    FPORCINTMOR:Double;
    FPORCIVADOC:Double;
    FPRNEDOCTA:SmallInt;
    FREFERDOCTO:String;
    FREFERDOCTO2:String;
    FTALON:String;
    FTIPOCAMBIO:Double;
    FTRANSPOR:String;
    FUNIDADESTL:Integer;
    FVIATRANS:String;
    FLLAVEPOL:String;
    FCANCELA:String;
    FOBSERVA:String;
    FIMPCHEQPAQ:Double;
    FSISTORIG:SmallInt;
    FHONORARIOS:SmallInt;
    FNombreTipo:String;
    FATENCIONA:String;
    FSTatus:TDocState;
    FPuedoModificar:SmallInt;
    FPedimento1:String;
    FAduana:String;
    FFechaEnt:TDateTime;
    FDOCTO_ID:Integer;
    FFESERIE:String;
    FFEFOLIO:String;
    FFEFECHA:String;
    FFETOTAL:String;
    FFEEMRFC:String;
    FFERERFC:String;
    FFEREFID:String;
    FFEUUID:String;
//Variables de las partidas
    FDETALLE_ID:Integer;
    FNUMMOVTO:String;
    FCODPRODSER:String;
    FUNIDADES:Double;
    FPRECIOLISTA:Double;
    FPRECIO:Double;
    FIMPNETOMOV:Double;
    FIMPIVAMOVT:Double;
    FPORCIVAMOV:Double;
    FTOTALMOVTO:Double;
    FUNIVTA:String;
    FDESCRIPPRO:String;
    FCOSTOMOV:Double;
    FIMPCOMISMO:Double;
    FIMPIEPSMOV:Double;
    FNUMCONC:String;
    FNUMCONCTRA:String;
    FPORCCOMISV:Double;
    FPORCDESCAU:Double;
    FPORCDESCES:Double;
    FPORCIEPSMO:Double;
    FREFERMOVTO:String;
    FTIPCOSTO:String;
    FUNIPEND:Double;
    FUNIFACT:Double;
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
    FCODFAMILIA:String;
    FOBSERVA2:String;
    FPRECUNIADQ:Double;

    FIDRECURSO:INTEGER;
    FIDDEPTO:INTEGER;

    FIDDIRENTREGA:INTEGER;
    FMETODOPAGO:String;
    FFORMAPAGO:String;
    FUSOCFDI:String;

    FF1:TF1Book;
    FError:Integer;
    FMsg:TStringList;
    FFac:TStringList;
    oTipoDoc:TTipoDoc;
    isql1: TIB_DSQL;

    function GetANIODOCTO:SmallInt;
    procedure SetANIODOCTO(pANIODOCTO:SmallInt);
    function GetPERDOCTO:SmallInt;
    procedure SetPERDOCTO(pPERDOCTO:SmallInt);
    function GetNUMTIPODOC:String;
    procedure SetNUMTIPODOC(pNUMTIPODOC:String);
    function GetSERIEDOCTO:String;
    procedure SetSERIEDOCTO(pSERIEDOCTO:String);
    function GetNUMDOCTO:String;
    procedure SetNUMDOCTO(pNUMDOCTO:String);
    function GetAFECTESTAD:SmallInt;
    procedure SetAFECTESTAD(pAFECTESTAD:SmallInt);
    function GetCLASEDOC:SmallInt;
    procedure SetCLASEDOC(pCLASEDOC:SmallInt);
    function GetCODCTEPROV:String;
    procedure SetCODCTEPROV(pCODCTEPROV:String);
    function GetDIAESP:String;
    procedure SetDIAESP(pDIAESP:String);
    function GetFECDOCTO:TDateTime;
    procedure SetFECDOCTO(pFECDOCTO:TDateTime);
    function GetFECENVIO:TDateTime;
    procedure SetFECENVIO(pFECENVIO:TDateTime);
    function GetFECPEDIDO:TDateTime;
    procedure SetFECPEDIDO(pFECPEDIDO:TDateTime);
    function GetFECPOSPAGO:TDateTime;
    procedure SetFECPOSPAGO(pFECPOSPAGO:TDateTime);
    function GetFECVENCEDO:TDateTime;
    procedure SetFECVENCEDO(pFECVENCEDO:TDateTime);
    function GetFECHRELCOB:TDateTime;
    procedure SetFECHRELCOB(pFECHRELCOB:TDateTime);
    function GetFECHAPP:TDateTime;
    procedure SetFECHAPP(pFECHAPP:TDateTime);
    function GetIMPCOMISDO:Double;
    procedure SetIMPCOMISDO(pIMPCOMISDO:Double);
    function GetIMPDESCAUT:Double;
    procedure SetIMPDESCAUT(pIMPDESCAUT:Double);
    function GetIMPDESCESP:Double;
    procedure SetIMPDESCESP(pIMPDESCESP:Double);
    function GetIMPDESCPP:Double;
    procedure SetIMPDESCPP(pIMPDESCPP:Double);
    function GetIMPGTOSCOM:Double;
    procedure SetIMPGTOSCOM(pIMPGTOSCOM:Double);
    function GetIMPIEPSDOC:Double;
    procedure SetIMPIEPSDOC(pIMPIEPSDOC:Double);
    function GetIMPIVADOCT:Double;
    procedure SetIMPIVADOCT(pIMPIVADOCT:Double);
    function GetIMPRETIVADOC:Double;
    procedure SetIMPRETIVADOC(pIMPRETIVADOC:Double);
    function GetIMPNETODOC:Double;
    procedure SetIMPNETODOC(pIMPNETODOC:Double);
    function GetIMPPENDDOC:Double;
    procedure SetIMPPENDDOC(pIMPPENDDOC:Double);
    function GetIMPTOTALDO:Double;
    procedure SetIMPTOTALDO(pIMPTOTALDO:Double);
    function GetIMPRESODOC:SmallInt;
    procedure SetIMPRESODOC(pIMPRESODOC:SmallInt);
    function GetINTERFAZCO:String;
    procedure SetINTERFAZCO(pINTERFAZCO:String);
    function GetMONEDADOCT:String;
    procedure SetMONEDADOCT(pMONEDADOCT:String);
    function GetNALMTRASP:String;
    procedure SetNALMTRASP(pNALMTRASP:String);
    function GetNATURALEZA:String;
    procedure SetNATURALEZA(pNATURALEZA:String);
    function GetNUMAGENTE:String;
    procedure SetNUMAGENTE(pNUMAGENTE:String);
    function GetNUMALMAC:String;
    procedure SetNUMALMAC(pNUMALMAC:String);
    function GetNUMBULTOS:SmallInt;
    procedure SetNUMBULTOS(pNUMBULTOS:SmallInt);
    function GetNUMMOVESP:Integer;
    procedure SetNUMMOVESP(pNUMMOVESP:Integer);
    function GetNUMRELCOBR:Integer;
    procedure SetNUMRELCOBR(pNUMRELCOBR:Integer);
    function GetORDENCOMPR:String;
    procedure SetORDENCOMPR(pORDENCOMPR:String);
    function GetORIGENDOCT:SmallInt;
    procedure SetORIGENDOCT(pORIGENDOCT:SmallInt);
    function GetPORCCOMISD:Double;
    procedure SetPORCCOMISD(pPORCCOMISD:Double);
    function GetPORCDESCPP:Double;
    procedure SetPORCDESCPP(pPORCDESCPP:Double);
    function GetPORCINTMOR:Double;
    procedure SetPORCINTMOR(pPORCINTMOR:Double);
    function GetPORCIVADOC:Double;
    procedure SetPORCIVADOC(pPORCIVADOC:Double);
    function GetPRNEDOCTA:SmallInt;
    procedure SetPRNEDOCTA(pPRNEDOCTA:SmallInt);
    function GetREFERDOCTO:String;
    procedure SetREFERDOCTO(pREFERDOCTO:String);
    function GetREFERDOCTO2:String;
    procedure SetREFERDOCTO2(pREFERDOCTO2:String);
    function GetTALON:String;
    procedure SetTALON(pTALON:String);
    function GetTIPOCAMBIO:Double;
    procedure SetTIPOCAMBIO(pTIPOCAMBIO:Double);
    function GetTRANSPOR:String;
    procedure SetTRANSPOR(pTRANSPOR:String);
    function GetUNIDADESTL:Integer;
    procedure SetUNIDADESTL(pUNIDADESTL:Integer);
    function GetVIATRANS:String;
    procedure SetVIATRANS(pVIATRANS:String);
    function GetLLAVEPOL:String;
    procedure SetLLAVEPOL(pLLAVEPOL:String);
    function GetCANCELA:String;
    procedure SetCANCELA(pCANCELA:String);
    function GetOBSERVA:String;
    procedure SetOBSERVA(pOBSERVA:String);
    function GetIMPCHEQPAQ:Double;
    procedure SetIMPCHEQPAQ(pIMPCHEQPAQ:Double);
    function GetSISTORIG:SmallInt;
    procedure SetSISTORIG(pSISTORIG:SmallInt);
    function GetHONORARIOS:SmallInt;
    procedure SetHONORARIOS(pHONORARIOS:SmallInt);
    function GetATENCIONA:String;
    procedure SetATENCIONA(pATENCIONA:String);
    function GetStatus:TDocState;
    procedure SetStatus(pStatus:TDocState);

    function GetNUMMOVTO:String;
    procedure SetNUMMOVTO(pNUMMOVTO:String);

    procedure GrabaDetalle;
    procedure CargaDetalle;
    procedure LimpiarDetalle;
    function ValidarDatos:Integer;
    function TieneDetalle:Boolean;
  public
    property ANIODOCTO: SmallInt read GetANIODOCTO  write SetANIODOCTO;
    property PERDOCTO: SmallInt read GetPERDOCTO  write SetPERDOCTO;
    property NUMTIPODOC: String read GetNUMTIPODOC  write SetNUMTIPODOC;
    property SERIEDOCTO: String read GetSERIEDOCTO  write SetSERIEDOCTO;
    property NUMDOCTO: String read GetNUMDOCTO  write SetNUMDOCTO;
    property AFECTESTAD: SmallInt read GetAFECTESTAD  write SetAFECTESTAD;
    property CLASEDOC: SmallInt read GetCLASEDOC  write SetCLASEDOC;
    property CODCTEPROV: String read GetCODCTEPROV  write SetCODCTEPROV;
    property DIAESP: String read GetDIAESP  write SetDIAESP;
    property FECDOCTO: TDateTime read GetFECDOCTO  write SetFECDOCTO;
    property FECENVIO: TDateTime read GetFECENVIO  write SetFECENVIO;
    property FECPEDIDO: TDateTime read GetFECPEDIDO  write SetFECPEDIDO;
    property FECPOSPAGO: TDateTime read GetFECPOSPAGO  write SetFECPOSPAGO;
    property FECVENCEDO: TDateTime read GetFECVENCEDO  write SetFECVENCEDO;
    property FECHRELCOB: TDateTime read GetFECHRELCOB  write SetFECHRELCOB;
    property FECHAPP: TDateTime read GetFECHAPP  write SetFECHAPP;
    property IMPCOMISDO: Double read GetIMPCOMISDO  write SetIMPCOMISDO;
    property IMPDESCAUT: Double read GetIMPDESCAUT  write SetIMPDESCAUT;
    property IMPDESCESP: Double read GetIMPDESCESP  write SetIMPDESCESP;
    property IMPDESCPP: Double read GetIMPDESCPP  write SetIMPDESCPP;
    property IMPGTOSCOM: Double read GetIMPGTOSCOM  write SetIMPGTOSCOM;
    property IMPIEPSDOC: Double read GetIMPIEPSDOC  write SetIMPIEPSDOC;
    property IMPIVADOCT: Double read GetIMPIVADOCT  write SetIMPIVADOCT;
    property IMPRETIVADOC: Double read GetIMPRETIVADOC  write SetIMPRETIVADOC;
    property IMPNETODOC: Double read GetIMPNETODOC  write SetIMPNETODOC;
    property IMPPENDDOC: Double read GetIMPPENDDOC  write SetIMPPENDDOC;
    property IMPTOTALDO: Double read GetIMPTOTALDO  write SetIMPTOTALDO;
    property IMPRESODOC: SmallInt read GetIMPRESODOC  write SetIMPRESODOC;
    property INTERFAZCO: String read GetINTERFAZCO  write SetINTERFAZCO;
    property MONEDADOCT: String read GetMONEDADOCT  write SetMONEDADOCT;
    property NALMTRASP: String read GetNALMTRASP  write SetNALMTRASP;
    property NATURALEZA: String read GetNATURALEZA  write SetNATURALEZA;
    property NUMAGENTE: String read GetNUMAGENTE  write SetNUMAGENTE;
    property NUMALMAC: String read GetNUMALMAC  write SetNUMALMAC;
    property NUMBULTOS: SmallInt read GetNUMBULTOS  write SetNUMBULTOS;
    property NUMMOVESP: Integer read GetNUMMOVESP  write SetNUMMOVESP;
    property NUMRELCOBR: Integer read GetNUMRELCOBR  write SetNUMRELCOBR;
    property ORDENCOMPR: String read GetORDENCOMPR  write SetORDENCOMPR;
    property ORIGENDOCT: SmallInt read GetORIGENDOCT  write SetORIGENDOCT;
    property PORCCOMISD: Double read GetPORCCOMISD  write SetPORCCOMISD;
    property PORCDESCPP: Double read GetPORCDESCPP  write SetPORCDESCPP;
    property PORCINTMOR: Double read GetPORCINTMOR  write SetPORCINTMOR;
    property PORCIVADOC: Double read GetPORCIVADOC  write SetPORCIVADOC;
    property PRNEDOCTA: SmallInt read GetPRNEDOCTA  write SetPRNEDOCTA;
    property REFERDOCTO: String read GetREFERDOCTO  write SetREFERDOCTO;
    property REFERDOCTO2: String read GetREFERDOCTO2  write SetREFERDOCTO2;
    property TALON: String read GetTALON  write SetTALON;
    property TIPOCAMBIO: Double read GetTIPOCAMBIO  write SetTIPOCAMBIO;
    property TRANSPOR: String read GetTRANSPOR  write SetTRANSPOR;
    property UNIDADESTL: Integer read GetUNIDADESTL  write SetUNIDADESTL;
    property VIATRANS: String read GetVIATRANS  write SetVIATRANS;
    property LLAVEPOL: String read GetLLAVEPOL  write SetLLAVEPOL;
    property CANCELA: String read GetCANCELA  write SetCANCELA;
    property OBSERVA: String read GetOBSERVA  write SetOBSERVA;
    property IMPCHEQPAQ: Double read GetIMPCHEQPAQ  write SetIMPCHEQPAQ;
    property SISTORIG: SmallInt read GetSISTORIG  write SetSISTORIG;
    property HONORARIOS: SmallInt read GetHONORARIOS  write SetHONORARIOS;
    property ATENCIONA: String read GetATENCIONA  write SetATENCIONA;
    property Status: TDocState read GetStatus  write SetStatus;
    property NombreTipo: String read FNombreTipo;
    property Detalle:TF1Book read FF1 write FF1;
    property PuedoModificar: SmallInt read FPuedoModificar;
    property Pedimento: String read FPedimento1 write FPedimento1;
    property Aduana: String read FAduana write FAduana;
    property FechaEnt: TDateTime read FFechaEnt write FFechaEnt;

    property Error:Integer read FError write FError;
    property Msg:TStringList read FMsg;
    property Fac:TStringList read FFac;
    property DOCTO_ID:Integer read FDOCTO_ID write FDOCTO_ID;
    property FESERIE:String read FFESERIE write FFESERIE;
    property FEFOLIO:String read FFEFOLIO write FFEFOLIO;
    property FEFECHA:String read FFEFECHA write FFEFECHA;
    property FETOTAL:String read FFETOTAL write FFETOTAL;
    property FEEMRFC:String read FFEEMRFC write FFEEMRFC;
    property FERERFC:String read FFERERFC write FFERERFC;
    property FEREFID:String read FFEREFID write FFEREFID;
    property FEUUID:String  read FFEUUID  write FFEUUID;
//Propiedades de las Partidas
    property DETALLE_ID:Integer  read FDETALLE_ID   write FDETALLE_ID;
    property NUMMOVTO:String     read FNUMMOVTO     write FNUMMOVTO;
    property CODPRODSER:String   read FCODPRODSER   write FCODPRODSER;
    property UNIDADES:Double     read FUNIDADES     write FUNIDADES;
    property PRECIOLISTA:Double  read FPRECIOLISTA  write FPRECIOLISTA;
    property PRECIO:Double       read FPRECIO       write FPRECIO;
    property IMPNETOMOV:Double   read FIMPNETOMOV   write FIMPNETOMOV;
    property IMPIVAMOVT:Double   read FIMPIVAMOVT   write FIMPIVAMOVT;
    property PORCIVAMOV:Double   read FPORCIVAMOV   write FPORCIVAMOV;
    property TOTALMOVTO:Double   read FTOTALMOVTO   write FTOTALMOVTO;
    property UNIVTA:String       read FUNIVTA       write FUNIVTA;
    property DESCRIPPRO:String   read FDESCRIPPRO   write FDESCRIPPRO;
    property COSTOMOV:Double     read FCOSTOMOV     write FCOSTOMOV;
    property IMPCOMISMO:Double   read FIMPCOMISMO   write FIMPCOMISMO;
    property IMPIEPSMOV:Double   read FIMPIEPSMOV   write FIMPIEPSMOV;
    property NUMCONC:String      read FNUMCONC      write FNUMCONC;
    property NUMCONCTRA:String   read FNUMCONCTRA   write FNUMCONCTRA;
    property PORCCOMISV:Double   read FPORCCOMISV   write FPORCCOMISV;
    property PORCDESCAU:Double   read FPORCDESCAU   write FPORCDESCAU;
    property PORCDESCES:Double   read FPORCDESCES   write FPORCDESCES;
    property PORCIEPSMO:Double   read FPORCIEPSMO   write FPORCIEPSMO;
    property REFERMOVTO:String   read FREFERMOVTO   write FREFERMOVTO;
    property TIPCOSTO:String     read FTIPCOSTO     write FTIPCOSTO;
    property UNIPEND:Double      read FUNIPEND      write FUNIPEND;
    property UNIFACT:Double      read FUNIFACT      write FUNIFACT;
    property DESCTO1:Double      read FDESCTO1      write FDESCTO1;
    property DESCTO2:Double      read FDESCTO2      write FDESCTO2;
    property DESCTO3:Double      read FDESCTO3      write FDESCTO3;
    property DESCTO4:Double      read FDESCTO4      write FDESCTO4;
    property DESCTO5:Double      read FDESCTO5      write FDESCTO5;
    property DESCTO6:Double      read FDESCTO6      write FDESCTO6;
    property DESCTO7:Double      read FDESCTO7      write FDESCTO7;
    property DESCTO8:Double      read FDESCTO8      write FDESCTO8;
    property DESCTO9:Double      read FDESCTO9      write FDESCTO9;
    property DESCTO10:Double     read FDESCTO10     write FDESCTO10;
    property CODFAMILIA:String   read FCODFAMILIA   write FCODFAMILIA;
    property OBSERVA2:String     read FOBSERVA2     write FOBSERVA2;
    property PRECUNIADQ:Double   read FPRECUNIADQ   write FPRECUNIADQ;

    property IDRECURSO:Integer read FIDRECURSO write FIDRECURSO;
    property IDDEPTO  :Integer read FIDDEPTO     write FIDDEPTO;

    property IDDIRENTREGA:Integer read FIDDIRENTREGA write FIDDIRENTREGA;
    property METODOPAGO:String     read FMETODOPAGO     write FMETODOPAGO;
    property FORMAPAGO:String      read FFORMAPAGO      write FFORMAPAGO;
    property USOCFDI:String        read FUSOCFDI        write FUSOCFDI;

    procedure Retrieve;
    procedure Retrieve2;
    procedure Save;
    procedure Update;
    procedure SaveFactura;
    procedure SavePartida;
    procedure SaveNotaCargo;
    procedure Clear;
    procedure Cancel;
    procedure Cancel2;
    function GetNextFolio:String;
    function Modificar:Boolean;
    procedure FillDocSaldo(F1:TF1Book);
    procedure FillDocSaldoProv(F1:TF1Book);
    procedure FillDocAsoc(F1:TF1Book);
    procedure UpdateClaseDoc(piStatus:SmallInt;ptNotaCre:String);
    procedure AfectarExistencias;
    procedure DesafectarExistencias;
    procedure GetPedimento(CodProdSer:String;ACantidad:Double; var Pedimento:TArrPedimento);
    procedure GetPedimento2(CodFamilia:String;var Pedimento:TPedimento);
    procedure SaveFE(ADocto_Id:Integer;
                      ASerie:String;
                      AFolio:String;
                      AFecha:String;
                      ATotal:String;
                      AEMRFC:String;
                      ARERFC:String;
                      AUUID:String);
end;

var
  oFac:TIniFile;

implementation
uses Main,DM_MBA;
{==================================================================
Implementacion: TDoc
==================================================================}
constructor TDoc.Create;
begin
  inherited Create;  // Inicializa las partes heredadas
  oTipoDoc := TTipoDoc.Create;
  FMsg := TStringList.Create;
  FFac := TStringList.Create;

  iSql1 := TIB_DSQL.Create(nil);
  iSql1.IB_Connection := DM1.cnMBA;
  iSql1.IB_Transaction := DM1.trMBA;
  iSql1.SQL.Clear;
//
    isql1.SQL.Add ('UPDATE MBA10008 SET  ');
    isql1.SQL.Add ('  DOCTO_ID = ?DOCTO_ID,  ');
    isql1.SQL.Add ('  FECDOCTO = ?FECDOCTO, ');
//    isql1.SQL.Add ('  CODCTEPROV = ?CODCTEPROV, ');
//    isql1.SQL.Add ('  NUMAGENTE = ?NUMAGENTE, ');
    isql1.SQL.Add ('  MONEDADOCT = ?MONEDADOCT, ');
    isql1.SQL.Add ('  NUMALMAC = ?NUMALMAC, ');
    isql1.SQL.Add ('  VIATRANS = ?VIATRANS, ');
    isql1.SQL.Add ('  ORDENCOMPR = ?ORDENCOMPR, ');
    isql1.SQL.Add ('  REFERDOCTO = ?REFERDOCTO,  ');
    isql1.SQL.Add ('  REFERDOCTO2 = ?REFERDOCTO2,  ');
    isql1.SQL.Add ('  OBSERVA = ?OBSERVA,  ');
    isql1.SQL.Add ('  IDDIRENTREGA = ?IDDIRENTREGA,  ');
    isql1.SQL.Add ('  METODOPAGO = ?METODOPAGO,  ');
    isql1.SQL.Add ('  FORMAPAGO = ?FORMAPAGO,  ');
    isql1.SQL.Add ('  USOCFDI = ?USOCFDI,  ');
    isql1.SQL.Add ('  FECHAACT = ?FECHAACT,  ');
    isql1.SQL.Add ('  USERACT = ?USERACT  ');
    isql1.SQL.Add ('WHERE (DOCTO_ID = ?DOCTO_ID); ');
    isql1.Prepare;

end;

destructor TDoc.Destroy;
begin
  isql1.Unprepare;
  oTipoDoc.Free;
  FMsg.Free;
  FFac.Free;
  inherited Destroy;
end;

procedure TDoc.GetPedimento(CodProdSer:String;ACantidad:Double; var Pedimento:TArrPedimento);
var
  ix : Integer;
  dCant,dPend:Double;
begin
    ix := 1;
    dPend := ACantidad; // Pendientes de asignar
    Pedimento[ix].IdPedimento := 0;
    Pedimento[ix].NumPedimento := '';
    Pedimento[ix].Unidades := 0;
    with DM1.icuPedimento do begin
      ParamByName('CodProdSer').AsString := CodProdSer;
      Open;
      if eof then begin
        Close;
        exit;
      end;
      First;
      while not eof do begin
        //Unidades disponibles del pedimento
        dCant := FieldByName('UNIDADES_E').AsDouble -
                 FieldByName('UNIDADES_S').AsDouble;
        if (dCant <= 0) then dCant :=0;
        if dCant > 0 then begin

          Pedimento[ix].IdPedimento := FieldByName('IdPedimento').AsInteger;
          Pedimento[ix].NumPedimento := FieldByName('NumPedimento').AsString;
          Pedimento[ix].Fecha := FieldByName('Fecha').AsDateTime;
          Pedimento[ix].Aduana := FieldByName('Aduana').AsString;
          if dCant >= dPend then begin
            Pedimento[ix].Unidades := dPend;
            dPend := 0
          end else begin
            Pedimento[ix].Unidades := dCant;
            dPend := dPend - dCant
          end;
          if dPend <= 0 then break;
          ix := ix + 1;
          if ix > 5 then break;
          Next;
      end;
      end;
      Close;
    end;

end;

procedure TDoc.GetPedimento2(CodFamilia:String;var Pedimento:TPedimento);
var
  ix : Integer;
  dCant,dPend:Double;
begin
    ix := 1;
    Pedimento.IdPedimento := 0;
    Pedimento.NumPedimento := '';
    Pedimento.Unidades := 0;

    with DM1.icuPedimento do begin
      ParamByName('CodFamilia').AsString := CodFamilia;
      Open;
      if eof then begin
        Close;
        exit;
      end;
      First;

      Pedimento.IdPedimento := FieldByName('IdPedimento').AsInteger;
      Pedimento.NumPedimento := FieldByName('NumPedimento').AsString;
      Pedimento.Fecha := FieldByName('Fecha').AsDateTime;
      Pedimento.Aduana := FieldByName('Aduana').AsString;

      Close;
    end;

end;

function TDoc.GetNextFolio:String;
var iFolio:Integer;
begin
    iFolio := oTipoDoc.GetFolio(FNUMTIPODOC);
    FNumDocto := sm.StrFloat (iFolio,'#####0');
    Result := FNumDocto;
end;

function TDoc.Modificar:Boolean;
var iRes:Integer;
begin
    iRes := oTipoDoc.MODIFICAR;
    Result := (iRes = 1);
end;

procedure TDoc.FillDocSaldo(F1:TF1Book);
var tDoc,tRow:String;
    iRow,iSheet:Integer;
begin
    iSheet := F1.Sheet;
    F1.Sheet := 1;
    iRow := 3;
    F1.Row := iRow;
    F1.ClearRange(iRow, 1, 499, F1.MaxCol, F1ClearValues);


    with DM1.icuTemp do begin
        Close;
        SQL.Clear;
        SQL.Add ('Select * from Documentos_Cte(?p_CodCteProv);');
        Prepare;
        ParamByName('p_CodCteProv').AsString := FCodCteProv;
        Open;
        First;
        while not eof do begin
            tRow := sm.StrFloat (iRow,'#');
            F1.TextRC[iRow,1] := FieldByName('NomTipoDoc').AsString;
            F1.TextRC[iRow,2] := FieldByName('SerieDocto').AsString;
            F1.TextRC[iRow,3] := FieldByName('NumDocto').AsString;
            F1.NumberRC[iRow,4] := FieldByName('FecDocto').AsDateTime;
            F1.NumberRC[iRow,5] := FieldByName('ImpTotalDo').AsDouble;
            F1.NumberRC[iRow,6] := FieldByName('ImpPendDoc').AsDouble;
            F1.NumberRC[iRow,7] := 0;
            F1.FormulaRC[iRow,8] := 'F'+tRow+'-G'+tRow;

            if Trim(FieldByName('MonedaDoct').AsString) = '1' then
              F1.TextRC[iRow,9] := 'MXN'
            else
              F1.TextRC[iRow,9] := 'USD';

            F1.TextRC[iRow,10] := FieldByName('NumTipoDoc').AsString;
            iRow := iRow+1;

            Next;
        end;
        Close;
    end;
    F1.Sheet := iSheet;

end;

procedure TDoc.FillDocSaldoProv(F1:TF1Book);
var tDoc,tRow,tRef:String;
    iRow,iSheet:Integer;
begin
    iSheet := F1.Sheet;
    F1.Sheet := 1;
    iRow := 3;
    F1.Row := iRow;
    F1.ClearRange(iRow, 1, 249, F1.MaxCol, F1ClearValues);


    with DM1.icuTemp do begin
        Close;
        SQL.Clear;
        SQL.Add ('Select * from Documentos_Prov(?p_CodCteProv);');
        Prepare;
        ParamByName('p_CodCteProv').AsString := FCodCteProv;
        Open;
        First;
        while not eof do begin
            tRow := sm.StrFloat (iRow,'#');
            tRef := FieldByName('ReferDocto').AsString;
            F1.TextRC[iRow,1] := FieldByName('NomTipoDoc').AsString;
            F1.TextRC[iRow,2] := FieldByName('SerieDocto').AsString;
            F1.TextRC[iRow,3] := FieldByName('NumDocto').AsString;
            F1.NumberRC[iRow,4] := FieldByName('FecDocto').AsDateTime;
            F1.NumberRC[iRow,5] := FieldByName('ImpTotalDo').AsDouble;
            F1.NumberRC[iRow,6] := FieldByName('ImpPendDoc').AsDouble;
            F1.NumberRC[iRow,7] := 0;
            F1.FormulaRC[iRow,8] := 'F'+tRow+'-G'+tRow;
            F1.TextRC[iRow,9] := tRef;
            F1.TextRC[iRow,10] := FieldByName('NumTipoDoc').AsString;
            iRow := iRow+1;

            Next;
        end;
        Close;
    end;
    F1.Sheet := iSheet;

end;

procedure TDoc.FillDocAsoc(F1:TF1Book);
var tDoc,tRow:String;
    iRow,iSheet:Integer;
begin
    iSheet := F1.Sheet;
    F1.Sheet := 2;
    iRow := 3;
    F1.Row := iRow;
    F1.ClearRange(iRow, 1, 49, F1.MaxCol, F1ClearValues);


    with DM1.icuTemp do begin
        Close;
        unprepare;
        SQL.Clear;
        SQL.Add ('Select * from mba10009_s02 (?p_NumTipoDoc,?p_SerieDocto,?p_NumDocto);');
        Prepare;
        ParamByName('p_NumTipoDoc').AsString := FNumTipoDoc;
        ParamByName('p_SerieDocto').AsString := FSerieDocto;
        ParamByName('p_NumDocto').AsString := FNumDocto;
        Open;
        First;
        while not eof do begin
            F1.TextRC[iRow,1] := FieldByName('NumTipoDoc').AsString;
            F1.TextRC[iRow,2] := FieldByName('SerieDocto').AsString;
            F1.TextRC[iRow,3] := FieldByName('NumDocto').AsString;
            F1.NumberRC[iRow,4] := FieldByName('FecDocto').AsDate;
            F1.NumberRC[iRow,5] := FieldByName('ImpTotalDo').AsDouble;
            F1.NumberRC[iRow,6] := FieldByName('FecAsoc').AsDate;
            F1.NumberRC[iRow,7] := FieldByName('ImpAsoc').AsDouble;
//            F1.FormulaRC[iRow,8] := 'F'+tRow+'-G'+tRow;
            iRow := iRow+1;

            Next;
        end;
        Close;
    end;

    F1.Sheet := iSheet;

end;


procedure TDoc.Retrieve;
var tDoc:String;
begin
//
    DM1.ispDoc_S.ParamByName('P_NUMTIPODOC').AsString := FNUMTIPODOC;
    DM1.ispDoc_S.ParamByName('P_SERIEDOCTO').AsString := FSERIEDOCTO;
    DM1.ispDoc_S.ParamByName('P_NUMDOCTO').AsString := FNUMDOCTO;

    DM1.ispDoc_S.ExecProc;

    tDoc := DM1.ispDoc_S.FieldByName('NUMDOCTO').AsString;
    FANIODOCTO := DM1.ispDoc_S.FieldByName('ANIODOCTO').AsSmallInt;
    FPERDOCTO := DM1.ispDoc_S.FieldByName('PERDOCTO').AsSmallInt;
    FAFECTESTAD := DM1.ispDoc_S.FieldByName('AFECTESTAD').AsSmallInt;
    FCLASEDOC := DM1.ispDoc_S.FieldByName('CLASEDOC').AsSmallInt;
    FCODCTEPROV := DM1.ispDoc_S.FieldByName('CODCTEPROV').AsString;
    FDIAESP := DM1.ispDoc_S.FieldByName('DIAESP').AsString;
    FFECDOCTO := DM1.ispDoc_S.FieldByName('FECDOCTO').AsDate;
    FFECENVIO := DM1.ispDoc_S.FieldByName('FECENVIO').AsDateTime;
    FFECPEDIDO := DM1.ispDoc_S.FieldByName('FECPEDIDO').AsDateTime;
    FFECPOSPAGO := DM1.ispDoc_S.FieldByName('FECPOSPAGO').AsDateTime;
    FFECVENCEDO := DM1.ispDoc_S.FieldByName('FECVENCEDO').AsDateTime;
    FFECHRELCOB := DM1.ispDoc_S.FieldByName('FECHRELCOB').AsDateTime;
    FFECHAPP := DM1.ispDoc_S.FieldByName('FECHAPP').AsDateTime;
    FIMPCOMISDO := DM1.ispDoc_S.FieldByName('IMPCOMISDO').AsDouble;
    FIMPDESCAUT := DM1.ispDoc_S.FieldByName('IMPDESCAUT').AsDouble;
    FIMPDESCESP := DM1.ispDoc_S.FieldByName('IMPDESCESP').AsDouble;
    FIMPDESCPP := DM1.ispDoc_S.FieldByName('IMPDESCPP').AsDouble;
    FIMPGTOSCOM := DM1.ispDoc_S.FieldByName('IMPGTOSCOM').AsDouble;
    FIMPIEPSDOC := DM1.ispDoc_S.FieldByName('IMPIEPSDOC').AsDouble;
    FIMPIVADOCT := DM1.ispDoc_S.FieldByName('IMPIVADOCT').AsDouble;
    FIMPRETIVADOC := DM1.ispDoc_S.FieldByName('IMPRETIVADOC').AsDouble;
    FIMPNETODOC := DM1.ispDoc_S.FieldByName('IMPNETODOC').AsDouble;
    FIMPPENDDOC := DM1.ispDoc_S.FieldByName('IMPPENDDOC').AsDouble;
    FIMPTOTALDO := DM1.ispDoc_S.FieldByName('IMPTOTALDO').AsDouble;
    FIMPRESODOC := DM1.ispDoc_S.FieldByName('IMPRESODOC').AsSmallInt;
    FINTERFAZCO := DM1.ispDoc_S.FieldByName('INTERFAZCO').AsString;
    FMONEDADOCT := DM1.ispDoc_S.FieldByName('MONEDADOCT').AsString;
    FNALMTRASP := DM1.ispDoc_S.FieldByName('NALMTRASP').AsString;
    FNATURALEZA := DM1.ispDoc_S.FieldByName('NATURALEZA').AsString;
    FNUMAGENTE := DM1.ispDoc_S.FieldByName('NUMAGENTE').AsString;
    FNUMALMAC := DM1.ispDoc_S.FieldByName('NUMALMAC').AsString;
    FNUMBULTOS := DM1.ispDoc_S.FieldByName('NUMBULTOS').AsSmallInt;
    FNUMMOVESP := DM1.ispDoc_S.FieldByName('NUMMOVESP').AsInteger;
    FNUMRELCOBR := DM1.ispDoc_S.FieldByName('NUMRELCOBR').AsInteger;
    FORDENCOMPR := DM1.ispDoc_S.FieldByName('ORDENCOMPR').AsString;
    FORIGENDOCT := DM1.ispDoc_S.FieldByName('ORIGENDOCT').AsSmallInt;
    FPORCCOMISD := DM1.ispDoc_S.FieldByName('PORCCOMISD').AsDouble;
    FPORCDESCPP := DM1.ispDoc_S.FieldByName('PORCDESCPP').AsDouble;
    FPORCINTMOR := DM1.ispDoc_S.FieldByName('PORCINTMOR').AsDouble;
    FPORCIVADOC := DM1.ispDoc_S.FieldByName('PORCIVADOC').AsDouble;
    FPRNEDOCTA := DM1.ispDoc_S.FieldByName('PRNEDOCTA').AsSmallInt;
    FREFERDOCTO  := DM1.ispDoc_S.FieldByName('REFERDOCTO').AsString;
    FREFERDOCTO2 := DM1.ispDoc_S.FieldByName('REFERDOCTO2').AsString;
    FTALON := DM1.ispDoc_S.FieldByName('TALON').AsString;
    FTIPOCAMBIO := DM1.ispDoc_S.FieldByName('TIPOCAMBIO').AsDouble;
    FTRANSPOR := DM1.ispDoc_S.FieldByName('TRANSPOR').AsString;
    FUNIDADESTL := DM1.ispDoc_S.FieldByName('UNIDADESTL').AsInteger;
    FVIATRANS := DM1.ispDoc_S.FieldByName('VIATRANS').AsString;
    FLLAVEPOL := DM1.ispDoc_S.FieldByName('LLAVEPOL').AsString;
    FCANCELA := DM1.ispDoc_S.FieldByName('CANCELA').AsString;
    FOBSERVA := DM1.ispDoc_S.FieldByName('OBSERVA').AsString;
    FIMPCHEQPAQ := DM1.ispDoc_S.FieldByName('IMPCHEQPAQ').AsDouble;
    FSISTORIG := DM1.ispDoc_S.FieldByName('SISTORIG').AsSmallInt;
    FHONORARIOS := DM1.ispDoc_S.FieldByName('HONORARIOS').AsSmallInt;
    FATENCIONA := DM1.ispDoc_S.FieldByName('ATENCIONA').AsString;

    FDOCTO_ID := DM1.ispDoc_S.FieldByName('DOCTO_ID').AsInteger;
    FFESERIE  := DM1.ispDoc_S.FieldByName('FESERIE').AsString;
    FFEFOLIO  := DM1.ispDoc_S.FieldByName('FEFOLIO').AsString;
    FFEFECHA  := DM1.ispDoc_S.FieldByName('FEFECHA').AsString;
    FFETOTAL  := DM1.ispDoc_S.FieldByName('FETOTAL').AsString;
    FFEEMRFC  := DM1.ispDoc_S.FieldByName('FEEMRFC').AsString;
    FFERERFC  := DM1.ispDoc_S.FieldByName('FERERFC').AsString;
    FFEREFID  := DM1.ispDoc_S.FieldByName('FEREFID').AsString;
    FFEUUID   := DM1.ispDoc_S.FieldByName('FEUUID').AsString;

    FIDRECURSO   := DM1.ispDoc_S.FieldByName('IDRECURSO').AsInteger;
    FIDDEPTO     := DM1.ispDoc_S.FieldByName('IDDEPTO').AsInteger;
    FIDDIRENTREGA:= DM1.ispDoc_S.FieldByName('IDDIRENTREGA').AsInteger;

    FMETODOPAGO   := DM1.ispDoc_S.FieldByName('METODOPAGO').AsString;
    FFORMAPAGO    := DM1.ispDoc_S.FieldByName('FORMAPAGO').AsString;
    FUSOCFDI      := DM1.ispDoc_S.FieldByName('USOCFDI').AsString;

    if TieneDetalle then
        CargaDetalle;
end;

procedure TDoc.Retrieve2;
var tDoc:String;
begin
//
    DM1.ispDoc_S.ParamByName('P_NUMTIPODOC').AsString := FNUMTIPODOC;
    DM1.ispDoc_S.ParamByName('P_SERIEDOCTO').AsString := FSERIEDOCTO;
    DM1.ispDoc_S.ParamByName('P_NUMDOCTO').AsString := FNUMDOCTO;

    DM1.ispDoc_S.ExecProc;

    tDoc := DM1.ispDoc_S.FieldByName('NUMDOCTO').AsString;
    FANIODOCTO := DM1.ispDoc_S.FieldByName('ANIODOCTO').AsSmallInt;
    FPERDOCTO := DM1.ispDoc_S.FieldByName('PERDOCTO').AsSmallInt;
    FAFECTESTAD := DM1.ispDoc_S.FieldByName('AFECTESTAD').AsSmallInt;
    FCLASEDOC := DM1.ispDoc_S.FieldByName('CLASEDOC').AsSmallInt;
    FCODCTEPROV := DM1.ispDoc_S.FieldByName('CODCTEPROV').AsString;
    FDIAESP := DM1.ispDoc_S.FieldByName('DIAESP').AsString;
    FFECDOCTO := DM1.ispDoc_S.FieldByName('FECDOCTO').AsDate;
    FFECENVIO := DM1.ispDoc_S.FieldByName('FECENVIO').AsDateTime;
    FFECPEDIDO := DM1.ispDoc_S.FieldByName('FECPEDIDO').AsDateTime;
    FFECPOSPAGO := DM1.ispDoc_S.FieldByName('FECPOSPAGO').AsDateTime;
    FFECVENCEDO := DM1.ispDoc_S.FieldByName('FECVENCEDO').AsDateTime;
    FFECHRELCOB := DM1.ispDoc_S.FieldByName('FECHRELCOB').AsDateTime;
    FFECHAPP := DM1.ispDoc_S.FieldByName('FECHAPP').AsDateTime;
    FIMPCOMISDO := DM1.ispDoc_S.FieldByName('IMPCOMISDO').AsDouble;
    FIMPDESCAUT := DM1.ispDoc_S.FieldByName('IMPDESCAUT').AsDouble;
    FIMPDESCESP := DM1.ispDoc_S.FieldByName('IMPDESCESP').AsDouble;
    FIMPDESCPP := DM1.ispDoc_S.FieldByName('IMPDESCPP').AsDouble;
    FIMPGTOSCOM := DM1.ispDoc_S.FieldByName('IMPGTOSCOM').AsDouble;
    FIMPIEPSDOC := DM1.ispDoc_S.FieldByName('IMPIEPSDOC').AsDouble;
    FIMPIVADOCT := DM1.ispDoc_S.FieldByName('IMPIVADOCT').AsDouble;
    FIMPRETIVADOC := DM1.ispDoc_S.FieldByName('IMPRETIVADOC').AsDouble;
    FIMPNETODOC := DM1.ispDoc_S.FieldByName('IMPNETODOC').AsDouble;
    FIMPPENDDOC := DM1.ispDoc_S.FieldByName('IMPPENDDOC').AsDouble;
    FIMPTOTALDO := DM1.ispDoc_S.FieldByName('IMPTOTALDO').AsDouble;
    FIMPRESODOC := DM1.ispDoc_S.FieldByName('IMPRESODOC').AsSmallInt;
    FINTERFAZCO := DM1.ispDoc_S.FieldByName('INTERFAZCO').AsString;
    FMONEDADOCT := DM1.ispDoc_S.FieldByName('MONEDADOCT').AsString;
    FNALMTRASP := DM1.ispDoc_S.FieldByName('NALMTRASP').AsString;
    FNATURALEZA := DM1.ispDoc_S.FieldByName('NATURALEZA').AsString;
    FNUMAGENTE := DM1.ispDoc_S.FieldByName('NUMAGENTE').AsString;
    FNUMALMAC := DM1.ispDoc_S.FieldByName('NUMALMAC').AsString;
    FNUMBULTOS := DM1.ispDoc_S.FieldByName('NUMBULTOS').AsSmallInt;
    FNUMMOVESP := DM1.ispDoc_S.FieldByName('NUMMOVESP').AsInteger;
    FNUMRELCOBR := DM1.ispDoc_S.FieldByName('NUMRELCOBR').AsInteger;
    FORDENCOMPR := DM1.ispDoc_S.FieldByName('ORDENCOMPR').AsString;
    FORIGENDOCT := DM1.ispDoc_S.FieldByName('ORIGENDOCT').AsSmallInt;
    FPORCCOMISD := DM1.ispDoc_S.FieldByName('PORCCOMISD').AsDouble;
    FPORCDESCPP := DM1.ispDoc_S.FieldByName('PORCDESCPP').AsDouble;
    FPORCINTMOR := DM1.ispDoc_S.FieldByName('PORCINTMOR').AsDouble;
    FPORCIVADOC := DM1.ispDoc_S.FieldByName('PORCIVADOC').AsDouble;
    FPRNEDOCTA := DM1.ispDoc_S.FieldByName('PRNEDOCTA').AsSmallInt;
    FREFERDOCTO  := DM1.ispDoc_S.FieldByName('REFERDOCTO').AsString;
    FREFERDOCTO2 := DM1.ispDoc_S.FieldByName('REFERDOCTO2').AsString;
    FTALON := DM1.ispDoc_S.FieldByName('TALON').AsString;
    FTIPOCAMBIO := DM1.ispDoc_S.FieldByName('TIPOCAMBIO').AsDouble;
    FTRANSPOR := DM1.ispDoc_S.FieldByName('TRANSPOR').AsString;
    FUNIDADESTL := DM1.ispDoc_S.FieldByName('UNIDADESTL').AsInteger;
    FVIATRANS := DM1.ispDoc_S.FieldByName('VIATRANS').AsString;
    FLLAVEPOL := DM1.ispDoc_S.FieldByName('LLAVEPOL').AsString;
    FCANCELA := DM1.ispDoc_S.FieldByName('CANCELA').AsString;
    FOBSERVA := DM1.ispDoc_S.FieldByName('OBSERVA').AsString;
    FIMPCHEQPAQ := DM1.ispDoc_S.FieldByName('IMPCHEQPAQ').AsDouble;
    FSISTORIG := DM1.ispDoc_S.FieldByName('SISTORIG').AsSmallInt;
    FHONORARIOS := DM1.ispDoc_S.FieldByName('HONORARIOS').AsSmallInt;
    FATENCIONA := DM1.ispDoc_S.FieldByName('ATENCIONA').AsString;

    FDOCTO_ID := DM1.ispDoc_S.FieldByName('DOCTO_ID').AsInteger;
    FFESERIE  := DM1.ispDoc_S.FieldByName('FESERIE').AsString;
    FFEFOLIO  := DM1.ispDoc_S.FieldByName('FEFOLIO').AsString;
    FFEFECHA  := DM1.ispDoc_S.FieldByName('FEFECHA').AsString;
    FFETOTAL  := DM1.ispDoc_S.FieldByName('FETOTAL').AsString;
    FFEEMRFC  := DM1.ispDoc_S.FieldByName('FEEMRFC').AsString;
    FFERERFC  := DM1.ispDoc_S.FieldByName('FERERFC').AsString;
    FFEREFID  := DM1.ispDoc_S.FieldByName('FEREFID').AsString;
    FFEUUID   := DM1.ispDoc_S.FieldByName('FEUUID').AsString;

    FIDRECURSO   := DM1.ispDoc_S.FieldByName('IDRECURSO').AsInteger;
    FIDDEPTO     := DM1.ispDoc_S.FieldByName('IDDEPTO').AsInteger;
    FIDDIRENTREGA:= DM1.ispDoc_S.FieldByName('IDDIRENTREGA').AsInteger;
    FMETODOPAGO   := DM1.ispDoc_S.FieldByName('METODOPAGO').AsString;
    FFORMAPAGO    := DM1.ispDoc_S.FieldByName('FORMAPAGO').AsString;
    FUSOCFDI      := DM1.ispDoc_S.FieldByName('USOCFDI').AsString;

end;

function TDoc.TieneDetalle:Boolean;
begin
    Result := (oTipoDoc.TieneDetalle = 1);
end;

procedure TDoc.CargaDetalle;
var iRen:Integer;

begin

    LimpiarDetalle;
//Prepar acceso a BD
    DM1.iqrDet.Prepare;

//Carga detalle del Documento
    DM1.iqrDet.ParamByName('P_NUMTIPODOC').AsString := FNUMTIPODOC;
    DM1.iqrDet.ParamByName('P_SERIEDOCTO').AsString := FSERIEDOCTO;
    DM1.iqrDet.ParamByName('P_NUMDOCTO').AsString := FNUMDOCTO;
    DM1.iqrDet.ParamByName('P_FECDOCTO').AsDateTime := FFECDOCTO;

    DM1.iqrDet.Open;

    while not DM1.iqrDet.eof do begin
        iRen := StrToInt(DM1.iqrDet.FieldByName('NUMMOVTO').AsString);
        FF1.NumberRC[iRen,IdCols.Partida]   := iRen;
        FF1.TextRC[iRen,IdCols.CodProdSer]   := DM1.iqrDet.FieldByName('CODPRODSER').AsString;
        FF1.TextRC[iRen,IdCols.DescripPro]   := DM1.iqrDet.FieldByName('DESCRIPPRO').AsString;
        FF1.NumberRC[iRen,IdCols.Unidades] := DM1.iqrDet.FieldByName('UNIDADES').AsFloat;
        FF1.NumberRC[iRen,IdCols.PrecioLista] := DM1.iqrDet.FieldByName('PRECIOLISTA').AsFloat;
        FF1.NumberRC[iRen,IdCols.PorcDescAu] := DM1.iqrDet.FieldByName('PORCDESCAU').AsFloat;
//--- 06/Nov/2009 FPG : Como guardo Costo*Unidades, al leerlo vuelvo a ponerlo en costo Unitario
        if (DM1.iqrDet.FieldByName('UNIDADES').AsFloat) = 0 then
          FF1.NumberRC[iRen,IdCols.CostoMov] := 0
        else
          FF1.NumberRC[iRen,IdCols.CostoMov] := DM1.iqrDet.FieldByName('COSTOMOV').AsFloat /
                                                DM1.iqrDet.FieldByName('UNIDADES').AsFloat;

        FF1.NumberRC[iRen,IdCols.PorcIEPSMo] := DM1.iqrDet.FieldByName('PORCIEPSMO').AsFloat;
        FF1.NumberRC[iRen,IdCols.PorcIVAMov] := DM1.iqrDet.FieldByName('PORCIVAMOV').AsFloat;
        FF1.NumberRC[iRen,IdCols.PorcRetIVAMov] := DM1.iqrDet.FieldByName('PORCRETIVAMOV').AsFloat;
        FF1.NumberRC[iRen,IdCols.PorcComisV] := DM1.iqrDet.FieldByName('PORCCOMISV').AsFloat;
        FF1.NumberRC[iRen,IdCols.Descto1] := DM1.iqrDet.FieldByName('DESCTO1').AsFloat;
        FF1.NumberRC[iRen,IdCols.Descto2] := DM1.iqrDet.FieldByName('DESCTO2').AsFloat;
        FF1.NumberRC[iRen,IdCols.Descto3] := DM1.iqrDet.FieldByName('DESCTO3').AsFloat;
        FF1.NumberRC[iRen,IdCols.Descto4] := DM1.iqrDet.FieldByName('DESCTO4').AsFloat;
        FF1.NumberRC[iRen,IdCols.Descto5] := DM1.iqrDet.FieldByName('DESCTO5').AsFloat;
        FF1.NumberRC[iRen,IdCols.Descto6] := DM1.iqrDet.FieldByName('DESCTO6').AsFloat;
        FF1.NumberRC[iRen,IdCols.Descto7] := DM1.iqrDet.FieldByName('DESCTO7').AsFloat;
        FF1.NumberRC[iRen,IdCols.Descto8] := DM1.iqrDet.FieldByName('DESCTO8').AsFloat;
        FF1.NumberRC[iRen,IdCols.Descto9] := DM1.iqrDet.FieldByName('DESCTO9').AsFloat;
        FF1.NumberRC[iRen,IdCols.Descto10] := DM1.iqrDet.FieldByName('DESCTO10').AsFloat;
        FF1.TextRC[iRen,IdCols.DeNumTipoDoc] := DM1.iqrDet.FieldByName('DENUMTIPODOC').AsString;
        FF1.TextRC[iRen,IdCols.DeSerieDocto] := DM1.iqrDet.FieldByName('DESERIEDOCTO').AsString;
        FF1.TextRC[iRen,IdCols.DeNumDocto] := DM1.iqrDet.FieldByName('DENUMDOCTO').AsString;
        FF1.TextRC[iRen,IdCols.DeNumMovto] := DM1.iqrDet.FieldByName('DENUMMOVTO').AsString;
        FF1.TextRC[iRen,IdCols.CodFamilia]   := DM1.iqrDet.FieldByName('CodFamilia').AsString;
        FF1.NumberRC[iRen,IdCols.TipoCalculo] := DM1.iqrDet.FieldByName('TIPOCALCULO').AsInteger;
        FF1.NumberRC[iRen,IdCols.Cancela] := DM1.iqrDet.FieldByName('CANCELA').AsInteger;
        FPEDIMENTO1 := DM1.iqrDet.FieldByName('PEDIMENTO1').AsString;
        FADUANA     := DM1.iqrDet.FieldByName('ADUANA').AsString;
        FFECHAENT   := DM1.iqrDet.FieldByName('FECHAENT').AsDateTime;
        FF1.TextRC[iRen,IdCols.Pedimento]    := FPEDIMENTO1;
        FF1.NumberRC[iRen,IdCols.FechaEnt]   := FFECHAENT;
        FF1.TextRC[iRen,IdCols.Aduana]       := FADUANA;


        DM1.iqrDet.Next;
    end;
    DM1.iqrDet.Unprepare;
end;

procedure TDoc.LimpiarDetalle;
begin

    FF1.ClearRange(1, 1, FF1.MaxRow,4, F1ClearValues);
end;




procedure TDoc.Save;
var iFolio:Integer;
    iDatosOk:Integer;
begin
//
  FFac.Clear;
  FMsg.Clear;
  if oEmp.ProcesandoCierre then begin
    FMsg.Add('');
    FMsg.Add('No es posile grabar información.');
    FMsg.Add('');
    FMsg.Add('El cierre mensual está en proceso.');
    FMsg.Add('Inténtalo dentro de 1 o 2 minutos.');
    FError := 2;
    exit;
  end;


    FMsg.Clear;

    iDatosOk := ValidarDatos;
    if iDatosOk > 0 then begin
        FError := iDatosOk;
        exit;
    end;

    if FCANCELA = '1' then begin
        FError := 1;
        FMsg.Clear;
        FMsg.Add ('El documento NO se grabó porque esta cancelado!!');
        exit;
    end;


    DM1.Start;

    FDOCTO_ID := DM1.GetDocID;
    if (oTipoDoc.NUMAUTO = 1) and (FStatus = edInsert) then begin
        FNUMDOCTO := GetNextFolio;
        NUMDOCTO := FNUMDOCTO;
    end;

    if FTIPOCAMBIO <= 0 then FTIPOCAMBIO := 1;

    DM1.ispDoc_U.ParamByName('ANIODOCTO').AsSmallInt := FANIODOCTO;
    DM1.ispDoc_U.ParamByName('PERDOCTO').AsSmallInt := FPERDOCTO;
    DM1.ispDoc_U.ParamByName('NUMTIPODOC').AsString := FNUMTIPODOC;
    DM1.ispDoc_U.ParamByName('SERIEDOCTO').AsString := FSERIEDOCTO;
    DM1.ispDoc_U.ParamByName('NUMDOCTO').AsString := FNUMDOCTO;
    DM1.ispDoc_U.ParamByName('AFECTESTAD').AsSmallInt := FAFECTESTAD;
    DM1.ispDoc_U.ParamByName('CLASEDOC').AsSmallInt := FCLASEDOC;
    DM1.ispDoc_U.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;
    DM1.ispDoc_U.ParamByName('DIAESP').AsString := FDIAESP;
    DM1.ispDoc_U.ParamByName('FECDOCTO').AsDateTime := FFECDOCTO;
    DM1.ispDoc_U.ParamByName('FECENVIO').AsDateTime := FFECENVIO;
    DM1.ispDoc_U.ParamByName('FECPEDIDO').AsDateTime := FFECPEDIDO;
    DM1.ispDoc_U.ParamByName('FECPOSPAGO').AsDateTime := FFECPOSPAGO;
    DM1.ispDoc_U.ParamByName('FECVENCEDO').AsDateTime := FFECVENCEDO;
    DM1.ispDoc_U.ParamByName('FECHRELCOB').AsDateTime := FFECHRELCOB;
    DM1.ispDoc_U.ParamByName('FECHAPP').AsDateTime := FFECHAPP;
    DM1.ispDoc_U.ParamByName('IMPCOMISDO').AsDouble := FIMPCOMISDO;
    DM1.ispDoc_U.ParamByName('IMPDESCAUT').AsDouble := FIMPDESCAUT;
    DM1.ispDoc_U.ParamByName('IMPDESCESP').AsDouble := FIMPDESCESP;
    DM1.ispDoc_U.ParamByName('IMPDESCPP').AsDouble := FIMPDESCPP;
    DM1.ispDoc_U.ParamByName('IMPGTOSCOM').AsDouble := FIMPGTOSCOM;
    DM1.ispDoc_U.ParamByName('IMPIEPSDOC').AsDouble := FIMPIEPSDOC;
    DM1.ispDoc_U.ParamByName('IMPIVADOCT').AsDouble := FIMPIVADOCT;
    DM1.ispDoc_U.ParamByName('IMPRETIVADOC').AsDouble := FIMPRETIVADOC;
    DM1.ispDoc_U.ParamByName('IMPNETODOC').AsDouble := FIMPNETODOC;
    DM1.ispDoc_U.ParamByName('IMPIVADOCT').AsDouble := FIMPIVADOCT;
    DM1.ispDoc_U.ParamByName('IMPPENDDOC').AsDouble := FIMPPENDDOC;
    DM1.ispDoc_U.ParamByName('IMPTOTALDO').AsDouble := FIMPTOTALDO;
    DM1.ispDoc_U.ParamByName('IMPRESODOC').AsSmallInt := FIMPRESODOC;
    DM1.ispDoc_U.ParamByName('INTERFAZCO').AsString := FINTERFAZCO;
    DM1.ispDoc_U.ParamByName('MONEDADOCT').AsString := FMONEDADOCT;
    DM1.ispDoc_U.ParamByName('NALMTRASP').AsString := FNALMTRASP;
    DM1.ispDoc_U.ParamByName('NATURALEZA').AsString := FNATURALEZA;
    DM1.ispDoc_U.ParamByName('NUMAGENTE').AsString := FNUMAGENTE;
    DM1.ispDoc_U.ParamByName('NUMALMAC').AsString := FNUMALMAC;
    DM1.ispDoc_U.ParamByName('NUMBULTOS').AsSmallInt := FNUMBULTOS;
    DM1.ispDoc_U.ParamByName('NUMMOVESP').AsInteger := FNUMMOVESP;
    DM1.ispDoc_U.ParamByName('NUMRELCOBR').AsInteger := FNUMRELCOBR;
    DM1.ispDoc_U.ParamByName('ORDENCOMPR').AsString := FORDENCOMPR;
    DM1.ispDoc_U.ParamByName('ORIGENDOCT').AsSmallInt := FORIGENDOCT;
    DM1.ispDoc_U.ParamByName('PORCCOMISD').AsDouble := FPORCCOMISD;
    DM1.ispDoc_U.ParamByName('PORCDESCPP').AsDouble := FPORCDESCPP;
    DM1.ispDoc_U.ParamByName('PORCINTMOR').AsDouble := FPORCINTMOR;
    DM1.ispDoc_U.ParamByName('PORCIVADOC').AsDouble := FPORCIVADOC;
    DM1.ispDoc_U.ParamByName('PRNEDOCTA').AsSmallInt := FPRNEDOCTA;
    DM1.ispDoc_U.ParamByName('REFERDOCTO').AsString := FREFERDOCTO;
    DM1.ispDoc_U.ParamByName('REFERDOCTO2').AsString := FREFERDOCTO2;
    DM1.ispDoc_U.ParamByName('TALON').AsString := FTALON;
    DM1.ispDoc_U.ParamByName('TIPOCAMBIO').AsDouble := FTIPOCAMBIO;
    DM1.ispDoc_U.ParamByName('TRANSPOR').AsString := FTRANSPOR;
    DM1.ispDoc_U.ParamByName('UNIDADESTL').AsInteger := FUNIDADESTL;
    DM1.ispDoc_U.ParamByName('VIATRANS').AsString := FVIATRANS;
    DM1.ispDoc_U.ParamByName('LLAVEPOL').AsString := FLLAVEPOL;
    DM1.ispDoc_U.ParamByName('CANCELA').AsString := FCANCELA;
    DM1.ispDoc_U.ParamByName('OBSERVA').AsString := FOBSERVA;
    DM1.ispDoc_U.ParamByName('IMPCHEQPAQ').AsDouble := FIMPCHEQPAQ;
    DM1.ispDoc_U.ParamByName('SISTORIG').AsSmallInt := FSISTORIG;
    DM1.ispDoc_U.ParamByName('HONORARIOS').AsSmallInt := FHONORARIOS;
    DM1.ispDoc_U.ParamByName('ATENCIONA').AsString := FATENCIONA;
    DM1.ispDoc_U.ParamByName('FechaAct').AsDateTime := date + time;
    DM1.ispDoC_U.ParamByName('UserAct').AsString := oUser.LOGIN;
    DM1.ispDoC_U.ParamByName('IDRECURSO').AsInteger := FIDRECURSO;
    DM1.ispDoC_U.ParamByName('IDDEPTO').AsInteger := FIDDEPTO;
    DM1.ispDoc_U.ParamByName('DOCTO_ID').AsInteger := FDOCTO_ID;
    DM1.ispDoc_U.ParamByName('IDDIRENTREGA').AsInteger := FIDDIRENTREGA;
    DM1.ispDoc_U.ParamByName('METODOPAGO').AsString   := FMETODOPAGO;
    DM1.ispDoc_U.ParamByName('FORMAPAGO').AsString    := FFORMAPAGO;
    DM1.ispDoc_U.ParamByName('USOCFDI').AsString      := FUSOCFDI;

    DM1.ispDoc_U.ExecProc;

    if TieneDetalle then
        GrabaDetalle;

    // Si el tipo de docto lleva la numeracion automática, incrementa el folio
    // Cambio: 28/Jul/2003    v--- agregado ---------v
    if (oTipoDoc.NUMAUTO = 1) and (FStatus = edInsert) then begin
        iFolio := StrToInt(FNUMDOCTO);
        oTipoDoc.SetFolio(FNUMTIPODOC,iFolio);
    end;

    if oTipoDoc.AfectaInv in [1,2,3,4] then
       AfectarExistencias;

   DM1.Commit;

end;

procedure TDoc.Update;
var iFolio:Integer;
    iDatosOk:Integer;
begin

    DM1.Start;

    iSql1.ParamByName('DOCTO_ID').AsInteger := FDOCTO_ID;
    iSql1.ParamByName('FECDOCTO').AsDateTime := FFECDOCTO;
//    iSql1.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;
//    iSql1.ParamByName('NUMAGENTE').AsString := FNUMAGENTE;
    iSql1.ParamByName('MONEDADOCT').AsString := FMONEDADOCT;
    iSql1.ParamByName('NUMALMAC').AsString := FNUMALMAC;
    iSql1.ParamByName('VIATRANS').AsString := FVIATRANS;
    iSql1.ParamByName('ORDENCOMPR').AsString := FORDENCOMPR;
    iSql1.ParamByName('REFERDOCTO').AsString := FREFERDOCTO;
    iSql1.ParamByName('REFERDOCTO2').AsString := FREFERDOCTO2;
    iSql1.ParamByName('OBSERVA').AsString := FOBSERVA;
    iSql1.ParamByName('IDDIRENTREGA').AsInteger := FIDDIRENTREGA;
    iSql1.ParamByName('METODOPAGO').AsString := FMETODOPAGO;
    iSql1.ParamByName('FORMAPAGO').AsString := FFORMAPAGO;
    iSql1.ParamByName('USOCFDI').AsString := FUSOCFDI;
    iSql1.ParamByName('FECHAACT').AsDateTime := Date+Time;
    iSql1.ParamByName('USERACT').AsString := oUser.LOGIN;

    try
      iSql1.Execute;
    except
      FError := 1;
      DM1.RollBack;
      exit;
    end;

   DM1.Commit;

end;

procedure TDoc.SaveFE(ADocto_Id:Integer;
                      ASerie:String;
                      AFolio:String;
                      AFecha:String;
                      ATotal:String;
                      AEMRFC:String;
                      ARERFC:String;
                      AUUID:String);
begin
  with DM1 do begin
    isqlTemp.Unprepare;
    isqlTemp.SQL.Clear;
    isqlTemp.SQL.Add ('UPDATE MBA10008 SET FESERIE = ?FESERIE, FEFOLIO = ?FEFOLIO, ');
    isqlTemp.SQL.Add (' FEFECHA = ?FEFECHA, FETOTAL = ?FETOTAL, FEEMRFC = ?FEEMRFC, ');
    isqlTemp.SQL.Add (' FERERFC = ?FERERFC, FEUUID = ?FEUUID, FEREFID = ?FEREFID ');
    isqlTemp.SQL.Add ('WHERE (DOCTO_ID = ?DOCTO_ID);');
    isqlTemp.Prepare;

    isqlTemp.ParamByName('FESERIE').AsString := ASerie;
    isqlTemp.ParamByName('FEFOLIO').AsString := AFolio;
    isqlTemp.ParamByName('FEFECHA').AsString := AFecha;
    isqlTemp.ParamByName('FETOTAL').AsString := ATotal;
    isqlTemp.ParamByName('FEEMRFC').AsString := AEMRFC;
    isqlTemp.ParamByName('FERERFC').AsString := ARERFC;
    isqlTemp.ParamByName('FEUUID').AsString  := AUUID;
    isqlTemp.ParamByName('FEREFID').AsString := sm.StrFloat(ADocto_Id,'#');
    isqlTemp.ParamByName('DOCTO_ID').AsInteger := ADocto_Id;
    try
      isqlTemp.Execute;
    except
      FError := 1;
    end;
  end;

end;


procedure TDoc.AfectarExistencias;
begin
    DM1.ispMBA10016.ParamByName('P_NUMTIPODOC').AsString := FNUMTIPODOC;
    DM1.ispMBA10016.ParamByName('P_SERIEDOCTO').AsString := FSERIEDOCTO;
    DM1.ispMBA10016.ParamByName('P_NUMDOCTO').AsString := FNUMDOCTO;
    DM1.ispMBA10016.ParamByName('P_Cancela').AsString := '0';
    DM1.ispMBA10016.ParamByName('P_User').AsString := oUser.LOGIN;

    DM1.ispMBA10016.ExecProc;


end;

procedure TDoc.DesafectarExistencias;
begin
    DM1.ispMBA10016.ParamByName('P_NUMTIPODOC').AsString := FNUMTIPODOC;
    DM1.ispMBA10016.ParamByName('P_SERIEDOCTO').AsString := FSERIEDOCTO;
    DM1.ispMBA10016.ParamByName('P_NUMDOCTO').AsString := FNUMDOCTO;
    DM1.ispMBA10016.ParamByName('P_Cancela').AsString := '1';
    DM1.ispMBA10016.ParamByName('P_User').AsString := oUser.LOGIN;

    DM1.ispMBA10016.ExecProc;


end;

procedure TDoc.GrabaDetalle;
var iRen,iCol,iMaxRow,iVacios,iNumMovto:Integer;
    tCodPS,tTipoCosto:String;
    tNumMovto:String;
    dPrecioNeto,dPrecioLista,dCantidad,dIVA,dTotal,dCosto,dImpNetoDoc:Double;
    IdPedimento:Integer;
    v:Variant;
begin
//Prepar acceso a BD
    DM1.ispDet.Prepare;
    DM1.isqlDet.Prepare;
    DM1.ispDetU02.Prepare;

//Inicializar variables
    iNumMovto := 0;
    iVacios :=0;
    iMaxRow := FF1.MaxRow;
//Borra detalle existente, para guardar el nuevo
    DM1.isqlDet.ParamByName('P_NUMTIPODOC').AsString := FNUMTIPODOC;
    DM1.isqlDet.ParamByName('P_SERIEDOCTO').AsString := FSERIEDOCTO;
    DM1.isqlDet.ParamByName('P_NUMDOCTO').AsString := FNUMDOCTO;
    DM1.isqlDet.ExecSQL;
    DM1.isqlDet.Unprepare;

    if FTIPOCAMBIO <= 0 then FTIPOCAMBIO :=1;

    dImpNetoDoc := 0;
    for iRen := 1 to iMaxRow do begin
        tCodPS := FF1.TextRC[iRen,IdCols.CodProdSer];
        tCodPS := sm.Strip (tCodPS);
        if ((length(tCodPS) > 0) and (FF1.NumberRC[iRen,IdCols.Unidades] > 0)) or
           (length(FF1.TextRC[iRen,IdCols.DescripPro]) > 0) then begin
            iVacios := 0; //Al encontrar un codigo limpio el contador de vacios
            iNumMovto := iNumMovto + 1;
            tNumMovto := sm.StrFloat (iNumMovto,'00000');
            dPrecioLista := FF1.NumberRC[iRen,IdCols.PrecioLista];
            dPrecioNeto := FF1.NumberRC[iRen,IdCols.PrecioNeto];
            dCantidad := FF1.NumberRC[iRen,IdCols.Unidades];
            dTotal    := FF1.NumberRC[iRen,IdCols.ImpNetoMov];
            dImpNetoDoc := dImpNetoDoc + dTotal;
            DM1.ispDet.ParamByName('ANIODOCTO').AsSmallInt:= FANIODOCTO;
            DM1.ispDet.ParamByName('PERDOCTO').AsSmallInt := FPERDOCTO;
            DM1.ispDet.ParamByName('NUMTIPODOC').AsString := FNUMTIPODOC;
            DM1.ispDet.ParamByName('SERIEDOCTO').AsString := FSERIEDOCTO;
            DM1.ispDet.ParamByName('NUMDOCTO').AsString := FNUMDOCTO;
            DM1.ispDet.ParamByName('FECDOCTO').AsDate := FFECDOCTO;
            DM1.ispDet.ParamByName('NUMMOVTO').AsString := tNumMovto;
            DM1.ispDet.ParamByName('CODPRODSER').AsString := tCodPS;
            DM1.ispDet.ParamByName('UNIDADES').AsDouble := dCantidad;
            DM1.ispDet.ParamByName('PRECIOLISTA').AsFloat := dPrecioLista;
            DM1.ispDet.ParamByName('PRECIO').AsFloat := dPrecioNeto;
            DM1.ispDet.ParamByName('IMPNETOMOV').AsFloat := dTotal;
            DM1.ispDet.ParamByName('IMPIVAMOVT').AsFloat := FF1.NumberRC[iRen,IdCols.ImpIVAMovt];
            DM1.ispDet.ParamByName('IMPRETIVAMOV').AsFloat := FF1.NumberRC[iRen,IdCols.ImpRetIVAMov];

            DM1.ispDet.ParamByName('PORCIVAMOV').AsFloat := FF1.NumberRC[iRen,IdCols.PorcIVAMov];
            DM1.ispDet.ParamByName('PORCRETIVAMOV').AsFloat := FF1.NumberRC[iRen,IdCols.PorcRetIVAMov];
            DM1.ispDet.ParamByName('TOTALMOVTO').AsFloat := FF1.NumberRC[iRen,IdCols.ImpNetoMov] +
                                                            FF1.NumberRC[iRen,IdCols.ImpIVAMovt];

            DM1.ispDet.ParamByName('UNIVTA').AsString := FF1.TextRC[iRen,IdCols.UniVta];
            DM1.ispDet.ParamByName('DESCRIPPRO').AsString := FF1.TextRC[iRen,IdCols.DescripPro];
            DM1.ispDet.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;

//            dCosto := FF1.NumberRC[iRen,IdCols.CostoMov] / FTIPOCAMBIO;
            dCosto := FF1.NumberRC[iRen,IdCols.CostoMov]; // 15/Abr/2005: le quité el tipo de cambio
            DM1.ispDet.ParamByName('COSTOMOV').AsDouble := dCosto * dCantidad;
            DM1.ispDet.ParamByName('IMPCOMISMO').AsDouble := FF1.NumberRC[iRen,IdCols.ImpComisMo];
            DM1.ispDet.ParamByName('IMPDESCAUT').AsDouble := FF1.NumberRC[iRen,IdCols.ImpDescAut];
            DM1.ispDet.ParamByName('IMPDESCESP').AsDouble := 0;
            DM1.ispDet.ParamByName('IMPIEPSMOV').AsDouble := FF1.NumberRC[iRen,IdCols.ImpIEPSMov];
            DM1.ispDet.ParamByName('NUMCONC').AsString := FF1.TextRC[iRen,IdCols.NumConc]; //Concepto de Inventario
            DM1.ispDet.ParamByName('NUMCONCTRA').AsString := '';;
            DM1.ispDet.ParamByName('PORCCOMISV').AsDouble := FF1.NumberRC[iRen,IdCols.PorcComisV];
            DM1.ispDet.ParamByName('PORCDESCAU').AsDouble := FF1.NumberRC[iRen,IdCols.PorcDescAu];
            DM1.ispDet.ParamByName('PORCDESCES').AsDouble := 0;
            DM1.ispDet.ParamByName('PORCIEPSMO').AsDouble := FF1.NumberRC[iRen,IdCols.PorcIEPSMo];
            DM1.ispDet.ParamByName('REFERMOVTO').AsString := '';
            DM1.ispDet.ParamByName('TIPCOSTO').AsString := '';
            DM1.ispDet.ParamByName('UNIPEND').AsDouble := dCantidad;
            DM1.ispDet.ParamByName('UNIFACT').AsDouble := 0;
            DM1.ispDet.ParamByName('PRECIOLISTA').AsDouble := FF1.NumberRC[iRen,IDCols.PrecioLista];
            DM1.ispDet.ParamByName('DESCTO1').AsDouble := FF1.NumberRC[iRen,IdCols.Descto1];
            DM1.ispDet.ParamByName('DESCTO2').AsDouble := FF1.NumberRC[iRen,IdCols.Descto2];
            DM1.ispDet.ParamByName('DESCTO3').AsDouble := FF1.NumberRC[iRen,IdCols.Descto3];
            DM1.ispDet.ParamByName('DESCTO4').AsDouble := FF1.NumberRC[iRen,IdCols.Descto4];
            DM1.ispDet.ParamByName('DESCTO5').AsDouble := FF1.NumberRC[iRen,IdCols.Descto5];
            DM1.ispDet.ParamByName('DESCTO6').AsDouble := FF1.NumberRC[iRen,IdCols.Descto6];
            DM1.ispDet.ParamByName('DESCTO7').AsDouble := FF1.NumberRC[iRen,IdCols.Descto7];
            DM1.ispDet.ParamByName('DESCTO8').AsDouble := FF1.NumberRC[iRen,IdCols.Descto8];
            DM1.ispDet.ParamByName('DESCTO9').AsDouble := FF1.NumberRC[iRen,IdCols.Descto9];
            DM1.ispDet.ParamByName('DESCTO10').AsDouble := FF1.NumberRC[iRen,IdCols.Descto10];
            DM1.ispDet.ParamByName('CODFAMILIA').AsString := FF1.TextRC[iRen,IdCols.CodFamilia];
            if length(FF1.TextRC[iRen,IdCols.DeNumDocto]) > 0 then begin
                DM1.ispDet.ParamByName('DENUMTIPODOC').AsString := FF1.TextRC[iRen,IdCols.DeNumTipoDoc];
                DM1.ispDet.ParamByName('DESERIEDOCTO').AsString := FF1.TextRC[iRen,IdCols.DeSerieDocto];
                DM1.ispDet.ParamByName('DENUMDOCTO').AsString := FF1.TextRC[iRen,IdCols.DeNumDocto];
                DM1.ispDet.ParamByName('DENUMMOVTO').AsString := FF1.TextRC[iRen,IdCols.DeNumMovto];

                DM1.ispDetU02.ParamByName('NUMTIPODOC').AsString := FF1.TextRC[iRen,IdCols.DeNumTipoDoc];
                DM1.ispDetU02.ParamByName('SERIEDOCTO').AsString := FF1.TextRC[iRen,IdCols.DeSerieDocto];
                DM1.ispDetU02.ParamByName('NUMDOCTO').AsString := FF1.TextRC[iRen,IdCols.DeNumDocto];
                DM1.ispDetU02.ParamByName('NUMMOVTO').AsString := FF1.TextRC[iRen,IdCols.DeNumMovto];
                DM1.ispDetU02.ParamByName('UNIFACT').AsDouble := dCantidad;
                DM1.ispDetU02.Execute;

            end;
{            if length(FF1.TextRC[iRen,IdCols.CmNumDocto]) > 0 then begin
                DM1.ispDetU02.ParamByName('NUMTIPODOC').AsString := FF1.TextRC[iRen,IdCols.CmNumTipoDoc];
                DM1.ispDetU02.ParamByName('SERIEDOCTO').AsString := FF1.TextRC[iRen,IdCols.CmSerieDocto];
                DM1.ispDetU02.ParamByName('NUMDOCTO').AsString := FF1.TextRC[iRen,IdCols.CmNumDocto];
                DM1.ispDetU02.ParamByName('NUMMOVTO').AsString := FF1.TextRC[iRen,IdCols.CmNumMovto];
                DM1.ispDetU02.ParamByName('UNIFACT').AsDouble := dCantidad;
                DM1.ispDetU02.Execute;

            end;

            // Hay pedimentos en la factura
            if (FF1.NumberRC[iRen,IdCols.CmNumDocto] > 0) then begin
                v := FF1.NumberRC[iRen,IdCols.CmNumDocto];
                IdPedimento := v;
                DM1.ispDetU12.ParamByName('P_IDPEDIMENTO').AsInteger := IdPedimento;
                DM1.ispDetU12.ParamByName('P_UNIDADES').AsDouble := FF1.NumberRC[iRen,IdCols.UniPedimento];
                DM1.ispDetU12.Execute;
            end;
}
            // Hay numero de pedimento
            if (FF1.TextRC[iRen,IdCols.Pedimento] <> '') then begin
                DM1.ispDet.ParamByName('PEDIMENTO1').AsString := FF1.TextRC[iRen,IdCols.Pedimento];
                DM1.ispDet.ParamByName('ADUANA').AsString := FF1.TextRC[iRen,IdCols.Aduana];
                DM1.ispDet.ParamByName('FECHAENT').AsDateTime := FF1.NumberRC[iRen,IdCols.FechaEnt];
            end else begin
                DM1.ispDet.ParamByName('PEDIMENTO1').AsString := '';
                DM1.ispDet.ParamByName('ADUANA').AsString := '';
                DM1.ispDet.ParamByName('FECHAENT').AsDateTime := 1;
            end;

            DM1.ispDet.ParamByName('TIPOCAMBIO').AsDouble := FTIPOCAMBIO;
            DM1.ispDet.ParamByName('CANCELA').AsString := FCancela;
            if (FF1.TextRC[iRen,IdCols.Cancela] = '2') then
              DM1.ispDet.ParamByName('CANCELA').AsString := '2';
            DM1.ispDet.ParamByName('OBSERVA').AsString := '';
            DM1.ispDet.ParamByName('PRECUNIADQ').AsDouble := 0;
            DM1.ispDet.ParamByName('NUMALMAC').AsString := FNUMALMAC;
            DM1.ispDet.ParamByName('NALMTRASP').AsString := FNALMTRASP;
            DM1.ispDet.ParamByName('HONORARIOS').AsSmallInt := FHONORARIOS;
            DM1.ispDet.ParamByName('FECHAAct').AsDateTime := date + time;
            DM1.ispDet.ParamByName('UserAct').AsString := oUser.LOGIN;
            DM1.ispDet.ParamByName('DOCTO_ID').AsInteger := FDOCTO_ID;

//            DM1.ispDet.ParamByName('TIPOCALCULO').AsDouble := FF1.NumberRC[iRen,IdCols.TipoCalculo];


            DM1.ispDet.Execute;
        end;
    end;
    DM1.ispDet.Unprepare;
    DM1.ispDetU02.Unprepare;

  if FNUMTIPODOC = '1' then begin
    if Abs((FIMPNETODOC - dImpNetoDoc)) > 10 then begin
      FError := 10;
      FMsg.Clear;
      FMsg.Add ('Error al grabar la factura!!');
      FMsg.Add ('El monto del encabezado y del detalle se grabaron diferentes!!');
    end;
  end;

end;

function TDoc.ValidarDatos:Integer;
var t:String;
    i,iRes:Integer;

begin

    iRes := 0;

    if ((FFECDOCTO < oEmp.FechaIniPeriodo) or
       (FFECDOCTO > oEmp.FechaFinPeriodo)) and
       (oTipoDoc.AfectaInv in [1,2,3,4]) then begin
        iRes := iRes + 1;
        FMsg.Add ('LA fecha del documento está fuera del periodo de trabajo!');
    end;


    t := sm.Strip (FNUMTIPODOC);
    if length(t) <= 0 then iRes := iRes + 1;

    t := sm.Strip (FNUMDOCTO);
    if length(t) <= 0 then iRes := iRes + 1;

    t := sm.Strip (FCODCTEPROV);
    if (length(t) <= 0) and ((FNumTipoDoc ='1') or (FNumTipoDoc ='107')) then iRes := iRes + 1;

    t := sm.Strip (FNUMAGENTE);
    //Checar solo en las facturas.
    if (length(t) <= 0) and ((FNumTipoDoc ='1') or (FNumTipoDoc ='107')) then begin
        iRes := iRes + 1;
        FMsg.Add ('El Numero de Agente NO está capturado. Ojo!');
    end;

    t := sm.Strip (FVIATRANS);
    if (length(t) <= 0) and ((FNumTipoDoc ='1') or (FNumTipoDoc ='107')) then begin
        iRes := iRes + 1;
        FMsg.Add ('La via de transporte está vacía. Ojo!');
    end;

    if (FIMPTOTALDO <= 0) and ((FNumTipoDoc ='1') or (FNumTipoDoc ='107')) then iRes := iRes + 1;

    Result := iRes;

end;

procedure TDoc.SaveFactura;
var iFolio:Integer;
    iDatosOk:Integer;
begin
//
    FFac.Clear;
    FMsg.Clear;

//    DM1.Start;

    FDOCTO_ID := DM1.GetDocID;

    if FTIPOCAMBIO <= 0 then FTIPOCAMBIO := 1;

    DM1.ispDoc_U.ParamByName('ANIODOCTO').AsSmallInt := FANIODOCTO;
    DM1.ispDoc_U.ParamByName('PERDOCTO').AsSmallInt := FPERDOCTO;
    DM1.ispDoc_U.ParamByName('NUMTIPODOC').AsString := FNUMTIPODOC;
    DM1.ispDoc_U.ParamByName('SERIEDOCTO').AsString := FSERIEDOCTO;
    DM1.ispDoc_U.ParamByName('NUMDOCTO').AsString := FNUMDOCTO;
    DM1.ispDoc_U.ParamByName('AFECTESTAD').AsSmallInt := FAFECTESTAD;
    DM1.ispDoc_U.ParamByName('CLASEDOC').AsSmallInt := FCLASEDOC;
    DM1.ispDoc_U.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;
    DM1.ispDoc_U.ParamByName('DIAESP').AsString := FDIAESP;
    DM1.ispDoc_U.ParamByName('FECDOCTO').AsDateTime := FFECDOCTO;
    DM1.ispDoc_U.ParamByName('FECENVIO').AsDateTime := FFECENVIO;
    DM1.ispDoc_U.ParamByName('FECPEDIDO').AsDateTime := FFECPEDIDO;
    DM1.ispDoc_U.ParamByName('FECPOSPAGO').AsDateTime := FFECPOSPAGO;
    DM1.ispDoc_U.ParamByName('FECVENCEDO').AsDateTime := FFECVENCEDO;
    DM1.ispDoc_U.ParamByName('FECHRELCOB').AsDateTime := FFECHRELCOB;
    DM1.ispDoc_U.ParamByName('FECHAPP').AsDateTime := FFECHAPP;
    DM1.ispDoc_U.ParamByName('IMPCOMISDO').AsDouble := FIMPCOMISDO;
    DM1.ispDoc_U.ParamByName('IMPDESCAUT').AsDouble := FIMPDESCAUT;
    DM1.ispDoc_U.ParamByName('IMPDESCESP').AsDouble := FIMPDESCESP;
    DM1.ispDoc_U.ParamByName('IMPDESCPP').AsDouble := FIMPDESCPP;
    DM1.ispDoc_U.ParamByName('IMPGTOSCOM').AsDouble := FIMPGTOSCOM;
    DM1.ispDoc_U.ParamByName('IMPIEPSDOC').AsDouble := FIMPIEPSDOC;
    DM1.ispDoc_U.ParamByName('IMPIVADOCT').AsDouble := FIMPIVADOCT;
    DM1.ispDoc_U.ParamByName('IMPNETODOC').AsDouble := FIMPNETODOC;
    DM1.ispDoc_U.ParamByName('IMPPENDDOC').AsDouble := FIMPPENDDOC;
    DM1.ispDoc_U.ParamByName('IMPTOTALDO').AsDouble := FIMPTOTALDO;
    DM1.ispDoc_U.ParamByName('IMPRESODOC').AsSmallInt := FIMPRESODOC;
    DM1.ispDoc_U.ParamByName('INTERFAZCO').AsString := FINTERFAZCO;
    DM1.ispDoc_U.ParamByName('MONEDADOCT').AsString := FMONEDADOCT;
    DM1.ispDoc_U.ParamByName('NALMTRASP').AsString := FNALMTRASP;
    DM1.ispDoc_U.ParamByName('NATURALEZA').AsString := FNATURALEZA;
    DM1.ispDoc_U.ParamByName('NUMAGENTE').AsString := FNUMAGENTE;
    DM1.ispDoc_U.ParamByName('NUMALMAC').AsString := FNUMALMAC;
    DM1.ispDoc_U.ParamByName('NUMBULTOS').AsSmallInt := FNUMBULTOS;
    DM1.ispDoc_U.ParamByName('NUMMOVESP').AsInteger := FNUMMOVESP;
    DM1.ispDoc_U.ParamByName('NUMRELCOBR').AsInteger := FNUMRELCOBR;
    DM1.ispDoc_U.ParamByName('ORDENCOMPR').AsString := FORDENCOMPR;
    DM1.ispDoc_U.ParamByName('ORIGENDOCT').AsSmallInt := FORIGENDOCT;
    DM1.ispDoc_U.ParamByName('PORCCOMISD').AsDouble := FPORCCOMISD;
    DM1.ispDoc_U.ParamByName('PORCDESCPP').AsDouble := FPORCDESCPP;
    DM1.ispDoc_U.ParamByName('PORCINTMOR').AsDouble := FPORCINTMOR;
    DM1.ispDoc_U.ParamByName('PORCIVADOC').AsDouble := FPORCIVADOC;
    DM1.ispDoc_U.ParamByName('PRNEDOCTA').AsSmallInt := FPRNEDOCTA;
    DM1.ispDoc_U.ParamByName('REFERDOCTO').AsString := FREFERDOCTO;
    DM1.ispDoc_U.ParamByName('REFERDOCTO2').AsString := FREFERDOCTO2;
    DM1.ispDoc_U.ParamByName('TALON').AsString := FTALON;
    DM1.ispDoc_U.ParamByName('TIPOCAMBIO').AsDouble := FTIPOCAMBIO;
    DM1.ispDoc_U.ParamByName('TRANSPOR').AsString := FTRANSPOR;
    DM1.ispDoc_U.ParamByName('UNIDADESTL').AsInteger := FUNIDADESTL;
    DM1.ispDoc_U.ParamByName('VIATRANS').AsString := FVIATRANS;
    DM1.ispDoc_U.ParamByName('LLAVEPOL').AsString := FLLAVEPOL;
    DM1.ispDoc_U.ParamByName('CANCELA').AsString := FCANCELA;
    DM1.ispDoc_U.ParamByName('OBSERVA').AsString := FOBSERVA;
    DM1.ispDoc_U.ParamByName('IMPCHEQPAQ').AsDouble := FIMPCHEQPAQ;
    DM1.ispDoc_U.ParamByName('SISTORIG').AsSmallInt := FSISTORIG;
    DM1.ispDoc_U.ParamByName('HONORARIOS').AsSmallInt := FHONORARIOS;
    DM1.ispDoc_U.ParamByName('ATENCIONA').AsString := FATENCIONA;
    DM1.ispDoc_U.ParamByName('FechaAct').AsDateTime := date + time;
    DM1.ispDoC_U.ParamByName('UserAct').AsString := oUser.LOGIN;
    DM1.ispDoc_U.ParamByName('DOCTO_ID').AsInteger := FDOCTO_ID;

    try
      DM1.ispDoc_U.ExecProc;
    except
      FError := 1;
    end;


end;

procedure TDoc.SavePartida;
var iFolio:Integer;
    iDatosOk:Integer;
begin

    DM1.ispDet.ParamByName('ANIODOCTO').AsSmallInt  := FANIODOCTO;
    DM1.ispDet.ParamByName('PERDOCTO').AsSmallInt   := FPERDOCTO;
    DM1.ispDet.ParamByName('NUMTIPODOC').AsString   := FNUMTIPODOC;
    DM1.ispDet.ParamByName('SERIEDOCTO').AsString   := FSERIEDOCTO;
    DM1.ispDet.ParamByName('NUMDOCTO').AsString     := FNUMDOCTO;
    DM1.ispDet.ParamByName('FECDOCTO').AsDate       := FFECDOCTO;
    DM1.ispDet.ParamByName('NUMMOVTO').AsString     := FNUMMOVTO;
    DM1.ispDet.ParamByName('CODPRODSER').AsString   := FCODPRODSER;
    DM1.ispDet.ParamByName('UNIDADES').AsDouble     := FUNIDADES;
    DM1.ispDet.ParamByName('PRECIOLISTA').AsFloat   := FPRECIOLISTA;
    DM1.ispDet.ParamByName('PRECIO').AsFloat        := FPRECIO;
    DM1.ispDet.ParamByName('IMPNETOMOV').AsFloat    := FIMPNETOMOV;
    DM1.ispDet.ParamByName('IMPIVAMOVT').AsFloat    := FIMPIVAMOVT;
    DM1.ispDet.ParamByName('PORCIVAMOV').AsFloat    := FPORCIVAMOV;
    DM1.ispDet.ParamByName('TOTALMOVTO').AsFloat    := FTOTALMOVTO;
    DM1.ispDet.ParamByName('UNIVTA').AsString       := FUNIVTA;
    DM1.ispDet.ParamByName('DESCRIPPRO').AsString   := FDESCRIPPRO;
    DM1.ispDet.ParamByName('CODCTEPROV').AsString   := FCODCTEPROV;
    DM1.ispDet.ParamByName('COSTOMOV').AsDouble     := FCOSTOMOV;
    DM1.ispDet.ParamByName('IMPCOMISMO').AsDouble   := FIMPCOMISMO;
    DM1.ispDet.ParamByName('IMPDESCAUT').AsDouble   := FIMPDESCAUT;
    DM1.ispDet.ParamByName('IMPDESCESP').AsDouble   := FIMPDESCESP;
    DM1.ispDet.ParamByName('IMPIEPSMOV').AsDouble   := FIMPIEPSMOV;
    DM1.ispDet.ParamByName('NUMCONC').AsString      := FNUMCONC; //Concepto de Inventario
    DM1.ispDet.ParamByName('NUMCONCTRA').AsString   := FNUMCONCTRA;
    DM1.ispDet.ParamByName('PORCCOMISV').AsDouble   := FPORCCOMISV;
    DM1.ispDet.ParamByName('PORCDESCAU').AsDouble   := FPORCDESCAU;
    DM1.ispDet.ParamByName('PORCDESCES').AsDouble   := FPORCDESCES;
    DM1.ispDet.ParamByName('PORCIEPSMO').AsDouble   := FPORCIEPSMO;
    DM1.ispDet.ParamByName('REFERMOVTO').AsString   := FREFERMOVTO;
    DM1.ispDet.ParamByName('TIPCOSTO').AsString     := FTIPCOSTO;
    DM1.ispDet.ParamByName('UNIPEND').AsDouble      := FUNIPEND;
    DM1.ispDet.ParamByName('UNIFACT').AsDouble      := FUNIFACT;
    DM1.ispDet.ParamByName('PRECIOLISTA').AsDouble  := FPRECIOLISTA;
    DM1.ispDet.ParamByName('DESCTO1').AsDouble      := FDESCTO1;
    DM1.ispDet.ParamByName('DESCTO2').AsDouble      := FDESCTO2;
    DM1.ispDet.ParamByName('DESCTO3').AsDouble      := FDESCTO3;
    DM1.ispDet.ParamByName('DESCTO4').AsDouble      := FDESCTO4;
    DM1.ispDet.ParamByName('DESCTO5').AsDouble      := FDESCTO5;
    DM1.ispDet.ParamByName('DESCTO6').AsDouble      := FDESCTO6;
    DM1.ispDet.ParamByName('DESCTO7').AsDouble      := FDESCTO7;
    DM1.ispDet.ParamByName('DESCTO8').AsDouble      := FDESCTO8;
    DM1.ispDet.ParamByName('DESCTO9').AsDouble      := FDESCTO9;
    DM1.ispDet.ParamByName('DESCTO10').AsDouble     := FDESCTO10;
    DM1.ispDet.ParamByName('CODFAMILIA').AsString   := FCODFAMILIA;
    DM1.ispDet.ParamByName('TIPOCAMBIO').AsDouble   := FTIPOCAMBIO;
    DM1.ispDet.ParamByName('CANCELA').AsString      := FCANCELA;
    DM1.ispDet.ParamByName('OBSERVA').AsString      := FOBSERVA;
    DM1.ispDet.ParamByName('PRECUNIADQ').AsDouble   := FPRECUNIADQ;
    DM1.ispDet.ParamByName('NUMALMAC').AsString     := FNUMALMAC;
    DM1.ispDet.ParamByName('NALMTRASP').AsString    := FNALMTRASP;
    DM1.ispDet.ParamByName('HONORARIOS').AsSmallInt := FHONORARIOS;
    DM1.ispDet.ParamByName('FECHAAct').AsDateTime   := date + time;
    DM1.ispDet.ParamByName('UserAct').AsString      := oUser.LOGIN;
    DM1.ispDet.ParamByName('DOCTO_ID').AsInteger    := FDOCTO_ID;

    try
      DM1.ispDet.Execute;
    except
      FError := 1;
    end;

end;

procedure TDoc.Clear;
begin
    // Recargar el tipo de documento por si se cambio el manejo de la
    // numeración automática
    oTipoDoc.NUMTIPODOC := FNUMTIPODOC;
    oTipoDoc.Retrieve;

    FANIODOCTO := 0;
    FPERDOCTO := 0;
    FNUMTIPODOC := '';
    FSERIEDOCTO := '';
    FNUMDOCTO := '';
    FAFECTESTAD := 0;
    FCLASEDOC := 0;
    FCODCTEPROV := '';
    FDIAESP := '';
    FFECDOCTO := 0;
    FFECENVIO := 0;
    FFECPEDIDO := 0;
    FFECPOSPAGO := 0;
    FFECVENCEDO := 0;
    FFECHRELCOB := 0;
    FFECHAPP := 0;
    FIMPCOMISDO := 0;
    FIMPDESCAUT := 0;
    FIMPDESCESP := 0;
    FIMPDESCPP := 0;
    FIMPGTOSCOM := 0;
    FIMPIEPSDOC := 0;
    FIMPIVADOCT := 0;
    FIMPNETODOC := 0;
    FIMPPENDDOC := 0;
    FIMPTOTALDO := 0;
    FIMPRESODOC := 0;
    FINTERFAZCO := '';
    FMONEDADOCT := '';
    FNALMTRASP := '';
    FNATURALEZA := '';
    FNUMAGENTE := '';
    FNUMALMAC := '';
    FNUMBULTOS := 0;
    FNUMMOVESP := 0;
    FNUMRELCOBR := 0;
    FORDENCOMPR := '';
    FORIGENDOCT := 0;
    FPORCCOMISD := 0;
    FPORCDESCPP := 0;
    FPORCINTMOR := 0;
    FPORCIVADOC := 0;
    FPRNEDOCTA := 0;
    FREFERDOCTO := '';
    FREFERDOCTO2 := '';
    FTALON := '';
    FTIPOCAMBIO := 1;
    FTRANSPOR := '';
    FUNIDADESTL := 0;
    FVIATRANS := '';
    FLLAVEPOL := '';
    FCANCELA := '';
    FOBSERVA := '';
    FIMPCHEQPAQ := 0;
    FSISTORIG := 0;
    FHONORARIOS := 0;
    FNombreTipo := '';
    FOBSERVA := '';
    FATENCIONA := '';
    FSTatus := edInsert;

end;
procedure TDoc.Cancel;
begin
//
    if FCANCELA = '1' then begin
        FError := 1;
        FMsg.Clear;
        FMsg.Add ('El documento YA está cancelado!!');
        exit;
    end;
    if ((FFECDOCTO < oEmp.FechaIniPeriodo) or
       (FFECDOCTO > oEmp.FechaFinPeriodo)) and
       (oTipoDoc.AfectaInv in [1,2,3,4]) then begin
        FError := 1;
        FMsg.Clear;
        FMsg.Add ('No se puede cancelar el documento. La fecha del documento está fuera del periodo de trabajo!');
        exit;
    end;


    DM1.ispDoc_U1.ParamByName('P_NUMTIPODOC').AsString := FNUMTIPODOC;
    DM1.ispDoc_U1.ParamByName('P_SERIEDOCTO').AsString := FSERIEDOCTO;
    DM1.ispDoc_U1.ParamByName('P_NUMDOCTO').AsString := FNUMDOCTO;
    DM1.ispDoc_U1.ParamByName('P_CANCELA').AsString := '1';

    try
        DM1.ispDoc_U1.ExecProc;
        FCANCELA := '1';
    except
    end;

{====
Al cancelar la factura, hay que rebajar la cantidad facturada de
los pedidos
====}
    DM1.ispDet_U04.ParamByName('NUMTIPODOC').AsString := FNUMTIPODOC;
    DM1.ispDet_U04.ParamByName('SERIEDOCTO').AsString := FSERIEDOCTO;
    DM1.ispDet_U04.ParamByName('NUMDOCTO').AsString := FNUMDOCTO;

    try
        DM1.ispDet_U04.ExecProc;
    except
    end;

    if oTipoDoc.AfectaInv in [1,2,3] then
       DesafectarExistencias;

end;

procedure TDoc.Cancel2;
begin
//
    if FCANCELA = '1' then begin
        FError := 1;
        FMsg.Clear;
        FMsg.Add ('El documento YA está cancelado!!');
        exit;
    end;

    DM1.ispDoc_U1.ParamByName('P_NUMTIPODOC').AsString := FNUMTIPODOC;
    DM1.ispDoc_U1.ParamByName('P_SERIEDOCTO').AsString := FSERIEDOCTO;
    DM1.ispDoc_U1.ParamByName('P_NUMDOCTO').AsString := FNUMDOCTO;
    DM1.ispDoc_U1.ParamByName('P_CANCELA').AsString := '1';

    try
        DM1.ispDoc_U1.ExecProc;
        FCANCELA := '1';
    except
    end;

{====
Al cancelar la factura, hay que rebajar la cantidad facturada de
los pedidos
====}
    DM1.ispDet_U04.ParamByName('NUMTIPODOC').AsString := FNUMTIPODOC;
    DM1.ispDet_U04.ParamByName('SERIEDOCTO').AsString := FSERIEDOCTO;
    DM1.ispDet_U04.ParamByName('NUMDOCTO').AsString := FNUMDOCTO;

    try
        DM1.ispDet_U04.ExecProc;
    except
    end;

    if oTipoDoc.AfectaInv in [1,2,3] then
       DesafectarExistencias;

end;

procedure TDoc.UpdateClaseDoc(piStatus:SmallInt;ptNotaCre:String);
begin
//
    DM1.ispDoc_U04.ParamByName('P_NUMTIPODOC').AsString := FNUMTIPODOC;
    DM1.ispDoc_U04.ParamByName('P_SERIEDOCTO').AsString := FSERIEDOCTO;
    DM1.ispDoc_U04.ParamByName('P_NUMDOCTO').AsString := FNUMDOCTO;
    DM1.ispDoc_U04.ParamByName('P_NUMNOTACRE').AsString := ptNotaCre;
    DM1.ispDoc_U04.ParamByName('P_STATUS').AsSmallInt := piStatus;

    try
        DM1.ispDoc_U04.ExecProc;
    except
    end;
end;

procedure TDoc.SaveNotaCargo;
var iFolio:Integer;
    iDatosOk:Integer;
begin
//

  FMsg.Clear;

//    DM1.Start;

    if (oTipoDoc.NUMAUTO = 1) and (FStatus = edInsert) then begin
        NUMDOCTO := GetNextFolio;
    end;

    if FTIPOCAMBIO <= 0 then FTIPOCAMBIO := 1;

    DM1.ispDoc_U.ParamByName('ANIODOCTO').AsSmallInt := FANIODOCTO;
    DM1.ispDoc_U.ParamByName('PERDOCTO').AsSmallInt := FPERDOCTO;
    DM1.ispDoc_U.ParamByName('NUMTIPODOC').AsString := FNUMTIPODOC;
    DM1.ispDoc_U.ParamByName('SERIEDOCTO').AsString := FSERIEDOCTO;
    DM1.ispDoc_U.ParamByName('NUMDOCTO').AsString := FNUMDOCTO;
    DM1.ispDoc_U.ParamByName('AFECTESTAD').AsSmallInt := FAFECTESTAD;
    DM1.ispDoc_U.ParamByName('CLASEDOC').AsSmallInt := FCLASEDOC;
    DM1.ispDoc_U.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;
    DM1.ispDoc_U.ParamByName('DIAESP').AsString := FDIAESP;
    DM1.ispDoc_U.ParamByName('FECDOCTO').AsDateTime := FFECDOCTO;
    DM1.ispDoc_U.ParamByName('FECENVIO').AsDateTime := FFECENVIO;
    DM1.ispDoc_U.ParamByName('FECPEDIDO').AsDateTime := FFECPEDIDO;
    DM1.ispDoc_U.ParamByName('FECPOSPAGO').AsDateTime := FFECPOSPAGO;
    DM1.ispDoc_U.ParamByName('FECVENCEDO').AsDateTime := FFECVENCEDO;
    DM1.ispDoc_U.ParamByName('FECHRELCOB').AsDateTime := FFECHRELCOB;
    DM1.ispDoc_U.ParamByName('FECHAPP').AsDateTime := FFECHAPP;
    DM1.ispDoc_U.ParamByName('IMPCOMISDO').AsDouble := FIMPCOMISDO;
    DM1.ispDoc_U.ParamByName('IMPDESCAUT').AsDouble := FIMPDESCAUT;
    DM1.ispDoc_U.ParamByName('IMPDESCESP').AsDouble := FIMPDESCESP;
    DM1.ispDoc_U.ParamByName('IMPDESCPP').AsDouble := FIMPDESCPP;
    DM1.ispDoc_U.ParamByName('IMPGTOSCOM').AsDouble := FIMPGTOSCOM;
    DM1.ispDoc_U.ParamByName('IMPIEPSDOC').AsDouble := FIMPIEPSDOC;
    DM1.ispDoc_U.ParamByName('IMPIVADOCT').AsDouble := FIMPIVADOCT;
    DM1.ispDoc_U.ParamByName('IMPNETODOC').AsDouble := FIMPNETODOC;
    DM1.ispDoc_U.ParamByName('IMPPENDDOC').AsDouble := FIMPPENDDOC;
    DM1.ispDoc_U.ParamByName('IMPTOTALDO').AsDouble := FIMPTOTALDO;
    DM1.ispDoc_U.ParamByName('IMPRESODOC').AsSmallInt := FIMPRESODOC;
    DM1.ispDoc_U.ParamByName('INTERFAZCO').AsString := FINTERFAZCO;
    DM1.ispDoc_U.ParamByName('MONEDADOCT').AsString := FMONEDADOCT;
    DM1.ispDoc_U.ParamByName('NALMTRASP').AsString := FNALMTRASP;
    DM1.ispDoc_U.ParamByName('NATURALEZA').AsString := FNATURALEZA;
    DM1.ispDoc_U.ParamByName('NUMAGENTE').AsString := FNUMAGENTE;
    DM1.ispDoc_U.ParamByName('NUMALMAC').AsString := FNUMALMAC;
    DM1.ispDoc_U.ParamByName('NUMBULTOS').AsSmallInt := FNUMBULTOS;
    DM1.ispDoc_U.ParamByName('NUMMOVESP').AsInteger := FNUMMOVESP;
    DM1.ispDoc_U.ParamByName('NUMRELCOBR').AsInteger := FNUMRELCOBR;
    DM1.ispDoc_U.ParamByName('ORDENCOMPR').AsString := FORDENCOMPR;
    DM1.ispDoc_U.ParamByName('ORIGENDOCT').AsSmallInt := FORIGENDOCT;
    DM1.ispDoc_U.ParamByName('PORCCOMISD').AsDouble := FPORCCOMISD;
    DM1.ispDoc_U.ParamByName('PORCDESCPP').AsDouble := FPORCDESCPP;
    DM1.ispDoc_U.ParamByName('PORCINTMOR').AsDouble := FPORCINTMOR;
    DM1.ispDoc_U.ParamByName('PORCIVADOC').AsDouble := FPORCIVADOC;
    DM1.ispDoc_U.ParamByName('PRNEDOCTA').AsSmallInt := FPRNEDOCTA;
    DM1.ispDoc_U.ParamByName('REFERDOCTO').AsString := FREFERDOCTO;
    DM1.ispDoc_U.ParamByName('REFERDOCTO2').AsString := FREFERDOCTO2;
    DM1.ispDoc_U.ParamByName('TALON').AsString := FTALON;
    DM1.ispDoc_U.ParamByName('TIPOCAMBIO').AsDouble := FTIPOCAMBIO;
    DM1.ispDoc_U.ParamByName('TRANSPOR').AsString := FTRANSPOR;
    DM1.ispDoc_U.ParamByName('UNIDADESTL').AsInteger := FUNIDADESTL;
    DM1.ispDoc_U.ParamByName('VIATRANS').AsString := FVIATRANS;
    DM1.ispDoc_U.ParamByName('LLAVEPOL').AsString := FLLAVEPOL;
    DM1.ispDoc_U.ParamByName('CANCELA').AsString := FCANCELA;
    DM1.ispDoc_U.ParamByName('OBSERVA').AsString := FOBSERVA;
    DM1.ispDoc_U.ParamByName('IMPCHEQPAQ').AsDouble := FIMPCHEQPAQ;
    DM1.ispDoc_U.ParamByName('SISTORIG').AsSmallInt := FSISTORIG;
    DM1.ispDoc_U.ParamByName('HONORARIOS').AsSmallInt := FHONORARIOS;
    DM1.ispDoc_U.ParamByName('ATENCIONA').AsString := FATENCIONA;
    DM1.ispDoc_U.ParamByName('FechaAct').AsDateTime := date + time;
    DM1.ispDoC_U.ParamByName('UserAct').AsString := oUser.LOGIN;

    DM1.ispDoc_U.ExecProc;



    // Si el tipo de docto lleva la numeracion automática, incrementa el folio
    // Cambio: 28/Jul/2003    v--- agregado ---------v
    if (oTipoDoc.NUMAUTO = 1) and (FStatus = edInsert) then begin
        iFolio := StrToInt(FNUMDOCTO);
        oTipoDoc.SetFolio(FNUMTIPODOC,iFolio);
    end;

//   DM1.Commit;

end;


//===============================================================

function TDoc.GetANIODOCTO:Smallint;
begin
    Result := FANIODOCTO
end;
procedure TDoc.SetANIODOCTO(pANIODOCTO:SmallInt);
begin
    FANIODOCTO := pANIODOCTO;
end;
function TDoc.GetPERDOCTO:SmallInt;
begin
    Result := FPERDOCTO
end;
procedure TDoc.SetPERDOCTO(pPERDOCTO:SmallInt);
begin
    FPERDOCTO := pPERDOCTO;
end;
function TDoc.GetNUMTIPODOC:String;
begin
    Result := FNUMTIPODOC
end;
procedure TDoc.SetNUMTIPODOC(pNUMTIPODOC:String);
begin
    FNumTipoDoc := Trim(pNumTipoDoc);
    oTipoDoc.NUMTIPODOC := FNumTipoDoc;
    oTipoDoc.Retrieve;
    FNombreTipo := oTipoDoc.NOMBRETIPO;
    FPuedoModificar := oTipoDoc.Modificar;

    if (oTipoDoc.ACUMSALCX = 1) or (oTipoDoc.ACUMSALDX  = 1) then
        FNaturaleza := 'C'
    else
        if (oTipoDoc.ACUMSALCX = 2) or (oTipoDoc.ACUMSALDX  = 2) then
            FNaturaleza := 'A'
        else
            FNaturaleza := 'N';
end;

function TDoc.GetSERIEDOCTO:String;
begin
    Result := FSERIEDOCTO
end;
procedure TDoc.SetSERIEDOCTO(pSERIEDOCTO:String);
begin
    FSerieDocto := Trim(pSerieDocto);
end;
function TDoc.GetNUMDOCTO:String;
begin
    Result := FNUMDOCTO
end;
procedure TDoc.SetNUMDOCTO(pNUMDOCTO:String);
begin
    pNumDocto := Trim(pNumDocto);
    if length(FSERIEDOCTO) <= 0 then FSERIEDOCTO := '*';

    FNUMDOCTO := pNUMDOCTO;
end;
function TDoc.GetAFECTESTAD:SmallInt;
begin
    Result := FAFECTESTAD
end;
procedure TDoc.SetAFECTESTAD(pAFECTESTAD:SmallInt);
begin
    FAFECTESTAD := pAFECTESTAD;
end;
function TDoc.GetCLASEDOC:SmallInt;
begin
    Result := FCLASEDOC
end;
procedure TDoc.SetCLASEDOC(pCLASEDOC:SmallInt);
begin
    FCLASEDOC := pCLASEDOC;
end;
function TDoc.GetCODCTEPROV:String;
begin
    Result := FCODCTEPROV
end;
procedure TDoc.SetCODCTEPROV(pCODCTEPROV:String);
begin
    FCODCTEPROV := pCODCTEPROV;
end;
function TDoc.GetDIAESP:String;
begin
    Result := FDIAESP
end;
procedure TDoc.SetDIAESP(pDIAESP:String);
begin
    FDIAESP := pDIAESP;
end;
function TDoc.GetFECDOCTO:TDateTime;
begin
    Result := FFECDOCTO
end;
procedure TDoc.SetFECDOCTO(pFECDOCTO:TDateTime);
var iAno,iMes:Integer;
    tAno,tMes:String;
begin

    iAno := ESBDates.Date2Year (pFecDocto);
    iMes := ESBDates.Date2Month (pFecDocto);

    FANIODOCTO := iAno;
    FPERDOCTO := iMes;
    FFECDOCTO := pFecDocto;
end;

function TDoc.GetFECENVIO:TDateTime;
begin
    Result := FFECENVIO
end;
procedure TDoc.SetFECENVIO(pFECENVIO:TDateTime);
begin
    FFECENVIO := pFECENVIO;
end;
function TDoc.GetFECPEDIDO:TDateTime;
begin
    Result := FFECPEDIDO
end;
procedure TDoc.SetFECPEDIDO(pFECPEDIDO:TDateTime);
begin
    FFECPEDIDO := pFECPEDIDO;
end;
function TDoc.GetFECPOSPAGO:TDateTime;
begin
    Result := FFECPOSPAGO
end;
procedure TDoc.SetFECPOSPAGO(pFECPOSPAGO:TDateTime);
begin
    FFECPOSPAGO := pFECPOSPAGO;
end;
function TDoc.GetFECVENCEDO:TDateTime;
begin
    Result := FFECVENCEDO
end;
procedure TDoc.SetFECVENCEDO(pFECVENCEDO:TDateTime);
begin
    FFECVENCEDO := pFECVENCEDO;
end;
function TDoc.GetFECHRELCOB:TDateTime;
begin
    Result := FFECHRELCOB
end;
procedure TDoc.SetFECHRELCOB(pFECHRELCOB:TDateTime);
begin
    FFECHRELCOB := pFECHRELCOB;
end;
function TDoc.GetFECHAPP:TDateTime;
begin
    Result := FFECHAPP
end;
procedure TDoc.SetFECHAPP(pFECHAPP:TDateTime);
begin
    FFECHAPP := pFECHAPP;
end;
function TDoc.GetIMPCOMISDO:Double;
begin
    Result := FIMPCOMISDO
end;
procedure TDoc.SetIMPCOMISDO(pIMPCOMISDO:Double);
begin
    FIMPCOMISDO := pIMPCOMISDO;
end;
function TDoc.GetIMPDESCAUT:Double;
begin
    Result := FIMPDESCAUT
end;
procedure TDoc.SetIMPDESCAUT(pIMPDESCAUT:Double);
begin
    FIMPDESCAUT := pIMPDESCAUT;
end;
function TDoc.GetIMPDESCESP:Double;
begin
    Result := FIMPDESCESP
end;
procedure TDoc.SetIMPDESCESP(pIMPDESCESP:Double);
begin
    FIMPDESCESP := pIMPDESCESP;
end;
function TDoc.GetIMPDESCPP:Double;
begin
    Result := FIMPDESCPP
end;
procedure TDoc.SetIMPDESCPP(pIMPDESCPP:Double);
begin
    FIMPDESCPP := pIMPDESCPP;
end;
function TDoc.GetIMPGTOSCOM:Double;
begin
    Result := FIMPGTOSCOM
end;
procedure TDoc.SetIMPGTOSCOM(pIMPGTOSCOM:Double);
begin
    FIMPGTOSCOM := pIMPGTOSCOM;
end;
function TDoc.GetIMPIEPSDOC:Double;
begin
    Result := FIMPIEPSDOC
end;
procedure TDoc.SetIMPIEPSDOC(pIMPIEPSDOC:Double);
begin
    FIMPIEPSDOC := pIMPIEPSDOC;
end;
function TDoc.GetIMPIVADOCT:Double;
begin
    Result := FIMPIVADOCT
end;
procedure TDoc.SetIMPIVADOCT(pIMPIVADOCT:Double);
begin
    FIMPIVADOCT := pIMPIVADOCT;
end;
function TDoc.GetIMPRETIVADOC:Double;
begin
    Result := FIMPRETIVADOC;
end;
procedure TDoc.SetIMPRETIVADOC(pIMPRETIVADOC:Double);
begin
    FIMPIVADOCT := pIMPRETIVADOC;
end;
function TDoc.GetIMPNETODOC:Double;
begin
    Result := FIMPNETODOC
end;
procedure TDoc.SetIMPNETODOC(pIMPNETODOC:Double);
begin
    FIMPNETODOC := pIMPNETODOC;
end;
function TDoc.GetIMPPENDDOC:Double;
begin
    Result := FIMPPENDDOC
end;
procedure TDoc.SetIMPPENDDOC(pIMPPENDDOC:Double);
begin
    FIMPPENDDOC := pIMPPENDDOC;
end;
function TDoc.GetIMPTOTALDO:Double;
begin
    Result := FIMPTOTALDO
end;
procedure TDoc.SetIMPTOTALDO(pIMPTOTALDO:Double);
begin
    FIMPTOTALDO := pIMPTOTALDO;
end;
function TDoc.GetIMPRESODOC:SmallInt;
begin
    Result := FIMPRESODOC
end;
procedure TDoc.SetIMPRESODOC(pIMPRESODOC:SmallInt);
begin
    FIMPRESODOC := pIMPRESODOC;
end;
function TDoc.GetINTERFAZCO:String;
begin
    Result := FINTERFAZCO
end;
procedure TDoc.SetINTERFAZCO(pINTERFAZCO:String);
begin
    FINTERFAZCO := pINTERFAZCO;
end;
function TDoc.GetMONEDADOCT:String;
begin
    Result := FMONEDADOCT
end;
procedure TDoc.SetMONEDADOCT(pMONEDADOCT:String);
begin
    FMONEDADOCT := pMONEDADOCT;
end;
function TDoc.GetNALMTRASP:String;
begin
    Result := FNALMTRASP
end;
procedure TDoc.SetNALMTRASP(pNALMTRASP:String);
begin
    FNALMTRASP := pNALMTRASP;
end;
function TDoc.GetNATURALEZA:String;
begin
    Result := FNATURALEZA
end;
procedure TDoc.SetNATURALEZA(pNATURALEZA:String);
begin
    FNATURALEZA := pNATURALEZA;
end;
function TDoc.GetNUMAGENTE:String;
begin
    Result := FNUMAGENTE
end;
procedure TDoc.SetNUMAGENTE(pNUMAGENTE:String);
begin
    FNUMAGENTE := pNUMAGENTE;
end;
function TDoc.GetNUMALMAC:String;
begin
    Result := FNUMALMAC
end;
procedure TDoc.SetNUMALMAC(pNUMALMAC:String);
begin
    FNUMALMAC := pNUMALMAC;
end;
function TDoc.GetNUMBULTOS:SmallInt;
begin
    Result := FNUMBULTOS
end;
procedure TDoc.SetNUMBULTOS(pNUMBULTOS:SmallInt);
begin
    FNUMBULTOS := pNUMBULTOS;
end;
function TDoc.GetNUMMOVESP:Integer;
begin
    Result := FNUMMOVESP
end;
procedure TDoc.SetNUMMOVESP(pNUMMOVESP:Integer);
begin
    FNUMMOVESP := pNUMMOVESP;
end;
function TDoc.GetNUMRELCOBR:Integer;
begin
    Result := FNUMRELCOBR
end;
procedure TDoc.SetNUMRELCOBR(pNUMRELCOBR:Integer);
begin
    FNUMRELCOBR := pNUMRELCOBR;
end;
function TDoc.GetORDENCOMPR:String;
begin
    Result := FORDENCOMPR
end;
procedure TDoc.SetORDENCOMPR(pORDENCOMPR:String);
begin
    FORDENCOMPR := pORDENCOMPR;
end;
function TDoc.GetORIGENDOCT:SmallInt;
begin
    Result := FORIGENDOCT
end;
procedure TDoc.SetORIGENDOCT(pORIGENDOCT:SmallInt);
begin
    FORIGENDOCT := pORIGENDOCT;
end;
function TDoc.GetPORCCOMISD:Double;
begin
    Result := FPORCCOMISD
end;
procedure TDoc.SetPORCCOMISD(pPORCCOMISD:Double);
begin
    FPORCCOMISD := pPORCCOMISD;
end;
function TDoc.GetPORCDESCPP:Double;
begin
    Result := FPORCDESCPP
end;
procedure TDoc.SetPORCDESCPP(pPORCDESCPP:Double);
begin
    FPORCDESCPP := pPORCDESCPP;
end;
function TDoc.GetPORCINTMOR:Double;
begin
    Result := FPORCINTMOR
end;
procedure TDoc.SetPORCINTMOR(pPORCINTMOR:Double);
begin
    FPORCINTMOR := pPORCINTMOR;
end;
function TDoc.GetPORCIVADOC:Double;
begin
    Result := FPORCIVADOC
end;
procedure TDoc.SetPORCIVADOC(pPORCIVADOC:Double);
begin
    FPORCIVADOC := pPORCIVADOC;
end;
function TDoc.GetPRNEDOCTA:SmallInt;
begin
    Result := FPRNEDOCTA;
end;
procedure TDoc.SetPRNEDOCTA(pPRNEDOCTA:SmallInt);
begin
    FPRNEDOCTA := pPRNEDOCTA;
end;
function TDoc.GetREFERDOCTO:String;
begin
    Result := FREFERDOCTO
end;
procedure TDoc.SetREFERDOCTO(pREFERDOCTO:String);
begin
    FREFERDOCTO := pREFERDOCTO;
end;
function TDoc.GetREFERDOCTO2:String;
begin
    Result := FREFERDOCTO2
end;
procedure TDoc.SetREFERDOCTO2(pREFERDOCTO2:String);
begin
    FREFERDOCTO2 := pREFERDOCTO2;
end;

function TDoc.GetTALON:String;
begin
    Result := FTALON
end;
procedure TDoc.SetTALON(pTALON:String);
begin
    FTALON := pTALON;
end;
function TDoc.GetTIPOCAMBIO:Double;
begin
    Result := FTIPOCAMBIO
end;
procedure TDoc.SetTIPOCAMBIO(pTIPOCAMBIO:Double);
begin
    if pTIPOCAMBIO <= 0 then pTIPOCAMBIO := 1;
    FTIPOCAMBIO := pTIPOCAMBIO;
end;
function TDoc.GetTRANSPOR:String;
begin
    Result := FTRANSPOR
end;
procedure TDoc.SetTRANSPOR(pTRANSPOR:String);
begin
    FTRANSPOR := pTRANSPOR;
end;
function TDoc.GetUNIDADESTL:Integer;
begin
    Result := FUNIDADESTL
end;
procedure TDoc.SetUNIDADESTL(pUNIDADESTL:Integer);
begin
    FUNIDADESTL := pUNIDADESTL;
end;
function TDoc.GetVIATRANS:String;
begin
    Result := FVIATRANS
end;
procedure TDoc.SetVIATRANS(pVIATRANS:String);
begin
    FVIATRANS := pVIATRANS;
end;
function TDoc.GetLLAVEPOL:String;
begin
    Result := FLLAVEPOL
end;
procedure TDoc.SetLLAVEPOL(pLLAVEPOL:String);
begin
    FLLAVEPOL := pLLAVEPOL;
end;
function TDoc.GetCANCELA:String;
begin
    Result := Trim(FCANCELA);
end;
procedure TDoc.SetCANCELA(pCANCELA:String);
begin
    FCANCELA := Trim(pCANCELA);
end;
function TDoc.GetOBSERVA:String;
begin
    Result := FOBSERVA
end;
procedure TDoc.SetOBSERVA(pOBSERVA:String);
begin
    FOBSERVA := pOBSERVA;
end;
function TDoc.GetIMPCHEQPAQ:Double;
begin
    Result := FIMPCHEQPAQ
end;
procedure TDoc.SetIMPCHEQPAQ(pIMPCHEQPAQ:Double);
begin
    FIMPCHEQPAQ := pIMPCHEQPAQ;
end;
function TDoc.GetSISTORIG:SmallInt;
begin
    Result := FSISTORIG
end;
procedure TDoc.SetSISTORIG(pSISTORIG:SmallInt);
begin
    FSISTORIG := pSISTORIG;
end;
function TDoc.GetHONORARIOS:SmallInt;
begin
    Result := FHONORARIOS
end;
procedure TDoc.SetHONORARIOS(pHONORARIOS:SmallInt);
begin
    FHONORARIOS := pHONORARIOS;
end;
function TDoc.GetATENCIONA:String;
begin
    Result := FATENCIONA
end;
procedure TDoc.SetATENCIONA(pATENCIONA:String);
begin
    FATENCIONA := pATENCIONA;
end;
function TDoc.GetStatus:TDocState;
begin
    Result := FStatus
end;
procedure TDoc.SetStatus(pStatus:TDocState);
begin
    FStatus := pStatus;
end;

function TDoc.GetNUMMOVTO:String;
begin
    Result := FNUMMOVTO;
end;
procedure TDoc.SetNUMMOVTO(pNUMMOVTO:String);
begin
    FNUMMOVTO := pNUMMOVTO;
end;


end.
