unit Ubicacion_Prod;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Menus, ImgList, StdCtrls,
  ExtCtrls, RXSplit, ActnList, RxPlacemnt,
  IB_Controls, IB_Components, IB_Grid,
  Buttons, RXCtrls, Grids, Mask, StrMan,
  TB2Item, TB2Dock, TB2Toolbar, RzEdit, RzPanel, BaseGrid,
  AdvGrid, AdvCGrid, RzButton, TBXStatusBars, RzLabel, TBX;


type
  TfrmUbicacion_Prod = class(TForm)
    pgcMain: TPageControl;
    tshGenerales: TTabSheet;
    TBDock1: TTBXDock;
    TBToolbar2: TTBXToolbar;
    TBToolbar1: TTBXToolbar;
    tbtSalir: TTBXItem;
    TBSeparatorItem2: TTBXSeparatorItem;
    TBSeparatorItem3: TTBXSeparatorItem;
    tbtAyuda: TTBXItem;
    tbtPost: TTBXItem;
    isql1: TIB_DSQL;
    iml16: TImageList;
    iml24: TImageList;
    acgUbicaciones: TAdvColumnGrid;
    icu1: TIB_Cursor;
    RzPanel1: TRzPanel;
    zmoGR: TRzMemo;
    acgUbicacion_Prod: TAdvColumnGrid;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    acgProductos: TAdvColumnGrid;
    btnLeft: TRzBitBtn;
    btnRight: TRzBitBtn;
    isql2: TIB_DSQL;
    icu2: TIB_Cursor;
    icu3: TIB_Cursor;
    btnMoveAllToLeft: TRzBitBtn;
    btnMoveAllToRight: TRzBitBtn;
    sbxMain: TTBXStatusBar;
    TBControlItem1: TTBControlItem;
    RzLabel1: TRzLabel;
    procedure tbtSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FillGridProductos;
    procedure FillGridUbicaciones;
    procedure btnLeftClick(Sender: TObject);
    procedure UpdateControls;
    procedure btnRightClick(Sender: TObject);
    procedure MoveItems(acgOri,acgDes:TAdvColumnGrid;Id,Nombre:String);
    procedure tbtPostClick(Sender: TObject);
    procedure GrabarUbi_Prod;
    procedure DeleteRecursosGrupo(Id:Integer);
    procedure tbtAbrirClick(Sender: TObject);
    procedure SetUp;
    procedure LeerUbicacion_Prod;
    procedure PonLeyenda;
    procedure tbtClearClick(Sender: TObject);
    procedure acgGruposCellsChanged(Sender: TObject; R: TRect);
    procedure acgGruposSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure acgUbicacionesSelectionChanged(Sender: TObject; ALeft, ATop,
      ARight, ABottom: Integer);
    procedure btnMoveAllToLeftClick(Sender: TObject);
    procedure btnMoveAllToRightClick(Sender: TObject);
    procedure SetMsg(ptMsg:String);
    procedure acgUbicacionesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUbicacion_Prod: TfrmUbicacion_Prod;
  mrRes:Integer;
  mtNumTabla:String;
  mfLoading:Boolean;
  mfUpdating:Boolean;
  mfGrabar: Boolean;
  miNextRow: Integer;
  FNombreGrupo:String;

implementation

uses Main,DM_MBA;
{$R *.DFM}


procedure TfrmUbicacion_Prod.tbtSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUbicacion_Prod.FormCreate(Sender: TObject);
begin
  miNextRow := 1;
  acgUbicaciones.Columns[1].Width := 0;
  //acgUbicacion_Prod.Columns[1].Width := 0;
  //acgProductos.Columns[1].Width := 0;
  SetUp;
  mfGrabar := False;
  UpdateControls;
end;

procedure TfrmUbicacion_Prod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmUbicacion_Prod := nil;
  Action := caFree;
end;

procedure TfrmUbicacion_Prod.UpdateControls;
begin
  btnLeft.Enabled  := (acgProductos.RowCount > 1);
  btnRight.Enabled := (acgUbicacion_Prod.RowCount > 1);
  btnMoveAllToLeft.Enabled  := btnLeft.Enabled;
  btnMoveAllToRight.Enabled := btnRight.Enabled;
  tbtPost.Enabled := mfGrabar;

end;

procedure TfrmUbicacion_Prod.SetUp;
var
  tId,tSQL:String;
begin
// Encabezados
  acgUbicaciones.ColumnHeaders.Clear;
  acgUbicaciones.ColumnHeaders.Add('Ubicaciones');
  acgUbicacion_Prod.ColumnHeaders.Clear;
  acgUbicacion_Prod.ColumnHeaders.Add('Ubicacion-Producto');
  acgProductos.ColumnHeaders.Clear;
  acgProductos.ColumnHeaders.Add('Productos');

//Preparar Select para lado Izquierdo
  tSQL := '';
  tSQL := tSQL + 'SELECT UBICACION_ID,UBICACION FROM UBICACIONES ORDER BY UBICACION;';
  icu1.SQL.Clear;
  icu1.sql.Text := tSQL;
  icu1.Prepare;
//Preparar Select para lado Derecho
  tSQL := '';
  tSQL := tSQL + 'SELECT CODPRODSER,DESCRIPPRO FROM MBA10004 WHERE EDOACTPROD = ''1'' ORDER BY CODPRODSER;';
  icu2.SQL.Clear;
  icu2.sql.Text := tSQL;
  icu2.Prepare;
//Preparar Select para el centro
  tSQL := '';
  tSQL := tSQL + 'SELECT A.UBICACION,A.CODPRODSER,B.DESCRIPPRO FROM UBICACION_PROD A ';
  tSql := tSql + 'JOIN MBA10004 B ON (A.CODPRODSER = B.CODPRODSER) WHERE A.UBICACION = ?UBICACION;';
  icu3.SQL.Clear;
  icu3.sql.Text := tSQL;
  icu3.Prepare;

//Preparar Insert
  tSQL := '';
  tSQL := tSQL + 'INSERT INTO UBICACION_PROD (UBIPROD_ID,UBICACION,CODPRODSER) VALUES (?UBIPROD_ID,?UBICACION,?CODPRODSER);';
  isql1.SQL.Clear;
  isql1.sql.Text := tSQL;
  isql1.Prepare;

//Preparar Delete
  tSQL := '';
  tSQL := tSQL + 'DELETE FROM UBICACION_PROD WHERE UBIPROD_ID = ?UBIPROD_ID;';
  isql2.SQL.Clear;
  isql2.sql.Add(tSQL);
  isql2.Prepare;

  FillGridProductos;
  FillGridUbicaciones;

  LeerUbicacion_Prod;
end;

procedure TfrmUbicacion_Prod.FillGridUbicaciones;
var
  tSQL: String;
  r:Integer;
begin
  icu1.Open;
  r:= 1;
  while not icu1.Eof do begin
    acgUbicaciones.Cells[0,r] := icu1.FieldByName('UBICACION').AsString;
    acgUbicaciones.Cells[1,r] := icu1.FieldByName('UBICACION_ID').AsString;
    icu1.next;
    r:= r + 1;
    if r > acgUbicaciones.RowCount then  acgUbicaciones.RowCount := r + 1;

  end;
  icu1.Close;
  UpdateControls;

end;

procedure TfrmUbicacion_Prod.FillGridProductos;
var
  tSQL: String;
  r:Integer;
begin
  icu2.Open;
  r:= 1;
  acgProductos.ClearRows(1,acgProductos.RowCount);
  while not icu2.Eof do begin
    acgProductos.Cells[0,r] := icu2.FieldByName('DESCRIPPRO').AsString;
    acgProductos.Cells[1,r] := icu2.FieldByName('CODPRODSER').AsString;
    icu2.next;
    r:= r + 1;
    if r > acgProductos.RowCount then  acgProductos.RowCount := r + 1;

  end;
  icu2.Close;
  UpdateControls;

end;

procedure TfrmUbicacion_Prod.MoveItems(acgOri,acgDes:TAdvColumnGrid;Id,Nombre:String);
var
  t: String;
  r:Integer;
begin
  acgDes.AddRow;
  r := acgDes.RowCount - 1;

  acgDes.Cells[0,r] := Nombre;
  acgDes.Cells[1,r] := Id;

  acgOri.FindFirst(Id,[fnMatchFull,fnAutoGoto,fnIncludeHiddenColumns]);

//  t := acgProductos.Cells[0,acgProductos.Row];
//  Id := acgProductos.Cells[1,acgProductos.Row];
//  acgOri.RemoveRows(acgOri.Row,1);

  mfGrabar := True;
  UpdateControls;
end;

procedure TfrmUbicacion_Prod.DeleteRecursosGrupo(Id:Integer);
var
  tId,tSQL:String;
begin
  isql2.ParamByName('UBIPROD_ID').AsInteger := Id;
  isql2.Execute;

end;

procedure TfrmUbicacion_Prod.tbtPostClick(Sender: TObject);
begin
  GrabarUbi_Prod;
end;

procedure TfrmUbicacion_Prod.GrabarUbi_Prod;
var
  t,tId,tNombre,tNota,tIdGpo: String;
  r,r1,iCount,iId,iIdRec,iIdGpo:Integer;
  tSQL:String;
begin
  r := acgUbicaciones.row;
  tIdGpo := acgUbicaciones.Cells[1,r];
  iIdGpo := sm.ToI(tIdGpo);

  DeleteRecursosGrupo(iIdGpo);

  iCount := acgUbicacion_Prod.RowCount;
  for r:= 1 to iCount - 1 do begin
    tId := acgUbicacion_Prod.Cells[1,r];
    iId := sm.ToI(tId);
    if iId > 0 then begin
      tNombre := acgUbicacion_Prod.Cells[0,r];
      tNota := '';
      isql1.ParamByName('UBIPROD_ID').AsInteger := iIdGpo;
      isql1.ParamByName('UBICACION').AsString := tId;
      isql1.ParamByName('CODPRODSER').AsString := '';
      isql1.Execute;
    end;

  end;

  mfGrabar := False;
  UpdateControls;
  SetMsg('Se grabó correctamente la cuadrilla ' + FNombreGrupo);
end;

procedure TfrmUbicacion_Prod.btnLeftClick(Sender: TObject);
var
  Id,Nombre:String;
begin
//  AddSelected;
  Id := acgProductos.Cells[1,acgProductos.Row];
  Nombre := acgProductos.Cells[0,acgProductos.Row];
  MoveItems(acgProductos,acgUbicacion_Prod,Id,Nombre);

end;

procedure TfrmUbicacion_Prod.btnRightClick(Sender: TObject);
var
  Id,Nombre:String;
begin
//  AddSelected;
  Id := acgUbicacion_Prod.Cells[1,acgUbicacion_Prod.Row];
  Nombre := acgUbicacion_Prod.Cells[0,acgUbicacion_Prod.Row];
  MoveItems(acgUbicacion_Prod,acgProductos,Id,Nombre);

//  RemoveSelected;

end;

procedure TfrmUbicacion_Prod.tbtAbrirClick(Sender: TObject);
begin
  LeerUbicacion_Prod;
end;

procedure TfrmUbicacion_Prod.LeerUbicacion_Prod;
var
  t,tId,tNombre:String;
  IdGrupo:Integer;
begin

  //FillGridUbicaciones;
  PonLeyenda;
//  acgUbicacion_Prod.ClearRows(1,acgUbicacion_Prod.RowCount);
  acgUbicacion_Prod.RemoveRows(1,acgUbicacion_Prod.RowCount - 1);

  t := acgUbicaciones.Cells[0,acgUbicaciones.Row];
  icu3.ParamByName('UBICACION').AsString := t;
  icu3.Open;
  while not icu3.Eof do begin
    tNombre := icu3.FieldByName('DESCRIPPRO').AsString;
    tId     := icu3.FieldByName('CODPRODSER').AsString;
    MoveItems(acgProductos,acgUbicacion_Prod,tId,tNombre);
    icu3.next;
  end;
  icu3.Close;

  UpdateControls;

end;

procedure TfrmUbicacion_Prod.tbtClearClick(Sender: TObject);
begin
  acgUbicacion_Prod.ClearRows(1,acgUbicacion_Prod.RowCount);

end;

procedure TfrmUbicacion_Prod.acgGruposCellsChanged(Sender: TObject; R: TRect);
begin
  LeerUbicacion_Prod;
end;

procedure TfrmUbicacion_Prod.acgGruposSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  LeerUbicacion_Prod;
end;

procedure TfrmUbicacion_Prod.acgUbicacionesSelectionChanged(Sender: TObject; ALeft, ATop,
  ARight, ABottom: Integer);
begin
  LeerUbicacion_Prod;
end;

procedure TfrmUbicacion_Prod.PonLeyenda;
var
  t,tId:String;
  IdGrupo:Integer;
begin
  FNombreGrupo := acgUbicaciones.Cells[0,acgUbicaciones.Row];
  zmoGR.Lines.Clear;
  zmoGR.lines.Add(FNombreGrupo);
  zmoGR.Lines.Add('Tiene asignados los siguientes Productos:');
  zmoGR.JumpTo(1,1);
end;

procedure TfrmUbicacion_Prod.SetMsg(ptMsg:String);
begin
  sbxMain.Panels[0].Caption := ptMsg;
end;

procedure TfrmUbicacion_Prod.btnMoveAllToLeftClick(Sender: TObject);
var
  Id,Nombre:String;
  iCount:Integer;
begin
//  AddSelected;

  iCount := acgProductos.RowCount;
  while iCount > 1 do begin
    acgProductos.Row := 1;
    Id := acgProductos.Cells[1,acgProductos.Row];
    Nombre := acgProductos.Cells[0,acgProductos.Row];
    MoveItems(acgProductos,acgUbicacion_Prod,Id,Nombre);
    iCount := acgProductos.RowCount;
  end;
end;

procedure TfrmUbicacion_Prod.btnMoveAllToRightClick(Sender: TObject);
var
  Id,Nombre:String;
  iCount:Integer;
begin
//  AddSelected;
  iCount := acgUbicacion_Prod.RowCount;
  while iCount > 1 do begin
    acgUbicacion_Prod.Row := 1;
    Id := acgUbicacion_Prod.Cells[1,acgUbicacion_Prod.Row];
    Nombre := acgUbicacion_Prod.Cells[0,acgUbicacion_Prod.Row];
    MoveItems(acgUbicacion_Prod,acgProductos,Id,Nombre);
    iCount := acgUbicacion_Prod.RowCount;
  end;
end;

procedure TfrmUbicacion_Prod.acgUbicacionesMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  SetMsg('');
end;

end.
