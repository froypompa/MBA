unit Ubicaciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, {Grids, RXGrids,} ToolWin, Menus, ImgList, StdCtrls, {Mask,}
  ExtCtrls, RXSplit, ActnList, DBCtrls, Db,
  DBGrids, DBTables, RxPlacemnt,  Msgerror, GeneralLib,
  IB_UpdateBar, IB_NavigationBar, IB_Controls, IB_Components, IB_Grid,
  Buttons, RXCtrls, Grids, Mask, StrMan, HHelp,
  TB2Item, TB2Dock,
  TB2Toolbar, Constants_App, LibApp,
  TBX, TBXStatusBars, RzLabel, RzEdit, RzBtnEdt;

type
  TfrmUbicaciones = class(TForm)
    ImageList1: TImageList;
    pgcMain: TPageControl;
    tshGenerales: TTabSheet;
    idsMain: TIB_DataSource;
    TBDock1: TTBXDock;
    TBToolbar2: TTBXToolbar;
    tbtEdit: TTBXItem;
    tbtInsert: TTBXItem;
    TBToolbar1: TTBXToolbar;
    tbtSalir: TTBXItem;
    TBSeparatorItem2: TTBXSeparatorItem;
    TBSeparatorItem3: TTBXSeparatorItem;
    tbtAyuda: TTBXItem;
    tbtDelete: TTBXItem;
    tbtPost: TTBXItem;
    TBSeparatorItem1: TTBXSeparatorItem;
    tbtRefresh: TTBXItem;
    tbtCancel: TTBXItem;
    TBSeparatorItem4: TTBXSeparatorItem;
    TBSeparatorItem5: TTBXSeparatorItem;
    tbtFirst: TTBXItem;
    tbtPrev: TTBXItem;
    tbtNext: TTBXItem;
    tbtLast: TTBXItem;
    Panel5: TPanel;
    imlTV: TImageList;
    iqrMain: TIB_Query;
    isql1: TIB_DSQL;
    lblModelo: TLabel;
    iedUbicacion: TIB_Edit;
    iedRack: TIB_Edit;
    iedSeccion: TIB_Edit;
    tbtClonarN1: TTBXItem;
    TBSeparatorItem6: TTBXSeparatorItem;
    iedNivel: TIB_Edit;
    Panel2: TPanel;
    Panel3: TPanel;
    fcLabel1: TRzLabel;
    edhBusca: TRzButtonEdit;
    igrdLoc: TIB_Grid;
    TabSheet1: TTabSheet;
    iml24: TTBImageList;
    sbMain: TTBXStatusBar;
    TBControlItem1: TTBControlItem;
    flbTitulo: TRzLabel;
    iedTiempo_Min: TIB_Edit;
    iedDificultad: TIB_Edit;
    iedNumAlmacen: TIB_Edit;
    tbtClonarS1: TTBXItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bbtBuscarClick(Sender: TObject);
    procedure axnBuscarExecute(Sender: TObject);
    procedure iqrMainAfterInsert(IB_Dataset: TIB_Dataset);
    procedure GoPrior;
    procedure GoNext;
    procedure SetMsg(Panel:Integer;Msg:String);
    procedure UpdateStatusBar;
    procedure SetRecordCount;
    procedure iqrMainAfterPost(IB_Dataset: TIB_Dataset);
    procedure idsMainStateChanged(Sender: TIB_DataSource;
      ADataset: TIB_Dataset);
    procedure iqrMainError(Sender: TObject; const ERRCODE: Integer;
      ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
      SQLMessage, SQL: TStringList; var RaiseException: Boolean);
    procedure tbtInsertClick(Sender: TObject);
    procedure tbtPostClick(Sender: TObject);
    procedure tbtDeleteClick(Sender: TObject);
    procedure tbtCancelClick(Sender: TObject);
    procedure RefreshNavigationBar;
    procedure tbtFirstClick(Sender: TObject);
    procedure tbtPrevClick(Sender: TObject);
    procedure tbtNextClick(Sender: TObject);
    procedure tbtLastClick(Sender: TObject);
    procedure tbtEditClick(Sender: TObject);
    procedure tbtSalirClick(Sender: TObject);
    procedure SetModeFlag;
    procedure SetUp;
    procedure SetHints;
    procedure SetButtonMsg(Id:Integer);
    procedure tbtButtonSelect(Sender: TTBCustomItem; Viewer: TTBItemViewer;
      Selecting: Boolean);
    procedure pgcMainMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iqrMainAfterEdit(IB_Dataset: TIB_Dataset);
    procedure IB_Grid1CellDblClick(Sender: TObject; ACol, ARow: Integer;
      AButton: TMouseButton; AShift: TShiftState);
    procedure tbtAyudaClick(Sender: TObject);
    procedure tbtRefreshClick(Sender: TObject);
    procedure IB_Grid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grpBuscaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iqrMainRowSelectedChanged(Sender: TObject; ARow: Integer;
      ABookmark: String; IsSelected: Boolean);
    procedure tbtClonarN1Click(Sender: TObject);
    procedure Clonar(ACampo:String);
    procedure tbtClonarS1Click(Sender: TObject);
    function Add(AVar:String):String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUbicaciones: TfrmUbicaciones;
  mrRes:Integer;
  mtNumTabla:String;
  mfLoading:Boolean;
  mfUpdating:Boolean;
//  oTabla: TTabla;
  m:TMemo;
implementation
{$R *.DFM}

uses Main, DM_MBA;
const
  TITULO  = 'Actualización de Ubicaciones';
  NOMBREP = 'Ubicaciones';
  NOMBRES = 'Ubicacion';

  INSERTANDO = 'Insertando...';
  EDITANDO   = 'Editando...';
  ELIMINANDO = 'Eliminando...';

  MSG_EDIT = 'Editar los datos de los %s';
  MSG_INS  = 'Insertar un nuevo %s';
  MSG_DEL  = 'Eliminar el %s actual';
  MSG_SAVE = 'Grabar los datos capturados';
  MSG_CANC = 'Cancelar la modificación los datos capturados';
  MSG_REFR = 'Refrescar la lista de %s';
  MSG_FIRST= 'Ir al primer %s';
  MSG_PREV = 'Ir al anterior %s';
  MSG_NEXT = 'Ir al siguiente %s';
  MSG_LAST = 'Ir al último %s';
  MSG_CLOSE= 'Cerrar y salir de la actualización de %s';
  MSG_HELP = 'Desplegar la ayuda de actualización de %s';
  MSG_GRID = 'Haz Click para seleccionar un %s; doble-click para modificarlo';
  MSG_BUSCA = 'Encuentra lo que teclees de acuerdo al campo seleccionado';
  MSG_COPIAR = 'Clonar este registro en otro nuevo';

  ERR_DUP = 'No puede haber numeros repetidos de %s';
  ERR_UPD = 'Error al actualizar la tabla de %s';

procedure TfrmUbicaciones.FormCreate(Sender: TObject);
begin

  mfLoading := True;

  iqrMain.PreventDeleting := not (oUser.ISMASTER = 1);
  iqrMain.Open;
  iqrMain.OrderingItemNo := 1;

  UpdateStatusBar;

  SetUp;
end;

procedure TfrmUbicaciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  iqrMain.Unprepare;
  iqrMain.Close;

  frmUbicaciones := nil;

  Action := caFree;
end;

procedure TfrmUbicaciones.FormShow(Sender: TObject);
var tFile:String;
begin

  pgcMain.ActivePageIndex := 0;

  mfLoading := False;

end;

procedure TfrmUbicaciones.SetUp;
var tFld:String;
begin
  flbTitulo.Caption := '  ' + TITULO + '  ';


end;

procedure TfrmUbicaciones.SetHints;
begin
    SetRecordCount;
end;

procedure TfrmUbicaciones.UpdateStatusBar;
begin
    SetRecordCount;
end;

procedure TfrmUbicaciones.RefreshNavigationBar;
begin
  tbtEdit.Enabled   := (iqrMain.State in [dssBrowse]) and (not iqrMain.PreventEditing);
  tbtInsert.Enabled := (iqrMain.State in [dssBrowse]) and (not iqrMain.PreventInserting);
  tbtDelete.Enabled := (iqrMain.State in [dssBrowse]) and (not iqrMain.PreventDeleting);
  tbtRefresh.Enabled:= iqrMain.State in [dssBrowse];
  tbtPost.Enabled   := iqrMain.State in [dssInsert,dssEdit,dssDelete];
  tbtCancel.Enabled := tbtPost.Enabled;
  tbtNext.Enabled   := not iqrMain.Eof;
  tbtPrev.Enabled   := not iqrMain.bof;

  SetModeFlag;
end;

procedure TfrmUbicaciones.SetRecordCount;
var iCount:integer;
    tText:String;

begin
    iCount := iqrMain.RecordCount;
    tText := 'Total: ';
    tText := tText + sm.StrFloat (iCount,'#,##0');
    SetMsg(2,tText);
end;

procedure TfrmUbicaciones.SetMsg(Panel:Integer;Msg:String);
begin
    sbMain.Panels[Panel].Caption := Msg;
end;

procedure TfrmUbicaciones.bbtBuscarClick(Sender: TObject);
begin
    axnBuscarExecute(self);
end;

procedure TfrmUbicaciones.axnBuscarExecute(Sender: TObject);
begin
    iqrMain.Locate ('UBICACION',edhBusca.Text,[lopCaseInsensitive, lopPartialKey, lopFindNearest]);
end;

procedure TfrmUbicaciones.iqrMainAfterInsert(IB_Dataset: TIB_Dataset);
begin
    pgcMain.ActivePage := tshGenerales;
    iedNumAlmacen.Setfocus;
end;

procedure TfrmUbicaciones.iqrMainAfterEdit(IB_Dataset: TIB_Dataset);
begin
    pgcMain.ActivePage := tshGenerales;
//    iedCodMedico.Setfocus;
end;

procedure TfrmUbicaciones.iqrMainAfterPost(IB_Dataset: TIB_Dataset);
begin
  SetRecordCount;
  iqrMain.refresh;
end;

procedure TfrmUbicaciones.GoPrior;
begin
    if not (iqrMain.bof) then iqrMain.Prior;
end;

procedure TfrmUbicaciones.GoNext;
begin
    if not (iqrMain.eof) then iqrMain.Next;
end;
procedure TfrmUbicaciones.idsMainStateChanged(Sender: TIB_DataSource;
  ADataset: TIB_Dataset);
begin
    RefreshNavigationBar;
end;


procedure TfrmUbicaciones.iqrMainError(Sender: TObject; const ERRCODE: Integer;
  ErrorMessage, ErrorCodes: TStringList; const SQLCODE: Integer;
  SQLMessage, SQL: TStringList; var RaiseException: Boolean);
begin
    frmMsg.ClearAll;
    case ERRCODE of
      335544665..335544665: frmMsg.AddError (1,Format(ERR_DUP,[NOMBREP]),'','');
      335544349..335544349: frmMsg.AddError (1,Format(ERR_DUP,[NOMBREP]),'','');
      else begin
        frmMsg.AddError (1,Format(ERR_UPD,[NOMBREP]),'','');
        frmMsg.redAxn.Lines := ErrorMessage;
      end;
    end;
    frmMsg.Showmodal;
    RaiseException := False;

end;

procedure TfrmUbicaciones.tbtEditClick(Sender: TObject);
begin
  iqrMain.Edit;
end;

procedure TfrmUbicaciones.tbtInsertClick(Sender: TObject);
begin
  iqrMain.Insert;
end;

procedure TfrmUbicaciones.tbtDeleteClick(Sender: TObject);
begin
  iqrMain.Delete;
end;

procedure TfrmUbicaciones.tbtPostClick(Sender: TObject);
begin
  iqrMain.Post;
end;

procedure TfrmUbicaciones.tbtCancelClick(Sender: TObject);
begin
  iqrMain.Cancel;
end;

procedure TfrmUbicaciones.tbtRefreshClick(Sender: TObject);
begin
  iqrMain.Refresh;
end;

procedure TfrmUbicaciones.tbtFirstClick(Sender: TObject);
begin
  iqrMain.First;
end;

procedure TfrmUbicaciones.tbtPrevClick(Sender: TObject);
begin
  iqrMain.Prior;
  if iqrMain.Bof then  iqrMain.First;
  RefreshNavigationBar;

end;

procedure TfrmUbicaciones.tbtNextClick(Sender: TObject);
begin
  iqrMain.Next;
  if iqrMain.Eof then iqrMain.Last;
  RefreshNavigationBar;
end;

procedure TfrmUbicaciones.tbtLastClick(Sender: TObject);
begin
  iqrMain.Last;
end;

procedure TfrmUbicaciones.tbtSalirClick(Sender: TObject);
begin
  close;
end;

procedure TfrmUbicaciones.SetModeFlag;
begin
  if iqrMain.State in [dssBrowse] then begin
    sbMain.Panels[1].Caption := '';
    sbMain.Panels[1].ImageIndex := -1;
  end;
  if iqrMain.State in [dssInsert] then begin
    sbMain.Panels[1].Caption := INSERTANDO;
    sbMain.Panels[1].ImageIndex := 5;
  end;
  if iqrMain.State in [dssEdit] then begin
    sbMain.Panels[1].Caption := EDITANDO;
    sbMain.Panels[1].ImageIndex := 6;
  end;
  if iqrMain.State in [dssDelete] then begin
    sbMain.Panels[1].Caption := ELIMINANDO;
    sbMain.Panels[1].ImageIndex := 7;
  end;
end;

procedure TfrmUbicaciones.tbtButtonSelect(Sender: TTBCustomItem;
  Viewer: TTBItemViewer; Selecting: Boolean);
var Id:Integer;
begin
  Id := (Sender as TTBXItem).Tag;
  SetButtonMsg(Id);
end;

procedure TfrmUbicaciones.SetButtonMsg(Id:Integer);
var tMsg:String;
begin
  case Id of
  1:tMsg := Format(MSG_EDIT,[NOMBRES]);
  2:tMsg := Format(MSG_INS,[NOMBRES]);
  3:tMsg := Format(MSG_DEL,[NOMBRES]);
  4:tMsg := MSG_SAVE;
  5:tMsg := MSG_CANC;
  6:tMsg := Format(MSG_REFR,[NOMBREP]);
  7:tMsg := Format(MSG_FIRST,[NOMBRES]);
  8:tMsg := Format(MSG_PREV,[NOMBRES]);
  9:tMsg := Format(MSG_NEXT,[NOMBRES]);
  10:tMsg := Format(MSG_LAST,[NOMBRES]);
  13:tMsg := Format(MSG_COPIAR,[NOMBRES]);
  20:tMsg := Format(MSG_CLOSE,[NOMBREP]);
  21:tMsg := Format(MSG_HELP,[NOMBREP]);
  end;

  sbMain.Panels[0].Caption := tMsg;
  sbMain.Panels[0].ImageIndex := -1;

end;

procedure TfrmUbicaciones.pgcMainMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  sbMain.Panels[0].Caption := '';
  sbMain.Panels[0].ImageIndex := -1;

end;

procedure TfrmUbicaciones.IB_Grid1CellDblClick(Sender: TObject; ACol,
  ARow: Integer; AButton: TMouseButton; AShift: TShiftState);
begin
  iqrMain.Edit;
end;

procedure TfrmUbicaciones.tbtAyudaClick(Sender: TObject);
begin
  ShowHelp('Campanas');
end;


procedure TfrmUbicaciones.IB_Grid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SetMsg(0,Format(MSG_GRID,[NOMBRES]));
end;

procedure TfrmUbicaciones.grpBuscaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  SetMsg(0,Format(MSG_BUSCA,[NOMBRES]));

end;

procedure TfrmUbicaciones.iqrMainRowSelectedChanged(Sender: TObject;
  ARow: Integer; ABookmark: String; IsSelected: Boolean);
begin
  ShowMessage('Cambio');
end;

procedure TfrmUbicaciones.tbtClonarN1Click(Sender: TObject);
begin
  Clonar('NIVEL');
end;

procedure TfrmUbicaciones.tbtClonarS1Click(Sender: TObject);
begin
  Clonar('SECCION');
end;

procedure TfrmUbicaciones.Clonar(ACampo:String);
var vTemp : array[0..20] of variant;
    tKey1,Seccion,Nivel:String;
    i,iFCount:Integer;
begin
// Copiar Unidad...
    if (iqrMain.State = dssInsert) or
       (iqrMain.State = dssEdit) then
        iqrMain.Post;

    iFCount := iqrMain.Fields.ColumnCount;
    for i:= 0 to iFCount - 1 do begin
        vTemp[i] := iqrMain.fields.Columns[i].AsVariant;
    end;

    //altero la llave para que no sea igual a la original
//    vTemp[11] := DM1.GetCatalogoId; 
    tKey1 := vTemp[1];

    if ACampo = 'SECCION' then begin
      Seccion := Add(vTemp[3]);
      vTemp[3] := Seccion;
      vTemp[4] := '01';
      vTemp[1] := vTemp[2]+vTemp[3]+vTemp[4];
    end;

    if ACampo = 'NIVEL' then begin
      Nivel := Add(vTemp[4]);
      vTemp[4] := Nivel;
      vTemp[1] := vTemp[2]+vTemp[3]+vTemp[4];
    end;

    iqrMain.Insert;
    for i:= 0 to iFCount - 2 do begin
        iqrMain.fields.Columns[i].AsVariant := vTemp[i];
    end;
    iqrMain.Post;
    iqrMain.Last;
    exit;
    iqrMain.Close;
    iqrMain.Open;

    iqrMain.Locate ('UBICACION',
                   tKey1,
                   [lopCaseInsensitive, lopPartialKey, lopFindNearest]
                    );

end;
function TfrmUbicaciones.Add(AVar:String):String;
var
  iDato:Integer;
begin
  iDato := sm.ToI(AVar);
  iDato := iDato + 1;
  Result := sm.StrFloat(iDato,'0',2,'0');
end;



end.
