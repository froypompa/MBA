unit ClsDirEntrega;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, StdCtrls,
     IB_Components, StrMan, ESBDates;
type
  TDirEntrega = class(TObject)
    constructor Create;
    destructor Destroy;
   private
    FIDDIRENTREGA:Integer;
    FCODCTEPROV: String;
    FNOMBRE_DIR: String;
    FDIR_ENTREGA: String;
    FDATOS_EMBARQUE: String; //Datos de Embarque para "ESTA" direccion de entrega
    FPRIORIDAD:SmallInt;     //0-Principal, >0 Las otras
    FError:Integer;
    FErrorMsg: TstringList;
    icu1: TIB_Cursor;
    icu2: TIB_Cursor;
    isql1: TIB_DSQL;
    icuS00:TIB_Cursor;
    icuS01:TIB_Cursor;
    icuS02:TIB_Cursor;
    icuS03:TIB_Cursor;
    isqlI00:TIB_DSQL;
    isqlU00:TIB_DSQL;
    isqlD00:TIB_DSQL;
    tS00,tsql1,tS02:String;

    procedure SetIDDIRENTREGA(AIDDIRENTREGA:Integer);
    function GetCLAVE:String;
    procedure SetCLAVE(ACLAVE:String);
    function GetDESCRIPCION:String;
    procedure SetDESCRIPCION(ADESCRIPCION:String);
   public
    procedure Prepare;
    procedure Fill_Nombre_Dirs(ACbo:TStrings);
    function Get_Dir_Entrega(ANombre:String = ''):String;
    procedure Save_DirEntrega;
    function Set_Dir_EntregaPrincipal:Integer;
    procedure Save_UltimaDir(ANombre_Dir:String;ADir_Entrega:String;Prioridad:SmallInt;ADatos_Embarque:String);
    procedure Clear;
    procedure SelectById(AIDDIRENTREGA:integer = 0);
    procedure Save;
    procedure Insert;
    procedure Update;
    procedure Delete;

    property IDDIRENTREGA: Integer read FIDDIRENTREGA  write SETIDDIRENTREGA;
    property CODCTEPROV: String read FCODCTEPROV  write FCODCTEPROV;
    property NOMBRE_DIR: String read FNOMBRE_DIR  write FNOMBRE_DIR;
    property DIR_ENTREGA: String read FDIR_ENTREGA  write FDIR_ENTREGA;
    property PRIORIDAD: SmallInt read FPRIORIDAD  write FPRIORIDAD;
    property DATOS_EMBARQUE: String read FDATOS_EMBARQUE  write FDATOS_EMBARQUE;
    property Error:Integer read FError  write FError;
    property ErrorMsg:TStringList read FErrorMsg  write FErrorMsg;
  end;


implementation

uses DM_MBA;
{==================================================================
Implementacion: TUser
==================================================================}
constructor TDirEntrega.Create;
begin
  inherited Create;  // Inicializa las partes heredadas
  FError := 0;
  FErrorMsg:= TstringList.Create;

  icu1 := TIB_Cursor.Create(nil);
  icu1.IB_Connection := DM1.cnMBA;
  icu1.IB_Transaction := DM1.trMBA;
  icu1.SQL.Clear;

  icu2 := TIB_Cursor.Create(nil);
  icu2.IB_Connection := DM1.cnMBA;
  icu2.IB_Transaction := DM1.trMBA;
  icu2.SQL.Clear;

  iSql1 := TIB_DSQL.Create(nil);
  iSql1.IB_Connection := DM1.cnMBA;
  iSql1.IB_Transaction := DM1.trMBA;
  iSql1.SQL.Clear;

  Clear;
  Prepare;

end;

destructor TDirEntrega.Destroy;
begin
    icu1.unprepare;
    icu1.Free;
    icu2.unprepare;
    icu2.Free;
    iSql1.unprepare;
    iSql1.Free;
    FreeAndNil(FErrorMsg);

    inherited Destroy;
end;

procedure TDirEntrega.Prepare;
begin
  FError :=0;
  {Preparar: icuS00}
  icuS00 := TIB_Cursor.Create(nil);
  icuS00.IB_Connection := DM1.cnMBA;
  icuS00.IB_Transaction := DM1.trMBA;
  icuS00.SQL.Clear;
  icuS00.SQL.Add('SELECT ');
  icuS00.SQL.Add('  IDDIRENTREGA,');
  icuS00.SQL.Add('  CODCTEPROV,');
  icuS00.SQL.Add('  NOMBRE_DIR,');
  icuS00.SQL.Add('  DIR_ENTREGA,');
  icuS00.SQL.Add('  PRIORIDAD,');
  icuS00.SQL.Add('  DATOS_EMBARQUE  ');
  icuS00.SQL.Add('FROM DIRS_ENTREGA ');
  icuS00.SQL.Add('WHERE (IDDIRENTREGA = ?IDDIRENTREGA);');

  {Preparar: icuS01}
  icuS01 := TIB_Cursor.Create(nil);
  icuS01.IB_Connection := DM1.cnMBA;
  icuS01.IB_Transaction := DM1.trMBA;
  icuS01.SQL.Clear;
  icuS01.SQL.Add('SELECT ');
  icuS01.SQL.Add('  IDDIRENTREGA,');
  icuS01.SQL.Add('  CODCTEPROV,');
  icuS01.SQL.Add('  NOMBRE_DIR,');
  icuS01.SQL.Add('  DIR_ENTREGA,');
  icuS01.SQL.Add('  PRIORIDAD,');
  icuS01.SQL.Add('  DATOS_EMBARQUE  ');
  icuS01.SQL.Add('FROM DIRS_ENTREGA ');
  icuS01.SQL.Add('ORDER BY NOMBRE_DIR;');

  {Preparar: icuS02}
  icuS02 := TIB_Cursor.Create(nil);
  icuS02.IB_Connection := DM1.cnMBA;
  icuS02.IB_Transaction := DM1.trMBA;
  icuS02.SQL.Clear;
  icuS02.SQL.Add('SELECT ');
  icuS02.SQL.Add('  IDDIRENTREGA,');
  icuS02.SQL.Add('  CODCTEPROV,');
  icuS02.SQL.Add('  NOMBRE_DIR,');
  icuS02.SQL.Add('  DIR_ENTREGA,');
  icuS02.SQL.Add('  PRIORIDAD,');
  icuS02.SQL.Add('  DATOS_EMBARQUE  ');
  icuS02.SQL.Add('FROM DIRS_ENTREGA ');
  icuS02.SQL.Add('WHERE (CODCTEPROV = ?CODCTEPROV);');

  {Preparar: icuS03}
  icuS03 := TIB_Cursor.Create(nil);
  icuS03.IB_Connection := DM1.cnMBA;
  icuS03.IB_Transaction := DM1.trMBA;
  icuS03.SQL.Clear;
  icuS03.SQL.Add('SELECT Count(*) ');
  icuS03.SQL.Add('FROM DIRS_ENTREGA ');
  icuS03.SQL.Add('WHERE (NOMBRE_DIR = ?NOMBRE_DIR) AND (CODCTEPROV = ?CODCTEPROV);');

  {Preparar: isqlI00}
  isqlI00 := TIB_DSQL.Create(nil);
  isqlI00.IB_Connection := DM1.cnMBA;
  isqlI00.IB_Transaction := DM1.trMBA;
  isqlI00.SQL.Clear;
  isqlI00.SQL.Add('INSERT INTO DIRS_ENTREGA( ');
  isqlI00.SQL.Add('  IDDIRENTREGA,');
  isqlI00.SQL.Add('  CODCTEPROV,');
  isqlI00.SQL.Add('  NOMBRE_DIR,');
  isqlI00.SQL.Add('  DIR_ENTREGA,');
  isqlI00.SQL.Add('  PRIORIDAD,');
  isqlI00.SQL.Add('  DATOS_EMBARQUE)  ');
  isqlI00.SQL.Add('VALUES ( ');
  isqlI00.SQL.Add('  ?IDDIRENTREGA,');
  isqlI00.SQL.Add('  ?CODCTEPROV,');
  isqlI00.SQL.Add('  ?NOMBRE_DIR,');
  isqlI00.SQL.Add('  ?DIR_ENTREGA,');
  isqlI00.SQL.Add('  ?PRIORIDAD,');
  isqlI00.SQL.Add('  ?DATOS_EMBARQUE);');

  {Preparar: isqlU00}
  isqlU00 := TIB_DSQL.Create(nil);
  isqlU00.IB_Connection := DM1.cnMBA;
  isqlU00.IB_Transaction := DM1.trMBA;
  isqlU00.SQL.Clear;
  isqlU00.SQL.Add('UPDATE DIRS_ENTREGA SET ');
  isqlU00.SQL.Add('  IDDIRENTREGA = ?IDDIRENTREGA,');
  isqlU00.SQL.Add('  CODCTEPROV = ?CODCTEPROV,');
  isqlU00.SQL.Add('  NOMBRE_DIR = ?NOMBRE_DIR,');
  isqlU00.SQL.Add('  DIR_ENTREGA = ?DIR_ENTREGA,');
  isqlU00.SQL.Add('  PRIORIDAD = ?PRIORIDAD,');
  isqlU00.SQL.Add('  DATOS_EMBARQUE = ?DATOS_EMBARQUE ');
  isqlU00.SQL.Add('WHERE (IDDIRENTREGA = ?IDDIRENTREGA);');

  {Preparar: isqlD00}
  isqlD00 := TIB_DSQL.Create(nil);
  isqlD00.IB_Connection := DM1.cnMBA;
  isqlD00.IB_Transaction := DM1.trMBA;
  isqlD00.SQL.Clear;
  isqlD00.SQL.Add('DELETE FROM DIRS_ENTREGA ');
  isqlD00.SQL.Add('WHERE (IDDIRENTREGA = ?IDDIRENTREGA);');

  icu2:= TIB_Cursor.Create(DM1);
  icu2.IB_Connection := DM1.cnMBA;
  icu2.IB_Transaction := DM1.trMBA;
  icu2.SQL.Clear;
  icu2.SQL.Add('SELECT        ');
  icu2.SQL.Add('IDDIRENTREGA, ');
  icu2.SQL.Add('NOMBRE_DIR,   ');
  icu2.SQL.Add('DIR_ENTREGA,  ');
  icu2.SQL.Add('PRIORIDAD,     ');
  icu2.SQL.Add('DATOS_EMBARQUE     ');
  icu2.SQL.Add('FROM DIRS_ENTREGA ');
  icu2.SQL.Add('WHERE (CODCTEPROV = ?P_CODCTEPROV) AND (NOMBRE_DIR = ?P_NOMBRE_DIR);');
  icu2.Prepare;


end;


procedure TDirEntrega.Fill_Nombre_Dirs(ACbo:TStrings);
var tNum,tNombre:String;
begin
  ACbo.Clear;
  icu1.SQL.Clear;
  icu1.SQL.Add('SELECT NOMBRE_DIR, DIR_ENTREGA, PRIORIDAD ');
  icu1.SQL.Add('FROM DIRS_ENTREGA ');
  icu1.SQL.Add('WHERE (CODCTEPROV = ?CODCTEPROV) ');
  icu1.SQL.Add('ORDER BY NOMBRE_DIR; ');

  icu1.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;
  icu1.Open;

    if icu1.Eof then begin
        Error := 1;
        exit;
    end;
    while not icu1.Eof do begin
        tNombre := Trim(icu1.FieldByName('NOMBRE_DIR').AsString);
        ACbo.Add(tNombre);
        icu1.Next;
    end;
    icu1.Close;
end;

function TDirEntrega.Get_Dir_Entrega(ANombre:String = ''):String;
begin
//
  FError := 0;
  if length(ANombre) <= 0 then ANombre := FNOMBRE_DIR;

  icu2.ParamByName('P_CODCTEPROV').AsString := FCODCTEPROV;
  icu2.ParamByName('P_NOMBRE_DIR').AsString := ANombre;
  icu2.Open;
  if icu2.Eof then  begin
    FNOMBRE_DIR   := '';
    FDIR_ENTREGA  := '';
    FPRIORIDAD    := 99;
    FDATOS_EMBARQUE := ''
  end else begin
    FIDDIRENTREGA := icu2.FieldByName('IDDIRENTREGA').AsInteger;
    FNOMBRE_DIR   := icu2.FieldByName('NOMBRE_DIR').AsString;
    FDIR_ENTREGA  := icu2.FieldByName('DIR_ENTREGA').AsString;
    FPRIORIDAD    := icu2.FieldByName('PRIORIDAD').AsSmallInt;
    FDATOS_EMBARQUE := icu2.FieldByName('DATOS_EMBARQUE').AsString;
  end;
  Result := FDIR_ENTREGA;

  icu2.Close;

end;

procedure TDirEntrega.Save_DirEntrega;
begin
  FError := 0;
  icu1.SQL.Clear;
  icu1.SQL.Add('SELECT IDDIRENTREGA,NOMBRE_DIR ');
  icu1.SQL.Add('FROM DIRS_ENTREGA ');
  icu1.SQL.Add('WHERE (CODCTEPROV = ?CODCTEPROV) ');
  icu1.SQL.Add('      AND (NOMBRE_DIR = ?NOMBRE_DIR); ');

  icu1.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;
  icu1.ParamByName('NOMBRE_DIR').AsString := FNombre_Dir;
  icu1.Open;

  isql1.UnPrepare;
  isql1.sql.Clear;
  if icu1.Eof then begin
    isql1.SQL.Add ('INSERT INTO DIRS_ENTREGA(IDDIRENTREGA,CODCTEPROV,NOMBRE_DIR,DIR_ENTREGA, PRIORIDAD, DATOS_EMBARQUE) ');
    isql1.SQL.Add ('        VALUES(?IDDIRENTREGA,?CODCTEPROV,?NOMBRE_DIR,?DIR_ENTREGA, ?PRIORIDAD, ?DATOS_EMBARQUE); ');
    isql1.Prepare;

    FIDDIRENTREGA := DM1.GetCatalogoId;
    isql1.ParamByName('IDDIRENTREGA').AsInteger := FIDDIRENTREGA;
  end else begin
    isql1.SQL.Add ('UPDATE DIRS_ENTREGA SET DIR_ENTREGA = ?DIR_ENTREGA, ');
    isql1.SQL.Add ('  PRIORIDAD = ?PRIORIDAD, ');
    isql1.SQL.Add ('  DATOS_EMBARQUE = ?DATOS_EMBARQUE ');
    isql1.SQL.Add ('WHERE (CODCTEPROV = ?CODCTEPROV) ');
    isql1.SQL.Add ('      AND (NOMBRE_DIR = ?NOMBRE_DIR); ');
    isql1.Prepare;
    FIDDIRENTREGA :=     icu1.FieldByName('IDDIRENTREGA').AsInteger;
  end;

    isql1.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;
    isql1.ParamByName('NOMBRE_DIR').AsString := FNombre_Dir;
    isql1.ParamByName('DIR_ENTREGA').AsString := FDir_Entrega;
    isql1.ParamByName('PRIORIDAD').AsSmallint := FPrioridad;
    isql1.ParamByName('DATOS_EMBARQUE').AsString := FDatos_Embarque;

  try
    isql1.Execute;
  except
    FError := 1;
  end;

  icu1.Close;

end;

function TDirEntrega.Set_Dir_EntregaPrincipal:Integer;
begin
//
  icu1.SQL.Clear;
  icu1.SQL.Add('SELECT First 1 IDDIRENTREGA,NOMBRE_DIR, DIR_ENTREGA, PRIORIDAD ');
  icu1.SQL.Add('FROM DIRS_ENTREGA ');
  icu1.SQL.Add('WHERE (CODCTEPROV = ?CODCTEPROV) ');
  icu1.SQL.Add('ORDER BY PRIORIDAD ASC; ');

  icu1.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;
  icu1.Open;
  if icu1.eof then begin
    icu1.Close;
    Result := 1;
    FNOMBRE_DIR   := 'FISCAL';
    FDIR_ENTREGA  := '';
    FPRIORIDAD    := 0;
    exit;
  end;

  FIDDIRENTREGA := icu1.FieldByName('IDDIRENTREGA').AsInteger;
  FNOMBRE_DIR   := icu1.FieldByName('NOMBRE_DIR').AsString;
  FDIR_ENTREGA  := icu1.FieldByName('DIR_ENTREGA').AsString;
  FPRIORIDAD    := icu1.FieldByName('PRIORIDAD').AsSmallInt;
  icu2.Close;

  Result := 0;


end;

procedure TDirEntrega.Save_UltimaDir(ANombre_Dir:String;ADir_Entrega:String;Prioridad:SmallInt;ADatos_Embarque:String);
begin
  FError := 0;
  isql1.UnPrepare;
  isql1.sql.Clear;
  isql1.SQL.Add ('UPDATE MBA10002 SET NOMBRE_DIR = ?NOMBRE_DIR ');
  isql1.SQL.Add ('WHERE CODCTEPROV = ?CODCTEPROV; ');
  isql1.Prepare;

  isql1.ParamByName('NOMBRE_DIR').AsString := ANombre_Dir;
  isql1.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;

  try
    isql1.Execute;
  except
    FError := 1;
  end;

end;

procedure TDirEntrega.SelectById(AIDDIRENTREGA:integer = 0);
begin
  Error := 0;
  if AIDDIRENTREGA <=0 then AIDDIRENTREGA := FIDDIRENTREGA;

  icuS00.Close;
  icuS00.Prepare;
  icuS00.ParamByName('IDDIRENTREGA').AsInteger := AIDDIRENTREGA;
  icuS00.Open;
  if (icuS00.Eof) then begin
      Error := 1;
      Clear;
      icuS00.Close;
      FErrorMsg.Add (' ' + sm.strfloat(AIDDIRENTREGA,'#') + ' NO se encontró!');
      exit;
  end;
  FIDDIRENTREGA := icuS00.FieldByName('IDDIRENTREGA').AsInteger;
  FCODCTEPROV := icuS00.FieldByName('CODCTEPROV').AsString;
  FNOMBRE_DIR := icuS00.FieldByName('NOMBRE_DIR').AsString;
  FDIR_ENTREGA := icuS00.FieldByName('DIR_ENTREGA').AsString;
  FPRIORIDAD := icuS00.FieldByName('PRIORIDAD').AsSmallInt;
  FDATOS_EMBARQUE := icuS00.FieldByName('DATOS_EMBARQUE').AsString;
  icuS00.Close;
end;


procedure TDirEntrega.Save;
begin
  if FIDDIRENTREGA <=0 then begin
    FIDDIRENTREGA := -1;
    Insert;
  end else begin
    Update;
  end;

end;
procedure TDirEntrega.Insert;
begin
  FError :=0;
  isqlI00.ParamByName('IDDIRENTREGA').AsInteger := FIDDIRENTREGA;
  isqlI00.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;
  isqlI00.ParamByName('NOMBRE_DIR').AsString := FNOMBRE_DIR;
  isqlI00.ParamByName('DIR_ENTREGA').AsString := FDIR_ENTREGA;
  isqlI00.ParamByName('PRIORIDAD').AsSmallInt := FPRIORIDAD;
  isqlI00.ParamByName('DATOS_EMBARQUE').AsString := FDATOS_EMBARQUE;

  try
    isqlI00.Execute;
  except
    FError :=1
  end;

end;


procedure TDirEntrega.Update;
begin
  FError :=0;
  isqlU00.ParamByName('IDDIRENTREGA').AsInteger := FIDDIRENTREGA;
  isqlU00.ParamByName('CODCTEPROV').AsString := FCODCTEPROV;
  isqlU00.ParamByName('NOMBRE_DIR').AsString := FNOMBRE_DIR;
  isqlU00.ParamByName('DIR_ENTREGA').AsString := FDIR_ENTREGA;
  isqlU00.ParamByName('PRIORIDAD').AsSmallInt := FPRIORIDAD;
  isqlU00.ParamByName('DATOS_EMBARQUE').AsString := FDATOS_EMBARQUE;

  try
    isqlU00.Execute;
  except
    FError :=1
  end;

end;


procedure TDirEntrega.Delete;
begin
  FError :=0;
  isqlD00.ParamByName('IDDIRENTREGA').AsInteger := FIDDIRENTREGA;

  try
    isqlD00.Execute;
  except
    FError :=1
  end;

end;

procedure TDirEntrega.Clear;
begin
  FError :=0;
  FErrorMsg.Clear;
  FIDDIRENTREGA := -1;
  FCODCTEPROV := '';
  FNOMBRE_DIR := '';
  FDIR_ENTREGA := '';
  FPRIORIDAD := 0;
  FDATOS_EMBARQUE := '';

end;
//=============================================================
procedure TDirEntrega.SetIDDIRENTREGA(AIDDIRENTREGA:Integer);
begin
    FIDDIRENTREGA := AIDDIRENTREGA;
end;
function TDirEntrega.GetClave:String;
begin
  Result := FCODCTEPROV
end;
procedure TDirEntrega.SetClave(ACLAVE:String);
begin
    FCODCTEPROV := ACLAVE;
end;
function TDirEntrega.GetDESCRIPCION:String;
begin
  Result := FNOMBRE_DIR
end;
procedure TDirEntrega.SetDESCRIPCION(ADESCRIPCION:String);
begin
  FNOMBRE_DIR := ADESCRIPCION;
end;

end.
