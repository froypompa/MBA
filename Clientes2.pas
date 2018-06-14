unit Clientes2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TB2Dock, TB2Toolbar, ComCtrls, TB2ExtItems, TBXExtItems, TBX, AxCtrls, OleCtrls,
  StdCtrls, Mask, RxToolEdit, Menus, VCIF1Lib_TLB,IniFiles, LibApp, RxPlacemnt,
  RXCtrls, ExtCtrls, RXSpin, ProductoSearch, FamiliaSearch, EsBDates, HHelp,
  rxCurrEdit, TB2Item, IB_Components, FormulaOneLib, RzButton, RzLabel,
  RzCmboBx, RzPanel, RzEdit, RzTabs, RzLstBox, RzChkLst, RzStatus, RzRadChk;

type
  TfrmClientes2 = class(TForm)
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
    icuDoc: TIB_Cursor;
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
    RzLabel4: TRzLabel;
    rbtCodigo: TRzRadioButton;
    rbtNombre: TRzRadioButton;
    edzCodigo: TRzEdit;
    RzLabel5: TRzLabel;
    tshDoc: TTabSheet;
    pnzFechas: TRzPanel;
    Label5: TLabel;
    Label1: TLabel;
    RzLabel3: TRzLabel;
    xdeFechaFin: TDateEdit;
    xdeFechaIni: TDateEdit;
    RzPanel2: TRzPanel;
    RzLabel2: TRzLabel;
    clzDoc: TRzCheckList;
    btnDocs: TRzBitBtn;
    btnDet: TRzBitBtn;
    btnListarCte: TRzBitBtn;
    tbtEliminar: TTBXItem;
    tbtModificar: TTBXItem;
    tbtNuevo: TTBXItem;
    lblCte: TRzLabel;
    btnLast20: TRzBitBtn;
    btnActDescuentos: TRzBitBtn;
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
    procedure CalculaFechas;
    procedure SetPrintSelection;
    procedure axnFixRows(ARows:Integer);
    procedure tbtGenerarClick(Sender: TObject);
    procedure tbtGrabarClick(Sender: TObject);
    procedure tbtPreverClick(Sender: TObject);
    procedure tbtImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpdateControls;
    procedure GenerarReporte;
    procedure ListarDocs;
    procedure ListarDetalle;
    procedure btnSortClick(Sender: TObject);
    procedure itmFijarClick(Sender: TObject);
    procedure itmLiberarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure axnFiltrarVendedores(AShow:Boolean);
    procedure Resaltar1(ARen,ATipo:Integer);
    procedure itmBuscarClick(Sender: TObject);
    procedure itmAyudaClick(Sender: TObject);
    procedure PrepareSQL;
    procedure PrepareSQL2;
    procedure PrepareSQL3;
    procedure clzDocChange(Sender: TObject; Index: Integer;
      NewState: TCheckBoxState);
    function GetTipoDocs:String;
    procedure F1DblClick(ASender: TObject; nRow, nCol: Integer);
    procedure F1SelChange(Sender: TObject);
    procedure btnListarCteClick(Sender: TObject);
    procedure edzCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnDocsClick(Sender: TObject);
    procedure btnDetClick(Sender: TObject);
    procedure btnLast20Click(Sender: TObject);
    procedure tbtNuevoClick(Sender: TObject);
    procedure Cliente_Insert;
    procedure Cliente_Update;
    procedure Cliente_Delete;
    procedure tbtModificarClick(Sender: TObject);
    procedure btnActDescuentosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
    CodcteProv   :Integer;
    Numero       :Integer;
    RazSocial    :Integer;
    Domicilio    :Integer;
    Colonia      :Integer;
    CodigoP      :Integer;
    Agente       :Integer;
    Limite       :Integer;
    Telefono     :Integer;
  end;

 TCol2 = Record
    Tipo        :Integer;
    NomTipo     :Integer;
    Serie       :Integer;
    Folio       :Integer;
    Fecha       :Integer;
    FechaVence  :Integer;
    Monto       :Integer;
    Pendiente   :Integer;
    OC          :Integer;
    Almacen     :Integer;
    Estado      :Integer;
    Id          :Integer;
  end;

  TCol3 = Record
    Codigo     :Integer;
    Descri     :Integer;
    Unidades   :Integer;
    PLista     :Integer;
    Descto     :Integer;
    PUnitario  :Integer;
    PTotal     :Integer;
    Pendientes :Integer;
    Facturadas :Integer;
  end;
var
  frmClientes2: TfrmClientes2;
  iType:SmallInt;
  mfLook,mfShowMsg:Boolean;
  ColSet: set of 1..200;
  miRowIni:Integer = 8;
  miColIni:INteger = 2;
  mrRes:Integer;
  aB: array[1..5] of TBook;
  aB2: array[1..5] of TBook;
  rC1:TCol1;
  rC2:TCol2;
  rC3:TCol3;
  mfLast20 : Boolean;
  oF1:TF1Lib;

implementation

uses Main, OpcionesF1, StrMan, SelTabla, DM_MBA, Clienteact, ActDescuentos;

// var WCols: array[1..100] of integer;
{$R *.DFM}

procedure TfrmClientes2.FormCreate(Sender: TObject);
var tFile:String;
begin
    tFile := LibApp.GetIniFile;
    oF1  := TF1Lib.Create;

    SetUp;

    LoadXLS;
//  Columnas que no se pueden modificar en el F1...
    ColSet := [1];


  UpdateControls;

end;

procedure TfrmClientes2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    FreeAndNil(oF1);
//    FreeAndNil(frmClienteAct);
    frmClientes2 := nil;
    Action := caFree;
end;

procedure TfrmClientes2.PrepareSQL;
var
  i:Integer;
  td,tnum:String;
  EsCodigo:Boolean;
begin
  tnum := sm.GetDigit(edzCodigo.Text);
  if length(tnum) > 0 then
    EsCodigo := True
  else
    EsCodigo := False;

  with icuRep do begin
    Sql.Clear;
    Sql.Add ('SELECT A.CODCTEPROV,A.RAZSOCIAL,A.CALLE,A.NUM_EXTERIOR,A.NUM_INTERIOR,A.COLONIACTE,A.CODPOSTAL,A.CODCTEPROV,A.NUMAGENTE,B.NOMBAGEN,A.LIMCREDCTE,A.TELEFONO1 ');
    Sql.Add (' FROM MBA10002 A ');
    SqL.Add (' LEFT JOIN MBA10001 B ON (B.NUMAGENTE = A.NUMAGENTE) ');
    if EsCodigo then
      SqL.Add (' WHERE A.CODCTEPROV STARTING WITH ?CODIGO ')
    else
      SqL.Add (' WHERE A.RAZSOCIAL CONTAINING ?CODIGO ');
    if rbtCodigo.Checked then
      SqL.Add (' ORDER BY A.CODCTEPROV; ');
    if rbtnOMBRE.Checked then
      SqL.Add (' ORDER BY A.RAZSOCIAL; ');
    Prepare;
  end;

end;

procedure TfrmClientes2.PrepareSQL2;
var
  i:Integer;
  td,tnum:String;
  EsCodigo:Boolean;
begin
  with icuDoc do begin
    SQL.Clear;
    Sql.Add ('SELECT A.NUMTIPODOC,B.NOMCORTO,A.SERIEDOCTO,A.NUMDOCTO,A.FECDOCTO,A.FECVENCEDO,A.IMPPENDDOC,A.NUMALMAC,A.IMPTOTALDO,A.REFERDOCTO2,A.CANCELA,A.DOCTO_ID FROM MBA10008 A ');
    SqL.Add ('LEFT JOIN MBA10006 B ON (B.NUMTIPODOC = A.NUMTIPODOC) ');
    SqL.Add ('LEFT JOIN MBA10002 C ON (C.CODCTEPROV = A.CODCTEPROV) ');
    Sql.Add ('WHERE (A.FECDOCTO >= ?FECHAINI) AND (A.FECDOCTO <= ?FECHAFIN) AND (A.CODCTEPROV = ?CODCTEPROV) ');
    td := '';
    for i := 0 to clzDoc.Items.Count - 1 do begin
      if clzDoc.ItemChecked[i] then begin
        td := td + #39 + sm.NthWord(1,clzDoc.Items.Strings[i]) + #39 + ',';
      end;
    end;
    if length(td) > 0 then begin
      td := sm.PurgeWhileRev(td,[',']);
      Sql.Add (' AND (A.NUMTIPODOC IN (' + td + ')) ');
    end;
    Sql.Add ('ORDER BY A.NUMTIPODOC,A.SERIEDOCTO,A.NUMDOCTO;');

    Prepare;
  end;

  with icuDet do begin
    SQL.Clear;
    Sql.Add ('SELECT * FROM MBA10010 ');
    Sql.Add ('WHERE (NUMTIPODOC = ?NUMTIPODOC) AND (SERIEDOCTO = ?SERIEDOCTO) AND (NUMDOCTO = ?NUMDOCTO); ');
    Prepare;
  end;

end;

procedure TfrmClientes2.PrepareSQL3;
begin
  with icuRep do begin
    Sql.Clear;
    Sql.Add ('SELECT skip ((select count(*) - 20 from mba10002)) ');
    Sql.Add (' A.CODCTEPROV,A.RAZSOCIAL,A.CALLE,A.NUM_EXTERIOR,A.NUM_INTERIOR,A.COLONIACTE,A.CODPOSTAL,A.CODCTEPROV,A.NUMAGENTE,B.NOMBAGEN,A.LIMCREDCTE,A.TELEFONO1,A.IDCLIENTE ');
    Sql.Add (' FROM MBA10002 A ');
    SqL.Add (' LEFT JOIN MBA10001 B ON (B.NUMAGENTE = A.NUMAGENTE) ');
    SqL.Add (' ORDER BY A.IDCLIENTE ASC; ');
    Prepare;
  end;
end;

procedure TfrmClientes2.FormActivate(Sender: TObject);
begin
  pgcSincro.ActivePageIndex := 0;
  CalculaFechas;
end;

procedure TfrmClientes2.tbtSalirClick(Sender: TObject);
begin
    close;
end;

procedure TfrmClientes2.SetUp;
begin
  rC1.CodcteProv := 2;
  rC1.Numero     := 3;
  rC1.RazSocial  := 4;
  rC1.Domicilio  := 5;
  rC1.Colonia    := 6;
  rC1.CodigoP    := 7;
  rC1.Agente     := 8;
  rC1.Limite     := 9;
  rC1.Telefono   := 10;

  aB[1].RowIni := miRowIni;
  aB[2].RowIni := miRowIni;
  aB[3].RowIni := miRowIni;

  aB[1].ColIni := rC1.Telefono;
  aB[2].ColIni := miColIni;
  aB[3].ColIni := miColIni;


  rC2.Tipo      := 2;
  rC2.NomTipo   := 3;
  rC2.Serie     := 4;
  rC2.Folio     := 5;
  rC2.Fecha     := 6;
  rC2.FechaVence:= 7;
  rC2.Monto     := 8;
  rC2.Pendiente := 9;
  rC2.OC        := 10;
  rC2.Almacen   := 11;
  rC2.Estado    := 12;
  rC2.Id        := 13;

  rC3.Codigo     := 2;
  rC3.Descri     := 3;
  rC3.Unidades   := 4;
  rC3.PLista     := 5;
  rC3.Descto     := 6;
  rC3.PUnitario  := 7;
  rC3.PTotal     := 8;
  rC3.Pendientes := 9;
  rC3.Facturadas := 10;

end;

procedure TfrmClientes2.CalculaFechas;
var
  iA,iM,iD:Integer;
  fLast:TDateTime;
begin
  ESBDates.OptDecodeDateI(Date,iA,iM,iD);
  xdeFechaIni.date := Date - 60;
  xdeFechaFin.date := Date + 0.999;

end;

procedure TfrmClientes2.clzDocChange(Sender: TObject; Index: Integer;
  NewState: TCheckBoxState);
begin
  UpdateControls;
end;

procedure TfrmClientes2.edzCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN:
      begin
        btnListarCteClick(nil); //	Delete key
      end;
  else
  end;

end;

procedure TfrmClientes2.LoadXLS;
var
  i:Integer;
  tFile,tDir:String;
begin
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'FMT_CLIENTES2.xls';
    tFile := tDir+tFile;
    F1.Read (tFile,iType);
    for i := 1 to 3 do begin
      F1.Sheet := i;
      F1.FixedRows := 7;
      F1.PrintTitles := 'A1:IV7';
      F1.AllowDelete := False;
      F1.ShowEditBar := True;
      F1.Modified := False;
      F1.ShowSelections := F1On;
    end;
    F1.Sheet :=1;
    F1.TextRC[2,2] := oEmp.RAZSOCIAL;
    miRowIni := F1.FixedRows + 1;

    oF1.F1 := F1;

end;

procedure TfrmClientes2.UpdateControls;
Var
  i,iSel:Integer;
  fSel:Boolean;
begin
{  iSel := 0;
  for i := 0 to clzDoc.Items.Count - 1 do
    if clzDoc.ItemChecked[i] then iSel := iSel + 1;

  fSel := (iSel > 0);

  btnDocs.Enabled := fSel;
  btnDet.Enabled  := fSel;
}
end;

function TfrmClientes2.GetTipoDocs:String;
Var
  i:Integer;
  tRes:String;
begin
  tRes := '';
  for i := 0 to clzDoc.Items.Count - 1 do
    if clzDoc.ItemChecked[i] then tRes := tRes + clzDoc.Items.Strings[i] + ', ';

  tRes := sm.PurgeWhileRev(tRes,[',',' ']);

  Result := tRes;

end;

procedure TfrmClientes2.GenerarReporte;
var i,iCount:Integer;
    iSheet,iRec,Row,iEsquema:Integer;
    tVal,tSel,tTP,tKey,tF,tFor:String;
    fFound,fUpdate,fDelete:Boolean;
    dMargen,dDias,dPComis,dPBase:Double;
    fPago:TDateTime;

begin

  Screen.Cursor := crHourglass;

  sbMsg.caption := 'Generando Listado de Clientes...';

  LoadXLS;

  iSheet := 1;
  F1.Sheet := iSheet;
  aB[iSheet].ColEnd := rC1.Telefono;

  Application.ProcessMessages;

  iCount := 0;
  tSel := F1.Selection;

  Application.ProcessMessages;

  if mfLast20 then begin
    PrepareSQL3
  end else begin
    PrepareSQL;
    icuRep.ParamByName('CODIGO').AsString := edzCodigo.Text;
  end;

  F1.TextSRC[2,4,2] := GetTipoDocs;

    icuRep.Open;

    iRec := 1;
    Row := miRowIni;
    while not icuRep.Eof do begin
      F1.TextSRC[iSheet,Row,rC1.CodcteProv] := icuRep.fieldbyName('CODCTEPROV').AsString;
      F1.NumberSRC[iSheet,Row,rC1.Numero]   := icuRep.fieldbyName('CODCTEPROV').AsInteger;
      F1.TextSRC[iSheet,Row,rC1.RazSocial]  := icuRep.fieldbyName('RAZSOCIAL').AsString;
      F1.TextSRC[iSheet,Row,rC1.Domicilio]  := icuRep.fieldbyName('CALLE').AsString + ' ' +
                                               icuRep.fieldbyName('NUM_EXTERIOR').AsString + ' ' +
                                               icuRep.fieldbyName('NUM_INTERIOR').AsString;
      F1.TextSRC[iSheet,Row,rC1.Colonia]    := icuRep.fieldbyName('COLONIACTE').AsString;
      F1.TextSRC[iSheet,Row,rC1.CodigoP]    := icuRep.fieldbyName('CODPOSTAL').AsString;
      F1.TextSRC[iSheet,Row,rC1.Agente]     := icuRep.fieldbyName('NUMAGENTE').AsString +'-'+icuRep.fieldbyName('NOMBAGEN').AsString;
      F1.NumberSRC[iSheet,Row,rC1.Limite]   := icuRep.fieldbyName('LIMCREDCTE').AsDouble;
      F1.TextSRC[iSheet,Row,rC1.Telefono]   := icuRep.fieldbyName('TELEFONO1').AsString;

      iCount := iCount + 1;
      if (iCount mod 10 = 0) then Application.ProcessMessages;

      icuRep.Next;
      Row := Row + 1;
    end;

    icuRep.Close;

    aB[iSheet].RowEnd := Row - 1;
    aB[iSheet].ColEnd := rC1.Telefono;

    Row := Row + 1;
    F1.TextRC[row,rC1.CodcteProv]   := 'Totales:';
    F1.NumberRC[Row,rC1.RazSocial]   := iCount;
    aB[iSheet].RowEndPrint := Row;

    F1.Selection := tSel;
  F1.Sheet := 1;
  F1.TopRow := 1;
  F1.LeftCol:= 1;

//Ordenar el reporte...
  if rbtCodigo.checked then
    cboSort.ItemIndex := 1;
  if rbtNombre.checked then
    cboSort.ItemIndex := 2;
  axnSort;

  Screen.Cursor := crDefault;
  sbMsg.caption := 'Terminado!';

end;

procedure TfrmClientes2.ListarDocs;
var i,iCount:Integer;
    iSheet,iRec,Row,iEsquema:Integer;
    tVal,tSel,tTP,tKey,tCte,tFor,tCan:String;
    fFound,fUpdate,fDelete:Boolean;
    dMargen,dDias,dPComis,dPBase:Double;
    fVence:TDateTime;

begin

  Screen.Cursor := crHourglass;

  sbMsg.caption := 'Generando Listado de Documentos...';

//  LoadXLS;

  iSheet := 2;
  F1.Sheet := iSheet;
  aB[iSheet].ColEnd := 9;

  F1.ClearRange(aB[iSheet].RowIni,2,F1.MaxRow,rC2.Id,F1ClearValues);

  Application.ProcessMessages;

  iCount := 0;
  tSel := F1.Selection;

  Application.ProcessMessages;

  tCte := sm.NthWord(1,lblCte.Caption);
  F1.TextSRC[2,4,2] := GetTipoDocs;
  F1.TextSRC[2,5,2] := lblCte.Caption;

    PrepareSQL2;
    icuDoc.ParambyName('FECHAINI').AsDateTime := xdeFechaIni.Date;
    icuDoc.ParambyName('FECHAFIN').AsDateTime := xdeFechaFin.Date+0.999;
    icuDoc.ParambyName('CODCTEPROV').AsString := tCte;
    icuDoc.Open;

    iRec := 1;
    Row := miRowIni;
    while not icuDoc.Eof do begin
      F1.TextSRC[iSheet,Row,rC2.Tipo]     := icuDoc.fieldbyName('NUMTIPODOC').AsString;
      F1.TextSRC[iSheet,Row,rC2.NomTipo]  := icuDoc.fieldbyName('NOMCORTO').AsString;
      F1.TextSRC[iSheet,Row,rC2.Serie]    := icuDoc.fieldbyName('SERIEDOCTO').AsString;
      F1.TextSRC[iSheet,Row,rC2.Folio]    := icuDoc.fieldbyName('NumDocto').AsString;
      F1.NumberSRC[iSheet,Row,rC2.Fecha]  := icuDoc.fieldbyName('FECDOCTO').AsDateTime;
      fVence  := icuDoc.fieldbyName('FECVENCEDO').AsDateTime;
      if fVence > 0 then
        F1.NumberSRC[iSheet,Row,rC2.FechaVence]  := fVence
      else
        F1.NumberSRC[iSheet,Row,rC2.FechaVence]  := F1.NumberSRC[iSheet,Row,rC2.Fecha];
      F1.NumberSRC[iSheet,Row,rC2.Monto]  := icuDoc.fieldbyName('IMPTOTALDO').AsDouble;
      F1.NumberSRC[iSheet,Row,rC2.Pendiente]  := icuDoc.fieldbyName('IMPPENDDOC').AsDouble;
      F1.TextSRC[iSheet,Row,rC2.OC]  := icuDoc.fieldbyName('REFERDOCTO2').AsString;
      F1.TextSRC[iSheet,Row,rC2.Almacen]  := icuDoc.fieldbyName('NUMALMAC').AsString;
      tCan := icuDoc.fieldbyName('CANCELA').AsString;
      if tCan = '1' then
        F1.TextSRC[iSheet,Row,rC2.Estado]  := '** Cancelado **'
      else
        F1.TextSRC[iSheet,Row,rC2.Estado]  := 'Normal';

      F1.NumberSRC[iSheet,Row,rC2.Id]     := icuDoc.fieldbyName('DOCTO_ID').AsDouble;

      iCount := iCount + 1;
      if (iCount mod 10 = 0) then Application.ProcessMessages;

      icuDoc.Next;
      Row := Row + 1;
    end;

    icuDoc.Close;

    aB[iSheet].RowEnd := Row - 1;
    aB[iSheet].ColEnd := rC2.Id;

    Row := Row + 1;
    F1.TextRC[row,rC2.Tipo]   := 'Totales:';
    tFor := 'SUM('+oF1.GetCelda(aB[iSheet].RowIni,rC2.Monto)+'..'+oF1.GetCelda(aB[iSheet].RowEnd,rC2.Monto)+')';
    F1.NumberRC[Row,rC2.Serie]   := iCount;
    F1.FormulaRC[Row,rC2.Monto]   := tFor;
    aB[iSheet].RowEndPrint := Row;

    F1.Selection := tSel;
    F1.TopRow := 1;
    F1.LeftCol:= 1;

//Ordenar Listado Por folio factura
  sbMsg.caption := 'Ordenando el reporte por factura...';
  Application.ProcessMessages;

    cboSort.ItemIndex := 0;
//    axnSort;

  F1.TopRow := 1;
  F1.LeftCol:= 1;

  Screen.Cursor := crDefault;
  sbMsg.caption := 'Terminado!';

end;

procedure TfrmClientes2.ListarDetalle;
var
  iRecCount,Row,iSheet,iSh,iCount:Integer;
  tSel,tF,tFor:String;
begin
//    Screen.Cursor := crHourglass;
  sbMsg.caption := 'Listando Partidas...';
  Application.ProcessMessages;

    iSh := F1.Sheet;
    tSel := F1.selection;
    iSheet := 3;
    F1.Sheet := iSheet;
    aB[iSheet].ColEnd := rC3.Facturadas;

    F1.ClearRange(aB[isheet].RowIni,2,F1.MaxRow,rC3.Facturadas,F1ClearValues);

    F1.TextSRC[3,5,2] := '('+F1.TextSRC[2,aB[2].Row,rC2.Tipo]+') ' +
                             F1.TextSRC[2,aB[2].Row,rC2.Folio] + '  ' +
                             F1.FormattedTextSRC[2,aB[2].Row,rC2.Fecha] + ' / ' +
                             lblCte.Caption;

    icuDet.Prepare;
    icudet.ParambyName('NUMTIPODOC').AsString := F1.TextSRC[2,aB[2].Row,rC2.Tipo];
    icuDet.ParambyName('SERIEDOCTO').AsString := F1.TextSRC[2,aB[2].Row,rC2.Serie];
    icuDet.ParambyName('NUMDOCTO').AsString   := F1.TextSRC[2,aB[2].Row,rC2.Folio];
    icuDet.Open;

    Row := miRowIni;
    while not icuDet.Eof do begin
      F1.TextSRC[iSheet,Row,rC3.Codigo]      := icuDet.fieldbyName('CODPRODSER').AsString;
      F1.TextSRC[iSheet,Row,rC3.Descri]      := icuDet.fieldbyName('DESCRIPPRO').AsString;
      F1.NUmberSRC[iSheet,Row,rC3.Unidades]  := icuDet.fieldbyName('UNIDADES').AsDouble;
      F1.NUmberSRC[iSheet,Row,rC3.PLista]    := icuDet.fieldbyName('PRECIOLISTA').AsDouble;
      F1.NUmberSRC[iSheet,Row,rC3.Descto]    := icuDet.fieldbyName('PORCDESCAU').AsDouble;
      F1.NUmberSRC[iSheet,Row,rC3.PUnitario] := icuDet.fieldbyName('PRECIO').AsDouble;
      F1.NUmberSRC[iSheet,Row,rC3.PTotal]    := icudet.fieldbyName('IMPNETOMOV').AsDouble;
      F1.NUmberSRC[iSheet,Row,rC3.Facturadas]:= icudet.fieldbyName('UNIFACT').AsDouble;
      F1.NUmberSRC[iSheet,Row,rC3.Pendientes]:= F1.NUmberSRC[iSheet,Row,rC3.Unidades] - F1.NUmberSRC[iSheet,Row,rC3.Facturadas];
      iCount := iCount + 1;
      icuDet.Next;
      Row := Row + 1;
    end;
    aB[iSheet].RowEnd := Row;

    icuDet.Close;

    Row := Row + 1;
    F1.TextRC[Row,rC3.Codigo]   := 'Totales:';
    tFor := 'SUM('+oF1.GetCelda(aB[iSheet].RowIni,rC3.PTotal)+'..'+oF1.GetCelda(aB[iSheet].RowEnd,rC3.PTotal)+')';
    F1.NumberRC[Row,rC3.Descri]   := iCount;
    F1.FormulaRC[Row,rC3.PTotal]  := tFor;

    aB[iSheet].RowEndPrint := Row;

  sbMsg.caption := 'Listo!';

end;


procedure TfrmClientes2.Resaltar1(ARen,ATipo:Integer);
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

procedure TfrmClientes2.btnActDescuentosClick(Sender: TObject);
var
  mr:Integer;
begin
  frmActDescuentos := TfrmActDescuentos.Create(Application);
  frmActDescuentos.CODCTEPROV := F1.TextRC[F1.Row,rC1.CodcteProv];
  frmActDescuentos.RAZSOCIAL := F1.TextRC[F1.Row,rC1.RazSocial];
  frmActDescuentos.SetCliente;
  mr := frmActDescuentos.ShowModal;



end;

procedure TfrmClientes2.F1SelChange(Sender: TObject);
begin
  if F1.Sheet = 1 then begin
    aB[1].Row := F1.Row;
    aB[1].Col := F1.Col;
    lblCte.Caption := F1.TextRC[F1.Row,rC1.CodcteProv] + '-' + F1.TextRC[F1.Row,rC1.RazSocial];
  end;
  if F1.Sheet = 2 then begin
    aB[2].Row := F1.Row;
    aB[2].Col := F1.Col;
  end;
end;

procedure TfrmClientes2.F1StartEdit(Sender: TObject;
  var EditString: WideString; var Cancel: Smallint);
var iCol:Integer;
begin
    iCol := F1.Col;

    if iCol in ColSet then Cancel := 1;

end;

procedure TfrmClientes2.F1DblClick(ASender: TObject; nRow, nCol: Integer);
begin
  if (F1.Sheet = 1) and (F1.Row >= aB[1].RowIni) and (F1.Row <= aB[1].RowEnd) then begin
    ListarDocs;
    exit;
  end;
  if (F1.Sheet = 2) and (F1.Row >= aB[2].RowIni) and (F1.Row <= aB[2].RowEnd) then
    ListarDetalle;
end;

procedure TfrmClientes2.F1KeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmClientes2.tbtCreateClick(Sender: TObject);
begin
  axnLimpiar;
end;

procedure TfrmClientes2.tbtGenerarClick(Sender: TObject);
begin
    GenerarReporte;
end;

procedure TfrmClientes2.tbtGrabarClick(Sender: TObject);
begin
    axnGrabar;
end;

procedure TfrmClientes2.tbtPreverClick(Sender: TObject);
begin
    axnPrever;
end;

procedure TfrmClientes2.tbtImprimirClick(Sender: TObject);
begin
    axnImprimir;
end;

procedure TfrmClientes2.tbtModificarClick(Sender: TObject);
begin
  Cliente_Update;
end;

procedure TfrmClientes2.axnLimpiar;
begin
//    F1.ClearRange (miRowIni,1,F1.LastRow,20,f1ClearValues);
  LoadXLS;
  sbMsg.Caption := '';
  cboSort.ItemIndex := 0;
  pgcsincro.ActivePageIndex := 0;
  Calculafechas;


end;
procedure TfrmClientes2.axnLeer;
var    tBuffer:WideString;
begin

        try
            F1.OpenFileDlg('Abrir archivo Articulos',frmclientes2.Handle,tBuffer);
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

procedure TfrmClientes2.axnGrabar;
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

procedure TfrmClientes2.axnPrever;
begin
    SetPrintSelection;
    try
        F1.FilePrintPreview;
    except
        MessageDlg('Imposible hacer la presentacion preliminar!', mtWarning,[mbOk], 0);

    end;

end;

procedure TfrmClientes2.btnDetClick(Sender: TObject);
begin
  ListarDetalle;
end;

procedure TfrmClientes2.btnDocsClick(Sender: TObject);
begin
  ListarDocs;
end;

procedure TfrmClientes2.btnLast20Click(Sender: TObject);
begin
  mfLast20 := True;
  GenerarReporte;

end;

procedure TfrmClientes2.btnListarCteClick(Sender: TObject);
begin
  mfLast20 := False;
  GenerarReporte;
end;

procedure TfrmClientes2.btnSortClick(Sender: TObject);
begin
  axnSort;
end;

procedure TfrmClientes2.axnImprimir;
begin

    SetPrintSelection;

    try
        F1.FilePrint(True);
    except
        MessageDlg('No es posible imprimir!', mtWarning,[mbOk], 0);
    end;

end;

procedure TfrmClientes2.SetPrintSelection;
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

procedure TfrmClientes2.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmClientes2.FormShow(Sender: TObject);
begin
      MainForm.AplicarPerfil2(self);

end;

procedure TfrmClientes2.itmAyudaClick(Sender: TObject);
begin
  ShowHelp('frmClientes2');
end;

procedure TfrmClientes2.itmBuscarClick(Sender: TObject);
begin
  F1.FindDlg;
end;

procedure TfrmClientes2.itmFijarClick(Sender: TObject);
begin
  axnFixRows(miRowIni-1);
end;

procedure TfrmClientes2.itmLiberarClick(Sender: TObject);
begin
  axnFixRows(0);
end;

procedure TfrmClientes2.axnFixRows(ARows:Integer);
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

procedure TfrmClientes2.axnFiltrarVendedores(AShow:Boolean);
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

procedure TfrmClientes2.axnSort;
var
  iIndex,iSheet,ix:Integer;
  iC1,iC2,iC3:Integer;
begin
  ix := F1.Sheet;
  iSheet := 1;
  iIndex := cboSort.ItemIndex;
case iIndex of
    0: begin
         iC1 := rC1.CodcteProv; iC2:=0; iC3:=0;
       end;
    1: begin
         iC1 := -rC1.Numero; iC2:=0; iC3:=0;
       end;
    2: begin
         iC1 := rC1.RazSocial; iC2:=0; iC3:=0;
       end;
  end;

  F1.Sheet := iSheet;

  F1.Sort3(aB[iSheet].RowIni,1,aB[iSheet].RowEnd,aB[iSheet].ColEnd,True,iC1,iC2,iC3);

  F1.Sheet := ix;
end;

{-------------------------------------------------------------------------------
--- Actualizacion de Clientes
--------------------------------------------------------------------------------}
procedure TfrmClientes2.tbtNuevoClick(Sender: TObject);
begin
  Cliente_Insert;
end;

procedure TfrmClientes2.Cliente_Insert;
begin
  if frmClienteAct = nil then
    frmClienteAct := TfrmClienteAct.Create(Application);

  frmClienteAct.SetEstado_Insert;
  frmClienteAct.ShowModal;

  FreeandNil(frmClienteAct);

end;

procedure TfrmClientes2.Cliente_Update;
var
  tCod:String;
begin
  if frmClienteAct = nil then
    frmClienteAct := TfrmClienteAct.Create(Application);

  tCod := Trim(F1.TextSRC[1,F1.Row,2]);
  if length(tCod) <=0 then begin
    MessageDlg('No hay cliente seleccionado!!', mtError, [mbOK], 0);
    exit;
  end;

  frmClienteAct.Codigo := tCod;
  frmClienteAct.SetEstado_Update;
  frmClienteAct.ShowModal;

  FreeandNil(frmClienteAct);

end;

procedure TfrmClientes2.Cliente_Delete;
var
  tCod:String;
begin
  if frmClienteAct = nil then
    frmClienteAct := TfrmClienteAct.Create(Application);

  tCod := Trim(F1.TextSRC[1,F1.Row,2]);
  if length(tCod) <=0 then begin
    MessageDlg('No hay cliente seleccionado!!', mtError, [mbOK], 0);
    exit;
  end;
  frmClienteAct.Codigo := tCod;
  frmClienteAct.SetEstado_Delete;
  frmClienteAct.ShowModal;

end;
end.
