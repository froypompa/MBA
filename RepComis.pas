unit RepComis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TB2Dock, TB2Toolbar, ComCtrls, TB2ExtItems, TBXExtItems, TBX, AxCtrls, OleCtrls,
  StdCtrls, Mask, RxToolEdit, Menus, VCIF1Lib_TLB,IniFiles, LibApp, RxPlacemnt,
  RXCtrls, ExtCtrls, RXSpin, ProductoSearch, FamiliaSearch, EsBDates, HHelp,
  rxCurrEdit, TB2Item, IB_Components, FormulaOneLib, RzButton, RzLabel,
  RzCmboBx, RzPanel, RzEdit, RzTabs, RzBckgnd;

type
  TfrmRepComis = class(TForm)
    dckSincro: TTBXDock;
    tlbMain: TTBXToolbar;
    tbtSalir: TTBXItem;
    pgcDatos: TPageControl;
    tshAct: TTabSheet;
    tshList: TTabSheet;
    tbtImprimir: TTBXItem;
    tbtPrever: TTBXItem;
    tbtGrabar: TTBXItem;
    tbtGenerar: TTBXItem;
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
    Label5: TLabel;
    xdeFechaIni: TDateEdit;
    xdeFechaFin: TDateEdit;
    Label1: TLabel;
    TBXSeparatorItem2: TTBXSeparatorItem;
    icuRep: TIB_Cursor;
    icuTablas: TIB_Cursor;
    lblMsg: TLabel;
    grbSort: TRzGroupBox;
    cboSort: TRzComboBox;
    RzLabel1: TRzLabel;
    btnSort: TRzBitBtn;
    icuAgentes: TIB_Cursor;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBSeparatorItem1: TTBSeparatorItem;
    itmLiberar: TTBXItem;
    itmFijar: TTBXItem;
    RzGroupBox1: TRzGroupBox;
    btnFiltro: TRzBitBtn;
    cboVendedor: TRzComboBox;
    TBXSeparatorItem3: TTBXSeparatorItem;
    itmBuscar: TTBXItem;
    itmAyuda: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    pgcReporte: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    F1: TF1Book;
    F2: TF1Book;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    itmRIGenerar: TTBXItem;
    itmRIGrabarXLS: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    lblAgente: TTBXLabelItem;
    itmRIRecalcular: TTBXItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    itmRIImprimir: TTBXItem;
    TBXSeparatorItem8: TTBXSeparatorItem;
    tbtEsconder: TTBXItem;
    tbtAuxiliar: TTBXItem;
    TBXSeparatorItem9: TTBXSeparatorItem;
    tshAux: TTabSheet;
    RzGroupBox2: TRzGroupBox;
    RzLabel3: TRzLabel;
    edzActual: TRzNumericEdit;
    RzLabel4: TRzLabel;
    edzNuevo: TRzNumericEdit;
    RzLabel5: TRzLabel;
    btnReemplazar: TRzBitBtn;
    cboCol: TRzComboBox;
    cboRen: TRzComboBox;
    RzLabel6: TRzLabel;
    pnzAnalisis: TRzPanel;
    lblStatus: TRzLabel;
    lblArt: TRzLabel;
    RzSeparator1: TRzSeparator;
    lblFam: TRzLabel;
    lblFac: TRzLabel;
    pnzStatus: TRzPanel;
    RzLabel7: TRzLabel;
    RzSeparator2: TRzSeparator;
    lblSt0: TRzLabel;
    lblSt5: TRzLabel;
    lblSt4: TRzLabel;
    lblSt3: TRzLabel;
    lblSt2: TRzLabel;
    lblSt1: TRzLabel;
    itmRILeerXLS: TTBXItem;
    popF2: TTBXPopupMenu;
    itmRecalcular: TTBXItem;
    TBXSeparatorItem10: TTBXSeparatorItem;
    itmCopiar: TTBXItem;
    itmCopiarA: TTBXItem;
    TBXSeparatorItem11: TTBXSeparatorItem;
    itmPegar: TTBXItem;
    itmPegarV: TTBXItem;
    TBXSeparatorItem12: TTBXSeparatorItem;
    lblPorc: TRzLabel;
    tbtIrStatus: TTBXSubmenuItem;
    TBXSeparatorItem13: TTBXSeparatorItem;
    itmSt0: TTBXItem;
    itmSt1: TTBXItem;
    itmSt2: TTBXItem;
    itmSt3: TTBXItem;
    itmSt4: TTBXItem;
    itmSt5: TTBXItem;
    itmInicio: TTBXItem;
    TBXSeparatorItem14: TTBXSeparatorItem;
    procedure SetUp;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtSalirClick(Sender: TObject);
    procedure LoadXLS;
    procedure LoadXLS2;
    procedure FormCreate(Sender: TObject);
    procedure Preferencias1Click(Sender: TObject);
    procedure CargarTablas;
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
    procedure UpdateControls(Sender: TObject);
    procedure GenerarReporte;
    procedure ReporteFacturas;
    procedure ReporteAgentes;
    procedure GetComisiones(AEsquema:Integer;
                            ACodFamilia:String;
                            ADias:Double;
                            ADescto:Double;
                            AMargen:Double;
                            ATipoCalculo:Double;
                            var PorcComision:Double;
                            var BaseComision:Double);
    procedure AcumulaAgente(ACodAgente:String;
                            AMontoPagado:Double;
                            AComision:Double);
    procedure btnSortClick(Sender: TObject);
    procedure itmFijarClick(Sender: TObject);
    procedure itmLiberarClick(Sender: TObject);
    procedure xdeFechaIniDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure axnFiltrarVendedores(AShow:Boolean);
    procedure btnFiltroClick(Sender: TObject);
    procedure Resaltar1(ARen,ATipo:Integer);
    procedure Resaltar2(ARen,ATipo:Integer);
    procedure itmBuscarClick(Sender: TObject);
    procedure itmAyudaClick(Sender: TObject);
    procedure pgcReporteChange(Sender: TObject);
    procedure GetAgente(ASheet:Integer;
                        ARow:Integer);
                    {var ACodAgente:String;
                    var ANomAgente:String);}
    function BuscaAgenteF1(ACod:String):String;
    procedure itmRIGenerarClick(Sender: TObject);
    procedure F1DblClick(ASender: TObject; nRow, nCol: Integer);
    procedure GenerarRI;
    procedure ReporteFacturasRI;
    procedure axnGrabarRI;
    procedure axnLeerRI;
    procedure itmRIGrabarXLSClick(Sender: TObject);
    procedure tbtEsconderClick(Sender: TObject);
    procedure tbtAuxiliarClick(Sender: TObject);
    procedure AjustarComisiones;
    procedure F2SelChange(Sender: TObject);
    procedure AnalisisPartida;
    procedure Corrige(Sender: TObject);
    procedure btnReemplazarClick(Sender: TObject);
    procedure Reemplazar;
    procedure ReemplazaFamilia;
    procedure ReemplazaFactura;
    procedure ReemplazaSeleccion;
    procedure AnalizaStatus;
    procedure ClearStatus;
    procedure DisplayStatus;
    procedure itmRIRecalcularClick(Sender: TObject);
    procedure itmRILeerXLSClick(Sender: TObject);
    procedure itmRecalcularClick(Sender: TObject);
    procedure itmCopiarClick(Sender: TObject);
    procedure itmCopiarAClick(Sender: TObject);
    procedure itmPegarClick(Sender: TObject);
    procedure itmPegarVClick(Sender: TObject);
    procedure popF2Popup(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure lblSt0DblClick(Sender: TObject);
    procedure LocalizaStatus(ATag:Integer);
    procedure itmSt0Click(Sender: TObject);
    procedure itmInicioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Type
  TBook = Record
    RowIni: Integer;
    ColIni: Integer;
    RowEnd: Integer;
    ColEnd: Integer
  end;
  TCol3 = Record
    Folio       :Integer;
    Fecha       :Integer;
    Cliente     :Integer;
    Monto       :Integer;
    Cobrado     :Integer;
    CodProdSer  :Integer;
    DescripPro  :Integer;
    Unidades    :Integer;
    PrecioLista :Integer;
    PorcDescto  :Integer;
    ValidaDescto:Integer;
    PUnitario   :Integer;
    PTotal      :Integer;
    CostoTot    :Integer;
    Margen      :Integer;
    Tipocambio  :Integer;
    PorcPagado  :Integer;
    PIva        :Integer;
    Esquema     :Integer;
    CodFamilia  :Integer;
    NumAgente   :Integer;
    DiasV       :Integer;
    BaseCom     :Integer;
    TipoCalc    :Integer;
    PorcComis   :Integer;
    ComisBruta  :Integer;
    ComisPagar  :Integer;
    Status      :Integer;
    InicioRes   :Integer;
  end;
  TStatus = Record
    Descri       :String;
    Cantidad     :Integer;
    Bruta        :Double;
    APagar       :Double;
  end;

var
  frmRepComis: TfrmRepComis;
  iType:SmallInt;
  mfLook,mfShowMsg:Boolean;
  ColSet: set of 1..200;
  miRowIni:Integer = 8;
  miColIni:INteger = 2;
  miRowEnd,miRowEnd4:Integer;
  oIni:TIniFile;
  mrRes:Integer;
  aB: array[1..5] of TBook;
  aB2: array[1..5] of TBook;
  aSt: array[0..5] of TStatus;
  rC3:TCol3;
  oF1:TF1Lib;

implementation

uses Main, OpcionesF1, StrMan, SelTabla, DM_MBA, RepComisAux;

// var WCols: array[1..100] of integer;
{$R *.DFM}

procedure TfrmRepComis.FormCreate(Sender: TObject);
var tFile:String;
begin

    frmRepComisAux := TfrmRepComisAux.Create(Application);

    tFile := LibApp.GetIniFile;
    oIni := TIniFile.Create (tFile);
    oF1  := TF1Lib.Create;

    SetUp;

    LoadXLS;
//  Columnas que no se pueden modificar en el F1...
    ColSet := [1];

  with icuRep do begin
    SQL.Clear;
    Sql.Add ('SELECT * FROM Rep_Comis01(?P_FECHAINI,?P_FECHAFIN); ');
    Prepare;
  end;

  with icuTablas do begin
    SQL.Clear;
    Sql.Add ('SELECT * FROM TABLACOMIS ORDER BY ESQUEMA,CODFAMILIA,HOJA,REN ');
    Prepare;
  end;

  with icuAgentes do begin
    SQL.Clear;
    Sql.Add ('SELECT * FROM MBA10001 ORDER BY NUMAGENTE ');
    Prepare;
  end;

  UpdateControls(nil);

end;

procedure TfrmRepComis.FormActivate(Sender: TObject);
begin
  pgcDatos.ActivePageIndex := 0;
  CalculaFechas;
end;

procedure TfrmRepComis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    FreeAndNil(oIni);
    FreeAndNil(oF1);
    frmRepComis := nil;
    FreeAndNil(frmRepComisAux);
    Action := caFree;
end;

procedure TfrmRepComis.tbtSalirClick(Sender: TObject);
begin
    close;
end;

procedure TfrmRepComis.tbtAuxiliarClick(Sender: TObject);
begin
  pgcDatos.ActivePageIndex := 2;
  F2.Sheet := 3; // Detalle de partidas
//  frmRepComisAux.Show;
//  AjustarComisiones;
end;

procedure TfrmRepComis.SetUp;
begin
  aB[1].RowIni := miRowIni;
  aB[2].RowIni := miRowIni;
  aB[3].RowIni := miRowIni;
  aB[4].RowIni := miRowIni;

  aB2[1].RowIni := miRowIni;
  aB2[2].RowIni := miRowIni;
  aB2[3].RowIni := miRowIni;

  aB[1].ColIni := miColIni;
  aB[2].ColIni := miColIni;
  aB[3].ColIni := miColIni;
  aB[4].ColIni := miColIni;

  aB2[1].ColIni := miColIni;
  aB2[2].ColIni := miColIni;
  aB2[3].ColIni := miColIni;

//Columnas del detalle de facturas
  rC3.Folio        := 2;
  rC3.Fecha        := 3;
  rC3.Cliente      := 4;
  rC3.Monto        := 5;
  rC3.Cobrado      := 6;
  rC3.CodProdSer   := 7;
  rC3.DescripPro   := 8;
  rC3.Unidades     := 9;
  rC3.PrecioLista  := 10;
  rC3.PorcDescto   := 11;
  rC3.ValidaDescto := 12;
  rC3.PUnitario    := 13;
  rC3.PTotal       := 14;
  rC3.CostoTot     := 15;
  rC3.Margen       := 16;
  rC3.TipoCambio   := 17;
  rC3.PorcPagado   := 18;
  rC3.PIva         := 19;
  rC3.Esquema      := 20;
  rC3.CodFamilia   := 21;
  rC3.NumAgente    := 22;
  rC3.DiasV        := 23;
  rC3.BaseCom      := 24;
  rC3.TipoCalc     := 25;
  rC3.PorcComis    := 26;
  rC3.ComisBruta   := 27;
  rC3.ComisPagar   := 28;
  rC3.Status       := 29; //0=Todo normal,1=No Paga (Normal),2=No paga (Anormal)
  rC3.InicioRes    := rC3.Status + 3;

//Status de las partidas
  aSt[0].Descri := 'Pago Normal! En base a las tablas de parametros.  ';
  aSt[1].Descri := 'Cuidado! No calcula porque NO hay Costo o Familia.';
  aSt[2].Descri := 'No hay pago! Dias vencidos MUY altos.             ';
  aSt[3].Descri := 'No hay pago! Margen MUY bajo.                     ';
  aSt[4].Descri := 'No hay pago! Descuento MUY alto.                  ';
  aSt[5].Descri := 'Pago Incompleto! Dias vencidos MUY altos.         ';
  ClearStatus;


end;

procedure TfrmRepComis.CalculaFechas;
var
  iA,iM,iD:Integer;
  fLast:TDateTime;
begin
  ESBDates.OptDecodeDateI(Date,iA,iM,iD);
  if iD <= 15 then begin
    fLast := ESBDates.GetLastDayOfMonth(Date-15); //Menos 15 dias, para ir al mes anterior
    ESBDates.OptDecodeDateI(fLast,iA,iM,iD);
    xdeFechaIni.date := ESBDates.OptEncodeDateI(iA,iM,16);
    xdeFechaFin.date := fLast;
  end else begin
    xdeFechaIni.date := ESBDates.OptEncodeDateI(iA,iM,1);
    xdeFechaFin.date := ESBDates.OptEncodeDateI(iA,iM,15);
  end;

end;

procedure TfrmRepComis.LoadXLS;
var tFile,tDir:String;
begin
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'FMT_REPCOMIS.xls';
    tFile := tDir+'\'+tFile;
    F1.Read (tFile,iType);
    F1.FixedRows := 7;
    miRowIni := F1.FixedRows + 1;
    F1.PrintTitles := 'A1:IV7';
    F1.Sheet :=1;
    F1.TextRC[2,2] := oEmp.RAZSOCIAL;
    F1.AllowDelete := False;
    F1.ShowEditBar := True;
    F1.Modified := False;

    oF1.F1 := F1;

    LoadXLS2;

    pgcReporte.ActivePageIndex := 0;


end;

procedure TfrmRepComis.LoadXLS2;
var
  tFile,tDir:String;
  i:Integer;
begin
// reporte Individual por agente
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'FMT_REPCOMIS2.xls';
    tFile := tDir+tFile;
    F2.Read (tFile,iType);
//    miRowIni := F2.FixedRows + 1;
    for i := 1 to 3 do begin
      F2.Sheet :=i;
      F2.PrintTitles := 'A1:IV7';
      F2.FixedRows := 7;
      F2.AllowDelete := False;
      F2.ShowEditBar := True;
      F2.Modified := False;
      F2.ShowSelections := F1On;
    end;
    F2.Sheet := 1;
    F2.TextRC[2,2] := oEmp.RAZSOCIAL;

end;

procedure TfrmRepComis.UpdateControls(Sender: TObject);
begin
//
end;

procedure TfrmRepComis.xdeFechaIniDblClick(Sender: TObject);
begin
  xdeFechaIni.date := ESBDates.Str2Date('01/06/2011');
  xdeFechaFin.date := ESBDates.Str2Date('30/06/2011');

end;

procedure TfrmRepComis.Preferencias1Click(Sender: TObject);
var iRes :Integer;
begin
    frmOpcF1 := TFrmOpcF1.Create (Application);
    frmOpcF1.F1 := F1;
    iRes := frmOpcF1.showmodal;

end;

procedure TfrmRepComis.CargarTablas;
var i:Integer;
    iRecCount,iRec,iSheet:Integer;
    tFiltro,tKey,tTipoProd,tSel,tP1,tP2,tCodIni,tCodFin:String;
    fFound,fBorrado:Boolean;
    Row,Col:Integer;
begin
//    Screen.Cursor := crHourglass;
    lblMsg.caption := 'Cargando tablas de comisiones...';

    tSel := F1.selection;
    iSheet := 4;

    icuTablas.Open;

    iRecCount := icuTablas.RecordCount;
    iRec := 1;
    Row := miRowIni;
    while not icuTablas.Eof do begin
      F1.NumberSRC[iSheet,Row,2]  := icuTablas.fieldbyName('ESQUEMA').AsInteger;
      F1.TextSRC[iSheet,Row,3]    := icuTablas.fieldbyName('CODFAMILIA').AsString;
      F1.NumberSRC[iSheet,Row,4]  := icuTablas.fieldbyName('HOJA').AsInteger;
      F1.NumberSRC[iSheet,Row,5]  := icuTablas.fieldbyName('REN').AsInteger;
      F1.NumberSRC[iSheet,Row,6]  := icuTablas.fieldbyName('LIMITEINF').AsDouble;
      F1.NumberSRC[iSheet,Row,7]  := icuTablas.fieldbyName('LIMITESUP').AsDouble;
      F1.NumberSRC[iSheet,Row,8]  := icuTablas.fieldbyName('PORCENTAJE').AsDouble;
      F1.TextSRC[iSheet,Row,9]    := icuTablas.fieldbyName('OBSERVACIONES').AsString;

      icuTablas.Next;
      Row := Row + 1;
    end;

    F1.Selection := tSel;

//    Screen.Cursor := crDefault;

    icuTablas.Close;

    aB[iSheet].RowEnd := Row;
    aB[iSheet].ColEnd := 8;


// Empezar a checar si se ha modificado el F1...
    mfLook := True

end;

procedure TfrmRepComis.GenerarReporte;
var i,iCount:Integer;
    iSheet,iRec,Row,iEsquema:Integer;
    tVal,tSel,tTP,tKey,tF:String;
    fFound,fUpdate,fDelete:Boolean;
    dMargen,dDias,dPComis,dPBase,dTC:Double;
    fPago:TDateTime;

begin

  Screen.Cursor := crHourglass;

  lblMsg.caption := 'Generando reporte detallado de comisiones...';

  LoadXLS;

  iSheet := 3;
  F1.Sheet := iSheet;
  aB[iSheet].ColEnd := rC3.ComisPagar;

  Application.ProcessMessages;

  iCount := 0;
  tSel := F1.Selection;

  CargarTablas;
  ReporteAgentes;

  lblMsg.caption := 'Generando reporte detallado de comisiones...';
  Application.ProcessMessages;

  tF := 'Periodo de Cobro: ';
  tF := tF + ESBDATES.Date2StrShort2(xdeFechaIni.date)+ ' al ' +
             ESBDATES.Date2StrShort2(xdeFechaFin.date);
  F1.TextSRC[1,5,2] := tF;


//    iRecCount := icuTablas.RecordCount;
    icuRep.ParambyName('P_FECHAINI').AsDateTime := xdeFechaIni.Date;
    icuRep.ParambyName('P_FECHAFIN').AsDateTime := xdeFechaFin.Date+0.999;
    icuRep.Open;

    iRec := 1;
    Row := miRowIni;
    while not icuRep.Eof do begin
      iEsquema := icuRep.fieldbyName('Esquema').AsInteger;

      F1.NumberSRC[iSheet,Row,rC3.TipoCambio] := icuRep.fieldbyName('TIPOCAMBIO').AsDouble;
      dTC := F1.NumberSRC[iSheet,Row,rC3.TipoCambio];

      F1.TextSRC[iSheet,Row,rC3.Folio]         := icuRep.fieldbyName('NumDocto').AsString;
      F1.NumberSRC[iSheet,Row,rC3.Fecha]       := icuRep.fieldbyName('FECDOCTO').AsDateTime;
      F1.TextSRC[iSheet,Row,rC3.Cliente]       := icuRep.fieldbyName('CODCTEPROV').AsString +' ' +
                                                  icuRep.fieldbyName('RAZSOCIAL').AsString  ;
      F1.NumberSRC[iSheet,Row,rC3.Monto]       := icuRep.fieldbyName('IMPTOTALDO').AsDouble * dTC;
      F1.NumberSRC[iSheet,Row,rC3.Cobrado]     := icuRep.fieldbyName('IMPORTEPAGO').AsDouble * dTC;
      F1.TextSRC[iSheet,Row,rC3.CodProdSer]    := icuRep.fieldbyName('CODPRODSER').AsString;
      F1.TextSRC[iSheet,Row,rC3.DescripPro]    := icuRep.fieldbyName('DESCRIPPRO').AsString;
      F1.NumberSRC[iSheet,Row,rC3.Unidades]    := icuRep.fieldbyName('UNIDADES').AsDouble;
      // Lo cambie por el PrecioLista1...
      F1.NumberSRC[iSheet,Row,rC3.PrecioLista] := icuRep.fieldbyName('PRECIOLISTA').AsDouble * dTC;
      F1.NumberSRC[iSheet,Row,rC3.PorcDescto]  := icuRep.fieldbyName('PorcDescAu').AsDouble;
      F1.NumberSRC[iSheet,Row,rC3.PUnitario]   := icuRep.fieldbyName('Precio').AsDouble * dTC;
      F1.NumberSRC[iSheet,Row,rC3.PTotal] := (F1.NumberSRC[iSheet,Row,rC3.PUnitario] * F1.NumberSRC[iSheet,Row,rC3.Unidades]); //icuRep.fieldbyName('TotalMovto').AsDouble;
      F1.NumberSRC[iSheet,Row,rC3.CostoTot] := icuRep.fieldbyName('CostoMov').AsDouble * dTC;
      tF := '(1 - (' + oF1.GetCelda(Row,rC3.CostoTot) + '/' + oF1.GetCelda(Row,rC3.PTotal) + ')) * 100';
//      dMargen := F1.NumberSRC[iSheet,Row,14] / F1.NumberSRC[iSheet,Row,13] ;
      F1.FormulaSRC[iSheet,Row,rC3.Margen] := tF; //(1-dMargen) * 100;

      if (F1.NumberSRC[iSheet,Row,rC3.CostoTot] <=0) then
        F1.NumberSRC[iSheet,Row,rC3.Margen] := 0;

      F1.NumberSRC[iSheet,Row,rC3.TipoCalc] := icuRep.fieldbyName('TipoCalculo').AsDouble;

      if F1.NumberSRC[iSheet,Row,rC3.PorcDescto] <= 0 then begin
        if F1.NumberSRC[iSheet,Row,rC3.PrecioLista] > 0 then begin

          F1.NumberSRC[iSheet,Row,rC3.ValidaDescto] :=  (1 - (F1.NumberSRC[iSheet,Row,rC3.PUnitario] / F1.NumberSRC[iSheet,Row,rC3.PrecioLista])) * 100;
          if F1.NumberSRC[iSheet,Row,rC3.ValidaDescto] > 0 then
            F1.NumberSRC[iSheet,Row,rC3.TipoCalc] := 1 //El descuento calculado esta bien...
          else
            F1.NumberSRC[iSheet,Row,rC3.TipoCalc] := 2; //No trae Descto: calculo en base a Margen

        end else begin
          F1.NumberSRC[iSheet,Row,rC3.TipoCalc] := 2; //No trae Descto ni PrecioLista: calculo en base a Margen
          F1.NumberSRC[iSheet,Row,rC3.ValidaDescto] := 0;
        end;
      end else begin
        F1.NumberSRC[iSheet,Row,rC3.ValidaDescto] := F1.NumberSRC[iSheet,Row,rC3.PorcDescto]
      end;

      tF := '(' + oF1.GetCelda(Row,rC3.Cobrado) + '/' + oF1.GetCelda(Row,rC3.Monto) + ') * 100';
      F1.FormulaSRC[iSheet,Row,rC3.PorcPagado] := tF; //F1.NumberSRC[iSheet,Row,6] / F1.NumberSRC[iSheet,Row,5] * 100;
      F1.NumberSRC[iSheet,Row,rC3.PIva] := icuRep.fieldbyName('PorcIvaMov').AsDouble;
      F1.NumberSRC[iSheet,Row,rC3.Esquema] := iEsquema;
      F1.TextSRC[iSheet,Row,rC3.CodFamilia]   := icuRep.fieldbyName('CodFamilia').AsString;
      F1.TextSRC[iSheet,Row,rC3.NumAgente]   := icuRep.fieldbyName('NumAgente').AsString;
      fPago := icuRep.fieldbyName('FecPago').AsDateTime;
      dDias := sm.ToI(icuRep.fieldbyName('DiasCredit').AsString);
      dDias := fPago - F1.NumberSRC[iSheet,Row,rC3.Fecha] - dDias;
      F1.NumberSRC[iSheet,Row,rC3.DiasV] := dDias;

      GetComisiones(iEsquema,
                    F1.TextSRC[iSheet,Row,rC3.CodFamilia],
                    dDias,
                    F1.NumberSRC[iSheet,Row,rC3.ValidaDescto],
                    F1.NumberSRC[iSheet,Row,rC3.Margen],
                    F1.NumberSRC[iSheet,Row,rC3.TipoCalc],
                    dPComis,
                    dPBase);

      F1.NumberSRC[iSheet,Row,rC3.BaseCom] := dPBase;
      F1.NumberSRC[iSheet,Row,rC3.PorcComis] := dPComis;
      tF := oF1.GetCelda(Row,rC3.PTotal) + '* ('+oF1.GetCelda(Row,rC3.PorcComis)+'/100) * ('+oF1.GetCelda(Row,rC3.PorcPagado)+'/100)';
      F1.FormulaSRC[iSheet,Row,rC3.ComisBruta] := tF;
      tF := oF1.GetCelda(Row,rC3.ComisBruta) + '* ('+oF1.GetCelda(Row,rC3.BaseCom)+'/100)';
      F1.FormulaSRC[iSheet,Row,rC3.ComisPagar] := tF;
      if (F1.NumberSRC[iSheet,Row,rC3.ComisPagar] = 0) then
        Resaltar1(Row,2);
      if (F1.NumberSRC[iSheet,Row,rC3.ValidaDescto] = 0) and
         (F1.NumberSRC[iSheet,Row,rC3.TipoCalc] = 2) and
         (F1.NumberSRC[iSheet,Row,rC3.Margen] = 0) then begin
            F1.NumberSRC[iSheet,Row,rC3.PorcComis] := 0;
            Resaltar1(Row,1);
         end;

      iCount := iCount + 1;
      if (iCount mod 10 = 0) then Application.ProcessMessages;

      icuRep.Next;
      Row := Row + 1;
    end;

    icuRep.Close;

    aB[iSheet].RowEnd := Row - 1;

    F1.Selection := tSel;
    F1.TopRow := 1;
    F1.LeftCol:= 1;

//Ordenar Listado Por folio factura
  lblMsg.caption := 'Ordenando el reporte por factura...';
  Application.ProcessMessages;

    cboSort.ItemIndex := 0;
    axnSort;

// Reporte por factura
  ReporteFacturas;

  F1.Sheet := 1;
  F1.TopRow := 1;
  F1.LeftCol:= 1;

  Screen.Cursor := crDefault;
  lblMsg.caption := 'Terminado!';

end;

procedure TfrmRepComis.ReporteFacturas;
var
  iRow,iRowF,iSD,iSF:Integer;
  tFac,tFacx,tAgente,tCliente: String;
  fFirst,fSigue:Boolean;
  fFecha:Tdatetime;
  dMonto,dPago,dComision,dIVA,dTotalComis,dTotalCobrado,dTC:Double;
begin
  Screen.Cursor := crHourglass;

  lblMsg.caption := 'Generando reporte de facturas...';
  Application.ProcessMessages;

  iSD := 3;
  iSF := 2;

  iRow  := miRowIni;
  iRowF := miRowIni;
  fFirst := True;
  tFacx:= '@@@';
  fSigue := True;
  tFac := F1.TextSRC[iSD,iRow,rC3.Folio];
  tFacx:= tFac;
  while (fSigue) do begin
    if tFac <> tFacx then begin
      F1.TextSRC[iSF,iRowF,2] := tAgente;
      F1.TextSRC[iSF,iRowF,3] := tFacx; //F1.TextSRC[iSD,iRow,2];
      F1.NumberSRC[iSF,iRowF,4] := fFecha;
      F1.TextSRC[iSF,iRowF,5] := tCliente;
      F1.NumberSRC[iSF,iRowF,6] := dMonto;
      F1.NumberSRC[iSF,iRowF,7] := dPago;
      F1.NumberSRC[iSF,iRowF,8] := dMonto - dPago;
      F1.NumberSRC[iSF,iRowF,9] := dTC;
      F1.NumberSRC[iSF,iRowF,10] := dComision;
      if dComision <> 0 then
        F1.NumberSRC[iSF,iRowF,11] := ((dComision * (1+(dIVA/100))) / dMonto) * 100
      else
        F1.NumberSRC[iSF,iRowF,11] := 0;

      dTotalCobrado := dTotalCobrado + dPago;
      dTotalComis := dTotalComis + dComision;

      AcumulaAgente(tAgente,dPago,dComision);

      tFacx := tFac;

      iRowF := iRowF + 1;

      dComision := 0;

    end;

    if (tFac = '') then break;

    dTC     := F1.NumberSRC[iSD,iRow,rC3.TipoCambio];

    fFecha    := F1.NumberSRC[iSD,iRow,rC3.Fecha];
    tAgente   := F1.TextSRC[iSD,iRow,rC3.NumAgente];
    tCliente  := F1.TextSRC[iSD,iRow,rC3.Cliente];
    dMonto    := F1.NumberSRC[iSD,iRow,rC3.Monto];
    dPago     := F1.NumberSRC[iSD,iRow,rC3.Cobrado];
    dIVA      := F1.NumberSRC[iSD,iRow,rC3.PIva];
    dComision := dComision + F1.NumberSRC[iSD,iRow,rC3.ComisPagar];

    iRow := iRow +1;
    tFac := F1.TextSRC[iSD,iRow,rC3.Folio];

  end; {while}

  iRowF := iRowF + 1;
  F1.TextSRC[iSF,iRowF,2] := 'Totales:';
  F1.NumberSRC[iSF,iRowF,7] := dTotalCobrado;
  F1.NumberSRC[iSF,iRowF,9] := dTotalComis;

  aB[iSF].RowEnd := iRowF;
  aB[iSF].ColEnd := 10;


  Screen.Cursor := crDefault;
  lblMsg.caption := 'Terminado!';

end;

procedure TfrmRepComis.AcumulaAgente(ACodAgente:String;
                                     AMontoPagado:Double;
                                     AComision:Double);
var
  iSA,iSF,iRow:Integer;
  tCod:String;
begin
  iSA := 1;
  iSF := 2;

  iRow  := miRowIni;
  tCod := F1.TextSRC[iSA,iRow,2];
  while (tCod<>'') do begin
    if tCod = ACodAgente then begin
      F1.NumberSRC[iSA,iRow,5] := F1.NumberSRC[iSA,iRow,5] + AMontoPagado;
      F1.NumberSRC[iSA,iRow,6] := F1.NumberSRC[iSA,iRow,6] + AComision;
      break;
    end;
      iRow := iRow + 1;
      tCod := F1.TextSRC[iSA,iRow,2];

    end;

end;

procedure TfrmRepComis.ReporteAgentes;
var
  iRecCount,Row,iSheet,iSh:Integer;
  tSel,tF:String;
begin
//    Screen.Cursor := crHourglass;
  lblMsg.caption := 'Listando Agentes...';
  Application.ProcessMessages;

    iSh := F1.Sheet;
    tSel := F1.selection;
    iSheet := 1;
    F1.Sheet := iSheet;
    aB[iSheet].ColEnd := 7;

    cboVendedor.Items.Clear;

    icuAgentes.Open;

    iRecCount := icuAgentes.RecordCount;
    Row := miRowIni;
    while not icuAgentes.Eof do begin
      F1.TextSRC[iSheet,Row,2]    := icuAgentes.fieldbyName('NUMAGENTE').AsString;
      F1.TextSRC[iSheet,Row,3]    := icuAgentes.fieldbyName('NOMBAGEN').AsString;
      F1.NUmberSRC[iSheet,Row,4]  := icuAgentes.fieldbyName('ESQUEMA').AsInteger;
      F1.NUmberSRC[iSheet,Row,5]  := 0;
      F1.NUmberSRC[iSheet,Row,6]  := 0;
      tF := 'IF('+oF1.GetCelda(Row,5)+'=0,0,('+oF1.GetCelda(Row,6) + '/' + oF1.GetCelda(Row,5) + ')*100)';
      F1.FormulaSRC[iSheet,Row,7] := tF;
      if F1.NUmberSRC[iSheet,Row,4] <> 0 then
        if F1.NUmberSRC[iSheet,Row,4] = 1 then
          Resaltar1(row,1)
        else
          Resaltar1(row,2);
      cboVendedor.Items.Add(F1.TextSRC[iSheet,Row,2] + '-' + F1.TextSRC[iSheet,Row,3]);

      icuAgentes.Next;
      Row := Row + 1;
    end;

    tF := 'SUM(' + oF1.GetCelda(miRowIni,6) + '..' + oF1.GetCelda(Row,6) + ')';
    Row := Row + 1;
    F1.TextSRC[iSheet,Row,2]    := 'Totales:';
    F1.FormulaSRC[iSheet,Row,6]    := tF;

    tF := 'SUM(' + oF1.GetCelda(miRowIni,5) + '..' + oF1.GetCelda(Row-1,5) + ')';
    F1.FormulaSRC[iSheet,Row,5]    := tF;

    tF := 'IF('+oF1.GetCelda(Row,5)+'=0,0,('+oF1.GetCelda(Row,6) + '/' + oF1.GetCelda(Row,5) + ')*100)';
    F1.FormulaSRC[iSheet,Row,7] := tF;
    F1.Selection := tSel;

//    Screen.Cursor := crDefault;

    icuAgentes.Close;

    F1.sheet := iSh;
    F1.Selection := tSel;

    aB[iSheet].RowEnd := Row;

end;

procedure TfrmRepComis.Resaltar1(ARen,ATipo:Integer);
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

procedure TfrmRepComis.Resaltar2(ARen,ATipo:Integer);
var
  iSht:Integer;
  tS:String;
begin
  iSht := F2.Sheet;
  tS := F2.Selection;

  F2.SetSelection(ARen,2,ARen,aB2[iSht].ColEnd);
  case ATipo of
  0: begin
      F2.FontBold := False;
      F2.FontColor := clBlack;
      lblSt0.Font.Color := clBlack;
     end;
  1: begin
      F2.FontBold := True;
      F2.FontColor := clRed;
      lblSt1.Font.Color := clRed;
     end;
  2: begin
      F2.FontBold := True;
      F2.FontColor := clNavy;
      lblSt2.Font.Color := clNavy;
     end;
  3: begin
      F2.FontBold := True;
      F2.FontColor := clPurple;
      lblSt3.Font.Color := clPurple;
     end;
  4: begin
      F2.FontBold := True;
      F2.FontColor := clAqua;
      lblSt4.Font.Color := clAqua;
     end;
  5: begin
      F2.FontBold := True;
      F2.FontColor := clGreen;
      lblSt5.Font.Color := clGreen;
     end;
  end;

  F2.Selection := tS;
end;

procedure TfrmRepComis.RzButton1Click(Sender: TObject);
var
  lbl:TRzLabel;
begin
  lbl := TRzLabel.Create(pnzAnalisis);
  lbl.Parent := pnzAnalisis;
  lbl.Caption := 'Nuevo';
  lbl.Align := alTop;
  lbl.Visible := True;
end;

procedure TfrmRepComis.F1StartEdit(Sender: TObject;
  var EditString: WideString; var Cancel: Smallint);
var iCol:Integer;
begin
    iCol := F1.Col;

    if iCol in ColSet then Cancel := 1;

end;

procedure TfrmRepComis.F2SelChange(Sender: TObject);
begin
  AnalisisPartida;
end;

procedure TfrmRepComis.F1DblClick(ASender: TObject; nRow, nCol: Integer);
begin
  if F1.Sheet = 1 then begin
    pgcReporte.ActivePageIndex := 1;
    itmRIGenerarClick(nil);
  end;


end;

procedure TfrmRepComis.F1KeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmRepComis.tbtCreateClick(Sender: TObject);
begin
  axnLimpiar;
end;

procedure TfrmRepComis.tbtEsconderClick(Sender: TObject);
begin
  pgcDatos.Visible := not pgcDatos.Visible;
  if pgcDatos.Visible then
    tbtEsconder.Caption := 'Esconder'
  else
    tbtEsconder.Caption := 'Mostrar';

end;

procedure TfrmRepComis.tbtGenerarClick(Sender: TObject);
begin
    GenerarReporte;
end;

procedure TfrmRepComis.tbtGrabarClick(Sender: TObject);
begin
    axnGrabar;
end;

procedure TfrmRepComis.tbtPreverClick(Sender: TObject);
begin
    axnPrever;
end;

procedure TfrmRepComis.tbtImprimirClick(Sender: TObject);
begin
    axnImprimir;
end;

procedure TfrmRepComis.axnLimpiar;
begin
//    F1.ClearRange (miRowIni,1,F1.LastRow,20,f1ClearValues);
  LoadXLS;
  lblMsg.Caption := '';
  cboVendedor.ItemIndex := 0;
  btnFiltro.Down := False;
  cboSort.ItemIndex := 0;
  pgcDatos.ActivePageIndex := 0;
  Calculafechas;


end;
procedure TfrmRepComis.axnLeer;
var    tBuffer:WideString;
begin

        try
            F1.OpenFileDlg('Abrir archivo Articulos',frmRepComis.Handle,tBuffer);
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

procedure TfrmRepComis.axnGrabar;
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

procedure TfrmRepComis.axnLeerRI;
var    tBuffer:WideString;
begin

        try
            F2.OpenFileDlg('Abrir archivo Comisiones',frmRepComis.Handle,tBuffer);
        except
            tBuffer := '';
        end;
        if length(tBuffer) > 0 then begin
          F2.Read (tBuffer,iType);
        end;

  AnalizaStatus;

end;

procedure TfrmRepComis.axnGrabarRI;
var tDir,tFile,tFecha,tAgente:WideString;
begin
    tDir := oINi.ReadString ('Directorios','Documentos',''); //   ExtractFileDir(ParamStr(0));
    tAgente := sm.Purge(lblAgente.Caption,[',','.',' ']);
    tFecha := ESBDates.Date2ISOStr(xdeFechafin.date);
    tFile := tDir + tAgente + '_' + tFecha + '.XLS.';
    try
        F2.Write (tFile,iType);
        MessageDlg('El archivo '+tFile+' se guardó correctamente!', mtInformation,[mbOk], 0);
    except;
        MessageDlg('Imposible grabar el archivo!', mtWarning,[mbOk], 0);
    end;
end;

procedure TfrmRepComis.axnPrever;
begin
  SetPrintSelection;
  if pgcReporte.ActivePageIndex = 0 then begin
    try
        F1.FilePrintPreview;
    except
        MessageDlg('Imposible hacer la presentacion preliminar!', mtWarning,[mbOk], 0);

    end;
  end;
  if pgcReporte.ActivePageIndex = 1 then begin
    try
        F2.FilePrintPreview;
    except
        MessageDlg('Imposible hacer la presentacion preliminar!', mtWarning,[mbOk], 0);
    end;
  end;
end;

procedure TfrmRepComis.btnFiltroClick(Sender: TObject);
begin
  axnFiltrarVendedores(btnFiltro.Down);
  F1.SetFocus;
end;

procedure TfrmRepComis.btnSortClick(Sender: TObject);
begin
  axnSort;
end;

procedure TfrmRepComis.axnImprimir;
begin

    SetPrintSelection;

  if pgcReporte.ActivePageIndex = 0 then begin
    try
        F1.FilePrint(True);
    except
        MessageDlg('No es posible imprimir!', mtWarning,[mbOk], 0);
    end;
  end;
  if pgcReporte.ActivePageIndex = 1 then begin
    try
        F2.FilePrint(True);
    except
        MessageDlg('No es posible imprimir!', mtWarning,[mbOk], 0);
    end;
  end;
end;

procedure TfrmRepComis.SetPrintSelection;
var
  iSh: Integer;
  tSel:String;
begin
  if pgcReporte.ActivePageIndex = 0 then begin
    iSh := F1.Sheet;
    tSel := F1.Selection;
    F1.SetSelection(aB[iSh].RowIni,aB[iSh].ColIni,aB[iSh].RowEnd,aB[iSh].ColEnd);
    F1.SetPrintAreaFromSelection;
    F1.Selection := tSel;
  end;
  if pgcReporte.ActivePageIndex = 1 then begin
    iSh := F2.Sheet;
    tSel := F2.Selection;
    F2.SetSelection(aB2[iSh].RowIni,aB2[iSh].ColIni,aB2[iSh].RowEnd,aB2[iSh].ColEnd);
    F2.SetPrintAreaFromSelection;
    F2.Selection := tSel;
  end;
end;

procedure TfrmRepComis.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmRepComis.GetComisiones(AEsquema:Integer;
                                     ACodFamilia:String;
                                     ADias:Double;
                                     ADescto:Double;
                                     AMargen:Double;
                                     ATipoCalculo:Double;
                                 var PorcComision:Double;
                                 var BaseComision:Double);
var
  iRow,iSheet,iEsquema:Integer;
  iHoja,iH,dDescto:Double;
  tFam: String;
  v:variant;
begin
  tFam := Trim(ACodFamilia);
  if length(tFam) <= 0 then begin
    PorcComision := 0;
    BaseComision := 0;
    exit;
  end;

  if ATipoCalculo = 2 then begin

    iSheet := 4;
    PorcComision := -1;
    BaseComision := -1;

  end;
  iSheet := 4;
  if (ATipoCalculo = 1) then iHoja := 1 else
    if (ATipoCalculo = 2) then iHoja := 2 else
      iHoja := 1;

   PorcComision := -1;
   BaseComision := -1;

  iRow := miRowIni;
  tFam := F1.TextSRC[iSheet,iRow,3];
  v := F1.NumberSRC[iSheet,iRow,2];
  iEsquema := v;
  while (tFam <> '') do begin
    if (tFam = ACodFamilia) and (iEsquema = AEsquema) then  begin

      iH := F1.NumberSRC[iSheet,iRow,4];
      if (iH = iHoja) and (iHoja = 1) then begin // % de comision segun descuento o margen
        if (ADescto > F1.NumberSRC[iSheet,iRow,6]) and
           (ADescto <= F1.NumberSRC[iSheet,iRow,7]) then begin
             PorcComision := F1.NumberSRC[iSheet,iRow,8];
        end;
      end;

      if (iH = iHoja) and (iHoja = 2) then begin // % de comision segun descuento o margen
        if (AMargen > F1.NumberSRC[iSheet,iRow,6]) and
           (AMargen <= F1.NumberSRC[iSheet,iRow,7]) then begin
             PorcComision := F1.NumberSRC[iSheet,iRow,8];
        end;
      end;

      if iH = 3 then begin  // Base de comision segun los dias vencidos
        if (ADias > F1.NumberSRC[iSheet,iRow,6]) and
           (ADias <= F1.NumberSRC[iSheet,iRow,7]) then begin
             BaseComision := F1.NumberSRC[iSheet,iRow,8];
        end;
      end;

    end;

    iRow := iRow +1;
    tFam := F1.TextSRC[iSheet,iRow,3];
    v := F1.NumberSRC[iSheet,iRow,2];
    iEsquema := v;

  end; {while}

end;

procedure TfrmRepComis.itmAyudaClick(Sender: TObject);
begin
  ShowHelp('frmRepComis');
end;

procedure TfrmRepComis.itmBuscarClick(Sender: TObject);
begin
  F1.FindDlg;
end;

procedure TfrmRepComis.itmFijarClick(Sender: TObject);
begin
  axnFixRows(miRowIni-1);
end;

procedure TfrmRepComis.itmLiberarClick(Sender: TObject);
begin
  axnFixRows(0);
end;

procedure TfrmRepComis.itmRIGenerarClick(Sender: TObject);
begin
  GenerarRI;
  AnalizaStatus;
  ReporteFacturasRI;
  tbtAuxiliarClick(nil);
end;

procedure TfrmRepComis.itmRIGrabarXLSClick(Sender: TObject);
begin
  axnGrabarRI;
end;

procedure TfrmRepComis.itmRILeerXLSClick(Sender: TObject);
begin
  axnLeerRI;
end;

procedure TfrmRepComis.axnFixRows(ARows:Integer);
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

procedure TfrmRepComis.axnFiltrarVendedores(AShow:Boolean);
var
  i,iT,iSh:Integer;
  tNum,t:String;
begin
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
    t := F1.TextRC[i,rC3.NumAgente];
    if (t <> tNum) then
      F1.RowHidden[i] := AShow;
  end;

  F1.Sheet := iSh;

end;

procedure TfrmRepComis.axnSort;
var
  iIndex,iSheet,ix:Integer;
  iC1,iC2,iC3:Integer;
begin
  ix := F1.Sheet;
  iSheet := 3;
  iIndex := cboSort.ItemIndex;
case iIndex of
    0: begin
         iC1 := rc3.Folio; iC2:=0; iC3:=0;
       end;
    1: begin
         iC1 := rC3.Fecha; iC2:=0; iC3:=0;
       end;
    2: begin
         iC1 := rC3.Cliente; iC2:=0; iC3:=0;
       end;
    3: begin
         iC1 := rC3.CodProdSer; iC2:=0; iC3:=0;
       end;
    4: begin
         iC1 := rC3.DescripPro; iC2:=0; iC3:=0;
       end;
    5: begin
         iC1 := rC3.CodFamilia; iC2:=0; iC3:=0;
       end;
    6: begin
         iC1 := rC3.NumAgente; iC2:=0; iC3:=0;
       end;
  end;

  F1.Sheet := iSheet;

  if aB[iSheet].RowEnd <= aB[iSheet].RowIni then exit;

  F1.Sort3(aB[iSheet].RowIni,1,aB[iSheet].RowEnd,aB[iSheet].ColEnd,True,iC1,iC2,iC3);

  F1.Sheet := ix;
end;

procedure TfrmRepComis.pgcReporteChange(Sender: TObject);
begin
  if pgcReporte.ActivePageIndex = 1 then begin
    //LoadXLS2;
    GetAgente(F1.Sheet,F1.Row);
  end;
  if pgcReporte.ActivePageIndex = 0 then begin
//
  end;
end;

procedure TfrmRepComis.GetAgente(ASheet:Integer;ARow:Integer);
var
  Col1,Col2,Col3:Integer;
  Cod,Nom:String;
begin
  Col1 := 2;
  Col2 := 2;
  Col3 := 21;
  Cod := '';
  Nom := '';
  if ASheet > 3 then begin
    lblagente.Caption := '** Agente NO seleccionado!';
    exit;
  end;

  if ASheet = 1 then  begin
    Cod := F1.TextSRC[ASheet,ARow,Col1];
    Nom := F1.TextSRC[ASheet,ARow,Col1+1]
  end;
  if ASheet = 2 then  begin
    Cod := F1.TextSRC[ASheet,ARow,Col2];
    Nom := BuscaAgenteF1(Cod);
  end;
  if ASheet = 3 then  begin
    Cod := F1.TextSRC[ASheet,ARow,Col3];
    Nom := BuscaAgenteF1(Cod);
  end;

  lblAgente.caption := Cod + '-'+Nom;
  F2.TextSRC[1,7,2] := F1.TextSRC[1,5,2];
  F2.TextSRC[1,6,2] := lblAgente.Caption;
  frmRepComisaux.Caption := 'Ajustes para ' + lblAgente.Caption;

end;

function TfrmRepComis.BuscaAgenteF1(ACod:String):String;
var
  iR,iR1,Col2:Integer;
  Cod,Nom:String;
begin
  Result := '';
  iR1 := 8;
  Col2:= 2;
  iR := iR1;
  repeat
    Cod := F1.TextSRC[1,iR,Col2];
    if Cod = ACod then begin
      Result := F1.TextSRC[1,iR,Col2+1];
      break;
    end;
    iR := iR + 1;
  until Cod = '';
end;


//===============================================================================================

procedure TfrmRepComis.GenerarRI;
var i,iCount:Integer;
    iShF1,iSheet,iRec,Row,RowF1,iEsquema:Integer;
    tVal,tSel,tTP,tKey,tF,tAgente:String;
    fFound,fUpdate,fDelete:Boolean;
    dMargen,dDias,dPComis,dPBase:Double;
    fPago:TDateTime;
    v:Variant;
begin

  Screen.Cursor := crHourglass;

  lblMsg.caption := 'Generando Reporte Individual...';

  LoadXLS2;
  iShF1 := 3;
  iSheet := 3;
  F2.Sheet := iSheet;
  aB2[iSheet].RowIni := miRowIni;
  aB2[iSheet].ColIni := rC3.Folio;
  aB2[iSheet].ColEnd := rC3.ComisPagar;

  Application.ProcessMessages;

  iCount := 0;
  tSel := F2.Selection;

  F2.TextSRC[1,7,2] := F1.TextSRC[1,5,2];  //Periodo de Cobro
  F2.TextSRC[1,6,2] := lblAgente.Caption;

//  CargarTablas;
//  ReporteAgentes;

  lblMsg.caption := 'Generando reporte Individual...';
  Application.ProcessMessages;

{  tF := 'Periodo de Cobro: ';
  tF := tF + ESBDATES.Date2StrShort2(xdeFechaIni.date)+ ' al ' +
             ESBDATES.Date2StrShort2(xdeFechaFin.date);
  F1.TextSRC[1,5,2] := tF;
}

//    iRecCount := icuTablas.RecordCount;
{    icuRep.ParambyName('P_FECHAINI').AsDateTime := xdeFechaIni.Date;
    icuRep.ParambyName('P_FECHAFIN').AsDateTime := xdeFechaFin.Date+0.999;
    icuRep.Open;
}
  tAgente := sm.NthWord(1,lblAgente.Caption);
  iRec := 1;
  Row := miRowIni;
  RowF1 := Row;
  tKey := F1.TextSRC[iShF1,RowF1,2];
  while not (tKey = '') do begin
    if tAgente = F1.TextSRC[iShF1,RowF1,rC3.NumAgente] then begin

      v := F1.NumberSRC[iShF1,RowF1,rC3.Esquema];
      iEsquema := v;
      F2.TextSRC[iSheet,Row,rC3.Folio]         := F1.TextSRC[iShF1,RowF1,rC3.Folio];
      F2.NumberSRC[iSheet,Row,rC3.Fecha]       := F1.NumberSRC[iShF1,RowF1,rC3.Fecha];
      F2.TextSRC[iSheet,Row,rC3.Cliente]       := F1.TextSRC[iShF1,RowF1,rC3.Cliente];
      F2.NumberSRC[iSheet,Row,rC3.Monto]       := F1.NumberSRC[iShF1,RowF1,rC3.Monto];
      F2.NumberSRC[iSheet,Row,rC3.Cobrado]     := F1.NumberSRC[iShF1,RowF1,rC3.Cobrado];
      F2.TextSRC[iSheet,Row,rC3.CodProdSer]    := F1.TextSRC[iShF1,RowF1,rC3.CodProdSer];
      F2.TextSRC[iSheet,Row,rC3.DescripPro]    := F1.TextSRC[iShF1,RowF1,rC3.DescripPro];
      F2.NumberSRC[iSheet,Row,rC3.Unidades]    := F1.NumberSRC[iShF1,RowF1,rC3.Unidades];
      F2.NumberSRC[iSheet,Row,rC3.PrecioLista] := F1.NumberSRC[iShF1,RowF1,rC3.PrecioLista];
      F2.NumberSRC[iSheet,Row,rC3.PorcDescto]  := F1.NumberSRC[iShF1,RowF1,rC3.PorcDescto];
      F2.NumberSRC[iSheet,Row,rC3.PUnitario]   := F1.NumberSRC[iShF1,RowF1,rC3.PUnitario];
      F2.NumberSRC[iSheet,Row,rC3.PTotal]      := F1.NumberSRC[iShF1,RowF1,rC3.PTotal];
      F2.NumberSRC[iSheet,Row,rC3.CostoTot]    := F1.NumberSRC[iShF1,RowF1,rC3.CostoTot];
      F2.NumberSRC[iSheet,Row,rC3.Margen]      := F1.NumberSRC[iShF1,RowF1,rC3.Margen];
      F2.NumberSRC[iSheet,Row,rC3.TipoCambio]  := F1.NumberSRC[iShF1,RowF1,rC3.TipoCambio];
      F2.NumberSRC[iSheet,Row,rC3.TipoCalc]    := F1.NumberSRC[iShF1,RowF1,rC3.TipoCalc];
      F2.NumberSRC[iSheet,Row,rC3.ValidaDescto]:= F1.NumberSRC[iShF1,RowF1,rC3.ValidaDescto];

      F2.NumberSRC[iSheet,Row,rC3.PorcPagado]  := F1.NumberSRC[iShF1,RowF1,rC3.PorcPagado];
      F2.NumberSRC[iSheet,Row,rC3.PIva]        := F1.NumberSRC[iShF1,RowF1,rC3.PIva];
      F2.NumberSRC[iSheet,Row,rC3.Esquema]     := iEsquema;
      F2.TextSRC[iSheet,Row,rC3.CodFamilia]    := F1.TextSRC[iShF1,RowF1,rC3.CodFamilia];
      F2.TextSRC[iSheet,Row,rC3.NumAgente]     := F1.TextSRC[iShF1,RowF1,rC3.NumAgente];
      F2.NumberSRC[iSheet,Row,rC3.DiasV]       := F1.NumberSRC[iShF1,RowF1,rC3.DiasV];
{
      GetComisiones(iEsquema,
                    F1.TextSRC[iSheet,Row,rC3.CodFamilia],
                    F2.NumberSRC[iSheet,Row,rC3.DiasV],
                    F1.NumberSRC[iSheet,Row,rC3.ValidaDescto],
                    F1.NumberSRC[iSheet,Row,rC3.Margen],
                    F1.NumberSRC[iSheet,Row,rC3.TipoCalc],
                    dPComis,
                    dPBase);

     F1.NumberSRC[iSheet,Row,rC3.BaseCom] := dPBase;
      F1.NumberSRC[iSheet,Row,rC3.PorcComis] := dPComis;
      tF := oF1.GetCelda(Row,rC3.PTotal) + '* ('+oF1.GetCelda(Row,rC3.PorcComis)+'/100) * ('+oF1.GetCelda(Row,rC3.PorcPagado)+'/100)';
      F1.FormulaSRC[iSheet,Row,rC3.ComisBruta] := tF;
      tF := oF1.GetCelda(Row,rC3.ComisBruta) + '* ('+oF1.GetCelda(Row,rC3.BaseCom)+'/100)';
      F1.FormulaSRC[iSheet,Row,rC3.ComisPagar] := tF;
}
      F2.NumberSRC[iSheet,Row,rC3.BaseCom] := F1.NumberSRC[iShF1,RowF1,rC3.BaseCom];
      F2.NumberSRC[iSheet,Row,rC3.PorcComis] := F1.NumberSRC[iShF1,RowF1,rC3.PorcComis];
      tF := oF1.GetCelda(Row,rC3.PTotal) + '* ('+oF1.GetCelda(Row,rC3.PorcComis)+'/100) * ('+oF1.GetCelda(Row,rC3.PorcPagado)+'/100)';
      F2.FormulaSRC[iSheet,Row,rC3.ComisBruta] := tF;
      tF := oF1.GetCelda(Row,rC3.ComisBruta) + '* ('+oF1.GetCelda(Row,rC3.BaseCom)+'/100)';
      F2.FormulaSRC[iSheet,Row,rC3.ComisPagar] := tF;
      if (F2.NumberSRC[iSheet,Row,rC3.ValidaDescto] = 0) and
         (F2.NumberSRC[iSheet,Row,rC3.TipoCalc] = 2) and
         (F2.NumberSRC[iSheet,Row,rC3.CostoTot] = 0) then begin
            F2.NumberSRC[iSheet,Row,rC3.PorcComis] := 0;
      end;

      iCount := iCount + 1;
      if (iCount mod 10 = 0) then Application.ProcessMessages;

//      icuRep.Next;
      Row := Row + 1;
    end;
    RowF1 := RowF1 + 1;
    tKey := F1.TextSRC[iShF1,RowF1,2];
  end;
//    icuRep.Close;

    aB2[iSheet].RowEnd := Row - 1;
    aB2[iSheet].ColEnd := rc3.ComisPagar;

    tF := 'SUM(' + oF1.GetCelda(miRowIni,rC3.ComisBruta) + '..' + oF1.GetCelda(aB2[iSheet].RowEnd,rC3.ComisBruta) + ')';
    Row := Row + 1;
    F2.TextSRC[iSheet,Row,2]    := 'Totales:';
    F2.FormulaSRC[iSheet,Row,rC3.ComisBruta]    := tF;
    tF := 'SUM(' + oF1.GetCelda(miRowIni,rC3.ComisPagar) + '..' + oF1.GetCelda(aB2[iSheet].RowEnd,rC3.ComisPagar) + ')';
    F2.FormulaSRC[iSheet,Row,rC3.ComisPagar]    := tF;


    F2.Selection := tSel;
    F2.TopRow := 1;
    F2.LeftCol:= 1;

//Ordenar Listado Por folio factura
  lblMsg.caption := 'Ordenando el reporte por factura...';
  Application.ProcessMessages;

    cboSort.ItemIndex := 0;
//    axnSort;

// Reporte por factura
//  ReporteFacturasRI;

//  F2.Sheet := 1;

  AnalizaStatus;

  F2.TopRow := 1;
  F2.LeftCol:= 1;



  Screen.Cursor := crDefault;
  lblMsg.caption := 'Terminado!';

end;

procedure TfrmRepComis.ReporteFacturasRI;
var
  i,iRow,iRowF,iSD,iSF:Integer;
  tFac,tFacx,tAgente,tCliente: String;
  fFirst,fSigue:Boolean;
  fFecha:Tdatetime;
  dMonto,dPago,dComision,dIVA,dTotalComis,dTotalCobrado, dTC:Double;
  aAcu: array[1..5] of double;

begin
  Screen.Cursor := crHourglass;

  lblMsg.caption := 'Generando reporte de facturas individual...';
  Application.ProcessMessages;

  for i := 1 to 5  do aAcu[i] := 0;


  iSD := 3;
  iSF := 2;
  F2.Sheet := iSF;
  F2.ClearRange(aB2[iSF].RowIni,2,F2.MaxRow,20,F1ClearValues);

  iRow  := miRowIni;
  iRowF := miRowIni;
  fFirst := True;
  tFacx:= '@@@';
  fSigue := True;
  tFac := F2.TextSRC[iSD,iRow,rC3.Folio];
  tFacx:= tFac;
  while (fSigue) do begin
    if tFac <> tFacx then begin
      F2.TextSRC[iSF,iRowF,2] := tAgente;
      F2.TextSRC[iSF,iRowF,3] := tFacx; //F2.TextSRC[iSD,iRow,2];
      F2.NumberSRC[iSF,iRowF,4] := fFecha;
      F2.TextSRC[iSF,iRowF,5] := tCliente;
      F2.NumberSRC[iSF,iRowF,6] := dMonto;
      F2.NumberSRC[iSF,iRowF,7] := dPago;
      F2.NumberSRC[iSF,iRowF,8] := dMonto - dPago;
      F2.NumberSRC[iSF,iRowF,9] := dTC;
      F2.NumberSRC[iSF,iRowF,10] := dComision;
      aAcu[3] := aAcu[3] + dComision;
      if dComision <> 0 then begin
        F2.NumberSRC[iSF,iRowF,11] := ((dComision * (1+(dIVA/100))) / dMonto) * 100;
        aAcu[1] := aacu[1] + 1;
      end else begin
        F2.NumberSRC[iSF,iRowF,11] := 0;
        aAcu[2] := aacu[2] + 1;
      end;

      dTotalCobrado := dTotalCobrado + dPago;
      dTotalComis := dTotalComis + dComision;

      tFacx := tFac;

      iRowF := iRowF + 1;

      dComision := 0;

    end;

    if (tFac = '') then break;

    dTC     := F2.NumberSRC[iSD,iRow,rC3.TipoCambio];

    fFecha    := F2.NumberSRC[iSD,iRow,rC3.Fecha];
    tAgente   := F2.TextSRC[iSD,iRow,rC3.NumAgente];
    tCliente  := F2.TextSRC[iSD,iRow,rC3.Cliente];
    dMonto    := F2.NumberSRC[iSD,iRow,rC3.Monto];
    dPago     := F2.NumberSRC[iSD,iRow,rC3.Cobrado];
    dIVA      := F2.NumberSRC[iSD,iRow,rC3.PIva];
    dComision := dComision + F2.NumberSRC[iSD,iRow,rC3.ComisPagar];

    iRow := iRow +1;
    tFac := F2.TextSRC[iSD,iRow,rC3.Folio];

  end; {while}

  iRowF := iRowF + 1;
  F2.TextSRC[iSF,iRowF,2] := 'Totales:';
  F2.NumberSRC[iSF,iRowF,7] := dTotalCobrado;
  F2.NumberSRC[iSF,iRowF,10] := dTotalComis;
  if dTotalCobrado > 0 then
    F2.NumberSRC[iSF,iRowF,11] := dTotalComis / dTotalCobrado * 100
  else
    F2.NumberSRC[iSF,iRowF,11] := 0;


  aB2[iSF].RowEnd := iRowF;
  aB2[iSF].ColEnd := 11;

// Llena el resumen
  F2.NumberSRC[1,9,10] := dTotalComis;
  F2.NumberSRC[1,14,9] := aAcu[1];
  F2.NumberSRC[1,14,10] := aAcu[3];
  F2.NumberSRC[1,15,9] := aAcu[2];
  F2.NumberSRC[1,16,9] := aAcu[1] + aAcu[2];
  F2.NumberSRC[1,16,10] := aAcu[3];
// Llena el resumen de partidas...
  iRow := 23;
  for i := 0 to 5 do begin
    F2.NumberSRC[1,iRow,2] := i;
    F2.TextSRC[1,iRow,3] := aSt[i].Descri;
    F2.NumberSRC[1,iRow,9] := aSt[i].Cantidad;
    F2.NumberSRC[1,iRow,10] := aSt[i].APagar;
    aAcu[4] := aAcu[4] + aSt[i].Cantidad;
    aAcu[5] := aAcu[5] + aSt[i].APagar;
    iRow := iRow + 1;
  end;
  iRow := iRow + 1;
  F2.TextSRC[1,iRow,2] := 'Totales:';
  F2.NumberSRC[1,iRow,9] := aAcu[4];
  F2.NumberSRC[1,iRow,10] := aAcu[5];

  F2.Sheet := 1;
  aB2[1].RowEnd := iRow + 1;
  aB2[1].ColEnd := 10;

  Screen.Cursor := crDefault;
  lblMsg.caption := 'Terminado!';

end;

procedure TfrmRepComis.AjustarComisiones;
var i,iCount,iStatus:Integer;
begin
//  frmRepComisAux.Show;
end;

//---  Opciones del PopUp Menu
procedure TfrmRepComis.itmRecalcularClick(Sender: TObject);
begin
  itmRIRecalcularClick(nil);
end;

procedure TfrmRepComis.itmCopiarClick(Sender: TObject);
begin
  F2.EditCopy;
end;

procedure TfrmRepComis.itmCopiarAClick(Sender: TObject);
begin
  F2.EditCopyDown;
end;

procedure TfrmRepComis.itmPegarClick(Sender: TObject);
begin
  F2.EditPaste;
end;
procedure TfrmRepComis.itmPegarVClick(Sender: TObject);
begin
  F2.EditPasteValues;
end;
procedure TfrmRepComis.popF2Popup(Sender: TObject);
begin
//  itmRecalcular.Caption := itmRecalcular.Caption + 'Especial';
end;


//-----------------------------------------------------------------
//-- Seccion de analis de partidas y ajustes de comisiones...
//-----------------------------------------------------------------
procedure TfrmRepComis.btnReemplazarClick(Sender: TObject);
begin
  Reemplazar;
end;

procedure TfrmRepComis.itmRIRecalcularClick(Sender: TObject);
begin
  AnalizaStatus;
  ReporteFacturasRI;
end;

procedure TfrmRepComis.lblSt0DblClick(Sender: TObject);
var
  Tag:Integer;
begin
  Tag := (Sender as TRzLabel).Tag;
  LocalizaStatus(Tag);
end;

procedure TfrmRepComis.itmInicioClick(Sender: TObject);
begin
  F2.Sheet := 3;
  F2.Row := miRowIni;
  F2.TopRow := F2.Row;
end;

procedure TfrmRepComis.itmSt0Click(Sender: TObject);
var
  Tag:Integer;
begin
  Tag := (Sender as TTBXItem).Tag;
  LocalizaStatus(Tag);

end;

procedure TfrmRepComis.LocalizaStatus(ATag:Integer);
var
  Row,iCol,iSheet,iIni:Integer;
  tFac,tFam:String;
  v:Variant;
begin
  iSheet := 3;
  F2.Sheet := iSheet;
  iIni := F2.Row + 1;

  for Row := iIni to aB2[iSheet].RowEnd do begin
    v := F2.NumberSRC[iSheet,Row,rC3.Status];
    if (ATag = v) then begin
      F2.Row := Row;
      F2.TopRow := Row;
      break;
    end;
  end;

end;

procedure TfrmRepComis.AnalisisPartida;
var
  i,iCount,iSt:Integer;
  t,t1,t2,t3:String;
  dCostoU:Double;
  v:Variant;
begin
  if F2.Sheet <> 3 then exit;
  t := F2.TextRC[F2.row,rC3.Status];
  v := F2.NumberRC[F2.row,rC3.Status];
  iSt := v;

  if length(t) > 0 then begin
    lblStatus.Caption := t + '-' + aSt[iSt].Descri;
    lblFam.caption := 'Familia: ' + F2.TextRC[F2.Row,rC3.CodFamilia];
    lblArt.caption := F2.TextRC[F2.Row,rC3.DescripPro];
    lblFac.caption := 'Factura: ' + F2.TextRC[F2.Row,rC3.Folio] + '   / ' + F2.TextRC[F2.Row,rC3.Cliente];
    t1:= 'Precio U: ' + F2.FormattedTextRC[F2.Row,rC3.PUnitario];
    t2:= '% Descto: ' + F2.FormattedTextRC[F2.Row,rC3.ValidaDescto];
    lblPorc.Caption:= t1 + ' | ' + t2;
    if F2.NumberRC[F2.Row,rC3.Unidades] > 0 then
      dCostoU := F2.NumberRC[F2.Row,rC3.CostoTot] / F2.NumberRC[F2.Row,rC3.Unidades]
    else
      dCostoU := 0;
    t1:= 'Costo U:  ' + sm.StrFloat(dCostoU,'#,##0.00#');
    t2:= '% Margen: ' + F2.FormattedTextRC[F2.Row,rC3.Margen];
    lblPorc.Caption:= lblPorc.Caption + #10+#13;
    lblPorc.Caption:= lblPorc.Caption + t1 + ' | ' + t2;
    lblPorc.Caption:= lblPorc.Caption + #10+#13;
    t1:= 'Porc. Com: ' + F2.FormattedTextRC[F2.Row,rC3.PorcComis];
    t2:= 'Base Com: ' + F2.FormattedTextRC[F2.Row,rC3.BaseCom];
    lblPorc.Caption:= lblPorc.Caption + t1 + ' | ' + t2;
    lblPorc.Caption:= lblPorc.Caption + #10+#13;
    t1:= 'Dias Venc: ' + F2.FormattedTextRC[F2.Row,rC3.DiasV];
    t2:= 'Tipo Calc: ' + F2.FormattedTextRC[F2.Row,rC3.TipoCalc];
    lblPorc.Caption:= lblPorc.Caption + t1 + ' | ' + t2;
  end else begin
    lblStatus.Caption := '';
    lblFam.caption := '';
    lblArt.caption := '';
    lblFac.caption := '';
    lblPorc.Caption:= '';

  end;

{
  aSt[0] := 'Pago Normal en base a las tablas de parametros.';
  aSt[1] := 'Cuidado! No calcula porque NO hay Costo capturado.';
  aSt[2] := 'No hay pago! Dias vencidos MUY altos.';
  aSt[3] := 'No hay pago! Margen MUY bajo.';
  aSt[4] := 'No hay pago! Descuento MUY alto.';
  aSt[5] := 'Pago Incompleto! Dias vencidos MUY altos.';
}
  case iSt of
  0: begin // Pago Normal
       cboCol.ItemIndex := 0;
       cboRen.ItemIndex := 1;
       edzActual.Value := F2.NumberRC[F2.row,rC3.PorcComis];
       edzNuevo.Value  := F2.NumberRC[F2.row,rC3.PorcComis];
     end;
  1,3,4: begin // No hay costo
       cboCol.ItemIndex := 0;
       cboRen.ItemIndex := 2;
       edzActual.Value := F2.NumberRC[F2.row,rC3.PorcComis];
       edzNuevo.Value  := F2.NumberRC[F2.row,rC3.PorcComis];

     end;
  2,5: begin
       cboCol.ItemIndex := 1;
       cboRen.ItemIndex := 1;
       edzActual.Value := F2.NumberRC[F2.row,rC3.BaseCom];
       edzNuevo.Value  := F2.NumberRC[F2.row,rC3.BaseCom];

     end;
  end;


end;

procedure TfrmRepComis.Reemplazar;
begin

  if cboRen.ItemIndex = 0 then ReemplazaFamilia;
  if cboRen.ItemIndex = 1 then ReemplazaFactura;
  if cboRen.ItemIndex = 2 then ReemplazaSeleccion;

end;

procedure TfrmRepComis.ReemplazaFamilia;
var
  Row,iCol,iSheet:Integer;
  tFac,tFam:String;
  eValor:Extended;
begin
  iSheet := 3;
  tFac := F2.TextSRC[iSheet,F2.Row,rC3.Folio];
  tFam := F2.TextSRC[iSheet,F1.Row,rC3.CodFamilia];
  if cboCol.ItemIndex = 0 then iCol := rC3.PorcComis;
  if cboCol.ItemIndex = 1 then iCol := rC3.BaseCom;

  for Row := aB2[iSheet].RowIni to aB2[iSheet].RowEnd do begin
    if (F2.TextSRC[iSheet,Row,rC3.CodFamilia] = tFam) and
       (F2.TextSRC[iSheet,Row,rC3.Folio] = tFac) then begin
      eValor := F2.NumberSRC[iSheet,Row,iCol];
      if eValor = edzActual.Value then
        F2.NumberSRC[iSheet,Row,iCol] := edzNuevo.Value;
    end;
  end;

end;

procedure TfrmRepComis.ReemplazaFactura;
var
  Row,iCol,iSheet:Integer;
  tFac:String;
  eValor:Extended;
begin
  iSheet := 3;
  tFac := F2.TextSRC[iSheet,F2.Row,rC3.Folio];
  if cboCol.ItemIndex = 0 then iCol := rC3.PorcComis;
  if cboCol.ItemIndex = 1 then iCol := rC3.BaseCom;

  for Row := aB2[iSheet].RowIni to aB2[iSheet].RowEnd do begin
    if F2.TextSRC[iSheet,Row,rC3.Folio] = tFac then begin
      eValor := F2.NumberSRC[iSheet,Row,iCol];
      if eValor = edzActual.Value then begin
        F2.NumberSRC[iSheet,Row,iCol] := edzNuevo.Value;
      end;
    end;
  end;

end;

procedure TfrmRepComis.ReemplazaSeleccion;
var
  selCount,s,iR1,iC1,iR2,iC2,rc,iCol,iSheet:Integer;
begin
  iSheet := 3;
  if cboCol.ItemIndex = 0 then iCol := rC3.PorcComis;
  if cboCol.ItemIndex = 1 then iCol := rC3.BaseCom;

  selCount := F2.SelectionCount;
  for s := 0 to selCount -1 do begin

    F2.GetSelection (s,iR1,iC1,iR2,iC2);

    for rc := iR1 to iR2 do begin
      if F2.NumberSRC[iSheet,rc,iCol] = edzActual.Value then begin
        F2.NumberSRC[iSheet,rc,iCol] := edzNuevo.Value;
      end;
    end;

  end;

end;

procedure TfrmRepComis.AnalizaStatus;
var
  Row,iCol,iSheet,i:Integer;
  tFac:String;
  v:Variant;
begin
  iSheet := 3;
  ClearStatus;

  for Row := aB2[iSheet].RowIni to aB2[iSheet].RowEnd do begin
      F2.NumberSRC[iSheet,Row,rC3.Status] := 0; // Paga normal

      if (F2.NumberSRC[iSheet,Row,rC3.ComisPagar] = 0) and
         (F2.NumberSRC[iSheet,Row,rC3.CostoTot] = 0) and
         (F2.NumberSRC[iSheet,Row,rC3.TipoCalc] = 2) then begin
        F2.NumberSRC[iSheet,Row,rC3.Status] := 1; // No calcula. No hay costo.
        Resaltar2(Row,1); //Rojo
      end;
      if (F2.NumberSRC[iSheet,Row,rC3.CostoTot] > 0) and
         (F2.NumberSRC[iSheet,Row,rC3.TipoCalc] = 2) and
         (F2.NumberSRC[iSheet,Row,rC3.ComisPagar] = 0) then begin
        if (F2.NumberSRC[iSheet,Row,rC3.BaseCom] = 0) then begin
          F2.NumberSRC[iSheet,Row,rC3.Status] := 2; // No hay pago: Dias vencidos altos.
          Resaltar2(Row,2); //Azul
        end else begin
          F2.NumberSRC[iSheet,Row,rC3.Status] := 3; // No hay pago: Margen MUY bajo.
          Resaltar2(Row,3); //Morado
        end;
      end;
      if (F2.NumberSRC[iSheet,Row,rC3.ComisPagar] = 0) and
         (F2.NumberSRC[iSheet,Row,rC3.TipoCalc] = 1) then begin
        if (F2.NumberSRC[iSheet,Row,rC3.BaseCom] = 0) then begin
          F2.NumberSRC[iSheet,Row,rC3.Status] := 2; // No hay pago: Dias vencidos altos.
          Resaltar2(Row,2); //Azul
        end else  begin
          F2.NumberSRC[iSheet,Row,rC3.Status] := 4; // Descuento MUY alto.
          Resaltar2(Row,4); //Azul
        end;
      end;
      if (F2.NumberSRC[iSheet,Row,rC3.ComisPagar] > 0) and
         (F2.NumberSRC[iSheet,Row,rC3.ComisBruta] > F2.NumberSRC[iSheet,Row,rC3.ComisPagar]) then begin
          F2.NumberSRC[iSheet,Row,rC3.Status] := 5; // Pago parcial: Dias vencidos altos.
          Resaltar2(Row,5); //Verde oliva
      end;

      if (F2.NumberSRC[iSheet,Row,rC3.CodFamilia] = 0) then begin
        F2.NumberSRC[iSheet,Row,rC3.Status] := 1; // No calcula. No hay familia.
        Resaltar2(Row,1); //Rojo
      end;

      v := F2.NumberSRC[iSheet,Row,rC3.Status];
      i := v;
      aSt[i].Cantidad := aSt[i].Cantidad + 1;
      aSt[i].Bruta    := aSt[i].Bruta + F2.NumberSRC[iSheet,Row,rC3.ComisBruta];
      aSt[i].APagar   := aSt[i].APagar + F2.NumberSRC[iSheet,Row,rC3.ComisPagar];
  end;

  DisplayStatus;

end;

procedure TfrmRepComis.ClearStatus;
var
  i:Integer;
begin
  for i := 0 to 5  do begin
    aSt[i].Cantidad := 0;
    aSt[i].Bruta    := 0;
    aSt[i].APagar   := 0;
  end;
end;

procedure TfrmRepComis.DisplayStatus;
var
  i:Integer;
begin
    i:= 0;
    lblSt0.Caption := sm.StrFloat(i,'0') + '-' + aSt[i].Descri + ':' + sm.StrFloat(aSt[i].Cantidad,'#,##0');
    i:= 1;
    lblSt1.Caption := sm.StrFloat(i,'0') + '-' + aSt[i].Descri + ':' + sm.StrFloat(aSt[i].Cantidad,'#,##0');
    i:= 2;
    lblSt2.Caption := sm.StrFloat(i,'0') + '-' + aSt[i].Descri + ':' + sm.StrFloat(aSt[i].Cantidad,'#,##0');
    i:= 3;
    lblSt3.Caption := sm.StrFloat(i,'0') + '-' + aSt[i].Descri + ':' + sm.StrFloat(aSt[i].Cantidad,'#,##0');
    i:= 4;
    lblSt4.Caption := sm.StrFloat(i,'0') + '-' + aSt[i].Descri + ':' + sm.StrFloat(aSt[i].Cantidad,'#,##0');
    i:= 5;
    lblSt5.Caption := sm.StrFloat(i,'0') + '-' + aSt[i].Descri + ':' + sm.StrFloat(aSt[i].Cantidad,'#,##0');
end;

procedure TfrmRepComis.Corrige(Sender: TObject);
begin
  F2.NumberRC[F2.row,rC3.PorcComis] := 2;
end;



end.
