unit UbiProdAct2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, RzEdit, RzLabel, RzPanel, RzStatus, ExtCtrls,
  RzCommon, RzBckgnd, ImgList, RzCmboBx, RzButton, IB_Components, Grids,
  IB_Grid, RzTabs, TB2Item, TB2Dock, TB2Toolbar, RzBtnEdt,
  MsgErrorApp,StrMan, StringLib,
  VCIF1Lib_TLB,FormulaOneLib,TBX, OleCtrls,
  ClsUbicaciones, ProductoSearch;


type
  TEstado = (esInsert,esUpdate,esDelete);
  TfrmUbiProdAct2 = class(TForm)
    sbMain: TRzStatusBar;
    sbMsg: TRzGlyphStatus;
    sbEstado: TRzGlyphStatus;
    RzGlyphStatus3: TRzGlyphStatus;
    ImageList1: TImageList;
    pgcMain: TRzPageControl;
    isql1: TIB_DSQL;
    fcz1: TRzFrameController;
    TBXDock1: TTBXDock;
    ttbx1: TTBXToolbar;
    tbtGrabar: TTBXItem;
    tbtSalir: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    Timer1: TTimer;
    TBXSeparatorItem2: TTBXSeparatorItem;
    tbtAyuda: TTBXItem;
    tshGenerales: TRzTabSheet;
    RzLabel1: TRzLabel;
    ebzUbicacion: TRzButtonEdit;
    RzLabel3: TRzLabel;
    enzCantidad: TRzNumericEdit;
    RzLabel5: TRzLabel;
    enzTarima: TRzNumericEdit;
    ebzId: TRzButtonEdit;
    RzLabel6: TRzLabel;
    fraProducto1: TfraProducto;
    RzLabel2: TRzLabel;
    ebzComentarios: TRzButtonEdit;
    TabSheet1: TRzTabSheet;
    lblUbicacion: TRzLabel;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    cboCodigo: TComboBox;
    Label8: TLabel;
    btnListarProducto: TRzBitBtn;
    F2: TF1Book;
    TBXDock2: TTBXDock;
    ImageList2: TImageList;
    ImageList3: TImageList;
    ImageList4: TImageList;
    Toolbar972: TTBXToolbar;
    tbtTodos: TTBXItem;
    tbtNinguno: TTBXItem;
    tbtSel: TTBXItem;
    tbtInvertir: TTBXItem;
    procedure tbtGrabarSalirClick(Sender: TObject);
    procedure tbtCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Select;
    procedure Insertar;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CargaCatalogosCfdi;
    procedure tbtSalirClick(Sender: TObject);
    procedure SetEstado_Insert;
    procedure SetEstado_Update;
    procedure SetEstado_Delete;
    procedure tbtGrabarClick(Sender: TObject);
    procedure Clear;
    procedure FormShow(Sender: TObject);
    procedure SetUp;
    procedure btnListarProductoClick(Sender: TObject);
    procedure BuscarProductos;
    procedure axnLimpiarListado;
    procedure Todo;
    procedure Nada;
    procedure Seleccion;
    procedure Invertir;
    procedure tbtTodosClick(Sender: TObject);
    procedure tbtNingunoClick(Sender: TObject);
    procedure tbtSelClick(Sender: TObject);
    procedure tbtInvertirClick(Sender: TObject);
    procedure PrepareSQL2(ACod,ADes:String);
    procedure F2DblClick(ASender: TObject; nRow, nCol: Integer);
  private
    { Private declarations }
    FoUP: TUbicacion;
    FIdCliente: Integer;
    FCodigo: String;
    FEstado : TEstado;
    FPerfil:SmallInt;
    FNumAlmacen:String;
    FUbicacion:String;
    procedure SetCodigo(pCodigo:String);
    procedure SetoUP(AoUP:TUbicacion);
    procedure SetPerfil(APerfil:SmallInt);
  public
    { Public declarations }
    property oUP: TUbicacion read FoUP write SetoUP;
    property NumAlmacen:String  read FNumAlmacen  write FNumAlmacen;
    property Ubicacion:String   read FUbicacion  write FUbicacion;

  end;




var
  frmUbiProdAct2: TfrmUbiProdAct2;
  mtOk:String = 'l';
  DetCount:integer;
  miRenIni:Integer;

implementation

uses Main, DM_MBA;

{$R *.DFM}
{$REGION '<<Form Events >>'}

procedure TfrmUbiProdAct2.FormCreate(Sender: TObject);
var
  ix:Integer;
begin


  if FoUP = nil then begin
    FoUP := TUbicacion.Create;
  end;
  fraProducto1.Initiate;

  SetUp;
end;

procedure TfrmUbiProdAct2.FormShow(Sender: TObject);
begin
  MainForm.AplicarPerfil2(self);

end;

procedure TfrmUbiProdAct2.F2DblClick(ASender: TObject; nRow, nCol: Integer);
begin
  Seleccion;
end;

procedure TfrmUbiProdAct2.FormActivate(Sender: TObject);
begin
  pgcMain.ActivePageIndex := 0;
  cboCodigo.SetFocus;


end;

procedure TfrmUbiProdAct2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fraProducto1.Terminate;
  Action := caFree;
end;

{$ENDREGION}
procedure TfrmUbiProdAct2.SetUp;
begin
//Encabezados de Listado de Productos
    F2.ColText[1] := 'Sel';
    F2.ColText[2] := 'Codigo';
    F2.ColText[3] := 'Descripcion';
    F2.ColText[4] := 'Familia';
    F2.ColText[5] := 'Cantidad';
    F2.ColText[6] := 'Tarima';

    F2.ShowTabs := 0;
    F2.ShowSelections := 1;
    F2.SetColWidth(1, 1, 1000, False);
    F2.SetColWidth(2, 6, 3000, False);
    F2.SetColWidth(3, 3, 12000, False);


end;

{$REGION '<<Form Properties >>'}

procedure TfrmUbiProdAct2.SetEstado_Insert;
begin
  FEstado := esInsert;
  sbEstado.Caption := 'Asignando...';
  Clear;
  sbMsg.Caption := 'Teclea datos de la ubicación del producto';
  Caption := 'Asignando Producto a Ubicacion';

  ebzId.Text             := sm.StrFloat(FoUP.UbiProd_Id,'0');
  ebzUbicacion.Text      := FoUP.Ubicacion;

end;
procedure TfrmUbiProdAct2.SetEstado_Update;
begin
  FEstado := esUpdate;
  sbEstado.Caption := 'UPDATE';
  Select;

end;
procedure TfrmUbiProdAct2.SetEstado_Delete;
begin
  FEstado := esDelete;
  sbEstado.Caption := 'DELETE';
  Select;

end;


{$ENDREGION}

procedure TfrmUbiProdAct2.Clear;
begin
  fraProducto1.xceCodProdSer.Text      := '';
  fraProducto1.xceDescripPro.Text      := '';
  enzCantidad.Value   := 0;
  enzTarima.Value     := 0;

  Application.ProcessMessages;

end;

procedure TfrmUbiProdAct2.Select;
var
  iCod:Integer;
begin
  sbMsg.Caption := 'Cargando Ubicacion...';
  Application.ProcessMessages;

  foUP.SelectById;

  ebzId.Text             := sm.StrFloat(FoUP.UbiProd_Id,'0');
  ebzUbicacion.Text      := FoUP.Ubicacion;
  fraProducto1.xceCodProdSer.Text := FoUP.CODPRODSER;
  fraProducto1.BuscaProducto;
  enzCantidad.Value      := FoUP.CANTIDAD;
  enzTarima.Value        := FoUP.NUMERO_TARIMA;

  sbMsg.Caption := 'Cargado OK!';
  Application.ProcessMessages;

end;

procedure TfrmUbiProdAct2.Insertar;
var
  iRow,iCount:Integer;
  ptCod,ptDescri,tAux:String;
begin
  sbMsg.Caption := 'Asignando Productos a  Ubicacion...';
  Application.ProcessMessages;
  iCount := 0;

  for iRow := 1 to DetCount do begin
    F2.Row := iRow;
    ptCod := F2.TextRC[iRow, 2];
    ptDescri := F2.TextRC[iRow, 4];
    tAux := F2.TextRC[iRow, 1];
    if (length(tAux) > 0) then begin
      if (length(ptCod) > 0) then begin
//        FoUP.UbiProd_Id   := -1;
//        FoUP.UBICACION    := ebzUbicacion.Text;
        FoUP.CODPRODSER   := F2.TextRC[iRow, 2];
        FoUP.DESCRIPPRO   := F2.TextRC[iRow, 3];;
        FoUP.CODFAMILIA   := F2.TextRC[iRow, 4];;
        FoUP.CANTIDAD     := 0;
        FoUP.NUMERO_TARIMA:= 0;
        FoUP.USERINS      := oUSer.LOGIN;
        FoUP.FHINS        := Date+Time;
        FoUP.USERACT      := oUSer.LOGIN;
        FoUP.FHACT        := Date+Time;
        FoUP.COMENTARIOS  := 'Asignacion Multiple';

        FoUP.Insert;
        if FoUP.Error = 0 then
          iCount := iCount + 1;
      end;
    end;
  end;

//  if FEstado = esInsert then
//    ebzCodCliente.Text := sm.StrFloat(FoCte.IDCLIENTE,'#');

  sbMsg.Caption := 'Se grabaron ' + sm.StrFloat(iCount,'0') + ' articulos!';

//--- Set Estado = Update, pero sin hacer el select...

  Application.ProcessMessages;

end;

procedure TfrmUbiProdAct2.btnListarProductoClick(Sender: TObject);
begin
  BuscarProductos;
end;

procedure TfrmUbiProdAct2.PrepareSQL2(ACod,ADes:String);
var
  i:Integer;
  td,tnum:String;
  EsCodigo:Boolean;
begin

  with DM1.icuTemp do begin
    Sql.Clear;
    Sql.Add ('select a.codprodser,a.codfamilia,a.descrippro ');
    Sql.Add ('from mba10004  a  ');
    if length(ACod) > 0 then begin
      SqL.Add ('where (a.codprodser starting with ?p_Param1) AND (EdoActProd = ''1'')');
    end;
    if length(ADes) > 0 then begin
      SqL.Add ('where (a.DescripPro containing ?p_Param1) AND (EdoActProd = ''1'')');
    end;
    SqL.Add ('order by a.codprodser ');
    Prepare;
  end;

end;

procedure TfrmUbiProdAct2.BuscarProductos;
var
  tStr, tCod, tDes, tNumAlmacen: string;
  iSheet, irow, iCol, iColx, iField, iPos: Integer;
  tFName, tDescripTec: string;
  tChar: Char;
  tcChars: TCharSet; //StrMan

begin

  F2.SetFocus;
  F2.Sheet := 1;
  axnLimpiarListado;
  F2.TopRow := 2;
  F2.LeftCol := 2;

  tStr := cboCodigo.Text;
  tStr := UpperCase(tStr);

  tCod := '';
  tDes := '';

  if POS(',', tStr) > 0 then begin
    tCod := sm.NthWord2(2, tStr,[',']);
  end else begin
    tDes := tStr
  end;

  tChar := StringLib.GetSeparador(tStr);
  if tChar = ',' then
    tcChars := [',']
  else
    tcChars := [' '];

  if (length(tCod) <= 0) and (length(tDes) <= 0) then
  begin
    exit;
  end;

  tCod := UpperCase(tCod);
  tDes := UpperCase(tDes);
  tNumAlmacen := FNumAlmacen;

  PrepareSQL2(tCod,tDes);

  with DM1.icuTemp do
  begin
    Prepare;

    if length(tCod) > 0 then
      ParamByName('p_Param1').AsString := tCod;
    if length(tDes) > 0 then
      ParamByName('p_Param1').AsString := tDes;

    Open;

    iSheet := 1;
    iRow := 1;
    miRenIni := iRow;
    iCol := 1;
    iColx := iCol;

    First;
    while not Eof do
    begin
      F2.TextSRC[iSheet, iRow, 2] := FieldByName('CODPRODSER').AsString;
      F2.TextSRC[iSheet, iRow, 3] := FieldByName('DescripPro').AsString;
      F2.TextSRC[iSheet, iRow, 4] := FieldByName('CodFamilia').AsString;
{      F2.EntrySRC[iSheet, iRow, 4] := '';
      F2.EntrySRC[iSheet, iRow, 5] := FieldByName('ExisTotal').AsString;
      F2.EntrySRC[iSheet, iRow, 6] := FieldByName('PcioVta1').AsString;
      F2.EntrySRC[iSheet, iRow, 7] := FieldByName('PcioVta2').AsString;
      F2.EntrySRC[iSheet, iRow, 8] := FieldByName('PcioVta3').AsString;
      F2.EntrySRC[iSheet, iRow, 10] := FieldByName('PathFoto').AsString;
      tDescripTec := FieldByName('DescripTec').AsString;
      tDescripTec := trim(tDescripTec);
      F2.TExtSRC[iSheet, iRow, 12] := copy(tDescripTec, 1, 250);
      F2.TExtSRC[iSheet, iRow, 13] := copy(tDescripTec, 251, 250);
}
      iRow := iRow + 1;
      Next;
    end;

    DetCount := iRow - 1;
    F2.TopRow := 1;
    F2.LeftCol:= 1;
    F2.Selection := 'A1';

    Close;

  end;
end;

procedure TfrmUbiProdAct2.axnLimpiarListado;
var
  iSheet: integer;
  tSel: string;
begin
  iSheet := F2.Sheet;
  F2.Sheet := 1;
  tSel := F2.Selection;
  F2.ClearRange(1, 1, F2.MaxRow, F2.MaxCol, F1ClearValues);

  F2.SetSelection(1, 2, F2.MaxRow, F2.MaxCol);
  F2.FontBold := False;
  F2.FontColor := clBlack;
  F2.Selection := tSel;
  F2.Sheet := iSheet;
end;

//=====================================================
procedure TfrmUbiProdAct2.Todo;
var i:Integer;
begin
    for i:= miRenIni to DetCount do begin
        F2.TextRC[i,1] := mtOk;
    end;
end;

procedure TfrmUbiProdAct2.Nada;
var i:Integer;
begin
    for i:= miRenIni to DetCount do begin
        F2.TextRC[i,1] := '';
    end;
end;

procedure TfrmUbiProdAct2.Seleccion;
var i:Integer;
    iIni,iFin:Integer;
begin
    iIni := F2.SelStartRow;
    iFin := F2.SelEndRow;
    if iIni > DetCount then exit;
    if iFin > DetCount then iFin := DetCount;
    for i:= iIni to iFin do begin
        if F2.TextRC[i,1] = mtOk then
            F2.TextRC[i,1] := ''
        else
            F2.TextRC[i,1] := mtOk;
    end;
end;

procedure TfrmUbiProdAct2.Invertir;
var i:Integer;
begin
    for i:= miRenIni to DetCount do begin
        if F2.TextRC[i,1] = mtOk then
            F2.TextRC[i,1] := ''
        else
            F2.TextRC[i,1] := mtOk;
    end;
end;


procedure TfrmUbiProdAct2.CargaCatalogosCfdi;
begin

end;

//--------------------------------------------------------
// Propiedad de la forma
//--------------------------------------------------------
procedure TfrmUbiProdAct2.SetoUP(AoUP:TUbicacion);
begin
  FoUP := AoUP;
  lblUbicacion.Caption := FoUP.UBICACION;
  cboCodigo.Text := ','+sm.NthWord(1,FoUP.CODPRODSER,['-']);
  FNumAlmacen := FoUP.NUMALMACEN;
end;

procedure TfrmUbiProdAct2.tbtCloseClick(Sender: TObject);
begin
  ModalResult := mrCancel;

end;

procedure TfrmUbiProdAct2.tbtGrabarClick(Sender: TObject);
begin
  Insertar;

end;

procedure TfrmUbiProdAct2.tbtGrabarSalirClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmUbiProdAct2.tbtInvertirClick(Sender: TObject);
begin
  Invertir;
end;

procedure TfrmUbiProdAct2.tbtNingunoClick(Sender: TObject);
begin
  Nada;
end;

procedure TfrmUbiProdAct2.tbtSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUbiProdAct2.tbtSelClick(Sender: TObject);
begin
  Seleccion;
end;

procedure TfrmUbiProdAct2.tbtTodosClick(Sender: TObject);
begin
  Todo;
end;

procedure TfrmUbiProdAct2.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;

end;

procedure TfrmUbiProdAct2.SetCodigo(pCodigo:String);
begin
  FCodigo := pCodigo;
end;

procedure TfrmUbiProdAct2.SetPerfil(APerfil:SmallInt);
begin
  FPerfil := APerfil;
end;

procedure TfrmUbiProdAct2.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;

end;

end.
