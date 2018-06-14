unit ClsCliente;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls,VCIF1Lib_TLB,
     IB_Components, StrMan, ESBDates,IniFiles, StringLib, ClsTablas;

type
  TCliente = class(TObject)
    constructor Create;
    destructor Destroy;
   private
    FCODCTEPROV: String;
    FRAZSOCIAL: String;
    FAGENTECOB: String;
    FNUMAGENTE: String;
    FAGRUPACTE: String;
    FCALCINTMOR: SmallInt;
    FCATEGCTE: String;
    FCODPOSTAL: String;
    FCOLONIACTE: String;
    FCTAANTICIP: String;
    FCTACXC: String;
    FCTADXC: String;
    FCTAESTCTE: String;
    FDENCOMERCI: String;
    FDOMICILIO: String;
    FEDOACTCTE: SmallInt;
    FESTADCTE: SmallInt;
    FESTADOCTE: String;
    FFACTERCERO: SmallInt;
    FFECINIESTA: TDateTime;
    FFULTPAGCTE: TDateTime;
    FFULTPEDCTE: TDateTime;
    FFECULTREV: TDateTime;
    FFECULTVTAC: TDateTime;
    FFECHAALTA: TDateTime;
    FFECBAJACTE: TDateTime;
    FIMPEDOCTA: SmallInt;
    FLIMCREDCTE: Double;
    FLISTPRECIO: SmallInt;
    FMONEDACTE: String;
    FNUMTIPOCTE: String;
    FPOBLACTE: String;
    FRFC: String;
    FREPRESCTE: String;
    FRUTA: String;
    FSDOACTUAL: Double;
    FSDOANTCTE: Double;
    FSDOCXC: Double;
    FSDODXC: Double;
    FTELEFONO1: String;
    FTELEFONO2: String;
    FTELEFONO3: String;
    FZONA: String;
    FDIASCREDIT: SmallInt;
    FPAISCTE: String;
    FCTACOMPLEM: String;
    FDIASPPAGO: SmallInt;
    FPDESCPPAGO: Double;
    FIDCHQ: Double;
    FCURP: String;
    FVIATRANS: String;
    FJEFEPAGOS: String;
    FEMAIL: String;
    FCOMENTARIOS: String;
    FJEFECOMPRAS: String;
    FCURP2: String;
    FDESCTO1: Integer;
    FDESCTO2: Integer;
    FDESCTO3: Integer;
    FDESCTO4: Integer;
    FDESCTO5: Integer;
    FENTREGAR: String;
    FNUM_EXTERIOR: String;
    FNUM_INTERIOR: String;
    FCALLE: String;
    FCUENTABANCO: String;
    FMETODOPAGO: String;
    FEMAILPAGOS: String;
    FEMAILFACTURA: String;
    FREFERENCIA: String;
    FNUMPROVEEDOR: String;
    FIDCLIENTE: Integer;
{---------------------------------}
    FBLOQUEO_MANUAL:smallInt;
    FBA_LIMITE:smallInt;
    FBA_SALDOS:smallInt;
    FBA_PAGOS:smallInt;
    FBA_VENTA_UNICA:smallInt;
    FLIMITE_VENTA:DOUBLE;
{---------------------------------}
    FNOMBRE_DIR: String;
    FDIR_ENTREGA: String;
    FPRIORIDAD: smallint;
    FDATOS_EMBARQUE: String;
    FFORMAPAGO: String;
    FUSOCFDI: String;
    FRESIDENCIA: String;
    FIDTRIBUTARIO: String;
    FNOMBREPOBLACION:String;
    FNOMBREMUNICIPIO:String;
    FNOMBREESTADO:String;
    FNOMBREPAIS:String;
{---------------------------------}
    FSALDO_TOTAL: Double;
    FSALDO_VENCIDO: Double;
    FDIAS_VENCIDOS: Double;
    FFACTURAS_VENCIDAS: Double;
    FMAX_DIAS_VENCIDOS: Double;
    FMAX_SALDO_VENCIDO: Double;

    FError:Integer;
    oTabla:TTabla;
    icu0,icu1,icu2:TIB_Cursor;
    isql1: TIB_DSQL;

   public
    property CODCTEPROV: String read FCODCTEPROV  write FCODCTEPROV;
    property RAZSOCIAL: String read FRAZSOCIAL  write FRAZSOCIAL;
    property AGENTECOB: String read FAGENTECOB  write FAGENTECOB;
    property NUMAGENTE: String read FNUMAGENTE  write FNUMAGENTE;
    property AGRUPACTE: String read FAGRUPACTE  write FAGRUPACTE;
    property CALCINTMOR: SmallInt read FCALCINTMOR  write FCALCINTMOR;
    property CATEGCTE: String read FCATEGCTE  write FCATEGCTE;
    property CODPOSTAL: String read FCODPOSTAL  write FCODPOSTAL;
    property COLONIACTE: String read FCOLONIACTE  write FCOLONIACTE;
    property CTAANTICIP: String read FCTAANTICIP  write FCTAANTICIP;
    property CTACXC: String read FCTACXC  write FCTACXC;
    property CTADXC: String read FCTADXC  write FCTADXC;
    property CTAESTCTE: String read FCTAESTCTE  write FCTAESTCTE;
    property DENCOMERCI: String read FDENCOMERCI  write FDENCOMERCI;
    property DOMICILIO: String read FDOMICILIO  write FDOMICILIO;
    property EDOACTCTE: SmallInt read FEDOACTCTE  write FEDOACTCTE;
    property ESTADCTE: SmallInt read FESTADCTE  write FESTADCTE;
    property ESTADOCTE: String read FESTADOCTE  write FESTADOCTE;
    property FACTERCERO: SmallInt read FFACTERCERO  write FFACTERCERO;
    property FECINIESTA: TDateTime read FFECINIESTA  write FFECINIESTA;
    property FULTPAGCTE: TDateTime read FFULTPAGCTE  write FFULTPAGCTE;
    property FULTPEDCTE: TDateTime read FFULTPEDCTE  write FFULTPEDCTE;
    property FECULTREV: TDateTime read FFECULTREV  write FFECULTREV;
    property FECULTVTAC: TDateTime read FFECULTVTAC  write FFECULTVTAC;
    property FECHAALTA: TDateTime read FFECHAALTA  write FFECHAALTA;
    property FECBAJACTE: TDateTime read FFECBAJACTE  write FFECBAJACTE;
    property IMPEDOCTA: SmallInt read FIMPEDOCTA  write FIMPEDOCTA;
    property LIMCREDCTE: Double read FLIMCREDCTE  write FLIMCREDCTE;
    property LISTPRECIO: SmallInt read FLISTPRECIO  write FLISTPRECIO;
    property MONEDACTE: String read FMONEDACTE  write FMONEDACTE;
    property NUMTIPOCTE: String read FNUMTIPOCTE  write FNUMTIPOCTE;
    property POBLACTE: String read FPOBLACTE  write FPOBLACTE;
    property RFC: String read FRFC  write FRFC;
    property REPRESCTE: String read FREPRESCTE  write FREPRESCTE;
    property RUTA: String read FRUTA  write FRUTA;
    property SDOACTUAL: Double read FSDOACTUAL  write FSDOACTUAL;
    property SDOANTCTE: Double  read FSDOANTCTE  write FSDOANTCTE;
    property SDOCXC: Double read FSDOCXC  write FSDOCXC;
    property SDODXC: Double  read FSDODXC  write FSDODXC;
    property TELEFONO1: String read FTELEFONO1  write FTELEFONO1;
    property TELEFONO2: String read FTELEFONO2  write FTELEFONO2;
    property TELEFONO3: String read FTELEFONO3  write FTELEFONO3;
    property ZONA: String read FZONA  write FZONA;
    property DIASCREDIT: SmallInt read FDIASCREDIT  write FDIASCREDIT;
    property PAISCTE: String read FPAISCTE  write FPAISCTE;
    property CTACOMPLEM: String read FCTACOMPLEM  write FCTACOMPLEM;
    property DIASPPAGO: SmallInt read FDIASPPAGO  write FDIASPPAGO;
    property PDESCPPAGO: Double read FPDESCPPAGO  write FPDESCPPAGO;
    property IDCHQ:Double  read FIDCHQ  write FIDCHQ;
    property CURP: String read FCURP  write FCURP;
    property VIATRANS: String read FVIATRANS  write FVIATRANS;
    property JEFEPAGOS: String read FJEFEPAGOS  write FJEFEPAGOS;
    property EMAIL: String read FEMAIL  write FEMAIL;
    property COMENTARIOS: String read FCOMENTARIOS  write FCOMENTARIOS;
    property JEFECOMPRAS: String read FJEFECOMPRAS  write FJEFECOMPRAS;
    property CURP2: String read FCURP2  write FCURP2;
    property DESCTO1: Integer read FDESCTO1  write FDESCTO1;
    property DESCTO2: Integer read FDESCTO2  write FDESCTO2;
    property DESCTO3: Integer read FDESCTO3  write FDESCTO3;
    property DESCTO4: Integer read FDESCTO4  write FDESCTO4;
    property DESCTO5: Integer read FDESCTO5  write FDESCTO5;
    property ENTREGAR: String read FENTREGAR  write FENTREGAR;
    property NUM_EXTERIOR: String read FNUM_EXTERIOR  write FNUM_EXTERIOR;
    property NUM_INTERIOR: String read FNUM_INTERIOR  write FNUM_INTERIOR;
    property CALLE: String read FCALLE  write FCALLE;
    property CUENTABANCO: String read FCUENTABANCO  write FCUENTABANCO;
    property METODOPAGO: String read FMETODOPAGO  write FMETODOPAGO;
    property EMAILPAGOS: String read FEMAILPAGOS  write FEMAILPAGOS;
    property EMAILFACTURA: String read FEMAILFACTURA  write FEMAILFACTURA;
    property REFERENCIA: String read FREFERENCIA  write FREFERENCIA;
    property NUMPROVEEDOR: String read FNUMPROVEEDOR  write FNUMPROVEEDOR;
    property IDCLIENTE: Integer read FIDCLIENTE  write FIDCLIENTE;
{-----------------------------}
    property BLOQUEO_MANUAL: SmallInt read FBLOQUEO_MANUAL  write FBLOQUEO_MANUAL;
    property BA_LIMITE: SmallInt read FBA_LIMITE  write FBA_LIMITE;
    property BA_SALDOS: SmallInt read FBA_SALDOS  write FBA_SALDOS;
    property BA_PAGOS: SmallInt read FBA_PAGOS  write FBA_PAGOS;
    property BA_VENTA_UNICA: SmallInt read FBA_VENTA_UNICA  write FBA_VENTA_UNICA;
    property LIMITE_VENTA: Double read FLIMITE_VENTA  write FLIMITE_VENTA;
{-----------------------------}
    property NOMBRE_DIR: String read FNOMBRE_DIR  write FNOMBRE_DIR;
    property DIR_ENTREGA: String read FDIR_ENTREGA  write FDIR_ENTREGA;
    property PRIORIDAD: smallint read FPRIORIDAD  write FPRIORIDAD;
    property DATOS_EMBARQUE: String read FDATOS_EMBARQUE  write FDATOS_EMBARQUE;
    property FORMAPAGO: String read FFORMAPAGO  write FFORMAPAGO;
    property USOCFDI: String read FUSOCFDI  write FUSOCFDI;
    property RESIDENCIA: String read FRESIDENCIA  write FRESIDENCIA;
    property IDTRIBUTARIO: String read FIDTRIBUTARIO  write FIDTRIBUTARIO;
{-----------------------------}
    property NOMBRE_POBLACION: String read FNOMBREPOBLACION;
    property NOMBRE_MUNICIPIO: String read FNOMBREMUNICIPIO;
    property NOMBRE_ESTADO   : String read FNOMBREESTADO;
    property NOMBRE_PAIS     : String read FNOMBREPAIS;

    property SALDO_TOTAL: Double        read FSALDO_TOTAL;
    property SALDO_VENCIDO:Double       read FSALDO_VENCIDO;
    property DIAS_VENCIDOS: Double      read FDIAS_VENCIDOS;
    property FACTURAS_VENCIDAS: Double  read FFACTURAS_VENCIDAS;
    property MAX_DIAS_VENCIDOS:Double   read FMAX_DIAS_VENCIDOS;
    property MAX_SALDO_VENCIDO: Double  read FMAX_SALDO_VENCIDO;

    property Error:Integer read FError  write FError;
    procedure Retrieve;
    procedure Retrieve2;
    procedure Save;
    procedure Save2;
    procedure Save3;
    procedure SetBloqueo_Manual(AValor:SmallInt);
    procedure SetBA_Limite(AValor:SmallInt);
    procedure SetBA_Saldos(AValor:SmallInt);
    procedure SetBA_Pagos(AValor:SmallInt);
    procedure SetBA_Venta_Unica(AValor:SmallInt;AMonto:Double);
//    procedure Delete;
    function GetDireccion:TStringList;
    function GetFieldValue(ptField:String):Variant;
    procedure Clear;
    procedure GetInfoCxC;
end;


implementation

uses DM_MBA;
{==================================================================
Implementacion: TCliente
==================================================================}
constructor TCliente.Create;
begin
  inherited Create;  // Inicializa las partes heredadas
  oTabla := TTabla.Create;

  isql1:= TIB_DSQL.Create(DM1);
  isql1.IB_Connection := DM1.cnMBA;
  isql1.IB_Transaction := DM1.trMBA;

  icu1:= TIB_Cursor.Create(DM1);
  icu1.IB_Connection := DM1.cnMBA;
  icu1.IB_Transaction := DM1.trMBA;

  icu2:= TIB_Cursor.Create(DM1);
  icu2.IB_Connection := DM1.cnMBA;
  icu2.IB_Transaction := DM1.trMBA;

  icu0:= TIB_Cursor.Create(DM1);
  icu0.IB_Connection := DM1.cnMBA;
  icu0.IB_Transaction := DM1.trMBA;

  icu0.SQL.Clear;
  icu0.SQL.Add('SELECT        ');
  icu0.SQL.Add('CODCTEPROV,   ');
  icu0.SQL.Add('RAZSOCIAL,    ');
  icu0.SQL.Add('AGENTECOB,    ');
  icu0.SQL.Add('NUMAGENTE,    ');
  icu0.SQL.Add('AGRUPACTE,    ');
  icu0.SQL.Add('CALCINTMOR,   ');
  icu0.SQL.Add('CATEGCTE,     ');
  icu0.SQL.Add('CODPOSTAL,    ');
  icu0.SQL.Add('COLONIACTE,   ');
  icu0.SQL.Add('CTAANTICIP,   ');
  icu0.SQL.Add('CTACXC,       ');
  icu0.SQL.Add('CTADXC,       ');
  icu0.SQL.Add('CTAESTCTE,    ');
  icu0.SQL.Add('DENCOMERCI,   ');
  icu0.SQL.Add('DOMICILIO,    ');
  icu0.SQL.Add('EDOACTCTE,    ');
  icu0.SQL.Add('ESTADCTE,     ');
  icu0.SQL.Add('ESTADOCTE,    ');
  icu0.SQL.Add('FACTERCERO,   ');
  icu0.SQL.Add('FECINIESTA,   ');
  icu0.SQL.Add('FULTPAGCTE,   ');
  icu0.SQL.Add('FULTPEDCTE,   ');
  icu0.SQL.Add('FECULTREV,    ');
  icu0.SQL.Add('FECULTVTAC,   ');
  icu0.SQL.Add('FECHAALTA,    ');
  icu0.SQL.Add('FECBAJACTE,   ');
  icu0.SQL.Add('IMPEDOCTA,    ');
  icu0.SQL.Add('LIMCREDCTE,   ');
  icu0.SQL.Add('LISTPRECIO,   ');
  icu0.SQL.Add('MONEDACTE,    ');
  icu0.SQL.Add('NUMTIPOCTE,   ');
  icu0.SQL.Add('POBLACTE,     ');
  icu0.SQL.Add('RFC,          ');
  icu0.SQL.Add('REPRESCTE,    ');
  icu0.SQL.Add('RUTA,         ');
  icu0.SQL.Add('SDOACTUAL,    ');
  icu0.SQL.Add('SDOANTCTE,    ');
  icu0.SQL.Add('SDOCXC,       ');
  icu0.SQL.Add('SDODXC,       ');
  icu0.SQL.Add('TELEFONO1,    ');
  icu0.SQL.Add('TELEFONO2,    ');
  icu0.SQL.Add('TELEFONO3,    ');
  icu0.SQL.Add('ZONA,         ');
  icu0.SQL.Add('DIASCREDIT,   ');
  icu0.SQL.Add('PAISCTE,      ');
  icu0.SQL.Add('CTACOMPLEM,   ');
  icu0.SQL.Add('DIASPPAGO,    ');
  icu0.SQL.Add('PDESCPPAGO,   ');
  icu0.SQL.Add('IDCHQ,        ');
  icu0.SQL.Add('CURP,         ');
  icu0.SQL.Add('VIATRANS,     ');
  icu0.SQL.Add('JEFEPAGOS,    ');
  icu0.SQL.Add('EMAIL,        ');
  icu0.SQL.Add('COMENTARIOS,  ');
  icu0.SQL.Add('JEFECOMPRAS,  ');
  icu0.SQL.Add('CURP2,        ');
  icu0.SQL.Add('DESCTO1,      ');
  icu0.SQL.Add('DESCTO2,      ');
  icu0.SQL.Add('DESCTO3,      ');
  icu0.SQL.Add('DESCTO4,      ');
  icu0.SQL.Add('DESCTO5,      ');
  icu0.SQL.Add('ENTREGAR,     ');
  icu0.SQL.Add('NUM_EXTERIOR, ');
  icu0.SQL.Add('NUM_INTERIOR, ');
  icu0.SQL.Add('CALLE,        ');
  icu0.SQL.Add('CUENTABANCO,  ');
  icu0.SQL.Add('METODOPAGO,   ');
  icu0.SQL.Add('EMAILPAGOS,   ');
  icu0.SQL.Add('EMAILFACTURA, ');
  icu0.SQL.Add('REFERENCIA,   ');
  icu0.SQL.Add('NUMPROVEEDOR, ');
  icu0.SQL.Add('IDCLIENTE,    ');
  icu0.SQL.Add('BLOQUEO_MANUAL,');
  icu0.SQL.Add('BA_LIMITE,    ');
  icu0.SQL.Add('BA_SALDOS,    ');
  icu0.SQL.Add('BA_PAGOS,     ');
  icu0.SQL.Add('BA_VENTA_UNICA,');
  icu0.SQL.Add('LIMITE_VENTA, ');
  icu0.SQL.Add('OBSERVACIONES,');
  icu0.SQL.Add('FHACT,        ');
  icu0.SQL.Add('USERACT,      ');
  icu0.SQL.Add('NOMBRE_DIR,   ');
  icu0.SQL.Add('DIR_ENTREGA,  ');
  icu0.SQL.Add('FORMAPAGO,    ');
  icu0.SQL.Add('USOCFDI,    ');
  icu0.SQL.Add('RESIDENCIA,   ');
  icu0.SQL.Add('IDTRIBUTARIO  ');
  icu0.SQL.Add('FROM MBA10002 ');
  icu0.SQL.Add('WHERE (CODCTEPROV = ?P_CODCTEPROV);');
  icu0.Prepare;


end;

destructor TCliente.Destroy;
begin
    oTabla.Free;
    inherited Destroy;
end;

function TCliente.GetFieldValue(ptField:String):Variant;
begin
     Result := icu0.FieldByName(ptField).AsVariant;
end;


function TCliente.GetDireccion:TStringList;
var slDir:TStringList;
    tAux,tTipoTabla,tNumTabla,tDescri:String;
begin
     slDir := TStringList.Create;
     slDir.Clear;
//     DM1.ispCte.ParamByName('P_CODCTEPROV').AsString := ptCod;
//     DM1.ispCte.ExecProc;

     tAux := FCALLE + ' ' +
             FNUM_EXTERIOR + ' ' +
             FNUM_INTERIOR;
     slDir.Add (tAux);
     tAux := FCOLONIACTE;
     slDir.Add (tAux);
     tNumTabla := FPOBLACTE;
     tTipoTabla := '7'; //Tabla Poblacion/Ciudad
     tDescri    := oTabla.GetDescri (tTipoTabla,tNumTabla);
     FNOMBREPOBLACION := Trim(tDescri);
     tAux := sm.Strip(tDescri);
     tNumTabla := FESTADOCTE; //icu0.FieldByName('ESTADOCTE').AsString;
     tTipoTabla := '4'; //Tabla Estado
     tDescri    := oTabla.GetDescri (tTipoTabla,tNumTabla);
     tDescri    := sm.Trim(tDescri);
     FNOMBREESTADO := tDescri;
     FNOMBREMUNICIPIO := tDescri;
     if  length(tDescri) > 0 then tDescri := ', ' + tDescri;
     tAux := tAux + tDescri + '   C.P. '+ FCODPOSTAL;
     slDir.Add (tAux);
     tNumTabla := FPAISCTE; //icu0.FieldByName('PAISCTE').AsString;
     tTipoTabla := '16'; //Tabla Paises
     tDescri    := oTabla.GetDescri (tTipoTabla,tNumTabla);
     FNOMBREPAIS := Trim(tDescri);
     tAux := sm.Strip(FTELEFONO1) + ' ' +
             sm.Strip(FTELEFONO2) + ' ' +
             sm.Strip(FTELEFONO3);
     tAux := 'Tel: ' + tAux;
     slDir.Add (tAux);
//     tAux := 'RFC: ' + icu0.FieldByName('RFC').AsString;

//     tAux := 'RFC: ' + FRFC;
//     slDir.Add (tAux);
//     tAux := icu0.FieldByName('EMAILFACTURA').AsString;
//     slDir.Add (tAux);

     Result := slDir;

end;

procedure TCliente.Retrieve;
begin
//
    Error := 0;

    icu0.ParamByName('P_CODCTEPROV').AsString := FCODCTEPROV;
    icu0.Open;

    if icu0.Eof then begin
        Error := 1;
        icu0.Close;
        exit;
    end;

//  FCODCTEPROV := icu0.FieldByName('CODCTEPROV').AsString;
  FRAZSOCIAL := icu0.FieldByName('RAZSOCIAL').AsString;
  FNUMAGENTE := icu0.FieldByName('NUMAGENTE').AsString;
  FCODPOSTAL := icu0.FieldByName('CODPOSTAL').AsString;
  FCOLONIACTE := icu0.FieldByName('COLONIACTE').AsString;
  FDOMICILIO := icu0.FieldByName('DOMICILIO').AsString;
  FEDOACTCTE := icu0.FieldByName('EDOACTCTE').AsSmallInt;
  FESTADOCTE := icu0.FieldByName('ESTADOCTE').AsString;
  FFECHAALTA := icu0.FieldByName('FECHAALTA').AsDateTime;
  FFECBAJACTE := icu0.FieldByName('FECBAJACTE').AsDateTime;
  FLIMCREDCTE := icu0.FieldByName('LIMCREDCTE').AsDouble;
  FLISTPRECIO := icu0.FieldByName('LISTPRECIO').AsSmallInt;
  FMONEDACTE := icu0.FieldByName('MONEDACTE').AsString;
  FPOBLACTE := icu0.FieldByName('POBLACTE').AsString;
  FRFC := icu0.FieldByName('RFC').AsString;
  FRFC := sm.Purge(FRFC,[' ','-']);
  FRUTA := icu0.FieldByName('RUTA').AsString;
  FTELEFONO1 := icu0.FieldByName('TELEFONO1').AsString;
  FTELEFONO2 := icu0.FieldByName('TELEFONO2').AsString;
  FTELEFONO3 := icu0.FieldByName('TELEFONO3').AsString;
  FZONA := icu0.FieldByName('ZONA').AsString;
  FDIASCREDIT := icu0.FieldByName('DIASCREDIT').AsSmallInt;
  FPAISCTE := icu0.FieldByName('PAISCTE').AsString;
  FCTACOMPLEM := icu0.FieldByName('CTACOMPLEM').AsString;
  FDIASPPAGO := icu0.FieldByName('DIASPPAGO').AsSmallInt;
  FPDESCPPAGO := icu0.FieldByName('PDESCPPAGO').AsDouble;
  FCURP := icu0.FieldByName('CURP').AsString;
  FVIATRANS := icu0.FieldByName('VIATRANS').AsString;
  FJEFEPAGOS := icu0.FieldByName('JEFEPAGOS').AsString;
  FEMAIL := icu0.FieldByName('EMAIL').AsString;
  FCOMENTARIOS := icu0.FieldByName('COMENTARIOS').AsString;
  FJEFECOMPRAS := icu0.FieldByName('JEFECOMPRAS').AsString;
//  FCURP2 := icu0.FieldByName('CURP2').AsString;
  FENTREGAR := icu0.FieldByName('ENTREGAR').AsString;
  FNUM_EXTERIOR := icu0.FieldByName('NUM_EXTERIOR').AsString;
  FNUM_INTERIOR := icu0.FieldByName('NUM_INTERIOR').AsString;
  FCALLE := icu0.FieldByName('CALLE').AsString;
  FCUENTABANCO := icu0.FieldByName('CUENTABANCO').AsString;
  FMETODOPAGO := icu0.FieldByName('METODOPAGO').AsString;
  FEMAILPAGOS := icu0.FieldByName('EMAILPAGOS').AsString;
  FEMAILFACTURA := icu0.FieldByName('EMAILFACTURA').AsString;
  FREFERENCIA := icu0.FieldByName('REFERENCIA').AsString;
//  FNUMPROVEEDOR := icu0.FieldByName('NUMPROVEEDOR').AsString;
//  FIDCLIENTE := icu0.FieldByName('IDCLIENTE').AsInteger;
  FBLOQUEO_MANUAL := icu0.FieldByName('BLOQUEO_MANUAL').AsSmallInt;
  FBA_LIMITE := icu0.FieldByName('BA_LIMITE').AsSmallInt;
  FBA_SALDOS := icu0.FieldByName('BA_SALDOS').AsSmallInt;
  FBA_PAGOS := icu0.FieldByName('BA_PAGOS').AsSmallInt;
  FBA_VENTA_UNICA := icu0.FieldByName('BA_VENTA_UNICA').AsSmallInt;
  FLIMITE_VENTA := icu0.FieldByName('LIMITE_VENTA').AsDouble;

  FNOMBRE_DIR   := icu0.FieldByName('NOMBRE_DIR').AsString;
  FDIR_ENTREGA  := icu0.FieldByName('DIR_ENTREGA').AsString;
  FFORMAPAGO    := icu0.FieldByName('FORMAPAGO').AsString;
  FUSOCFDI      := icu0.FieldByName('USOCFDI').AsString;
  FRESIDENCIA   := icu0.FieldByName('RESIDENCIA').AsString;
  FIDTRIBUTARIO := icu0.FieldByName('IDTRIBUTARIO').AsString;

  FNUMTIPOCTE := icu0.FieldByName('NUMTIPOCTE').AsString;

  icu0.Close;

end;

procedure TCliente.Retrieve2;
begin
//
  icu1.SQL.Clear;
  icu1.SQL.Add('SELECT NOMBRE_DIR, DIR_ENTREGA, PRIORIDAD ');
  icu1.SQL.Add('FROM DIRS_ENTREGA ');
  icu1.SQL.Add('WHERE (CODCTEPROV = ?CODCTEPROV AND (PRIORIDAD=0); ');

  icu1.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;
  icu1.Open;

  FNOMBRE_DIR   := icu1.FieldByName('NOMBRE_DIR').AsString;
  FDIR_ENTREGA  := icu1.FieldByName('DIR_ENTREGA').AsString;
  FPRIORIDAD    := icu1.FieldByName('PRIORIDAD').AsSmallInt;
  icu1.Close;

end;

procedure TCliente.GetInfoCxC;
VAR
  dSaldo:Double;
  dDias:Double;
begin
//
  icu2.SQL.Clear;
  icu2.SQL.Add('SELECT A.NUMDOCTO,A.FECDOCTO,A.CODCTEPROV,A.FECVENCEDO,A.IMPTOTALDO,A.IMPPENDDOC,(A.IMPPENDDOC / A.IMPTOTALDO)*100 AS PORCENTAJE,current_timestamp - A.fecvencedo AS DIAS ');
  icu2.SQL.Add('FROM mba10008 A ');
  icu2.SQL.Add('WHERE (A.NUMTIPODOC = ''107'') ');
  icu2.SQL.Add('and (A.cancela <> ''1'') ');
  icu2.SQL.Add('and (A.imppenddoc > 100) '); //Saldo fac <100 son despreciables
  icu2.SQL.Add('and (CODCTEPROV = ?CODCTEPROV)  ');
  icu2.SQL.Add('ORDER BY A.NUMDOCTO ASC; ');

  icu2.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;
  icu2.Open;

  FSALDO_TOTAL := 0;
  FSALDO_VENCIDO:=0;
  FDIAS_VENCIDOS:=0;
  FFACTURAS_VENCIDAS:=0;
  FMAX_DIAS_VENCIDOS:=0;
  FMAX_SALDO_VENCIDO:=0;

  if icu2.Eof then begin
    icu2.Close;
    exit;
  end;

  while not icu2.Eof do begin
    dSaldo + icu2.FieldByName('IMPTOTALDO').AsDouble;
    dDias :=  icu2.FieldByName('DIAS').AsDouble;
    FSALDO_TOTAL := FSALDO_TOTAL + dSaldo;
    if dDias > 0 then begin
      FFACTURAS_VENCIDAS := FFACTURAS_VENCIDAS + 1;
      FSALDO_VENCIDO := FSALDO_VENCIDO + dSaldo;
      FDIAS_VENCIDOS := FDIAS_VENCIDOS + dDias;
      if dSaldo > FMAX_SALDO_VENCIDO then begin
        FMAX_SALDO_VENCIDO  := dSaldo;
        FMAX_DIAS_VENCIDOS := dDias;
      end;
    end;

    icu2.Next;
  end;

  icu2.Close;

end;

procedure TCliente.Save;
begin
    DM1.ispCte_U00.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;
    DM1.ispCte_U00.ParamByName('RAZSOCIAL').AsString := FRAZSOCIAL;
    DM1.ispCte_U00.ParamByName('NUMAGENTE').AsString := FNUMAGENTE;
    DM1.ispCte_U00.ParamByName('CODPOSTAL').AsString := FCODPOSTAL;
    DM1.ispCte_U00.ParamByName('COLONIACTE').AsString := FCOLONIACTE;
    DM1.ispCte_U00.ParamByName('DOMICILIO').AsString := FDOMICILIO;
    DM1.ispCte_U00.ParamByName('EDOACTCTE').AsSmallInt := FEDOACTCTE;
    DM1.ispCte_U00.ParamByName('ESTADOCTE').AsString := FESTADOCTE;
    DM1.ispCte_U00.ParamByName('FECHAALTA').AsDateTime := FFECHAALTA;
    DM1.ispCte_U00.ParamByName('FECBAJACTE').AsDateTime := FFECBAJACTE;
    DM1.ispCte_U00.ParamByName('LIMCREDCTE').AsDouble := FLIMCREDCTE;
    DM1.ispCte_U00.ParamByName('LISTPRECIO').AsSmallInt := FLISTPRECIO;
    DM1.ispCte_U00.ParamByName('MONEDACTE').AsString := FMONEDACTE;
    DM1.ispCte_U00.ParamByName('POBLACTE').AsString := FPOBLACTE;
    DM1.ispCte_U00.ParamByName('RFC').AsString := FRFC;
    DM1.ispCte_U00.ParamByName('RUTA').AsString := FRUTA;
    DM1.ispCte_U00.ParamByName('TELEFONO1').AsString := FTELEFONO1;
    DM1.ispCte_U00.ParamByName('TELEFONO2').AsString := FTELEFONO2;
    DM1.ispCte_U00.ParamByName('TELEFONO3').AsString := FTELEFONO3;
    DM1.ispCte_U00.ParamByName('ZONA').AsString := FZONA;
    DM1.ispCte_U00.ParamByName('DIASCREDIT').AsSmallInt := FDIASCREDIT;
    DM1.ispCte_U00.ParamByName('PAISCTE').AsString := FPAISCTE;
    DM1.ispCte_U00.ParamByName('DIASPPAGO').AsSmallInt := FDIASPPAGO;
    DM1.ispCte_U00.ParamByName('PDESCPPAGO').AsDouble := FPDESCPPAGO;
    DM1.ispCte_U00.ParamByName('CURP').AsString := FCURP;
    DM1.ispCte_U00.ParamByName('VIATRANS').AsString := FVIATRANS;
    DM1.ispCte_U00.ParamByName('JEFEPAGOS').AsString := FJEFEPAGOS;
    DM1.ispCte_U00.ParamByName('EMAIL').AsString := FEMAIL;
    DM1.ispCte_U00.ParamByName('COMENTARIOS').AsString := FCOMENTARIOS;
    DM1.ispCte_U00.ParamByName('JEFECOMPRAS').AsString := FJEFECOMPRAS;
    DM1.ispCte_U00.ParamByName('CURP2').AsString := FCURP2;
    DM1.ispCte_U00.ParamByName('ENTREGAR').AsString := FENTREGAR;
    DM1.ispCte_U00.ParamByName('NUM_EXTERIOR').AsString := FNUM_EXTERIOR;
    DM1.ispCte_U00.ParamByName('NUM_INTERIOR').AsString := FNUM_INTERIOR;
    DM1.ispCte_U00.ParamByName('CALLE').AsString := FCALLE;
    DM1.ispCte_U00.ParamByName('CUENTABANCO').AsString := FCUENTABANCO;
    DM1.ispCte_U00.ParamByName('METODOPAGO').AsString := FMETODOPAGO;
    DM1.ispCte_U00.ParamByName('EMAILPAGOS').AsString := FEMAILPAGOS;
    DM1.ispCte_U00.ParamByName('EMAILFACTURA').AsString := FEMAILFACTURA;
    DM1.ispCte_U00.ParamByName('REFERENCIA').AsString := FREFERENCIA;
//    DM1.ispCte_U00.ParamByName('NUMPROVEEDOR').AsString := FNUMPROVEEDOR;


    DM1.ispCte_U00.ExecProc;

    FIDCLIENTE := Dm1.ispCte_U00.Fields[0].AsInteger;

    Save3; // Guardar direcciones de entrega

end;

procedure TCliente.Save2;
begin
    DM1.ispCte_U01.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;
    DM1.ispCte_U01.ParamByName('RAZSOCIAL').AsString := FRAZSOCIAL;
    DM1.ispCte_U01.ParamByName('NUMAGENTE').AsString := FNUMAGENTE;
    DM1.ispCte_U01.ParamByName('CODPOSTAL').AsString := FCODPOSTAL;
    DM1.ispCte_U01.ParamByName('COLONIACTE').AsString := FCOLONIACTE;
    DM1.ispCte_U01.ParamByName('DOMICILIO').AsString := FDOMICILIO;
    DM1.ispCte_U01.ParamByName('EDOACTCTE').AsSmallInt := FEDOACTCTE;
    DM1.ispCte_U01.ParamByName('ESTADOCTE').AsString := FESTADOCTE;
    DM1.ispCte_U01.ParamByName('FECHAALTA').AsDateTime := FFECHAALTA;
    DM1.ispCte_U01.ParamByName('FECBAJACTE').AsDateTime := FFECBAJACTE;
    DM1.ispCte_U01.ParamByName('LIMCREDCTE').AsDouble := FLIMCREDCTE;
    DM1.ispCte_U01.ParamByName('LISTPRECIO').AsSmallInt := FLISTPRECIO;
    DM1.ispCte_U01.ParamByName('MONEDACTE').AsString := FMONEDACTE;
    DM1.ispCte_U01.ParamByName('POBLACTE').AsString := FPOBLACTE;
    DM1.ispCte_U01.ParamByName('RFC').AsString := FRFC;
    DM1.ispCte_U01.ParamByName('RUTA').AsString := FRUTA;
    DM1.ispCte_U01.ParamByName('TELEFONO1').AsString := FTELEFONO1;
    DM1.ispCte_U01.ParamByName('TELEFONO2').AsString := FTELEFONO2;
    DM1.ispCte_U01.ParamByName('TELEFONO3').AsString := FTELEFONO3;
    DM1.ispCte_U01.ParamByName('ZONA').AsString := FZONA;
    DM1.ispCte_U01.ParamByName('DIASCREDIT').AsSmallInt := FDIASCREDIT;
    DM1.ispCte_U01.ParamByName('PAISCTE').AsString := FPAISCTE;
    DM1.ispCte_U01.ParamByName('DIASPPAGO').AsSmallInt := FDIASPPAGO;
    DM1.ispCte_U01.ParamByName('PDESCPPAGO').AsDouble := FPDESCPPAGO;
    DM1.ispCte_U01.ParamByName('CURP').AsString := FCURP;
    DM1.ispCte_U01.ParamByName('VIATRANS').AsString := FVIATRANS;
    DM1.ispCte_U01.ParamByName('JEFEPAGOS').AsString := FJEFEPAGOS;
    DM1.ispCte_U01.ParamByName('EMAIL').AsString := FEMAIL;
    DM1.ispCte_U01.ParamByName('COMENTARIOS').AsString := FCOMENTARIOS;
    DM1.ispCte_U01.ParamByName('JEFECOMPRAS').AsString := FJEFECOMPRAS;
    DM1.ispCte_U01.ParamByName('CURP2').AsString := FCURP2;
    DM1.ispCte_U01.ParamByName('ENTREGAR').AsString := FENTREGAR;
    DM1.ispCte_U01.ParamByName('NUM_EXTERIOR').AsString := FNUM_EXTERIOR;
    DM1.ispCte_U01.ParamByName('NUM_INTERIOR').AsString := FNUM_INTERIOR;
    DM1.ispCte_U01.ParamByName('CALLE').AsString := FCALLE;
    DM1.ispCte_U01.ParamByName('CUENTABANCO').AsString := FCUENTABANCO;
    DM1.ispCte_U01.ParamByName('METODOPAGO').AsString := FMETODOPAGO;
    DM1.ispCte_U01.ParamByName('EMAILPAGOS').AsString := FEMAILPAGOS;
    DM1.ispCte_U01.ParamByName('EMAILFACTURA').AsString := FEMAILFACTURA;
    DM1.ispCte_U01.ParamByName('REFERENCIA').AsString := FREFERENCIA;
//    DM1.ispCte_U01.ParamByName('NUMPROVEEDOR').AsString := FNUMPROVEEDOR;


    DM1.ispCte_U01.ExecProc;

    FIDCLIENTE := Dm1.ispCte_U01.Fields[0].AsInteger;
end;

procedure TCliente.Save3;
begin
  FError := 0;
  isql1.UnPrepare;
  isql1.sql.Clear;
  isql1.SQL.Add ('UPDATE MBA10002 SET NOMBRE_DIR = ?NOMBRE_DIR, DIR_ENTREGA = ?DIR_ENTREGA, ');
  isql1.SQL.Add ('  FORMAPAGO = ?FORMAPAGO, USOCFDI = ?USOCFDI, RESIDENCIA = ?RESIDENCIA, IDTRIBUTARIO = ?IDTRIBUTARIO ');
  isql1.SQL.Add ('WHERE CODCTEPROV = ?CODCTEPROV; ');
  isql1.Prepare;

  isql1.ParamByName('NOMBRE_DIR').AsString := FNOMBRE_DIR;
  isql1.ParamByName('DIR_ENTREGA').AsString := FDIR_ENTREGA;
  isql1.ParamByName('FORMAPAGO').AsString := FFORMAPAGO;
  isql1.ParamByName('USOCFDI').AsString := FUSOCFDI;
  isql1.ParamByName('RESIDENCIA').AsString := FRESIDENCIA;
  isql1.ParamByName('IDTRIBUTARIO').AsString := FIDTRIBUTARIO;
  isql1.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;

  try
    isql1.Execute;
  except
    FError := 1;
  end;

end;

procedure TCliente.SetBloqueo_Manual(AValor:SmallInt);
begin
  FError := 0;
  isql1.UnPrepare;
  isql1.sql.Clear;
  isql1.SQL.Add ('UPDATE MBA10002 SET BLOQUEO_MANUAL = ?VALOR ');
  isql1.SQL.Add ('WHERE CODCTEPROV = ?CODCTEPROV; ');
  isql1.Prepare;

  isql1.ParamByName('VALOR').AsSmallint := AValor;
  isql1.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;

  try
    isql1.Execute;
  except
    FError := 1;
  end;

end;

procedure TCliente.SetBA_Limite(AValor:SmallInt);
begin
  FError := 0;
  isql1.UnPrepare;
  isql1.sql.Clear;
  isql1.SQL.Add ('UPDATE MBA10002 SET BA_LIMITE = ?VALOR ');
  isql1.SQL.Add ('WHERE CODCTEPROV = ?CODCTEPROV; ');
  isql1.Prepare;

  isql1.ParamByName('VALOR').AsSmallint := AValor;
  isql1.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;

  try
    isql1.Execute;
  except
    FError := 1;
  end;
end;

procedure TCliente.SetBA_Saldos(AValor:SmallInt);
begin
  FError := 0;
  isql1.UnPrepare;
  isql1.sql.Clear;
  isql1.SQL.Add ('UPDATE MBA10002 SET BA_SALDOS = ?VALOR ');
  isql1.SQL.Add ('WHERE CODCTEPROV = ?CODCTEPROV; ');
  isql1.Prepare;

  isql1.ParamByName('VALOR').AsSmallint := AValor;
  isql1.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;

  try
    isql1.Execute;
  except
    FError := 1;
  end;

end;

procedure TCliente.SetBA_Pagos(AValor:SmallInt);
begin
  FError := 0;
  isql1.UnPrepare;
  isql1.sql.Clear;
  isql1.SQL.Add ('UPDATE MBA10002 SET BA_PAGOS = ?VALOR ');
  isql1.SQL.Add ('WHERE CODCTEPROV = ?CODCTEPROV; ');
  isql1.Prepare;

  isql1.ParamByName('VALOR').AsSmallint := AValor;
  isql1.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;

  try
    isql1.Execute;
  except
    FError := 1;
  end;

end;

procedure TCliente.SetBA_Venta_Unica(AValor:SmallInt;AMonto:Double);
begin
  FError := 0;
  isql1.UnPrepare;
  isql1.sql.Clear;
  isql1.SQL.Add ('UPDATE MBA10002 SET BA_VENTA_UNICA = ?VALOR1, LIMITE_VENTA = ?VALOR2 ');
  isql1.SQL.Add ('WHERE CODCTEPROV = ?CODCTEPROV; ');
  isql1.Prepare;

  isql1.ParamByName('VALOR1').AsSmallint := AValor;
  isql1.ParamByName('VALOR2').AsDouble := AMonto;
  isql1.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;

  try
    isql1.Execute;
  except
    FError := 1;
  end;

end;

procedure TCliente.Clear;
begin
  FError :=0;
  FCODCTEPROV := '';
  FRAZSOCIAL := '';
  FAGENTECOB := '';
  FNUMAGENTE := '';
  FAGRUPACTE := '';
  FCALCINTMOR := 0;
  FCATEGCTE := '';
  FCODPOSTAL := '';
  FCOLONIACTE := '';
  FCTAANTICIP := '';
  FCTACXC := '';
  FCTADXC := '';
  FCTAESTCTE := '';
  FDENCOMERCI := '';
  FDOMICILIO := '';
  FEDOACTCTE := 0;
  FESTADCTE := 0;
  FESTADOCTE := '';
  FFACTERCERO := 0;
  FFECINIESTA := 0;
  FFULTPAGCTE := 0;
  FFULTPEDCTE := 0;
  FFECULTREV := 0;
  FFECULTVTAC := 0;
  FFECHAALTA := 0;
  FFECBAJACTE := 0;
  FIMPEDOCTA := 0;
  FLIMCREDCTE := 0;
  FLISTPRECIO := 0;
  FMONEDACTE := '';
  FNUMTIPOCTE := '';
  FPOBLACTE := '';
  FRFC := '';
  FREPRESCTE := '';
  FRUTA := '';
  FSDOACTUAL := 0;
  FSDOANTCTE := 0;
  FSDOCXC := 0;
  FSDODXC := 0;
  FTELEFONO1 := '';
  FTELEFONO2 := '';
  FTELEFONO3 := '';
  FZONA := '';
  FDIASCREDIT := 0;
  FPAISCTE := '';
  FCTACOMPLEM := '';
  FDIASPPAGO := 0;
  FPDESCPPAGO := 0;
  FIDCHQ := 0;
  FCURP := '';
  FVIATRANS := '';
  FJEFEPAGOS := '';
  FEMAIL := '';
  FCOMENTARIOS := '';
  FJEFECOMPRAS := '';
  FCURP2 := '';
  FDESCTO1 := 0;
  FDESCTO2 := 0;
  FDESCTO3 := 0;
  FDESCTO4 := 0;
  FDESCTO5 := 0;
  FENTREGAR := '';
  FNUM_EXTERIOR := '';
  FNUM_INTERIOR := '';
  FCALLE := '';
  FCUENTABANCO := '';
  FMETODOPAGO := '';
  FEMAILPAGOS := '';
  FEMAILFACTURA := '';
  FREFERENCIA := '';
  FNUMPROVEEDOR := '';
  FIDCLIENTE := 0;

  FBA_LIMITE := 0;
  FBA_SALDOS := 0;
  FBA_PAGOS := 0;
  FBA_VENTA_UNICA := 0;
  FLIMITE_VENTA := 0;
  FNOMBRE_DIR:='';
  FDIR_ENTREGA:='';
  FPRIORIDAD:=0;
  FDATOS_EMBARQUE:='';
  FFORMAPAGO:='';
  FRESIDENCIA:='';
  FIDTRIBUTARIO:='';

end;

end.
