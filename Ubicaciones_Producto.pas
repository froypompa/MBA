unit Ubicaciones_Producto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TB2Dock, TB2Toolbar, ComCtrls, TB2ExtItems, TBXExtItems, TBX, AxCtrls, OleCtrls,
  StdCtrls, Mask, RxToolEdit, Menus, VCIF1Lib_TLB,IniFiles, LibApp, RxPlacemnt,
  RXCtrls, ExtCtrls, RXSpin, ProductoSearch, FamiliaSearch, EsBDates, HHelp,
  rxCurrEdit, TB2Item, IB_Components, FormulaOneLib, RzButton, RzLabel,StringLib,
  RzCmboBx, RzPanel, RzEdit, RzTabs, RzLstBox, RzChkLst, RzStatus, RzRadChk,
  ClsUbicaciones, ClsProducto;

type
  TfrmUbicaciones_Producto = class(TForm)
    dckSincro: TTBXDock;
    tlbMain: TTBXToolbar;
    tbtSalir: TTBXItem;
    pgcSincro: TPageControl;
    tshAct: TTabSheet;
    tshList: TTabSheet;
    tbtImprimir: TTBXItem;
    tbtPrever: TTBXItem;
    tbtGrabar: TTBXItem;
    tbtCreate: TTBXItem;
    ToolbarSep973: TTBXSeparatorItem;
    PopupMenu1: TPopupMenu;
    Fonts1: TMenuItem;
    Numeros1: TMenuItem;
    Bordes1: TMenuItem;
    Alineacion1: TMenuItem;
    Rellenos1: TMenuItem;
    N1: TMenuItem;
    Preferencias1: TMenuItem;
    FormStorage1: TFormStorage;
    TBXSeparatorItem1: TTBXSeparatorItem;
    icuRep: TIB_Cursor;
    icuDet: TIB_Cursor;
    grbSort: TRzGroupBox;
    cboSort: TRzComboBox;
    RzLabel1: TRzLabel;
    btnSort: TRzBitBtn;
    icuProd: TIB_Cursor;
    tbtFormato: TTBXSubmenuItem;
    TBSeparatorItem1: TTBSeparatorItem;
    itmLiberar: TTBXItem;
    itmFijar: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    itmBuscar: TTBXItem;
    itmAyuda: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    RzStatusBar1: TRzStatusBar;
    F1: TF1Book;
    sbMsg: TRzGlyphStatus;
    RzPanel3: TRzPanel;
    tbtEliminar: TTBXItem;
    tbtModificar: TTBXItem;
    tbtAsignar: TTBXItem;
    Label8: TLabel;
    cboCodigo: TComboBox;
    btnListarProducto: TRzBitBtn;
    btnListarUbicacion: TRzBitBtn;
    Label1: TLabel;
    cboUbicacion: TComboBox;
    RzPanel1: TRzPanel;
    Label2: TLabel;
    rbtCodigo: TRzRadioButton;
    rbtDescripcion: TRzRadioButton;
    rbtUbicacion: TRzRadioButton;
    cboNumAlmac: TComboBox;
    Label3: TLabel;
    rbtTarima: TRzRadioButton;
    itmAsignar2: TTBXItem;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    itmHideR: TTBXItem;
    itmShowR: TTBXItem;
    chkEsconder: TRzCheckBox;
    TBXSeparatorItem5: TTBXSeparatorItem;
    itmSelProd: TTBXItem;
    Timer2: TTimer;
    itmClonar: TTBXItem;
    isql1: TIB_DSQL;
    RzGroupBox1: TRzGroupBox;
    chkAfectarExistencias: TRzCheckBox;
    chkConfirmar: TRzCheckBox;
    procedure SetUp;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtSalirClick(Sender: TObject);
    procedure LoadXLS;
    procedure FormCreate(Sender: TObject);
    procedure F1StartEdit(Sender: TObject; var EditString: WideString;
      var Cancel: Smallint);
    procedure F1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbtCreateClick(Sender: TObject);
    procedure axnLimpiar;
    procedure axnLeer;
    procedure axnGrabar;
    procedure axnPrever;
    procedure axnImprimir;
    procedure axnSort;
    procedure SetPrintSelection;
    procedure axnFixRows(ARows:Integer);
    procedure tbtGenerarClick(Sender: TObject);
    procedure tbtGrabarClick(Sender: TObject);
    procedure tbtPreverClick(Sender: TObject);
    procedure tbtImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpdateControls;
    procedure ListarUbicaciones;
    procedure btnSortClick(Sender: TObject);
    procedure itmFijarClick(Sender: TObject);
    procedure itmLiberarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure axnFiltrarVendedores(AShow:Boolean);
    procedure Resaltar1(ARen,ATipo:Integer);
    procedure itmBuscarClick(Sender: TObject);
    procedure itmAyudaClick(Sender: TObject);
    procedure PrepareSQL;
    procedure PrepareSQL2(ACod,ADes:String);
    procedure clzDocChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    procedure F1SelChange(Sender: TObject);
    procedure btnListarProductoClick(Sender: TObject);
    procedure edzCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnLast20Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListarProductos;
    procedure tbtAsignarClick(Sender: TObject);
    procedure tbtModificarClick(Sender: TObject);
    procedure tbtEliminarClick(Sender: TObject);
    procedure Asignar;
    procedure AsignarMultiple;
    procedure Modificar;
    procedure Eliminar;
    procedure rbtCodigoClick(Sender: TObject);
    procedure btnListarUbicacionClick(Sender: TObject);
    procedure cboCodigoSelect(Sender: TObject);
    procedure cboUbicacionSelect(Sender: TObject);
    procedure itmAsignar2Click(Sender: TObject);
    procedure cboCodigoChange(Sender: TObject);
    procedure ShowHide(AAccion:Integer);
    procedure itmShowRClick(Sender: TObject);
    procedure itmHideRClick(Sender: TObject);
    procedure MarkRows(piAction:Integer);
    procedure F1EndEdit(ASender: TObject; var EditString: WideString;
      var Cancel: Smallint);
    procedure GrabarDatos;
    procedure SelectProducto(piOpcion: Integer; ptKey: string);
    procedure Select(ptTabla: string; piOpcion: Integer; ptKey: string);
    procedure itmSelProdClick(Sender: TObject);
    procedure GetProducto(ptCod: string);
    procedure Timer2Timer(Sender: TObject);
    procedure itmClonarClick(Sender: TObject);
    procedure Clonar;
    procedure GrabarConteo(ARow:Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



Type
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
    Codigo       :Integer;
    Familia      :Integer;
    Descripcion  :Integer;
    Cantidad     :Integer;
    Ubicacion    :Integer;
    Tarima       :Integer;
    FH           :Integer;
    User         :Integer;
    Ubi_Prod_Id  :Integer;
  end;

  const
    UPD:Integer = 1;
    DEL:Integer = 0;

var
  frmUbicaciones_Producto: TfrmUbicaciones_Producto;
  iType:SmallInt;
  mfLook,mfShowMsg,mfConfirmar:Boolean;
  ColSet: set of 1..200;
  miRowIni:Integer = 8;
  miRow:Integer;
  miColIni:INteger = 2;
  mrRes,miLast:Integer;
  aB: array[1..5] of TBook;
  aB2: array[1..5] of TBook;
  rC1:TCol1;
  mfLast20 : Boolean;
  oUP:TUbicacion;
  oProd:TProducto;
  oF1:TF1Lib;

implementation

uses Main, DM_MBA, StrMan, msgError, SelTabla, UbiProdAct,UbiProdAct2;

// var WCols: array[1..100] of integer;
{$R *.DFM}

procedure TfrmUbicaciones_Producto.FormCreate(Sender: TObject);
var
  tFile:String;
begin
    tFile := LibApp.GetIniFile;
    oF1  := TF1Lib.Create;
    oUP := TUbicacion.Create;
    oProd := TProducto.Create;
    SetUp;

    LoadXLS;
//  Columnas que no se pueden modificar en el F1...
    ColSet := [1];
    miLast := 1; //Ultima accion: Show

  UpdateControls;

end;

procedure TfrmUbicaciones_Producto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    FreeAndNil(oF1);
    FreeAndNil(oUP);
    FreeAndNil(oProd);
    frmUbicaciones_Producto := nil;
    Action := caFree;
end;

procedure TfrmUbicaciones_Producto.FormActivate(Sender: TObject);
begin
  pgcSincro.ActivePageIndex := 0;
end;

procedure TfrmUbicaciones_Producto.SetUp;
begin
  rC1.Ubicacion   := 2;
  rC1.Codigo      := 3;
  rC1.Familia     := 4;
  rC1.Descripcion := 5;
  rC1.Cantidad    := 6;
  rC1.Tarima      := 7;
  rC1.FH          := 8;
  rC1.User        := 9;
  rC1.Ubi_Prod_Id := 11;

  oUP.FillRacks(cboUbicacion.Items);
  DM1.FillAlmacen (cboNumAlmac);
  if cboNumAlmac.Items.Count > 0 then cboNumAlmac.ItemIndex := 0;


  aB[1].RowIni := miRowIni;
  aB[2].RowIni := miRowIni;
  aB[3].RowIni := miRowIni;

  aB[1].ColIni := rC1.User;
  aB[2].ColIni := miColIni;
  aB[3].ColIni := miColIni;



end;

procedure TfrmUbicaciones_Producto.PrepareSQL;
var
  i:Integer;
  td,tnum:String;
  EsCodigo:Boolean;
begin
  EsCodigo := True;

  with icuRep do begin
    Sql.Clear;
    Sql.Add ('select a.ubicacion ');
    Sql.Add ('from ubicaciones  a  ');
    SqL.Add ('where (a.numalmacen = ?p_numalmacen) and (a.ubicacion starting with ?p_rack) ');
    SqL.Add ('order by a.ubicacion ');
    Prepare;
  end;

  with icuDet do begin
    Sql.Clear;
    Sql.Add ('select b.ubicacion,b.codprodser,b.codfamilia,b.descrippro,b.cantidad,b.numero_tarima,b.fhAct,b.UserAct,b.Activo, b.UbiProd_Id ');
    Sql.Add ('from ubicacion_prod  b  ');
    SqL.Add ('where (b.numalmacen = ?p_numalmacen) and (b.ubicacion = ?p_ubicacion) and (b.activo <=1) ');
    SqL.Add ('order by b.ubicacion ');
    Prepare;
  end;
end;

procedure TfrmUbicaciones_Producto.PrepareSQL2(ACod,ADes:String);
var
  i:Integer;
  td,tnum:String;
  EsCodigo:Boolean;
begin

  with icuRep do begin
    Sql.Clear;
    Sql.Add ('select a.ubicacion,a.codprodser,a.codfamilia,a.descrippro,a.cantidad,a.numero_tarima,a.fhAct,a.UserAct,a.UbiProd_Id ');
    Sql.Add ('from ubicacion_prod  a  ');
    if length(ACod) > 0 then begin
      SqL.Add ('where (a.activo <= 1) and (a.codprodser starting with ?p_Param1) ');
    end;
    if length(ADes) > 0 then begin
      SqL.Add ('where (a.activo <= 1) and (a.DescripPro containing ?p_Param1) ');
    end;
    SqL.Add ('order by a.ubicacion ');
    Prepare;
  end;

end;

procedure TfrmUbicaciones_Producto.rbtCodigoClick(Sender: TObject);
begin
  axnSort;
end;

procedure TfrmUbicaciones_Producto.tbtSalirClick(Sender: TObject);
begin
    close;
end;

procedure TfrmUbicaciones_Producto.cboCodigoChange(Sender: TObject);
begin
  UpdateControls;
end;

procedure TfrmUbicaciones_Producto.cboCodigoSelect(Sender: TObject);
begin
  UpdateControls;
end;

procedure TfrmUbicaciones_Producto.cboUbicacionSelect(Sender: TObject);
begin
  UpdateControls;
end;

procedure TfrmUbicaciones_Producto.clzDocChange(Sender: TObject; Index: Integer;
  NewState: TCheckBoxState);
begin
  UpdateControls;
end;

procedure TfrmUbicaciones_Producto.edzCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN:
      begin
        btnListarProductoClick(nil); //	Delete key
      end;
  else
  end;

end;

procedure TfrmUbicaciones_Producto.LoadXLS;
var
  i:Integer;
  tFile,tDir:String;
begin
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'FMT_UBICACION_PRODUCTO.xls';
    tFile := tDir+tFile;
    F1.Read (tFile,iType);
    for i := 1 to 1 do begin
      F1.Sheet := i;
      F1.FixedRows := 5;
      F1.PrintTitles := 'A1:IV7';
      F1.AllowDelete := False;
      F1.ShowEditBar := True;
      F1.Modified := False;
      F1.ShowSelections := F1On;
    end;
    F1.Sheet :=1;
    F1.TextRC[2,2] := oEmp.RAZSOCIAL;
    F1.TextRC[3,2] := sm.NthWord(2,cboNumAlmac.Text,['|']);
    miRowIni := F1.FixedRows + 1;

    oF1.F1 := F1;

end;

procedure TfrmUbicaciones_Producto.UpdateControls;
Var
  i,iSel:Integer;
  fSel:Boolean;
begin
  i := length(Trim(cboCodigo.Text));
  btnListarProducto.Enabled := (i > 0);
  i := length(Trim(cboUbicacion.Text));
  btnListarUbicacion.Enabled := (i > 0);
end;

procedure TfrmUbicaciones_Producto.ListarProductos;
var
  tStr, tCod, tDes, tNumAlmacen: string;
  iSheet, irow, iCol, iColx, iField, iPos, iCount, Row: Integer;
  tFName, tDescripTec,tSel: string;
  tChar: Char;
  tcChars: TCharSet; //StrMan
  Id:variant;
  fh:TDateTime;
  dCant:Double;
begin

  Screen.Cursor := crHourglass;

  sbMsg.caption := 'Generando Listado de Ubicaciones y Productos...';

  LoadXLS;

  iSheet := 1;
  F1.Sheet := iSheet;
  F1.TextSRC[iSheet,3,2] := sm.NthWord(2,cboNumAlmac.Text,['|']);
  aB[iSheet].RowIni := miRowIni;

  rbtCodigo.Checked := True;

  iCount := 0;
  tSel := F1.Selection;

  F1.SetFocus;
  F1.Sheet := 1;
  //axnLimpiarListado;
  F1.TopRow := 2;
  F1.LeftCol := 2;

  tStr := cboCodigo.Text;
  tStr := UpperCase(tStr);

  tCod := '';
  tDes := '';

  if POS(',', tStr) > 0 then
  begin
    tCod := sm.NthWord2(2, tStr,[',']);
  end
  else
  begin
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
  tNumAlmacen := Trim(sm.NthWord(1, cboNumAlmac.Text, ['|']));

  PrepareSQL2(tCod,tDes);

  icuRep.Prepare;
  if length(tCod) > 0 then
    icuRep.ParamByName('p_Param1').AsString := tCod;
  if length(tDes) > 0 then
    icuRep.ParamByName('p_Param1').AsString := tDes;
  icuRep.Open;

  iSheet := 1;
  Row := miRowIni;
  icuRep.First;
  while not icuRep.Eof do begin
      Id:= icuRep.fieldbyName('UBIPROD_ID').AsInteger;
//      if Id>0 then
      F1.TextSRC[iSheet,Row,rC1.Ubicacion]    := icuRep.fieldbyName('UBICACION').AsString;

      F1.TextSRC[iSheet,Row,rC1.Codigo]       := icuRep.fieldbyName('CODPRODSER').AsString;
      F1.TextSRC[iSheet,Row,rC1.Familia]      := icuRep.fieldbyName('CODFAMILIA').AsString;
      F1.TextSRC[iSheet,Row,rC1.Descripcion]  := icuRep.fieldbyName('DESCRIPPRO').AsString;

      dCant   := icuRep.fieldbyName('CANTIDAD').AsDouble;
      if Id>0 then
        F1.NumberSRC[iSheet,Row,rC1.Cantidad]   := icuRep.fieldbyName('CANTIDAD').AsDouble;

      F1.TextSRC[iSheet,Row,rC1.Tarima]       := icuRep.fieldbyName('NUMERO_TARIMA').AsString;

      fh := icuRep.fieldbyName('FHACT').AsDateTime;
      if fh >0 then
        F1.NumberSRC[iSheet,Row,rC1.FH]         := fh;
      F1.TextSRC[iSheet,Row,rC1.User]         := icuRep.fieldbyName('USERACT').AsString;

      if Id>0 then
        F1.NumberSRC[iSheet,Row,rC1.Ubi_Prod_Id]    := icuRep.fieldbyName('UBIPROD_ID').AsInteger;


      iCount := iCount + 1;
      if (iCount mod 10 = 0) then Application.ProcessMessages;

      icuRep.Next;
      Row := Row + 1;
    end;
  icuRep.Close;

  aB[iSheet].RowEnd := Row - 1;
  aB[iSheet].ColEnd := rC1.Ubi_Prod_Id;
  Row := Row + 1;
  F1.TextRC[row,rC1.Codigo]   := 'Totales:';
  F1.NumberRC[Row,rC1.Descripcion]   := iCount;
  aB[iSheet].RowEndPrint := Row;

  F1.SetSelection(1, 2, aB[iSheet].RowEndPrint, rC1.User);
  F1.SetPrintAreaFromSelection;
  F1.Selection := tSel;
  F1.Sheet := 1;
  F1.TopRow := 1;
  F1.LeftCol:= 1;

//Ordenar el reporte...

  axnSort;

  Screen.Cursor := crDefault;
  sbMsg.caption := 'Terminado!';


end;

procedure TfrmUbicaciones_Producto.ListarUbicaciones;
var i,iCount,iActivo:Integer;
    iSheet,iRec,Row,id:Integer;
    tNumAlmac,tSel,tTP,tKey,tF,tUbi,Ubi,UbiAnt:String;
    fFound,fUpdate,fDelete:Boolean;
    dCant,dDias,dPComis,dPBase:Double;
    fh:TDateTime;

begin

  Screen.Cursor := crHourglass;

  sbMsg.caption := 'Generando Listado de Ubicaciones y Productos...';

  LoadXLS;

  iSheet := 1;
  F1.Sheet := iSheet;
  F1.TextSRC[iSheet,3,2] := sm.NthWord(2,cboNumAlmac.Text,['|']);

  aB[iSheet].RowIni := miRowIni;

  Application.ProcessMessages;

  rbtUbicacion.Checked := True;

  iCount := 0;
  tSel := F1.Selection;

  Application.ProcessMessages;

  PrepareSQL;

  tNumAlmac := sm.NthWord(1,cboNumAlmac.Text,['|']);
  tNumAlmac := sm.Strip(tNumAlmac);
  tUbi := Trim(cboUbicacion.Text);
  tUbi := UpperCase(tUbi);

//  F1.TextSRC[2,4,2] := GetTipoDocs;

  icuRep.ParamByName('p_NumAlmacen').AsString := tNumAlmac;
  icuRep.ParamByName('p_rack').AsString := tUbi;
  icuRep.Open;

  iRec := 1;
  Row := miRowIni;
  while not icuRep.Eof do begin
    Ubi := icuRep.fieldbyName('UBICACION').AsString;
    F1.TextSRC[iSheet,Row,rC1.Ubicacion]    := icuRep.fieldbyName('UBICACION').AsString;

    fFound := False;
    icuDet.ParamByName('p_NumAlmacen').AsString := tNumAlmac;
    icuDet.ParamByName('p_ubicacion').AsString := Ubi;
    icuDet.Open;
    while True do begin
      if icuDet.eof then begin
        if not fFound then begin
          Row := Row + 1;
        end;
        break;
      end;
//    Sql.Add ('select a.ubicacion,b.codprodser,b.codfamilia,b.descrippro,b.cantidad,b.numero_tarima ');
      Id:= icuDet.fieldbyName('UBIPROD_ID').AsInteger;
      iActivo := icuDet.fieldbyName('ACTIVO').AsSmallInt;
      F1.TextSRC[iSheet,Row,rC1.Ubicacion]    := icuDet.fieldbyName('UBICACION').AsString;
      if iActivo<=1 then begin
      // Activo es cuando <=1
      // Baja es cuando Activo >=2, donde el valor es la causa de la baja del producto de la ubicacion
        fFound := True;
        F1.TextSRC[iSheet,Row,rC1.Codigo]       := icuDet.fieldbyName('CODPRODSER').AsString;
        F1.TextSRC[iSheet,Row,rC1.Familia]      := icuDet.fieldbyName('CODFAMILIA').AsString;
        F1.TextSRC[iSheet,Row,rC1.Descripcion]  := icuDet.fieldbyName('DESCRIPPRO').AsString;
        dCant   := icuDet.fieldbyName('CANTIDAD').AsDouble;
        if Id>0 then
            F1.NumberSRC[iSheet,Row,rC1.Cantidad]   := icuDet.fieldbyName('CANTIDAD').AsDouble;

          F1.TextSRC[iSheet,Row,rC1.Tarima]       := icuDet.fieldbyName('NUMERO_TARIMA').AsString;

          fh := icuDet.fieldbyName('FHACT').AsDateTime;
          if fh >0 then
            F1.NumberSRC[iSheet,Row,rC1.FH]         := fh;

          F1.TextSRC[iSheet,Row,rC1.User]         := icuDet.fieldbyName('USERACT').AsString;

          if Id>0 then
            F1.NumberSRC[iSheet,Row,rC1.Ubi_Prod_Id]    := icuDet.fieldbyName('UBIPROD_ID').AsInteger;


          iCount := iCount + 1;
          if (iCount mod 10 = 0) then Application.ProcessMessages;

          Row := Row + 1;
      end;

      icuDet.Next;

    end;

    icuDet.Close;
    icuRep.Next;

  end;

  icuRep.Close;

  aB[iSheet].RowEnd := Row - 1;
  aB[iSheet].ColEnd := rC1.Ubi_Prod_Id;
  Row := Row + 1;
  F1.TextRC[row,rC1.Codigo]   := 'Totales:';
  F1.NumberRC[Row,rC1.Descripcion]   := iCount;
  aB[iSheet].RowEndPrint := Row;

  F1.SetSelection(1, 2, aB[iSheet].RowEndPrint, rC1.User);
  F1.SetPrintAreaFromSelection;
  F1.Selection := tSel;
  F1.Sheet := 1;
  F1.TopRow := 1;
  F1.LeftCol:= 1;

//Ordenar el reporte...

  axnSort;

  if chkEsconder.Checked then begin
    ShowHide(0);
  end;

  Screen.Cursor := crDefault;
  sbMsg.caption := 'Terminado!';

end;

procedure TfrmUbicaciones_Producto.ShowHide(AAccion:Integer);
var
  i,iSht,iRow:Integer;
  Id:Double;
  tS:String;
begin
//AAccion: 0=Hide,1=Show
 miLast := AAccion;

 iSht := 1;
 for iRow := aB[iSht].RowIni to aB[iSht].RowEnd do begin
  Id := F1.NumberSRC[iSht,iRow,rC1.Ubi_Prod_Id];
  if (Id <= 0) then begin
    if AAccion = 1 then F1.RowHidden[iRow] := False;
    if AAccion = 0 then F1.RowHidden[iRow] := True;
  end;

 end;

end;

procedure TfrmUbicaciones_Producto.Resaltar1(ARen,ATipo:Integer);
var
  iSht:Integer;
  tS:String;
begin
  iSht := F1.Sheet;
  tS := F1.Selection;

  F1.SetSelection(ARen,2,ARen,aB[iSht].ColEnd);
  F1.FontBold := True;
  F1.FontColor := clRed;
  if ATipo = 2 then
    F1.FontColor := clNavy;


  F1.Selection := tS;
end;

procedure TfrmUbicaciones_Producto.F1SelChange(Sender: TObject);
begin
  if F1.Sheet = 1 then begin
    aB[1].Row := F1.Row;
    aB[1].Col := F1.Col;
//    lblCte.Caption := F1.TextRC[F1.Row,rC1.CodcteProv] + '-' + F1.TextRC[F1.Row,rC1.RazSocial];
  end;
  if F1.Sheet = 2 then begin
    aB[2].Row := F1.Row;
    aB[2].Col := F1.Col;
  end;

end;

procedure TfrmUbicaciones_Producto.F1StartEdit(Sender: TObject;
  var EditString: WideString; var Cancel: Smallint);
var iCol:Integer;
begin

end;

procedure TfrmUbicaciones_Producto.F1EndEdit(ASender: TObject;
  var EditString: WideString; var Cancel: Smallint);
begin
  miRow := F1.Row;
  if length(Trim(EditString)) <= 0 then
    exit;

  MarkRows(UPD);

  if F1.Col = 3 then begin
    EditString := UpperCase(EditString);
    GetProducto(EditString);
    Timer2.Enabled := True;
  end;

end;

procedure TfrmUbicaciones_Producto.F1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tProd:String;
begin
    case Key of
{    VK_RETURN:
      begin
        tProd := F1.TextRC[F1.Row, 2];
        GetProducto(tProd);
      end;
}
    VK_F3:
      begin
        miRow := F1.Row;
        SelectProducto(1, F1.TextRC[miRow, 3]);
        Timer2Timer(Sender);
      end;
    VK_F4:
      begin
        miRow := F1.Row;
        SelectProducto(2, F1.TextRC[miRow, 4]);
        Timer2Timer(Sender);
      end;
    VK_INSERT:
      begin
        if ssCtrl in Shift then
          Clonar;
      end;
    VK_DELETE:
      begin
        if ssCtrl in Shift then
          Eliminar;
      end;
    else
    end;
end;

procedure TfrmUbicaciones_Producto.tbtAsignarClick(Sender: TObject);
begin
  Asignar;
end;

procedure TfrmUbicaciones_Producto.tbtCreateClick(Sender: TObject);
begin
  axnLimpiar;
end;

procedure TfrmUbicaciones_Producto.tbtEliminarClick(Sender: TObject);
begin
  Eliminar;
end;

procedure TfrmUbicaciones_Producto.tbtGenerarClick(Sender: TObject);
begin
    ListarUbicaciones;
end;

procedure TfrmUbicaciones_Producto.tbtGrabarClick(Sender: TObject);
begin
    axnGrabar;
end;

procedure TfrmUbicaciones_Producto.tbtPreverClick(Sender: TObject);
begin
    axnPrever;
end;

procedure TfrmUbicaciones_Producto.tbtImprimirClick(Sender: TObject);
begin
    axnImprimir;
end;

procedure TfrmUbicaciones_Producto.tbtModificarClick(Sender: TObject);
begin
  GrabarDatos;
end;

procedure TfrmUbicaciones_Producto.axnLimpiar;
begin
//    F1.ClearRange (miRowIni,1,F1.LastRow,20,f1ClearValues);
  LoadXLS;
  sbMsg.Caption := '';
  cboSort.ItemIndex := 0;
  pgcsincro.ActivePageIndex := 0;


end;
procedure TfrmUbicaciones_Producto.axnLeer;
var    tBuffer:WideString;
begin

        try
            F1.OpenFileDlg('Abrir archivo Articulos',frmUbicaciones_Producto.Handle,tBuffer);
        except
            tBuffer := '';
        end;
//    tFile := 'Doc.xls';
//    tFile := tDir+'\Doc\'+tFile;
        if length(tBuffer) > 0 then begin
            F1.Read (tBuffer,iType);
//            F1.FixedRows := miRowIni;
        end;

end;

procedure TfrmUbicaciones_Producto.axnGrabar;
var tFile:WideString;
begin
    try
        F1.SaveFileDlg ('Grabar Reporte en formato Excel',tFile,iType);
    except
        Exit;
    end;

    try
        F1.Write (tFile,iType);
    except;
        MessageDlg('Imposible grabar el archivo!', mtWarning,[mbOk], 0);
    end;
end;

procedure TfrmUbicaciones_Producto.axnPrever;
begin
    try
        F1.FilePrintPreview;
    except
        MessageDlg('Imposible hacer la presentacion preliminar!', mtWarning,[mbOk], 0);
    end;
end;

procedure TfrmUbicaciones_Producto.btnLast20Click(Sender: TObject);
begin
  mfLast20 := True;
  ListarUbicaciones;

end;

procedure TfrmUbicaciones_Producto.btnListarProductoClick(Sender: TObject);
begin
  ListarProductos;
end;

procedure TfrmUbicaciones_Producto.btnListarUbicacionClick(Sender: TObject);
begin
  ListarUbicaciones;
end;

procedure TfrmUbicaciones_Producto.btnSortClick(Sender: TObject);
begin
  axnSort;
end;

procedure TfrmUbicaciones_Producto.axnImprimir;
begin
    try
        F1.FilePrint(True);
    except
        MessageDlg('No es posible imprimir!', mtWarning,[mbOk], 0);
    end;

end;

procedure TfrmUbicaciones_Producto.SetPrintSelection;
var
  iSh: Integer;
  tSel:String;
begin
  iSh := F1.Sheet;
  tSel := F1.Selection;
  F1.SetSelection(aB[iSh].RowIni,aB[iSh].ColIni,aB[iSh].RowEndPrint,aB[iSh].ColEnd);
  F1.SetPrintAreaFromSelection;
  F1.Selection := tSel;
end;

procedure TfrmUbicaciones_Producto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_DELETE:
        begin
            F1.ClearRange(F1.SelStartRow, F1.SelStartCol, F1.SelEndRow, F1.SelEndCol, F1ClearValues); //	Delete key
        end;

    else
    end;

end;

procedure TfrmUbicaciones_Producto.FormShow(Sender: TObject);
begin
      MainForm.AplicarPerfil2(self);

end;

procedure TfrmUbicaciones_Producto.itmAsignar2Click(Sender: TObject);
begin
  AsignarMultiple;
end;

procedure TfrmUbicaciones_Producto.itmAyudaClick(Sender: TObject);
begin
  ShowHelp('frmUbicaciones_Producto');
end;

procedure TfrmUbicaciones_Producto.itmBuscarClick(Sender: TObject);
begin
  F1.FindDlg;
end;

procedure TfrmUbicaciones_Producto.itmClonarClick(Sender: TObject);
begin
  Clonar;
end;

procedure TfrmUbicaciones_Producto.itmFijarClick(Sender: TObject);
begin
  axnFixRows(miRowIni-1);
end;

procedure TfrmUbicaciones_Producto.itmHideRClick(Sender: TObject);
begin
  ShowHide(0);
end;

procedure TfrmUbicaciones_Producto.itmLiberarClick(Sender: TObject);
begin
  axnFixRows(0);
end;

procedure TfrmUbicaciones_Producto.itmSelProdClick(Sender: TObject);
begin
  miRow := F1.Row;
  SelectProducto(1, F1.TextRC[miRow, 3]);
end;

procedure TfrmUbicaciones_Producto.itmShowRClick(Sender: TObject);
begin
  ShowHide(1);
end;

procedure TfrmUbicaciones_Producto.axnFixRows(ARows:Integer);
var
  i,iT,iSh:Integer;
begin
  iSh := F1.Sheet;
  iT := 4;
  for i := 1 to iT do begin
    F1.Sheet := i;
    F1.FixedRows := ARows;
  end;

  F1.Sheet := iSh;

end;

procedure TfrmUbicaciones_Producto.axnFiltrarVendedores(AShow:Boolean);
var
  i,iT,iSh:Integer;
  tNum,t:String;
begin
{
  tNum := sm.NthWord(1,cboVendedor.Text,['-',' ']);
  iSh := F1.Sheet;
  F1.Sheet := 2;
  for i := aB[2].RowIni to aB[2].RowEnd do begin
    t := F1.TextRC[i,2];
    if (t <> tNum) then
      F1.RowHidden[i] := AShow;
  end;

  F1.Sheet := 3;
  for i := aB[3].RowIni to aB[3].RowEnd do begin
    t := F1.TextRC[i,rC1.NumAgente];
    if (t <> tNum) then
      F1.RowHidden[i] := AShow;
  end;
}
  F1.Sheet := iSh;

end;

procedure TfrmUbicaciones_Producto.axnSort;
var
  iIndex,iSheet,ix:Integer;
  iC1,iC2,iC3:Integer;
begin
  ix:= miLast;
  ShowHide(1);
  miLast := ix;

  ix := F1.Sheet;
  iSheet := 1;

  if aB[iSheet].RowIni >= aB[iSheet].RowEnd then exit;

  iIndex := 0;
  if rbtCodigo.checked      then iIndex := 0;
  if rbtDescripcion.checked then iIndex := 1;
  if rbtUbicacion.checked   then iIndex := 2;
  if rbtTarima.checked      then iIndex := 3;

case iIndex of
    0: begin
         iC1 := rC1.Codigo; iC2:=0; iC3:=0;
       end;
    1: begin
         iC1 := rC1.Descripcion; iC2:=0; iC3:=0;
       end;
    2: begin
         iC1 := rC1.Ubicacion; iC2:=rC1.Codigo; iC3:=0;
       end;
    3: begin
         iC1 := rC1.Tarima; iC2:=0; iC3:=0;
       end;
  end;

  F1.Sheet := iSheet;

  F1.Sort3(aB[iSheet].RowIni,1,aB[iSheet].RowEnd,aB[iSheet].ColEnd,True,iC1,iC2,iC3);

  F1.Sheet := ix;

  ShowHide(miLast);

end;

{-------------------------------------------------------------------------------
--- Actualizacion de Clientes
--------------------------------------------------------------------------------}
procedure TfrmUbicaciones_Producto.Asignar;
var
  iTR,iLC:Integer;
  tSel:String;
  Id:Variant;
begin
  tSel := F1.Selection;
  iTR  := F1.TopRow;
  iLC  := F1.LeftCol;

  if frmUbiProdAct = nil then
    frmUbiProdAct := TfrmUbiProdAct.Create(Application);


  Id := F1.NumberRC[F1.row,rC1.Ubi_Prod_Id];
  oUP.UBIPROD_ID := Id;
  oUP.UBICACION  := F1.TextRC[F1.row,rC1.Ubicacion];
  oUP.CODPRODSER := F1.TextRC[F1.row,rC1.Codigo];
  oUP.DESCRIPPRO := F1.TextRC[F1.row,rC1.Descripcion];
  oUP.CODFAMILIA := F1.TextRC[F1.row,rC1.Familia];
  oUp.NUMALMACEN := Trim(sm.NthWord(1,cboNumAlmac.Text));
  oUP.USERINS    := oUser.LOGIN;
  oUP.USERACT    := oUser.LOGIN;

  frmUbiProdAct.oUP := oUP;

  frmUbiProdAct.ShowModal;

  FreeandNil(frmUbiProdAct);

  ListarUbicaciones;

  F1.Selection := tSel;
  F1.TopRow    := iTR;
  F1.LeftCol   := iLC;

end;

procedure TfrmUbicaciones_Producto.AsignarMultiple;
var
  iTR,iLC:Integer;
  tSel:String;
  Id:Variant;
begin
  tSel := F1.Selection;
  iTR  := F1.TopRow;
  iLC  := F1.LeftCol;

  if frmUbiProdAct2 = nil then
    frmUbiProdAct2 := TfrmUbiProdAct2.Create(Application);


  Id := F1.NumberRC[F1.row,rC1.Ubi_Prod_Id];
  oUP.UBIPROD_ID := Id;
  oUP.UBICACION  := F1.TextRC[F1.row,rC1.Ubicacion];
  oUP.CODPRODSER := F1.TextRC[F1.row,rC1.Codigo];
  oUP.DESCRIPPRO := F1.TextRC[F1.row,rC1.Descripcion];
  oUP.CODFAMILIA := F1.TextRC[F1.row,rC1.Familia];
  oUp.NUMALMACEN := Trim(sm.NthWord(1,cboNumAlmac.Text));
  oUP.USERINS    := oUser.LOGIN;
  oUP.USERACT    := oUser.LOGIN;

  frmUbiProdAct2.oUP := oUP;

  frmUbiProdAct2.ShowModal;

  FreeandNil(frmUbiProdAct2);

  ListarUbicaciones;

  F1.Selection := tSel;
  F1.TopRow    := iTR;
  F1.LeftCol   := iLC;

end;

procedure TfrmUbicaciones_Producto.Modificar;
begin
//
end;
procedure TfrmUbicaciones_Producto.Eliminar;
var
  iTR,iLC:Integer;
  tSel:String;
  Id:Variant;
  wmr: Word;
begin
  tSel := F1.Selection;
  iTR  := F1.TopRow;
  iLC  := F1.LeftCol;

  wmr := MessageDlg('Deseas dar de baja el producto de la Ubicación?',
    mtConfirmation,
    [mbYes, mbNo],
    0);
  if (wmr = mrNo) then exit;

  Id := F1.NumberRC[F1.row,rC1.Ubi_Prod_Id];
  oUP.UBIPROD_ID := Id;
  oUP.COMENTARIOS := 'Bajar por Pedido';
  oUP.USERACT := oUser.LOGIN;
  oUP.FHACT   := Date+Time;
  oUP.DardeBaja;

  ListarUbicaciones;

  F1.Selection := tSel;
  F1.TopRow    := iTR;
  F1.LeftCol   := iLC;

end;

procedure TfrmUbicaciones_Producto.MarkRows(piAction:Integer);
var i:Integer;
begin
    for i:= F1.SelStartRow to F1.SelEndRow do begin
        F1.NumberRC[i,1] := piAction;
    end;

end;
procedure TfrmUbicaciones_Producto.GrabarDatos;
var i,iCount:Integer;
    iRecCount,iRec,Row,iTR,iLC:Integer;
    tSel,tTP,tKey,tNumAlmac:String;
    fFound,fUpdate,fDelete:Boolean;
    Id,vNT:Variant;
begin
  tSel := F1.Selection;
  iTR  := F1.TopRow;
  iLC  := F1.LeftCol;


    Screen.Cursor := crHourglass;
    iCount := 0;
//    DM1.iqrArt.Active := True;
  tNumAlmac := sm.NthWord(1,cboNumAlmac.Text,['|']);
  tNumAlmac := sm.Strip(tNumAlmac);

   for Row:= miRowIni to aB[1].RowEnd do begin
     fUpdate := (F1.NumberRC[Row,1] = UPD);
     if fUpdate then begin
       Id := F1.NumberRC[Row,rC1.Ubi_Prod_Id];
       if Id > 0 then begin  //Actualizar Ubicacion-Prod
         oUP.UBIPROD_ID := Id;
         oUP.NUMALMACEN := tNumAlmac;
         oUP.UBICACION  := F1.TextRC[Row,rC1.Ubicacion];
         oUP.CODPRODSER := F1.TextRC[Row,rC1.Codigo];
         oUP.DESCRIPPRO := F1.TextRC[Row,rC1.Descripcion];
         oUP.CODFAMILIA := F1.TextRC[Row,rC1.Familia];
         oUP.CANTIDAD   := F1.NumberRC[Row,rC1.Cantidad];
         vNT   := F1.NumberRC[Row,rC1.Tarima];
         oUP.NUMERO_TARIMA := vNT;
         oUP.USERACT    := oUser.LOGIN;
         oUP.FHACT      := Date+Time;

         oUP.Update01;
         if oUP.Error <= 0 then  begin
           F1.TextRC[Row,1] := '';
           iCount := iCount + 1;
         end;

         GrabarConteo(Row);

       end else begin  //Insertar Ubicacion-Prod
         oUP.UBIPROD_ID := -1;
         oUP.NUMALMACEN := tNumAlmac;
         oUP.UBICACION  := F1.TextRC[Row,rC1.Ubicacion];
         oUP.CODPRODSER := F1.TextRC[Row,rC1.Codigo];
         oUP.DESCRIPPRO := F1.TextRC[Row,rC1.Descripcion];
         oUP.CODFAMILIA := F1.TextRC[Row,rC1.Familia];
         oUP.CANTIDAD   := F1.NumberRC[Row,rC1.Cantidad];
         vNT   := F1.NumberRC[Row,rC1.Tarima];
         oUP.NUMERO_TARIMA := vNT;
         oUP.ACTIVO := 1;
         oUP.USERACT    := oUser.LOGIN;
         oUP.FHACT      := Date+Time;

         oUP.Insert;
         if oUP.Error <= 0 then  begin
           F1.TextRC[Row,1] := '';
          iCount := iCount + 1;
        end;

        GrabarConteo(Row);

       end;
     end;
   end;

   Screen.Cursor := crDefault;

   if iCount > 0 then begin
     ShowMessage('Se grabaron ' + IntToStr(iCount) + ' articulos!');

     ListarUbicaciones;

     F1.Selection := tSel;
     F1.TopRow    := iTR;
     F1.LeftCol   := iLC;
   end;

end;
procedure TfrmUbicaciones_Producto.SelectProducto(piOpcion: Integer; ptKey: string);
var
  iLista: Integer;
  ptCod: string;
begin
  Select('MBA10004', piOpcion, ptKey);
  if mrRes = mrOk then begin
    ptCod := frmSelTabla.Valores[1];
    F1.TextRC[F1.Row, 3] := ptCod;
    F1.TextRC[F1.Row, 4] := frmSelTabla.Valores[13];
    F1.TextRC[F1.Row, 5] := frmSelTabla.Valores[2];
    F1.Col := 3;
    MarkRows(UPD);
    F1.SetSelection(F1.Row,6,F1.Row,6);
  end;

end;

procedure TfrmUbicaciones_Producto.Select(ptTabla: string; piOpcion: Integer; ptKey: string);
begin
  if not Assigned(frmSelTabla) then
    frmSelTabla := TfrmSelTabla.Create(Application);
  frmSelTabla.Tabla := ptTabla;
  frmSelTabla.Campo := piOpcion;

  frmSelTabla.Param1 := '';
  frmSelTabla.Param2 := '';

  if piOpcion = 1 then
  begin
    frmSelTabla.Codigo := ptKey;
    frmSelTabla.Descri := '';
  end
  else
  begin
    frmSelTabla.Codigo := '';
    frmSelTabla.Descri := ptKey;
  end;
  mrRes := frmSelTabla.ShowModal;
  //    if edEstado in [edBrowse] then iqrDoc.Edit;

  //    frmSelTabla.Hide;

end;

procedure TfrmUbicaciones_Producto.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := False;
  F1.Row := miRow;
  if oProd.Error <=0 then begin
    F1.SetSelection(miRow,6,miRow,6);
  end;
end;

procedure TfrmUbicaciones_Producto.GetProducto(ptCod: string);
begin
  if length(Trim(ptCod)) <= 0 then
    exit;

  oProd.Error := 0;
  oProd.CODPRODSER := UpperCase(ptCod);
  oProd.Retrieve;
  if oProd.EDOACTPROD = 2 then
  begin
    frmMsg.ClearAll;
    frmMsg.AddError(1, 'El Producto ' + oProd.CodPRodSer +
      ' está dado de baja temporalmente!!',
      'Checar con Compras', '');
    frmMsg.ShowModal;
    exit;
  end;

  if oProd.Error > 0 then
  begin
    frmMsg.ClearAll;
    frmMsg.AddError(1, 'El Producto ' + oProd.CodPRodSer +
      ' NO existe en el catálogo!!',
      'Checar el catálogo!', '');
    frmMsg.ShowModal;
    exit;

  end;

  if length(Trim(oProd.DESCRIPPRO)) <= 0 then begin
    oProd.Error := 1; // No existe
    exit;
  end;

//  F1.TextRC[F1.Row, 3] := oProd.CODPRODSER;
  F1.TextRC[F1.Row, 4] := oProd.CODFAMILIA;
  F1.TextRC[F1.Row, 5] := oProd.DESCRIPPRO;
  F1.NumberRC[F1.Row, 6] := 0;
  F1.NumberRC[F1.Row, 7] := 0;

end;

procedure TfrmUbicaciones_Producto.Clonar;
var
  i, iRowsDel, iMaxRows,iRowsIns: Integer;
  tRow: string;
begin
  miRow := F1.Row;
  iRowsIns := F1.SelEndRow - F1.SelStartRow + 1;

  F1.InsertRange(F1.SelStartRow, 1, F1.SelEndRow, F1.MaxCol, F1ShiftRows);

  for i := F1.SelStartRow to F1.SelEndRow do begin
    F1.TextRC[i,2] := F1.TextRC[F1.SelEndRow+1,2];
    F1.TextRC[i,3] := F1.TextRC[F1.SelEndRow+1,3];
    F1.TextRC[i,4] := F1.TextRC[F1.SelEndRow+1,4];
    F1.TextRC[i,5] := F1.TextRC[F1.SelEndRow+1,5];
    F1.NumberRC[i,6] := 0;
    F1.NumberRC[i,7] := 0;
    Resaltar1(i,2);
  end;
  MarkRows(UPD);
  F1.SetSelection(miRow,3,miRow,3);

end;

procedure TfrmUbicaciones_Producto.GrabarConteo(ARow:Integer);
var tAux,ptCod,ptComa,ptPedido,tNumAlmac:String;
    i,iRow,mr:integer;
    dConteo:Double;
    iError:Integer;
begin

  if not chkAfectarExistencias.Checked then exit;
  if chkConfirmar.Checked then begin
    frmMsg.ClearAll;
    frmMsg.AddError(1, 'Se va a establecer como existencia Inicial el Conteo. ' + #10 +
      #10 + 'Verifica que no haya mas existencias en otras Ubicaciones!!',
      ' Verifica que no haya mas existencias en otras Ubicaciones!!', 'Deseas Continuar??');
    mr := frmMsg.ShowModal;

    if mr = mrCancel then begin
      exit;
    end;

    chkConfirmar.Checked := False;

  end;

//  ShowMessage('Afectaria existencias');
//  exit;

  iError := 0;
  tNumAlmac := sm.NthWord(1,cboNumAlmac.Text,['|']);
  tNumAlmac := sm.Strip(tNumAlmac);
  isql1.Prepare;

//Grabar la cantidad capturada
  ptCod := F1.TextRC[ARow,3];
  if (length(ptCod) > 0) then begin
    dConteo := F1.NumberRC[ARow,6];
    isql1.ParamByName('NUMALMAC').AsString := tNumAlmac;
    isql1.ParamByName('CODPRODSER').AsString := ptCod;
    isql1.ParamByName('EXISINIPER').AsDouble := dConteo;
    isql1.ParamByName('CONTEOFISI').AsDouble := dConteo;
    isql1.ParamByName('FECCONTEO').AsDateTime := Date+Time;
    try
      isql1.Execute;
    except
      iError := 1;
      ShowMessage('Hubo error al grabar!'+#10+#13+'Al Grabar el conteo fisico');
    end;
  end;
end;


end.
