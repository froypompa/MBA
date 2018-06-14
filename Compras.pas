 unit Compras;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, {Grids, RXGrids,} ToolWin, Menus, ImgList, StdCtrls, {Mask,}
  RxToolEdit, ExtCtrls, RXSplit, TBXStatusBars, ActnList, DBCtrls, Db,
  DBGrids, DBTables, RxPlacemnt, StrMan, IniFiles,
  IB_UpdateBar, IB_NavigationBar, IB_Controls, IB_Components, IB_Grid,
  IB_TransactionBar, Buttons, RXCtrls, Grids, Mask, ESBDates,
  AxCtrls, OleCtrls, VCIF1Lib_TLB, TB2Dock, TB2Toolbar, TB2ExtItems, TBXExtItems, TBX,
  IB_StoredProc, RAWPrinter, LibApp, StringLib, NumWords, HHelp,
  ClsParam, FormulaOneLib,
  ClsDoc, Constants_App,
  ClsProveedor,
  ClsProducto,
  ClsFamilia,
  ClsAgente,
  ClsTablas,
  ClsMoneda, RXSpin, ProductoSearch, FamiliaSearch, TB2Item, rxCurrEdit,
  RzButton, RzRadChk, RzPanel;

//Indicar el estado del Docto al estar editandolo
type TDocState = (edInsert, edBrowse, edCancel);

type
  TfrmCompras = class(TForm)
    ImageList1: TImageList;
    ActionList1: TActionList;
    Nuevo: TAction;
    ToolBar: TAction;
    LetreroBtn: TAction;
    Listado: TAction;
    Eliminar: TAction;
    Salir: TAction;
    axnBuscar: TAction;
    axnFiltrar: TAction;
    pnlMain: TPanel;
    pnlFecha: TPanel;
    pnlDetalle: TPanel;
    pnlTotales: TPanel;
    xcrSubTotal: TCurrencyEdit;
    xcrIVA: TCurrencyEdit;
    xcrTotal: TCurrencyEdit;
    RxLabel1: TRxLabel;
    RxLabel3: TRxLabel;
    pgcCliente: TPageControl;
    tshCliente: TTabSheet;
    pnlFolio: TPanel;
    Dock971: TTBXDock;
    Raw1: TRAWPrinter;
    xdeFecha: TDateEdit;
    Label7: TLabel;
    xceFolio: TComboEdit;
    Label8: TLabel;
    tlbMain: TTBXToolbar;
    tbtImprimir: TTBXItem;
    tbtGrabar: TTBXItem;
    tbtCreate: TTBXItem;
    ToolbarSep973: TTBXSeparatorItem;
    ToolbarSep975: TTBXSeparatorItem;
    ToolbarSep977: TTBXSeparatorItem;
    tbtVer: TTBXItem;
    ToolbarSep979: TTBXSeparatorItem;
    Timer1: TTimer;
    tbtCancelar: TTBXItem;
    tshDatosProd: TTabSheet;
    Timer2: TTimer;
    Panel1: TPanel;
    xsbAmpliar: TRxSpeedButton;
    xlbDescri: TRxLabel;
    Panel2: TPanel;
    imgFoto: TImage;
    xlbCancelado: TRxLabel;
    tlbBackOrder: TTBXItem;
    GroupBox1: TGroupBox;
    xcrExisTotal: TCurrencyEdit;
    tbtListar: TTBXItem;
    RxLabel2: TRxLabel;
    pgcListados: TPageControl;
    tshOC: TTabSheet;
    F1: TF1Book;
    tshLP: TTabSheet;
    F1LP: TF1Book;
    tshCriterios: TTabSheet;
    tshOpciones: TTabSheet;
    Panel4: TPanel;
    Label3: TLabel;
    dteFechaIni: TDateEdit;
    dteFechaFin: TDateEdit;
    Label4: TLabel;
    grpComprar: TGroupBox;
    xsbPasarTodo: TRxSpeedButton;
    Label11: TLabel;
    rbtBackorder: TRadioButton;
    rbtFacturado: TRadioButton;
    rbtPedido: TRadioButton;
    tbtPrever: TTBXItem;
    ToolbarSep974: TTBXSeparatorItem;
    icuRep: TIB_Cursor;
    GroupBox2: TGroupBox;
    xseColIni: TRxSpinEdit;
    xseColFin: TRxSpinEdit;
    xsbEsconder: TRxSpeedButton;
    xsbMostrar: TRxSpeedButton;
    Label15: TLabel;
    Label16: TLabel;
    tshAdicionales: TTabSheet;
    Panel6: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label17: TLabel;
    cboMoneda: TComboBox;
    xcrTipoCambio: TCurrencyEdit;
    xceIVA: TCurrencyEdit;
    edtMoneda: TEdit;
    rbtCaptura: TRadioButton;
    pgcFamPro: TPageControl;
    tshFamilia: TTabSheet;
    fraFamilia1: TfraFamilia;
    fraFamilia2: TfraFamilia;
    tshProducto: TTabSheet;
    fraProducto1: TfraProducto;
    fraProducto2: TfraProducto;
    Toolbar971: TTBXToolbar;
    ToolbarSep976: TTBXSeparatorItem;
    ToolbarSep978: TTBXSeparatorItem;
    tbtSalir: TTBXItem;
    tbtHelp: TTBXItem;
    lblPedido: TLabel;
    xceFacturaProv: TComboEdit;
    lblFecVence: TLabel;
    xdeFecFactura: TDateEdit;
    Label9: TLabel;
    xceCodCteProv: TComboEdit;
    xceNombreCte: TComboEdit;
    Label2: TLabel;
    TabSheet1: TTabSheet;
    RxLabel4: TRxLabel;
    xcrDescto: TCurrencyEdit;
    tbtSelOCompra: TTBXItem;
    ToolbarSep971: TTBXSeparatorItem;
    mmoObser: TMemo;
    Label14: TLabel;
    cboNumAlmac: TComboBox;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    chkGrabarCostos: TCheckBox;
    FormStorage1: TFormStorage;
    TBControlItem1: TTBControlItem;
    RxLabel5: TRxLabel;
    Label13: TLabel;
    xceColada: TComboEdit;
    pnlPedimento: TRzPanel;
    Label10: TLabel;
    xcePedimento: TComboEdit;
    Label12: TLabel;
    xceAduana: TComboEdit;
    Label5: TLabel;
    xdeFechaEnt: TDateEdit;
    rbtNacional: TRzRadioButton;
    rbtImportacion: TRzRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Select(ptTabla:String;piOpcion: Integer;ptKey:String);
    procedure SetUp;
    procedure SetUpF1;
    procedure SelectDocsF1;
    procedure SelectCliente(piOpcion: Integer;ptKey:String);
    procedure SelectProducto(piOpcion: Integer;ptKey:String);
    procedure xceCodCteProvButtonClick(Sender: TObject);
    procedure xceNombreCteButtonClick(Sender: TObject);
    procedure xceNombreTranspButtonClick(Sender: TObject);
    procedure F1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure F1EndRecalc(Sender: TObject);
    procedure xceFolioChange(Sender: TObject);
    procedure LimpiarDetalle;
    procedure tbtImprimirClick(Sender: TObject);
    procedure DeleteRowsDetalle;
    procedure tbtCreateClick(Sender: TObject);
    procedure tbtGrabarClick(Sender: TObject);
    procedure tbtSelPedidosClick(Sender: TObject);
    procedure Crear;
    procedure Grabar;
    procedure Leer;
    procedure Imprimir;
    procedure Limpiar;
    procedure Cancelar;
    procedure VaciarPedidoF1;
    procedure GetProducto(ptCod:String; F1Row:integer);
    procedure tbtSalirClick(Sender: TObject);
    procedure xceCodCteProvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure xceFolioButtonClick(Sender: TObject);
    procedure xceFolioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure F1EndEdit(Sender: TObject; var EditString: WideString;
      var Cancel: Smallint);
    procedure Timer1Timer(Sender: TObject);
    procedure UpdateControls;
    procedure F1StartEdit(Sender: TObject; var EditString: WideString;
      var Cancel: Smallint);
    procedure tbtCancelarClick(Sender: TObject);
    function GetNextRow:Integer;
    procedure xsbCalcularMEClick(Sender: TObject);
    procedure VerFoto;
    procedure VerExistencia;
    procedure F1SelChange(Sender: TObject);
    procedure MoverCursor(Key: Word;piTimes:Integer);
    procedure Timer2Timer(Sender: TObject);
    procedure F1Enter(Sender: TObject);
    procedure xsbAmpliarClick(Sender: TObject);
    procedure BuscaProveedor;
    procedure ListarProductos;
    function VerificaFactura:Boolean;
    procedure tbtListarClick(Sender: TObject);
    procedure tbtVerClick(Sender: TObject);
    procedure LoadXLS;
    procedure LeerArticulos;
    procedure F1LPDblClick(Sender: TObject; nRow, nCol: Integer);
    procedure PasarArticulos;
    procedure PasarTodo;
    procedure HideEmptyRows;
    procedure tbtPreverClick(Sender: TObject);
    procedure ShowEmptyRows;
    procedure tlbBackOrderClick(Sender: TObject);
    procedure tbtPasarTodoClick(Sender: TObject);
    procedure xsbPasarTodoClick(Sender: TObject);
    procedure EsconderColumnas(piColIni,piColFin:Integer);
    procedure MostrarColumnas(piColIni,piColFin:Integer);
    procedure xsbEsconderClick(Sender: TObject);
    procedure xsbMostrarClick(Sender: TObject);
    procedure BorrarListado;
    procedure BorrarOC;
    procedure cboMonedaClick(Sender: TObject);
    procedure GetTipoCambio;
    procedure edtMonedaChange(Sender: TObject);
    procedure tshCriteriosShow(Sender: TObject);
    procedure F1LPRClick(Sender: TObject; nRow, nCol: Integer);
    procedure tshClienteShow(Sender: TObject);
    procedure tshDatosProdShow(Sender: TObject);
    procedure tshOpcionesShow(Sender: TObject);
    procedure tshAdicionalesShow(Sender: TObject);
    procedure tbtHelpClick(Sender: TObject);
    procedure tbtSelOCompraClick(Sender: TObject);
    procedure PonerFormulas;
    procedure SavePedimento;
    procedure GrabarCostos;
    procedure rbtNacionalClick(Sender: TObject);
  private
    { Private declarations }
    FTipo_Docto:Integer;
  public
    { Public declarations }
    property Tipo_Docto:Integer read FTipo_Docto write FTipo_Docto;
  end;

const
    TABLA_CD  : String = '7';
    TABLA_EDO : String = '4';
    TABLA_AGE : String = '12';
    TABLA_TRA : String = '10';

var
  frmCompras: TfrmCompras;
  mrRes:Integer;
  TipoTabla,mtLastFile:String;
  miRow:Integer;
  miLista:Integer;
  miType:SmallInt;
  edEstado:TDocState;
  oIni:TIniFile;
  oProv:TProveedor;
  oDoc:TDoc;
  oParam:TParam;
  oProd:TProducto;
  oFam:TFamilia;
  oAge:TAgente;
  oTabla:TTabla;
  oMon:TMoneda;
  mtPath:String;
  mtFoto:String;
  mdIVA:Double;
  mtLugarExp:String;
  miErrorFactura:Integer;
  miMoneda:Integer;
  miRowIni:Integer = 7;
  miRowEnd:Integer;
  ColSet: set of 1..200;
  mfLoading:boolean;

//  Tipo_Docto:Integer;

implementation

uses DM_MBA, MsgError, SelCodDes, ClsPrintTxt, Main, SelDoc, SelTabla, VerImagen,
  BackOrder, Saldos, SelDocF1;

{$R *.DFM}

const sdFIXEDROWS: Integer = 6;
const sdROWINI: Integer = 7;
const sdROWINI_OC: Integer = 1;
const sdMAXROW_OC: Integer = 200;
const sdTOTCOLS: Integer = 11;

procedure TfrmCompras.FormCreate(Sender: TObject);
var tFile:String;
begin
//
  mfLoading := True;
    tFile := GetIniFile;
    oProv := TProveedor.Create;
    oDoc    := TDoc.Create;
    oProd   := TProducto.Create;
    oFam    := TFamilia.Create;
    oParam  := TParam.Create;
    oAge    := TAgente.Create;
    oTabla  := TTabla.Create;
    oMon    := TMoneda.Create;
    oIni := TIniFile.Create (tFile);
    mtPath := oIni.ReadString ('Directorios','Graficos','c:\@Mba\Ico\');

    ColSet := [3,6..22,33..50];

  fraFamilia1.Initiate;
  fraFamilia2.Initiate;
  fraProducto1.Initiate;
  fraProducto2.Initiate;

end;

procedure TfrmCompras.Timer1Timer(Sender: TObject);
begin
    Timer1.Enabled := False;
    SetUp;
  mfLoading := False;
end;


procedure TfrmCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    oProv.Free;
    oDoc.Free;
    oProd.Free;
    oFam.Free;
    oParam.Free;
    oAge.Free;
    oTabla.Free;
    oMon.Free;
    oIni.Free;
    
    frmCompras := nil;
    Action := caFree;
end;

procedure TfrmCompras.SalirExecute(Sender: TObject);
begin
    close;
end;

procedure TfrmCompras.FormShow(Sender: TObject);
begin
      Top :=0;
      Left :=0;

end;

procedure TfrmCompras.SetUp;
begin

    oParam.CODPAR := 'IVA';
    mdIVA := oParam.VALORNUM;

    xceIVA.Value := mdIVA;

    oParam.CODPAR := 'LUGAREXP';
    mtLugarExp := oParam.VALORTXT;

    pgcCliente.ActivePageIndex := 0;


    oMon.FillMoneda (cboMoneda);
    oMon.Fecha := xdeFecha.Date;
    oMon.MONEDA := Trim(sm.NthWord (1,cboMoneda.Text));
    oDoc.MONEDADOCT := oMon.MONEDA;

    DM1.FillAlmacen (cboNumAlmac);
    if cboNumAlmac.Items.Count > 0 then
        cboNumAlmac.ItemIndex := 0;

    GetTipoCambio;

    Crear;

    xdeFecha.Date := Date;

    dteFechaIni.date := Date - 30;
    dteFechaFin.date := Date;

end;

procedure TfrmCompras.SetUpF1;
var i:Integer;
begin

    LoadXls;
{
//Encabezados de Columnas
    F1.ColText[1] := 'Codigo';
    F1.ColText[2] := 'Cantidad';
    F1.ColText[3] := 'Descripcion';
    F1.ColText[4] := 'P. Unitario';
    F1.ColText[5] := 'Total';
    F1.ColText[6] := 'U.Medida';
    F1.ColText[7] := 'Fotografia';
    F1.ColText[8] := '';
    F1.ColText[9] := 'CostoMov';
    F1.ColText[10] := 'FecDocto';
    F1.ColText[11] := 'ImpComisMo';
    F1.ColText[12] := 'ImpIEPSMov';
    F1.ColText[13] := 'ImpIVAMovt';
    F1.ColText[14] := 'ImpNetoMov';
    F1.ColText[15] := 'PorcIEPSMo';
    F1.ColText[16] := 'PorcIVAMov';
    F1.ColText[17] := 'PorcComisV';
    F1.ColText[18] := '';
    F1.ColText[19] := 'NumTipoDoc';
    F1.ColText[20] := 'SerieDocto';
    F1.ColText[21] := 'NumDocto';
    F1.ColText[22] := 'NumMovto';
    F1.ColText[23] := '';
    F1.ColText[25] := 'P. Lista';
    F1.ColText[26] := 'Descto 1';
    F1.ColText[27] := 'Descto 2';
    F1.ColText[28] := 'Descto 3';
    F1.ColText[29] := 'Descto 4';
    F1.ColText[30] := 'Descto 5';
    F1.ColText[31] := 'Descto 6';
    F1.ColText[32] := 'Descto 7';
    F1.ColText[33] := 'Descto 8';
    F1.ColText[34] := 'Descto 9';
    F1.ColText[35] := 'Descto 10';
    F1.ColText[36] := 'CodFamilia';

//Esconder columnas no utilizadas en la O.C.
    for i:= 7 to 24 do
        F1.ColHidden[i] := True;

//Establecer Ancho de columnas
    F1.SetColWidth (1,2,3000,False);
    F1.SetColWidth (3,3,10000,False);
    F1.SetColWidth (4,5,3000,False);
    F1.SetColWidth (5,5,3500,False);
    F1.SetColWidth (6,6,3000,False);

    for i := 8 to 25 do begin
        F1.ColHidden[i] := True;
    end;

//Configurar F1
    F1.AllowDelete := False;
    F1.ShowEditBar :=True;
    F1.ShowZeroValues := False;
    F1.EnterMovesDown := False;
}
//    LimpiarDetalle;
end;

procedure TfrmCompras.LoadXLS;
var tFile,tDir:String;
    Enca:TStringList;
    i,iRen,iCol,iTipo:Integer;
    v:Variant;
begin
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'FMT_COMPRAS.xls';
    tFile := tDir+tFile;
    if not FileExists(tFile) then begin
      frmMsg.ClearAll;
      frmMsg.AddMsg('El archivo "' + tFile + '" NO Existe!');
      frmMsg.AddMsg('');
      frmMsg.AddMsg('Asegúrate de que este archivo esté en el directorio especificado.');
      frmMsg.AddMsg('Si no está, cópialo de otra PC que SI lo tenga.');
      frmMsg.ShowAsk := False;
      frmMsg.ShowCancel := False;
      frmMsg.ShowModal;
      frmMsg.ClearAll;
      exit;
    end;

    F1.Read (tFile,miType);
    F1.Sheet := 1;

    F1Lib.F1 := F1;

    F1Lib.GetCampoRC ('MAXROW',iRen,iCol,iTipo);
    F1.MaxRow := iRen;
    F1Lib.GetCampoRC ('MAXCOL',iRen,iCol,iTipo);
    F1.MaxCol := iRen;

    for i:= 1 to F1.NumSheets - 1 do begin
      F1.Sheet :=i;
      F1.AllowDelete := False;
      F1.AllowTabs := False;
      f1.ShowEditBar := true;
      f1.ShowZeroValues := False;
      F1.Modified := False;
    end;

    F1Lib.SetUpColumns;

    PonerFormulas;  //<<-- Corregir esta rutina... 28/Mar/05 5:10pm

{    F1.Sheet := 2;
    Enca := oEmp.DatosEnca;
    for i:= 0 to 4 do begin
      F1.TextRC[i+2,2] := Enca.Strings [i];
    end;

    F1.Sheet := 1;

    for i:= 1 to F1.NumSheets do begin
      F1.Sheet :=i;
      F1.TextRC[2,2] := oEmp.RazSocial;
      F1.AllowDelete := False;
      F1.AllowTabs := False;
      f1.ShowEditBar := true;
      f1.ShowZeroValues := True;
      F1.Modified := False;
    end;
}

    tFile := 'FMT_LISTA1.xls';
    tFile := tDir+tFile;
    if not FileExists(tFile) then begin
      frmMsg.ClearAll;
      frmMsg.AddMsg('El archivo "' + tFile + '" NO Existe!');
      frmMsg.AddMsg('');
      frmMsg.AddMsg('Asegúrate de que este archivo esté en el directorio especificado.');
      frmMsg.AddMsg('Si no está, cópialo de otra PC que SI lo tenga.');
      frmMsg.ShowAsk := False;
      frmMsg.ShowCancel := False;
      frmMsg.ShowModal;
      frmMsg.ClearAll;
      exit;
    end;
    F1LP.Read (tFile,miType);
    F1LP.FixedRows := 6;
    F1LP.PrintTitles := 'A1:IV6';
    F1LP.Sheet := 1;
    F1LP.TextRC[2,2] := oEmp.RAZSOCIAL;


end;
procedure TfrmCompras.EsconderColumnas(piColIni,piColFin:Integer);
var iCol:Integer;
begin
    for iCol := piColIni to piColFin do begin
        F1LP.ColHidden[iCol] := True;
    end;
end;
procedure TfrmCompras.MostrarColumnas(piColIni,piColFin:Integer);
var iCol:Integer;
begin
    for iCol := piColIni to piColFin do begin
        F1LP.ColHidden[iCol] := False;
    end;
end;

procedure TfrmCompras.PonerFormulas;
var tSel:String;
    iCol:Integer;
begin
  tSel := F1.Selection;
  F1.Row := 1;
  F1Lib.SetContenido('PRECIONETO');
  F1Lib.SetContenido('IMPNETOMOV');
  F1Lib.SetContenido('IMPIVAMOVT');
  F1Lib.SetContenido('EXISTCALC');
  F1Lib.SetContenido('SUBTOTAL');
  F1Lib.SetContenido('IVA');
  F1Lib.SetContenido('TOTAL');

  iCol := F1Lib.GetCol('PRECIONETO');
  F1.SetSelection(1,iCol,F1.MaxRow,iCol);
  F1.EditCopyDown;

  iCol := F1Lib.GetCol('IMPNETOMOV');
  F1.SetSelection(1,iCol,F1.MaxRow,iCol);
  F1.EditCopyDown;

  iCol := F1Lib.GetCol('IMPIVAMOVT');
  F1.SetSelection(1,iCol,F1.MaxRow,iCol);
  F1.EditCopyDown;

  iCol := F1Lib.GetCol('EXISTCALC');
  F1.SetSelection(1,iCol,F1.MaxRow,iCol);
  F1.EditCopyDown;

  F1.Selection := tSel;

END;

procedure TfrmCompras.rbtNacionalClick(Sender: TObject);
begin
  UpdateControls;
end;

{---------------------------------------------------------------
Eventos de la barra herramientas
---------------------------------------------------------------}
procedure TfrmCompras.tbtCreateClick(Sender: TObject);
begin
    Crear;
end;

procedure TfrmCompras.tbtGrabarClick(Sender: TObject);
var fOk:Boolean;
begin

    frmMsg.ClearAll;
    fOk := VerificaFactura;

    if not fOk then begin
        frmMsg.AddError (1,'La Orden de Compra tiene errores en la cantidad, el precio o el Total',
                           'Checar el detalle, en especial el precio, la cantidad y el total',
                           '');
        frmMsg.ShowModal;
        exit;
    end;

    Grabar;
    GrabarCostos;
    UpdateControls;
    Crear;   //Inicio nuevo docto
end;

procedure TfrmCompras.tbtImprimirClick(Sender: TObject);
begin

{    frmMsg.ClearAll;
    fOk := VerificaFactura;

    if not fOk then begin
        frmMsg.AddError (1,'La factura o pedido tiene errores en la cantidad, el precio o el Total',
                           'Checar el detalle de la factura, en especial el precio, la cantidad y el total','');
        frmMsg.ShowModal;
        exit;
    end;

    Imprimir;
    UpdateControls;
    Crear;   //Inicio nuevo docto
}
    if pgcListados.ActivePageIndex = 0 then begin //Orden de Compra
        F1.Sheet := 2;
        HideEmptyRows;
        F1.TextSRC[2,5,17] := edtMoneda.Text;
        F1.FilePrint(False)
    end else begin
        F1LP.FilePrint(False)
    end;

end;

procedure TfrmCompras.tbtCancelarClick(Sender: TObject);
begin
    if edEstado = edBrowse then
    // La factura se leyó de la BD, => si la puedo cancelar
        Cancelar
    else
        Crear;  //Si estoy insertando la factura (no la he grabado)
                //solo limpio los datos.
    UpdateControls;
end;

procedure TfrmCompras.tbtSelPedidosClick(Sender: TObject);
begin
//
//    SelectDocs;
end;
procedure TfrmCompras.tbtListarClick(Sender: TObject);
begin

    LeerArticulos;
end;


procedure TfrmCompras.tbtSalirClick(Sender: TObject);
begin
    Close;
end;




{---------------------------------------------------------------
Acciones Basicas del Modulo
---------------------------------------------------------------}
procedure TfrmCompras.UpdateControls;
begin
{    exit;
    tbtGrabar.Enabled := (edEstado = edInsert);
    pgcCliente.Enabled := (edEstado = edInsert);
    pnlTotales.Enabled := (edEstado = edInsert);
}
    pnlPedimento.Visible :=  rbtImportacion.Checked;

end;

procedure TfrmCompras.Crear;
begin
    edEstado := edInsert;
    UpdateControls;

    Limpiar;

    SetUpF1; // 11/Dic/2003

    oDoc.NUMTIPODOC  := sm.StrFloat(Tipo_Docto,'###');
//    cboMoneda.ItemIndex := 0;
//    xcrTipoCambio.Value := 1;
//    edtMoneda.Text := sm.NthWord (2,cboMoneda.Text,['|']);


    oDoc.MONEDADOCT := '1'; //Trim(sm.NthWord (1,cboMoneda.Text,['|']));
//    if oDoc.MONEDADOCT <> '1' then mdIVA := 0;

    xdeFecha.Date := Date;
    xceFolio.Text := oDoc.GetNextFolio;

    f1.NumberSRC [2,3,16] := StrToInt(Trim(xceFolio.Text));

    xlbCancelado.visible := False;


end;

procedure TfrmCompras.Grabar;
begin


    F1.Sheet := 1;

    if (edEstado = edBrowse) and (not oDoc.Modificar)   then begin
        // NUNCA modificar una factura....
        frmMsg.ClearAll;
        frmMsg.AddError (1,'Este tipo de documentos NO se puede modificar',
                           'Verica con el supervisor si es posible modificar este tipo de documentos.',
                           '');
        frmMsg.ShowModal;
        exit;
    end;
    if edEstado = edInsert then begin
    {Antes de grabar obtengo el Folio de nuevo, por si otro usuario
     grabó otro folio mientras se editaba este.
     Si estoy creando un nuevo documento, SI incremento el folio}
//        if Tipo_Docto <> 1 then  // No incrementar el folio cuando es factura
//        xceFolio.Text := oDoc.GetNextFolio;  <== Lo puse dentro de ClsDoc 26/Feb/2003
    end;

    oDoc.Error := 0;
    oDoc.NUMTIPODOC := sm.StrFloat (Tipo_Docto,'#');
    oDoc.SERIEDOCTO  := '*';
    oDoc.NUMDOCTO := xceFolio.Text;
    oDoc.FECDOCTO := xdeFecha.Date + Time;
    oDoc.CODCTEPROV := xceCodCteProv.Text;
    oDoc.NUMAGENTE := ''; //xceNumAgente.Text;
    oDoc.VIATRANS :=  ''; //xceViaTrans.Text;
    oDoc.IMPNETODOC := xcrSubTotal.Value;
    oDoc.IMPIVADOCT := xcrIVA.Value;
    oDoc.PORCIVADOC := mdIVA;
    oDoc.IMPTOTALDO := xcrTotal.Value;
    oDoc.IMPPENDDOC := xcrTotal.Value;
    oDoc.NUMALMAC := Trim(sm.NthWord (1,cboNumAlmac.Text,['|']));
    oDoc.MONEDADOCT := Trim(sm.NthWord (1,cboMoneda.Text,['|']));
    oDoc.TIPOCAMBIO := xcrTipoCambio.value;
    oDoc.FECVENCEDO := 0;
    oDoc.REFERDOCTO := xceFacturaProv.Text;
    oDoc.FECPEDIDO  := xdeFecFactura.Date;
    oDoc.Pedimento  := xcePedimento.Text;
    oDoc.Aduana     := xceAduana.Text;
    oDoc.FechaEnt   := xdeFechaent.Date;
    oDoc.Detalle := F1;

    oDoc.Save;

    if oDoc.Error > 0 then begin
        ShowMessage(oDoc.Msg.Text);
        exit;
    end;

    edEstado := edBrowse;

    SavePedimento;

    UpdateControls;

end;

procedure TfrmCompras.GrabarCostos;
var iRes,iLen:Integer;
    tKey:String;
    iRecCount,iRec,Row:Integer;
    iCols:array[1..20] of integer;
begin

  if not chkGrabarCostos.Checked then exit;

  frmMsg.ClearAll;
  frmMsg.AddMsg ('Este proceso graba los costos de los productos y todos los descuentos otorgados por el proveedor.');
  frmMsg.AddMsg('');
  frmMsg.AddMsg ('Si seleccionas "Aceptar", estos costos se grabarán en el catálogo de productos. Este proceso NO modificará los Precios de Venta.');
  frmMsg.AddMsg ('Estos costos se pueden modificar después en el módulo de Costeo de Articulos.');
  frmMsg.Question := '¿Desear afectar los costos?';
  iRes := frmMsg.ShowModal;

  if iRes = mrOk then begin

    iCols[1] := F1Lib.GetCol('CODIGO');
    iCols[2] := F1Lib.GetCol('CANTIDAD');
    iCols[3] := F1Lib.GetCol('PLISTA');
    iCols[4] := F1Lib.GetCol('PRECIONETO');
    iCols[5] := F1Lib.GetCol('DESCTO1');
    iCols[6] := F1Lib.GetCol('DESCTO2');
    iCols[7] := F1Lib.GetCol('DESCTO3');
    iCols[8] := F1Lib.GetCol('DESCTO4');
    iCols[9] := F1Lib.GetCol('DESCTO5');
    iCols[10] := F1Lib.GetCol('DESCTO6');
    iCols[11] := F1Lib.GetCol('DESCTO7');
    iCols[12] := F1Lib.GetCol('DESCTO8');
    iCols[13] := F1Lib.GetCol('DESCTO9');
    iCols[14] := F1Lib.GetCol('DESCTO10');

   DM1.ispArt_U03.Prepare;

   iRecCount := F1Lib.GetLastRow(1,0,1);
   for Row:= 1 to iRecCount do begin
     iLen := length(F1.TextRC[Row,1]);
     if iLen > 0 then begin
       tKey := F1.TextRC[Row,1];
       tKey := Trim(tKey);

       DM1.ispArt_U03.ParamByName('CODPRODSER').AsString := tKey;
       DM1.ispArt_U03.ParamByName('PCIOCOMPRADL').AsFloat := 0;
       DM1.ispArt_U03.ParamByName('PCIOCOMPRA').AsFloat := F1.NumberRC[Row,iCols[3]];
       DM1.ispArt_U03.ParamByName('DESCTO1').AsFloat    := F1.NumberRC[Row,iCols[5]];
       DM1.ispArt_U03.ParamByName('DESCTO2').AsFloat    := F1.NumberRC[Row,iCols[6]];
       DM1.ispArt_U03.ParamByName('DESCTO3').AsFloat    := F1.NumberRC[Row,iCols[7]];
       DM1.ispArt_U03.ParamByName('DESCTO4').AsFloat    := F1.NumberRC[Row,iCols[8]];
       DM1.ispArt_U03.ParamByName('DESCTO5').AsFloat    := F1.NumberRC[Row,iCols[9]];
       DM1.ispArt_U03.ParamByName('DESCTO6').AsFloat    := F1.NumberRC[Row,iCols[10]];
       DM1.ispArt_U03.ParamByName('DESCTO7').AsFloat    := F1.NumberRC[Row,iCols[11]];
       DM1.ispArt_U03.ParamByName('DESCTO8').AsFloat    := F1.NumberRC[Row,iCols[12]];
       DM1.ispArt_U03.ParamByName('DESCTO9').AsFloat    := F1.NumberRC[Row,iCols[13]];
       DM1.ispArt_U03.ParamByName('DESCTO10').AsFloat    := F1.NumberRC[Row,iCols[14]];

       DM1.ispArt_U03.ParamByName('PCIONETO').AsFloat := F1.NumberRC[Row,iCols[4]];
       DM1.ispArt_U03.ParamByName('USERACT1').AsString := oUser.login;
       DM1.ispArt_U03.ParamByName('FECHAACT1').AsDateTime := Date+Time;
       DM1.ispArt_U03.ExecProc;
     end;
   end;

   DM1.ispArt_U03.Unprepare;
  end;

end;

procedure TfrmCompras.Leer;
var
    tTD,tMon:String;
    ix:Integer;
    dTC:Double;
begin
//    oDoc.FECDOCTO := xdeFecha.Date;

    SetUpF1; // 11/Dic/2003
//    LimpiarDetalle;
    tTD := sm.StrFloat (Tipo_Docto,'###');
    tTD := Trim(tTD);
    oDoc.NUMTIPODOC := tTD;
    oDoc.SERIEDOCTO  := '*';
    oDoc.NUMDOCTO := Trim(xceFolio.Text);

    oDoc.Detalle := F1;

    oDoc.Retrieve;
    tMon := oDoc.MonedaDoct;
    dTC  := oDoc.TIPOCAMBIO;

    xdeFecha.Date := oDoc.FECDOCTO;
    xceCodCteProv.Text := oDoc.CODCTEPROV;
    BuscaProveedor;

    xceFActuraProv.TExt := oDoc.REFERDOCTO;
    xdeFecFactura.Date := oDoc.FECPEDIDO;
    xcePedimento.Text := oDoc.Pedimento;
    xceAduana.Text := oDoc.Aduana;
    xdeFechaent.Date := oDoc.FechaEnt;

    ComboSeek(cboNumAlmac,oDoc.NUMALMAC);

    ix := ComboSeek(cboMoneda,tMon);
    if ix >= 0 then begin
      cboMoneda.ItemIndex := ix;
    end;

    cboMonedaClick(nil);
    xcrTipoCAmbio.Value := dTC;


    F1 := oDoc.Detalle;



//    ListarProductos;
    PonerFormulas;

    edEstado := edBrowse;
    UpdateControls;

    xlbCancelado.Visible  := (oDoc.CANCELA  = '1');

end;

procedure TfrmCompras.Imprimir;
begin
    if edEstado = edInsert then
        Grabar;

//    if FTipo_Docto = 63 then
//        ImprimirDoc;

    UpdateControls;
end;

procedure TfrmCompras.Cancelar;
var wmr:Word;
begin
    wmr := MessageDlg( 'Deseas cancelar el documento?',
                                  mtConfirmation,
                                  [mbYes, mbNo],
                                  0 );
    if (wmr = mrNo) then exit;

    if edEstado = edBrowse then begin
        oDoc.NUMTIPODOC := sm.StrFloat (Tipo_Docto,'###',3,' ');
        oDoc.SERIEDOCTO  := '*';
        oDoc.NUMDOCTO := xceFolio.Text;

        oDoc.Cancel;

        xlbCancelado.Visible  := (oDoc.CANCELA  = '1');

    end;

    UpdateControls;

end;


procedure TfrmCompras.Limpiar;
begin

    oDoc.Clear;
    pgcCliente.ActivePageIndex := 0;
    xceFolio.Text := '';
    xdeFecha.Text := '';

    xceFacturaProv.Text := '';
    xceCodCteProv.Text := '';
    xceNombreCte.Text := '';
    xdeFecFactura.Text := '';

    mmoObser.Lines.Clear;

//    LimpiarDetalle;
    BorrarListado;

    cboMoneda.ItemIndex := Comboseek(cboMoneda,'1'); //Pesos
    cboMonedaClick(nil);


    xcrSubtotal.Value :=0;
    xcrIva.Value :=0;
    xcrTotal.Value :=0;



    xceCodCteProv.SetFocus;

    UpdateControls;

end;

procedure TfrmCompras.VaciarPedidoF1;
var tAux,ptCod,ptComa,ptPedido:String;
    i,iRow,iCol:integer;
    dCant,dPend:Double;
    v:Variant;
    iCols:array[1..20] of integer;
begin

{    if length(xcePedido.Text) > 0 then ptComa := ',' else ptComa := '';

    ptPedido := frmSelDocF1.NUMDOCTO;
    ptPedido := sm.Strip(ptPedido);
    if (pos(ptPedido,xcePedido.Text) <= 0) and (length(ptPedido) > 0 ) then //Para no poner dos veces el pedido
        xcePedido.Text := xcePedido.Text + ptComa + ptPedido;
    xceNumAgente.Text := frmSelDocF1.NUMAGENTE;
    BuscaAgente;
    xceViaTrans.Text := frmSelDocF1.VIATRANS;
    BuscaViaTransporte;
}
//Columnas...
    iCols[1] := F1Lib.GetCol('CODIGO');
    iCols[2] := F1Lib.GetCol('CANTIDAD');
    iCols[3] := F1Lib.GetCol('PLISTA');
    iCols[4] := F1Lib.GetCol('DENUMTIPODOC');
    iCols[5] := F1Lib.GetCol('DESERIEDOCTO');
    iCols[6] := F1Lib.GetCol('DENUMDOCTO');
    iCols[7] := F1Lib.GetCol('DENUMMOVTO');
    iCols[8] := F1Lib.GetCol('DESCTO1');
    iCols[9] := F1Lib.GetCol('DESCTO2');
    iCols[10] := F1Lib.GetCol('DESCTO3');
    iCols[11] := F1Lib.GetCol('DESCTO4');
    iCols[12] := F1Lib.GetCol('DESCTO5');
    iCols[13] := F1Lib.GetCol('DESCTO6');
    iCols[14] := F1Lib.GetCol('DESCTO7');
    iCols[15] := F1Lib.GetCol('DESCTO8');
    iCols[16] := F1Lib.GetCol('DESCTO9');
    iCols[17] := F1Lib.GetCol('DESCTO10');



//Detalle del Pedido
    iCol := frmSelDocF1.F1Det.Col;
    if (iCol <> 3) and (iCol <> 6) then iCol := 6;
    iRow := GetNextRow;
    for i := 1 to frmSelDocF1.DetCount do begin
        F1.Row := iRow;
        ptCod := frmSelDocF1.F1Det.TextRC[i,2];
        dCant := frmSelDocF1.F1Det.NumberRC[i,3];
        dPend := frmSelDocF1.F1Det.NumberRC[i,6];
        tAux := frmSelDocF1.F1Det.TextRC[i,1];
        if (dCant > 0) and (length(tAux) > 0) then begin
            F1.TextRC[iRow,iCols[1]] := ptCod;
            GetProducto(ptCod,F1.Row);
            F1.NumberRC[iRow,iCols[2]] := frmSelDocF1.F1Det.NumberRC[i,iCol]; // Cantidad
            F1.TextRC[iRow,3] := frmSelDocF1.F1Det.TextRC[i,4]; // Descripcion de la OC

            F1.NumberRC[iRow,iCols[3]] := frmSelDocF1.F1Det.NumberRC[i,7];
            F1.TextRC[iRow,iCols[4]] := frmSelDocF1.Tipo_Docto;
            F1.TextRC[iRow,iCols[5]] := frmSelDocF1.Serie_Docto;
            F1.TextRC[iRow,iCols[6]] := frmSelDocF1.NumDocto;
            F1.TextRC[iRow,iCols[7]] := frmSelDocF1.F1Det.TextRC[i,9];
            F1.NumberRC[iRow,iCols[8]] := frmSelDocF1.F1Det.NumberRC[i,10];
            F1.NumberRC[iRow,iCols[9]] := frmSelDocF1.F1Det.NumberRC[i,11];
            F1.NumberRC[iRow,iCols[10]] := frmSelDocF1.F1Det.NumberRC[i,12];
            F1.NumberRC[iRow,iCols[11]] := frmSelDocF1.F1Det.NumberRC[i,13];
            F1.NumberRC[iRow,iCols[12]] := frmSelDocF1.F1Det.NumberRC[i,14];
            F1.NumberRC[iRow,iCols[13]] := frmSelDocF1.F1Det.NumberRC[i,15];
            F1.NumberRC[iRow,iCols[14]] := frmSelDocF1.F1Det.NumberRC[i,16];
            F1.NumberRC[iRow,iCols[15]] := frmSelDocF1.F1Det.NumberRC[i,17];
            F1.NumberRC[iRow,iCols[16]] := frmSelDocF1.F1Det.NumberRC[i,18];
            F1.NumberRC[iRow,iCols[17]] := frmSelDocF1.F1Det.NumberRC[i,19];
            iRow := iRow+1;

            if iRow > F1.MaxRow then break;

        end;
    end;

    PonerFormulas;

end;

{--------------------------------------------------------------}

{procedure TfrmDocs.IB_Edit5Change(Sender: TObject);
begin
//    xceEdo.Text := oTabla.GetDescri (TABLA_EDO,IB_Edit5.Text);
end;

procedure TfrmDocs.IB_Edit4Change(Sender: TObject);
begin
//    xceCd.Text := oTabla.GetDescri (TABLA_CD,IB_Edit4.Text);

end;
}

procedure TfrmCompras.SelectDocsF1;
begin
    if not Assigned(frmSelDocF1) then
        frmSelDocF1 := TfrmSelDocF1.Create (Application);

    frmSelDocF1.CodCteProv := xceCodCteProv.Text;
    frmSelDocF1.RazSocial := xceNombreCte.Text;
    frmSelDocF1.Tipo_Docto := '63'; //Ordenes de Compra

    mrRes := frmSelDocF1.ShowModal;
    frmSelDocF1.Hide;
    Application.ProcessMessages;
    if (mrRes = mrOk) and (Tipo_Docto = 31) then begin
        VaciarPedidoF1;
        frmSelDocF1.unprepare;
    end;
end;

procedure TfrmCompras.Select(ptTabla:String;piOpcion: Integer;ptKey:String);
begin
    if not Assigned(frmSelTabla) then
        frmSelTabla := TfrmSelTabla.Create (Application);
    frmSelTabla.Tabla := ptTabla;
    frmSelTabla.Campo := piOpcion;

    frmSelTabla.Param1 := '';
    frmSelTabla.Param2 := '';
    if ptTabla = 'MBA10021' then begin // Tablas del Sistema
        frmSelTabla.Param1 := TipoTabla;
    end;

    if piOpcion = 1 then begin
        frmSelTabla.Codigo := ptKey;
        frmSelTabla.Descri := '';
    end else begin
        frmSelTabla.Codigo := '';
        frmSelTabla.Descri := ptKey;
    end;
    mrRes := frmSelTabla.ShowModal;
//    if edEstado in [edBrowse] then iqrDoc.Edit;

//    frmSelTabla.Hide;

end;

procedure TfrmCompras.SelectCliente(piOpcion: Integer;ptKey:String);
begin
    Select('MBA10013',piOpcion,ptKey);
    if mrRes = mrOk then begin
        xceCodCteProv.Text := frmSelTabla.Valores[1];
        xceNombreCte.Text  := frmSelTabla.Valores[2];
        BuscaProveedor;
    end;

end;

procedure TfrmCompras.SelectProducto(piOpcion: Integer;ptKey:String);
var ptCod:String;
begin
    Select('MBA10004',piOpcion,ptKey);
    if mrRes = mrOk then begin
        F1.TextRC[miRow,1] := frmSelTabla.Valores[1];
        ptCod := F1.TextRC[miRow,1];
        GetProducto(ptCod,F1.Row);
        F1.Col := 2;
    end;

end;

procedure TfrmCompras.xceCodCteProvButtonClick(Sender: TObject);
begin
    SelectCliente(1,xceCodCteProv.Text);
end;

procedure TfrmCompras.xceNombreCteButtonClick(Sender: TObject);
begin
    SelectCliente(2,xceNombreCte.Text);

end;

procedure TfrmCompras.xceNombreTranspButtonClick(Sender: TObject);
begin
end;
{---------------------------------------------------------------
Eventos F1
---------------------------------------------------------------}
function TfrmCompras.GetNextRow:Integer;
var i,iMaxRows:Integer;
    tCon:String;
begin
    Result := -1;
    iMaxRows := F1.MaxRow;
    for i:= 1 to iMaxRows do begin
        tCon := F1.TextRC[i,1];
        tCon := sm.Strip (tCon);
        if length(tCon) <= 0 then begin
            Result := i;
            break;
        end;
    end;
end;

procedure TfrmCompras.LimpiarDetalle;
var i,iMaxRows:Integer;
    tRow:String;
begin

    F1.Sheet := 1;
    iMaxRows := F1.MaxRow;
    F1.ClearRange(1, 1, iMaxRows,30, F1ClearValues); //	Delete key
{    for i:= 1 to 200 do begin
        tRow := IntToStr(i);
        F1.FormulaRC[i,5] := 'Round(B'+tRow+'*'+'D'+tRow+',2)';
    end;

    F1.FormulaRC[201,5] := 'Round(SUM(E1:E200),2)';
    f1.Selection := 'A1';
}
{// Limpiar Hoja de Impresión "IMP"
    F1.Sheet := 2;
    iMaxRows := F1.MaxRow;
    F1.ClearRange(1, 1, iMaxRows,30, F1ClearValues); //	Delete key
    for i:= 1 to 200 do begin
        tRow := IntToStr(i);
        F1.FormulaRC[i,5] := 'Round(B'+tRow+'*'+'D'+tRow+',2)';
    end;


    F1.Sheet := 1;
}
    ShowEmptyRows;

end;

procedure TfrmCompras.F1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var tProd:String;
begin

//    if edEstado = edBrowse then exit;

    case Key of
    VK_F3:begin
            miRow := F1.Row;
            SelectProducto(1,F1.TextRC[miRow,1]);
            Timer2Timer(Sender);
          end;
    VK_F4:begin
            miRow := F1.Row;
            SelectProducto(2,F1.TextRC[miRow,3]);
            Timer2Timer(Sender);
          end;
    VK_DELETE: begin
        if ssCtrl in Shift then
            DeleteRowsDetalle
        else begin
            if (F1.Col in ColSet) then exit;
            F1.ClearRange(F1.SelStartRow,F1.SelStartCol,F1.SelEndRow,F1.SelEndCol,F1ClearValues)
        end;
        end;
    VK_RETURN:
        begin
          if F1.Col = 1 then begin
            tProd := F1.TextRC[F1.Row,1];
            GetProducto(tProd,F1.Row);
          end;
        end;
    end;
end;

procedure TfrmCompras.GetProducto(ptCod:String; F1Row:integer);
var iCol:integer;
    tPrecio:String;
    iCols:array[1..20] of integer;
begin

//Columnas...
  iCols[1] := F1Lib.GetCol('CODIGO');
  iCols[2] := F1Lib.GetCol('DESCRIPCION');
  iCols[3] := F1Lib.GetCol('UVTA');
  iCols[4] := F1Lib.GetCol('PLISTA');
  iCols[5] := F1Lib.GetCol('PATHFOTO');
  iCols[6] := F1Lib.GetCol('DENUMDOCTO');
  iCols[7] := F1Lib.GetCol('DENUMMOVTO');
  iCols[8] := F1Lib.GetCol('FECDOCTO');
  iCols[9] := F1Lib.GetCol('PORCIVAMOV');
  iCols[10] := F1Lib.GetCol('EXISTOTAL');
  iCols[11] := F1Lib.GetCol('CODFAMILIA');

  if F1Row <= 0 then begin
    F1Row := F1Lib.GetLastRow(1,0,1);
  end;

    oProd.CODPRODSER := UpperCase(ptCod);
    oProd.Retrieve;
    if oProd.EDOACTPROD = 2 then begin
        frmMsg.ClearAll;
        frmMsg.AddError (1,'El Producto ' + oProd.CodPRodSer + ' está dado de baja temporalmente!!',
                         'Checar con Compras','');
        frmMsg.ShowModal;
        exit;
    end;
    F1.TextRC[F1Row,iCols[1]] := oProd.CODPRODSER;
    F1.TextRC[F1Row,iCols[2]] := oProd.DESCRIPPRO;


    F1.TextRC[F1Row,iCols[3]] := oProd.UNIVTADESC;

    F1.NumberRC[F1Row,iCols[4]] := oProd.PCIOCOMPRA;

    F1.TextRC[F1Row,iCols[5]] := oProd.PATHFOTO;
//    F1.NumberRC[F1.Row,IdCols.CostoMov] := oProd.CTOREAL;
    if oDoc.MONEDADOCT <> '1' then begin
        tPrecio := Format('%8.2f', [F1.NumberRC[F1Row,iCols[4]] / xcrTipoCambio.value]);
        F1.NumberRC[F1Row,iCols[4]] := StrToFloat(tPrecio);
//        F1.NumberRC[F1.Row,ols.CostoMov] := oProd.CTOREAL / xcrTipoCambio.value;
    end;
    F1.NumberRC[F1Row,iCols[8]] := xdeFecha.Date;

{    if oDoc.MONEDADOCT = '1' then
        F1.NumberRC[F1Row,iCols[9]] := mdIVA
    else
        F1.NumberRC[F1Row,iCols[9]] := 0;  //Moneda extranjera NO lleva IVA
}

// En el caso de la O.C., puede ser que sea en dolares y SI lleve IVA (19/Abr/2005)
    F1.NumberRC[F1Row,iCols[9]] := xceIVA.Value; // / 100;


    F1.NumberRC[F1Row,iCols[10]] := oProd.EXISTOTAL;

    F1.TextRC[F1Row,iCols[11]] := oProd.CODFAMILIA;


    F1.NumberRC[F1Row,23] := oProd.DESCTO1;
    F1.NumberRC[F1Row,24] := oProd.DESCTO2;
    F1.NumberRC[F1Row,25] := oProd.DESCTO3;
    F1.NumberRC[F1Row,26] := oProd.DESCTO4;
    F1.NumberRC[F1Row,27] := oProd.DESCTO5;
    F1.NumberRC[F1Row,28] := oProd.DESCTO6;
    F1.NumberRC[F1Row,29] := oProd.DESCTO7;

    F1.TextRC[F1Row,iCols[6]] := '';
    F1.TextRC[F1Row,iCols[7]] := '';

    F1.TextRC[F1.Row,IdCols.Pedimento] := xcePedimento.Text;
    F1.NumberRC[F1.Row,IdCols.FechaEnt] := xdeFechaEnt.Date;
    F1.TextRC[F1.Row,IdCols.Aduana] := xceAduana.Text;



    xcrExisTotal.Value := oProd.EXISTOTAL;

end;

procedure TfrmCompras.ListarProductos;
var
    iRow:Integer;
    tCod:String;
begin
    iRow := 1;
    tCod := F1.TextRC[iRow,1];
    while length(tCod) > 0  do begin
        oProd.CODPRODSER := UpperCase(tCod);
        oProd.Retrieve;
        F1.TextRC[iRow,6] := oProd.UNIVTADESC;
        F1.TextRC[iRow,7] := oProd.PATHFOTO;
        F1.NumberRC[iRow,9] := oProd.ULTCOSTO;
        F1.NumberRC[iRow,10] := xdeFecha.Date;
        F1.FormulaRC[iRow,11] := GetFormula(iRow,5) + '*(Q1/100)'; //F1.NumberRC[F1.Row,5] * oAge.PORCCOMVTA / 100;
        F1.NumberRC[iRow,12] := 0;
        F1.FormulaRC[iRow,13] := GetFormula(iRow,5) + '*(P1/100)';
        F1.FormulaRC[iRow,14] := GetFormula(iRow,5);
        F1.NumberRC[iRow,15] := 0;
        F1.NumberRC[iRow,16] := mdIVA;
        F1.NumberRC[iRow,17] := oAge.PORCCOMVTA;
        F1.NumberRC[iRow,18] := oProd.EXISTOTAL;

        xcrExisTotal.Value := oProd.EXISTOTAL;
        iRow := iRow+1;
        tCod := F1.TextRC[iRow,1]

    end;


end;


procedure TfrmCompras.DeleteRowsDetalle;
var tSel:String;
begin
  tSel := F1.Selection;
  F1.DeleteRange(F1.SelStartRow,1,F1.SelEndRow,F1.MaxCol,F1ShiftRows);
  PonerFormulas;
  F1.Selection := tSel;

end;

procedure TfrmCompras.F1EndRecalc(Sender: TObject);
var iRen,iCol,iTipo:integer;
begin
    F1Lib.GetCampoRC ('SUBTOTAL',iRen,iCol,iTipo);
    xcrSubTotal.Value := F1.NumberSRC[1,iRen,iCol];
    F1Lib.GetCampoRC ('IVA',iRen,iCol,iTipo);
    xcrIVA.Value := F1.NumberSRC[1,iRen,iCol];
    F1Lib.GetCampoRC ('TOTAL',iRen,iCol,iTipo);
    xcrTotal.Value := F1.NumberSRC[1,iRen,iCol];
end;

{---------------------------------------------------------------}


procedure TfrmCompras.xceFolioChange(Sender: TObject);
begin
//    UpdateDocto;
end;

procedure TfrmCompras.BuscaProveedor;
var tCod,tMoneda:String;
    slDir:TStringList;
    iErr:Integer;
begin
    slDir := TStringList.Create;
    tCod := sm.Strip(xceCodCteProv.Text);
    if length(tCod) <= 0 then exit;

    oProv.CODCTEPROV := tCod;
    oProv.Retrieve;
    if (oProv.Error > 0) then exit;

// Checar que el cliente no esté bloqueado
    if oProv.EDOACTPROV = 2 then begin
        frmMsg.ClearAll;
        frmMsg.AddError (1,'El Proveedor ' + oProv.NOMBPROVEE + ' está dado de baja temporalmente!!',
                         'Checar con el Depto de Compras!!','');
        frmMsg.ShowModal;
        Crear;
        exit;
    end;

    iErr := 0;
    xceNombreCte.Text := oProv.NOMBPROVEE;
    xceIVA.Value := oProv.PorcIVA;

    tMoneda := oProv.MonedaProv;
    tMoneda := sm.Strip(tMoneda);

    frmMsg.ClearAll;
    if sm.IsEmpty (tMoneda) then begin
      iErr := iErr + 1;
      frmMsg.AddError (1,'El Proveedor ' + oProv.NOMBPROVEE + ' NO tiene capturada la Moneda!!',
                       'Ve a Catalogos | Proveedores y captura la moneda!!','');
      frmMsg.ShowModal;
      Crear;
      exit;
    end;


    cboMoneda.ItemIndex := Comboseek(cboMoneda,oProv.MonedaProv);
    cboMonedaClick(nil);

//LLenar datos de proveedor en OC
{
    slDir := oProv.GetDireccion;
    F1.TextSRC[2,7,4] := oProv.NOMBPROVEE;
    F1.TextSRC[2,8,4] := slDir.Strings[0];
    F1.TextSRC[2,9,4] := slDir.Strings[1];
    F1.TextSRC[2,10,4] := slDir.Strings[2];
    F1.TextSRC[2,11,4] := slDir.Strings[3];

// Volver a poner la OC por si las dudas
    f1.NumberSRC [2,3,16] := StrToInt(Trim(xceFolio.Text));


    F1.TextSRC[2,5,17] := edtMoneda.Text;
}

end;

function TfrmCompras.VerificaFactura:Boolean;
var iMaxRow,iRen:Integer;
    dPrecio,dCantidad,dTotal:Double;
    tCodPS,tDescri:String;
    fRes:boolean;
begin
    fRes := True;
    
    if length(xceCodCteProv.Text) <= 0 then begin
      frmMsg.AddMsg ('No está capturado el Proveedor!!');
      frmMsg.AddMsg ('');
      fRes := False;
    end;
    if length(xceFacturaProv.Text) <= 0 then begin
      frmMsg.AddMsg ('No está capturada la factura del Proveedor!!');
      frmMsg.AddMsg ('');
      fRes := False;
    end;


    iMaxRow := f1.MaxRow;
    for iRen := 1 to iMaxRow do begin
        tCodPS := F1.TextRC[iRen,1];
        tCodPS := sm.Strip (tCodPS);
        tDescri := sm.Strip(F1.TextRC[iRen,3]);
        if (length(tCodPS) > 0) then begin
            dPrecio := F1.NumberRC[iRen,4];
            dCantidad := F1.NumberRC[iRen,2];
            dTotal    := F1.NumberRC[iRen,7];

            if (dPrecio <= 0) or (dCantidad <= 0) or (dTotal <= 0) then begin
                frmMsg.AddMsg ('El producto '+tCodPS+' tiene errores en Precio, Cantidad o Total!!');
                fRes := False;

            end;
        end;
    end;

    Result := fRes;

end;

procedure TfrmCompras.xceCodCteProvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_F3:    SelectCliente(1,xceCodCteProv.Text);
    VK_F4:    SelectCliente(2,xceNombreCte.Text);
    VK_Return: BuscaProveedor
    end;


end;

procedure TfrmCompras.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_F5:    Crear;
    VK_F6:    tbtGrabarClick(Sender);
    VK_F7:    tbtImprimirClick(Sender);
    end;


end;

procedure TfrmCompras.xceFolioButtonClick(Sender: TObject);
begin
    Leer;
end;

procedure TfrmCompras.xceFolioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_RETURN: Leer;
    end;

end;

procedure TfrmCompras.F1EndEdit(Sender: TObject; var EditString: WideString;
  var Cancel: Smallint);
var
    dCant:Double;
    tES:String;
begin
    if F1.Col = 1 then begin
        EditString := UpperCase(EditString);
        GetProducto(EditString,F1.Row);
        EditString := oProd.CODPRODSER;
    end;
    if F1.Col = 2 then begin
        tES := EditString;
        tES := sm.GetDigit (tES);
        if length(tES) > 0 then dCant := StrToInt(tES) else dCant :=0;
{        if dCant > 0 then begin
            if (xcrExisTotal.Value - dCant < 0) then begin
                frmMsg.clearall;
                frmMsg.AddMsg ('La existencia del producto es negativa!');
                frmMsg.ShowModal;

            end;

        end;
}
    end;

    Timer2.Enabled := True;
end;

procedure TfrmCompras.F1StartEdit(Sender: TObject; var EditString: WideString;
  var Cancel: Smallint);
begin
    if F1.Col in ColSet then Cancel := 1;
end;

procedure TfrmCompras.xsbCalcularMEClick(Sender: TObject);
var iRow:Integer;
    ptCod:String;
begin
    iRow := GetNextrow;
    F1.Row := iRow;
    ptCod := 'ASH-9998';
    F1.TextRC[iRow,1] := ptCod;
    GetProducto(ptCod,F1.Row);
    F1.NumberRC[iRow,2] := 1;
    F1.NumberRC[iRow,4] := xcrSubTotal.Value * 0.03;

    F1.SetFocus;


end;

procedure TfrmCompras.VerFoto;
var tFile:String;
    iRow:Integer;
begin
    iRow := F1.Row;
    tFile := sm.Strip(F1.TextRC[iRow,7]);
    tFile := tFile+'.jpg';
{    if length(tFile) <= 0 then begin
        if F1.Row <= 1 then
            iRow := 1
        else
        iRow := F1.Row - 1;
        tFile := sm.Strip(F1.TextRC[iRow,7]);
    end;
}
    tFile := mtPath+tFile;

    xlbDescri.Caption := F1.TextRC[iRow,3];

    //Si es la misma foto anterior, me salgo.
    if tFile = mtFoto then exit;

    mtFoto := tFile;

    if FileExists(tFile) then begin
        imgFoto.Visible := True;
        imgFoto.Picture.LoadFromFile (tFile);
    end else
        imgFoto.Visible := False;

    xsbAmpliar.Visible := imgFoto.Visible;


end;
procedure TfrmCompras.VerExistencia;
var iRow,iCol:Integer;
begin
  if mfLoading then exit;

  iRow := F1.Row;
  iCol := F1Lib.GetCol('EXISTOTAL');
  xcrExisTotal.Value := F1.NumberRC[iRow,iCol];
end;

procedure TfrmCompras.F1SelChange(Sender: TObject);
begin
    VerFoto;
    VerExistencia;
end;

procedure TfrmCompras.MoverCursor(Key: Word;piTimes:Integer);
var iRow,iCol:Integer;
begin
    iRow := F1.Row;
    iCol := F1.Col;
    case Key of
    VK_UP: begin
                iRow := F1.Row - piTimes;
                if iRow < 1 then iRow := 1;
            end;
    VK_DOWN:  begin
                iRow := F1.Row + piTimes;
                if iRow > F1.MaxRow then iRow := F1.MaxRow;
            end;
    VK_LEFT: begin
                iCol := F1.Col - piTimes;
                if iCol < 1 then iCol := 1;
            end;
    VK_RIGHT:  begin
                iCol := F1.Col + piTimes;
                if iCol > F1.MaxCol then iCol := F1.MaxCol;
            end;
    end;

    F1.Row := iRow;
    F1.Col := iCol;

end;
procedure TfrmCompras.Timer2Timer(Sender: TObject);
begin
  exit;
    if oProd.EDOACTPROD = 2 then begin
        MoverCursor(VK_LEFT,1);
        Timer2.Enabled := False;
        exit;
    end;

    if F1.Col = 1 then begin
        MoverCursor(VK_RIGHT,1);
    end else begin
        if F1.Col = 2 then begin
            MoverCursor(VK_LEFT,1);
            MoverCursor(VK_DOWN,1);
        end;
    end;

    Timer2.Enabled := False;
end;

procedure TfrmCompras.F1Enter(Sender: TObject);
begin
//    pgcCliente.ActivePage := tshProducto;
end;

procedure TfrmCompras.xsbAmpliarClick(Sender: TObject);
begin
    frmVerImagen := TfrmVerImagen.Create (Application);
    frmVerImagen.imgFoto.Picture  := imgFoto.Picture;
    frmVerImagen.ShowModal;
end;

procedure TfrmCompras.tbtVerClick(Sender: TObject);
begin
    pgcCliente.Visible := tbtVer.Checked;
    pnlTotales.Visible := tbtVer.Checked;
end;

procedure TfrmCompras.BorrarListado;
var i:Integer;
begin
    F1LP.ClearRange(miRowIni,1,F1LP.MaxRow,10,F1ClearValues);
    F1LP.ClearRange(miRowIni,12,F1LP.MaxRow,23,F1ClearValues);
    F1LP.SetSelection(miRowIni,1,F1LP.MaxRow,23);
    F1LP.FontBold := False;
    F1LP.SetSelection(miRowIni,2,miRowIni,2);
end;

procedure TfrmCompras.BorrarOC;
var i:Integer;
begin
//    F1LP.ClearRange(miRowIni,1,F1LP.MaxRow,22,F1ClearValues);

end;

procedure TfrmCompras.LeerArticulos;
var i:Integer;
    iRecCount,iRec,iSR:Integer;
    tRep,tKey,tTipoProd,tSel,tSR:String;
    fFound,fBorrado:Boolean;
    Row,Col:Integer;
    dBack,dPrecioMN,dPrecioDL:Double;
    tMoneda,tCodIni,tCodFin:String;
    fListar:Boolean;
begin
    Screen.Cursor := crHourglass;

    pgcListados.ActivePageIndex := 1; //Listado Prods

//    LoadXls;

    tMoneda := sm.NthWord(1,cboMOneda.Text);
    tMoneda := sm.Strip (tMoneda);
    if tMoneda <> '1' then begin // No es moneda nacional
      F1Lp.TextRC[5,10] := 'PRECIO';
      F1Lp.TextRC[6,10] := 'LISTA (DLS)';
    end else begin
      F1Lp.TextRC[5,10] := 'PRECIO';
      F1Lp.TextRC[6,10] := 'LISTA (MN)';
    end;

    BorrarListado;
    tSel := F1LP.selection;

    if (pgcFamPro.ActivePage = tshProducto) then begin
        tRep := 'select * from RepCostosPro(?p_FechaIni,?p_FechaFin,?p_Concepto,?p_codigo1,?p_codigo2);';
        tCodIni := fraProducto1.xceCodProdSer.Text;
        tCodFin := fraProducto2.xceCodProdSer.Text;
    end;

    if (pgcFamPro.ActivePage = tshFamilia) then begin
        tRep := 'select * from RepCostosFam(?p_FechaIni,?p_FechaFin,?p_Concepto,?p_codigo1,?p_codigo2);';
        tCodIni := fraFamilia1.xceCodFam.Text;
        tCodFin := fraFamilia2.xceCodFam.Text;
    end;

    icuRep.Close;
    icuRep.SQL.Clear;
    icuRep.SQL.Add (tRep);
    icuRep.Prepare;

    icuRep.ParamByName('P_FechaIni').AsDateTime := dteFechaIni.Date;
    icuRep.ParamByName('P_FechaFin').AsDateTime := dteFechaFin.Date;
    icuRep.ParamByName('P_Concepto').AsSmallInt := 3; //Listar Ventas,Pedidos y Backorder
    icuRep.ParamByName('p_Codigo1').AsString := tCodIni;
    icuRep.ParamByName('p_Codigo2').AsString := tCodFin;

    icuRep.Open;

    iRecCount := icuRep.RecordCount;
    iRec := 1;
    Row := miRowIni;
    while not icuRep.Eof do begin
        tKey := icuRep.fieldbyName('CODPRODSER').AsString;
        tKey := Trim(tKey);
        iSR := icuRep.fieldbyName('StatusRota').AsSmallInt;
        tSR := ClsProducto.GetNombreStatusRota(iSR);

        dPrecioMN := icuRep.fieldbyName('PCIOCOMPRA').AsDouble;
        dPrecioDL := icuRep.fieldbyName('PCIOCOMPRADL').AsDouble;

        if tMoneda <> '1' then begin // No es moneda nacional
          fListar := ((dPrecioDL) > 0)
        end else begin
          fListar := ((dPrecioDL) <= 0)
        end;

        if fListar then begin

          F1LP.TextRC[Row,2]    := tKey;
          F1LP.TextRC[Row,3]    := icuRep.fieldbyName('CODFAMILIA').AsString;
          F1LP.TextRC[Row,4]    := icuRep.fieldbyName('DESCRIPPRO').AsString;
          F1LP.NumberRC[Row,9]  := icuRep.fieldbyName('ExisTotal').AsDouble;;
          if tMoneda <> '1' then begin // No es moneda nacional
            F1LP.NumberRC[Row,10] := icuRep.fieldbyName('PCIOCOMPRADL').AsDouble;
          end else begin
            F1LP.NumberRC[Row,10] := icuRep.fieldbyName('PCIOCOMPRA').AsDouble;
          end;
          F1LP.NumberRC[Row,12] := icuRep.fieldbyName('DESCTO1').AsDouble;
          F1LP.NumberRC[Row,13] := icuRep.fieldbyName('DESCTO2').AsDouble;
          F1LP.NumberRC[Row,14] := icuRep.fieldbyName('DESCTO3').AsDouble;
          F1LP.NumberRC[Row,15] := icuRep.fieldbyName('DESCTO4').AsDouble;
          F1LP.NumberRC[Row,16] := icuRep.fieldbyName('DESCTO5').AsDouble;
          F1LP.NumberRC[Row,17] := icuRep.fieldbyName('DESCTO6').AsDouble;
          F1LP.NumberRC[Row,18] := icuRep.fieldbyName('DESCTO7').AsDouble;
          F1LP.NumberRC[Row,22] := icuRep.fieldbyName('Ventas').AsDouble;
          F1LP.NumberRC[Row,21] := icuRep.fieldbyName('Pedidas').AsDouble;
          F1LP.TextRC[Row,24] := tSR;
          dBack := F1LP.NumberRC[Row,21] - F1LP.NumberRC[Row,22];
          if dBack < 0 then dBack := 0;
          F1LP.NumberRC[Row,23] := dBack;

          iRec := iRec+1;
          Row := Row + 1;
        end;

        icuRep.Next;

    end;

    miRowEnd := Row -1;

    if miRowEnd > miRowIni then begin
       Col := 11;
       F1LP.SetSelection (miRowIni,Col,miRowEnd,Col);
       F1LP.EditCopyDown;

    end;

    F1LP.Selection := tSel;
//    F1LP.MaxRow := miRowEnd;

    Screen.Cursor := crDefault;

    icuRep.Close;

// Empezar a checar si se ha modificado el F1...
//    mfLook := True

end;

procedure TfrmCompras.tlbBackOrderClick(Sender: TObject);
begin
    PasarArticulos;
end;

procedure TfrmCompras.F1LPDblClick(Sender: TObject; nRow, nCol: Integer);
begin
    PasarArticulos;

end;

procedure TfrmCompras.F1LPRClick(Sender: TObject; nRow, nCol: Integer);
begin
    PasarArticulos;

end;


procedure TfrmCompras.tbtPasarTodoClick(Sender: TObject);
begin
    PasarTodo;
end;

procedure TfrmCompras.xsbPasarTodoClick(Sender: TObject);
begin
    PasarTodo;
end;


procedure TfrmCompras.PasarArticulos;
var lRow,lNext,iRI,iRF,r,c,iCol:Integer;
    tSel:String;
    iLen:Double;
    tCod,tMoneda:String;
begin

    tMoneda := sm.NthWord(1,cboMOneda.Text);
    tMoneda := sm.Strip (tMoneda);


    F1.Sheet := 1;
// Pasar de la lista "F1LP" a "F1OC"
    tSel := F1LP.Selection;
    lRow := F1LP.Row;
    iLen := length(F1LP.TextRC[lRow,2]);
    if iLen <=0 then begin
        ShowMessage('El renglón actual está vacío!');
        exit;
    end;
    iRI := F1LP.SelStartRow;
    iRF := F1LP.SelEndRow;
    F1LP.SetSelection(iRI,1,iRF,19);
//    F1LP.EditCopy;

//Find the next available row in F1OC
    lRow := sdROWINI_OC;
    iLen := length(F1.TextRC[lRow,3]);
    while iLen > 0 do begin
        lRow := lRow + 1;
        iLen := length(F1.TextRC[lRow,3]);
    end;
    lNext := lRow;

    if lNext > sdMAXROW_OC then begin
        MessageDlg('La Orden de Compra está llena!', mtWarning,
          [mbOk], 0);
    end;

// Poner datos en el detalle de compra
    for r:= 0 to iRF-iRI do begin
        if rbtCaptura.Checked   then iCol := 20;    //Cantidad Capturada
        if rbtPedido.Checked    then iCol := 21;    //Cantidad Pedida
        if rbtFacturado.Checked then iCol := 22; //Cantidad Facturada
        if rbtBackOrder.Checked then iCol := 23;  //Cantidad BackOrder / Existencia
//        if xsbExistencias.Down then iCol := 9;

        F1.NumberRC[lNext + r,2] := F1LP.NumberRC[iRI+r,iCol]; //Cantidad a pedir

        tCod := F1LP.TextRC[iRI+r,2]; //Codigo del Producto
        F1.TextRC[lNext + r,1] := tCod; //Codigo del Producto
        GetProducto(tCod,0);

        F1.TextRC[lNext + r,3] := F1LP.TextRC[iRI+r,4]; //Descripcion
//        F1.NumberRC[lNext + r,4] := F1LP.NumberRC[iRI+r,11]; // Precio Neto (Menos desctos)
        F1.NumberRC[lNext + r,4] := F1LP.NumberRC[iRI+r,10]; // Precio Lista
        for c:= 12 to 18 do begin
            F1.NumberRC[lNext + r,c+11] := F1LP.NumberRC[iRI+r,c];  // Los 7 Desctos
        end;

        F1.Row := F1.Row + 1;
    end;

    F1LP.FontBold := True;
    F1LP.Selection := tSel;

end;

procedure TfrmCompras.PasarTodo;
var lRow,lNext,iRI,iRF,r,c,iRow,iCol:Integer;
    tSel,tCod:String;
    iLen,dCantidad:Double;
begin

    F1.Sheet := 1;

// Pasar de la lista "F1LP" a "F1OC"
    tSel := F1LP.Selection;
    lRow := F1LP.Row;

    iRI := 7;
    iRF := 1500;
//    F1LP.SetSelection(iRI,1,iRF,19);
//    F1LP.EditCopy;

//Find the next available row in F1OC
    lRow := sdROWINI_OC;
    iLen := length(F1.TextSRC[1,lRow,3]);
    while iLen > 0 do begin
        lRow := lRow + 1;
        iLen := length(F1.TextSRC[1,lRow,3]);
    end;
    lNext := lRow;

    if lNext > 200 then begin
        MessageDlg('La Orden de Compra está llena!', mtWarning,
          [mbOk], 0);
    end;

// Put the data in the OC
    r := 0;
    for iRow:= 0 to iRF-iRI do begin
        if rbtCaptura.Checked   then iCol := 20;    //Cantidad Capturada
        if rbtPedido.Checked    then iCol := 21;    //Cantidad Pedida
        if rbtFacturado.Checked then iCol := 22; //Cantidad Facturada
        if rbtBackOrder.Checked then iCol := 23;  //Cantidad BackOrder / Existencia
//        if xsbExistencias.Down then iCol := 9;

        tCod := Trim(F1LP.TextRC[iRI+iRow,2]); //Codigo del Producto

        if length(tCod) <= 0 then break;

        dCantidad := F1LP.NumberRC[iRI+iRow,iCol];

        if dCantidad > 0 then begin
            F1.NumberSRC[1,lNext + r,2] := F1LP.NumberRC[iRI+iRow,iCol];

            F1.TextSRC[1,lNext + r,1] := F1LP.TextRC[iRI+iRow,2]; //Codigo del Producto
            F1.TextSRC[1,lNext + r,3] := F1LP.TextRC[iRI+iRow,4]; //Descripcion
            F1.NumberSRC[1,lNext + r,4] := F1LP.NumberRC[iRI+iRow,10]; // Precio Lista
            for c:= 12 to 18 do begin
                F1.NumberSRC[1,lNext + r,c+11] := F1LP.NumberRC[iRI+iRow,c];  // Los 7 Desctos
            end;
            r := r + 1;
        end;
    end;

    F1LP.FontBold := True;
    F1LP.Selection := tSel;

end;

procedure TfrmCompras.HideEmptyRows;
var iRow,iSheet:Integer;
    tTxt:String;
    fHide:Boolean;
begin
    iSheet := F1.Sheet;
    if iSheet <> 2 then exit;  //Esconde solo si la hoja de impresion esta activada
    F1.Sheet := 2;
    for iRow := 17 to 217 do begin
        tTxt := Trim(F1.TextSRC[2,iRow,4]);
        fHide := (length(tTxt) <= 1);

        F1.RowHidden[iRow] := fHide;
    end;
    F1.Sheet := iSheet;
end;

procedure TfrmCompras.ShowEmptyRows;
var iRow,iSheet:Integer;
    tTxt:String;
    fHide:Boolean;
begin
    iSheet := F1.Sheet;
    F1.Sheet := 2;
    for iRow := 17 to 217 do begin
        F1.RowHidden[iRow] := False;
    end;
    F1.Sheet := iSheet;
end;

procedure TfrmCompras.tbtPreverClick(Sender: TObject);
begin
    if pgcListados.ActivePageIndex = 0 then begin //Orden de Compra
        F1.Sheet := 2;
        HideEmptyRows;
        F1.FilePrintPreview;
    end else begin //Listado de Productos
        F1LP.FilePrintPreview;
    end;
end;

procedure TfrmCompras.xsbEsconderClick(Sender: TObject);
var iColIni,iColFin:Integer;
    v:Variant;
begin
    v := xseColIni.Value;
    iColIni := v;
    v := xseColFin.Value;
    iColFin := v;

    EsconderColumnas(iColIni,iColFin)

end;

procedure TfrmCompras.xsbMostrarClick(Sender: TObject);
var iColIni,iColFin:Integer;
    v:Variant;
begin
    v := xseColIni.Value;
    iColIni := v;
    v := xseColFin.Value;
    iColFin := v;

    MostrarColumnas(iColIni,iColFin)


end;

procedure TfrmCompras.cboMonedaClick(Sender: TObject);
begin
    GetTipoCambio;
    oParam.CODPAR := 'IVA';
    mdIVA := oParam.VALORNUM;
    if oDoc.MONEDADOCT <> '1' then begin
        mdIVA := 0
    end;
//    LimpiarDetalle;
end;

procedure TfrmCompras.GetTipoCambio;
begin

    oMon.MONEDA := Trim(sm.NthWord (1,cboMoneda.Text));
    if oMon.Moneda = '1' then begin
      xcrTipoCambio.Value := 1;
    end else begin
      oMon.Fecha := xdeFecha.Date;
      xcrTipoCambio.Value := DM1.GetTipoCambio2;
      if (xcrTipoCambio.Value) <= 0 then xcrTipoCambio.Value := 1;
    end;
    oDoc.MONEDADOCT := oMon.MONEDA;
    edtMoneda.Text := sm.NthWord (2,cboMoneda.Text,['|']);

end;



procedure TfrmCompras.edtMonedaChange(Sender: TObject);
begin
        F1.TextSRC[2,5,17] := edtMoneda.Text;
end;

procedure TfrmCompras.tshCriteriosShow(Sender: TObject);
begin
  pgcListados.ActivePageIndex := 1; //Listado Prods
end;

procedure TfrmCompras.tshClienteShow(Sender: TObject);
begin
  pgcListados.ActivePageIndex := 0; //Orden de Compra

end;

procedure TfrmCompras.tshDatosProdShow(Sender: TObject);
begin
  pgcListados.ActivePageIndex := 0; //Orden de Compra

end;

procedure TfrmCompras.tshOpcionesShow(Sender: TObject);
begin
  pgcListados.ActivePageIndex := 1; //Listado Prods

end;

procedure TfrmCompras.tshAdicionalesShow(Sender: TObject);
begin
  pgcListados.ActivePageIndex := 0; //Orden de Compra

end;

procedure TfrmCompras.tbtHelpClick(Sender: TObject);
begin
    ShowHelp('frmCompras01');
end;

procedure TfrmCompras.tbtSelOCompraClick(Sender: TObject);
begin
    SelectDocsF1;
end;

procedure TfrmCompras.SavePedimento;
var v:Variant;
begin
    FormStorage1.WriteString ('xcePedimento_Text',xcePedimento.Text);
    FormStorage1.WriteString ('xceAduana_Text',xceAduana.Text);
    FormStorage1.WriteString ('xdeFecha_Text',xdeFechaEnt.Text);
end;


end.
