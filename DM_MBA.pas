unit DM_MBA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, IB_Components, IB_StoredProc,RXCtrls, VCIF1Lib_TLB,StrMan, ESBDates,
  clsUser,Main, IB_Import, IB_Process, IB_DataScan, IB_Export;

type
  TDM1 = class(TDataModule)
    cnMBA: TIB_Connection;
    trMBA: TIB_Transaction;
    ispCon: TIB_StoredProc;
    ispEmp: TIB_StoredProc;
    ispGetFolio: TIB_StoredProc;
    ispSetFolio: TIB_StoredProc;
    ispSaveReporte: TIB_StoredProc;
    ispTablas: TIB_StoredProc;
    ispConfig: TIB_StoredProc;
    ispDoc_U: TIB_StoredProc;
    ispDoc_S: TIB_StoredProc;
    ispDoc_U1: TIB_StoredProc;
    ispCambios: TIB_StoredProc;
    isqlDet: TIB_DSQL;
    iqrDet: TIB_Query;
    ispProd_S: TIB_StoredProc;
    ispProd_U: TIB_StoredProc;
    iqrArt: TIB_Query;
    ispArt_U_01: TIB_StoredProc;
    ispArt_D_00: TIB_StoredProc;
    ispCte_S00: TIB_StoredProc;
    ispCte_U00: TIB_StoredProc;
    ispTipoDocS00: TIB_StoredProc;
    ispTipoDocU00: TIB_StoredProc;
    ispDetU02: TIB_StoredProc;
    iqrTemp: TIB_Query;
    icuPedimento: TIB_Cursor;
    icuRep: TIB_Cursor;
    ispProv_S00: TIB_StoredProc;
    ispProv_U00: TIB_StoredProc;
    icuSQL: TIB_Cursor;
    ispDet_U04: TIB_StoredProc;
    ispDoc_U04: TIB_StoredProc;
    iqrDetOC: TIB_Query;
    ispPro: TIB_StoredProc;
    icuCotiza: TIB_Cursor;
    ispMBA10010: TIB_StoredProc;
    ispMBA10016: TIB_StoredProc;
    icuTemp: TIB_Cursor;
    trMBA2: TIB_Transaction;
    ispDet: TIB_StoredProc;
    isqlTemp: TIB_DSQL;
    ispTemp: TIB_StoredProc;
    ispArt_U03: TIB_StoredProc;
    ispDetU12: TIB_StoredProc;
    ispGenId: TIB_StoredProc;
    IB_Import1: TIB_Import;
    IB_Export1: TIB_Export;
    ispCte_U01: TIB_StoredProc;
    icuListaArt2: TIB_Cursor;
    icuDesctos_Cte: TIB_Cursor;
    ispGen_CostosId: TIB_StoredProc;
    ispCatalogoId: TIB_StoredProc;
    ispGen_Orden: TIB_StoredProc;
    procedure cnMBAError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure FillAlmacen(cbo:TComboBox);
    procedure FillAlmacen2(cbo:TStrings);
    procedure FillConceptosInv(cbo:TStrings;piTipo:Integer);
    procedure FillACL(ptACL:TStringList);
    procedure cnMBAAfterConnect(Sender: TIB_Connection);
    function GetTipoCambio2:Double;
    procedure Start;
    procedure Commit;
    procedure RollBack;
  private
    { Private declarations }
  public
    { Public declarations }
    function GetSQL(pCodigo:String):String;
    procedure CierreMes;
    procedure GetFacVencidas(ACte:String;
                              AFechaCorte:TDateTime;
                          var ACantidad:Double;
                          var AMontoTotal:Double;
                          var AFecha:TDateTime);
  procedure GetEstadisticaCte(ACte:String;
                                 AFechaCorte:TDateTime;
                             var ABloqueoManual:Boolean;
                             var ALimiteCredito:Boolean;
                             var ASaldoVencido:Boolean;
                             var AHistorialPagos:Boolean;
                             var AVentaUnica:Boolean;
                             var AMonto:Double);
    function GetDocID:Integer;
    function GetCostosID:Integer;
    function GetCatalogoID:Integer;
    function GetOrdenID:Integer;
  end;
{==================================================
Nombre:
Objetivo:
Fecha:
Autor:
==================================================}

var
  DM1: TDM1;
implementation

{$R *.DFM}

procedure TDM1.Start;
begin
 if trMBA.InTransaction then  trMBA.Commit;

 trMBA.StartTransaction;
end;

procedure TDM1.Commit;
begin
 if trMBA.InTransaction then  trMBA.Commit;

end;

procedure TDM1.RollBack;
begin
 if trMBA.InTransaction then  trMBA.RollBack;

end;

procedure TDM1.cnMBAError(Sender: TObject; const ERRCODE: Integer;
  ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
  SQLMessage, SQL: TStringList; var RaiseException: Boolean);
var tMsg:String;
begin
    tMsg := tMsg + ErrorMessage.Text;
    ShowMessage(tMsg);

end;

function TDM1.GetTipoCambio2:Double;
var dTC:Double;
begin

    dTC := 0;
    icuTemp.Close;
    icuTemp.SQL.Clear;
    icuTemp.SQL.Add ('select Fecha,Importe2 from mba10029 where (Importe2 > 0) order by fecha Desc;');
    icuTemp.Open;

    if icuTemp.RecordCount > 0 then begin
      icuTemp.First;
      dTC := icuTemp.FieldByName('Importe2').AsDouble;
    end;

    icuTemp.Close;

    Result := dTC;

end;

function TDM1.GetSQL(pCodigo:String):String;
var tDescri,tFN,tCN:String;
begin
    icuSQL.Close;
    icuSQL.ParamByName('Codigo').AsString := pCodigo;
    icuSQL.Open;
    if not icuSQL.Eof then
        Result := Trim(icuSQL.FieldByName('SqlTxt').AsString)
    else
        Result := '';

    icuSQL.Close;
end;

procedure TDM1.FillACL(ptACL:TStringList);
var tCod,tDescri,tFN,tCN:String;
    iCod:integer;
begin

    icuTemp.Close;
    icuTemp.SQL.Clear;
    icuTemp.SQL.Add ('Select Descri,FormName,ControlName from mba10102 order by Id;');
    icuTemp.Open;
    ptACL.Clear;
    while not icuTemp.Eof do begin
        tDescri := Trim(icuTemp.FieldByName('Descri').AsString);
        tFN := Trim(icuTemp.FieldByName('FormName').AsString);
        tCN := Trim(icuTemp.FieldByName('ControlName').AsString);
        ptACL.Add (tDescri + ';' + tFN + ';' + tCN);
        icuTemp.Next;
    end;

    icuTemp.Close;


end;
procedure TDM1.FillAlmacen(cbo:TComboBox);
var tCod,tDescri:String;
    iCod:integer;
begin

    icuTemp.Close;
    icuTemp.SQL.Clear;
    icuTemp.SQL.Add ('Select NumAlmac,NombreAlm from mba10003 order by NumAlmac;');
    icuTemp.Open;

    cbo.Items.Clear;
    while not icuTemp.Eof do begin
        tCod := icuTemp.FieldByName('NumAlmac').AsString;
        tDescri := icuTemp.FieldByName('NombreAlm').AsString;
        tCod := sm.Pad (tCod,3);
        cbo.Items.Add (tCod + '|' + tDescri);
        icuTemp.Next;
    end;

    icuTemp.Close;


end;

procedure TDM1.FillAlmacen2(cbo:TStrings);
var tCod,tDescri:String;
    iCod:integer;
begin

    icuTemp.Close;
    icuTemp.SQL.Clear;
    icuTemp.SQL.Add ('Select NumAlmac,NombreAlm from mba10003 order by NumAlmac;');
    icuTemp.Open;

    cbo.Clear;
    while not icuTemp.Eof do begin
        tCod := icuTemp.FieldByName('NumAlmac').AsString;
        tDescri := icuTemp.FieldByName('NombreAlm').AsString;
        tCod := sm.Pad (tCod,3);
        cbo.Add (tCod + '|' + tDescri);
        icuTemp.Next;
    end;

    icuTemp.Close;


end;

procedure TDM1.FillConceptosInv(cbo:TStrings;piTipo:Integer);
var tCod,tDescri:String;
    iCod:integer;
    iNumConc:Integer;
begin

    icuTemp.Close;
    icuTemp.SQL.Clear;
    icuTemp.SQL.Add ('Select NumConc,DescripCon,TipoConc from mba10012 order by NumConc;');
    icuTemp.Open;
    cbo.Clear;
    while not icuTemp.Eof do begin
        iNumConc := icuTemp.FieldByName('TipoConc').AsInteger;
        if (inumConc = piTipo) or (piTipo = 0) then begin
            tCod := icuTemp.FieldByName('NumConc').AsString;
            tDescri := icuTemp.FieldByName('DescripCon').AsString;
            tCod := sm.Pad (tCod,3);
            cbo.Add (tCod + '|' + tDescri);
        end;
        icuTemp.Next;
    end;

    icuTemp.Close;


end;

procedure TDM1.CierreMes;
begin

    ispPro.Unprepare;
    ispPro.AutoDefineParams := True;
    ispPro.StoredProcName := 'PRO_CIERREMES';
    ispPro.Prepare;
    ispPro.ParamByName('p_Anio').AsSmallInt := ESBDates.Date2Year(Date);
    ispPro.ParamByName('p_Periodo').AsSmallInt := ESBDates.Date2Month(Date);

    ispPro.ExecProc;

    trMBA.Commit;


end;


{==================================================================
Unit Main Body
==================================================================}
procedure TDM1.cnMBAAfterConnect(Sender: TIB_Connection);
begin
    FillACL (Main.slACL);
end;

procedure TDM1.GetFacVencidas(ACte:String;
                              AFechaCorte:TDateTime;
                          var ACantidad:Double;
                          var AMontoTotal:Double;
                          var AFecha:TDateTime);
begin

    ACantidad   := 0;
    AMontoTotal := 0;
    icuTemp.Close;
    icuTemp.SQL.Clear;
    icuTemp.SQL.Add ('select Cantidad,ImporteTotal,Fecha from fac_vencidas (?p_CodCteProv,?p_Fecha_Corte);');
    icuTemp.Prepare;
    icuTemp.ParamByName('p_CodCteProv').AsString := ACte;
    icuTemp.ParamByName('p_Fecha_Corte').AsDateTime := AFechaCorte;
    icuTemp.Open;

    if icuTemp.RecordCount > 0 then begin
      icuTemp.First;
      ACantidad   := icuTemp.FieldByName('Cantidad').AsDouble;
      AMontoTotal := icuTemp.FieldByName('ImporteTotal').AsDouble;
      AFecha      := icuTemp.FieldByName('Fecha').AsDateTime;
    end;

    icuTemp.Close;

end;

procedure TDM1.GetEstadisticaCte(ACte:String;
                                 AFechaCorte:TDateTime;
                             var ABloqueoManual:Boolean;
                             var ALimiteCredito:Boolean;
                             var ASaldoVencido:Boolean;
                             var AHistorialPagos:Boolean;
                             var AVentaUnica:Boolean;
                             var AMonto:Double);
begin
    ABloqueoManual  := False;
    ALimiteCredito  := False;
    ASaldoVencido   := False;
    AHistorialPAgos := False;
    AVentaUnica     := False;
    AMonto          := 0;

    icuTemp.Close;
    icuTemp.SQL.Clear;
    icuTemp.SQL.Add ('select * from EstadisticaCte (?P_TIPOREP,?P_CODCTEPROV,?P_FECHACORTE);');
    icuTemp.Prepare;
    icuTemp.ParamByName('P_TIPOREP').AsSmallInt := 2;
    icuTemp.ParamByName('P_CODCTEPROV').AsString := ACte;
    icuTemp.ParamByName('P_FECHACORTE').AsDateTime := AFechaCorte;
    icuTemp.Open;

    if icuTemp.RecordCount > 0 then begin
      icuTemp.First;
      ABloqueoManual   := (icuTemp.FieldByName('BLOQUEO_MANUAL').AsSmallInt = 1);
      if (icuTemp.FieldByName('BA_LIMITE').AsSmallInt = 1) then
        if icuTemp.FieldByName('SALDOTOTAL').AsDouble > icuTemp.FieldByName('LIMITECREDITO').AsDouble then
          ALimiteCredito := True;
      if (icuTemp.FieldByName('BA_SALDOS').AsSmallInt = 1) then
        if icuTemp.FieldByName('SALDOVENCIDO').AsDouble > 0 then
          ASaldoVencido := True;
      if (icuTemp.FieldByName('BA_PAGOS').AsSmallInt = 1) then
        if icuTemp.FieldByName('DIASPAGO').AsDouble > 0 then
          AHistorialPagos := True;

      AVentaUnica := (icuTemp.FieldByName('BA_VENTA_UNICA').AsSmallInt = 1);
      AMonto      := icuTemp.FieldByName('LIMITE_VENTA').AsDouble;

    end;

    icuTemp.Close;

end;

function TDM1.GetDocID:Integer;
begin
  ispGenId.Execute;
  Result := ispGenId.ParamByName('IDDOC').AsInteger;
end;

function TDM1.GetCostosID:Integer;
begin
  ispGen_CostosId.Execute;
  Result := ispGen_CostosId.ParamByName('IDCOSTOS').AsInteger;
end;

function TDM1.GetCatalogoID:Integer;
begin
  ispCatalogoId.Execute;
  Result := ispCatalogoId.ParamByName('CATALOGOID').AsInteger;
end;
function TDM1.GetOrdenID:Integer;
begin
  ispGen_Orden.Execute;
  Result := ispGen_Orden.ParamByName('ORDENID').AsInteger;
end;
end.
