unit CapturaLP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TB2Dock, TB2Toolbar, ComCtrls, TB2ExtItems, TBXExtItems, TBX, AxCtrls, OleCtrls,
  StdCtrls, Mask, RxToolEdit, Menus, VCIF1Lib_TLB,IniFiles, LibApp, RxPlacemnt,
  RXCtrls, ExtCtrls, RXSpin, ProductoSearch, FamiliaSearch,
  rxCurrEdit, TB2Item;

type
  TfrmCapturaLP = class(TForm)
    dckSincro: TTBXDock;
    tlbMain: TTBXToolbar;
    tbtSalir: TTBXItem;
    tbtMarcarUpd: TTBXItem;
    pgcSincro: TPageControl;
    tshAct: TTabSheet;
    tshList: TTabSheet;
    ToolbarSep972: TTBXSeparatorItem;
    tbtActualizar: TTBXItem;
    tbtImprimir: TTBXItem;
    tbtPrever: TTBXItem;
    tbtGrabar: TTBXItem;
    tbtAbrir: TTBXItem;
    tbtCreate: TTBXItem;
    ToolbarSep973: TTBXSeparatorItem;
    F1: TF1Book;
    ToolbarSep975: TTBXSeparatorItem;
    PopupMenu1: TPopupMenu;
    Fonts1: TMenuItem;
    Numeros1: TMenuItem;
    Bordes1: TMenuItem;
    Alineacion1: TMenuItem;
    Rellenos1: TMenuItem;
    tbtLeer: TTBXItem;
    ToolbarSep977: TTBXSeparatorItem;
    tbtVer: TTBXItem;
    N1: TMenuItem;
    Preferencias1: TMenuItem;
    FormStorage1: TFormStorage;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    RxSpeedButton1: TRxSpeedButton;
    rbtTodo: TRadioButton;
    rbtRenglones: TRadioButton;
    cboSort: TComboBox;
    Label1: TLabel;
    xsbSort: TRxSpeedButton;
    GroupBox3: TGroupBox;
    xsbPrecios: TRxSpeedButton;
    xseDescto: TRxSpinEdit;
    Label2: TLabel;
    rbtRango: TRadioButton;
    rbtPRTodo: TRadioButton;
    rbtPRSel: TRadioButton;
    tbtEliminar: TTBXItem;
    tbtFonts: TTBXItem;
    xceTipoCambio: TCurrencyEdit;
    RxLabel1: TRxLabel;
    pgcFamPro: TPageControl;
    tshFamilia: TTabSheet;
    tshProducto: TTabSheet;
    fraFamilia1: TfraFamilia;
    fraFamilia2: TfraFamilia;
    fraProducto1: TfraProducto;
    fraProducto2: TfraProducto;
    TBXSeparatorItem1: TTBXSeparatorItem;
    itmPL: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtSalirClick(Sender: TObject);
    procedure LoadXLS;
    procedure FormCreate(Sender: TObject);
    procedure tbtVerClick(Sender: TObject);
    procedure Preferencias1Click(Sender: TObject);
    procedure LeerArticulos;
    procedure GrabarArticulos;
    procedure tbtLeerClick(Sender: TObject);
    procedure F1StartEdit(Sender: TObject; var EditString: WideString;
      var Cancel: Smallint);
    procedure F1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MarkRows(piAction:Integer);
    procedure F1EndEdit(Sender: TObject; var EditString: WideString;
      var Cancel: Smallint);
    procedure tbtMarcarUpdClick(Sender: TObject);
    procedure tbtMarcarDelClick(Sender: TObject);
    procedure tbtActualizarClick(Sender: TObject);
    procedure xsbCopiarClick(Sender: TObject);
    procedure CopiarAbajo;
    procedure tbtCreateClick(Sender: TObject);
    procedure axnLimpiar;
    procedure axnLeer;
    procedure axnGrabar;
    procedure axnPrever;
    procedure axnImprimir;
    procedure tbtAbrirClick(Sender: TObject);
    procedure tbtGrabarClick(Sender: TObject);
    procedure tbtPreverClick(Sender: TObject);
    procedure tbtImprimirClick(Sender: TObject);
    procedure axnSort;
    procedure xsbSortClick(Sender: TObject);
    procedure tbtAfectarClick(Sender: TObject);
    function IsEmptyColumn(piCol:Integer):Boolean;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OcultarColumnas;
    procedure CambiarPrecios;
    procedure xsbPreciosClick(Sender: TObject);
    procedure EliminarArticulos;
    procedure tbtEliminarClick(Sender: TObject);
    procedure tbtFontsClick(Sender: TObject);
    procedure itmPLClick(Sender: TObject);
    procedure AsignarPL;
    procedure fraProducto1xceCodProdSerChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const   UPD:Integer = 1;
        DEL:Integer = 0;

var
  frmCapturaLP: TfrmCapturaLP;
  iType:SmallInt;
  mfLook,mfShowMsg:Boolean;
  ColSet: set of 1..200;
  miRowIni:Integer = 7;
  miRowEnd:Integer;
  oIni:TIniFile;
  mrRes:Integer;

implementation

uses Main, OpcionesF1, StrMan, SelTabla, DM_MBA;

var WCols: array[1..100] of integer;
{$R *.DFM}

procedure TfrmCapturaLP.FormCreate(Sender: TObject);
var tFile:String;
begin
    tFile := LibApp.GetIniFile;
    oIni := TIniFile.Create (tFile);

    LoadXLS;
//  Columnas que no se pueden modificar en el F1...
    ColSet := [2,3,4,18,22,26,27,28,29,32];

    xceTipoCambio.value := DM1.GetTipoCambio2;

  fraFamilia1.Initiate;
  fraFamilia2.Initiate;
  fraProducto1.Initiate;
  fraProducto2.Initiate;

  with DM1.isqlTemp do begin
    SQL.Clear;
    Sql.Add ('update MBA10004 set PCIOVTA1     = ?p_PCIOVTA1, PCIOVTA2   = ?p_PCIOVTA2,');
    Sql.Add ('                    GRUPO        = ?p_GRUPO, ');
    Sql.Add ('                    PAG_LP       = ?p_PAG_LP, ');
    Sql.Add ('                    ES_DLS       = ?p_ES_DLS, ');
    Sql.Add ('                    USERACT2     = ?p_USERACT2, ');
    Sql.Add ('                    FECHAACT2    = ?p_FECHAACT2 ');
    Sql.Add ('where  (CODPRODSER = ?p_CODPRODSER);');
    Prepare;
  end;

end;

procedure TfrmCapturaLP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    oIni.Free;
    frmCapturaLP := nil;
    Action := caFree;
end;

procedure TfrmCapturaLP.tbtSalirClick(Sender: TObject);
begin
    close;
end;

procedure TfrmCapturaLP.LoadXLS;
var tFile,tDir:String;
begin
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'FMT_CAPTURALP.xls';
    tFile := tDir+'\'+tFile;
    F1.Read (tFile,iType);
    F1.FixedRows := 6;
    miRowIni := F1.FixedRows + 1;
    F1.PrintTitles := 'A1:IV6';
    F1.Sheet :=1;
    F1.TextRC[2,2] := oEmp.RAZSOCIAL;
    F1.AllowDelete := False;
    F1.ShowEditBar := True;
    F1.Modified := False;
end;

procedure TfrmCapturaLP.tbtVerClick(Sender: TObject);
begin
    pgcSincro.Visible := tbtVer.Checked;
end;

procedure TfrmCapturaLP.Preferencias1Click(Sender: TObject);
var iRes :Integer;
begin
    frmOpcF1 := TFrmOpcF1.Create (Application);
    frmOpcF1.F1 := F1;
    iRes := frmOpcF1.showmodal;

end;

procedure TfrmCapturaLP.LeerArticulos;
var i:Integer;
    iRecCount,iRec:Integer;
    tFiltro,tKey,tTipoProd,tSel,tP1,tP2,tCodIni,tCodFin:String;
    fFound,fBorrado:Boolean;
    Row,Col:Integer;
begin
    Screen.Cursor := crHourglass;

    LoadXls;

    tSel := F1.selection;

    DM1.iqrArt.SQL.Clear;
    DM1.iqrArt.SQL.Add ('SELECT CODPRODSER,TIPOPROD,CODFAMILIA,DESCRIPPRO,PCIOCOMPRA,PCIOCOMPRADL,DESCTO1, ');
    DM1.iqrArt.SQL.Add ('DESCTO2,DESCTO3,DESCTO4,DESCTO5,DESCTO6,DESCTO7,GTOSIMPORT,GTOSFLETE,GTOSOTROS,');
    DM1.iqrArt.SQL.Add ('MARGEN1,MARGEN2,MARGEN3,PCIOVTA1,PCIOVTA2,PCIOVTA3,GRUPO, ES_DLS,PAG_LP,USERACT2,FECHAACT2 ');
    DM1.iqrArt.SQL.Add ('FROM MBA10004 ');
    if (pgcFamPro.ActivePage = tshProducto) then begin
        DM1.iqrArt.SQL.Add ('WHERE (CODPRODSER >=?P_CODPRODSER1) AND (CODPRODSER <=?P_CODPRODSER2) AND (EDOACTPROD = 1)');
        tCodIni := fraProducto1.xceCodProdSer.Text;
        tCodFin := fraProducto2.xceCodProdSer.Text;
    end;

    if (pgcFamPro.ActivePage = tshFamilia) then begin
        DM1.iqrArt.SQL.Add ('WHERE (CODFAMILIA >=?P_CODPRODSER1) AND (CODFAMILIA <=?P_CODPRODSER2) AND (EDOACTPROD = 1)');
        tCodIni := fraFamilia1.xceCodFam.Text;
        tCodFin := fraFamilia2.xceCodFam.Text;
    end;
    DM1.iqrArt.SQL.Add ('ORDER BY CODPRODSER;');

    DM1.iqrArt.Prepare;

    DM1.iqrArt.ParamByName('P_CODPRODSER1').AsString := tCodIni;
    DM1.iqrArt.ParamByName('P_CODPRODSER2').AsString := tCodFin;

    DM1.iqrArt.Open;

    iRecCount := Dm1.iqrArt.RecordCount;
    iRec := 1;
    Row := miRowIni;
    while not DM1.iqrArt.Eof do begin
        tKey := DM1.iqrArt.fieldbyName('CODPRODSER').AsString;
        tKey := Trim(tKey);

        if (length(tKey) > 0) then begin

            tKey := DM1.iqrArt.fieldbyName('CODPRODSER').AsString;
            tKey := Trim(tKey);

            F1.TextRC[Row,2]    := tKey;
            F1.TextRC[Row,3]    := DM1.iqrArt.fieldbyName('CODFAMILIA').AsString;
            F1.TextRC[Row,4]    := DM1.iqrArt.fieldbyName('DESCRIPPRO').AsString;
            F1.NumberRC[Row,6] := (DM1.iqrArt.fieldbyName('PCIOVTA1').AsFloat);
            F1.NumberRC[Row,7] := (DM1.iqrArt.fieldbyName('PCIOVTA2').AsFloat);
            F1.NumberRC[Row,8] := (DM1.iqrArt.fieldbyName('GRUPO').AsInteger);
            F1.NumberRC[Row,9] := (DM1.iqrArt.fieldbyName('PAG_LP').AsInteger);
            F1.NumberRC[Row,10] := (DM1.iqrArt.fieldbyName('ES_DLS').AsInteger);

{            F1.NumberRC[Row,9]  := DM1.iqrArt.fieldbyName('PCIOCOMPRADL').AsFloat;
            if (F1.NumberRC[Row,9] > 0) then begin
              F1.NumberRC[Row,10]  := F1.NumberRC[Row,9] * xceTipoCambio.Value;
            end else begin
              F1.NumberRC[Row,10]  := DM1.iqrArt.fieldbyName('PCIOCOMPRA').AsFloat;
            end;
            F1.NumberRC[Row,11] := (DM1.iqrArt.fieldbyName('DESCTO1').AsFloat);
            if F1.NumberRC[Row,11] = 0 then F1.NumberRC[Row,11] := 1;

            F1.NumberRC[Row,12] := (DM1.iqrArt.fieldbyName('DESCTO2').AsFloat);
            F1.NumberRC[Row,13] := (DM1.iqrArt.fieldbyName('DESCTO3').AsFloat);
            F1.NumberRC[Row,14] := (DM1.iqrArt.fieldbyName('DESCTO4').AsFloat);
            F1.NumberRC[Row,15] := (DM1.iqrArt.fieldbyName('DESCTO5').AsFloat);
            F1.NumberRC[Row,16] := (DM1.iqrArt.fieldbyName('DESCTO6').AsFloat);
            F1.NumberRC[Row,17] := (DM1.iqrArt.fieldbyName('DESCTO7').AsFloat);
            F1.NumberRC[Row,19] := (DM1.iqrArt.fieldbyName('GTOSIMPORT').AsFloat);
            F1.NumberRC[Row,20] := (DM1.iqrArt.fieldbyName('GTOSFLETE').AsFloat);
            F1.NumberRC[Row,21] := (DM1.iqrArt.fieldbyName('GTOSOTROS').AsFloat);
            F1.NumberRC[Row,26] := (DM1.iqrArt.fieldbyName('PCIOVTA1').AsFloat);
            F1.NumberRC[Row,27] := (DM1.iqrArt.fieldbyName('PCIOVTA2').AsFloat);
            F1.NumberRC[Row,28] := (DM1.iqrArt.fieldbyName('PCIOVTA3').AsFloat);
//            F1.NumberRC[Row,30] := (DM1.iqrArt.fieldbyName('PCIOVTA9').AsFloat);
//            F1.NumberRC[Row,31] := (DM1.iqrArt.fieldbyName('PCIOVTA10').AsFloat);
}
            F1.TextRC[Row,11] := (DM1.iqrArt.fieldbyName('USERACT2').AsString);
            if F1.TextRC[Row,11] <> '' then
              F1.NumberRC[Row,12] := (DM1.iqrArt.fieldbyName('FECHAACT2').AsDateTime);

            iRec := iRec+1;
            Row := Row + 1;

        end;

        DM1.iqrArt.Next;

    end;

    miRowEnd := Row -1;

    if miRowEnd > miRowIni then begin
{       Col := 18;
       F1.SetSelection (miRowIni,Col,miRowEnd,Col);
       F1.EditCopyDown;
       Col := 22;
       F1.SetSelection (miRowIni,Col,miRowEnd,Col);
       F1.EditCopyDown;
       Col := 23;
       F1.SetSelection (miRowIni,Col,miRowEnd,Col);
       F1.EditCopyDown;
       Col := 24;
       F1.SetSelection (miRowIni,Col,miRowEnd,Col);
       F1.EditCopyDown;
       Col := 25;
       F1.SetSelection (miRowIni,Col,miRowEnd,Col);
       F1.EditCopyDown;
       Col := 29;
       F1.SetSelection (miRowIni,Col,miRowEnd,Col);
       F1.EditCopyDown;
}
    end;

    F1.Selection := tSel;
    F1.MaxRow := miRowEnd;

    Screen.Cursor := crDefault;

    DM1.iqrArt.UnPrepare;
    DM1.iqrArt.Close;

// Empezar a checar si se ha modificado el F1...
    mfLook := True

end;

procedure TfrmCapturaLP.GrabarArticulos;
var i,iCount:Integer;
    iRecCount,iRec,Row:Integer;
    tTP,tKey:String;
    fFound,fUpdate,fDelete:Boolean;
    v:Variant;
begin

    Screen.Cursor := crHourglass;
    iCount := 0;
//    DM1.iqrArt.Active := True;

   for Row:= miRowIni to miRowEnd do begin
        fUpdate := (F1.NumberRC[Row,1] = UPD);
        if fUpdate then begin
            tKey := F1.TextRC[Row,2];
            tKey := Trim(tKey);

            DM1.isqlTemp.ParamByName('p_CODPRODSER').AsString := tKey;
            DM1.isqlTemp.ParamByName('p_PCIOVTA1').AsFloat := F1.NumberRC[Row,6];
            DM1.isqlTemp.ParamByName('p_PCIOVTA2').AsFloat := F1.NumberRC[Row,7];
            v := F1.NumberRC[Row,8];
            DM1.isqlTemp.ParamByName('p_GRUPO').AsSmallInt := v;
            v := F1.NumberRC[Row,9];
            DM1.isqlTemp.ParamByName('p_PAG_LP').AsSmallInt := v;
            v := F1.NumberRC[Row,10];
            DM1.isqlTemp.ParamByName('p_ES_DLS').AsSmallInt := v;
            DM1.isqlTemp.ParamByName('p_USERACT2').AsString := oUser.login;
            DM1.isqlTemp.ParamByName('p_FECHAACT2').AsDateTime := Date+Time;
            DM1.isqlTemp.Execute;
            iCount := iCount + 1;
        end;
    end;

    DM1.isqlTemp.Unprepare;

    Screen.Cursor := crDefault;

    if mfShowMsg then
        ShowMessage('Se grabaron ' + IntToStr(iCount) + ' articulos!');

end;

procedure TfrmCapturaLP.EliminarArticulos;
var i,iCount:Integer;
    iRecCount,iRec,Row,iRecDel:Integer;
    tTP,tKey:String;
    fFound,fUpdate,fDelete:Boolean;
begin

    iRec := F1.SelStartRow;
    iRecCount := F1.SelEndRow;
    iRecDel := iRec;      // Que renglon voy a borrar en el F1...

    if  MessageDlg('Deseas ELIMINAR los '+ IntToStr(iRecCount - iRec + 1) + ' articulos seleccionados ?', mtConfirmation,
        [mbOk,mbCancel], 0) = mrCancel then exit;


    Screen.Cursor := crHourglass;
    iCount := 0;

   for Row:= iRec to iRecCount do begin
        tKey := F1.TextRC[iRecDel,2];
        tKey := Trim(tKey);
            try
                DM1.ispArt_D_00.ParamByName('CODPRODSER').AsString := tKey;
                DM1.ispArt_D_00.ExecProc;
                F1.DeleteRange (iRecDel,1,iRecDel,1,F1ShiftRows);
                iCount := iCount + 1;
            except
                iRecDel := iRecDel + 1;
            end;
    end;

    DM1.ispArt_D_00.UnPrepare;

    Screen.Cursor := crDefault;

    if mfShowMsg then
        ShowMessage('Se ELIMINARON ' + IntToStr(iCount) + ' articulos!');

end;


procedure TfrmCapturaLP.tbtLeerClick(Sender: TObject);
begin
    LeerArticulos;
end;

procedure TfrmCapturaLP.F1StartEdit(Sender: TObject;
  var EditString: WideString; var Cancel: Smallint);
var iCol:Integer;
begin
    iCol := F1.Col;

    if iCol in ColSet then Cancel := 1;

end;

procedure TfrmCapturaLP.F1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_DELETE:
        begin
            F1.ClearRange(F1.SelStartRow, F1.SelStartCol, F1.SelEndRow, F1.SelEndCol, F1ClearValues); //	Delete key
            MarkRows(UPD);
        end;
    else
    end;

end;



procedure TfrmCapturaLP.F1EndEdit(Sender: TObject;
  var EditString: WideString; var Cancel: Smallint);
begin
    MarkRows(UPD);

end;

procedure TfrmCapturaLP.MarkRows(piAction:Integer);
var i:Integer;
begin
    for i:= F1.SelStartRow to F1.SelEndRow do begin
        F1.NumberRC[i,1] := piAction;
    end;

end;


procedure TfrmCapturaLP.tbtMarcarUpdClick(Sender: TObject);
begin
    MarkRows(UPD);

end;

procedure TfrmCapturaLP.tbtMarcarDelClick(Sender: TObject);
begin
    MarkRows(DEL);

end;

procedure TfrmCapturaLP.tbtActualizarClick(Sender: TObject);
begin
    // Mostrar o no el mensaje de articulos grabados...
    mfShowMsg := True;
    GrabarArticulos;
end;

procedure TfrmCapturaLP.xsbCopiarClick(Sender: TObject);
begin
    CopiarAbajo;
end;
procedure TfrmCapturaLP.CambiarPrecios;
var i,iRow,iRowLast,iCol,iCol2:Integer;
    s,iR1,iR2,iC1,iC2:Integer;
    tAux,tLinea,tDescto:String;
    dPrecio,dDescto:Double;
begin

    dDescto := xseDescto.Value;

    tDescto := sm.Str(abs(dDescto),2,' ');
    tDescto := tDescto + '%';
    tAux := ' AUMENTAR ';
    if dDescto < 0 then begin
        tAux := ' DISMINUIR ';
    end;

    tLinea := 'Deseas '+tAux+' los Precios de Lista en un '+tDescto+' ?';
    if  MessageDlg(tLinea, mtConfirmation,
        [mbOk,mbCancel], 0) = mrCancel then exit;


    iRow := F1.SelStartRow;
    iRowLast := F1.SelEndRow;

    iCol2 := F1.SelStartCol; //Precio en Dls
    iCol := 10; //Precio en MN

    if rbtPRTodo.Checked then begin
        iRow := miRowIni;
        iRowLast := F1.LastRow;
    end;

    if rbtPRSel.Checked then begin
        iRow := F1.SelStartRow;
        iRowLast := F1.SelEndRow;
    end;

    for i:= iRow to iRowLast do begin
        //Cambiar la columna de Precio Dls
        dPrecio := F1.NumberRC [i,iCol2];
        dPrecio := dPrecio + (dPrecio * (xseDescto.Value /100));
        F1.NumberRC [i,iCol2] := dPrecio;

        //Cambiar la columna de Precio MN
{        dPrecio := F1.NumberRC [i,iCol];
        dPrecio := dPrecio + (dPrecio * (xseDescto.Value /100));
        F1.NumberRC [i,iCol] := dPrecio;
}
        F1.NumberRC[i,1] := UPD;

    end;

end;

procedure TfrmCapturaLP.CopiarAbajo;
var i,j,iRow,iRowLast,iCol,iColLast:Integer;
    tCod,tDesc:String;
begin
    iRow := F1.SelStartRow;
    iRowLast := F1.SelEndRow;
    iCol := F1.SelStartCol;
    iColLast := F1.SelEndCol;

    if rbtTodo.Checked then begin
        iRow := miRowIni;
        iRowLast := F1.LastRow;
        iCol := 10;
        iColLast := 24;
    end;

    if rbtRenglones.Checked then begin
        iRow := F1.SelStartRow;
        iRowLast := F1.SelEndRow;
        iCol := 10;
        iColLast := 24;
    end;

    for i:= iRow+1 to iRowLast do begin
        for j:= iCol to iColLast do begin
            if (iCol <> 17) and (iCol <> 21) then begin
                F1.NumberRC [i,j] := F1.NumberRC [iRow,j];
            end;
        end;

        F1.NumberRC[i,1] := UPD;

    end;

end;

procedure TfrmCapturaLP.tbtCreateClick(Sender: TObject);
begin
  axnLimpiar;
end;

procedure TfrmCapturaLP.tbtAbrirClick(Sender: TObject);
begin
    axnLeer;
end;

procedure TfrmCapturaLP.tbtGrabarClick(Sender: TObject);
begin
    axnGrabar;
end;

procedure TfrmCapturaLP.tbtPreverClick(Sender: TObject);
begin
    axnPrever;
end;

procedure TfrmCapturaLP.tbtImprimirClick(Sender: TObject);
begin
    axnImprimir;
end;

procedure TfrmCapturaLP.axnLimpiar;
begin
    F1.ClearRange (7,2,F1.LastRow,20,f1ClearValues);
    F1.Row := miROWINI;
    F1.Col := 1;
    F1.TopRow := miROWINI;
    F1.LeftCol := 1;

end;
procedure TfrmCapturaLP.axnLeer;
var    tBuffer:WideString;
begin

        try
            F1.OpenFileDlg('Abrir archivo Articulos',frmCapturaLP.Handle,tBuffer);
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

procedure TfrmCapturaLP.axnGrabar;
var tFile:WideString;
begin
    try
        F1.SaveFileDlg ('Grabar Listado de Articulos',tFile,iType);
    except
        Exit;
    end;

    try
        F1.Write (tFile,iType);
    except;
        MessageDlg('Imposible grabar el archivo!', mtWarning,[mbOk], 0);
    end;
end;

procedure TfrmCapturaLP.axnPrever;
begin
    try
        F1.FilePrintPreview;
    except
        MessageDlg('Imposible hacer la presentacion preliminar!', mtWarning,[mbOk], 0);

    end;

end;

procedure TfrmCapturaLP.axnImprimir;
begin
    try
        F1.FilePrint(True);
    except
        MessageDlg('No es posible imprimir!', mtWarning,[mbOk], 0);
    end;

end;

procedure TfrmCapturaLP.axnSort;
var iCol1,iCol2,iCol3,iIndex:Integer;
begin
// Ordenar lista de articulos
    iIndex := cboSort.ItemIndex;
    case iIndex of
    0:begin
        iCol1:= 2; iCol2:=0; iCol3:=0;
      end;
    1:begin
        iCol1:=3; iCol2:=2; iCol3:=0;
      end;
    2:begin
        iCol1:=3; iCol2:=4; iCol3:=0;
      end;
    end;

    F1.Sort3 (miRowIni,1,miRowEnd,F1.LastCol,True,iCol1,iCol2,iCol3);


end;


procedure TfrmCapturaLP.xsbSortClick(Sender: TObject);
begin
    axnSort;
end;

procedure TfrmCapturaLP.tbtAfectarClick(Sender: TObject);
begin
    //Grabar articulos antes de pasar los precios a MegaPack.
    mfShowMsg := False;
    GrabarArticulos  ;

{    if  MessageDlg('Deseas Afectar los precios en MegaPack" ?', mtConfirmation,
        [mbOk,mbCancel], 0) = mrCancel then exit;

    CostosToAdminPack;
}
end;

procedure TfrmCapturaLP.OcultarColumnas;
var fVacia:Boolean;
    iCol,iColCount:Integer;
begin
    iColCount := f1.MaxCol;

    for iCol := 10 to iColCount do begin
        fVacia := IsEmptyColumn(iCol);
        if fVacia then begin
            WCols[iCol] := 1;
            F1.SetColHidden (iCol,iCol,True);
        end;
    end;

end;


function TfrmCapturaLP.IsEmptyColumn(piCol:Integer):Boolean;
var iRow,iRowCount:Integer;
    dCon:Double;
    fRes:Boolean;
begin
    fRes := True;
    iRowCount := F1.MaxRow;
    for  iRow := miRowIni to iRowCount do begin
        dCon := F1.NumberRC[iRow,piCol];
        if dCon > 0 then begin
            fRes := False;
            break;
        end;
    end;

    Result := fRes;

end;

procedure TfrmCapturaLP.itmPLClick(Sender: TObject);
begin
  AsignarPL;
end;

procedure TfrmCapturaLP.FormKeyDown(Sender: TObject; var Key: Word;
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
procedure TfrmCapturaLP.fraProducto1xceCodProdSerChange(Sender: TObject);
begin
  fraProducto2.xceCodProdSer.Text := fraProducto1.xceCodProdSer.Text;
  fraProducto2.xceDescripPro.Text := fraProducto1.xceDescripPro.Text;

end;

procedure TfrmCapturaLP.xsbPreciosClick(Sender: TObject);
begin
    CambiarPrecios;
end;

procedure TfrmCapturaLP.tbtEliminarClick(Sender: TObject);
begin
    EliminarArticulos;
end;

procedure TfrmCapturaLP.tbtFontsClick(Sender: TObject);
begin
        F1.FormatFontDlg;
end;

procedure TfrmCapturaLP.AsignarPL;
var selCount,s,r,c,iR1,iR2,iC1,iC2:Integer;
begin
  selCount := F1.SelectionCount;
  for s := 0 to selCount -1 do begin

    F1.GetSelection (s,iR1,iC1,iR2,iC2);

    for r := iR1 to iR2 do begin
        F1.NumberRC[r,8] := F1.NumberRC[r,iC1];
        F1.NumberRC[r,9] := F1.NumberRC[r,iC1+1];
        F1.NumberRC[r,1] := UPD;
    end;
  end;


end;


end.
