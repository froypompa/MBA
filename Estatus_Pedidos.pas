 unit Estatus_Pedidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, {Grids, RXGrids,} ToolWin, Menus, ImgList, StdCtrls, {Mask,}
  RxToolEdit, ExtCtrls, RXSplit, TBXStatusBars, ActnList, DBCtrls, Db,
  DBGrids, DBTables, RxPlacemnt, StrMan, IniFiles,
  IB_UpdateBar, IB_NavigationBar, IB_Controls, IB_Components, IB_Grid,
  IB_TransactionBar, Buttons, RXCtrls, Grids, Mask,
  AxCtrls, OleCtrls, VCIF1Lib_TLB,
  TB2Dock, TB2Toolbar, TB2ExtItems, TBXExtItems, TBX, TB2Item,
  IB_StoredProc, HHelp,
  RzCommon, rxCurrEdit, RzPanel, RzSplit, RzButton,
  RzEdit, RzLabel, RzTabs, RzBtnEdt, RzCmboBx, RXSpin, RzRadChk, RzSpnEdt,
  ESBDates, LibApp, StringLib, FormulaOneLib,
  ClsOrdenSurtido, ClsDirEntrega;

//Indicar el estado del Docto al estar editandolo
type TDocState = (edInsert, edBrowse, edCancel);
type
  TfrmEstat_Pedidos = class(TForm)
    ImageList1: TImageList;
    Dock971: TTBXDock;
    tlbMain: TTBXToolbar;
    ToolbarSep972: TTBXSeparatorItem;
    tbtImprimir: TTBXItem;
    tbtListar: TTBXItem;
    ToolbarSep977: TTBXSeparatorItem;
    Timer1: TTimer;
    tbtGrabarComent: TTBXItem;
    icuRep: TIB_Cursor;
    FormStorage1: TFormStorage;
    RzFrameController1: TRzFrameController;
    tbtSalir: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem4: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    dfsStatusBar1: TTBXStatusBar;
    sbMsg1: TRzLabel;
    sbMsg2: TRzLabel;
    pgcOpciones: TRzPageControl;
    TabSheet5: TRzTabSheet;
    RzLabel17: TRzLabel;
    RzLabel18: TRzLabel;
    zfeFechaIni: TRzDateTimeEdit;
    zfeFechaFin: TRzDateTimeEdit;
    btnListar: TRzBitBtn;
    TabSheet6: TRzTabSheet;
    RzPanel1: TRzPanel;
    Label2: TLabel;
    Label3: TLabel;
    rbtCodigo: TRzRadioButton;
    rbtDescripcion: TRzRadioButton;
    rbtUbicacion: TRzRadioButton;
    cboNumAlmac: TComboBox;
    rbtTarima: TRzRadioButton;
    RzSplitter1: TRzSplitter;
    pgcMain: TRzPageControl;
    tshListado: TRzTabSheet;
    tshImpresion: TRzTabSheet;
    RzPageControl1: TRzPageControl;
    TabSheet3: TRzTabSheet;
    TabSheet4: TRzTabSheet;
    RzSplitter2: TRzSplitter;
    F1: TF1Book;
    F2: TF1Book;
    tshReportes: TRzTabSheet;
    F11: TF1Book;
    F12: TF1Book;
    icuPed: TIB_Cursor;
    icuDet: TIB_Cursor;
    RzGroupBox1: TRzGroupBox;
    spnIntervalo: TRzSpinner;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    tbtAutoListar: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXSubmenuItem1: TTBXSubmenuItem;
    tbtSortPedido1: TTBXItem;
    tbtSortPedido2: TTBXItem;
    tbtSortPedido3: TTBXItem;
    tbtSortPedido4: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    tbtSortPartida10: TTBXItem;
    tbtSortPartida11: TTBXItem;
    tbtSortPartida12: TTBXItem;
    TBXSubmenuItem2: TTBXSubmenuItem;
    tbtFindF1: TTBXItem;
    tbtFindF2: TTBXItem;
    TabSheet1: TRzTabSheet;
    RzGroupBox2: TRzGroupBox;
    chkDialogoImpre: TRzCheckBox;
    tbtOpciones: TTBXItem;
    grpPedido: TRzGroupBox;
    grpPartidas: TRzGroupBox;
    lblPedidoVentas: TRzLabel;
    mmzPedidoVentas: TRzMemo;
    lblPedidoalmacen: TRzLabel;
    mmzPedidoAlmacen: TRzMemo;
    lblPartidaVentas: TRzLabel;
    mmzPartidaVentas: TRzMemo;
    lblPartidaAlmacen: TRzLabel;
    mmzPartidaAlmacen: TRzMemo;
    lblPedidoCxC: TRzLabel;
    mmzPedidoCxC: TRzMemo;
    tbtAutorizar: TTBXItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    tbtCerrar: TTBXItem;
    tbtCancelar: TTBXItem;
    tbtEliminar: TTBXItem;
    tbtListarTodo: TTBXItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtSalirClick(Sender: TObject);
    procedure tbtOpcionesClick(Sender: TObject);
    procedure SetUp;
    procedure LoadF1;
    procedure LoadF2;
    procedure LoadF11;
    procedure PrepareSQL(AOpcion:SmallInt);
    procedure UpdateControls;
    procedure ShowHeadersF1(ATrueFalse:Boolean);
    procedure ShowHeadersF2(ATrueFalse:Boolean);
    procedure ListarPedidos;
    procedure ListarDetalle;
    procedure Timer1Timer(Sender: TObject);
    procedure tbtListarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbtAutoListarClick(Sender: TObject);
    procedure F2Enter(Sender: TObject);
    procedure Encender_AutoListado;
    procedure Apagar_AutoListado;
    procedure AsignarSurtidor;
    procedure F1Click(ASender: TObject; nRow, nCol: Integer);
    procedure F1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbtAsignarClick(Sender: TObject);
    procedure Resaltar1(ARen,ATipo:Integer);
    procedure Resaltar2(ARen,ATipo:Integer);
    procedure LlenaOrden;
    procedure tbtImprimirClick(Sender: TObject);
    procedure Imprimir;
    procedure pgcMainChange(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbtGrabarComentClick(Sender: TObject);
    procedure tbtEntregadoClick(Sender: TObject);
    procedure Grabar_Surtido;
    procedure Grabar_Entregado;
    procedure Captura_Surtida;
    procedure Grabar_Cantidad_Surtida;
    procedure Llena_Comentarios;
    procedure Grabar_Comentarios;
    procedure btnCompletoModClick(Sender: TObject);
    procedure btnCompleto1Click(Sender: TObject);
    procedure tbtFindF1Click(Sender: TObject);
    procedure tbtFindF2Click(Sender: TObject);
    procedure btnImprimirCopiaClick(Sender: TObject);
    procedure Autorizar_Pedido;
    procedure tbtAutorizarClick(Sender: TObject);
    procedure F1SelChange(Sender: TObject);
    procedure mmzPedidoVentasEnter(Sender: TObject);
    procedure mmzPedidoVentasChange(Sender: TObject);
    procedure mmzPedidoAlmacenChange(Sender: TObject);
    procedure mmzPedidoCxCChange(Sender: TObject);
    procedure mmzPartidaVentasChange(Sender: TObject);
    procedure mmzPartidaAlmacenChange(Sender: TObject);
    procedure F2SelChange(Sender: TObject);
    procedure tbtCerrarClick(Sender: TObject);
    procedure Grabar_Cerrado;
    procedure Grabar_Cancelado;
    procedure Grabar_Eliminado;
    procedure tbtCancelarClick(Sender: TObject);
    procedure tbtEliminarClick(Sender: TObject);
    procedure tbtListarTodoClick(Sender: TObject);
    procedure TBXItem4Click(Sender: TObject);
    procedure SortPedidos(AOpcion:Integer);
    procedure SortPartidas(AOpcion:Integer);
    procedure tbtSortPedido1Click(Sender: TObject);
    procedure tbtSortPartida10Click(Sender: TObject);
  private
    { Private declarations }
    FTipo_Docto:Integer;
  public
    { Public declarations }
    property Tipo_Docto:Integer read FTipo_Docto write FTipo_Docto;
  end;

type
  TBook = Record
    Row   : Integer;
    Col   : Integer;
    RowIni: Integer;
    ColIni: Integer;
    RowEnd: Integer;
    ColEnd: Integer;
    RowEndPrint: Integer;
  end;

  TCol1 = Record
    OS           :Integer;
    FH_Recibido  :Integer;
    Surtidor     :Integer;
    FH_Entregado :Integer;
    NumDocto     :Integer;
    FecDocto     :Integer;
    CodCteProv   :Integer;
    NombreCte    :Integer;
    NumAgente    :Integer;
    NomAgente    :Integer;
    Docto_Id     :Integer;
    Completo     :Integer;
    ComCxC       :Integer;
    ComVentasP   :Integer;
    ComAlmacenP  :Integer;
  end;

  TCol2 = Record
    Estatus       :Integer;
    NumMovto      :Integer;
    CodProdSer    :Integer;
    DescripPro    :Integer;
    UniVta        :Integer;
    Existencia    :Integer;
    Cantidad_P    :Integer;
    Cantidad_S    :Integer;
    Ubicacion     :Integer;
    Tarima        :Integer;
    Detalle_Id    :Integer;
    ComVentasD   :Integer;
    ComAlmacenD  :Integer;
  end;

type
  OLE_COLOR = DWORD;

const
  UPD:Integer = 1;
  DEL:Integer = 0;

var
  frmEstat_Pedidos: TfrmEstat_Pedidos;
  iType:SmallInt;
  mfLoading,mfShowMsg,mfConfirmar:Boolean;
  ColSet: set of 1..200;
  miRowIni:Integer = 6;
  miRowPedido:Integer;
  miColIni:INteger = 2;
  mrRes,miLast:Integer;
  mfLiberacionAutomatica:Boolean;
  aF1: array[1..5] of TBook;
  aF2: array[1..5] of TBook;
  aF11: array[1..5] of TBook;
  rC1:TCol1;
  rC2:TCol2;
  mfLast20 : Boolean;
  oOS: TOrdenSurtido;
  oDE: TDirEntrega;
  oF1:TF1Lib;

implementation

uses Main, DM_MBA, MsgError, AsignarSurtidor;

{$R *.DFM}


{$REGION '=== Eventos Forma'}
procedure TfrmEstat_Pedidos.FormCreate(Sender: TObject);
begin
//    tFile := LibApp.GetIniFile;
//    oF1  := TF1Lib.Create;
//    oUP := TUbicacion.Create;
//    oProd := TProducto.Create;

  oOS:= TOrdenSurtido.Create;
  oParam.CODPAR := 'LIBERAPEDIDO';
  mfLiberacionAutomatica := (oParam.ESNUMERICO = 1);

  oDE:= TDirEntrega.Create;

  frmAsignarSurtidor:= TfrmAsignarSurtidor.Create(Application);

  mfLoading := True;
  SetUp;

  LoadF1;
  LoadF2;
  LoadF11;
//  Columnas que no se pueden modificar en el F1...
  ColSet := [1];
  miLast := 1; //Ultima accion: Show

  UpdateControls;
  mfLoading := False;

end;

procedure TfrmEstat_Pedidos.FormShow(Sender: TObject);
begin
  pgcMain.ActivePageIndex := 0;
  F1.SetFocus;
  ListarPedidos;
  Encender_AutoListado;
end;

procedure TfrmEstat_Pedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    frmEstat_Pedidos := nil;
    FreeandNil(oOS);
    FreeandNil(oDE);
    FreeAndNil(frmAsignarSurtidor);
    Action := caFree;
end;

procedure TfrmEstat_Pedidos.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    //    VK_ESCAPE: Crear;
    VK_F3: tbtListarClick(Sender);
    VK_F4: tbtListarTodoClick(Sender);
    VK_F5: tbtAsignarClick(Sender);
    VK_F6: tbtImprimirClick(Sender);
    VK_F7: tbtGrabarComentClick(Sender);
    VK_F8: tbtEntregadoClick(Sender);
  end;

end;

{$ENDREGION}
{$REGION '=== Eventos Barra Herramientas'}
procedure TfrmEstat_Pedidos.tbtAsignarClick(Sender: TObject);
begin
  AsignarSurtidor;
end;

procedure TfrmEstat_Pedidos.tbtAutoListarClick(Sender: TObject);
begin
  if (sender as TTBXItem).Checked then begin
    Apagar_AutoListado;
  end else begin
    Encender_AutoListado;
  end;

end;

procedure TfrmEstat_Pedidos.tbtAutorizarClick(Sender: TObject);
begin
  Autorizar_Pedido;
end;

procedure TfrmEstat_Pedidos.tbtCancelarClick(Sender: TObject);
var
  mr:Integer;
begin
 Apagar_AutoListado;
 Application.ProcessMessages;
 frmMsg.ClearAll;
 frmMsg.SetStyle(smUrgent);
 frmMsg.AddMsg('La Orden se CANCELARA y se eliminará definitivamente !!');
 frmMsg.Question := 'Deseas continuar??';
 mr := frmMsg.ShowModal;

 if mr = mrOk then
    Grabar_Cancelado;

end;

procedure TfrmEstat_Pedidos.tbtCerrarClick(Sender: TObject);
var
  mr:Integer;
begin
 Apagar_AutoListado;
 Application.ProcessMessages;

 frmMsg.ClearAll;
 frmMsg.SetStyle(smUrgent);
 frmMsg.AddMsg('La Orden se cerrará y ya NO aparecerá en los listados.!!');
 frmMsg.Question := 'Deseas continuar??';
 mr := frmMsg.ShowModal;

 if mr = mrOk then
    Grabar_Cerrado;

end;

procedure TfrmEstat_Pedidos.tbtEliminarClick(Sender: TObject);
var
  mr:Integer;
begin
 Apagar_AutoListado;
 Application.ProcessMessages;
 frmMsg.ClearAll;
 frmMsg.SetStyle(smUrgent);
 frmMsg.AddMsg('El Pedido se eliminará definitivamente!!');
 frmMsg.AddMsg('(De la Lista y de la Base de Datos)');
 frmMsg.Question := 'Deseas continuar??';
 mr := frmMsg.ShowModal;

 if mr = mrOk then
    Grabar_Eliminado;


end;

procedure TfrmEstat_Pedidos.tbtEntregadoClick(Sender: TObject);
begin
  Grabar_Entregado;
end;

procedure TfrmEstat_Pedidos.tbtFindF1Click(Sender: TObject);
begin
  F1.FindDlg;
end;

procedure TfrmEstat_Pedidos.tbtFindF2Click(Sender: TObject);
begin
  F2.FindDlg;
end;

procedure TfrmEstat_Pedidos.tbtImprimirClick(Sender: TObject);
begin
  Imprimir;
  UpdateControls;
end;

procedure TfrmEstat_Pedidos.tbtListarClick(Sender: TObject);
begin
  PrepareSQL(0);
  ListarPedidos;
end;

procedure TfrmEstat_Pedidos.tbtListarTodoClick(Sender: TObject);
begin
  PrepareSQL(1);
  ListarPedidos;

end;

procedure TfrmEstat_Pedidos.tbtOpcionesClick(Sender: TObject);
begin
  pgcOpciones.Visible := not pgcOpciones.Visible;
end;
procedure TfrmEstat_Pedidos.tbtSalirClick(Sender: TObject);
begin
  Close;
end;
procedure TfrmEstat_Pedidos.tbtGrabarComentClick(Sender: TObject);
begin
  Apagar_AutoListado;
  Grabar_Comentarios;
end;

{$ENDREGION}
{$REGION '=== Eventos Controles'}
//Eventos F1 y F2
procedure TfrmEstat_Pedidos.F1Click(ASender: TObject; nRow, nCol: Integer);
begin
//  ListarPedidos;
  ListarDetalle;
  UpdateControls;
end;

procedure TfrmEstat_Pedidos.F1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //ShowMessage(sm.StrFloat(Key,'0'));
  case Key of
    VK_UP,VK_DOWN, VK_HOME, VK_END, VK_PRIOR, VK_NEXT:
      begin
        ListarDetalle;
      end;
    VK_RETURN:
      begin
        Listardetalle;
      end;
  end;

  UpdateControls;

end;

procedure TfrmEstat_Pedidos.F1SelChange(Sender: TObject);
begin
  Llena_Comentarios;
end;

procedure TfrmEstat_Pedidos.F2Enter(Sender: TObject);
begin
  Apagar_AutoListado;
end;


procedure TfrmEstat_Pedidos.F2SelChange(Sender: TObject);
begin
  LLena_Comentarios;
end;

procedure TfrmEstat_Pedidos.tbtSortPartida10Click(Sender: TObject);
begin
  Apagar_AutoListado;
  SortPartidas((Sender as TTBXItem).Tag);
end;

procedure TfrmEstat_Pedidos.tbtSortPedido1Click(Sender: TObject);
begin
  Apagar_AutoListado;
  SortPedidos((Sender as TTBXItem).Tag);
end;

procedure TfrmEstat_Pedidos.TBXItem4Click(Sender: TObject);
begin
    ShowHelp('frmOrdenes_Surtido');
end;

procedure TfrmEstat_Pedidos.Timer1Timer(Sender: TObject);
begin
//  MessageDlg('Voy a listar', mtWarning, [mbOK], 0);
  ListarPedidos;
end;

//Area Acciones e Info
procedure TfrmEstat_Pedidos.btnCompleto1Click(Sender: TObject);
begin
  Captura_Surtida;
  Grabar_Surtido;
end;

procedure TfrmEstat_Pedidos.btnCompletoModClick(Sender: TObject);
begin
  Captura_Surtida;
end;



procedure TfrmEstat_Pedidos.btnImprimirCopiaClick(Sender: TObject);
begin
  LlenaOrden;
  F11.FilePrint(chkDialogoImpre.Checked);
end;

procedure TfrmEstat_Pedidos.mmzPartidaAlmacenChange(Sender: TObject);
begin
  F2.TextSRC[1,F2.Row,rC2.ComAlmacenD] := mmzPartidaAlmacen.Text;
end;

procedure TfrmEstat_Pedidos.mmzPartidaVentasChange(Sender: TObject);
begin
  F2.TextSRC[1,F2.Row,rC2.ComVentasD] := mmzPartidaVentas.Text;
end;

procedure TfrmEstat_Pedidos.mmzPedidoAlmacenChange(Sender: TObject);
begin
  F1.TextSRC[1,F1.Row,rC1.ComAlmacenP] := mmzPedidoAlmacen.Text;

end;

procedure TfrmEstat_Pedidos.mmzPedidoCxCChange(Sender: TObject);
begin
  F1.TextSRC[1,F1.Row,rC1.ComCxC] := mmzPedidoCxC.Text;

end;

procedure TfrmEstat_Pedidos.mmzPedidoVentasChange(Sender: TObject);
begin
  F1.TextSRC[1,F1.Row,rC1.ComVentasP] := mmzPedidoVentas.Text;

end;

procedure TfrmEstat_Pedidos.mmzPedidoVentasEnter(Sender: TObject);
begin
  Apagar_AutoListado;
end;

procedure TfrmEstat_Pedidos.pgcMainChange(Sender: TObject);
begin
  if pgcMain.ActivePageIndex = 1 then   LlenaOrden;


end;



{$ENDREGION}
{$REGION '=== Procesos Inicializacion'}
procedure TfrmEstat_Pedidos.SetUp;
begin
  rC1.OS           := 2;
  rC1.FH_Recibido  := 3;
  rC1.Surtidor     := 4;
  rC1.FH_Entregado := 5;
  rC1.NumDocto     := 6;
  rC1.FecDocto     := 7;
  rC1.CodCteProv   := 8;
  rC1.NombreCte    := 9;
  rC1.NumAgente    := 10;
  rC1.NomAgente    := 11;
  rC1.Docto_Id     := 13;
  rC1.Completo     := 14;
  rC1.ComCxC       := 15;
  rC1.ComVentasP   := 16;
  rC1.ComAlmacenP  := 17;


  rC2.Estatus      := 2;
  rC2.NumMovto     := 3;
  rC2.CodProdSer   := 4;
  rC2.DescripPro   := 5;
  rC2.UniVta       := 6;
  rC2.Existencia   := 7;
  rC2.Cantidad_P   := 8;
  rC2.Cantidad_S   := 9;
  rC2.Ubicacion    := 10;
  rC2.Detalle_Id   := 14;
  rC2.ComVentasD   := 15;
  rC2.ComAlmacenD  := 16;

  DM1.FillAlmacen (cboNumAlmac);
  if cboNumAlmac.Items.Count > 0 then cboNumAlmac.ItemIndex := 0;

  PrepareSQL(0);

end;

procedure TfrmEstat_Pedidos.LoadF1;
var
  i:Integer;
  tFile,tDir:String;
begin
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'FMT_LISTAPEDIDOS.xls';
    tFile := tDir+tFile;
    F1.Read (tFile,iType);
    for i := 1 to 1 do begin
      F1.Sheet := i;
      F1.FixedRows := 5;
      F1.PrintTitles := 'A1:IV7';
      F1.AllowDelete := False;
      F1.ShowEditBar := False;
      F1.Modified := False;
      F1.ShowSelections := F1On;
      F1.ShowColHeading := False;
//      F1.RowMode := True;
    end;
    F1.Sheet :=1;
    F1.TextRC[2,2] := oEmp.RAZSOCIAL;
    F1.TextRC[3,2] := sm.NthWord(2,cboNumAlmac.Text,['|']);

    aF1[1].RowIni := F1.FixedRows + 1;
    aF1[1].RowEnd := 0;
    aF1[1].ColIni := 2;
    aF1[1].ColEnd := rC1.NomAgente;
    aF1[1].RowEndPrint := aF1[1].RowEnd + 2;

    ShowHeadersF1(False);

//    oF1.F1 := F1;

end;
procedure TfrmEstat_Pedidos.LoadF2;
var
  i:Integer;
  tFile,tDir:String;
begin
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'FMT_LISTAPARTIDAS.xls';
    tFile := tDir+tFile;
    F2.Read (tFile,iType);
    for i := 1 to 1 do begin
      F2.Sheet := i;
      F2.FixedRows := 5;
      F2.PrintTitles := 'A1:IV7';
      F2.AllowDelete := False;
      F2.ShowEditBar := False;
      F2.Modified := False;
      F2.ShowSelections := F1On;
      F2.ShowColHeading := False;
    end;
    F2.Sheet :=1;
    F2.TextRC[2,2] := oEmp.RAZSOCIAL;
    F2.TextRC[3,2] := sm.NthWord(2,cboNumAlmac.Text,['|']);

    aF2[1].RowIni := F1.FixedRows + 1;
    aF2[1].RowEnd := 0;
    aF2[1].ColIni := 2;
    aF2[1].ColEnd := rC1.NomAgente;
    aF2[1].RowEndPrint := aF1[1].RowEnd + 2;

    ShowHeadersF2(False);

end;

procedure TfrmEstat_Pedidos.LoadF11;
var
  i:Integer;
  tFile,tDir:String;
begin
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'FMT_ORDENSURTIDO.xls';
    tFile := tDir+tFile;
    F11.Read (tFile,iType);
    for i := 1 to 1 do begin
      F11.Sheet := i;
      F11.PrintTitles := 'A2:IV12';
      F11.AllowDelete := False;
      F11.ShowEditBar := False;
      F11.Modified := False;
      F11.ShowSelections := F1On;
      F11.ShowColHeading := False;
    end;
    F11.Sheet :=1;
//    F11.TextRC[2,4] := oEmp.RAZSOCIAL;
    F11.TextRC[4,2] := sm.NthWord(2,cboNumAlmac.Text,['|']);

    aF11[1].RowIni := 1;
    aF11[1].RowEnd := 0;
    aF11[1].ColIni := 2;
    aF11[1].ColEnd := rC1.NomAgente;
    aF11[1].RowEndPrint := aF1[1].RowEnd + 2;


end;

procedure TfrmEstat_Pedidos.PrepareSQL(AOpcion:SmallInt);
var
  i:Integer;
  td,tnum:String;
  EsCodigo:Boolean;
begin
  EsCodigo := True;

  if AOpcion = 0 then  //Pendientes...
    with icuPed do begin
      Sql.Clear;
      Sql.Add ('select a.docto_id,a.orden,a.recibido,a.fh_recibido,a.surtidor,a.numdocto,a.fecha,a.codcteprov,b.razsocial,a.numagente,c.Nombagen,a.Asignado,a.Impreso,a.Surtido,a.Entregado, ');
      Sql.Add ('a.Completo,a.Liberado,a.Cerrado,a.FHIns,a.Comentarios_CxC,a.Comentarios_Ven,a.Comentarios_Alm,a.Cancelado ');
      Sql.Add ('from pedidos  a  ');
      Sql.Add ('join MBA10002  b on (a.codcteprov = b.codcteprov)  ');
      Sql.Add ('join MBA10001  c on (a.numagente = c.numagente)  ');
      SqL.Add ('where (a.numalmac = ?p_numalmacen) and (a.entregado <= 0) and ');
      SqL.Add ('      (a.cerrado <=0) and (a.cancelado <=0) ');
      SqL.Add ('order by a.orden;');
      Prepare;
    end;

  if AOpcion = 1 then   //Todos
    with icuPed do begin
      Sql.Clear;
      Sql.Add ('select a.docto_id,a.orden,a.recibido,a.fh_recibido,a.surtidor,a.numdocto,a.fecha,a.codcteprov,b.razsocial,a.numagente,c.Nombagen,a.Asignado,a.Impreso,a.Surtido,a.Entregado, ');
      Sql.Add ('a.Completo,a.Liberado,a.Cerrado,a.FHIns,a.Comentarios_CxC,a.Comentarios_Ven,a.Comentarios_Alm,a.Cancelado ');
      Sql.Add ('from pedidos  a  ');
      Sql.Add ('join MBA10002  b on (a.codcteprov = b.codcteprov)  ');
      Sql.Add ('join MBA10001  c on (a.numagente = c.numagente)  ');
      SqL.Add ('where (a.numalmac = ?p_numalmacen) ');
//      SqL.Add ('    and  (a.liberado >= 1) /*and (cerrado <=0)*/ ');
      SqL.Add ('order by a.orden;');
      Prepare;
    end;

  with icuDet do begin
    Sql.Clear;
    Sql.Add ('select a.detalle_id,a.nummovto,a.codprodser,a.descrippro,a.cantidad_p,a.cantidad_s,a.univta,a.ubicacion,a.estatus,b.ExisIniPer + b.EntPerExis - b.SalPerExis AS Existencia,a.Comentarios_Ven,a.Comentarios_Alm ');
    Sql.Add ('from pedidos_det  a  ');
    Sql.Add ('join MBA10016  b on (a.CodProdSer = b.CodProdSer) and (NumAlmac = ?P_NumAlmacen)  ');
    SqL.Add ('where (a.docto_id = ?p_docto_id) ');
    SqL.Add ('order by a.nummovto; ');
    Prepare;
  end;
end;

{$ENDREGION}
{$REGION '=== Procesos Principales'}
procedure TfrmEstat_Pedidos.ListarPedidos;
var
  tStr, tCod, tDes, tNumAlmacen,tTiempo: string;
  iSheet, iRow, iCol, iTopRow, iLeftCol, iField, iOrden, iCount, Row: Integer;
  tFName, tDescripTec,tSel: string;
  tChar: Char;
  tcChars: TCharSet; //StrMan
  Id:variant;
  fh,fhins:TDateTime;
  dCant:Double;
begin

  Screen.Cursor := crHourglass;
  F1.DoSelChange := False;

  sbMsg1.caption := 'Generando Listado de Pedidos...';
  iRow    := F1.row;
  iCol    := F1.Col;
  iTopRow := F1.TopRow;
  iLeftCol:= F1.LeftCol;

  LoadF1;

  iSheet := 1;
  F1.Sheet := iSheet;
  F1.TextSRC[iSheet,3,2] := sm.NthWord(2,cboNumAlmac.Text,['|']);
  aF1[iSheet].RowIni := miRowIni;

  rbtCodigo.Checked := True;

  iCount := 0;

//  F1.SetFocus;
  F1.Sheet := 1;

  tNumAlmacen := Trim(sm.NthWord(1, cboNumAlmac.Text, ['|']));


  icuPed.Prepare;
  icuPed.ParamByName('p_NumAlmacen').AsString := tNumAlmacen;
  icuPed.Open;

  iSheet := 1;
  Row := miRowIni;
  icuPed.First;
  while not icuPed.Eof do begin
      Id:= icuPed.fieldbyName('DOCTO_ID').AsInteger;
      iOrden := icuPed.fieldbyName('ORDEN').AsInteger;
      fhins   := icuPed.fieldbyName('FHINS').AsDateTime;
      tTiempo := ESBDates.ElapsedTimeStr (fhins, Date+Time);
      if iOrden > 0 then begin
        F1.NumberSRC[iSheet,Row,rC1.OS]            := iOrden;
        fh := icuPed.fieldbyName('FH_RECIBIDO').AsDateTime;
        F1.NumberSRC[iSheet,Row,rC1.FH_Recibido]   := fh;
        tTiempo := ESBDates.ElapsedTimeStr (fh, Date+Time);
      end;
      F1.TextSRC[iSheet,Row,rC1.FH_Entregado]    := tTiempo;
      F1.TextSRC[iSheet,Row,rC1.Surtidor]        := icuPed.fieldbyName('SURTIDOR').AsString;
      F1.TextSRC[iSheet,Row,rC1.NumDocto]        := icuPed.fieldbyName('NUMDOCTO').AsString;
      F1.NumberSRC[iSheet,Row,rC1.FecDocto]      := icuPed.fieldbyName('FECHA').AsDateTime;
      F1.TextSRC[iSheet,Row,rC1.CodCteProv]      := icuPed.fieldbyName('CODCTEPROV').AsString;
      F1.TextSRC[iSheet,Row,rC1.NombreCte]       := icuPed.fieldbyName('RAZSOCIAL').AsString;
      F1.TextSRC[iSheet,Row,rC1.NumAgente]       := icuPed.fieldbyName('NUMAGENTE').AsString;
      F1.TextSRC[iSheet,Row,rC1.NomAgente]       := icuPed.fieldbyName('NOMBAGEN').AsString;
      F1.NumberSRC[iSheet,Row,rC1.Docto_Id]      := Id;
      F1.TextSRC[iSheet,Row,rC1.ComCxC]          := icuPed.fieldbyName('COMENTARIOS_CXC').AsString;
      F1.TextSRC[iSheet,Row,rC1.ComVentasP]      := icuPed.fieldbyName('COMENTARIOS_VEN').AsString;
      F1.TextSRC[iSheet,Row,rC1.ComAlmacenP]     := icuPed.fieldbyName('COMENTARIOS_ALM').AsString;

      iCount := iCount + 1;
      if (iCount mod 10 = 0) then Application.ProcessMessages;

      if icuPed.fieldbyName('LIBERADO').AsSmallInt = 0 then Resaltar1(Row,5);
      if (icuPed.fieldbyName('SURTIDO').AsSmallInt  = 1) then begin
        if (icuPed.fieldbyName('COMPLETO').AsSmallInt  = 1) then
          Resaltar1(Row,4)
        else
          Resaltar1(Row,9)
      end else begin
        if (icuPed.fieldbyName('IMPRESO').AsSmallInt  = 1) then
          Resaltar1(Row,2)
        else
          if (icuPed.fieldbyName('ASIGNADO').AsSmallInt = 1) then
            Resaltar1(Row,1)
      end;
      if icuPed.fieldbyName('CANCELADO').AsSmallInt  = 1 then
        Resaltar1(Row,12)
      else
        if icuPed.fieldbyName('CERRADO').AsSmallInt  = 1   then
          Resaltar1(Row,11)
        else
          if icuPed.fieldbyName('ENTREGADO').AsSmallInt  = 1 then
            Resaltar1(Row,10);



      icuPed.Next;
      Row := Row + 1;
    end;
  icuPed.Close;

  aF1[iSheet].RowEnd := Row - 1;
  aF1[iSheet].ColEnd := rC1.ComAlmacenP;
  F1.MaxRow := Row;
  aF1[iSheet].RowEndPrint := Row;

//  F1.SetSelection(1, 2, aF1[iSheet].RowEndPrint, rC1.NomAgente);
//  F1.SetPrintAreaFromSelection;

  F1.Sheet := 1;

  if iRow    > Row then iRow    := Row;
  if iTopRow > Row then iTopRow := Row;

  F1.Row    := iRow;
  F1.Col    := iCol;
  F1.TopRow := iTopRow;
  F1.LeftCol:= iLeftCol;
  F1.SetSelection(F1.Row,F1.Col, F1.Row, F1.Col);

  ListarDetalle;
  UpdateControls;

//Ordenar el reporte...

//  axnSort;

  Screen.Cursor := crDefault;
  sbMsg1.caption := 'Ultimo Listado: '+ESBDates.Date2StrDateTime(Date+Time);

  F1.DoSelChange := True;

end;

procedure TfrmEstat_Pedidos.ListarDetalle;
var
  tStr, tCod, tDes, tNumAlmacen: string;
  iSheet, iTopRow, iLeftCol, iRow, iCol,Docto_Id, iPartida, iCount, Row: Integer;
  tFName, tDescripTec,tSel: string;
  tChar: Char;
  tcChars: TCharSet; //StrMan
  Id:variant;
  fh:TDateTime;
  dCant,dSur,dPed:Double;
  v:Variant;
  iStDet:SmallInt;
begin

  F2.DoSelChange := False;

  miRowPedido := F1.Row;
  v := F1.NumberRC[F1.Row,rC1.Docto_Id];

  iRow    := F2.Row;
  iCol    := F2.Col;
  iTopRow := F2.TopRow;
  iLeftCol:= F2.LeftCol;

  LoadF2;

  Docto_Id := v;
  if Docto_id <= 0 then exit;

  Screen.Cursor := crHourglass;

  sbMsg1.caption := 'Listando Detalle de Pedidos...';

  iSheet := 1;
  F2.Sheet := iSheet;
  F2.TextSRC[iSheet,3,2] := sm.NthWord(2,cboNumAlmac.Text,['|']);
  F2.TextSRC[iSheet,4,8] := F1.TextSRC[iSheet,F1.Row,rC1.NumDocto];
  aF2[iSheet].RowIni := miRowIni;

  rbtCodigo.Checked := True;

  iCount := 0;

//  F2.SetFocus;
  F2.Sheet := 1;

  tNumAlmacen := Trim(sm.NthWord(1, cboNumAlmac.Text, ['|']));

  icuDet.Prepare;
  icuDet.ParamByName('p_Docto_Id').AsInteger := Docto_Id;
  icuDet.ParamByName('p_NumAlmacen').AsString := tNumAlmacen;
  icuPed.Open;

  iSheet := 1;
  Row := miRowIni;
  icuDet.First;
  while not icuDet.Eof do begin
      Id:= icuDet.fieldbyName('DETALLE_ID').AsInteger;
      iStDet := icuDet.fieldbyName('ESTATUS').AsSmallInt;
      F2.NumberSRC[iSheet,Row,rC2.Estatus] := iStDet;
      iPartida  := sm.ToI(icuDet.fieldbyName('NUMMOVTO').AsString);
      F2.NumberSRC[iSheet,Row,rC2.NumMovto]       := iPartida;
      F2.TextSRC[iSheet,Row,rC2.CodProdSer]       := icuDet.fieldbyName('CODPRODSER').AsString;
      F2.TextSRC[iSheet,Row,rC2.DescripPro]       := icuDet.fieldbyName('DESCRIPPRO').AsString;
      dPed := icuDet.fieldbyName('CANTIDAD_P').AsDouble;
      F2.NumberSRC[iSheet,Row,rC2.Cantidad_P]     := dPed;
      dSur     := icuDet.fieldbyName('CANTIDAD_S').AsDouble;
      F2.NumberSRC[iSheet,Row,rC2.Cantidad_S]     := dSur;
      F2.TextSRC[iSheet,Row,rC2.UniVta]           := icuDet.fieldbyName('UNIVTA').AsString;
      F2.NumberSRC[iSheet,Row,rC2.Existencia]     := icuDet.fieldbyName('EXISTENCIA').AsDouble;
      F2.TextSRC[iSheet,Row,rC2.Ubicacion]        := icuDet.fieldbyName('UBICACION').AsString;
      F2.NumberSRC[iSheet,Row,rC2.Detalle_Id]     := icuDet.fieldbyName('DETALLE_ID').AsDouble;
      F2.TextSRC[iSheet,Row,rC2.ComVentasD]       := icuDet.fieldbyName('COMENTARIOS_VEN').AsString;
      F2.TextSRC[iSheet,Row,rC2.ComAlmacenD]      := icuDet.fieldbyName('COMENTARIOS_ALM').AsString;

      iCount := iCount + 1;
      if (iCount mod 10 = 0) then Application.ProcessMessages;

      if (iStDet=1) then Resaltar2(Row,4); //Partida Completa
      if (iStDet=2) then Resaltar2(Row,9); //Partida Incompleta


      icuDet.Next;
      Row := Row + 1;
    end;
  icuDet.Close;

  aF2[iSheet].RowEnd := Row - 1;
  aF2[iSheet].ColEnd := rC2.ComAlmacenD;
  F2.MaxRow := Row;
  aF2[iSheet].RowEndPrint := Row;

//  F2.SetSelection(1, 2, aF2[iSheet].RowEndPrint, rC2.Detalle_Id);
//  F2.SetPrintAreaFromSelection;

  F2.Sheet := 1;

  Row := Row - 1;
  if iRow    > Row then iRow    := Row;
  if iTopRow >= Row then iTopRow := Row;

  F2.Row    := iRow;
  F2.Col    := iCol;
  F2.TopRow := iTopRow;
  F2.LeftCol:= iLeftCol;
  F2.SetSelection(F2.Row,F2.Col, F2.Row, F2.Col);

//Ordenar el reporte...

//  axnSort;

  Screen.Cursor := crDefault;
  sbMsg1.caption := 'Terminado!';

  F2.DoSelChange := True;

end;

procedure TfrmEstat_Pedidos.Captura_Surtida;
var
  tCodPS: string;
  iRen : Integer;
begin
  if mfLoading then exit;

  Apagar_AutoListado;

  for iRen := 6 to F2.MaxRow do
  begin
    tCodPS := F2.TextRC[iRen, rC2.CodProdSer];
    tCodPS := sm.Strip(tCodPS);
    if (length(tCodPS) > 0) then begin
      F2.NumberRC[iRen, rC2.Cantidad_S] := F2.NumberRC[iRen, rC2.Cantidad_P];
    end;
  end;

end;

procedure TfrmEstat_Pedidos.Autorizar_Pedido;
var
  v:Variant;
begin

  Apagar_AutoListado;

  v:=  F1.NumberSRC[1,F1.Row,rC1.Docto_Id];
  oOS.DOCTO_ID := v;
  oOS.USERACT  := oUser.LOGIN;
  oOS.FHACT    := Date+Time;
  oOS.Update_Liberado;
  if oOS.Error = 0 then begin
    sbMsg1.Caption := 'Se actualizó datos de Liberado correctamente!!';
    ListarPedidos;
  end;
  UpdateControls;
end;

procedure TfrmEstat_Pedidos.Grabar_Entregado;
var
  v:Variant;
begin

  Apagar_AutoListado;

  v:=  F1.NumberSRC[1,F1.Row,rC1.Docto_Id];
  oOS.DOCTO_ID := v;
  oOS.USERACT  := oUser.LOGIN;
  oOS.FHACT    := Date+Time;
  oOS.Update_Entregado(1);
  if oOS.Error = 0 then begin
    sbMsg1.Caption := 'Se actualizó datos de Entregado correctamente!!';
    ListarPedidos;
  end;
  UpdateControls;
end;

procedure TfrmEstat_Pedidos.Grabar_Eliminado;
var
  v:Variant;
begin

  Apagar_AutoListado;

  v:=  F1.NumberSRC[1,F1.Row,rC1.Docto_Id];
  oOS.DOCTO_ID := v;
  oOS.DELETE;
  if oOS.Error = 0 then begin
    sbMsg1.Caption := 'El Pedido se ELIMINÓ correctamente!!';
    ListarPedidos;
  end;
  UpdateControls;
end;

procedure TfrmEstat_Pedidos.Grabar_Surtido;
var
  v:Variant;
begin

  Apagar_AutoListado;

  v:=  F1.NumberSRC[1,F1.Row,rC1.Docto_Id];
  oOS.DOCTO_ID := v;
  oOS.USERACT  := oUser.LOGIN;
  oOS.FHACT    := Date+Time;
  oOS.Update_Surtido;
  if oOS.Error = 0 then begin
    sbMsg1.Caption := 'Se actualizó datos de Surtido correctamente!!';
  end;

  Grabar_Cantidad_Surtida;

  UpdateControls;

end;

procedure TfrmEstat_Pedidos.Grabar_Cantidad_Surtida;
var
  tCodPS : String;
  iRen,iPend:Integer;
  iSt,iStDet:SmallInt;
  dPed,dSur:Double;
  v:Variant;
begin
  iPend := 0;

  for iRen := 6 to F2.MaxRow do
  begin
    tCodPS := F2.TextRC[iRen, rC2.CodProdSer];
    tCodPS := sm.Strip(tCodPS);
    if (length(tCodPS) > 0) then begin
      v := F2.NumberRC[iRen, rC2.Detalle_Id];
      oOS.DETALLE_ID := v;
      dSur := F2.NumberRC[iRen, rC2.Cantidad_S];
      dPed := F2.NumberRC[iRen, rC2.Cantidad_P];
      oOS.CANTIDAD_S :=dSur;
      if dSur < dPed then begin
        iPend := iPend + 1;
        iStDet := 2; //Incompleto;
      end else iStDet := 1;
      oOS.USERACT  := oUser.LOGIN;
      oOS.FHACT    := Date+Time;
      oOS.Update_Cantidad_Surtida(iStDet); //1=Comleto, 2=Incompleto
    end;
  end;

  if iPend > 0 then
    iSt := 0
  else
    iSt := 1;


  v:=  F1.NumberSRC[1,F1.Row,rC1.Docto_Id];
  oOS.DOCTO_ID := v;
  oOS.USERACT  := oUser.LOGIN;
  oOS.FHACT    := Date+Time;
  oOS.Update_Completo(iSt);
  if oOS.Error = 0 then begin
    sbMsg1.Caption := 'Se actualizó datos de "Completo" correctamente!!';
    ListarPedidos;
  end;

  UpdateControls;

end;

procedure TfrmEstat_Pedidos.Llena_Comentarios;
begin
  grpPedido.Caption := 'Comentarios del Pedido: ' + F1.TextRC[F1.Row,rC1.NumDocto]+' ';
  mmzPedidoCxC.Text      := F1.TextRC[F1.Row,rC1.ComCxC];
  mmzPedidoVentas.Text   := F1.TextRC[F1.Row,rC1.ComVentasP];
  mmzPedidoAlmacen.Text  := F1.TextRC[F1.Row,rC1.ComAlmacenP];

  grpPartidas.Caption := 'Comentarios Partida: ' + F2.TextRC[F2.Row,rC2.NumMovto]+' ';
  mmzPartidaVentas.Text  := F2.TextRC[F2.Row,rC2.ComVentasD];
  mmzPartidaAlmacen.Text := F2.TextRC[F2.Row,rC2.ComAlmacenD];
end;

procedure TfrmEstat_Pedidos.Grabar_Comentarios;
var
  tCodPS : String;
  iRen,iPend:Integer;
  iSt,iStDet:SmallInt;
  dPed,dSur:Double;
  v:Variant;
begin

  v:=  F1.NumberSRC[1,F1.Row,rC1.Docto_Id];

  oOS.DOCTO_ID := v;
  oOS.COMENTARIOS_CXC := F1.TextSRC[1,F1.Row,rC1.ComCxC];
  oOS.COMENTARIOS_VEN := F1.TextSRC[1,F1.Row,rC1.ComVentasP];
  oOS.COMENTARIOS_ALM := F1.TextSRC[1,F1.Row,rC1.ComAlmacenP];
  oOS.USERACT  := oUser.LOGIN;
  oOS.FHACT    := Date+Time;
  oOS.Update_Comentarios_Pedido;
  if oOS.Error = 0 then begin
    sbMsg1.Caption := 'Se actualizó datos de "Comentarios de Pedidos" correctamente!!';
  end;

  for iRen := 6 to F2.MaxRow do
  begin
    tCodPS := F2.TextRC[iRen, rC2.CodProdSer];
    tCodPS := sm.Strip(tCodPS);
    if (length(tCodPS) > 0) then begin
      v := F2.NumberRC[iRen, rC2.Detalle_Id];
      oOS.DETALLE_ID := v;
      oOS.COMENTARIOS_VEN_PAR :=F2.TextRC[iRen, rC2.ComVentasD];
      oOS.COMENTARIOS_ALM_PAR :=F2.TextRC[iRen, rC2.ComAlmacenD];
      oOS.ACCION_VEN :=0;
      oOS.ACCION_ALM :=0;
      oOS.USERACT  := oUser.LOGIN;
      oOS.FHACT    := Date+Time;
      oOS.Update_Comentarios_Partida;
    end;
  end;

  UpdateControls;

end;

procedure TfrmEstat_Pedidos.Grabar_Cerrado;
var
  v:Variant;
begin

  Apagar_AutoListado;

  v:=  F1.NumberSRC[1,F1.Row,rC1.Docto_Id];
  oOS.DOCTO_ID := v;
  oOS.USERACT  := oUser.LOGIN;
  oOS.FHACT    := Date+Time;
  oOS.Update_Cerrado(1);
  if oOS.Error = 0 then
    sbMsg1.Caption := 'La Orden se CANCELÓ correctamente!!'
  else
    sbMsg1.Caption := 'Hubo error al tratar de Cancelar la Orden!!';
  ListarPedidos;
  UpdateControls;
end;

procedure TfrmEstat_Pedidos.Grabar_Cancelado;
var
  v:Variant;
begin

  Apagar_AutoListado;

  v:=  F1.NumberSRC[1,F1.Row,rC1.Docto_Id];
  oOS.DOCTO_ID := v;
  oOS.USERACT  := oUser.LOGIN;
  oOS.FHACT    := Date+Time;
  oOS.Update_Cancelado(1);
  if oOS.Error = 0 then begin
    sbMsg1.Caption := 'La Orden se canceló correctamente!!';
  end else begin
     MessageDlg('ERROR al cancelar la Orden!!', mtError, [mbOK], 0);
  end;
  ListarPedidos;
  UpdateControls;
end;

procedure TfrmEstat_Pedidos.Imprimir;
var
  v:Variant;
begin

  Apagar_AutoListado;

  LlenaOrden;
  F11.FilePrint(chkDialogoImpre.Checked);

  v:=  F1.NumberSRC[1,F1.Row,rC1.Docto_Id];
  oOS.DOCTO_ID := v;
  oOS.USERACT  := oUser.LOGIN;
  oOS.FHACT    := Date+Time;
  oOS.Update_Impresion;
  if oOS.Error = 0 then begin
    Resaltar1(F1.Row,2);
    sbMsg1.Caption := 'Impresion realizada correctamente!!';
  end;

  UpdateControls;

end;

procedure TfrmEstat_Pedidos.LlenaOrden;
var
  t,tSql, tCodPS, tLetra, tSel: string;
  ix, iR1, iR2, iR3, iC1, r, iRen, iVacios, iPartida, iCount, iRLast: integer;
  i,iA, iM, iD, iDias,iCL: Integer;
  tFecha, tCom1, tCom2: string;
  bHayTexto: Boolean;
  tCL: TStringList;
  v: Variant;
begin
  if mfLoading then
    exit;

  LoadF11;

  tCL := TStringList.Create;

  v := F1.NumberRC[F1.Row,rC1.Docto_Id];
  oOS.SelectById(v);

  oDE.IDDIRENTREGA := oOS.DIRENTREGA_ID;
  oDE.SelectById;

  // Llenar datos de la Orden
  F11.TextRC[3, 12] := F1.TextSRC[1,F1.Row,rC1.NumDocto];
  F11.TextRC[4, 12] := F1.FormattedTextSRC[1,F1.Row,rC1.FecDocto];
  F11.TextRC[3, 9] := F1.TextSRC[1,F1.Row,rC1.OS];
  F11.TextRC[4, 9] := F1.FormattedTextSRC[1,F1.Row,rC1.FH_Recibido];
  F11.TextRC[5, 4] := F1.TextSRC[1,F1.Row,rC1.CodCteProv]+ ' ' +
                      F1.TextSRC[1,F1.Row,rC1.NombreCte];
  F11.TextRC[5, 9] := F1.TextSRC[1,F1.Row,rC1.NumAgente]+ ' ' +
                      F1.TextSRC[1,F1.Row,rC1.NomAgente];
  F11.TextRC[5, 13] := F1.TextSRC[1,F1.Row,rC1.Surtidor];

  tCl.Text := oDE.DIR_ENTREGA;
  iCl := sm.Trim(tCL,True);
//  iCL := sm.CountLines(tCl.Text) - 1;
//   sm.TrimRight('#D#A')
  for i := 0 to iCL - 1 do  begin
    F11.TextRC[6+i, 2] := tCL.Strings[i];
  end;

  tCl.Clear;
  tCl.Text := oDE.DATOS_EMBARQUE;
  iCl := sm.Trim(tCL,True);
  for i := 0 to iCL - 1 do  begin
    F11.TextRC[6+i, 9] := tCL.Strings[i];
  end;


  F11.NumberRC[11, 12] := Date+Time;
  F11.TextRC[11, 4] := F1.TextSRC[1,F1.Row,rC1.ComVentasP] + ' / ' +
                      F1.TextSRC[1,F1.Row,rC1.ComAlmacenP];

  iR1 := 13;
  for iRen := 6 to F2.MaxRow do
  begin
    tCodPS := F2.TextRC[iRen, rC2.CodProdSer];
    tCodPS := sm.Strip(tCodPS);
    if (length(tCodPS) > 0) then begin
      iVacios := 0; //Al encontrar un codigo limpio el contador de vacios
      iPartida := iPartida + 1;
      tCom1 := Trim(F2.TextRC[iRen, rC2.ComVentasD]);
      tCom2 := Trim(F2.TextRC[iRen, rC2.ComAlmacenD]);
      F11.NumberRC[iR1, 2]  := F2.NumberRC[iRen, rC2.NumMovto];
      F11.TextRC[iR1, 3]    := F2.TextRC[iRen, rC2.CodProdSer];
      F11.TextRC[iR1, 4]    := F2.TextRC[iRen, rC2.UniVta];
      F11.TextRC[iR1, 5]    := F2.TextRC[iRen, rC2.DescripPro];
      F11.TextRC[iR1, 10]   := F2.TextRC[iRen, rC2.Ubicacion];
      F11.NumberRC[iR1, 11] := F2.NumberRC[iRen, rC2.Existencia];
      F11.NumberRC[iR1, 12] := F2.NumberRC[iRen, rC2.Cantidad_P];
      if F2.NumberRC[iRen, rC2.Cantidad_S] > 0 then
        F11.NumberRC[iR1, 13] := F2.NumberRC[iRen, rC2.Cantidad_S];

      if (length(tCom1) > 0) or (length(tCom2) > 0) then begin
        iR1 := iR1 + 1;
        F11.NumberRC[iR1, 2] := F2.NumberRC[iRen, rC2.NumMovto];
        F11.TextRC[iR1, 3]   := F2.TextRC[iRen, rC2.CodProdSer];
        F11.TextRC[iR1, 5] := tCom1 + ' / ' + tCom2;

      end;
    end else begin
      iVacios := iVacios + 1;
    end;
    iR1 := iR1 + 1;

    if iVacios >= 1 then break;
  end;

  tCL.Free;
  tSel := F11.Selection;
  //  iR1 := aF11.DetLastRow + iCount + aF11.FooterRows+1;
  F11.SetSelection(2, 2, 159, 13);
  F11.SetPrintAreaFromSelection;
  F11.Selection := tSel;

  //Esconder renglones vacios
  iC1 := 2;
  for iR3 := 155 downto iR1 do begin
    if (length(F11.TextRC[iR3, iC1]) <= 0) then begin
      F11.RowHidden[iR3] := True;
    end;
  end;

end;

procedure TfrmEstat_Pedidos.AsignarSurtidor;
var
  tOrden,tPedido:String;
  mr:Integer;
  v:Variant;
begin

  Apagar_AutoListado;

  tOrden  := F1.TextSRC[1,F1.Row,rC1.OS];
  tPedido := F1.TextSRC[1,F1.Row,rC1.NumDocto];

  frmAsignarSurtidor.Orden  := tOrden;
  frmAsignarSurtidor.Pedido := tPedido;
  mr := frmAsignarSurtidor.ShowModal;
  if mr = mrOk then begin
    F1.TextSRC[1,F1.Row,rC1.Surtidor] := frmAsignarSurtidor.Surtidor;
    v:=  F1.NumberSRC[1,F1.Row,rC1.Docto_Id];
    oOS.DOCTO_ID := v;
    oOS.SURTIDOR := frmAsignarSurtidor.Surtidor;
    oOS.USERACT  := oUser.LOGIN;
    oOS.FHACT    := Date+Time;
    oOS.Update_Surtidor;
    if oOS.Error = 0 then begin
      Resaltar1(F1.Row,1);
      sbMsg1.Caption := 'Surtidor actualizado correctamente!!';
    end;
  end;

  UpdateControls;

end;

{$ENDREGION}
{$REGION '=== Procedimientos y Utilerias'}
procedure TfrmEstat_Pedidos.UpdateControls;
Var
  i,iSel:Integer;
  fSel:Boolean;
  tSurtidor:String;
begin
  tSurtidor := F1.TextSRC[1,F1.Row,rC1.Surtidor];
  tSurtidor := Trim(tSurtidor);

  tbtImprimir.Enabled       := (length(tSurtidor) > 0);
  tbtAutorizar.Visible := (oUser.UID > 0);

end;

procedure TfrmEstat_Pedidos.ShowHeadersF1(ATrueFalse:Boolean);
Var
  r:Integer;
begin
  for r := 1 to 3 do begin
    F1.RowHidden[r] := not ATrueFalse;
  end;
end;

procedure TfrmEstat_Pedidos.ShowHeadersF2(ATrueFalse:Boolean);
Var
  r:Integer;
begin
  for r := 1 to 3 do begin
    F2.RowHidden[r] := not ATrueFalse;
  end;
end;

procedure TfrmEstat_Pedidos.Apagar_AutoListado;
begin
  tbtAutoListar.Checked := False;
  Timer1.Enabled := False;
  dfsStatusBar1.Panels[2].ImageIndex := -1;
end;

procedure TfrmEstat_Pedidos.Encender_AutoListado;
begin
  Timer1.Interval := spnIntervalo.Value * 1000;
  Timer1.Enabled := True;
  dfsStatusBar1.Panels[2].ImageIndex := 1;
  tbtAutoListar.Checked := True;
end;

procedure TfrmEstat_Pedidos.Resaltar1(ARen,ATipo:Integer);
var
  iSht:Integer;
  tS:String;
  iPattern:SmallInt;
  pcrFG, pcrBG:OLE_COLOR;

begin
  iSht := F1.Sheet;
  tS := F1.Selection;

  F1.SetSelection(ARen,2,ARen,aF1[iSht].ColEnd);

  if ATipo = 1 then begin
    F1.FontColor := clBlack;
    F1.FontBold := True;
  end;
  if ATipo = 2 then begin
    F1.FontColor := clNavy;
    F1.FontBold := True;
  end;
  if ATipo = 3 then begin
    F1.FontColor := clGreen;
    F1.FontBold := False;
  end;
  if ATipo = 4 then begin
    F1.FontColor := clGreen;
    F1.FontBold := True;
//    F1.SetPattern(1,clLtGray,0);
  end;
  if ATipo = 5 then begin
    F1.FontColor := clMaroon;
    F1.FontBold := True;
  end;
  if ATipo = 8 then begin
    F1.FontColor := clRed;
    F1.FontBold := False;
//    F1.SetPattern(1,clGray,clGray);
  end;
  if ATipo = 9 then begin
    F1.FontColor := clRed;
    F1.FontBold := True;
  end;
  if ATipo = 10 then begin   //Entregado
    F1.SetPattern(1,clSilver,0);
  end;
  if ATipo = 11 then begin   //Cerrado
    F1.SetPattern(1,clLime,0);
  end;
  if ATipo = 12 then begin   //Cancelado
    F1.SetPattern(1,clYellow,0);
  end;

  F1.Selection := tS;
end;

procedure TfrmEstat_Pedidos.Resaltar2(ARen,ATipo:Integer);
var
  iSht:Integer;
  tS:String;
begin
  iSht := F2.Sheet;
  tS := F2.Selection;

  F2.SetSelection(ARen,2,ARen,aF2[iSht].ColEnd);

  if ATipo = 1 then begin
    F2.FontColor := clBlack;
    F2.FontBold := True;
  end;
  if ATipo = 2 then begin
    F2.FontColor := clNavy;
    F2.FontBold := True;
  end;
  if ATipo = 4 then begin
    F2.FontColor := clGreen;
    F2.FontBold := True;
  end;
  if ATipo = 9 then begin
    F2.FontColor := clRed;
    F2.FontBold := True;
  end;

  F2.Selection := tS;
end;

procedure TfrmEstat_Pedidos.SortPedidos(AOpcion:Integer);
var
  iIndex,iSheet,ix:Integer;
  iC1,iC2,iC3:Integer;
begin
  ix:= miLast;
  miLast := ix;

  ix := F1.Sheet;
  iSheet := 1;

  if aF1[iSheet].RowIni >= aF1[iSheet].RowEnd then exit;


case AOpcion of
    1: begin
         iC1 := rC1.NumDocto; iC2:=0; iC3:=0;
       end;
    2: begin
         iC1 := rC1.OS; iC2:=0; iC3:=0;
       end;
    3: begin
         iC1 := rC1.NombreCte; iC2:=0; iC3:=0;
       end;
    4: begin
         iC1 := rC1.NomAgente; iC2:=0; iC3:=0;
       end;
  end;

  F1.Sheet := iSheet;

  F1.Sort3(aF1[iSheet].RowIni,1,aF1[iSheet].RowEnd,aF1[iSheet].ColEnd,True,iC1,iC2,iC3);

  F1.Sheet := ix;


end;

procedure TfrmEstat_Pedidos.SortPartidas(AOpcion:Integer);
var
  iIndex,iSheet,ix:Integer;
  iC1,iC2,iC3:Integer;
begin
  ix:= miLast;
  miLast := ix;

  ix := F2.Sheet;
  iSheet := 1;

  if aF2[iSheet].RowIni >= aF2[iSheet].RowEnd then exit;


case AOpcion of
    10: begin
         iC1 := rC2.NumMovto; iC2:=0; iC3:=0;
       end;
    11: begin
         iC1 := rC2.CodProdSer; iC2:=0; iC3:=0;
       end;
    12: begin
         iC1 := rC2.DescripPro; iC2:=0; iC3:=0;
       end;
    else begin
         iC1 := rC2.NumMovto; iC2:=0; iC3:=0;
       end;
  end;

  F2.Sheet := iSheet;

  F2.Sort3(aF2[iSheet].RowIni,1,aF2[iSheet].RowEnd,aF2[iSheet].ColEnd,True,iC1,iC2,iC3);

  F2.Sheet := ix;


end;


{$ENDREGION}


end.
