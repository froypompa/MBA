unit ClsOrdenesSurtido;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls,VCIF1Lib_TLB, StdCtrls,
     IB_Components, IB_StoredProc, StrMan, ESBDates, IniFiles;
type
  TOrdenSurtido = class(TObject)
    constructor Create;
    destructor Destroy; override;
   private
    FNUMCONC: String;
    FDESCRIPCON: String;
    FAGRUPACONC: SmallInt;
    FAFECTUNID: SmallInt;
    FAFECTCOSTO: SmallInt;
    FCUENTACONC: String;
    FNEGATIVOS: SmallInt;
    FCAPTIPCOST: SmallInt;
    FTIPOCONC: SmallInt;
    FAFECULTCOS: SmallInt;
    FORDENCONC: SmallInt;
    FError:Integer;
    FErrorMSg:TStringList;
    icuS00:TIB_Cursor;
    icuS01:TIB_Cursor;
    icuS02:TIB_Cursor;
    icuS03:TIB_Cursor;
    isqlI00:TIB_DSQL;
    isqlU00:TIB_DSQL;
    isqlD00:TIB_DSQL;
    tS00,tsql1,tS02:String;
    procedure isqlError(Sender: TObject; const ERRCODE: Integer;
  ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
  SQLMessage, SQL: TStringList; var RaiseException: Boolean);
   public
    property NUMCONC: String read FNUMCONC  write FNUMCONC;
    property DESCRIPCON: String read FDESCRIPCON  write FDESCRIPCON;
    property AGRUPACONC: SmallInt read FAGRUPACONC  write FAGRUPACONC;
    property AFECTUNID: SmallInt read FAFECTUNID  write FAFECTUNID;
    property AFECTCOSTO: SmallInt read FAFECTCOSTO  write FAFECTCOSTO;
    property CUENTACONC: String read FCUENTACONC  write FCUENTACONC;
    property NEGATIVOS: SmallInt read FNEGATIVOS  write FNEGATIVOS;
    property CAPTIPCOST: SmallInt read FCAPTIPCOST  write FCAPTIPCOST;
    property TIPOCONC: SmallInt read FTIPOCONC  write FTIPOCONC;
    property AFECULTCOS: SmallInt read FAFECULTCOS  write FAFECULTCOS;
    property ORDENCONC: SmallInt read FORDENCONC  write FORDENCONC;
    property Error:Integer read FError  write FError;
    property ErrorMsg:TStringList read FErrorMsg  write FErrorMsg;
    procedure Clear;
    procedure Prepare;
    procedure Insert;
    procedure Update;
    procedure Delete;
    procedure SelectById(ANUMCONC:String = '');
    procedure SelectByClave(ATIPOCONC:SmallInt = 0);
    procedure SelectByNombre(ADESCRIPCON:String = '');
    procedure AsignarPropiedades(Aicu:TIB_Cursor);
    function FillCombo1(ACbo:TStrings;ATipo:SmallInt):integer;
    function FillCombo2(ACbo:TStrings;ATipo:SmallInt):integer;
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
  icuS00.SQL.Add('  NUMCONC,');
  icuS00.SQL.Add('  DESCRIPCON,');
  icuS00.SQL.Add('  AGRUPACONC,');
  icuS00.SQL.Add('  AFECTUNID,');
  icuS00.SQL.Add('  AFECTCOSTO,');
  icuS00.SQL.Add('  CUENTACONC,');
  icuS00.SQL.Add('  NEGATIVOS,');
  icuS00.SQL.Add('  CAPTIPCOST,');
  icuS00.SQL.Add('  TIPOCONC,');
  icuS00.SQL.Add('  AFECULTCOS,');
  icuS00.SQL.Add('  ORDENCONC  ');
  icuS00.SQL.Add('FROM MBA10012 ');
  icuS00.SQL.Add('WHERE (NUMCONC = ?NUMCONC);');

  {Preparar: icuS01}
  icuS01 := TIB_Cursor.Create(nil);
  icuS01.IB_Connection := DM1.cnMBA;
  icuS01.IB_Transaction := DM1.trMBA;
  icuS01.SQL.Clear;
  icuS01.SQL.Add('SELECT ');
  icuS01.SQL.Add('  NUMCONC,');
  icuS01.SQL.Add('  DESCRIPCON,');
  icuS01.SQL.Add('  AGRUPACONC,');
  icuS01.SQL.Add('  AFECTUNID,');
  icuS01.SQL.Add('  AFECTCOSTO,');
  icuS01.SQL.Add('  CUENTACONC,');
  icuS01.SQL.Add('  NEGATIVOS,');
  icuS01.SQL.Add('  CAPTIPCOST,');
  icuS01.SQL.Add('  TIPOCONC,');
  icuS01.SQL.Add('  AFECULTCOS,');
  icuS01.SQL.Add('  ORDENCONC  ');
  icuS01.SQL.Add('FROM MBA10012 ');
  icuS01.SQL.Add('ORDER BY NUMCONC;');

  {Preparar: icuS02}
  icuS02 := TIB_Cursor.Create(nil);
  icuS02.IB_Connection := DM1.cnMBA;
  icuS02.IB_Transaction := DM1.trMBA;
  icuS02.SQL.Clear;
  icuS02.SQL.Add('SELECT ');
  icuS02.SQL.Add('  NUMCONC,');
  icuS02.SQL.Add('  DESCRIPCON,');
  icuS02.SQL.Add('  AGRUPACONC,');
  icuS02.SQL.Add('  AFECTUNID,');
  icuS02.SQL.Add('  AFECTCOSTO,');
  icuS02.SQL.Add('  CUENTACONC,');
  icuS02.SQL.Add('  NEGATIVOS,');
  icuS02.SQL.Add('  CAPTIPCOST,');
  icuS02.SQL.Add('  TIPOCONC,');
  icuS02.SQL.Add('  AFECULTCOS,');
  icuS02.SQL.Add('  ORDENCONC  ');
  icuS02.SQL.Add('FROM MBA10012 ');
  icuS02.SQL.Add('WHERE (TIPOCONC = ?TIPOCONC);');

  {Preparar: icuS03}
  icuS03 := TIB_Cursor.Create(nil);
  icuS03.IB_Connection := DM1.cnMBA;
  icuS03.IB_Transaction := DM1.trMBA;
  icuS03.SQL.Clear;
  icuS03.SQL.Add('SELECT FIRST 1 ');
  icuS03.SQL.Add('  NUMCONC,');
  icuS03.SQL.Add('  DESCRIPCON,');
  icuS03.SQL.Add('  AGRUPACONC,');
  icuS03.SQL.Add('  AFECTUNID,');
  icuS03.SQL.Add('  AFECTCOSTO,');
  icuS03.SQL.Add('  CUENTACONC,');
  icuS03.SQL.Add('  NEGATIVOS,');
  icuS03.SQL.Add('  CAPTIPCOST,');
  icuS03.SQL.Add('  TIPOCONC,');
  icuS03.SQL.Add('  AFECULTCOS,');
  icuS03.SQL.Add('  ORDENCONC  ');
  icuS03.SQL.Add('FROM MBA10012 ');
  icuS03.SQL.Add('WHERE (DESCRIPCON CONTAINING ?DESCRIPCON);');

  {Preparar: isqlI00}
  isqlI00 := TIB_DSQL.Create(nil);
  isqlI00.IB_Connection := DM1.cnMBA;
  isqlI00.IB_Transaction := DM1.trMBA;
  isqlI00.SQL.Clear;
  isqlI00.SQL.Add('INSERT INTO MBA10012( ');
  isqlI00.SQL.Add('  NUMCONC,');
  isqlI00.SQL.Add('  DESCRIPCON,');
  isqlI00.SQL.Add('  AGRUPACONC,');
  isqlI00.SQL.Add('  AFECTUNID,');
  isqlI00.SQL.Add('  AFECTCOSTO,');
  isqlI00.SQL.Add('  CUENTACONC,');
  isqlI00.SQL.Add('  NEGATIVOS,');
  isqlI00.SQL.Add('  CAPTIPCOST,');
  isqlI00.SQL.Add('  TIPOCONC,');
  isqlI00.SQL.Add('  AFECULTCOS,');
  isqlI00.SQL.Add('  ORDENCONC)  ');
  isqlI00.SQL.Add('VALUES ( ');
  isqlI00.SQL.Add('  ?NUMCONC,');
  isqlI00.SQL.Add('  ?DESCRIPCON,');
  isqlI00.SQL.Add('  ?AGRUPACONC,');
  isqlI00.SQL.Add('  ?AFECTUNID,');
  isqlI00.SQL.Add('  ?AFECTCOSTO,');
  isqlI00.SQL.Add('  ?CUENTACONC,');
  isqlI00.SQL.Add('  ?NEGATIVOS,');
  isqlI00.SQL.Add('  ?CAPTIPCOST,');
  isqlI00.SQL.Add('  ?TIPOCONC,');
  isqlI00.SQL.Add('  ?AFECULTCOS,');
  isqlI00.SQL.Add('  ?ORDENCONC);');

  {Preparar: isqlU00}
  isqlU00 := TIB_DSQL.Create(nil);
  isqlU00.IB_Connection := DM1.cnMBA;
  isqlU00.IB_Transaction := DM1.trMBA;
  isqlU00.SQL.Clear;
  isqlU00.SQL.Add('UPDATE MBA10012 SET ');
  isqlU00.SQL.Add('  NUMCONC = ?NUMCONC,');
  isqlU00.SQL.Add('  DESCRIPCON = ?DESCRIPCON,');
  isqlU00.SQL.Add('  AGRUPACONC = ?AGRUPACONC,');
  isqlU00.SQL.Add('  AFECTUNID = ?AFECTUNID,');
  isqlU00.SQL.Add('  AFECTCOSTO = ?AFECTCOSTO,');
  isqlU00.SQL.Add('  CUENTACONC = ?CUENTACONC,');
  isqlU00.SQL.Add('  NEGATIVOS = ?NEGATIVOS,');
  isqlU00.SQL.Add('  CAPTIPCOST = ?CAPTIPCOST,');
  isqlU00.SQL.Add('  TIPOCONC = ?TIPOCONC,');
  isqlU00.SQL.Add('  AFECULTCOS = ?AFECULTCOS,');
  isqlU00.SQL.Add('  ORDENCONC = ?ORDENCONC ');
  isqlU00.SQL.Add('WHERE (NUMCONC = ?NUMCONC);');

  {Preparar: isqlD00}
  isqlD00 := TIB_DSQL.Create(nil);
  isqlD00.IB_Connection := DM1.cnMBA;
  isqlD00.IB_Transaction := DM1.trMBA;
  isqlD00.SQL.Clear;
  isqlD00.SQL.Add('DELETE FROM MBA10012 ');
  isqlD00.SQL.Add('WHERE (NUMCONC = ?NUMCONC);');

end;

procedure TOrdenSurtido.SelectById(ANUMCONC:String = '');
begin
  Error := 0;
  if ANUMCONC <='' then ANUMCONC := FNUMCONC;

  icuS00.Close;
  icuS00.Prepare;
  icuS00.ParamByName('NUMCONC').AsString := ANUMCONC;
  icuS00.Open;
  if (icuS00.Eof) then begin
      Error := 1;
      icuS00.Close;
      FErrorMsg.Add (' El Concepto <' + ANUMCONC + '> NO se encontró!');
      exit;
  end;
  AsignarPropiedades(icuS00);
  icuS00.Close;
end;

procedure TOrdenSurtido.SelectByClave(ATIPOCONC:SmallInt = 0);
begin
  Error := 0;
  if ATIPOCONC=0 then ATIPOCONC := FTIPOCONC;

  icuS01.Close;
  icuS01.Prepare;
  icuS01.ParamByName('TIPOCONC').AsSmallInt := ATIPOCONC;
  icuS01.Open;
  if (icuS01.Eof) then begin
      Error := 1;
      icuS01.Close;
      FErrorMsg.Add (' ' + sm.StrFloat(ATIPOCONC,'#') + ' NO se encontró!');
      exit;
  end;
  AsignarPropiedades(icuS01);
  icuS01.Close;
end;

procedure TOrdenSurtido.SelectByNombre(ADESCRIPCON:String = '');
begin
  Error := 0;
  if length(ADESCRIPCON) <=0 then ADESCRIPCON := FDESCRIPCON;

  icuS02.Close;
  icuS02.Prepare;
  icuS02.ParamByName('DESCRIPCON').AsString := ADESCRIPCON;
  icuS02.Open;
  if (icuS02.Eof) then begin
      Error := 1;
      icuS02.Close;
      FErrorMsg.Add (' ' + ADESCRIPCON + ' NO se encontró!');
      exit;
  end;
  AsignarPropiedades(icuS02);
  icuS02.Close;
end;

procedure TOrdenSurtido.AsignarPropiedades(Aicu:TIB_Cursor);
begin
  FNUMCONC := Aicu.FieldByName('NUMCONC').AsString;
  FDESCRIPCON := Aicu.FieldByName('DESCRIPCON').AsString;
  FAGRUPACONC := Aicu.FieldByName('AGRUPACONC').AsSmallInt;
  FAFECTUNID := Aicu.FieldByName('AFECTUNID').AsSmallInt;
  FAFECTCOSTO := Aicu.FieldByName('AFECTCOSTO').AsSmallInt;
  FCUENTACONC := Aicu.FieldByName('CUENTACONC').AsString;
  FNEGATIVOS := Aicu.FieldByName('NEGATIVOS').AsSmallInt;
  FCAPTIPCOST := Aicu.FieldByName('CAPTIPCOST').AsSmallInt;
  FTIPOCONC := Aicu.FieldByName('TIPOCONC').AsSmallInt;
  FAFECULTCOS := Aicu.FieldByName('AFECULTCOS').AsSmallInt;
  FORDENCONC := Aicu.FieldByName('ORDENCONC').AsSmallInt;

end;

procedure TOrdenSurtido.Insert;
begin
  FError :=0;
  isqlI00.ParamByName('NUMCONC').AsString := FNUMCONC;
  isqlI00.ParamByName('DESCRIPCON').AsString := FDESCRIPCON;
  isqlI00.ParamByName('AGRUPACONC').AsSmallInt := FAGRUPACONC;
  isqlI00.ParamByName('AFECTUNID').AsSmallInt := FAFECTUNID;
  isqlI00.ParamByName('AFECTCOSTO').AsSmallInt := FAFECTCOSTO;
  isqlI00.ParamByName('CUENTACONC').AsString := FCUENTACONC;
  isqlI00.ParamByName('NEGATIVOS').AsSmallInt := FNEGATIVOS;
  isqlI00.ParamByName('CAPTIPCOST').AsSmallInt := FCAPTIPCOST;
  isqlI00.ParamByName('TIPOCONC').AsSmallInt := FTIPOCONC;
  isqlI00.ParamByName('AFECULTCOS').AsSmallInt := FAFECULTCOS;
  isqlI00.ParamByName('ORDENCONC').AsSmallInt := FORDENCONC;

  try
    isqlI00.Execute;
  except
    FError :=1
  end;

end;


procedure TOrdenSurtido.Update;
begin
  FError :=0;
  isqlU00.ParamByName('NUMCONC').AsString := FNUMCONC;
  isqlU00.ParamByName('DESCRIPCON').AsString := FDESCRIPCON;
  isqlU00.ParamByName('AGRUPACONC').AsSmallInt := FAGRUPACONC;
  isqlU00.ParamByName('AFECTUNID').AsSmallInt := FAFECTUNID;
  isqlU00.ParamByName('AFECTCOSTO').AsSmallInt := FAFECTCOSTO;
  isqlU00.ParamByName('CUENTACONC').AsString := FCUENTACONC;
  isqlU00.ParamByName('NEGATIVOS').AsSmallInt := FNEGATIVOS;
  isqlU00.ParamByName('CAPTIPCOST').AsSmallInt := FCAPTIPCOST;
  isqlU00.ParamByName('TIPOCONC').AsSmallInt := FTIPOCONC;
  isqlU00.ParamByName('AFECULTCOS').AsSmallInt := FAFECULTCOS;
  isqlU00.ParamByName('ORDENCONC').AsSmallInt := FORDENCONC;

  try
    isqlU00.Execute;
  except
    FError :=1
  end;

end;


procedure TOrdenSurtido.Delete;
begin
  FError :=0;
  isqlD00.ParamByName('NUMCONC').AsString := FNUMCONC;

  try
    isqlD00.Execute;
  except
    FError :=1
  end;

end;

function TOrdenSurtido.FillCombo1(ACbo:TStrings;ATipo:SmallInt):integer;
var tNum,tNombre:String;
    iAgrupa,iTipo:integer;
begin

    icuS01.Open;
    ACbo.Clear;
    while not icuS01.Eof do begin
        iTipo   := icuS01.FieldByName('TIPOCONC').AsSmallInt;
        tNum    := Trim(icuS01.FieldByName('NUMCONC').AsString);
        tNum    := Sm.Pad(tNum,2,' ');
        tNombre := Trim(icuS01.FieldByName('DESCRIPCON').AsString);
        iAgrupa := icuS01.FieldByName('AGRUPACONC').AsSmallInt;
        if (ATipo = iTipo) or (ATipo = 0) then begin
          if (iAgrupa = 1) then //Conceptos de Inventario Normal de Producto de Venta
            ACbo.Add(tNum +' | ' + tNombre);
        end;
        icuS01.Next;
    end;
    icuS01.Close;
end;

function TOrdenSurtido.FillCombo2(ACbo:TStrings;ATipo:SmallInt):integer;
var tNum,tNombre:String;
    iTipo,iAgrupa:integer;
begin

    icuS01.Open;
    ACbo.Clear;
    while not icuS01.Eof do begin
        iTipo   := icuS01.FieldByName('TIPOCONC').AsSmallInt;
        tNum    := Trim(icuS01.FieldByName('NUMCONC').AsString);
        tNum    := Sm.Pad(tNum,2,' ');
        tNombre := Trim(icuS01.FieldByName('DESCRIPCON').AsString);
        iAgrupa := icuS01.FieldByName('AGRUPACONC').AsSmallInt;
        if (ATipo = iTipo) or (ATipo = 0) then begin
          if iAgrupa = 2 then  //Conceptos de Inventario RIH
            ACbo.Add(tNum + ' | ' + tNombre);
        end;
        icuS01.Next;
    end;
    icuS01.Close;
end;

procedure TOrdenSurtido.ValidarDatos;
begin
  FError :=0;
end;
procedure TOrdenSurtido.Clear;
begin
  FError :=0;
  FErrorMsg.Clear;
  FNUMCONC := '';
  FDESCRIPCON := '';
  FAGRUPACONC := 0;
  FAFECTUNID := 0;
  FAFECTCOSTO := 0;
  FCUENTACONC := '';
  FNEGATIVOS := 0;
  FCAPTIPCOST := 0;
  FTIPOCONC := 0;
  FAFECULTCOS := 0;
  FORDENCONC := 0;

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
