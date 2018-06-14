unit ClsUbicaciones;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls,VCIF1Lib_TLB,  StdCtrls,
     IB_Components, IB_StoredProc, StrMan, ESBDates,IniFiles;

type
  TUbicacion = class(TObject) {Business Services}
    constructor Create;
    destructor Destroy;
   private
// Tabla: Ubicaciones
    FUBICACION_ID: Integer;
    FRACK: String;
    FSECCION: String;
    FNIVEL: String;
    FTIEMPO_MIN: Integer;
    FDIFICULTAD: SmallInt;
    FUSERINS: String;
    FFHINS: TDateTime;
// Tabla: Ubicacion_Prod
    FUBIPROD_ID: Integer;
    FNUMALMACEN: String;
    FUBICACION: String;
    FCODPRODSER: String;
    FDESCRIPPRO: String;
    FCODFAMILIA: String;
    FCANTIDAD: Double;
    FTIPO_ALMACENAJE: SmallInt;
    FNUMERO_TARIMA: Integer;
    FCOMENTARIOS: String;
    FACTIVO:SmallInt;
    FUSERACT: String;
    FFHACT: TDateTime;


    FError:Integer;
    FErrorMSg:TStringList;
    icuS00,icu,icu1:TIB_Cursor;
    icuS01:TIB_Cursor;
    icuS02:TIB_Cursor;
    icuS03:TIB_Cursor;
    icuS10:TIB_Cursor;
    isqlI00:TIB_DSQL;
    isqlU00,isqlU01,isqlU02:TIB_DSQL;
    isqlD00:TIB_DSQL;
    tS00,tsql1,tS02:String;
   public
// Tabla: Ubicaciones
    property UBICACION_ID: Integer read FUBICACION_ID  write FUBICACION_ID;
    property NUMALMACEN: String read FNUMALMACEN  write FNUMALMACEN;
    property UBICACION: String read FUBICACION  write FUBICACION;
    property RACK: String read FRACK  write FRACK;
    property SECCION: String read FSECCION  write FSECCION;
    property NIVEL: String read FNIVEL  write FNIVEL;
    property TIEMPO_MIN: Integer read FTIEMPO_MIN  write FTIEMPO_MIN;
    property DIFICULTAD: SmallInt read FDIFICULTAD  write FDIFICULTAD;
    property USERINS: String read FUSERINS  write FUSERINS;
    property FHINS: TDateTime read FFHINS  write FFHINS;
    property USERACT: String read FUSERACT  write FUSERACT;
    property FHACT: TDateTime read FFHACT  write FFHACT;
// Tabla: Ubicacion_Prod
    property UBIPROD_ID: Integer read FUBIPROD_ID  write FUBIPROD_ID;
    property CODPRODSER: String read FCODPRODSER  write FCODPRODSER;
    property DESCRIPPRO: String read FDESCRIPPRO  write FDESCRIPPRO;
    property CODFAMILIA: String read FCODFAMILIA  write FCODFAMILIA;
    property CANTIDAD: Double read FCANTIDAD  write FCANTIDAD;
    property TIPO_ALMACENAJE: SmallInt read FTIPO_ALMACENAJE  write FTIPO_ALMACENAJE;
    property NUMERO_TARIMA: Integer read FNUMERO_TARIMA  write FNUMERO_TARIMA;
    property ACTIVO: SmallInt read FACTIVO  write FACTIVO;
    property COMENTARIOS: String read FCOMENTARIOS  write FCOMENTARIOS;
    property Error:Integer read FError  write FError;
    property ErrorMsg:TStringList read FErrorMsg  write FErrorMsg;

    procedure Prepare;
    procedure Insert;
    procedure Update;
    procedure Update01;
    procedure DardeBaja;
    procedure Delete;
    procedure SelectById(AUBIPROD_ID:integer = 0);
    procedure SelectByClave(ANUMALMACEN:String = '');
    procedure SelectByNombre(AUBICACION:String = '');
    procedure AsignarPropiedades(Aicu:TIB_Cursor);
    procedure FillRacks(ACbo:TStrings);
    procedure FillFamilias2(ACbo:TStrings);
    procedure Clear;
  end;

implementation
uses DM_MBA;

{==================================================================
Implementacion TUbicacion
==================================================================}
constructor TUbicacion.Create;
begin
  inherited Create;  // Inicializa las partes heredadas
  FError := 0;
  FErrorMsg := TStringList.Create;
  Prepare;
end;

destructor TUbicacion.Destroy;
begin
    inherited Destroy;
    FreeAndNil(FErrorMsg);
end;

procedure TUbicacion.Prepare;
begin
  FError :=0;
  {Preparar: icuS00}
  icuS00 := TIB_Cursor.Create(nil);
  icuS00.IB_Connection := DM1.cnMBA;
  icuS00.IB_Transaction := DM1.trMBA;
  icuS00.SQL.Clear;
  icuS00.SQL.Add('SELECT ');
  icuS00.SQL.Add('  UBIPROD_ID,');
  icuS00.SQL.Add('  NUMALMACEN,');
  icuS00.SQL.Add('  UBICACION,');
  icuS00.SQL.Add('  CODPRODSER,');
  icuS00.SQL.Add('  DESCRIPPRO,');
  icuS00.SQL.Add('  CODFAMILIA,');
  icuS00.SQL.Add('  CANTIDAD,');
  icuS00.SQL.Add('  TIPO_ALMACENAJE,');
  icuS00.SQL.Add('  NUMERO_TARIMA,');
  icuS00.SQL.Add('  COMENTARIOS,');
  icuS00.SQL.Add('  ACTIVO,');
  icuS00.SQL.Add('  USERACT,');
  icuS00.SQL.Add('  FHACT  ');
  icuS00.SQL.Add('FROM UBICACION_PROD ');
  icuS00.SQL.Add('WHERE (UBIPROD_ID = ?UBIPROD_ID);');

  {Preparar: icuS01}
  icuS01 := TIB_Cursor.Create(nil);
  icuS01.IB_Connection := DM1.cnMBA;
  icuS01.IB_Transaction := DM1.trMBA;
  icuS01.SQL.Clear;
  icuS01.SQL.Add('SELECT ');
  icuS01.SQL.Add('  UBIPROD_ID,');
  icuS01.SQL.Add('  NUMALMACEN,');
  icuS01.SQL.Add('  UBICACION,');
  icuS01.SQL.Add('  CODPRODSER,');
  icuS01.SQL.Add('  DESCRIPPRO,');
  icuS01.SQL.Add('  CODFAMILIA,');
  icuS01.SQL.Add('  CANTIDAD,');
  icuS01.SQL.Add('  TIPO_ALMACENAJE,');
  icuS01.SQL.Add('  NUMERO_TARIMA,');
  icuS01.SQL.Add('  COMENTARIOS,');
  icuS01.SQL.Add('  ACTIVO,');
  icuS01.SQL.Add('  USERACT,');
  icuS01.SQL.Add('  FHACT  ');
  icuS01.SQL.Add('FROM UBICACION_PROD ');
  icuS01.SQL.Add('ORDER BY UBICACION;');

  {Preparar: icuS02}
  icuS02 := TIB_Cursor.Create(nil);
  icuS02.IB_Connection := DM1.cnMBA;
  icuS02.IB_Transaction := DM1.trMBA;
  icuS02.SQL.Clear;
  icuS02.SQL.Add('SELECT ');
  icuS02.SQL.Add('  UBIPROD_ID,');
  icuS02.SQL.Add('  NUMALMACEN,');
  icuS02.SQL.Add('  UBICACION,');
  icuS02.SQL.Add('  CODPRODSER,');
  icuS02.SQL.Add('  DESCRIPPRO,');
  icuS02.SQL.Add('  CODFAMILIA,');
  icuS02.SQL.Add('  CANTIDAD,');
  icuS02.SQL.Add('  TIPO_ALMACENAJE,');
  icuS02.SQL.Add('  NUMERO_TARIMA,');
  icuS02.SQL.Add('  COMENTARIOS,');
  icuS02.SQL.Add('  ACTIVO,');
  icuS02.SQL.Add('  USERACT,');
  icuS02.SQL.Add('  FHACT  ');
  icuS02.SQL.Add('FROM UBICACION_PROD ');
  icuS02.SQL.Add('WHERE (NUMALMACEN = ?NUMALMACEN);');

  {Preparar: icuS03}
  icuS03 := TIB_Cursor.Create(nil);
  icuS03.IB_Connection := DM1.cnMBA;
  icuS03.IB_Transaction := DM1.trMBA;
  icuS03.SQL.Clear;
  icuS03.SQL.Add('SELECT FIRST 1 ');
  icuS03.SQL.Add('  UBIPROD_ID,');
  icuS03.SQL.Add('  NUMALMACEN,');
  icuS03.SQL.Add('  UBICACION,');
  icuS03.SQL.Add('  CODPRODSER,');
  icuS03.SQL.Add('  DESCRIPPRO,');
  icuS03.SQL.Add('  CODFAMILIA,');
  icuS03.SQL.Add('  CANTIDAD,');
  icuS03.SQL.Add('  TIPO_ALMACENAJE,');
  icuS03.SQL.Add('  NUMERO_TARIMA,');
  icuS03.SQL.Add('  COMENTARIOS,');
  icuS03.SQL.Add('  ACTIVO,');
  icuS03.SQL.Add('  USERACT,');
  icuS03.SQL.Add('  FHACT  ');
  icuS03.SQL.Add('FROM UBICACION_PROD ');
  icuS03.SQL.Add('WHERE (UBICACION CONTAINING ?UBICACION);');

  {Preparar: isqlI00}
  isqlI00 := TIB_DSQL.Create(nil);
  isqlI00.IB_Connection := DM1.cnMBA;
  isqlI00.IB_Transaction := DM1.trMBA;
  isqlI00.SQL.Clear;
  isqlI00.SQL.Add('INSERT INTO UBICACION_PROD( ');
  isqlI00.SQL.Add('  UBIPROD_ID,');
  isqlI00.SQL.Add('  NUMALMACEN,');
  isqlI00.SQL.Add('  UBICACION,');
  isqlI00.SQL.Add('  CODPRODSER,');
  isqlI00.SQL.Add('  DESCRIPPRO,');
  isqlI00.SQL.Add('  CODFAMILIA,');
  isqlI00.SQL.Add('  CANTIDAD,');
  isqlI00.SQL.Add('  TIPO_ALMACENAJE,');
  isqlI00.SQL.Add('  NUMERO_TARIMA,');
  isqlI00.SQL.Add('  COMENTARIOS,');
  isqlI00.SQL.Add('  ACTIVO,');
  isqlI00.SQL.Add('  USERACT,');
  isqlI00.SQL.Add('  FHACT)  ');
  isqlI00.SQL.Add('VALUES ( ');
  isqlI00.SQL.Add('  ?UBIPROD_ID,');
  isqlI00.SQL.Add('  ?NUMALMACEN,');
  isqlI00.SQL.Add('  ?UBICACION,');
  isqlI00.SQL.Add('  ?CODPRODSER,');
  isqlI00.SQL.Add('  ?DESCRIPPRO,');
  isqlI00.SQL.Add('  ?CODFAMILIA,');
  isqlI00.SQL.Add('  ?CANTIDAD,');
  isqlI00.SQL.Add('  ?TIPO_ALMACENAJE,');
  isqlI00.SQL.Add('  ?NUMERO_TARIMA,');
  isqlI00.SQL.Add('  ?COMENTARIOS,');
  isqlI00.SQL.Add('  ?ACTIVO,');
  isqlI00.SQL.Add('  ?USERACT,');
  isqlI00.SQL.Add('  ?FHACT);');

  {Preparar: isqlU00}
  isqlU00 := TIB_DSQL.Create(nil);
  isqlU00.IB_Connection := DM1.cnMBA;
  isqlU00.IB_Transaction := DM1.trMBA;
  isqlU00.SQL.Clear;
  isqlU00.SQL.Add('UPDATE UBICACION_PROD SET ');
  isqlU00.SQL.Add('  UBIPROD_ID = ?UBIPROD_ID,');
  isqlU00.SQL.Add('  NUMALMACEN = ?NUMALMACEN,');
  isqlU00.SQL.Add('  UBICACION = ?UBICACION,');
  isqlU00.SQL.Add('  CODPRODSER = ?CODPRODSER,');
  isqlU00.SQL.Add('  DESCRIPPRO = ?DESCRIPPRO,');
  isqlU00.SQL.Add('  CODFAMILIA = ?CODFAMILIA,');
  isqlU00.SQL.Add('  CANTIDAD = ?CANTIDAD,');
  isqlU00.SQL.Add('  TIPO_ALMACENAJE = ?TIPO_ALMACENAJE,');
  isqlU00.SQL.Add('  NUMERO_TARIMA = ?NUMERO_TARIMA,');
  isqlU00.SQL.Add('  COMENTARIOS = ?COMENTARIOS,');
  isqlU00.SQL.Add('  ACTIVO = ?ACTIVO,');
  isqlU00.SQL.Add('  USERACT = ?USERACT,');
  isqlU00.SQL.Add('  FHACT = ?FHACT ');
  isqlU00.SQL.Add('WHERE (UBIPROD_ID = ?UBIPROD_ID);');

  {Preparar: isqlU01}
  isqlU01 := TIB_DSQL.Create(nil);
  isqlU01.IB_Connection := DM1.cnMBA;
  isqlU01.IB_Transaction := DM1.trMBA;
  isqlU01.SQL.Clear;
  isqlU01.SQL.Add('UPDATE UBICACION_PROD SET ');
  isqlU01.SQL.Add('  UBICACION = ?UBICACION,');
  isqlU01.SQL.Add('  CODPRODSER = ?CODPRODSER,');
  isqlU01.SQL.Add('  DESCRIPPRO = ?DESCRIPPRO,');
  isqlU01.SQL.Add('  CODFAMILIA = ?CODFAMILIA,');
  isqlU01.SQL.Add('  CANTIDAD = ?CANTIDAD,');
  isqlU01.SQL.Add('  NUMERO_TARIMA = ?NUMERO_TARIMA,');
  isqlU01.SQL.Add('  USERACT = ?USERACT,');
  isqlU01.SQL.Add('  FHACT = ?FHACT ');
  isqlU01.SQL.Add('WHERE (UBIPROD_ID = ?UBIPROD_ID);');

  {Preparar: isqlD00}
  isqlU02 := TIB_DSQL.Create(nil);
  isqlU02.IB_Connection := DM1.cnMBA;
  isqlU02.IB_Transaction := DM1.trMBA;
  isqlU02.SQL.Clear;
  isqlU02.SQL.Add('UPDATE UBICACION_PROD SET ');
  isqlU02.SQL.Add('  ACTIVO = 2,');  //Activo = 2, es baja por tipo 2
  isqlU02.SQL.Add('  COMENTARIOS = ?COMENTARIOS,');
  isqlU02.SQL.Add('  USERACT = ?USERACT,');
  isqlU02.SQL.Add('  FHACT = ?FHACT ');
  isqlU02.SQL.Add('WHERE (UBIPROD_ID = ?UBIPROD_ID);');
// Activo es cuando es 0 y 1

  {Preparar: isqlD00}
  isqlD00 := TIB_DSQL.Create(nil);
  isqlD00.IB_Connection := DM1.cnMBA;
  isqlD00.IB_Transaction := DM1.trMBA;
  isqlD00.SQL.Clear;
  isqlD00.SQL.Add('DELETE UBICACION_PROD ');
  isqlD00.SQL.Add('WHERE (UBIPROD_ID = ?UBIPROD_ID);');

  // Tabla Ubicaciones
  icuS10 := TIB_Cursor.Create(nil);
  icuS10.IB_Connection := DM1.cnMBA;
  icuS10.IB_Transaction := DM1.trMBA;
  icuS10.SQL.add ('Select DISTINCT RACK from  UBICACIONES order by RACK;');
  icuS10.Prepare;


end;

procedure TUbicacion.SelectById(AUBIPROD_ID:integer = 0);
begin
  Error := 0;
  if AUBIPROD_ID <=0 then AUBIPROD_ID := FUBIPROD_ID;

  icuS00.Close;
  icuS00.Prepare;
  icuS00.ParamByName('UBIPROD_ID').AsInteger := AUBIPROD_ID;
  icuS00.Open;
  if (icuS00.Eof) then begin
      Error := 1;
      icuS00.Close;
      FErrorMsg.Add (' ' + sm.strfloat(AUBIPROD_ID,'#') + ' NO se encontró!');
      exit;
  end;
  AsignarPropiedades(icuS00);
  icuS00.Close;
end;

procedure TUbicacion.SelectByClave(ANUMALMACEN:String = '');
begin
  Error := 0;
  if length(ANUMALMACEN) <=0 then ANUMALMACEN := FNUMALMACEN;

  icuS01.Close;
  icuS01.Prepare;
  icuS01.ParamByName('NUMALMACEN').AsString := ANUMALMACEN;
  icuS01.Open;
  if (icuS01.Eof) then begin
      Error := 1;
      icuS01.Close;
      FErrorMsg.Add (' ' + ANUMALMACEN + ' NO se encontró!');
      exit;
  end;
  AsignarPropiedades(icuS01);
  icuS01.Close;
end;

procedure TUbicacion.SelectByNombre(AUBICACION:String = '');
begin
  Error := 0;
  if length(AUBICACION) <=0 then AUBICACION := FNUMALMACEN;

  icuS02.Close;
  icuS02.Prepare;
  icuS02.ParamByName('UBICACION').AsString := AUBICACION;
  icuS02.Open;
  if (icuS02.Eof) then begin
      Error := 1;
      icuS02.Close;
      FErrorMsg.Add (' ' + AUBICACION + ' NO se encontró!');
      exit;
  end;
  AsignarPropiedades(icuS02);
  icuS02.Close;
end;

procedure TUbicacion.AsignarPropiedades(Aicu:TIB_Cursor);
begin
  FUBIPROD_ID := Aicu.FieldByName('UBIPROD_ID').AsInteger;
  FNUMALMACEN := Aicu.FieldByName('NUMALMACEN').AsString;
  FUBICACION := Aicu.FieldByName('UBICACION').AsString;
  FCODPRODSER := Aicu.FieldByName('CODPRODSER').AsString;
  FDESCRIPPRO := Aicu.FieldByName('DESCRIPPRO').AsString;
  FCODFAMILIA := Aicu.FieldByName('CODFAMILIA').AsString;
  FCANTIDAD := Aicu.FieldByName('CANTIDAD').AsDouble;
  FTIPO_ALMACENAJE := Aicu.FieldByName('TIPO_ALMACENAJE').AsSmallInt;
  FNUMERO_TARIMA := Aicu.FieldByName('NUMERO_TARIMA').AsInteger;
  FCOMENTARIOS := Aicu.FieldByName('COMENTARIOS').AsString;
  FUSERACT := Aicu.FieldByName('USERACT').AsString;
  FFHACT := Aicu.FieldByName('FHACT').AsDateTime;

end;

procedure TUbicacion.Insert;
begin
  FError :=0;
  FUBIPROD_ID := DM1.GetCatalogoID;
  isqlI00.ParamByName('UBIPROD_ID').AsDouble := FUBIPROD_ID;
  isqlI00.ParamByName('NUMALMACEN').AsString := FNUMALMACEN;
  isqlI00.ParamByName('UBICACION').AsString := FUBICACION;
  isqlI00.ParamByName('CODPRODSER').AsString := FCODPRODSER;
  isqlI00.ParamByName('DESCRIPPRO').AsString := FDESCRIPPRO;
  isqlI00.ParamByName('CODFAMILIA').AsString := FCODFAMILIA;
  isqlI00.ParamByName('CANTIDAD').AsDouble := FCANTIDAD;
  isqlI00.ParamByName('TIPO_ALMACENAJE').AsSmallInt := FTIPO_ALMACENAJE;
  isqlI00.ParamByName('NUMERO_TARIMA').AsInteger := FNUMERO_TARIMA;
  isqlI00.ParamByName('COMENTARIOS').AsString := FCOMENTARIOS;
  isqlI00.ParamByName('ACTIVO').AsSmallInt := FACTIVO;
  isqlI00.ParamByName('USERACT').AsString := FUSERACT;
  isqlI00.ParamByName('FHACT').AsDateTime := FFHACT;

  try
    isqlI00.Execute;
  except
    FError :=1
  end;

end;


procedure TUbicacion.Update;
begin
  FError :=0;
  isqlU00.ParamByName('UBIPROD_ID').AsDouble := FUBIPROD_ID;
  isqlU00.ParamByName('NUMALMACEN').AsString := FNUMALMACEN;
  isqlU00.ParamByName('UBICACION').AsString := FUBICACION;
  isqlU00.ParamByName('CODPRODSER').AsString := FCODPRODSER;
  isqlU00.ParamByName('DESCRIPPRO').AsString := FDESCRIPPRO;
  isqlU00.ParamByName('CODFAMILIA').AsString := FCODFAMILIA;
  isqlU00.ParamByName('CANTIDAD').AsDouble := FCANTIDAD;
  isqlU00.ParamByName('TIPO_ALMACENAJE').AsSmallInt := FTIPO_ALMACENAJE;
  isqlU00.ParamByName('NUMERO_TARIMA').AsInteger := FNUMERO_TARIMA;
  isqlU00.ParamByName('COMENTARIOS').AsString := FCOMENTARIOS;
  isqlU00.ParamByName('USERACT').AsString := FUSERACT;
  isqlU00.ParamByName('FHACT').AsDateTime := FFHACT;

  try
    isqlU00.Execute;
  except
    FError :=1
  end;

end;

procedure TUbicacion.Update01;
begin
  FError :=0;
  isqlU01.ParamByName('UBIPROD_ID').AsDouble := FUBIPROD_ID;
  isqlU01.ParamByName('UBICACION').AsString := FUBICACION;
  isqlU01.ParamByName('CODPRODSER').AsString := FCODPRODSER;
  isqlU01.ParamByName('DESCRIPPRO').AsString := FDESCRIPPRO;
  isqlU01.ParamByName('CODFAMILIA').AsString := FCODFAMILIA;
  isqlU01.ParamByName('CANTIDAD').AsDouble := FCANTIDAD;
  isqlU01.ParamByName('NUMERO_TARIMA').AsInteger := FNUMERO_TARIMA;
  isqlU01.ParamByName('USERACT').AsString := FUSERACT;
  isqlU01.ParamByName('FHACT').AsDateTime := FFHACT;

  try
    isqlU01.Execute;
  except
    FError :=1
  end;

end;

procedure TUbicacion.DardeBaja;
begin
  FError :=0;
  isqlU02.ParamByName('UBIPROD_ID').AsDouble := FUBIPROD_ID;
  isqlU02.ParamByName('COMENTARIOS').AsString := FCOMENTARIOS;
  isqlU02.ParamByName('USERACT').AsString := FUSERACT;
  isqlU02.ParamByName('FHACT').AsDateTime := FFHACT;

  try
    isqlU02.Execute;
  except
    FError :=1
  end;

end;

procedure TUbicacion.Delete;
begin
  FError :=0;
  isqlD00.ParamByName('UBIPROD_ID').AsInteger := FUBIPROD_ID;

  try
    isqlD00.Execute;
  except
    FError :=1
  end;

end;

procedure TUbicacion.FillRacks(ACbo:TStrings);
var tNum,tNombre:String;
    iCod:integer;
begin

    icuS10.Open;
    ACbo.Clear;
    iCod := 0;
    while not icuS10.Eof do begin
        tNum    := Trim(icuS10.FieldByName('RACK').AsString);
        ACbo.Add (tNum);
        icuS10.Next;
    end;
    icuS10.Close;
end;

procedure TUbicacion.FillFamilias2(ACbo:TStrings);
var tNum,tNombre:String;
    iCod:integer;
begin

    icu1.Open;
    ACbo.Clear;
    while not icu1.Eof do begin
        tNum    := Trim(icu1.FieldByName('CODFAM').AsString);
        iCod    := sm.ToI(tNum);
        tNombre := Trim(icu1.FieldByName('DESCRIPFAM').AsString);
        ACbo.AddObject (tNum + ' | ' + tNombre,TObject(iCod));
        icu1.Next;
    end;
    icu1.Close;
end;

procedure TUbicacion.Clear;
begin
  FError :=0;
  FErrorMsg.Clear;
  FUBIPROD_ID := 0;
  FNUMALMACEN := '';
  FUBICACION := '';
  FCODPRODSER := '';
  FDESCRIPPRO := '';
  FCODFAMILIA := '';
  FCANTIDAD := 0;
  FTIPO_ALMACENAJE := 0;
  FNUMERO_TARIMA := 0;
  FCOMENTARIOS := '';
  FUSERACT := '';
  FFHACT := 0;

end;
//==============================================================

end.
