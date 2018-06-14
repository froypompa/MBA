unit ClsOrdenSurtido;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls,VCIF1Lib_TLB, StdCtrls,
     IB_Components, IB_StoredProc, StrMan, ESBDates, IniFiles;
type
  TOrdenSurtido = class(TObject)
    constructor Create;
    destructor Destroy; override;
   private
    FDOCTO_ID: Integer;
    FORDEN: Integer;
    FNUMDOCTO: String;
    FFECHA: TDateTime;
    FNUMALMAC: String;
    FCODCTEPROV: String;
    FNUMAGENTE: String;
    FRECIBIDO: SmallInt;
    FFH_RECIBIDO: TDateTime;
    FIMPRESO: SmallInt;
    FFH_IMPRESO: TDateTime;
    FASIGNADO: SmallInt;
    FFH_ASIGNADO: TDateTime;
    FSURTIDO: SmallInt;
    FFH_SURTIDO: TDateTime;
    FCONFIRMADO: SmallInt;
    FFH_CONFIRMADO: TDateTime;
    FENTREGADO: SmallInt;
    FFH_ENTREGADO: TDateTime;
    FMODIFICADO: SmallInt;
    FFH_MODIFICADO: TDateTime;
    FSURTIDOR: String;
    FRECIBIDO_POR: String;
    FCOMENTARIOS_CXC: String;
    FCOMENTARIOS_VEN: String;
    FCOMENTARIOS_ALM: String;
    FCOMPLETO:SmallInt;
    FLIBERADO:SmallInt;
    FFH_LIBERADO: TDateTime;
    FLIBERADOPOR: String;
    FCERRADO:SmallInt;
    FFH_CERRADO: TDateTime;
    FCERRADOPOR: String;
    FCANCELADO:SmallInt;
    FFH_CANCELADO: TDateTime;
    FCANCELADOPOR: String;
    FDIRENTREGA_ID: Integer;
    FUSERINS: String;
    FFHINS: TDateTime;
    FUSERACT: String;
    FFHACT: TDateTime;

// PEDIDOS_DET
    FDETALLE_ID: Integer;
    FCANTIDAD_S: Double;
    FCOMENTARIOS_VEN_PAR: String;
    FCOMENTARIOS_ALM_PAR: String;
    FACCION_VEN: SmallInt;
    FACCION_ALM: SmallInt;

    FLIBERACION_AUTOMATICA: Boolean;

    FError:Integer;
    FErrorMSg:TStringList;
    icuS00:TIB_Cursor;
    icuS01:TIB_Cursor;
    icuS02:TIB_Cursor;
    icuS03:TIB_Cursor;
    isqlI00:TIB_DSQL;
    isqlU00,isqlU01,isqlU02,isqlU03:TIB_DSQL;
    isqlD00:TIB_DSQL;
    tS00,tsql1,tS02:String;
    isp1: TIB_StoredProc;


    procedure isqlError(Sender: TObject; const ERRCODE: Integer;
              ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
              SQLMessage, SQL: TStringList; var RaiseException: Boolean);

   public
    property DOCTO_ID: Integer read FDOCTO_ID  write FDOCTO_ID;
    property ORDEN: Integer read FORDEN  write FORDEN;
    property NUMDOCTO: String read FNUMDOCTO  write FNUMDOCTO;
    property FECHA: TDateTime read FFECHA  write FFECHA;
    property NUMALMAC: String read FNUMALMAC  write FNUMALMAC;
    property CODCTEPROV: String read FCODCTEPROV  write FCODCTEPROV;
    property NUMAGENTE: String read FNUMAGENTE  write FNUMAGENTE;
    property RECIBIDO: SmallInt read FRECIBIDO  write FRECIBIDO;
    property FH_RECIBIDO: TDateTime read FFH_RECIBIDO  write FFH_RECIBIDO;
    property IMPRESO: SmallInt read FIMPRESO  write FIMPRESO;
    property FH_IMPRESO: TDateTime read FFH_IMPRESO  write FFH_IMPRESO;
    property ASIGNADO: SmallInt read FASIGNADO  write FASIGNADO;
    property FH_ASIGNADO: TDateTime read FFH_ASIGNADO  write FFH_ASIGNADO;
    property SURTIDO: SmallInt read FSURTIDO  write FSURTIDO;
    property FH_SURTIDO: TDateTime read FFH_SURTIDO  write FFH_SURTIDO;
    property CONFIRMADO: SmallInt read FCONFIRMADO  write FCONFIRMADO;
    property FH_CONFIRMADO: TDateTime read FFH_CONFIRMADO  write FFH_CONFIRMADO;
    property ENTREGADO: SmallInt read FENTREGADO  write FENTREGADO;
    property FH_ENTREGADO: TDateTime read FFH_ENTREGADO  write FFH_ENTREGADO;
    property MODIFICADO: SmallInt read FMODIFICADO  write FMODIFICADO;
    property FH_MODIFICADO: TDateTime read FFH_MODIFICADO  write FFH_MODIFICADO;
    property SURTIDOR: String read FSURTIDOR  write FSURTIDOR;
    property RECIBIDO_POR: String read FRECIBIDO_POR  write FRECIBIDO_POR;
    property COMENTARIOS_CXC: String read FCOMENTARIOS_CXC  write FCOMENTARIOS_CXC;
    property COMENTARIOS_VEN: String read FCOMENTARIOS_VEN  write FCOMENTARIOS_VEN;
    property COMENTARIOS_ALM: String read FCOMENTARIOS_ALM  write FCOMENTARIOS_ALM;

    property COMPLETO: SmallInt read FCOMPLETO  write FCOMPLETO;
    property LIBERADO: SmallInt read FLIBERADO  write FLIBERADO;
    property FH_LIBERADO: TDateTime read FFH_LIBERADO  write FFH_LIBERADO;
    property LIBERADOPOR: String read FLIBERADOPOR  write FLIBERADOPOR;
    property CERRADO: SmallInt read FCERRADO  write FCERRADO;
    property FH_CERRADO: TDateTime read FFH_CERRADO  write FFH_CERRADO;
    property CERRADOPOR: String read FCERRADOPOR  write FCERRADOPOR;

    property DIRENTREGA_ID: Integer read FDIRENTREGA_ID  write FDIRENTREGA_ID;

    property USERINS: String read FUSERINS  write FUSERINS;
    property FHINS: TDateTime read FFHINS  write FFHINS;
    property USERACT: String read FUSERACT  write FUSERACT;
    property FHACT: TDateTime read FFHACT  write FFHACT;

    property LIBERACION_AUTOMATICA: Boolean read FLIBERACION_AUTOMATICA  write FLIBERACION_AUTOMATICA;

// PEDIDOS_DET
    property DETALLE_ID: Integer read FDETALLE_ID  write FDETALLE_ID;
    property CANTIDAD_S: Double read FCANTIDAD_S  write FCANTIDAD_S;
    property COMENTARIOS_VEN_PAR: String read FCOMENTARIOS_VEN_PAR  write FCOMENTARIOS_VEN_PAR;
    property COMENTARIOS_ALM_PAR: String read FCOMENTARIOS_ALM_PAR  write FCOMENTARIOS_ALM_PAR;
    property ACCION_VEN: SmallInt read FACCION_VEN  write FACCION_VEN;
    property ACCION_ALM: SmallInt read FACCION_ALM  write FACCION_ALM;

    property Error:Integer read FError  write FError;
    property ErrorMsg:TStringList read FErrorMsg  write FErrorMsg;
    procedure Clear;
    procedure Prepare;
    procedure UnPrepare;
    procedure Insert;
    procedure Update;
    procedure Update_Surtidor;
    procedure Update_Impresion;
    procedure Update_Surtido;
    procedure Update_Entregado(AStatus:SmallInt);
    procedure Update_Cantidad_Surtida(AStatus:SmallInt);
    procedure Update_Completo(AStatus:SmallInt);
    procedure Update_Liberado;
    procedure Update_Comentarios_Pedido;
    procedure Update_Comentarios_Partida;
    procedure Update_Cerrado(AStatus:SmallInt);
    procedure Update_Cancelado(AStatus:SmallInt);
    procedure Delete;
    procedure SelectById(ADOCTO_ID:integer = 0);
    procedure SelectByFolio(ANUMDOCTO:String);
    procedure AsignarPropiedades(Aicu:TIB_Cursor);
    procedure ValidarDatos;
  end;


implementation

uses DM_MBA;
{==================================================================
Implementacion: TUser
==================================================================}
constructor TOrdenSurtido.Create;
begin
  inherited Create;  // Inicializa las partes heredadas
  FErrorMsg := TStringList.Create;
  Prepare;
end;

destructor TOrdenSurtido.Destroy;
begin
    inherited Destroy;
    icuS00.unprepare;
    icuS00.Free;
    icuS01.unprepare;
    icuS01.Free;
    icuS02.unprepare;
    icuS02.Free;
    icuS03.unprepare;
    icuS03.Free;
    isqlI00.unprepare;
    isqlI00.Free;
    isqlU00.unprepare;
    isqlU00.Free;
    isqlU01.unprepare;
    isqlU01.Free;
    isqlU02.unprepare;
    isqlU02.Free;
    isqlD00.unprepare;
    isqlD00.Free;
    FErrorMsg.Free;
end;
procedure TOrdenSurtido.Prepare;
begin
  FError :=0;
  {Preparar: icuS00}
  icuS00 := TIB_Cursor.Create(nil);
  icuS00.IB_Connection := DM1.cnMBA;
  icuS00.IB_Transaction := DM1.trMBA;
  icuS00.SQL.Clear;
  icuS00.SQL.Add('SELECT ');
  icuS00.SQL.Add('  DOCTO_ID,');
  icuS00.SQL.Add('  ORDEN,');
  icuS00.SQL.Add('  NUMDOCTO,');
  icuS00.SQL.Add('  FECHA,');
  icuS00.SQL.Add('  NUMALMAC,');
  icuS00.SQL.Add('  CODCTEPROV,');
  icuS00.SQL.Add('  NUMAGENTE,');
  icuS00.SQL.Add('  RECIBIDO,');
  icuS00.SQL.Add('  FH_RECIBIDO,');
  icuS00.SQL.Add('  IMPRESO,');
  icuS00.SQL.Add('  FH_IMPRESO,');
  icuS00.SQL.Add('  ASIGNADO,');
  icuS00.SQL.Add('  FH_ASIGNADO,');
  icuS00.SQL.Add('  SURTIDO,');
  icuS00.SQL.Add('  FH_SURTIDO,');
  icuS00.SQL.Add('  CONFIRMADO,');
  icuS00.SQL.Add('  FH_CONFIRMADO,');
  icuS00.SQL.Add('  ENTREGADO,');
  icuS00.SQL.Add('  FH_ENTREGADO,');
  icuS00.SQL.Add('  MODIFICADO,');
  icuS00.SQL.Add('  FH_MODIFICADO,');
  icuS00.SQL.Add('  SURTIDOR,');
  icuS00.SQL.Add('  RECIBIDO_POR,');
  icuS00.SQL.Add('  COMENTARIOS_VEN,');
  icuS00.SQL.Add('  COMENTARIOS_ALM,');
  icuS00.SQL.Add('  COMENTARIOS_CXC,');
  icuS00.SQL.Add('  COMPLETO,');
  icuS00.SQL.Add('  LIBERADO,');
  icuS00.SQL.Add('  FH_LIBERADO,');
  icuS00.SQL.Add('  LIBERADOPOR,');
  icuS00.SQL.Add('  CERRADO,');
  icuS00.SQL.Add('  FH_CERRADO,');
  icuS00.SQL.Add('  CERRADOPOR,');
  icuS00.SQL.Add('  CANCELADO,');
  icuS00.SQL.Add('  FH_CANCELADO,');
  icuS00.SQL.Add('  CANCELADOPOR,');
  icuS00.SQL.Add('  IDDIRENTREGA,');
  icuS00.SQL.Add('  USERINS,');
  icuS00.SQL.Add('  FHINS,');
  icuS00.SQL.Add('  USERACT,');
  icuS00.SQL.Add('  FHACT  ');
  icuS00.SQL.Add('FROM PEDIDOS ');
  icuS00.SQL.Add('WHERE (DOCTO_ID = ?DOCTO_ID);');

  {Preparar: icuS01}
  icuS01 := TIB_Cursor.Create(nil);
  icuS01.IB_Connection := DM1.cnMBA;
  icuS01.IB_Transaction := DM1.trMBA;
  icuS01.SQL.Clear;
  icuS01.SQL.Add('SELECT ');
  icuS01.SQL.Add('  DOCTO_ID,');
  icuS01.SQL.Add('  ORDEN,');
  icuS01.SQL.Add('  NUMDOCTO,');
  icuS01.SQL.Add('  FECHA,');
  icuS01.SQL.Add('  NUMALMAC,');
  icuS01.SQL.Add('  CODCTEPROV,');
  icuS01.SQL.Add('  NUMAGENTE,');
  icuS01.SQL.Add('  RECIBIDO,');
  icuS01.SQL.Add('  FH_RECIBIDO,');
  icuS01.SQL.Add('  IMPRESO,');
  icuS01.SQL.Add('  FH_IMPRESO,');
  icuS01.SQL.Add('  ASIGNADO,');
  icuS01.SQL.Add('  FH_ASIGNADO,');
  icuS01.SQL.Add('  SURTIDO,');
  icuS01.SQL.Add('  FH_SURTIDO,');
  icuS01.SQL.Add('  CONFIRMADO,');
  icuS01.SQL.Add('  FH_CONFIRMADO,');
  icuS01.SQL.Add('  ENTREGADO,');
  icuS01.SQL.Add('  FH_ENTREGADO,');
  icuS01.SQL.Add('  MODIFICADO,');
  icuS01.SQL.Add('  FH_MODIFICADO,');
  icuS01.SQL.Add('  SURTIDOR,');
  icuS01.SQL.Add('  RECIBIDO_POR,');
  icuS01.SQL.Add('  COMENTARIOS_VEN,');
  icuS01.SQL.Add('  COMENTARIOS_ALM,');
  icuS01.SQL.Add('  USERINS,');
  icuS01.SQL.Add('  FHINS,');
  icuS01.SQL.Add('  USERACT,');
  icuS01.SQL.Add('  FHACT  ');
  icuS01.SQL.Add('FROM PEDIDOS ');
  icuS01.SQL.Add('ORDER BY NUMDOCTO;');

  {Preparar: icuS02}
  icuS02 := TIB_Cursor.Create(nil);
  icuS02.IB_Connection := DM1.cnMBA;
  icuS02.IB_Transaction := DM1.trMBA;
  icuS02.SQL.Clear;
  icuS02.SQL.Add('SELECT ');
  icuS02.SQL.Add('  DOCTO_ID,');
  icuS02.SQL.Add('  ORDEN,');
  icuS02.SQL.Add('  NUMDOCTO,');
  icuS02.SQL.Add('  FECHA,');
  icuS02.SQL.Add('  NUMALMAC,');
  icuS02.SQL.Add('  CODCTEPROV,');
  icuS02.SQL.Add('  NUMAGENTE,');
  icuS02.SQL.Add('  RECIBIDO,');
  icuS02.SQL.Add('  FH_RECIBIDO,');
  icuS02.SQL.Add('  IMPRESO,');
  icuS02.SQL.Add('  FH_IMPRESO,');
  icuS02.SQL.Add('  ASIGNADO,');
  icuS02.SQL.Add('  FH_ASIGNADO,');
  icuS02.SQL.Add('  SURTIDO,');
  icuS02.SQL.Add('  FH_SURTIDO,');
  icuS02.SQL.Add('  CONFIRMADO,');
  icuS02.SQL.Add('  FH_CONFIRMADO,');
  icuS02.SQL.Add('  ENTREGADO,');
  icuS02.SQL.Add('  FH_ENTREGADO,');
  icuS02.SQL.Add('  MODIFICADO,');
  icuS02.SQL.Add('  FH_MODIFICADO,');
  icuS02.SQL.Add('  SURTIDOR,');
  icuS02.SQL.Add('  RECIBIDO_POR,');
  icuS02.SQL.Add('  COMENTARIOS_VEN,');
  icuS02.SQL.Add('  COMENTARIOS_ALM,');
  icuS02.SQL.Add('  USERINS,');
  icuS02.SQL.Add('  FHINS,');
  icuS02.SQL.Add('  USERACT,');
  icuS02.SQL.Add('  FHACT  ');
  icuS02.SQL.Add('FROM PEDIDOS ');
  icuS02.SQL.Add('WHERE (NUMDOCTO = ?NUMDOCTO);');

  {Preparar: icuS03}
  icuS03 := TIB_Cursor.Create(nil);
  icuS03.IB_Connection := DM1.cnMBA;
  icuS03.IB_Transaction := DM1.trMBA;
  icuS03.SQL.Clear;
  icuS03.SQL.Add('SELECT FIRST 1 ');
  icuS03.SQL.Add('  DOCTO_ID,');
  icuS03.SQL.Add('  ORDEN,');
  icuS03.SQL.Add('  NUMDOCTO,');
  icuS03.SQL.Add('  FECHA,');
  icuS03.SQL.Add('  NUMALMAC,');
  icuS03.SQL.Add('  CODCTEPROV,');
  icuS03.SQL.Add('  NUMAGENTE,');
  icuS03.SQL.Add('  RECIBIDO,');
  icuS03.SQL.Add('  FH_RECIBIDO,');
  icuS03.SQL.Add('  IMPRESO,');
  icuS03.SQL.Add('  FH_IMPRESO,');
  icuS03.SQL.Add('  ASIGNADO,');
  icuS03.SQL.Add('  FH_ASIGNADO,');
  icuS03.SQL.Add('  SURTIDO,');
  icuS03.SQL.Add('  FH_SURTIDO,');
  icuS03.SQL.Add('  CONFIRMADO,');
  icuS03.SQL.Add('  FH_CONFIRMADO,');
  icuS03.SQL.Add('  ENTREGADO,');
  icuS03.SQL.Add('  FH_ENTREGADO,');
  icuS03.SQL.Add('  MODIFICADO,');
  icuS03.SQL.Add('  FH_MODIFICADO,');
  icuS03.SQL.Add('  SURTIDOR,');
  icuS03.SQL.Add('  RECIBIDO_POR,');
  icuS03.SQL.Add('  COMENTARIOS_VEN,');
  icuS03.SQL.Add('  COMENTARIOS_ALM,');
  icuS03.SQL.Add('  USERINS,');
  icuS03.SQL.Add('  FHINS,');
  icuS03.SQL.Add('  USERACT,');
  icuS03.SQL.Add('  FHACT  ');
  icuS03.SQL.Add('FROM PEDIDOS ');
  icuS03.SQL.Add('WHERE (NUMDOCTO CONTAINING ?NUMDOCTO);');

  {Preparar: isqlI00}
  isqlI00 := TIB_DSQL.Create(nil);
  isqlI00.IB_Connection := DM1.cnMBA;
  isqlI00.IB_Transaction := DM1.trMBA;
  isqlI00.SQL.Clear;
  isqlI00.SQL.Add('INSERT INTO PEDIDOS( ');
  isqlI00.SQL.Add('  DOCTO_ID,');
  isqlI00.SQL.Add('  ORDEN,');
  isqlI00.SQL.Add('  NUMDOCTO,');
  isqlI00.SQL.Add('  FECHA,');
  isqlI00.SQL.Add('  NUMALMAC,');
  isqlI00.SQL.Add('  CODCTEPROV,');
  isqlI00.SQL.Add('  NUMAGENTE,');
  isqlI00.SQL.Add('  RECIBIDO,');
  isqlI00.SQL.Add('  FH_RECIBIDO,');
  isqlI00.SQL.Add('  IMPRESO,');
  isqlI00.SQL.Add('  FH_IMPRESO,');
  isqlI00.SQL.Add('  ASIGNADO,');
  isqlI00.SQL.Add('  FH_ASIGNADO,');
  isqlI00.SQL.Add('  SURTIDO,');
  isqlI00.SQL.Add('  FH_SURTIDO,');
  isqlI00.SQL.Add('  CONFIRMADO,');
  isqlI00.SQL.Add('  FH_CONFIRMADO,');
  isqlI00.SQL.Add('  ENTREGADO,');
  isqlI00.SQL.Add('  FH_ENTREGADO,');
  isqlI00.SQL.Add('  MODIFICADO,');
  isqlI00.SQL.Add('  FH_MODIFICADO,');
  isqlI00.SQL.Add('  SURTIDOR,');
  isqlI00.SQL.Add('  RECIBIDO_POR,');
  isqlI00.SQL.Add('  COMENTARIOS_VEN,');
  isqlI00.SQL.Add('  COMENTARIOS_ALM,');
  isqlI00.SQL.Add('  USERINS,');
  isqlI00.SQL.Add('  FHINS,');
  isqlI00.SQL.Add('  USERACT,');
  isqlI00.SQL.Add('  FHACT)  ');
  isqlI00.SQL.Add('VALUES ( ');
  isqlI00.SQL.Add('  ?DOCTO_ID,');
  isqlI00.SQL.Add('  ?ORDEN,');
  isqlI00.SQL.Add('  ?NUMDOCTO,');
  isqlI00.SQL.Add('  ?FECHA,');
  isqlI00.SQL.Add('  ?NUMALMAC,');
  isqlI00.SQL.Add('  ?CODCTEPROV,');
  isqlI00.SQL.Add('  ?NUMAGENTE,');
  isqlI00.SQL.Add('  ?RECIBIDO,');
  isqlI00.SQL.Add('  ?FH_RECIBIDO,');
  isqlI00.SQL.Add('  ?IMPRESO,');
  isqlI00.SQL.Add('  ?FH_IMPRESO,');
  isqlI00.SQL.Add('  ?ASIGNADO,');
  isqlI00.SQL.Add('  ?FH_ASIGNADO,');
  isqlI00.SQL.Add('  ?SURTIDO,');
  isqlI00.SQL.Add('  ?FH_SURTIDO,');
  isqlI00.SQL.Add('  ?CONFIRMADO,');
  isqlI00.SQL.Add('  ?FH_CONFIRMADO,');
  isqlI00.SQL.Add('  ?ENTREGADO,');
  isqlI00.SQL.Add('  ?FH_ENTREGADO,');
  isqlI00.SQL.Add('  ?MODIFICADO,');
  isqlI00.SQL.Add('  ?FH_MODIFICADO,');
  isqlI00.SQL.Add('  ?SURTIDOR,');
  isqlI00.SQL.Add('  ?RECIBIDO_POR,');
  isqlI00.SQL.Add('  ?COMENTARIOS_VEN,');
  isqlI00.SQL.Add('  ?COMENTARIOS_ALM,');
  isqlI00.SQL.Add('  ?USERINS,');
  isqlI00.SQL.Add('  ?FHINS,');
  isqlI00.SQL.Add('  ?USERACT,');
  isqlI00.SQL.Add('  ?FHACT);');

  {Preparar: isqlU00}
  isqlU00 := TIB_DSQL.Create(nil);
  isqlU00.IB_Connection := DM1.cnMBA;
  isqlU00.IB_Transaction := DM1.trMBA;
  isqlU00.SQL.Clear;
  isqlU00.SQL.Add('UPDATE PEDIDOS SET ');
  isqlU00.SQL.Add('  DOCTO_ID = ?DOCTO_ID,');
  isqlU00.SQL.Add('  ORDEN = ?ORDEN,');
  isqlU00.SQL.Add('  NUMDOCTO = ?NUMDOCTO,');
  isqlU00.SQL.Add('  FECHA = ?FECHA,');
  isqlU00.SQL.Add('  NUMALMAC = ?NUMALMAC,');
  isqlU00.SQL.Add('  CODCTEPROV = ?CODCTEPROV,');
  isqlU00.SQL.Add('  NUMAGENTE = ?NUMAGENTE,');
  isqlU00.SQL.Add('  RECIBIDO = ?RECIBIDO,');
  isqlU00.SQL.Add('  FH_RECIBIDO = ?FH_RECIBIDO,');
  isqlU00.SQL.Add('  IMPRESO = ?IMPRESO,');
  isqlU00.SQL.Add('  FH_IMPRESO = ?FH_IMPRESO,');
  isqlU00.SQL.Add('  ASIGNADO = ?ASIGNADO,');
  isqlU00.SQL.Add('  FH_ASIGNADO = ?FH_ASIGNADO,');
  isqlU00.SQL.Add('  SURTIDO = ?SURTIDO,');
  isqlU00.SQL.Add('  FH_SURTIDO = ?FH_SURTIDO,');
  isqlU00.SQL.Add('  CONFIRMADO = ?CONFIRMADO,');
  isqlU00.SQL.Add('  FH_CONFIRMADO = ?FH_CONFIRMADO,');
  isqlU00.SQL.Add('  ENTREGADO = ?ENTREGADO,');
  isqlU00.SQL.Add('  FH_ENTREGADO = ?FH_ENTREGADO,');
  isqlU00.SQL.Add('  MODIFICADO = ?MODIFICADO,');
  isqlU00.SQL.Add('  FH_MODIFICADO = ?FH_MODIFICADO,');
  isqlU00.SQL.Add('  SURTIDOR = ?SURTIDOR,');
  isqlU00.SQL.Add('  RECIBIDO_POR = ?RECIBIDO_POR,');
  isqlU00.SQL.Add('  COMENTARIOS_VEN = ?COMENTARIOS_VEN,');
  isqlU00.SQL.Add('  COMENTARIOS_ALM = ?COMENTARIOS_ALM,');
  isqlU00.SQL.Add('  USERINS = ?USERINS,');
  isqlU00.SQL.Add('  FHINS = ?FHINS,');
  isqlU00.SQL.Add('  USERACT = ?USERACT,');
  isqlU00.SQL.Add('  FHACT = ?FHACT ');
  isqlU00.SQL.Add('WHERE (DOCTO_ID = ?DOCTO_ID);');

  {Preparar: isqlU00}
  isqlU01 := TIB_DSQL.Create(nil);
  isqlU01.IB_Connection := DM1.cnMBA;
  isqlU01.IB_Transaction := DM1.trMBA;

  {Preparar: isqlU00}
  isqlU02 := TIB_DSQL.Create(nil);
  isqlU02.IB_Connection := DM1.cnMBA;
  isqlU02.IB_Transaction := DM1.trMBA;
  isqlU02.SQL.Clear;
  isqlU02.SQL.Add('UPDATE PEDIDOS_DET SET ');
  isqlU02.SQL.Add('  ESTATUS = ?ESTATUS,');
  isqlU02.SQL.Add('  CANTIDAD_S = ?CANTIDAD_S,');
  isqlU02.SQL.Add('  USERACT = ?USERACT,');
  isqlU02.SQL.Add('  FHACT = ?FHACT ');
  isqlU02.SQL.Add('WHERE (DETALLE_ID = ?DETALLE_ID);');

  {Preparar: isqlU00}
  isqlU03 := TIB_DSQL.Create(nil);
  isqlU03.IB_Connection := DM1.cnMBA;
  isqlU03.IB_Transaction := DM1.trMBA;
  isqlU03.SQL.Clear;
  isqlU03.SQL.Add('UPDATE PEDIDOS_DET SET ');
  isqlU03.SQL.Add('  COMENTARIOS_VEN = ?COMENTARIOS_VEN,');
  isqlU03.SQL.Add('  COMENTARIOS_ALM = ?COMENTARIOS_ALM,');
  isqlU03.SQL.Add('  ACCION_VEN = ?ACCION_VEN,');
  isqlU03.SQL.Add('  ACCION_ALM = ?ACCION_ALM,');
  isqlU03.SQL.Add('  USERACT = ?USERACT,');
  isqlU03.SQL.Add('  FHACT = ?FHACT ');
  isqlU03.SQL.Add('WHERE (DETALLE_ID = ?DETALLE_ID);');

  {Preparar: isqlD00}
  isqlD00 := TIB_DSQL.Create(nil);
  isqlD00.IB_Connection := DM1.cnMBA;
  isqlD00.IB_Transaction := DM1.trMBA;
  isqlD00.SQL.Clear;
  isqlD00.SQL.Add('DELETE FROM PEDIDOS ');
  isqlD00.SQL.Add('WHERE (DOCTO_ID = ?DOCTO_ID);');

  isp1 := TIB_StoredProc.Create(nil);
  isp1.IB_Connection := DM1.cnMBA;
  isp1.IB_Transaction := DM1.trMBA;
  isp1.AutoDefineParams := True;
  isp1.StoredProcName := 'Inserta_OrdenSurtido';

end;

procedure TOrdenSurtido.UnPrepare;
begin
  isqlD00.Unprepare;
end;

procedure TOrdenSurtido.SelectById(ADOCTO_ID:integer = 0);
begin
  Error := 0;
  //if ADOCTO_ID <=0 then ADOCTO_ID := FDOCTO_ID;

  icuS00.Close;
  icuS00.Prepare;
  icuS00.ParamByName('DOCTO_ID').AsInteger := ADOCTO_ID;
  icuS00.Open;
  if (icuS00.Eof) then begin
      Error := 1;
      icuS00.Close;
      FErrorMsg.Add (' ' + sm.strfloat(ADOCTO_ID,'#') + ' NO se encontró!');
      exit;
  end;
  AsignarPropiedades(icuS00);
  icuS00.Close;
end;

procedure TOrdenSurtido.SelectByFolio(ANUMDOCTO:String);
begin
  Error := 0;
  if length(ANUMDOCTO) <=0 then ANUMDOCTO := FNUMDOCTO;

  icuS02.Close;
  icuS02.Prepare;
  icuS02.ParamByName('NUMDOCTO').AsString := ANUMDOCTO;
  icuS02.Open;
  if (icuS02.Eof) then begin
      Error := 1;
      icuS02.Close;
      FErrorMsg.Add (' ' + ANUMDOCTO + ' NO se encontró!');
      exit;
  end;
  AsignarPropiedades(icuS01);
  icuS02.Close;
end;

procedure TOrdenSurtido.AsignarPropiedades(Aicu:TIB_Cursor);
begin
  FDOCTO_ID := Aicu.FieldByName('DOCTO_ID').AsInteger;
  FORDEN := Aicu.FieldByName('ORDEN').AsInteger;
  FNUMDOCTO := Aicu.FieldByName('NUMDOCTO').AsString;
  FFECHA := Aicu.FieldByName('FECHA').AsDateTime;
  FNUMALMAC := Aicu.FieldByName('NUMALMAC').AsString;
  FCODCTEPROV := Aicu.FieldByName('CODCTEPROV').AsString;
  FNUMAGENTE := Aicu.FieldByName('NUMAGENTE').AsString;
  FRECIBIDO := Aicu.FieldByName('RECIBIDO').AsSmallInt;
  FFH_RECIBIDO := Aicu.FieldByName('FH_RECIBIDO').AsDateTime;
  FIMPRESO := Aicu.FieldByName('IMPRESO').AsSmallInt;
  FFH_IMPRESO := Aicu.FieldByName('FH_IMPRESO').AsDateTime;
  FASIGNADO := Aicu.FieldByName('ASIGNADO').AsSmallInt;
  FFH_ASIGNADO := Aicu.FieldByName('FH_ASIGNADO').AsDateTime;
  FSURTIDO := Aicu.FieldByName('SURTIDO').AsSmallInt;
  FFH_SURTIDO := Aicu.FieldByName('FH_SURTIDO').AsDateTime;
  FCONFIRMADO := Aicu.FieldByName('CONFIRMADO').AsSmallInt;
  FFH_CONFIRMADO := Aicu.FieldByName('FH_CONFIRMADO').AsDateTime;
  FENTREGADO := Aicu.FieldByName('ENTREGADO').AsSmallInt;
  FFH_ENTREGADO := Aicu.FieldByName('FH_ENTREGADO').AsDateTime;
  FMODIFICADO := Aicu.FieldByName('MODIFICADO').AsSmallInt;
  FFH_MODIFICADO := Aicu.FieldByName('FH_MODIFICADO').AsDateTime;
  FSURTIDOR := Aicu.FieldByName('SURTIDOR').AsString;
  FRECIBIDO_POR := Aicu.FieldByName('RECIBIDO_POR').AsString;
  FCOMENTARIOS_VEN := Aicu.FieldByName('COMENTARIOS_VEN').AsString;
  FCOMENTARIOS_ALM := Aicu.FieldByName('COMENTARIOS_ALM').AsString;
  FCOMENTARIOS_CXC := Aicu.FieldByName('COMENTARIOS_ALM').AsString;

  FCOMPLETO := Aicu.FieldByName('COMPLETO').AsSmallInt;
  FLIBERADO := Aicu.FieldByName('LIBERADO').AsSmallInt;
  FFH_LIBERADO := Aicu.FieldByName('FH_LIBERADO').AsDateTime;
  FLIBERADOPOR := Aicu.FieldByName('LIBERADOPOR').AsString;
  FCERRADO := Aicu.FieldByName('CERRADO').AsSmallInt;
  FFH_CERRADO := Aicu.FieldByName('FH_CERRADO').AsDateTime;
  FCERRADOPOR := Aicu.FieldByName('CERRADOPOR').AsString;

  FCANCELADO := Aicu.FieldByName('CANCELADO').AsSmallInt;
  FFH_CERRADO := Aicu.FieldByName('FH_CANCELADO').AsDateTime;
  FCERRADOPOR := Aicu.FieldByName('CANCELADOPOR').AsString;

  FDIRENTREGA_ID := Aicu.FieldByName('IDDIRENTREGA').AsInteger;

  FUSERINS := Aicu.FieldByName('USERINS').AsString;
  FFHINS := Aicu.FieldByName('FHINS').AsDateTime;
  FUSERACT := Aicu.FieldByName('USERACT').AsString;
  FFHACT := Aicu.FieldByName('FHACT').AsDateTime;

end;

procedure TOrdenSurtido.Insert;
begin

  FError :=0;

  isp1.Prepare;
  isp1.ParamByName('p_Docto_Id').AsInteger := FDOCTO_ID;
  isp1.ParamByName('p_DirEntrega_Id').AsInteger := FDIRENTREGA_ID;
  isp1.ParamByName('p_User').AsString := FUSERINS;
  isp1.ParamByName('p_Comentarios').AsString := FCOMENTARIOS_VEN;
  try
    isp1.ExecProc;
    FORDEN := isp1.FieldByName('Orden').AsInteger;

  except
    FError :=1
  end;

  if FLIBERACION_AUTOMATICA then begin
    FUSERACT := FUSERINS;
    FFHACT   := Date+Time;
    Update_Liberado;

  end;
end;


procedure TOrdenSurtido.Update;
begin
  FError :=0;
  isqlU00.ParamByName('DOCTO_ID').AsDouble := FDOCTO_ID;
  isqlU00.ParamByName('ORDEN').AsInteger := FORDEN;
  isqlU00.ParamByName('NUMDOCTO').AsString := FNUMDOCTO;
  isqlU00.ParamByName('FECHA').AsDateTime := FFECHA;
  isqlU00.ParamByName('NUMALMAC').AsString := FNUMALMAC;
  isqlU00.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;
  isqlU00.ParamByName('NUMAGENTE').AsString := FNUMAGENTE;
  isqlU00.ParamByName('RECIBIDO').AsSmallInt := FRECIBIDO;
  isqlU00.ParamByName('FH_RECIBIDO').AsDateTime := FFH_RECIBIDO;
  isqlU00.ParamByName('IMPRESO').AsSmallInt := FIMPRESO;
  isqlU00.ParamByName('FH_IMPRESO').AsDateTime := FFH_IMPRESO;
  isqlU00.ParamByName('ASIGNADO').AsSmallInt := FASIGNADO;
  isqlU00.ParamByName('FH_ASIGNADO').AsDateTime := FFH_ASIGNADO;
  isqlU00.ParamByName('SURTIDO').AsSmallInt := FSURTIDO;
  isqlU00.ParamByName('FH_SURTIDO').AsDateTime := FFH_SURTIDO;
  isqlU00.ParamByName('CONFIRMADO').AsSmallInt := FCONFIRMADO;
  isqlU00.ParamByName('FH_CONFIRMADO').AsDateTime := FFH_CONFIRMADO;
  isqlU00.ParamByName('ENTREGADO').AsSmallInt := FENTREGADO;
  isqlU00.ParamByName('FH_ENTREGADO').AsDateTime := FFH_ENTREGADO;
  isqlU00.ParamByName('MODIFICADO').AsSmallInt := FMODIFICADO;
  isqlU00.ParamByName('FH_MODIFICADO').AsDateTime := FFH_MODIFICADO;
  isqlU00.ParamByName('SURTIDOR').AsString := FSURTIDOR;
  isqlU00.ParamByName('RECIBIDO_POR').AsString := FRECIBIDO_POR;
  isqlU00.ParamByName('COMENTARIOS_VEN').AsString := FCOMENTARIOS_VEN;
  isqlU00.ParamByName('COMENTARIOS_ALM').AsString := FCOMENTARIOS_ALM;
  isqlU00.ParamByName('USERINS').AsString := FUSERINS;
  isqlU00.ParamByName('FHINS').AsDateTime := FFHINS;
  isqlU00.ParamByName('USERACT').AsString := FUSERACT;
  isqlU00.ParamByName('FHACT').AsDateTime := FFHACT;

  try
    isqlU00.Execute;
  except
    FError :=1
  end;

end;

procedure TOrdenSurtido.Update_Surtidor;
begin
  FError :=0;
  isqlU01.SQL.Clear;
  isqlU01.SQL.Add('UPDATE PEDIDOS SET ');
  isqlU01.SQL.Add('  ASIGNADO    = ?ASIGNADO,');
  isqlU01.SQL.Add('  FH_ASIGNADO = ?FH_ASIGNADO, ');
  isqlU01.SQL.Add('  SURTIDOR    = ?SURTIDOR,');
  isqlU01.SQL.Add('  USERACT     = ?USERACT,');
  isqlU01.SQL.Add('  FHACT       = ?FHACT ');
  isqlU01.SQL.Add('WHERE (DOCTO_ID = ?DOCTO_ID);');

  isqlU01.Prepare;

  isqlU01.ParamByName('DOCTO_ID').AsDouble := FDOCTO_ID;
  isqlU01.ParamByName('SURTIDOR').AsString := FSURTIDOR;
  isqlU01.ParamByName('ASIGNADO').AsSmallInt := 1;
  isqlU01.ParamByName('FH_ASIGNADO').AsDateTime := FFHACT;
  isqlU01.ParamByName('USERACT').AsString := FUSERACT;
  isqlU01.ParamByName('FHACT').AsDateTime := FFHACT;

  try
    isqlU01.Execute;
  except
    FError :=1
  end;

end;

procedure TOrdenSurtido.Update_Impresion;
begin
  FError :=0;
  isqlU01.SQL.Clear;
  isqlU01.SQL.Add('UPDATE PEDIDOS SET ');
  isqlU01.SQL.Add('  IMPRESO     = ?IMPRESO,');
  isqlU01.SQL.Add('  FH_IMPRESO  = ?FH_IMPRESO, ');
  isqlU01.SQL.Add('  USERACT     = ?USERACT,');
  isqlU01.SQL.Add('  FHACT       = ?FHACT ');
  isqlU01.SQL.Add('WHERE (DOCTO_ID = ?DOCTO_ID);');

  isqlU01.Prepare;

  isqlU01.ParamByName('DOCTO_ID').AsDouble := FDOCTO_ID;
  isqlU01.ParamByName('IMPRESO').AsSmallInt := 1;
  isqlU01.ParamByName('FH_IMPRESO').AsDateTime := FFHACT;
  isqlU01.ParamByName('USERACT').AsString := FUSERACT;
  isqlU01.ParamByName('FHACT').AsDateTime := FFHACT;

  try
    isqlU01.Execute;
  except
    FError :=1
  end;

end;

procedure TOrdenSurtido.Update_Surtido;
begin
  FError :=0;
  isqlU01.SQL.Clear;
  isqlU01.SQL.Add('UPDATE PEDIDOS SET ');
  isqlU01.SQL.Add('  SURTIDO    = ?SURTIDO,');
  isqlU01.SQL.Add('  FH_SURTIDO = ?FH_SURTIDO, ');
  isqlU01.SQL.Add('  USERACT     = ?USERACT,');
  isqlU01.SQL.Add('  FHACT       = ?FHACT ');
  isqlU01.SQL.Add('WHERE (DOCTO_ID = ?DOCTO_ID);');

  isqlU01.Prepare;

  isqlU01.ParamByName('DOCTO_ID').AsDouble := FDOCTO_ID;
  isqlU01.ParamByName('SURTIDO').AsSmallInt := 1;
  isqlU01.ParamByName('FH_SURTIDO').AsDateTime := FFHACT;
  isqlU01.ParamByName('USERACT').AsString := FUSERACT;
  isqlU01.ParamByName('FHACT').AsDateTime := FFHACT;

  try
    isqlU01.Execute;
  except
    FError :=1
  end;

end;

procedure TOrdenSurtido.Update_Cantidad_Surtida(AStatus:SmallInt);
begin
  FError :=0;

  isqlU02.Prepare;

  isqlU02.ParamByName('DETALLE_ID').AsDouble := FDETALLE_ID;
  isqlU02.ParamByName('ESTATUS').AsDouble := AStatus; // Ya actualicé la cantidad surtida, al menos una vez
  isqlU02.ParamByName('CANTIDAD_S').AsDouble := FCANTIDAD_S;
  isqlU02.ParamByName('USERACT').AsString := FUSERACT;
  isqlU02.ParamByName('FHACT').AsDateTime := FFHACT;

  try
    isqlU02.Execute;
  except
    FError :=1
  end;

end;

procedure TOrdenSurtido.Update_Liberado;
begin
  FError :=0;
  isqlU01.SQL.Clear;
  isqlU01.SQL.Add('UPDATE PEDIDOS SET ');
  isqlU01.SQL.Add('  ORDEN        = ?ORDEN,');
  isqlU01.SQL.Add('  RECIBIDO     = ?RECIBIDO,');
  isqlU01.SQL.Add('  FH_RECIBIDO  = ?FH_RECIBIDO, ');
  isqlU01.SQL.Add('  LIBERADO     = ?LIBERADO,');
  isqlU01.SQL.Add('  FH_LIBERADO  = ?FH_LIBERADO, ');
  isqlU01.SQL.Add('  LIBERADOPOR  = ?LIBERADOPOR, ');
  isqlU01.SQL.Add('  USERACT      = ?USERACT,');
  isqlU01.SQL.Add('  FHACT        = ?FHACT ');
  isqlU01.SQL.Add('WHERE (DOCTO_ID = ?DOCTO_ID);');

  isqlU01.Prepare;

  FORDEN := DM1.GetOrdenID;
  isqlU01.ParamByName('DOCTO_ID').AsDouble := FDOCTO_ID;
  isqlU01.ParamByName('ORDEN').AsInteger := FORDEN;
  isqlU01.ParamByName('RECIBIDO').AsSmallInt := 1;
  isqlU01.ParamByName('FH_RECIBIDO').AsDateTime := FFHACT;
  isqlU01.ParamByName('LIBERADO').AsSmallInt := 1;
  isqlU01.ParamByName('FH_LIBERADO').AsDateTime := FFHACT;
  isqlU01.ParamByName('LIBERADOPOR').AsString := FUSERACT;
  isqlU01.ParamByName('USERACT').AsString := FUSERACT;
  isqlU01.ParamByName('FHACT').AsDateTime := FFHACT;

  try
    isqlU01.Execute;
  except
    FError :=1
  end;

end;

procedure TOrdenSurtido.Update_Entregado(AStatus:SmallInt);
begin
  FError :=0;
  isqlU01.SQL.Clear;
  isqlU01.SQL.Add('UPDATE PEDIDOS SET ');
  isqlU01.SQL.Add('  ENTREGADO    = ?ENTREGADO,');
  isqlU01.SQL.Add('  FH_ENTREGADO = ?FH_ENTREGADO, ');
  isqlU01.SQL.Add('  USERACT      = ?USERACT,');
  isqlU01.SQL.Add('  FHACT        = ?FHACT ');
  isqlU01.SQL.Add('WHERE (DOCTO_ID = ?DOCTO_ID);');

  isqlU01.Prepare;

  isqlU01.ParamByName('DOCTO_ID').AsDouble := FDOCTO_ID;
  isqlU01.ParamByName('ENTREGADO').AsSmallInt := 1;
  isqlU01.ParamByName('FH_ENTREGADO').AsDateTime := FFHACT;
  isqlU01.ParamByName('USERACT').AsString := FUSERACT;
  isqlU01.ParamByName('FHACT').AsDateTime := FFHACT;

  try
    isqlU01.Execute;
  except
    FError :=1
  end;

end;

procedure TOrdenSurtido.Update_Cerrado(AStatus:SmallInt);
begin
  FError :=0;

  SelectById(FDocto_ID);

  if ((FRECIBIDO = 0) OR (FASIGNADO = 0) OR (FENTREGADO = 0)) then  begin
    if FCANCELADO = 0 then begin
      FError := 1;
      exit;
    end;
  end;


  isqlU01.SQL.Clear;
  isqlU01.SQL.Add('UPDATE PEDIDOS SET ');
  isqlU01.SQL.Add('  CERRADO    = ?CERRADO,');
  isqlU01.SQL.Add('  FH_CERRADO = ?FH_CERRADO, ');
  isqlU01.SQL.Add('  USERACT      = ?USERACT,');
  isqlU01.SQL.Add('  FHACT        = ?FHACT ');
  isqlU01.SQL.Add('WHERE (DOCTO_ID = ?DOCTO_ID);');

  isqlU01.Prepare;

  isqlU01.ParamByName('DOCTO_ID').AsDouble := FDOCTO_ID;
  isqlU01.ParamByName('CERRADO').AsSmallInt := AStatus;
  isqlU01.ParamByName('FH_CERRADO').AsDateTime := FFHACT;
  isqlU01.ParamByName('USERACT').AsString := FUSERACT;
  isqlU01.ParamByName('FHACT').AsDateTime := FFHACT;

  try
    isqlU01.Execute;
  except
    FError :=1
  end;

end;

procedure TOrdenSurtido.Update_Cancelado(AStatus:SmallInt);
begin
  FError :=0;

  isqlU01.SQL.Clear;
  isqlU01.SQL.Add('UPDATE PEDIDOS SET ');
  isqlU01.SQL.Add('  CANCELADO    = ?CANCELADO,');
  isqlU01.SQL.Add('  FH_CANCELADO = ?FH_CANCELADO, ');
  isqlU01.SQL.Add('  USERACT      = ?USERACT,');
  isqlU01.SQL.Add('  FHACT        = ?FHACT ');
  isqlU01.SQL.Add('WHERE (DOCTO_ID = ?DOCTO_ID);');

  isqlU01.Prepare;

  isqlU01.ParamByName('DOCTO_ID').AsDouble := FDOCTO_ID;
  isqlU01.ParamByName('CANCELADO').AsSmallInt := AStatus;
  isqlU01.ParamByName('FH_CANCELADO').AsDateTime := FFHACT;
  isqlU01.ParamByName('USERACT').AsString := FUSERACT;
  isqlU01.ParamByName('FHACT').AsDateTime := FFHACT;

  try
    isqlU01.Execute;
  except
    FError :=1
  end;

end;

procedure TOrdenSurtido.Update_Completo(AStatus:SmallInt);
begin
  FError :=0;
  isqlU01.SQL.Clear;
  isqlU01.SQL.Add('UPDATE PEDIDOS SET ');
  isqlU01.SQL.Add('  COMPLETO     = ?COMPLETO,');
  isqlU01.SQL.Add('  USERACT      = ?USERACT,');
  isqlU01.SQL.Add('  FHACT        = ?FHACT ');
  isqlU01.SQL.Add('WHERE (DOCTO_ID = ?DOCTO_ID);');

  isqlU01.Prepare;

  isqlU01.ParamByName('DOCTO_ID').AsDouble := FDOCTO_ID;
  isqlU01.ParamByName('COMPLETO').AsSmallInt := AStatus;
  isqlU01.ParamByName('USERACT').AsString := FUSERACT;
  isqlU01.ParamByName('FHACT').AsDateTime := FFHACT;

  try
    isqlU01.Execute;
  except
    FError :=1
  end;

end;

procedure TOrdenSurtido.Update_Comentarios_Pedido;
begin
  FError :=0;

  FError :=0;
  isqlU01.SQL.Clear;
  isqlU01.SQL.Add('UPDATE PEDIDOS SET ');
  isqlU01.SQL.Add('  COMENTARIOS_CXC     = ?COMENTARIOS_CXC,');
  isqlU01.SQL.Add('  COMENTARIOS_VEN     = ?COMENTARIOS_VEN,');
  isqlU01.SQL.Add('  COMENTARIOS_ALM     = ?COMENTARIOS_ALM,');
  isqlU01.SQL.Add('  USERACT      = ?USERACT,');
  isqlU01.SQL.Add('  FHACT        = ?FHACT ');
  isqlU01.SQL.Add('WHERE (DOCTO_ID = ?DOCTO_ID);');

  isqlU01.Prepare;

  isqlU01.ParamByName('DOCTO_ID').AsDouble := FDOCTO_ID;
  isqlU01.ParamByName('COMENTARIOS_CXC').AsString := FCOMENTARIOS_CXC;
  isqlU01.ParamByName('COMENTARIOS_VEN').AsString := FCOMENTARIOS_VEN;
  isqlU01.ParamByName('COMENTARIOS_ALM').AsString := FCOMENTARIOS_ALM;
  isqlU01.ParamByName('USERACT').AsString := FUSERACT;
  isqlU01.ParamByName('FHACT').AsDateTime := FFHACT;

  try
    isqlU01.Execute;
  except
    FError :=1
  end;
end;

procedure TOrdenSurtido.Update_Comentarios_Partida;
begin

  FError :=0;
  isqlU03.ParamByName('DETALLE_ID').AsDouble := FDETALLE_ID;
  isqlU03.ParamByName('COMENTARIOS_VEN').AsString := COMENTARIOS_VEN_PAR;
  isqlU03.ParamByName('COMENTARIOS_ALM').AsString := COMENTARIOS_ALM_PAR;
  isqlU03.ParamByName('ACCION_VEN').AsSmallInt := ACCION_VEN;
  isqlU03.ParamByName('ACCION_ALM').AsSmallInt := ACCION_ALM;
  isqlU03.ParamByName('USERACT').AsString := FUSERACT;
  isqlU03.ParamByName('FHACT').AsDateTime := FFHACT;

  try
    isqlU03.Execute;
  except
    FError :=1
  end;

end;

procedure TOrdenSurtido.Delete;
begin
  FError :=0;
  isqlD00.ParamByName('DOCTO_ID').AsInteger := FDOCTO_ID;

  try
    isqlD00.Execute;
  except
    FError :=1
  end;

end;


procedure TOrdenSurtido.ValidarDatos;
begin
  FError :=0;
end;
procedure TOrdenSurtido.Clear;
begin
  FError :=0;
  FErrorMsg.Clear;
  FDOCTO_ID := 0;
  FORDEN := 0;
  FNUMDOCTO := '';
  FFECHA := 0;
  FNUMALMAC := '';
  FCODCTEPROV := '';
  FNUMAGENTE := '';
  FRECIBIDO := 0;
  FFH_RECIBIDO := 0;
  FIMPRESO := 0;
  FFH_IMPRESO := 0;
  FASIGNADO := 0;
  FFH_ASIGNADO := 0;
  FSURTIDO := 0;
  FFH_SURTIDO := 0;
  FCONFIRMADO := 0;
  FFH_CONFIRMADO := 0;
  FENTREGADO := 0;
  FFH_ENTREGADO := 0;
  FMODIFICADO := 0;
  FFH_MODIFICADO := 0;
  FSURTIDOR := '';
  FRECIBIDO_POR := '';
  FCOMENTARIOS_VEN := '';
  FCOMENTARIOS_ALM := '';
  FUSERINS := '';
  FFHINS := 0;
  FUSERACT := '';
  FFHACT := 0;

end;

procedure TOrdenSurtido.isqlError(Sender: TObject; const ERRCODE: Integer;
  ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
  SQLMessage, SQL: TStringList; var RaiseException: Boolean);
var tMsg:String;
begin
  FError := 1;
  RaiseException:= False;
  if SQLCODE = -803  then begin
    tMsg := 'Error: La CLAVE o NOMBRE NO pueden estar repetidos!!!!';
    FErrorMsg.Add(tMsg);
  end;
end;


end.
