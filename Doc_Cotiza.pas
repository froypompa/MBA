unit Doc_Cotiza;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, {Grids, RXGrids,} ToolWin, Menus, ImgList, StdCtrls, {Mask,}
  RxToolEdit, ExtCtrls, RXSplit, TBXStatusBars, ActnList, DBCtrls, Db,
  DBGrids, DBTables, RxPlacemnt, StrMan, IniFiles, FormulaOneLib,
  IB_UpdateBar, IB_NavigationBar, IB_Controls, IB_Components, IB_Grid,
  IB_TransactionBar, Buttons, RXCtrls, Grids, Mask, ESBDates,
  AxCtrls, OleCtrls, VCIF1Lib_TLB, RxCurrEdit, TB2Dock, TB2Toolbar, TB2ExtItems, TBXExtItems, TBX,
  IB_StoredProc, RAWPrinter, LibApp, StringLib, NumWords,
  Constants_App, HHelp,
  ClsParam,
  ClsDoc,
  ClsCliente,
  ClsProducto,
  ClsFamilia,
  ClsAgente,
  ClsTablas, ClsMailer,
  ClsMoneda, RXSpin, TB2Item, RzEdit, RzButton, RzPanel, ExtDlgs, RzLabel,
  RzTabs, RzSplit, RzCmboBx, RzLstBox, RzRadChk;

type
  TfrmDocsCotiza = class(TForm)
    ImageList1: TImageList;
    dfsStatusBar1: TTBXStatusBar;
    ActionList1: TActionList;
    Nuevo: TAction;
    ToolBar: TAction;
    LetreroBtn: TAction;
    Listado: TAction;
    Eliminar: TAction;
    Salir: TAction;
    FormStorage1: TFormStorage;
    axnBuscar: TAction;
    axnFiltrar: TAction;
    Dock971: TTBXDock;
    Raw1: TRAWPrinter;
    tlbMain: TTBXToolbar;
    tbtSalir: TTBXItem;
    ToolbarSep971: TTBXSeparatorItem;
    tbtImprimir: TTBXItem;
    tbtGrabar: TTBXItem;
    tbtCreate: TTBXItem;
    ToolbarSep973: TTBXSeparatorItem;
    tbtVer: TTBXItem;
    Timer1: TTimer;
    Timer2: TTimer;
    tbtSaldos: TTBXItem;
    tbtPedimentos: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    Otf: TOpenTextFileDialog;
    TBXSeparatorItem2: TTBXSeparatorItem;
    tbtDocsF1: TTBXSubmenuItem;
    tbtRem1: TTBXItem;
    tbtPed1: TTBXItem;
    tbtCot1: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    tbtRem2: TTBXItem;
    tbtPed2: TTBXItem;
    tbtCot2: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    tbtRem3: TTBXItem;
    tbtPed3: TTBXItem;
    tbtCot3: TTBXItem;
    tbtFormato: TTBXSubmenuItem;
    tbtFijarLP: TTBXItem;
    tbtLiberarLP: TTBXItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    tbtCancelar1: TTBXSubmenuItem;
    tbtCancelarPartida: TTBXItem;
    tbtCancelar: TTBXItem;
    pgcCotiza: TRzPageControl;
    tshConsultas: TRzTabSheet;
    tshCotiza: TRzTabSheet;
    pnlMain: TPanel;
    pnlFecha: TPanel;
    xlbNombreDocto: TRxLabel;
    Label7: TLabel;
    pnlFolio: TPanel;
    lblFolio: TLabel;
    xceFolio: TComboEdit;
    xdeFecha: TDateEdit;
    pnlDetalle: TPanel;
    pgcMain: TPageControl;
    tshCaptura: TTabSheet;
    F1: TF1Book;
    tshImpresion: TTabSheet;
    F11: TF1Book;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    tbtHidePrecios: TTBXItem;
    TBXSeparatorItem8: TTBXSeparatorItem;
    tbtShowPrecios: TTBXItem;
    TBXSeparatorItem9: TTBXSeparatorItem;
    tbtPrint2: TTBXItem;
    TabSheet1: TTabSheet;
    F12: TF1Book;
    tshLP: TTabSheet;
    F13: TF1Book;
    TabSheet5: TTabSheet;
    F3: TF1Book;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    xsbListar: TRxSpeedButton;
    xsbBuscar: TRxSpeedButton;
    Label28: TLabel;
    cboCodigo: TComboBox;
    cboAlmacenes1: TComboBox;
    pnlTotales: TPanel;
    Bevel1: TBevel;
    pgcCliente: TPageControl;
    tshCliente: TTabSheet;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    lblPlazo: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lblPedido: TLabel;
    lblFecVence: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    xceNombreAgente: TComboEdit;
    xceNombreCte: TComboEdit;
    xceNombreTransp: TComboEdit;
    edtPlazo: TEdit;
    xceCodCteProv: TComboEdit;
    xceNumAgente: TComboEdit;
    xceViaTrans: TComboEdit;
    xcePedido: TComboEdit;
    xdeFecVenceDo: TDateEdit;
    cboPrecio: TComboBox;
    chkDescto: TCheckBox;
    xceOC: TComboEdit;
    tshAdicionales: TTabSheet;
    Label5: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Memo1: TMemo;
    edtCuentaBanco: TRzEdit;
    edtMetodoPago: TRzEdit;
    edtReferencia: TRzEdit;
    edtNumProveedor: TRzEdit;
    edtComprador: TRzEdit;
    tshFoto: TTabSheet;
    Panel1: TPanel;
    xsbAmpliar: TRxSpeedButton;
    xlbDescri: TRxLabel;
    lblPedimento: TLabel;
    xsbPedimento: TRxSpeedButton;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    xcrExisTotal: TCurrencyEdit;
    xcrDescRota: TCurrencyEdit;
    xcePedimento: TComboEdit;
    Panel2: TPanel;
    imgFoto: TImage;
    TabSheet2: TTabSheet;
    F2: TF1Book;
    TabSheet3: TTabSheet;
    Label16: TLabel;
    Label17: TLabel;
    speColIni: TRxSpinEdit;
    mmoLeyendas: TMemo;
    TabSheet4: TTabSheet;
    mmzFac: TRzMemo;
    RzPanel1: TRzPanel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    edzSerie: TRzEdit;
    edzFolio: TRzEdit;
    edzFecha: TRzEdit;
    edzTotal: TRzEdit;
    edzemRFC: TRzEdit;
    edzreRFC: TRzEdit;
    edzUUID: TRzEdit;
    pnlBottom: TRzPanel;
    RzSplitter1: TRzSplitter;
    pnlTop: TRzPanel;
    pnlMedio: TRzPanel;
    pnlTopLeft: TRzPanel;
    RzPanel3: TRzPanel;
    lstClientes: TRzListBox;
    lblClientes: TRzLabel;
    RzLabel9: TRzLabel;
    cboCodigoCte: TRzComboBox;
    btnListarCtes: TRzBitBtn;
    lblCliente2: TRzLabel;
    RzPanel4: TRzPanel;
    RzPanel5: TRzPanel;
    pgcListados: TRzPageControl;
    TabSheet6: TRzTabSheet;
    TabSheet7: TRzTabSheet;
    F31: TF1Book;
    F32: TF1Book;
    RzLabel11: TRzLabel;
    cboCodigo2: TRzComboBox;
    chkListarLP: TRzCheckBox;
    btnListarArticulos: TRzBitBtn;
    btnPasarCoti: TRzBitBtn;
    btnBuscar: TRzBitBtn;
    btnSeleccionar: TRzBitBtn;
    btnChecaExistencias: TRzBitBtn;
    lblAlm0: TRzLabel;
    lblAlm1: TRzLabel;
    lblAlmT: TRzLabel;
    enzAlm0: TRzNumericEdit;
    enzAlm1: TRzNumericEdit;
    enzAlmT: TRzNumericEdit;
    F21: TF1Book;
    lblAlm2: TRzLabel;
    enzAlm2: TRzNumericEdit;
    lblAlm3: TRzLabel;
    enzAlm3: TRzNumericEdit;
    lblArticulo: TRzLabel;
    TBXSeparatorItem3: TTBXSeparatorItem;
    tbtAyuda: TTBXItem;
    GroupBox2: TGroupBox;
    zlbAlmacen: TRzLabel;
    zlbTodosAlm: TRzLabel;
    xcrExisTotal2: TCurrencyEdit;
    xcrExisAlmacen: TCurrencyEdit;
    RzGroupBox1: TRzGroupBox;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    xcrDescto: TCurrencyEdit;
    xcrSubTotal: TCurrencyEdit;
    xcrIVARet: TCurrencyEdit;
    xcrIVA: TCurrencyEdit;
    xcrTotal: TCurrencyEdit;
    xcrIEPS: TCurrencyEdit;
    Label1: TLabel;
    cboNumAlmac: TComboBox;
    Label6: TLabel;
    cboMoneda: TComboBox;
    xlbCancelado: TRzLabel;
    xcrTipoCambio: TCurrencyEdit;
    Label12: TLabel;
    Label15: TLabel;
    xcrPIva: TCurrencyEdit;
    edtDec: TEdit;
    Label27: TLabel;
    btnAplicarDec: TRxSpeedButton;
    Label19: TLabel;
    mmoEntregar: TMemo;
    Label20: TLabel;
    lblMoneda2: TRzLabel;
    TBXDock2: TTBXDock;
    TBXToolbar2: TTBXToolbar;
    tbtPropiedades: TTBXItem;
    TBXSeparatorItem11: TTBXSeparatorItem;
    tbtChecarPartidas: TTBXItem;
    tbtCalculaDescto: TTBXItem;
    tbtLimpiarDet: TTBXItem;
    xceObservaciones: TRzMemo;
    lblLinCol: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Select(ptTabla:String;piOpcion: Integer;ptKey:String);
    procedure SetUp;
    procedure SetUpF1;
    procedure SelectDocs;
    procedure SelectDocsF1(ATipo_Docto:String);
    procedure SelectCliente(piOpcion: Integer;ptKey:String);
    procedure SelectAgente(piOpcion: Integer;ptKey:String);
    procedure SelectTransp(piOpcion: Integer;ptKey:String);
    procedure SelectProducto(piOpcion: Integer;ptKey:String);
    procedure xceCodCteProvButtonClick(Sender: TObject);
    procedure xceNombreCteButtonClick(Sender: TObject);
    procedure xceNumAgenteButtonClick(Sender: TObject);
    procedure xceNombreAgenteButtonClick(Sender: TObject);
    procedure xceViaTransButtonClick(Sender: TObject);
    procedure xceNombreTranspButtonClick(Sender: TObject);
    procedure F1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure F12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure F1EndRecalc(Sender: TObject);
    procedure xceFolioChange(Sender: TObject);
    procedure LimpiarDetalle;
    procedure tbtImprimirClick(Sender: TObject);
    procedure ImprimirDoc;
    procedure ImprimirPedido;
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
    procedure VaciarPedido;
    procedure VaciarPedidoF1;
    procedure GetProducto(ptCod:String);
    procedure tbtSalirClick(Sender: TObject);
    procedure xceCodCteProvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure xceNumAgenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure xceViaTransKeyDown(Sender: TObject; var Key: Word;
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
    procedure F11StartEdit(Sender: TObject; var EditString: WideString;
      var Cancel: Smallint);
    procedure tbtCancelarOldClick(Sender: TObject);
    function GetNextRow:Integer;
    procedure xsbCalcularMEClick(Sender: TObject);
    procedure VerFoto;
    procedure VerExistencia;
    procedure VerPedimento;
    procedure F1SelChange(Sender: TObject);
    procedure MoverCursor(Key: Word;piTimes:Integer);
    procedure Timer2Timer(Sender: TObject);
    procedure xsbAmpliarClick(Sender: TObject);
    procedure BuscaCliente;
    procedure BuscaAgente;
    procedure BuscaViaTransporte;
    procedure SelectSaldos;
    procedure tbtSaldosClick(Sender: TObject);
    procedure ListarProductos;
    function VerificaFactura:Boolean;
    procedure tbtPedidosF1Click(Sender: TObject);
    procedure cboMonedaClick(Sender: TObject);
    procedure GetTipoCambio;
    function HayDescuento:Boolean;
    procedure PonerFormulas;
    procedure CalculaTotales;
    procedure InsertRowsDetalle;
    procedure SelectPedimentos;
    procedure tbtPedimentosClick(Sender: TObject);
    procedure xsbPedimentoClick(Sender: TObject);
    procedure PonLimite;
    procedure LeerDesctos;
    procedure LeerDesctos2;
    procedure GetPrecioConDescuento(ptFam:String;
                                    pdPrecioLista:Double;
                                var pdPrecioFinal:Double;
                                var pdDescuento:Double);
    procedure LlenaFactura;
    procedure LlenaFactura2;
    procedure BuildCodigo;
    procedure F12EndEdit(Sender: TObject; var EditString: WideString;
      var Cancel: Smallint);
    procedure F12SelChange(Sender: TObject);
    procedure F12DblClick(Sender: TObject; nRow, nCol: Integer);
    procedure F11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function ValidarDoc:Integer;
    procedure ChecarCredito(var AContinuar:Boolean);
    procedure GetRC(AVar:String;
                    var Ren,Col:Integer);
    procedure RefreshF1;
    procedure tbtLigarClick(Sender: TObject);
    procedure btnInsertarClick(Sender: TObject);
    procedure F13DblClick(ASender: TObject; nRow, nCol: Integer);
    procedure SelectLP;
    procedure F13KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure xcrExisTotalChange(Sender: TObject);
    procedure SeleccionaAlmacen(AIdSucursal:Integer);
    procedure LlenaFactura3;
    procedure LeerXLS;
    procedure GrabarXLS;
    function GetFileName:String;
    procedure tbtCot1Click(Sender: TObject);
    procedure tbtPed1Click(Sender: TObject);
    procedure tbtRem1Click(Sender: TObject);
    procedure tbtCot2Click(Sender: TObject);
    procedure tbtCot3Click(Sender: TObject);
    procedure tbtPed2Click(Sender: TObject);
    procedure tbtPed3Click(Sender: TObject);
    procedure tbtRem2Click(Sender: TObject);
    procedure tbtRem3Click(Sender: TObject);
    procedure tbtVerClick(Sender: TObject);
    procedure tbtFijarLPClick(Sender: TObject);
    procedure tbtLiberarLPClick(Sender: TObject);
    procedure PasarProductosDoc;
    procedure BuscarProductos;
    procedure PasarProductosDoc2;
    procedure BuscarProductos2;
    function GetNextRowDoc:Integer;
    procedure axnLimpiarListado;
    procedure xsbListarClick(Sender: TObject);
    procedure F3DblClick(ASender: TObject; nRow, nCol: Integer);
    procedure cboCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure xsbBuscarClick(Sender: TObject);
    procedure btnInsertRowClick(Sender: TObject);
    procedure btnDeleteRowClick(Sender: TObject);
    procedure pgcMainChange(Sender: TObject);
    procedure LoadF11;
    procedure cboNumAlmacChange(Sender: TObject);
    procedure btnAplicarDecClick(Sender: TObject);
    procedure tbtHidePreciosClick(Sender: TObject);
    procedure tbtShowPreciosClick(Sender: TObject);
    procedure tbtCancelarPartidaClick(Sender: TObject);
    procedure SetFont(ARow:Integer;ATipo:String);
    procedure ListarClientes;
    procedure btnListarCtesClick(Sender: TObject);
    procedure cboCodigoCteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lstClientesDblClick(Sender: TObject);
    procedure SelectClienteList;
    procedure btnListarArticulosClick(Sender: TObject);
    procedure cboCodigo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPasarCotiClick(Sender: TObject);
    procedure ApplyPattern(ANameFmt:String;piR1,piC1,piR2,piC2:Integer);
    procedure Seleccionar;
    function GetNextRowSel:Integer;
    procedure btnSeleccionarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure F32KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pgcListadosPageChange(Sender: TObject);
    procedure F31EndEdit(ASender: TObject; var EditString: WideString;
      var Cancel: Smallint);
    function GetDescuentoCliente(AFam:String):Double;
    procedure btnChecaExistenciasClick(Sender: TObject);
    procedure ChecaExistencias;
    procedure F31DblClick(ASender: TObject; nRow, nCol: Integer);
    procedure tbtAyudaClick(Sender: TObject);
    procedure ClearDesctos;
    procedure ClearDesctos2;
    procedure CalculaDescto;
    procedure tbtCalculaDesctoClick(Sender: TObject);
    procedure tbtLimpiarDetClick(Sender: TObject);
    procedure xceObservacionesLineColChange(Sender: TObject; Line,
      Column: Integer);

  private
    { Private declarations }
    oCte:TCliente;
    oDoc:TDoc;
    oProd:TProducto;
    oFam:TFamilia;
    oAge:TAgente;
    oTabla:TTabla;
    oMon:TMoneda;
    oMailer: TMailer;
    Pedimento: TPedimento;
    FTipo_Docto:Integer;
  public
    { Public declarations }
    property Tipo_Docto:Integer read FTipo_Docto write FTipo_Docto;
  end;
Type
  TDefs = Record
    HeaderRows   : Integer;
    DetCount     : Integer;
    DetMinCount  : Integer;
    Row          : Integer;
    DetLastRow   : Integer;
    FooterRows   : Integer;
  end;

type
  OLE_COLOR = DWORD;

const
    TABLA_CD  : String = '7';
    TABLA_EDO : String = '4';
    TABLA_PAIS : String = '16';
    TABLA_AGE : String = '12';
    TABLA_TRA : String = '10';

var
  frmDocsCotiza: TfrmDocsCotiza;
  mrRes:Integer;
  TipoTabla:String;
  miRow:Integer;
  miLista:Integer;
  edEstado:TDocState;
  mtPath:String;
  mtFoto:String;
  mdIVA:Double;
  mtLugarExp:String;
  miErrorFactura:Integer;
  miMoneda:Integer;
  ColSet: set of 1..200;
  fHuboFacturas: Boolean;
  miRenFac, //Total rens factura
  miRenLimite:integer;  // Ren limite actual (cambia en cada captura de articulo)
//  Tipo_Docto:Integer;
  mdValidar: Double;
  mdValorMaxFac: Double;
  vr:Integer;
  mfLoading:Boolean;
  mtZona: String;
  miType,miType11:Smallint;
  miVeces: Integer = 0;
  aF11: TDefs;

implementation

uses Main, DM_MBA, MsgError, SelCodDes, ClsPrintTxt, SelDoc, SelTabla, VerImagen,
     Saldos, SelDocF1, SelPedimentos,CalculaDescto, FacElecBase;

{$R *.DFM}


procedure TfrmDocsCotiza.FormCreate(Sender: TObject);
var tFile:String;
begin
//
    mfLoading := True;
    fHuboFacturas := False;
    oCte := TCliente.Create;
    oDoc    := TDoc.Create;
    oProd   := TProducto.Create;
    oFam    := TFamilia.Create;
    oAge    := TAgente.Create;
    oTabla  := TTabla.Create;
    oMon    := TMoneda.Create;
    oMailer := TMailer.Create;
    mtPath := oIni.ReadString ('Directorios','Graficos','c:\@Mba\Ico\');

    frmFE:= TfrmFE.Create(Application);

end;

procedure TfrmDocsCotiza.Timer1Timer(Sender: TObject);
begin
    Timer1.Enabled := False;
    mfLoading := True;
    SetUp;
//    SetUpF1;
    mfLoading := False;
end;


procedure TfrmDocsCotiza.FormClose(Sender: TObject; var Action: TCloseAction);
begin

// Acumular las ventas al salir de facturar... con la fecha que tiene la PC
{    if fHuboFacturas then
        DM1.CierreMes;
}
//--------------------------------------------
    oCte.Free;
    oDoc.Free;
    oProd.Free;
    oFam.Free;
    oAge.Free;
    oTabla.Free;
    oMon.Free;
    oMailer.Free;

    FreeAndNil(frmFE);

    frmDocsCotiza := nil;
    Action := caFree;
end;

procedure TfrmDocsCotiza.SalirExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmDocsCotiza.FormShow(Sender: TObject);
begin
  Top :=0;
  Left :=0;
end;

procedure TfrmDocsCotiza.SetUp;
var
  ix:integer;
  tCod:String;
begin
    miRenFac := 120; // A la factura le caben 120 renglones
//    F1.MaxRow := miRenFac;

    oParam.CODPAR := 'IVA';
//    mdIVA := oParam.VALORNUM;
    xcrPIVA.Value := oParam.VALORNUM;
    oParam.CODPAR := 'LUGAREXP';
    mtLugarExp := oParam.VALORTXT;

    oParam.CODPAR := 'CXC';
    mdValidar := oParam.VALORNUM;

    oParam.CODPAR := 'VALORMAXFAC';
    mdValorMaxFac := oParam.VALORNUM;

    pgcCliente.ActivePageIndex := 0;

    case Tipo_Docto of
      30,302,303:
        begin
          xlbNombreDocto.Caption := '** COTIZACIONES: ' + oEmp.NombreSuc + '  **';
          xlbNombreDocto.Color   := clGreen;
          lblPedido.Visible := False;
          xcePedido.Visible := False;
//        edtPlazo.Visible := False;
//        lblPlazo.Visible := False;
          lblFecVence.Visible := False;
          xdeFecVenceDo.Visible := False;
          tbtPedimentos.Visible := False;
          lblfolio.Caption := 'Folio ('+sm.StrFloat(Tipo_Docto,'#') + ')';

        end;

    end;

    case Tipo_Docto of
      232,302,282: xlbNombreDocto.Color   := clFuchsia;
      233,303,283: xlbNombreDocto.Color   := clAqua;
    end;

    oMon.FillMoneda (cboMoneda);
    cboMoneda.Items.Add('0  |Ambas Monedas MXN y USD (MIX)');
    oMon.Fecha := xdeFecha.Date;

    oMon.MONEDA := '2';
    xcrTipoCambio.Value := oMon.GetTipoCambio; // Lo uso en GetProducto...

    oMon.MONEDA := Trim(sm.NthWord (1,cboMoneda.Text));
    oDoc.MONEDADOCT := oMon.MONEDA;

// Llenar combos

    DM1.FillAlmacen (cboNumAlmac);
    if cboNumAlmac.Items.Count > 0 then
        cboNumAlmac.ItemIndex := 0;
    ix := StringLib.ComboSeekText(cboNumAlmac.Items,sm.StrFloat(oEmp.Sucursal,'#'));

    cboNumalmac.ItemIndex := ix;
    zlbAlmacen.Caption := cboNumAlmac.Text;

//    DM1.FillAlmacen (cboAlmacenes1);
{    tCod := sm.Pad ('0',3);
    cboAlmacenes1.Items.Add (tCod + '|Todos los Almacenes');
    cboAlmacenes1.ItemIndex := 0;
}

// Almacen en las consultas. de donde se van a checar las existencias
{    cboAlmacenEx.Items := cboNumAlmac.Items;
    cboAlmacenEx.ItemIndex := ix;
}
    //Poner en el producto con cual almacen estamos manejando para sacar la existencia de ese almacen
    oProd.NUMALMAC   := Trim(sm.NthWord (1,cboNumAlmac.Text,['|']));

    xdeFecha.Date := Date;
    Crear;


end;

procedure TfrmDocsCotiza.SetUpF1;
var i,iMaxRows:Integer;
    tSel,tRow:String;
    tFile,tDir:String;
    iType:smallint;
    Enca:TStringList;
begin

  F1.AutoRecalc := False;
  F1.DoEndRecalc := False;
//-----------------------------------------------------
    aF11.HeaderRows := 12;
    aF11.DetCount   := 28; //28
    aF11.DetMinCount:= 28; //28
    aF11.DetLastRow := 0; // se modifica en LLenaFactura3
    aF11.FooterRows := 6;


  tSel := F1.Selection;
  F1.ShowSelections := F1Off;
  for i := 1 to ctMaxColumn do begin
    F1.SetSelection (1,i,F1.MaxRow,i);
    F1.ColText[i] := ColFac[i].Header;
    F1.SetColWidth (i,i,ColFac[i].Width,False);
    F1.NumberFormat := ColFac[i].Format;
    F1.ColHidden[i] := ColFac[i].Hidden;
  end;
  F1.ShowSelections := F1Auto;

//Configurar F1
    F1.AllowDelete := False;
    F1.ShowEditBar :=True;
    F1.ShowZeroValues := False;
    F1.EnterMovesDown := False;
    F1.ShowTabs := 1;
    F1.ViewScale := 80;
    F1.MaxCol := ctMaxColumn;
    tSel := F1.Selection;

//Poner las formulas de la Hoja
  LimpiarDetalle;
  F1.AutoRecalc := True;
  F1.DoEndRecalc := True;
  F1.Recalc;

  LoadF11;

//Cargar Hoja de selección de productos
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'FMT_FACCAP.xls';
    tFile := tDir+'\'+tFile;
    F12.Read (tFile,iType);
    F12.Sheet := 1;
    for i := 1 to 8 do begin
      F12.Sheet := i;
      F12.FixedRows := 3;
      F12.FixedCols := 2;
      F12.EnterMovesDown := False;
    end;
    F12.Sheet := 1;
    F12.AllowDelete := False;
    F12.ShowEditBar :=True;

//Cargar Hoja de Lista de Precios
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'Fmt_Cap2012.xls';
    tFile := tDir+tFile;
    F13.Read (tFile,iType);
    F13.Sheet := 1;
    F13.Sheet := 1;
    F13.AllowDelete := False;
    F13.ShowEditBar :=True;

//Cargar Hoja de Descuetos
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'FMT_DESCTOSCTE.xls';
    tFile := tDir+'\'+tFile;
    F2.Read (tFile,iType);
    F2.Sheet := 1;
    F2.MaxCol := 8;
    F2.MaxRow := 100;
    F2.TopRow := 7;
    F2.ViewScale := 80;
    F2.Selection := 'B7';

// Configurar Hoja F21... Descuentos clientes
    F21.Read (tFile,iType);
    F21.Sheet := 1;
    F21.MaxCol := 8;
    F21.MaxRow := 100;
    F21.TopRow := 7;
    F21.ViewScale := 80;
    F21.Selection := 'B7';

// Configurar Hoja F3....
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'Fmt_Busqueda22.xls';
    tFile := tDir+'\'+tFile;

    if not FileExists(tFile) then begin
        tFile := 'Rep_Vacio.xls';
        tFile := tDir+tFile;
    end;


    F3.Read (tFile,miType);


//    miHojaConfig := GetHojaConfig;

// Setup hoja de listado de articulos en consultas
    F31.Read (tFile,miType);
    F31.ShowTabs := F1TabsBottom;
    F31.Sheet :=1;
    F31.EnterMovesDown := False;
    F31.AllowDelete := False;
    F31.AllowTabs := False;
    F31.ShowEditBar := true;

    F31.ColText[1]:= '*';
    F31.ColText[2]:= 'Codigo';
    F31.ColText[3]:= 'Fam.';
    F31.ColText[4]:= 'Descripcion';
    F31.ColText[5]:= 'Cant.';
    F31.ColText[6]:= 'P.Lista';
    F31.ColText[7]:= 'Descto.';
    F31.ColText[8]:= 'P.Neto';
    F31.ColText[9]:= 'P.Total';
    F31.ColText[11]:= 'Ex. Total';


// Setup hoja de listado de articulos seeccionados en consultas
    F32.Read (tFile,miType);
    F32.ShowTabs := F1TabsBottom;
    F32.Sheet :=1;
    F32.EnterMovesDown := False;
    F32.AllowDelete := False;
    F32.AllowTabs := False;
    F32.ShowEditBar := true;

    F32.ColText[1]:= '*';
    F32.ColText[2]:= 'Codigo';
    F32.ColText[3]:= 'Fam.';
    F32.ColText[4]:= 'Descripcion';
    F32.ColText[5]:= 'Cant.';
    F32.ColText[6]:= 'P.Lista';
    F32.ColText[7]:= 'Descto.';
    F32.ColText[8]:= 'P.Neto';
    F32.ColText[9]:= 'P.Total';
    F32.ColText[11]:= 'Ex. Total';

end;

procedure TfrmDocsCotiza.LoadF11;
var
  tFile,tDir:String;
  iType:smallint;
begin
//Cargar Hoja de Impresión  XLS
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));

    case Tipo_Docto of
      1: tFile := 'FMT_FACIMPRE.xls';
      107: tFile := 'FMT_FEIMPRE.xls';
      30,302,303: tFile := oINi.ReadString ('Archivos','Cotizacion','Fmt_CotizaMty.xls');
      23,232,233: tFile := oINi.ReadString ('Archivos','Pedido','Fmt_PedidoMty.xls');
      28,282,283: tFile := oINi.ReadString ('Archivos','Remision','Fmt_RemisionMty.xls');
    end;

    tFile := tDir+tFile;
    F11.Read (tFile,miType11);
    F11.Sheet := 1;
    F11.TopRow := 7;
    F11.LeftCol := 1;
    F11.AllowDelete := False;
    F11.ShowEditBar :=True;

end;
procedure TfrmDocsCotiza.lstClientesDblClick(Sender: TObject);
begin
  SelectClienteList;
end;

{---------------------------------------------------------------
Eventos de la barra herramientas
---------------------------------------------------------------}
procedure TfrmDocsCotiza.tbtCreateClick(Sender: TObject);
begin
    Crear;
end;

procedure TfrmDocsCotiza.tbtFijarLPClick(Sender: TObject);
begin
      F13.FixedRows := F13.Row - 1;;
      F13.FixedCols := F13.Col - 1;;

end;

procedure TfrmDocsCotiza.tbtLiberarLPClick(Sender: TObject);
begin
        F13.FixedRows := 0;
        F13.FixedCols := 0;
end;

procedure TfrmDocsCotiza.tbtGrabarClick(Sender: TObject);
var fOk:Boolean;
begin

    frmMsg.ClearAll;
    fOk := VerificaFactura;

    if not fOk then begin
        frmMsg.ShowModal;
        exit;
    end;

    Grabar;
    UpdateControls;
//    Crear;   //Inicio nuevo docto
end;

procedure TfrmDocsCotiza.tbtHidePreciosClick(Sender: TObject);
var
  tSel:String;
begin
  tSel := F11.Selection;
  F11.SetSelection(13,7,43,10);
  F11.NumberFormat := '"*"';
  F11.Selection := tSel;

end;

procedure TfrmDocsCotiza.tbtShowPreciosClick(Sender: TObject);
var
  tSel:String;
begin
  tSel := F11.Selection;
  F11.SetSelection(13,7,43,10);
  F11.NumberFormat := '#,##0.00';
  F11.SetSelection(13,8,43,8);
  F11.NumberFormat := '#,##0.00"%"';
  F11.Selection := tSel;

end;

procedure TfrmDocsCotiza.tbtImprimirClick(Sender: TObject);
var
  fOk:Boolean;
  Msg:String;
begin
{--- Ya esta en operacion la Facturacion electronica, esto se quitó
    if (xcrTotal.Value > mdValorMaxFac) and (Tipo_docto = 1)then begin
      Msg := '';
      Msg := Msg + 'La factura es mayor del monto permisible!'+#10+#13;
      Msg := Msg + 'NO PUEDE SER MAYOR A $ '+sm.StrFloat(mdValorMaxFac,'#,###.00')+' pesos. '+#10+#13;
      Msg := Msg + 'Hay que generar la factura electrónca!';
      MessageDlg(Msg, mtWarning, [mbOK], 0);
      exit;

    end;
}
    frmMsg.ClearAll;
    fOk := VerificaFactura;

    if not fOk then begin
        frmMsg.ShowModal;
        exit;
    end;

    Imprimir;
    UpdateControls;
//    Crear;   //Inicio nuevo docto
end;

procedure TfrmDocsCotiza.tbtLigarClick(Sender: TObject);
var
  fRes:Boolean;
begin
  fRes := otf.Execute;
  if fRes then begin
    frmFE.LoadXMLFile(otf.FileName);
    frmFE.GetInfo;
//    ShowMessage(frmFE.feDatos.Serie+#10+#13+frmFE.feDatos.Folio+#10+#13+frmFE.feDatos.Total);
    edzSerie.Text := frmFE.feDatos.Serie;
    edzFolio.Text := frmFE.feDatos.Folio;
    edzFecha.Text := frmFE.feDatos.Fecha;
    edzTotal.Text := frmFE.feDatos.Total;
    edzUUID.Text  := frmFE.feDatos.UUID;
    edzemRFC.Text := frmFE.feDatos.emRFC;
    edzreRFC.Text := frmFE.feDatos.reRFC;

    if oDoc.Docto_ID <= 0 then begin
      ShowMessage('Hay que grabar el documento antes de hacer la liga!');
      exit;

    end;
    oDoc.SaveFE(oDoc.DOCTO_ID,edzSerie.Text,edzFolio.Text,edzFecha.Text,edzTotal.Text,edzemRFC.Text,edzreRFC.Text,edzUUID.Text);

  end;
end;

procedure TfrmDocsCotiza.tbtLimpiarDetClick(Sender: TObject);
begin
  LimpiarDetalle;
end;

procedure TfrmDocsCotiza.tbtAyudaClick(Sender: TObject);
begin
  ShowHelp('frmDocsCotiza');
end;

procedure TfrmDocsCotiza.tbtCalculaDesctoClick(Sender: TObject);
begin
  CalculaDescto;
end;

procedure TfrmDocsCotiza.tbtCancelarOldClick(Sender: TObject);
begin
    if edEstado = edBrowse then
    // La factura se leyó de la BD, => si la puedo cancelar
        Cancelar
    else
        Crear;  //Si estoy insertando la factura (no la he grabado)
                //solo limpio los datos.
    UpdateControls;
end;

procedure TfrmDocsCotiza.tbtCancelarPartidaClick(Sender: TObject);
begin
  if F1.NumberRC[F1.Row,IdCols.Partida] > 0 then begin
    // Si puedo cancelar en estado de Browse
    if F1.NumberRC[F1.Row,IdCols.Cancela] = 2 then begin
      F1.NumberRC[F1.Row,IdCols.Cancela] := 0;
      SetFont(F1.Row,'NORMAL');
    end else begin
      F1.NumberRC[F1.Row,IdCols.Cancela] := 2;
      SetFont(F1.Row,'CANCELAPARTIDA');
    end;
  end else begin
    DeleteRowsDetalle //Si estoy insertando, Cancelar = Eliminar
  end;
  RefreshF1;
end;

procedure TfrmDocsCotiza.tbtPed1Click(Sender: TObject);
begin
    SelectDocsF1('23');

end;

procedure TfrmDocsCotiza.tbtPed2Click(Sender: TObject);
begin
    SelectDocsF1('232');

end;

procedure TfrmDocsCotiza.tbtPed3Click(Sender: TObject);
begin
    SelectDocsF1('233');

end;

procedure TfrmDocsCotiza.tbtPedimentosClick(Sender: TObject);
begin
  SelectPedimentos;
end;

procedure TfrmDocsCotiza.tbtRem1Click(Sender: TObject);
begin
    SelectDocsF1('28');

end;


procedure TfrmDocsCotiza.tbtRem2Click(Sender: TObject);
begin
    SelectDocsF1('282');

end;

procedure TfrmDocsCotiza.tbtRem3Click(Sender: TObject);
begin
    SelectDocsF1('283');

end;

procedure TfrmDocsCotiza.tbtPedidosF1Click(Sender: TObject);
begin
   SelectDocsF1('23');
end;


procedure TfrmDocsCotiza.tbtCot1Click(Sender: TObject);
begin
    SelectDocsF1('30');
end;

procedure TfrmDocsCotiza.tbtCot2Click(Sender: TObject);
begin
    SelectDocsF1('302');

end;

procedure TfrmDocsCotiza.tbtCot3Click(Sender: TObject);
begin
    SelectDocsF1('303');

end;

procedure TfrmDocsCotiza.tbtSelPedidosClick(Sender: TObject);
begin
//
    SelectDocs;
end;
procedure TfrmDocsCotiza.tbtVerClick(Sender: TObject);
begin
  pnlTotales.Visible := not pnlTotales.Visible;
  pgcCliente.Visible := not pgcCliente.Visible; 
end;

procedure TfrmDocsCotiza.tbtSalirClick(Sender: TObject);
begin
    Close;
end;




{---------------------------------------------------------------
Acciones Basicas del Modulo
---------------------------------------------------------------}
procedure TfrmDocsCotiza.UpdateControls;
begin
    tbtCancelar.Enabled := (oDoc.CANCELA <> '1');
{
    exit;
    tbtGrabar.Enabled := (edEstado = edInsert);
    pgcCliente.Enabled := (edEstado = edInsert);
    pnlTotales.Enabled := (edEstado = edInsert);
}
end;

procedure TfrmDocsCotiza.Crear;
var tTD:String;
    iFolio:Integer;
begin

    F1.DoEndRecalc := False;

    edEstado := edInsert;
    oDoc.Status := edEstado;
    UpdateControls;

    SetUpF1;

    pgcCotiza.ActivePageIndex := 1;
    pgcMain.ActivePageIndex := 0;
    pgcCliente.ActivePageIndex := 0;


    Limpiar;
    oDoc.NUMTIPODOC  := sm.StrFloat(Tipo_Docto,'###');

    cboMoneda.Enabled := True;
    cboMoneda.ItemIndex := 0;
    cboMonedaClick(nil);

    oParam.CODPAR := 'IVA';
    xcrPIVA.Value := oParam.VALORNUM;

    xceFolio.Text := oDoc.GetNextFolio;

    xlbCancelado.visible := False;

    oProd.NUMALMAC   := Trim(sm.NthWord (1,cboNumAlmac.Text,['|']));

    xceCodCteProv.SetFocus;
    F1.DoEndRecalc := True;
    F1.Recalc;

end;

procedure TfrmDocsCotiza.Grabar;
var
  iErr:integer;
begin

//    PonerFormulas;

    if (edEstado = edBrowse) and (not oDoc.Modificar)   then begin
        // NUNCA modificar una factura....
        frmMsg.ClearAll;
        frmMsg.AddError (1,'Este tipo de documentos NO se puede modificar',
                           'Verica con el supervisor si es posible modificar este tipo de documentos.',
                           '');
        frmMsg.ShowAsk := False;
        frmMsg.ShowCancel := False;
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
    oDoc.SERIEDOCTO := '*';
    oDoc.NUMDOCTO   := xceFolio.Text;
    oDoc.FECDOCTO   := xdeFecha.Date + Time;
    oDoc.CODCTEPROV := xceCodCteProv.Text;
    oDoc.NUMAGENTE  := xceNumAgente.Text;
    oDoc.VIATRANS   := xceViaTrans.Text;
    oDoc.DIAESP     := edtPlazo.Text;
    oDoc.REFERDOCTO := xcePedido.Text;
    oDoc.IMPDESCAUT := xcrDescto.Value;
    oDoc.IMPNETODOC := xcrSubTotal.Value;
    oDoc.IMPIVADOCT := xcrIVA.Value;
    oDoc.PORCIVADOC := xcrPIVA.Value;
    oDoc.IMPTOTALDO := xcrTotal.Value;
    oDoc.IMPPENDDOC := xcrTotal.Value;
    oDoc.NUMALMAC   := Trim(sm.NthWord (1,cboNumAlmac.Text,['|']));
    oDoc.MONEDADOCT := Trim(sm.NthWord (1,cboMoneda.Text,['|']));
    oDoc.TIPOCAMBIO := xcrTipoCambio.value;
    oDoc.FECVENCEDO := xdeFecVenceDo.date;
    oDoc.REFERDOCTO2:= xceOC.Text;
    oDoc.Detalle    := F1;

    frmMsg.ClearAll;
    iErr := ValidarDoc;
    if iErr > 0 then begin
        frmMsg.ShowAsk := False;
        frmMsg.ShowCancel := False;
        frmMsg.ShowModal;
        exit;
    end;

    oDoc.Save;

    if oDoc.Error > 0 then begin
        frmMsg.Messages := oDoc.Msg;
        frmMsg.ShowAsk := False;
        frmMsg.ShowCancel := False;
        frmMsg.ShowModal;
        exit;
    end;
//Si al grabar toma otro folio diferente al que se muestra en pantalla.
//Cuando otro usuario simultaneamente graba el mismo tipo de documento...
    xceFolio.Text := oDoc.NUMDOCTO;
    Application.ProcessMessages;

    fHuboFacturas := True;

    edEstado := edBrowse;
    oDoc.Status := edEstado;

//Grabar la hoja de calculo...
    GrabarXLS;

    UpdateControls;

end;

procedure TfrmDocsCotiza.LeerXLS;
var
  tDir,tFile,tFolio:WideString;
begin

    tDir := oINi.ReadString ('Directorios','Documentos',''); //   ExtractFileDir(ParamStr(0));
    tFile := GetFileName;
    tFolio := Trim(xceFolio.text);
    tFolio := sm.PadLeft(tFolio,6,'0');
    tFile  := tFile+tFolio;
    tFile  := tDir+tFile+'.xls';

{    if not FileExists(tFile) then begin
        MessageDlg('El archivo XLS NO existe!'+#10+#13+'Nombre:'+tFile, mtConfirmation,[mbOk], 0);
        exit;
    end;
}
    try
        F11.read (tFile,miType11);
    except;
        MessageDlg('Imposible leer el archivo!'+#10+#13+'Nombre:'+tFile, mtWarning,[mbOk], 0);
    end;

// Al leer, no se refresca bien el F1. Cambiando de una hoja a otra, ya hace el refresh bien...    
    F11.Sheet := 2;
    F11.Sheet := 1;
    
end;

procedure TfrmDocsCotiza.GrabarXLS;
var
  tDir,tFile,tFolio:WideString;
begin
    RefreshF1;
    tDir := oINi.ReadString ('Directorios','Documentos',''); //   ExtractFileDir(ParamStr(0));
    tFile := GetFileName;
    tFolio := Trim(xceFolio.text);
    tFolio := sm.PadLeft(tFolio,6,'0');
    tFile  := tFile+tFolio;
    tFile  := tDir+tFile+'.xls';

    try
        F11.Write (tFile,miType11);
        MessageDlg('El archivo se guardó correctamente!'+#10+#13+'Nombre:'+tFile, mtConfirmation,[mbOk], 0);
    except;
        MessageDlg('Imposible grabar el archivo!'+#10+#13+'Nombre:'+tFile, mtWarning,[mbOk], 0);
    end;
end;

function TfrmDocsCotiza.GetFileName:String;
var
  tNumAlmac:String;
begin
  case Tipo_Docto of
    1:    Result := 'Fac_';
    107:  Result := 'FacElec_';
    23:   Result := 'PedidoMty_';
    232:  Result := 'PedidoGdl_';
    233:  Result := 'PedidoMex_';
    28:   Result := 'RemisionMty_';
    282:  Result := 'RemisionGdl_';
    283:  Result := 'RemisionMex_';
    30:   Result := 'CotizaMty_';
    302:  Result := 'CotizaGdl_';
    303:  Result := 'CotizaMex_';
    else
      Result := 'Otro_';
  end;
end;

function TfrmDocsCotiza.ValidarDoc:Integer;
var
  tNumAlmac:String;
begin
  Result := 0;
  if length(oDoc.NUMALMAC) <= 0 then begin
    frmMsg.AddMsg ('No se ha especificado el ALMACEN!!');
    Result := Result + 1;
  end;
  if cboMoneda.ItemIndex = 1 then begin  //Dolares
    if xcrTipoCambio.Value = 1 then begin
      frmMsg.AddMsg ('Falta Captura el tipo de cambio!!');
      Result := Result + 1;
    end;
  end;
end;

procedure TfrmDocsCotiza.Leer;
var
    tTD:String;
begin
//    oDoc.FECDOCTO := xdeFecha.Date;

    LimpiarDetalle;
    tTD := sm.StrFloat (Tipo_Docto,'###');
    tTD := Trim(tTD);
    oDoc.NUMTIPODOC := tTD;
    oDoc.SERIEDOCTO  := '*';
    oDoc.NUMDOCTO := Trim(xceFolio.Text);

    oDoc.Detalle := F1;

    oDoc.Retrieve;

    xdeFecha.Date := oDoc.FECDOCTO;
    xceCodCteProv.Text := oDoc.CODCTEPROV;
    BuscaCliente;
    xceNumAgente.Text  := oDoc.NUMAGENTE;
    BuscaAgente;
    xceViaTrans.Text   := oDoc.VIATRANS;
    BuscaViaTransporte;
    edtPlazo.Text := oDoc.DIAESP;
    xceOC.Text := oDoc.REFERDOCTO2;

    if Tipo_Docto in [1,107] then begin
      xcePedido.Text := oDoc.REFERDOCTO;
    end;

    xcrPIVA.Value := oDoc.PORCIVADOC;

    ComboSeek(cboNumAlmac,oDoc.NUMALMAC);

    ComboSeek(cboMoneda,oDoc.MonedaDoct);
    cboMonedaClick(nil);
    cboMoneda.Enabled := False;

    xcrTipoCAmbio.Value := oDoc.TIPOCAMBIO;

    F1 := oDoc.Detalle;



    ListarProductos;

    edEstado := edBrowse;
    oDoc.Status := edEstado;
    UpdateControls;

    xlbCancelado.Visible  := (oDoc.CANCELA  = '1');

    edzSerie.Text := oDoc.FESerie;
    edzFolio.Text := oDoc.FEFolio;
    edzFecha.Text := oDoc.FEFEcha;
    edzTotal.Text := oDoc.FETotal;
    edzemRFC.Text := oDoc.FEEMRFC;
    edzreRFC.Text := oDoc.FERERFC;
    edzUUID.Text  := oDoc.FEUUID;

    RefreshF1;

end;

procedure TfrmDocsCotiza.Imprimir;
var fOk:Boolean;
begin
  if edEstado = edInsert then
    Grabar;

  ImprimirDoc;
//        ImprimirPedido;  ---fpg:13/May/2011

  UpdateControls;
end;

procedure TfrmDocsCotiza.Cancelar;
var
  wmr:Word;
  iErr:Integer;
begin
  iErr := 0;
  if (Tipo_Docto in [107]) and (frmFE.DataInExists > 0) then begin
    ShowMessage('La carpeta de la Factura Electrónica NO existe!'+#10+#13+
    'No es posible cancelar el documento'+#10+#13+
    'Avisale al encargado de Sistemas');
    exit;
  end;


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
        if oDoc.Error > 0 then begin
          frmMsg.Messages := oDoc.Msg;
          frmMsg.ShowAsk := False;
          frmMsg.ShowCancel := False;
          frmMsg.ShowModal;
          exit;
        end;

        xlbCancelado.Visible  := (oDoc.CANCELA  = '1');

       if iErr > 0  then exit;

    end;

    UpdateControls;

end;


procedure TfrmDocsCotiza.Limpiar;
begin

    oDoc.Clear;
    pgcCliente.ActivePageIndex := 0;
    xceFolio.Text := '';
    xdeFecha.Date := Date;
    xceCodCteProv.Text := '';
    xceNumAgente.Text := '';
    xceViaTrans.Text := '';
    xceNombreCte.Text := '';
    xceNombreAgente.Text := '';
    xceNombreTransp.Text := '';
    xcePEdido.Text := '';
    edtPlazo.Text := '';
    xceOC.Text := '';
    mmoEntregar.Lines.Clear;
    Memo1.Lines.Clear;
    xdeFecVenceDo.Text := '';
    cboPrecio.ItemIndex := 0;

    cboMoneda.Enabled := True;


    edzSerie.Text := '';
    edzFolio.Text := '';
    edzFecha.Text := '';
    edzTotal.Text := '';
    edzemRFC.Text := '';
    edzreRFC.Text := '';
    edzUUID.Text  := '';

    mmzFac.Lines.Clear;

    LimpiarDetalle;

    xcrDescto.Value :=0;
    xcrSubtotal.Value :=0;
    xcrIva.Value :=0;
    xcrTotal.Value :=0;

//    xcrTipoCambio.Value := 1;

//    xceCodCteProv.SetFocus;

    UpdateControls;

end;

procedure TfrmDocsCotiza.VaciarPedido;
var tAux,ptCod,ptComa,ptPedido:String;
    iRow:integer;
    dPend:Double;
begin
    if length(xcePedido.Text) > 0 then ptComa := ',' else ptComa := '';

    ptPedido := frmSelDoc.iqrDoc.FieldByName('NUMDOCTO').AsString;
    ptPedido := sm.Strip(ptPedido);
    if (pos(ptPedido,xcePedido.Text) <= 0) and (length(ptPedido) > 0 ) then //Para no poner dos veces el pedido
        xcePedido.Text := xcePedido.Text + ptComa + ptPedido;
    xceNumAgente.Text := frmSelDoc.iqrDoc.FieldByName('NUMAGENTE').AsString;
    BuscaAgente;
    xceViaTrans.Text := frmSelDoc.iqrDoc.FieldByName('VIATRANS').AsString;
    BuscaViaTransporte;

//Detalle del Pedido
    iRow := GetNextRow;
    frmSelDoc.iqrDet.First;
    while not frmSelDoc.iqrDet.eof do begin
        F1.Row := iRow;
        ptCod := frmSelDoc.iqrDet.FieldByName('CODPRODSER').AsString;
        dPend := frmSelDoc.iqrDet.FieldByName('UniPend').AsDouble;
        if dPend > 0 then begin
            F1.TextRC[iRow,IdCols.CodProdSer] := ptCod;
            GetProducto(ptCod);
            F1.NumberRC[iRow,IdCols.Unidades] := dPend;
            F1.NumberRC[iRow,IdCols.PrecioLista] := frmSelDoc.iqrDet.FieldByName('PRECIO').AsDouble;
            F1.NumberRC[iRow,IdCols.PorcDescAu] := frmSelDoc.iqrDet.FieldByName('PORCDESCAU').AsDouble;
            F1.TextRC[iRow,IdCols.DeNumTipoDoc] := frmSelDoc.iqrDet.FieldByName('NumTipoDoc').AsString;
            F1.TextRC[iRow,IdCols.DeSerieDocto] := frmSelDoc.iqrDet.FieldByName('SerieDocto').AsString;
            F1.TextRC[iRow,IdCols.DeNumDocto] := frmSelDoc.iqrDet.FieldByName('NumDocto').AsString;
            F1.TextRC[iRow,IdCols.DeNumMovto] := frmSelDoc.iqrDet.FieldByName('NumMovto').AsString;
            iRow := iRow+1;
            if iRow > F1.MaxRow then break;
        end;
        frmSelDoc.iqrDet.Next;
    end;

end;

procedure TfrmDocsCotiza.VaciarPedidoF1;
var tAux,ptCod,ptComa,ptComa2,ptPedido,ptRD2:String;
    i,iRow:integer;
    dPend:Double;
begin
    if length(xcePedido.Text) > 0 then ptComa := ',' else ptComa := '';

    ptPedido := frmSelDocF1.NUMDOCTO;
    ptPedido := sm.Strip(ptPedido);
    if (pos(ptPedido,xcePedido.Text) <= 0) and (length(ptPedido) > 0 ) then //Para no poner dos veces el pedido
        xcePedido.Text := xcePedido.Text + ptComa + ptPedido;

    if length(xceOC.Text) > 0 then ptComa2 := ',' else ptComa2 := '';
    ptRD2 := frmSelDocF1.ReferDocto2;
    ptRD2 := sm.Strip(ptRD2);
    if (pos(ptRD2,xceOC.Text) <= 0) and (length(ptRD2) > 0 ) then //Para no poner dos veces la OC de Cliente
        xceOC.Text := xceOC.Text + ptComa2 + ptRD2;

    xceNumAgente.Text := frmSelDocF1.NUMAGENTE;
    BuscaAgente;
    xceViaTrans.Text := frmSelDocF1.VIATRANS;
    BuscaViaTransporte;

//Detalle del Pedido
    iRow := GetNextRow;
    for i := 1 to frmSelDocF1.DetCount do begin
        F1.Row := iRow;
        ptCod := frmSelDocF1.F1Det.TextRC[i,2];
        dPend := frmSelDocF1.F1Det.NumberRC[i,3];
        tAux := frmSelDocF1.F1Det.TextRC[i,1];
        if (dPend > 0) and (length(tAux) > 0) then begin
            F1.TextRC[iRow,IdCols.CodProdSer] := ptCod;
            GetProducto(ptCod);
            F1.NumberRC[iRow,IdCols.Unidades] := dPend;
            F1.NumberRC[iRow,IdCols.PrecioLista] := frmSelDocF1.F1Det.NumberRC[i,7];
            F1.NumberRC[iRow,IdCols.PorcDescAu] := frmSelDocF1.F1Det.NumberRC[i,8];
            F1.TextRC[iRow,IdCols.DeNumTipoDoc] := frmSelDocF1.F1Det.TextRC[i,20];
            F1.TextRC[iRow,IdCols.DeSerieDocto] := frmSelDocF1.Serie_Docto;
            F1.TextRC[iRow,IdCols.DeNumDocto] := frmSelDocF1.NumDocto;
            F1.TextRC[iRow,IdCols.DeNumMovto] := frmSelDocF1.F1Det.TextRC[i,9];
            iRow := iRow+1;

            if iRow > F1.MaxRow then break;

        end;
    end;

    PonerFormulas;
    RefreshF1;

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

procedure TfrmDocsCotiza.SelectDocs;
begin
    if not Assigned(frmSelDoc) then
        frmSelDoc := TfrmSelDoc.Create (Application);

    frmSelDoc.CodCliente := xceCodCteProv.Text;
    case Tipo_Docto of
      1,107,23,232,233,28,282,283,30,302,303:
        begin
          frmSelDoc.Tipo_Docto := oEmp.TipoDocto; //  '23';
          frmSelDoc.Serie_Docto := '*';
          frmSelDoc.Encabezado := xceCodCteProv.Text + ' ' + xceNombreCte.Text;
        end;
    end;
    mrRes := frmSelDoc.ShowModal;
    frmSelDoc.Hide;
    Application.ProcessMessages;
    if (mrRes = mrOk) and (Tipo_Docto in [1,107]) then begin
        VaciarPedido;
        frmSelDoc.unprepare;
    end;

    case Tipo_Docto of
      23,232,233,28,282,283:
        begin
          if (mrRes = mrOk) then begin
            xceFolio.Text := frmSelDoc.Codigo;
            Leer;
          end;
        end;
    end;
end;

procedure TfrmDocsCotiza.SelectDocsF1(ATipo_Docto:String);
begin
    if length(Trim(xceCodCteProv.Text)) <= 0 then begin
      MessageDlg('Hay que seleccionar un cliente primero!!', mtWarning,[mbOk], 0);
      exit;
    end;


    if not Assigned(frmSelDocF1) then
        frmSelDocF1 := TfrmSelDocF1.Create (Application);

    frmSelDocF1.CodCteProv := xceCodCteProv.Text;
    frmSelDocF1.RazSocial := xceNombreCte.Text;
    frmSelDocF1.Tipo_Docto := ATipo_Docto;  //'23';

    mrRes := frmSelDocF1.ShowModal;
    frmSelDocF1.Hide;
    Application.ProcessMessages;

    case Tipo_Docto of
    1,107,23,232,233,28,282,283,30,302,303:
      begin
        if mrRes = mrOk then begin
          VaciarPedidoF1;
          frmSelDocF1.unprepare;
        end;
      end;
    end;

end;

procedure TfrmDocsCotiza.SelectSaldos;
begin
    if not Assigned(frmSaldos) then
        frmSaldos := TfrmSaldos.Create (Application);

    frmSALDOS.CodCliente := xceCodCteProv.Text;
    frmsALDOS.Encabezado := xceCodCteProv.Text + ' ' + xceNombreCte.Text;

    mrRes := frmSaldos.ShowModal;
    frmSaldos.Hide;
    frmSaldos.unprepare;
end;

procedure TfrmDocsCotiza.SelectPedimentos;
var tCod,tProd, tDescri:String;
begin
    tCod   := F1.TextRC[F1.Row, IdCols.CodProdSer];
    tProd   := F1.TextRC[F1.Row, IdCols.CodProdSer];
    tDescri := F1.TextRC[F1.Row, IdCols.DescripPro];

    frmMsg.ClearAll;
    if length(tCod) < 0 then begin
      frmMsg.AddMsg ('Debes de teclear un código de producto para poder seleccionar Pedimentos!!');
      frmMsg.ShowModal;
      exit;
    end;
{
    if length(tProd) <= 0 then begin
      frmMsg.AddMsg ('Debes de estar abajo de un renglón que tenga datos del producto!!!');
      frmMsg.AddAxn ('Pon el cursor un renglón más abajo del producto que quieres consultar.');
      frmMsg.ShowModal;
      exit;
    end;
}
    if not Assigned(frmPedimentos) then
        frmPedimentos := TfrmPedimentos.Create (Application);

    frmPedimentos.CodProdSer := tProd;
    frmPedimentos.Encabezado := tProd + ' ' + tDescri;

    mrRes := frmPedimentos.ShowModal;

    if mrRes = mrOk then begin
      F1.TextRC[F1.Row, IdCols.cmNumTipoDoc] := frmPedimentos.Valores[1];
      F1.TextRC[F1.Row, IdCols.cmSerieDocto] := frmPedimentos.Valores[2];
      F1.TextRC[F1.Row, IdCols.cmNumDocto]   := frmPedimentos.Valores[3];
      F1.TextRC[F1.Row, IdCols.cmNumMovto]   := frmPedimentos.Valores[4];
      F1.TextRC[F1.Row, IdCols.Pedimento]    := frmPedimentos.Valores[5];
      F1.NumberRC[F1.Row, IdCols.FechaEnt]   := frmPedimentos.Valores[6];
      F1.TextRC[F1.Row, IdCols.Aduana]       := frmPedimentos.Valores[7];
      F1.NumberRC[F1.Row, IdCols.UniPedimento]:= frmPedimentos.Valores[8];
    end;


    frmPedimentos.Hide;
    frmPedimentos.unprepare;
end;

procedure TfrmDocsCotiza.Select(ptTabla:String;piOpcion: Integer;ptKey:String);
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


procedure TfrmDocsCotiza.SelectCliente(piOpcion: Integer;ptKey:String);
begin
    Select('MBA10002',piOpcion,ptKey);
    if mrRes = mrOk then begin
        xceCodCteProv.Text := frmSelTabla.Valores[1];
        xceNombreCte.Text  := frmSelTabla.Valores[2];
        BuscaCliente;
    end;

end;

procedure TfrmDocsCotiza.SelectAgente(piOpcion: Integer;ptKey:String);
begin
    Select('MBA10001',piOpcion,ptKey);
    if mrRes = mrOk then begin
        xceNumAgente.Text := frmSelTabla.Valores[1];
        xceNombreAgente.Text  := frmSelTabla.Valores[2];
        BuscaAgente;
    end;

end;
procedure TfrmDocsCotiza.SelectTransp(piOpcion: Integer;ptKey:String);
begin
    Select('MBA10021',piOpcion,ptKey);
    if mrRes = mrOk then begin
        xceViaTrans.Text := frmSelTabla.Valores[2];
        xceNombreTransp.Text  := frmSelTabla.Valores[3];
    end;

end;

procedure TfrmDocsCotiza.SelectProducto(piOpcion: Integer;ptKey:String);
var iLista:Integer;
    ptCod:String;
begin
    Select('MBA10004',piOpcion,ptKey);
    if mrRes = mrOk then begin
        F1.TextRC[miRow,IdCols.CodProdSer] := frmSelTabla.Valores[1];
        ptCod := F1.TextRC[miRow,IdCols.CodProdSer];
        GetProducto(ptCod);
        F1.Col := 2;
    end;

end;

procedure TfrmDocsCotiza.xceCodCteProvButtonClick(Sender: TObject);
begin
    SelectCliente(1,xceCodCteProv.Text);
end;

procedure TfrmDocsCotiza.xceNombreCteButtonClick(Sender: TObject);
begin
    SelectCliente(2,xceNombreCte.Text);

end;

procedure TfrmDocsCotiza.xceNumAgenteButtonClick(Sender: TObject);
begin
    TipoTabla := TABLA_AGE;
    SelectAgente(1,xceNumAgente.Text);

end;

procedure TfrmDocsCotiza.xceNombreAgenteButtonClick(Sender: TObject);
begin
    TipoTabla := TABLA_AGE;
    SelectAgente(2,xceNombreAgente.Text);

end;

procedure TfrmDocsCotiza.xceViaTransButtonClick(Sender: TObject);
begin
    TipoTabla := TABLA_TRA;
    SelectTransp(1,xceViaTrans.Text);

end;

procedure TfrmDocsCotiza.xceNombreTranspButtonClick(Sender: TObject);
begin
    TipoTabla := TABLA_TRA;
    SelectTransp(2,xceNombreTransp.Text);

end;
{---------------------------------------------------------------
Eventos F1
---------------------------------------------------------------}
function TfrmDocsCotiza.GetNextRow:Integer;
var i,iMaxRows:Integer;
    tCon:String;
begin
    Result := -1;
    iMaxRows := F1.MaxRow;
    for i:= 1 to iMaxRows do begin
        tCon := F1.TextRC[i,IdCols.CodProdSer];
        tCon := sm.Strip (tCon);
        if length(tCon) <= 0 then begin
            Result := i;
            break;
        end;
    end;
end;

procedure TfrmDocsCotiza.LimpiarDetalle;
var i:Integer;
    tRow:String;
begin
    F1.DoEndRecalc := False;

    F1.Sheet := 1;
    F1.ClearRange(1, 1, F1.MaxRow,F1.MaxCol, F1ClearValues);

    PonerFormulas;
    PonLimite;
//Quitar los rojos por si se cancelo alguna partida
    for i := 1 to F1.MaxRow do
      SetFont(i,'NORMAL');

    f1.Selection := 'A1';

    F1.DoEndRecalc := True;
    F1.Recalc;
    F1.TopRow := 1;

    cboMoneda.Enabled := True;
//LoadF11;
end;

procedure TfrmDocsCotiza.PonerFormulas;
var i,iRen,iCol,iMaxRows,iMaxCols:Integer;
    tSel,tF1,tF2,tF3,tFor,tRow,tCol,tFmtPrecio:String;
begin


  tSel := F1.Selection;

  i := sm.ToI(edtDec.Text);
  if i = 0 then i:= 2;

  tFmtPrecio := '#,##0.' + sm.RepeatStr('0',i);

//Formula para obtener el precio neto
  F1.SetSelection(1,IdCols.PrecioLista,1,IdCols.PrecioLista);
  tF1 := F1.Selection; // Celda del precio de lista
  F1.NumberFormat := tFmtPrecio;
  F1.SetSelection(1,IdCols.PorcDescAu,1,IdCols.PorcDescAu);
  tF2 := F1.Selection; // Celda del porcentaje autorizado
  //---FPG 3/May/2014
  tFor := 'Round(' + tF1 + '*(1-(' + tF2 +'/100)),'+edtDec.Text+')';
  F1.FormulaRC[1,IdCols.PrecioNeto] := tFor;
  F1.NumberFormat := tFmtPrecio;

//Formula para obtener el Importe del descuento en pesos
  F1.SetSelection(1,IdCols.PrecioLista,1,IdCols.PrecioLista);
  tF1 := F1.Selection; // Celda del precio de lista
  F1.SetSelection(1,IdCols.PrecioNeto,1,IdCols.PrecioNeto);
  tF2 := F1.Selection; // Celda del precio neto
  F1.SetSelection(1,IdCols.Unidades,1,IdCols.Unidades );
  tF3 := F1.Selection;
  tFor := 'Round((' + tF1 + '- ' + tF2 +')*' + tF3 +',2)';
  F1.FormulaRC[1,IdCols.ImpDescAut] := tFor;

//Formula para obtener el Importe Neto del Detalle
  F1.SetSelection(1,IdCols.Unidades,1,IdCols.Unidades );
  tF1 := F1.Selection;
  F1.SetSelection(1,IdCols.PrecioNeto ,1,IdCols.PrecioNeto );
  tF2 := F1.Selection;
  //---FPG 3/May/2014
  tFor := 'Round(' + tF1 + '*' + tF2 +','+edtDec.Text+')';
  F1.FormulaRC[1,IdCols.ImpNetoMov] := tFor;
  F1.NumberFormat := tFmtPrecio;

//Formula para obtener el Importe de la comisión del vendedor
  F1.SetSelection(1,IdCols.ImpNetoMov,1,IdCols.ImpNetoMov);
  tF1 := F1.Selection;
  F1.SetSelection(1,IdCols.PorcComisV,1,IdCols.PorcComisV);
  tF2 := F1.Selection;
  tFor := 'Round(' + tF1 + '*' + tF2 +'/100,2)';
  F1.FormulaRC[1,IdCols.ImpComisMo] := tFor;
//Formula para obtener el Importe del IVA
  F1.SetSelection(1,IdCols.ImpNetoMov,1,IdCols.ImpNetoMov);
  tF1 := F1.Selection;
  F1.SetSelection(1,IdCols.PorcIVAMov,1,IdCols.PorcIVAMov);
  tF2 := F1.Selection;
  tFor := 'Round(' + tF1 + '*' + tF2 +'/100,2)';
  F1.FormulaRC[1,IdCols.ImpIVAMovt] := tFor;


// Copiar formula hacia abajo
// Precio Neto
  F1.SetSelection(1,IdCols.PrecioLista,F1.MaxRow,IdCols.PrecioLista);
  F1.NumberFormat := tFmtPrecio;

  F1.SetSelection(1,IdCols.PrecioNeto,F1.MaxRow,IdCols.PrecioNeto);
  F1.EditCopyDown;
// Importe Neto
  F1.SetSelection(1,IdCols.ImpNetoMov,F1.MaxRow,IdCols.ImpNetoMov);
  F1.EditCopyDown;
// Columna de Importe de descuento
  F1.SetSelection(1,IdCols.ImpDescAut,F1.MaxRow,IdCols.ImpDescAut);
  F1.EditCopyDown;
// Columna de Importe Comision
  F1.SetSelection(1,IdCols.ImpComisMo,F1.MaxRow,IdCols.ImpComisMo);
  F1.EditCopyDown;
// Columna de Importe IVA
  F1.SetSelection(1,IdCols.ImpIVAMovt,F1.MaxRow,IdCols.ImpIVAMovt);
  F1.EditCopyDown;

// Importes de los totales que van en la hoja 2
// Importe Neto
// 17/Jun/2014...
// se cancelo lo de las formaulas en la hoja 2... ver Proc Calculatotales
{
  F1.SetSelection(1,IdCols.ImpNetoMov,F1.MaxRow,IdCols.ImpNetoMov);
  tF1 := F1.Selection;
  F1.FormulaSRC[2,1,1] := 'Round(SUM(Doc!'+ tF1 + '),2)';
// Importe Descuento
  F1.SetSelection(1,IdCols.ImpDescAut,F1.MaxRow,IdCols.ImpDescAut);
  tF1 := F1.Selection;
  F1.FormulaSRC[2,2,1] := 'Round(SUM(Doc!'+ tF1 + '),2)';
}
  F1.Selection := tSel;

  RefreshF1;

end;

procedure TfrmDocsCotiza.CalculaTotales;
var
  r: Integer;
  dDesctos, dTotMovto, dIva, dIvaR, dIeps: Double;
begin
  dDesctos := 0;
  dTotMovto := 0;
  dIva := 0;
  dIvaR := 0;
  dIeps := 0;
  for r := 1 to F1.Maxrow do begin
    if F1.NumberRC[r, IdCols.Cancela] <> 2 then begin
      dDesctos := dDesctos + F1.NumberRC[r, IdCols.ImpDescAut];
      dTotMovto := dTotMovto + F1.NumberRC[r, IdCols.ImpNetoMov];
      dIva := dIva + F1.NumberRC[r, IdCols.ImpIVAMovt];
      dIvaR := dIvaR + F1.NumberRC[r, IdCols.ImpRetIVAMov];
      dIeps := dIeps + F1.NumberRC[r, IdCols.ImpIEPSMov];
    end;
  end;

  xcrDescto.Value := dDesctos;
  xcrSubTotal.Value := dTotMovto;
  xcrIVA.Value := dIva;
  xcrIVARet.Value := dIvaR;
  xcrIEPS.Value := dIeps;

  xcrTotal.Value := xcrSubTotal.Value + xcrIVA.Value - xcrIVARet.Value +
                    xcrIEPS.Value;


end;

procedure TfrmDocsCotiza.F1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var tProd:String;
begin

//    if edEstado = edBrowse then exit;

    case Key of
    VK_F3:begin
            miRow := F1.Row;
            SelectProducto(1,F1.TextRC[miRow,IdCols.CodProdSer]);
            Timer2Timer(Sender);
          end;
    VK_F4:begin
            miRow := F1.Row;
            SelectProducto(2,F1.TextRC[miRow,IdCols.DescripPro]);
            Timer2Timer(Sender);
          end;
    VK_F8:begin
            CalculaDescto;
          end;
    VK_DELETE: begin
        if ssCtrl in Shift then
            DeleteRowsDetalle
        else begin
            if (F1.Col in ColSet) or (F1.SelEndCol >=5) then exit;
            F1.ClearRange(F1.SelStartRow,F1.SelStartCol,F1.SelEndRow,F1.SelEndCol,F1ClearValues)
        end;
        end;
    VK_INSERT: begin
        if ssCtrl in Shift then
            InsertRowsDetalle
        end;
    VK_RETURN:
        begin
            tProd := F1.TextRC[F1.Row,IdCols.CodProdSer];
            GetProducto(tProd);
        end;
    end;

    RefreshF1;
end;

procedure TfrmDocsCotiza.F11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var tProd:String;
begin
    case Key of
    VK_DELETE: begin
                 F11.ClearRange(F11.SelStartRow,F11.SelStartCol,F11.SelEndRow,F11.SelEndCol,F1ClearValues);
               end;
    end;
end;

procedure TfrmDocsCotiza.F12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var tProd:String;
begin

//    if edEstado = edBrowse then exit;

    case Key of
    VK_F11:begin
            if F12.Sheet = 1 then
              F12.Sheet := 8
            else
              F12.Sheet := F12.Sheet - 1;
          end;
    VK_F12:begin
            if F12.Sheet = 8 then
              F12.Sheet := 1
            else
              F12.Sheet := F12.Sheet + 1;
          end;
    VK_DELETE: begin
        if ssCtrl in Shift then
        else begin
            F1.ClearRange(F1.SelStartRow,F1.SelStartCol,F1.SelEndRow,F1.SelEndCol,F1ClearValues)
        end;
        end;
    VK_RETURN:
        begin
        end;
    end;
end;

procedure TfrmDocsCotiza.btnInsertarClick(Sender: TObject);
begin
    mmoEntregar.Lines.Add(edtCuentaBanco.Text);
end;

procedure TfrmDocsCotiza.btnInsertRowClick(Sender: TObject);
begin
  F11.EditInsert(F1ShiftRows);
end;

procedure TfrmDocsCotiza.btnListarArticulosClick(Sender: TObject);
begin
  pgcListados.ActivePageIndex := 0;
  BuscarProductos2;
end;

procedure TfrmDocsCotiza.btnListarCtesClick(Sender: TObject);
begin
  ListarClientes;
end;

procedure TfrmDocsCotiza.btnPasarCotiClick(Sender: TObject);
begin
  PasarProductosDoc2;
end;

procedure TfrmDocsCotiza.btnSeleccionarClick(Sender: TObject);
begin
  Seleccionar;
end;

procedure TfrmDocsCotiza.BuildCodigo;
var i:Integer;
    tCod:String;
    tD,tL:String;
begin
  tD := F12.TextRC[F12.Row,2];
  tL := F12.TextRC[3,F12.Col];
  tCod := F12.TextRC[1,1] + '-' + tD + tL;

  F1.TextRC[F1.Row,IDCols.CodProdSer] := tCod;

end;

procedure TfrmDocsCotiza.GetProducto(ptCod: string);
var
  dNewExis, dPrecio, dPrecio2, dPrecioLista, dDescuento: Double;
  tPrecio,tMoneda: string;
  iDls:Integer;
begin
  if length(Trim(ptCod)) <= 0 then
    exit;

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

  tMoneda := sm.NthWord(1,cboMoneda.Text);

  F1.TextRC[F1.Row, IdCols.CodProdSer] := oProd.CODPRODSER;
  F1.TextRC[F1.Row, IdCols.DescripPro] := oProd.DESCRIPPRO;
  if chkDescto.Checked then
    F1.NumberRC[F1.Row, IdCols.PorcDescAu] := oProd.PORDESCAUT;


  F1.TextRC[F1.Row, IdCols.DescripPro] := F1.TextRC[F1.Row, IdCols.DescripPro];

  F1.TextRC[F1.Row, IdCols.UniVta] := oProd.UNIVTADESC;
  if (length(cboPrecio.Text) <= 0) then
    miLista := 1
  else
    miLista := StrToInt(cboPrecio.Text);

  //    oFam.CODFAM :=oProd.CODFAMILIA;
  //    oFam.Retrieve;

  F1.TextRC[F1.Row, idCols.PathFoto] := oProd.PATHFOTO;
  F1.NumberRC[F1.Row, IdCols.CostoMov] := oProd.CTOREAL;

  dPrecioLista := oProd.GetPrecio(miLista);

  F1.NumberRC[F1.Row, IDCols.PrecioLista] := dPrecioLista;
  F1.NumberRC[F1.Row, IdCols.PorcIVAMov] := oProd.PORC_IVA; //xcrPIVA.Value;
  F1.NumberRC[F1.Row, IdCols.PorcIEPSMo] := oProd.PORC_IEPS;
  F1.NumberRC[F1.Row, IdCols.PorcRetIVAMov] := oProd.PORC_RETIVA;

  F1.NumberRC[F1.Row, IdCols.FecDocto] := xdeFecha.Date;

  F1.NumberRC[F1.Row, IDCols.PorcComisV] := oAge.PORCCOMVTA;
  F1.NumberRC[F1.Row, IdCols.ExisTotal] := oProd.EXISTOTAL;
  F1.NumberRC[F1.Row, IdCols.ExisAlmacen] := oProd.EXISALMACEN;
  F1.NumberRC[F1.Row, IdCols.DescRota] := oProd.DescRota;
  F1.NumberRC[F1.Row, IdCols.TipoCalculo] := oProd.TipoCalculo;
  if (length(cboPrecio.Text) <= 0) then
    F1.NumberRC[F1.Row, IdCols.NumPrecioLista] := 1
  else
    F1.NumberRC[F1.Row, IdCols.NumPrecioLista] := StrToInt(cboPrecio.Text);

  F1.TextRC[F1.Row, IdCols.CodFamilia] := oProd.CODFAMILIA;

  xcrExisAlmacen.Value := F1.NumberRC[F1.Row, IdCols.ExisAlmacen];
  xcrExisTotal.Value := F1.NumberRC[F1.Row, IdCols.ExisTotal];
  xcrDescRota.Value := oProd.DescRota;

  if Trim(oProd.CATEGPROD) = '2' then
  begin
    oDoc.GetPedimento2(oProd.CodFamilia, Pedimento);
    //    oDoc.GetPedimento2 (oProd.CodFamilia,Pedimento);

    //    if (Pedimento.Unidades > 0) then begin
    //      F1.TextRC[F1.Row,IdCols.CmNumTipoDoc] := Pedimento.NumTipoDoc;
    //      F1.TextRC[F1.Row,IdCols.CmSerieDocto] := Pedimento.SerieDocto;
    //      F1.TextRC[F1.Row,IdCols.CmNumDocto] := Pedimento.NumDocto;
    //      F1.TextRC[F1.Row,IdCols.CmNumMovto] := Pedimento.NumMovto;
    F1.TextRC[F1.Row, IdCols.Pedimento] := Pedimento.NumPedimento;
    F1.NumberRC[F1.Row, IdCols.FechaEnt] := Pedimento.Fecha;
    F1.TextRC[F1.Row, IdCols.Aduana] := Pedimento.Aduana;
    F1.NumberRC[F1.Row, IdCols.UniPedimento] := Pedimento.Unidades;
    //    end;
  end;

  // Aplicar los descuentos por familia al precio de lista...

  GetPrecioConDescuento(oProd.CODFAMILIA, F1.NumberRC[F1.Row,
    IDCols.PrecioLista], dPrecio2, dDescuento);

  F1.NumberRC[F1.Row, IDCols.PorcDescAu] := dDescuento;
  //    F1.NumberRC[F1.Row,IDCols.PrecioNeto] := dPrecio2;

  //---------------------------------------------------------

  F1.TextRC[F1.Row, IdCols.DeNumTipoDoc] := '';
  F1.TextRC[F1.Row, IdCols.DeSerieDocto] := '';
  F1.TextRC[F1.Row, IdCols.DeNumDocto] := '';
  F1.TextRC[F1.Row, IdCols.DeNumMovto] := '';

  F1.NumberRC[F1.Row, IdCols.TipoCalculo] := oProd.TIPOCALCULO;
  F1.TextRC[F1.Row, IdCols.Captura] := oProd.CARAC1;

  F1.TextRC[F1.Row, IdCols.ClaveSAT] := oProd.CLAVESAT;
  F1.TextRC[F1.Row, IdCols.ClaveUnidad] := oProd.CLAVEUNIDAD;
  F1.NumberRC[F1.Row, IdCols.Cobro_IVA] := oProd.COBRO_IVA;
  F1.NumberRC[F1.Row, IdCols.Cobro_RETIVA] := oProd.COBRO_RETIVA;
  F1.NumberRC[F1.Row, IdCols.Cobro_IEPS] := oProd.COBRO_IEPS;
  F1.TextRC[F1.Row, IdCols.CategProd] := oProd.CATEGPROD;
  iDls := oProd.ES_DLS;
  F1.NumberRC[F1.Row, IdCols.Es_Dls] := iDls;


  if tMoneda = '1' then begin //Pesos
    if iDls = 1 then begin
      dPrecioLista := dPrecioLista * xcrTipoCambio.Value; //xcrTCInox.Value;
      F1.NumberRC[F1.Row, IdCols.CostoMov] := oProd.CTOREAL * xcrTipoCambio.Value; //xcrTipoCambio.value;
      F1.NumberRC[F1.Row, IDCols.PrecioLista] := dPrecioLista;
//      F1.NumberRC[F1.Row, IdCols.Es_Dls] := 0;
    end;
  end;
  if tMoneda = '2' then begin //Dolares
    if not (iDls = 1) then begin
      dPrecioLista := dPrecioLista / xcrTipoCambio.Value;
      F1.NumberRC[F1.Row, IdCols.CostoMov] := oProd.CTOREAL / xcrTipoCambio.value;
      F1.NumberRC[F1.Row, IDCols.PrecioLista] := dPrecioLista;
//      F1.NumberRC[F1.Row, IdCols.Es_Dls] := 1;
    end;
  end;

end;

procedure TfrmDocsCotiza.GetPrecioConDescuento(ptFam:String;
                                         pdPrecioLista:Double;
                                     var pdPrecioFinal:Double;
                                     var pdDescuento:Double);
var
  r, i, RenIni: Integer;
  tFam: string;
  dDes, Precio: Double;
begin
  if pdPrecioLista <= 0 then
    Precio := 100
  else
    Precio := pdPrecioLista;

  RenIni := 7;
  pdPrecioFinal := Precio;
  for r := RenIni to F1.MaxRow do
  begin
    tFam := F2.TextRC[r, 2];
    if tFam = ptFam then begin
      for i := 4 to 8 do
        pdPrecioFinal := pdPrecioFinal * (1 - (F2.NumberRC[r, i] / 100));
      break;
    end;
  end;

  pdDescuento := (1 - (pdPrecioFinal / Precio)) * 100;

end;

procedure TfrmDocsCotiza.ListarProductos;
var
  iRow: Integer;
  tCod, tDes: string;
  dP1, dP2, dD1: Double;
begin

  //    PonerFormulas;

  iRow := 1;
  tCod := F1.TextRC[iRow, IdCols.CodProdSer];
  tDes := F1.TextRC[iRow, IdCols.DescripPro];
  while (length(tCod) > 0) or (length(tDes) > 0) do
  begin
    if (length(tCod) > 0) then
    begin
      oProd.CODPRODSER := UpperCase(tCod);
      oProd.Retrieve;
      F1.TextRC[iRow, IdCols.UniVta] := oProd.UNIVTADESC;
      F1.TextRC[iRow, IDCols.PathFoto] := oProd.PATHFOTO;

      dP1 := F1.NumberRC[iRow, IdCols.PrecioLista];
      dD1 := F1.NumberRC[iRow, IdCols.PorcDescAu];
      dP2 := dP1 * (1 - (dD1 / 100));
      F1.NumberRC[iRow, IdCols.PrecioNeto] := dP2;
      F1.NumberRC[iRow, IdCols.ExisTotal] := oProd.EXISTOTAL;
      F1.NumberRC[iRow, IdCols.ExisAlmacen] := oProd.EXISALMACEN;
      F1.NumberRC[iRow, IdCols.DescRota] := oProd.DESCROTA;

    end;
    xcrExisTotal.Value := oProd.EXISTOTAL;
    xcrDescRota.Value := oProd.DESCROTA;
    F1.TextRC[iRow, IdCols.ClaveSAT] := oProd.CLAVESAT;
    F1.TextRC[iRow, IdCols.ClaveUnidad] := oProd.CLAVEUNIDAD;
    F1.NumberRC[iRow, IdCols.Cobro_IVA] := oProd.COBRO_IVA;
    F1.NumberRC[iRow, IdCols.Cobro_RETIVA] := oProd.COBRO_RETIVA;
    F1.NumberRC[iRow, IdCols.Cobro_IEPS] := oProd.COBRO_IEPS;
    F1.TextRC[iRow, IdCols.CategProd] := oProd.CATEGPROD;
    F1.NumberRC[iRow, IdCols.Es_Dls] := oProd.ES_DLS;

    if F1.NumberRC[iRow, IdCols.Cancela] = 2 then
      SetFont(iRow, 'CANCELAPARTIDA');

    iRow := iRow + 1;
    tCod := F1.TextRC[iRow, IdCols.CodProdSer];
    tDes := F1.TextRC[iRow, IdCols.DescripPro];

  end;

  PonerFormulas;

end;


procedure TfrmDocsCotiza.DeleteRowsDetalle;
var i,iRowsDel,iMaxRows:Integer;
    tRow:String;
begin
    //No se puede borrar las partidas leidas de la BD
    if F1.NumberRC[F1.Row,IdCols.Partida] > 0 then exit;

    iMaxRows := F1.MaxRow;
    iRowsDel := F1.SelEndRow - F1.SelStartRow + 1;
    F1.DeleteRange(F1.SelStartRow,1,F1.SelEndRow,F1.MaxCol,F1ShiftRows);

    PonerFormulas;
    PonLimite;


end;

procedure TfrmDocsCotiza.InsertRowsDetalle;
var i,iRowsDel,iMaxRows:Integer;
    tRow:String;
begin
    iMaxRows := F1.MaxRow;
    iRowsDel := F1.SelEndRow - F1.SelStartRow + 1;
    F1.InsertRange(F1.SelStartRow,1,F1.SelEndRow,F1.MaxCol,F1ShiftRows);

    PonerFormulas;
    PonLimite;


end;

procedure TfrmDocsCotiza.F1EndRecalc(Sender: TObject);
begin
//  PonerFormulas;
{    xcrDescto.Value := F1.NumberSRC[2,2,1];
    xcrSubTotal.Value := F1.NumberSRC[2,1,1];
    xcrIVA.Value := xcrSubTotal.Value * (xcrPIVA.Value/100);
    xcrTotal.Value := xcrSubTotal.Value + xcrIVA.Value;

    if Tipo_Docto = 1 then
      LlenaFactura
    else
      LlenaFactura2;
  vr:= vr+1;
  ShowMessage('EndRecalc: ' + sm.StrFloat(vr,'#'));
}
//  RefreshF1;
end;

procedure TfrmDocsCotiza.RefreshF1;
begin
    CalculaTotales;

    if Tipo_Docto = 1   then LlenaFactura;
    if Tipo_Docto = 107 then LlenaFactura3; //antes era la LlenaFactura2

    case Tipo_Docto of
    23,232,233,30,302,303,28,282,283:
      begin
        LlenaFactura3;
      end;
    end;
    miVeces := miVeces + 1;
end;

{---------------------------------------------------------------}


procedure TfrmDocsCotiza.xceFolioChange(Sender: TObject);
begin
//    UpdateDocto;
end;

procedure TfrmDocsCotiza.BuscaCliente;
var tCod,tCod2,tDias:String;
    iDias:Integer;
    iError:Integer;
    Continuar:boolean;
begin
    tCod := sm.Strip(xceCodCteProv.Text);
    if length(tCod) <= 0 then exit;

    oCte.CODCTEPROV := tCod;
    oCte.Retrieve;
    if (oCte.Error > 0) then exit;

// Checar que el cliente no esté bloqueado
    if oCte.EDOACTCTE = 2 then begin
        frmMsg.ClearAll;
        frmMsg.AddError (1,'El Cliente ' + oCte.RazSocial + ' está dado de baja temporalmente!!',
                         'Checar con creditos y cobranzas','');
        frmMsg.ShowModal;
        Crear;
        exit;
    end;

    xceNombreCte.Text := oCte.RAZSOCIAL;
    Memo1.Lines := oCte.GetDireccion;
    mmoEntregar.Lines.Clear;
    mmoEntregar.Lines.Add(oCte.ENTREGAR);
    edtPlazo.Text := sm.StrFloat (oCte.DIASCREDIT,'##0');
    tDias := sm.GetDigit(edtPlazo.Text);

    miLista := oCte.LISTPRECIO; //     .GetFieldValue('LISTPRECIO');
    if miLista <= 0 then miLista := 1;
    cboPrecio.Text := sm.StrFloat (miLista,'##');

    if length(tDias) <=0 then iDias :=0 else iDias := StrToInt(tDias);

    if edEstado = edInsert then begin
        xdeFecVenceDo.Text := DateTimeToStr(StrToDateTime(xdeFecha.Text) + iDias);
        xceNumAgente.Text := sm.Strip(oCte.NumAgente);
        BuscaAgente;
        xceViaTrans.Text  := sm.Strip(oCte.VIATRANS);
        BuscaViaTransporte;
    end;

    edtCuentaBanco.Text := oCte.CUENTABANCO;
    edtMetodoPago.Text :=  oCte.METODOPAGO;
    edtReferencia.Text := oCte.REFERENCIA;
    edtNumProveedor.Text := oCte.NUMPROVEEDOR;
    edtComprador.Text    := oCte.JEFECOMPRAS;
    mtZona := oCte.ZONA;

    LeerDesctos;
    LeerDesctos2;


    if edEstado = edInsert then begin
      if (length(xceNumAgente.Text) > 0) and (length(xceViaTrans.Text) > 0) then begin
        pgcMain.ActivePageIndex := 0;
        if pgcCotiza.ActivePageIndex = 1 then
          F1.SetFocus;
      end;
    end;

    if length(Trim(oCte.RFC)) < 7 then begin
        frmMsg.ClearAll;
        frmMsg.AddError (1,'El Cliente ' + oCte.RazSocial + ' tiene errores en su RFC!!',
                         'Checar sus datos.','');
        frmMsg.ShowModal;
    end;

// Checar facturas vencidas del cliente
    if length(xceCodCteProv.Text) > 0 then begin
      ChecarCredito(continuar);
    end;

    if not Continuar then begin
      tbtCreateClick(nil);
      exit;
    end;



    RefreshF1;
end;

procedure TfrmDocsCotiza.BuscaAgente;
begin
//    xceNombreAgente.Text := oTabla.GetDescri(TABLA_AGE,xceNumAgente.Text);
    oAge.NUMAGENTE := xceNumAgente.Text;
    oAge.Retrieve;
    if oAge.Error <> 0 then exit;

    xceNombreAgente.Text := oAge.NOMBAGEN;
    SeleccionaAlmacen(oAge.IDSUCURSAL);
end;

procedure TfrmDocsCotiza.BuscaViaTransporte;
begin
    xceNombreTransp.Text := oTabla.GetDescri(TABLA_TRA,xceViaTrans.Text);

end;

function TfrmDocsCotiza.VerificaFactura:Boolean;
var i,iMaxRow,iRen:Integer;
    dPrecio,dCantidad,dTotal:Double;
    tCodPS,tDescri:String;
    fRes:boolean;
begin
    fRes := True;

// Checar el agente
  if (length(xceNumAgente.Text) <= 0) then begin
    frmMsg.AddMsg ('El Agente NO puede estar vacio!!');
    fRes := False;
  end;
// Checar la via de transporte
  if (length(Trim(xceViaTrans.Text)) <= 0) or (length(Trim(xceNombreTransp.Text)) <= 0) then begin
    frmMsg.AddMsg ('La Vía de Transporte NO puede estar vacia!!');
    fRes := False;
  end;


    iMaxRow := f1.MaxRow;
    for iRen := 1 to iMaxRow do begin
        tCodPS := F1.TextRC[iRen,IdCols.CodProdSer];
        tCodPS := sm.Strip (tCodPS);
        tDescri := sm.Strip(F1.TextRC[iRen,IdCols.DescripPro]);
        if (length(tCodPS) > 0) then begin
            dPrecio := F1.NumberRC[iRen,IdCols.PrecioNeto];
            dCantidad := F1.NumberRC[iRen,IdCols.Unidades];
            dTotal    := F1.NumberRC[iRen,IdCols.ImpNetoMov];

            if (dPrecio <= 0) or (dCantidad <= 0) or (dTotal <= 0) then begin
                frmMsg.AddMsg ('El producto '+tCodPS+' tiene errores en Precio, Cantidad o Total!!');
                frmMsg.AddAxn ('Precio   = ' + sm.StrFloat(dPrecio,'#,##0.00'));
                frmMsg.AddAxn ('Cantidad = ' + sm.StrFloat(dCantidad,'#,##0.00'));
                frmMsg.AddAxn ('Total    = ' + sm.StrFloat(dTotal,'#,##0.00'));
                fRes := False;

            end;
        end;
    end;

//    RefreshF1;

    Result := fRes;

end;

procedure TfrmDocsCotiza.ImprimirDoc;
begin
  F11.FilePrint(True);
end;
{procedure TfrmDocs.ImprimirDoc;
var prnFac:TPrintTxt;
    i,iRen,iMaxRow,iVacios,r,iDia,iMes,iAno:Integer;
    dPrecio,dCantidad,dTotal,dTasaMora,dDescto:Double;
    tLetra,tLetra1,tLetra2,tCodPS,tDescri,tLinea,tFmtDir,tUMedida:String;
    vAux:Variant;
    fOk,fHayDescto:Boolean;
    tCL:TStringList;
begin

    prnFac := TPrintTxt.Create;
    tCL := TStringList.Create;

    //Checar si hay algun descuento en la factura
    fHayDescto := HayDescuento;

   tFmtDir := oIni.ReadString('DIRECTORIOS','FORMATOS','');

    prnFac.FormatFile := tFmtDir+'Fmt_Factura.prn';
//    Memo1.Lines := prnFac.slConfig ;
    vAux := xceFolio.Text;
    prnFac.SetValue('ENCABEZADO','FOLIO',vAux);
    vAux := oCte.RFC; //     oCte.GetFieldValue ('RFC');
    prnFac.SetValue('ENCABEZADO','LUGAR',mtLugarExp);
    prnFac.SetValue('ENCABEZADO','RFC',vAux);
    vAux := xdeFecha.Text;
    prnFac.SetValue('ENCABEZADO','FECHA',vAux);
    vaux := xceCodCteProv.Text;
    prnFac.SetValue('ENCABEZADO','CODCTE',vAux);
    vAux := xceNombreCte.Text;
    prnFac.SetValue('ENCABEZADO','RAZSOCIAL',vAux);
    vAux := Memo1.Lines.Strings[0];
    prnFac.SetValue('ENCABEZADO','DIREC1',vAux);
    vAux := Memo1.Lines.Strings[1];
    prnFac.SetValue('ENCABEZADO','DIREC2',vAux);
    vAux := Memo1.Lines.Strings[2];
    prnFac.SetValue('ENCABEZADO','DIREC3',vAux);
    vAux := xceNombreTransp.Text;
    prnFac.SetValue('ENCABEZADO','TRANSP',vAux);
    vAux := Memo1.Lines.Strings[3];
    prnFac.SetValue('ENCABEZADO','TELS',vAux);
    vAux := xcePedido.Text;
    prnFac.SetValue('ENCABEZADO','PEDIDO',vAux);
    vAux := xceNombreAgente.Text;
    prnFac.SetValue('ENCABEZADO','AGENTE',vAux);
    vAux := edtPlazo.Text + ' Dias';
    prnFac.SetValue('ENCABEZADO','CONDICIONES',vAux);
{-----------------------------------------------------
---- 29/Oct/2003
---- Se eliminó la impresión del descto ya que se aplica directamente al precio
    if fHayDescto then
        prnFac.SetValue('ENCABEZADO','ENCA1','');
-------------------------------------------------------}
{
    iMaxRow := f1.MaxRow;
    for iRen := 1 to iMaxRow do begin
        tCodPS := F1.TextRC[iRen,IdCols.CodProdSer];
        tCodPS := sm.Strip (tCodPS);
        tDescri   := F1.TextRC[iRen,IdCols.DescripPro];
        if (length(tCodPS) > 0) or (length(tDescri) > 0)  then begin

            dPrecio := F1.NumberRC[iRen,IDCols.PrecioNeto];
            dCantidad := F1.NumberRC[iRen,IdCols.Unidades];
            dDescto   := F1.NumberRC[iRen,IdCols.PorcDescAu];
            dTotal    := F1.NumberRC[iRen,IdCols.ImpNetoMov];
            tDescri   := F1.TextRC[iRen,IdCols.DescripPro];
            tUMedida  := F1.TextRC[iRen,IdCols.UniVta];
          if (length(tCodPS) > 0) then begin
          // Solo imprimir cantidades cuando NO es un texto en la descripción
            prnFac.SetValue('DETALLE','CANTIDAD',dCantidad);
            prnFac.SetValue('DETALLE','UMEDIDA',tUMedida);
            prnFac.SetValue('DETALLE','CODIGO',tCodPS);
            prnFac.SetValue('DETALLE','DESCRI',tDescri);
            prnFac.SetValue('DETALLE','PRECIO',dPrecio);
            prnFac.SetValue('DETALLE','PRECIOEXT',dTotal)
          end else begin
            prnFac.SetValue('DETALLE','DESCRI',tDescri);
          end;
{-----------------------------------------------------
---- 29/Oct/2003
---- Se eliminó la impresión del descto ya que se aplica directamente al precio
            if fHayDescto then
                prnFac.SetValue('DETALLE','PORCDESC',dDescto);
-------------------------------------------------------}
{        end;
    end;


    prnFac.SetValue('PIE','LINEA1','');
    prnFac.SetValue('PIE','LINEA2','');
    prnFac.SetValue('PIE','LINEA3','');
}
{-----------------------------------------------------
---- 29/Oct/2003
---- Se eliminó la impresión del descto ya que se aplica directamente al precio
    if fHayDescto then begin
        prnFac.SetValue('PIE','LINEA4','');
        prnFac.SetValue('PIE','DESCUENTO',xcrDescto.Value);
    end;
-------------------------------------------------------}
{    prnFac.SetValue('PIE','SUBTOTAL',xcrSubTotal.Value);
    prnFac.SetValue('PIE','IVA',xcrIVA.Value);
    prnFac.SetValue('PIE','TOTAL',xcrTotal.Value);

    if oDoc.MONEDADOCT = '1' then begin
        InWords.SelectLocale (CTRY_MEXICO,LANG_SPANISH);
        tLetra := InWords.Money (xcrTotal.Value,noEuro);
    end else begin
        InWords.SelectLocale (CTRY_UNITED_STATES,LANG_ENGLISH);
        tLetra := InWords.Money (xcrTotal.Value,noEuro);
    end;

    tLetra := upperCase(tLetra);
    tLetra := '**'+tLetra+'**';

    tCL := WrapText(tLetra,60);


//    tLetra := NumToLetraMON(xcrTotal.Value);
    prnFac.SetValue('PIE','CLETRA1',Trim(tCL.Strings[0]));
    prnFac.SetValue('PIE','CLETRA2',Trim(tCL.Strings[1]));
    iDia := ESBDates.Date2Day (xdeFecVenceDo.date);
    prnFac.SetValue('PIE','DIAVENC',iDia);
    iMes := ESBDates.Date2Month (xdeFecVenceDo.date);
    prnFac.SetValue('PIE','MESVENC',iMes);
    iAno := ESBDates.Date2Year (xdeFecVenceDo.date);
    prnFac.SetValue('PIE','ANOVENC',iAno);
    oParam.CODPAR := 'TASAMORA';
    dTasaMora := oParam.VALORNUM;
    prnFac.SetValue('PIE','TASAMORA',dTasaMora);

    Raw1.BeginDoc;
    for r:= 0 to prnFac.Paper.Count - 1 do begin
        tLinea := prnFac.Paper.Strings[r];
        Raw1.WriteLn (tLinea);
    end;
    Raw1.EndDoc;

    tCL.Free;

end;
}
procedure TfrmDocsCotiza.ImprimirPedido;
var prnFac:TPrintTxt;
    i,iRen,iMaxRow,iVacios,r:Integer;
    dPrecio,dPrecioNeto,dCantidad,dTotal,dDescto:Double;
    tLetra,tCodPS,tDescri,tLinea,tFmtDir,tUMedida:String;
    vAux:Variant;
    tCL:TStringList;
begin
    prnFac := TPrintTxt.Create;
    tCL := TStringList.Create;

   tFmtDir := oIni.ReadString('DIRECTORIOS','FORMATOS','');


    prnFac.FormatFile := tFmtDir+'Fmt_Pedido.prn';
//    Memo1.Lines := prnFac.slConfig ;
    prnFac.SetValue('ENCABEZADO','ENCA1','');
    prnFac.SetValue('ENCABEZADO','ENCA2','');
    prnFac.SetValue('ENCABEZADO','ENCA3','');
    prnFac.SetValue('ENCABEZADO','ENCA4','');
    vAux := xceFolio.Text;
    prnFac.SetValue('ENCABEZADO','FOLIO',vAux);
    vAux := oCte.RFC; //     oCte.GetFieldValue ('RFC');
    prnFac.SetValue('ENCABEZADO','RFC',vAux);
    vAux := xdeFecha.Text;
    prnFac.SetValue('ENCABEZADO','FECHA',vAux);
    vaux := xceCodCteProv.Text;
    prnFac.SetValue('ENCABEZADO','CODCTE',vAux);
    vAux := xceNombreCte.Text;
    prnFac.SetValue('ENCABEZADO','RAZSOCIAL',vAux);
    vAux := Memo1.Lines.Strings[0];
    prnFac.SetValue('ENCABEZADO','DIREC1',vAux);
    vAux := Memo1.Lines.Strings[1];
    prnFac.SetValue('ENCABEZADO','DIREC2',vAux);
    vAux := Memo1.Lines.Strings[2];
    prnFac.SetValue('ENCABEZADO','DIREC3',vAux);
    prnFac.SetValue('ENCABEZADO','LUGAR',mtLugarExp);
    vAux := xceNombreTransp.Text;
    prnFac.SetValue('ENCABEZADO','TRANSP',vAux);
    vAux := Memo1.Lines.Strings[3];
    prnFac.SetValue('ENCABEZADO','TELS',vAux);
//    vAux := xcePedido.Text;
//    prnFac.SetValue('ENCABEZADO','PEDIDO',vAux);
    vAux := xceNombreAgente.Text;
    prnFac.SetValue('ENCABEZADO','AGENTE',vAux);
    vAux := edtPlazo.Text + ' Dias';
    prnFac.SetValue('ENCABEZADO','CONDICIONES',vAux);
    prnFac.SetValue('ENCABEZADO','ENCA1','');

    iMaxRow := f1.MaxRow;
    for iRen := 1 to iMaxRow do begin
        tCodPS := F1.TextRC[iRen,IdCols.CodProdSer];
        tCodPS := sm.Strip (tCodPS);
        if length(tCodPS) > 0  then begin
            iVacios := 0; //Al encontrar un codigo limpio el contador de vacios
            dPrecio := F1.NumberRC[iRen,IdCols.PrecioLista];
            dPrecioNeto := F1.NumberRC[iRen,IdCols.PrecioNeto];
            dCantidad := F1.NumberRC[iRen,IdCols.Unidades];
            dDescto   := F1.NumberRC[iRen,IdCols.PorcDescAu];
            dTotal    := F1.NumberRC[iRen,IdCols.ImpNetoMov];
            tDescri   := F1.TextRC[iRen,IdCols.DescripPro];
            tUMedida  := F1.TextRC[iRen,IdCols.UniVta];
            prnFac.SetValue('DETALLE','CANTIDAD',dCantidad);
            prnFac.SetValue('DETALLE','UMEDIDA',tUMedida);
            prnFac.SetValue('DETALLE','CODIGO',tCodPS);
            prnFac.SetValue('DETALLE','DESCRI',tDescri);
            prnFac.SetValue('DETALLE','PRECIO',dPrecio);
            prnFac.SetValue('DETALLE','PORCDESC',dDescto);
            prnFac.SetValue('DETALLE','PRECIONETO',dPrecioNeto);
            prnFac.SetValue('DETALLE','PRECIOEXT',dTotal);
        end;
    end;


//    prnFac.SetValue('PIE','LINEA4','');
//    prnFac.SetValue('PIE','DESCUENTO',xcrDescto.Value);
    prnFac.SetValue('PIE','SUBTOTAL',xcrSubTotal.Value);
//    prnFac.SetValue('PIE','IVA',xcrIVA.Value);
//    prnFac.SetValue('PIE','TOTAL',xcrTotal.Value);

    if oDoc.MONEDADOCT = '1' then begin
        InWords.SelectLocale (CTRY_MEXICO,LANG_SPANISH);
        tLetra := InWords.Money (xcrSubTotal.Value,noEuro);
    end else begin
        InWords.SelectLocale (CTRY_UNITED_STATES,LANG_ENGLISH);
        tLetra := InWords.Money (xcrSubTotal.Value,noEuro);
    end;

    tLetra := upperCase(tLetra);
    tLetra := '(**'+tLetra+'**)';

    tCL := WrapText(tLetra,60);

    prnFac.SetValue('PIE','CLETRA1',Trim(tCL.Strings[0]));
    prnFac.SetValue('PIE','CLETRA2',Trim(tCL.Strings[1]));


    Raw1.BeginDoc;
    for r:= 0 to prnFac.Paper.Count - 1 do begin
        tLinea := prnFac.Paper.Strings[r];
        Raw1.WriteLn (tLinea);
    end;
    Raw1.EndDoc;

    tCL.Free;

    ShowMessage('Acabe de imprimir');

end;

procedure TfrmDocsCotiza.xceCodCteProvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_F3:    SelectCliente(1,xceCodCteProv.Text);
    VK_F4:    SelectCliente(2,xceNombreCte.Text);
    VK_Return: BuscaCliente
    end;


end;

procedure TfrmDocsCotiza.xceNumAgenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_F3: begin
               TipoTabla := TABLA_AGE;
               SelectAgente(1,xceNumAgente.Text);
            end;
    VK_F4:  begin
               TipoTabla := TABLA_AGE;
                SelectAgente(2,xceNombreAgente.Text);
            end;
    VK_RETURN: BuscaAgente;
    end;

end;

procedure TfrmDocsCotiza.xceObservacionesLineColChange(Sender: TObject; Line,
  Column: Integer);
begin
  lblLinCol.Caption := 'Lin: ' + sm.StrFloat(Line,'0',2,' ') + ' Col: ' + sm.StrFloat(Column,'0',2,' ')

end;

procedure TfrmDocsCotiza.xceViaTransKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_F3: begin
               TipoTabla := TABLA_TRA;
               SelectTransp(1,xceViaTrans.Text);
            end;
    VK_F4:  begin
               TipoTabla := TABLA_TRA;
                SelectTransp(2,xceNombreTransp.Text);
            end;
    VK_Return: BuscaViaTransporte;
    end;

end;

procedure TfrmDocsCotiza.xcrExisTotalChange(Sender: TObject);
begin
  xcrExisTotal2.value := xcrExisTotal.value;
end;

procedure TfrmDocsCotiza.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_ESCAPE: Crear;
    VK_F5:    Crear;
    VK_F6:    tbtGrabarClick(Sender);
    VK_F7:    tbtImprimirClick(Sender);
    VK_F9:    SelectDocs;
    end;


end;

procedure TfrmDocsCotiza.xceFolioButtonClick(Sender: TObject);
begin
//    LoadF11;
    Leer;
end;

procedure TfrmDocsCotiza.xceFolioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_RETURN:
      begin
//        LoadF11;
        Leer;
      end;
    end;

end;

procedure TfrmDocsCotiza.F1EndEdit(Sender: TObject; var EditString: WideString;
  var Cancel: Smallint);
var
    dCant:Double;
    tES:String;
begin
  if length(Trim(EditString)) <= 0 then exit;

    if F1.Col = 1 then begin
        EditString := UpperCase(EditString);
        GetProducto(EditString);
        EditString := oProd.CODPRODSER;
    end;
    if F1.Col = 2 then begin
        tES := EditString;
//        tES := sm.GetDigit (tES);
        if length(tES) > 0 then dCant := StrToFloat(tES) else dCant :=0;
        if dCant > 0 then begin
        {
            if (xcrExisTotal.Value - dCant < 0) then begin
                frmMsg.clearall;
                frmMsg.AddMsg ('La existencia del producto es negativa!');
                frmMsg.ShowModal;
            end;
        }
        end;
    end;

    if F1.Col = 4 then begin
        tES := EditString;
        if length(tES) > 0 then dCant := StrToFloat(tES) else dCant :=0;
        if dCant > 0 then begin
            if (dCant < F1.NumberRC[F1.Row,IdCols.CostoMov]) then begin
                frmMsg.clearall;
                frmMsg.AddMsg ('El Precio es menor al costo del producto!');
                frmMsg.ShowModal;
//                Cancel := 1;
            end;
        end;
    end;

    Timer2.Enabled := True;

    cboMoneda.Enabled := False;

end;

procedure TfrmDocsCotiza.F12EndEdit(Sender: TObject; var EditString: WideString;
  var Cancel: Smallint);
var tProd:String;
begin
  BuildCodigo;
  tProd := F1.TextRC[F1.Row,IdCols.CodProdSer];
  GetProducto(tProd);
  EditString := sm.GetDigit(EditString);

  if EditString = '' then exit;

  F1.NumberRC[F1.Row,IDCols.Unidades] := StrToInt(EditString);
  if F1.Row < F1.MaxRow then
    F1.Row := F1.Row + 1;

  RefreshF1;
  
end;

procedure TfrmDocsCotiza.F12DblClick(Sender: TObject; nRow, nCol: Integer);
var tProd:String;
    dCant:Double;
begin
  if (F12.Row < 4) and (F12.Col < 3) then exit;

  BuildCodigo;
  tProd := F1.TextRC[F1.Row,IdCols.CodProdSer];
  GetProducto(tProd);
  dCant := F12.NumberRC[F12.Row,F12.Col];

  if dCant = 0 then begin
    dCant := 1;
    F12.NumberRC[F12.Row,F12.Col] := dCant;
  end;

  F1.NumberRC[F1.Row,IDCols.Unidades] := dCant;
  if F1.Row < F1.MaxRow then
    F1.Row := F1.Row + 1;

  RefreshF1;

end;

procedure TfrmDocsCotiza.F1StartEdit(Sender: TObject; var EditString: WideString;
  var Cancel: Smallint);
begin
//  if edEstado = edBrowse then Cancel := 1;
  if (F1.NumberRC[F1.Row,IdCols.Partida] > 0) then Cancel := 1;
  if (not ColFac[F1.Col].Editable) then Cancel := 1;
  if F1.Col = IdCols.PrecioLista then
    if (F1.TextRC[F1.Row,IdCols.Captura] <> '1') then Cancel := 1;
end;

procedure TfrmDocsCotiza.F11StartEdit(Sender: TObject; var EditString: WideString;
  var Cancel: Smallint);
begin
  if edEstado = edBrowse then Cancel := 1;
end;

procedure TfrmDocsCotiza.xsbCalcularMEClick(Sender: TObject);
var iRow:Integer;
    ptCod:String;
begin
    iRow := GetNextrow;
    F1.Row := iRow;
    ptCod := 'ASH-9998';
    F1.TextRC[iRow,IdCols.CodProdSer] := ptCod;
    GetProducto(ptCod);
    F1.NumberRC[iRow,IdCols.Unidades] := 1;
    F1.NumberRC[iRow,IdCols.PrecioLista] := xcrSubTotal.Value * 0.03;
    F1.NumberRC[iRow,IdCols.PorcDescAu] := 0;  //Columna de Descto

    if pgcCotiza.ActivePageIndex = 1 then
      F1.SetFocus;


end;

procedure TfrmDocsCotiza.VerFoto;
var tFile:String;
    iRow:Integer;
begin
    iRow := F1.Row;
//    tFile := sm.Strip(F1.TextRC[iRow,IdCols.PathFoto]);
    tFile := sm.Strip(F1.TextRC[iRow,IdCols.CodProdSer]);
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

    xlbDescri.Caption := F1.TextRC[iRow,IdCols.DescripPro];

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
procedure TfrmDocsCotiza.VerExistencia;
var iRow:Integer;
begin
    iRow := F1.Row;
    xcrExisTotal.Value   := F1.NumberRC[iRow,IdCols.ExisTotal];
    xcrExisAlmacen.Value := F1.NumberRC[iRow,IdCols.ExisAlmacen];
    xcrDescRota.Value  := F1.NumberRC[iRow,IdCols.DescRota];
{
    if F1.NumberRC[iRow,IdCols.TipoCalculo] = 2 then begin
      zlbTipoCalc.Color := clRed;
      zlbTipoCalc.Caption := '2: %Margen'
    end else begin
      zlbTipoCalc.Color := clLime;
      zlbTipoCalc.Caption := '1: %Descuento'
    end;
    }
end;

procedure TfrmDocsCotiza.VerPedimento;
var iRow:Integer;
    tPedi:String;
begin
    iRow := F1.Row;
    tPedi := F1.TextRC[iRow,IdCols.Pedimento];
    if (length(tPedi) > 0) then begin
      xcePedimento.Text := tPedi;
      xcePedimento.Visible := True;
      lblPedimento.Visible := True;
      xsbPedimento.Visible := True;
    end else begin
      xcePedimento.Text := '';
      xcePedimento.Visible := False;
      lblPedimento.Visible := False;
      xsbPedimento.Visible := False;
    end;
end;

procedure TfrmDocsCotiza.F1SelChange(Sender: TObject);
begin
    VerFoto;
    VerExistencia;
    VerPedimento;
end;

procedure TfrmDocsCotiza.MoverCursor(Key: Word;piTimes:Integer);
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
procedure TfrmDocsCotiza.Timer2Timer(Sender: TObject);
begin
    if oProd.EDOACTPROD = 2 then begin
        MoverCursor(VK_LEFT,1);
        Timer2.Enabled := False;
        exit;
    end;

    if F1.Col = 1 then begin
        MoverCursor(VK_RIGHT,1);
    end else begin
        if F1.Col = 2 then begin
{            MoverCursor(VK_LEFT,1);
            MoverCursor(VK_DOWN,1);
}
        end;
    end;

    Timer2.Enabled := False;
    RefreshF1;

end;

procedure TfrmDocsCotiza.xsbAmpliarClick(Sender: TObject);
begin
    frmVerImagen := TfrmVerImagen.Create (Application);
    frmVerImagen.imgFoto.Picture  := imgFoto.Picture;
    frmVerImagen.ShowModal;
end;

procedure TfrmDocsCotiza.tbtSaldosClick(Sender: TObject);
begin
    SelectSaldos;
end;

procedure TfrmDocsCotiza.cboMonedaClick(Sender: TObject);
begin
    GetTipoCambio;
//    oParam.CODPAR := 'IVA';
//    xcrPIVA.Value := oParam.VALORNUM;
//    if oDoc.MONEDADOCT <> '1' then begin
//        xcrPIVA.Value := 0
//    end;
//    LimpiarDetalle;
end;

procedure TfrmDocsCotiza.cboNumAlmacChange(Sender: TObject);
begin
  zlbAlmacen.Caption := cboNumalmac.Text;
  oProd.NUMALMAC   := Trim(sm.NthWord (1,cboNumAlmac.Text,['|']));

end;

procedure TfrmDocsCotiza.GetTipoCambio;
begin

    oMon.MONEDA := Trim(sm.NthWord (1,cboMoneda.Text));
//  oMon.Fecha := xdeFecha.Date;
//    xcrTipoCambio.Value := oMon.GetTipoCambio;
//    if (xcrTipoCambio.Value) <= 0 then xcrTipoCambio.Value := 1;
    oDoc.MONEDADOCT := oMon.MONEDA;

  lblMoneda2.Caption := sm.Between('(',')',cboMoneda.Text);

end;

function TfrmDocsCotiza.HayDescuento:Boolean;
var i:integer;
begin
    Result := False;
    for i:= 1 to F1.MaxRow do begin
        if F1.NumberRC[i,idCols.PorcDescAu] > 0 then begin
            Result := True;
            break;
        end;
    end;

end;

procedure TfrmDocsCotiza.xsbPedimentoClick(Sender: TObject);
begin
  F1.TextRC[F1.Row, IdCols.cmNumTipoDoc] := '';
  F1.TextRC[F1.Row, IdCols.cmSerieDocto] := '';
  F1.TextRC[F1.Row, IdCols.cmNumDocto]   := '';
  F1.TextRC[F1.Row, IdCols.cmNumMovto]   := '';
  F1.TextRC[F1.Row, IdCols.Pedimento]    := '';
  F1.NumberRC[F1.Row, IdCols.FechaEnt]   := 0;
  F1.TextRC[F1.Row, IdCols.Aduana]       := '';
  F1.NumberRC[F1.Row, IdCols.UniPedimento]:= 0;

  VerPedimento;
end;
procedure TfrmDocsCotiza.PonLimite;
{Objetivo: Pone una marca en el datalle para indicar hasta donde se puede llenar la factura.
           La factura permite solo 23 renglones.
           Los datos del pedimento utilizan un renglon más
}
var i,iRenUti:integer;
    tCod,tDes,tPedi:String;
begin
{
  case Tipo_Docto of
    1,107,23,232,233,28,282,283,30,302,303: exit;
  end;
}
  // Obtener cuantos renglones necesito
  F1.DoSelChange := False;
  iRenUti := 0;
  for i:= 1 to F1.MaxRow do begin
    tCod  := F1.TextRC[i,IdCols.CodProdSer];
    tDes  := F1.TextRC[i,IdCols.DescripPro];
    tPedi := F1.TextRC[i,IdCols.Pedimento];

    if (length(tCod) > 0) or (length(tDes) > 0) then begin
      iRenUti := iRenUti + 1;
    end;
  end;

  cboMoneda.Enabled := (iRenUti<=0);


//  miRenLimite := miRenFac - iRenUti; //Renglones de la factura - lo que llevo utilizados
//  F1.MaxRow := miRenLimite;

  f1.DoSelChange := True;

end;

procedure TfrmDocsCotiza.ClearDesctos;
begin
  F2.ClearRange(7, 1, F1.MaxRow, F1.MaxCol, F1ClearValues);
end;

procedure TfrmDocsCotiza.LeerDesctos;
var
  tSql, tCte, tFam: string;
  RenIni, r: integer;
begin

  ClearDesctos;

  F2.TextRC[2, 2] := oEmp.RAZSOCIAL;
  F2.TextRC[4, 3] := xceNombreCte.TExt;
  tCte := xceCodCteProv.Text;
  RenIni := 7;
  r := RenIni;

  with DM1 do
  begin
    tSql := '';
    tSql := tSql + 'SELECT CODFAM,DESCRIPFAM ';
    tSql := tSql + 'FROM MBA10040 ';
    tSql := tSql + 'ORDER BY CODFAM ';
    icuTemp.Unprepare;
    icuTemp.SQL.Clear;
    icuTemp.SQL.Add(tSql);
    icuTemp.prepare;
    icuTemp.Open;
    while not icuTemp.Eof do
    begin
      F2.TextRC[r, 2] := icuTemp.FieldByName('CODFAM').AsString;
      F2.TextRC[r, 3] := icuTemp.FieldByName('DESCRIPFAM').AsString;
      icuTemp.Next;
      r := r + 1;
    end;
    icuTemp.Close;

    tSql := '';
    tSql := tSql + 'SELECT CODCTEPROV,CODFAM,PCT1,PCT2,PCT3,PCT4,PCT5 ';
    tSql := tSql + 'FROM MBA10080 ';
    tSql := tSql + 'WHERE (CODCTEPROV = ?CODCTEPROV)  AND (CODFAM = ?CODFAM); ';
    icuTemp.Unprepare;
    icuTemp.SQL.Clear;
    icuTemp.SQL.Add(tSql);
    icuTemp.prepare;

    for r := RenIni to F1.MaxRow do
    begin
      tFam := F2.TextRC[r, 2];
      if length(tFam) <= 0 then
        break;

      icuTemp.ParamByName('CODCTEPROV').AsString := tCte;
      icuTemp.ParamByName('CODFAM').AsString := tFam;
      icuTemp.Open;
      if icuTemp.RecordCount > 0 then
      begin
        F2.NumberRC[r, 4] := icuTemp.FieldByName('PCT1').AsDouble;
        F2.NumberRC[r, 5] := icuTemp.FieldByName('PCT2').AsDouble;
        F2.NumberRC[r, 6] := icuTemp.FieldByName('PCT3').AsDouble;
        F2.NumberRC[r, 7] := icuTemp.FieldByName('PCT4').AsDouble;
        F2.NumberRC[r, 8] := icuTemp.FieldByName('PCT5').AsDouble;
      end;
      icuTemp.Close;
    end;
  end;
end;

procedure TfrmDocsCotiza.ClearDesctos2;
begin
  F21.ClearRange(7, 1, F1.MaxRow, F1.MaxCol, F1ClearValues);
end;
procedure TfrmDocsCotiza.LeerDesctos2;
var
  tSql, tCte, tFam: string;
  RenIni, r: integer;
begin

  ClearDesctos2;

  F21.TextRC[2, 2] := oEmp.RAZSOCIAL;
  F21.TextRC[4, 3] := xceNombreCte.TExt;
  tCte := xceCodCteProv.Text;
  RenIni := 7;
  r := RenIni;

  with DM1 do
  begin
    tSql := '';
    tSql := tSql + 'SELECT CODFAM,DESCRIPFAM ';
    tSql := tSql + 'FROM MBA10040 ';
    tSql := tSql + 'ORDER BY CODFAM ';
    icuTemp.Unprepare;
    icuTemp.SQL.Clear;
    icuTemp.SQL.Add(tSql);
    icuTemp.prepare;
    icuTemp.Open;
    while not icuTemp.Eof do
    begin
      F21.TextRC[r, 2] := icuTemp.FieldByName('CODFAM').AsString;
      F21.TextRC[r, 3] := icuTemp.FieldByName('DESCRIPFAM').AsString;
      icuTemp.Next;
      r := r + 1;
    end;
    icuTemp.Close;

    tSql := '';
    tSql := tSql + 'SELECT CODCTEPROV,CODFAM,PCT1,PCT2,PCT3,PCT4,PCT5 ';
    tSql := tSql + 'FROM MBA10080 ';
    tSql := tSql + 'WHERE (CODCTEPROV = ?CODCTEPROV)  AND (CODFAM = ?CODFAM); ';
    icuTemp.Unprepare;
    icuTemp.SQL.Clear;
    icuTemp.SQL.Add(tSql);
    icuTemp.prepare;

    for r := RenIni to F1.MaxRow do
    begin
      tFam := F21.TextRC[r, 2];
      if length(tFam) <= 0 then
        break;

      icuTemp.ParamByName('CODCTEPROV').AsString := tCte;
      icuTemp.ParamByName('CODFAM').AsString := tFam;
      icuTemp.Open;
      if icuTemp.RecordCount > 0 then
      begin
        F21.NumberRC[r, 4] := icuTemp.FieldByName('PCT1').AsDouble;
        F21.NumberRC[r, 5] := icuTemp.FieldByName('PCT2').AsDouble;
        F21.NumberRC[r, 6] := icuTemp.FieldByName('PCT3').AsDouble;
        F21.NumberRC[r, 7] := icuTemp.FieldByName('PCT4').AsDouble;
        F21.NumberRC[r, 8] := icuTemp.FieldByName('PCT5').AsDouble;
      end;
      icuTemp.Close;
    end;
  end;
end;

procedure TfrmDocsCotiza.LlenaFactura;
var tSql,tCodPS,tLetra:String;
    iR1,iR2,iR3,iC1,r,iRen,iVacios,iPartida,iCount:integer;
    iA,iM,iD:Integer;
    tFecha,tMes:String;
    tCL:TStringList;
    v:Variant;
begin

  if mfLoading then exit;

  tCL := TStringList.Create;
  tFecha := ESBDates.Date2StrLong(xdeFecha.Date);
// Llenar datos de la factura
  F11.TextRC[4,11] := xceFolio.Text;
  F11.TextRC[7,9] := tFecha;
  F11.TExtRC[8,10] := edtPlazo.Text;
  F11.TExtRC[8,11] := 'Días';
  F11.TExtRC[9,10] := xceOC.Text;
  F11.TExtRC[10,10] := mmoEntregar.Lines.Strings[0];
  F11.TExtRC[11,10] := mmoEntregar.Lines.Strings[1];
// Llenar datos del cliente
  F11.TExtRC[7,2] := xceNombreCte.Text;
  F11.TExtRC[8,2] := Memo1.Lines.Strings[0];
  F11.TExtRC[9,2] := Memo1.Lines.Strings[1];
  F11.TExtRC[10,2] := Memo1.Lines.Strings[2];
  F11.TExtRC[11,2] := Memo1.Lines.Strings[4];

  GetRC('RENINIDET',iR1,iC1);
  if iR1 < 1 then exit;


  for iRen := 1 to F1.MaxRow do begin
    tCodPS := F1.TextRC[iRen,IdCols.CodProdSer];
    tCodPS := sm.Strip (tCodPS);
    if ((length(tCodPS) > 0) and (F1.NumberRC[iRen,IdCols.Unidades] > 0)) or
        (length(F1.TextRC[iRen,IdCols.DescripPro]) > 0) then begin
      iVacios := 0; //Al encontrar un codigo limpio el contador de vacios
      iPartida := iPartida + 1;

      case Tipo_Docto of
        1: F11.NumberRC[iR1,1] := iPartida;
        107,23,232,233: F11.TextRC[iR1,1] := tCodPS;
      end;
      F11.NumberRC[iR1,2] := F1.NumberRC[iRen,IdCols.Unidades];
      F11.TextRC[iR1,3] := F1.TExtRC[iRen,IdCols.DescripPro];
      F11.NumberRC[iR1,9] := F1.NumberRC[iRen,IdCols.PrecioLista];
      F11.NumberRC[iR1,10] := F1.NumberRC[iRen,IdCols.PrecioNeto];
      F11.NumberRC[iR1,11] := F1.NumberRC[iRen,IdCols.ImpNetoMov];
    end else begin
      F11.ClearRange(iR1,1,iR1,11,F1ClearValues);

    end;
    iR1 := iR1 + 1;

    iVacios := iVacios + 1;

  end;

  GetRC('SUBTOTAL',iR2,iC1);
  if iR2 < 1 then exit;

  F11.NumberRC[iR2+0,11] := xcrSubTotal.Value;
  F11.NumberRC[iR2+1,11] := xcrIva.Value;
  F11.NumberRC[iR2+2,11] := xcrTotal.Value;

  if oDoc.MONEDADOCT = '1' then begin
      InWords.SelectLocale (CTRY_MEXICO,LANG_SPANISH);
      tLetra := InWords.Money (xcrTotal.Value,noEuro);
  end else begin
      InWords.SelectLocale (CTRY_UNITED_STATES,LANG_ENGLISH);
      tLetra := InWords.Money (xcrTotal.Value,noEuro);
  end;

  tLetra := upperCase(tLetra);
  tLetra := '**('+tLetra+')**';

  tCL := WrapText(tLetra,60);

  GetRC('CLETRA',iR2,iC1);
  if iR2 < 1 then exit;

  F11.TextRC[iR2,3] := tLetra;
// Fechas de la parte de abajo de la factura
  ESBDates.OptDecodeDateI(xdeFecha.Date,iA,iM,iD);
  tMes := ESBDates.Date2LongMonthSp(xdeFecha.Date);
  iR1 := 48;
  F11.NumberRC[iR1,5] := iD;
  F11.TextRC[iR1,6] := tMes;
  F11.NumberRC[iR1,8] := iA;

  ESBDates.OptDecodeDateI(xdeFecVenceDO.Date,iA,iM,iD);
  tMes := ESBDates.Date2LongMonthSp(xdeFecVenceDo.Date);
  iR1 := 44;
  F11.NumberRC[iR1,5] := iD;
  F11.TextRC[iR1,6] := tMes;
  F11.NumberRC[iR1,8] := iA;

// Imprimir las leyendas
  iCount := mmoLeyendas.Lines.Count;
  v := speColIni.Value;
  iC1 := v;

  for r := 0 to iCount - 1 do begin
    F11.TextRC[iR1 + r, iC1] := mmoLeyendas.Lines.Strings[r];
  end;

  tCL.Free;
end;

procedure TfrmDocsCotiza.LlenaFactura2;
var tSql,tCodPS,tLetra,tSel:String;
    iR1,iC1,r,iRen,iVacios,iPartida,iCount,iR2,iRLast:integer;
    iA,iM,iD:Integer;
    tFecha,tMes:String;
    tCL:TStringList;
    v:Variant;
begin

  if mfLoading then exit;

  tCL := TStringList.Create;
  tFecha := ESBDates.Date2StrLong(xdeFecha.Date);
// Llenar datos de la factura
  F11.TextRC[4,11] := xceFolio.Text;
  F11.TextRC[7,9] := tFecha;
  F11.TExtRC[8,10] := edtPlazo.Text;
  F11.TExtRC[8,11] := 'Días';
  F11.TExtRC[9,10] := xceOC.Text;
  F11.TExtRC[10,10] := mmoEntregar.Lines.Strings[0];
  F11.TExtRC[11,10] := mmoEntregar.Lines.Strings[1];
// Llenar datos del cliente

  F11.TExtRC[7,1] := oCte.CODCTEPROV;
  F11.TExtRC[7,2] := xceNombreCte.Text;
  F11.TExtRC[8,2] := Memo1.Lines.Strings[0];
  F11.TExtRC[9,2] := Memo1.Lines.Strings[1];
  F11.TExtRC[10,2] := Memo1.Lines.Strings[2];
  F11.TExtRC[11,2] := Memo1.Lines.Strings[4];
  F11.TExtRC[12,2] := oCte.TELEFONO1 + ' / ' + oCte.TELEFONO2;

  iR1 := 15;
  for iRen := 1 to F1.MaxRow do begin
    tCodPS := F1.TextRC[iRen,IdCols.CodProdSer];
    tCodPS := sm.Strip (tCodPS);
    if ((length(tCodPS) > 0) and (F1.NumberRC[iRen,IdCols.Unidades] > 0)) or
        (length(F1.TextRC[iRen,IdCols.DescripPro]) > 0) then begin
      iVacios := 0; //Al encontrar un codigo limpio el contador de vacios
      iPartida := iPartida + 1;

      case Tipo_Docto of
        1: F11.NumberRC[iR1,1] := iPartida;
        107,23,232,233: F11.TextRC[iR1,1] := tCodPS;
      end;

      F11.NumberRC[iR1,2] := F1.NumberRC[iRen,IdCols.Unidades];
      F11.TextRC[iR1,3] := F1.TExtRC[iRen,IdCols.DescripPro];
      F11.NumberRC[iR1,9] := F1.NumberRC[iRen,IdCols.PrecioLista];
      F11.NumberRC[iR1,10] := F1.NumberRC[iRen,IdCols.PrecioNeto];
      F11.NumberRC[iR1,11] := F1.NumberRC[iRen,IdCols.ImpNetoMov];
      iRLast := iR1;
    end else begin
      F11.ClearRange(iR1,1,iR1,11,F1ClearValues);

    end;
    iR1 := iR1 + 1;

    iVacios := iVacios + 1;

  end;
  if iRLast < 44 then begin
    iR2 := 45
  end else begin
    iR2 := iRLast + 2
  end;

  F11.TextRC[iR2+0,10] := 'SubTotal:';
  F11.TextRC[iR2+1,10] := 'IVA (' + sm.StrFloat(xcrPIVA.Value,'0.00') + '):' ;
  F11.TextRC[iR2+2,10] := 'Total:';

  F11.NumberRC[iR2+0,11] := xcrSubTotal.Value;
  F11.NumberRC[iR2+1,11] := xcrIva.Value;
  F11.NumberRC[iR2+2,11] := xcrTotal.Value;

  if oDoc.MONEDADOCT = '1' then begin
      InWords.SelectLocale (CTRY_MEXICO,LANG_SPANISH);
      tLetra := InWords.Money (xcrTotal.Value,noEuro);
  end else begin
      InWords.SelectLocale (CTRY_UNITED_STATES,LANG_ENGLISH);
      tLetra := InWords.Money (xcrTotal.Value,noEuro);
  end;

  tLetra := upperCase(tLetra);
  tLetra := '**('+tLetra+')**';

  tCL := WrapText(tLetra,60);

  F11.TextRC[iR2,1] := tLetra;
// Fechas de la parte de abajo de la factura
// Se elimino este dato. fpg:1/Jun/2011

// Imprimir las leyendas
  iCount := mmoLeyendas.Lines.Count;
  v := iR1;
  iR1 := v;
  v := speColIni.Value;
  iC1 := v;

  for r := 0 to iCount - 1 do begin
    F11.TextRC[iR1 + r, iC1] := mmoLeyendas.Lines.Strings[r];
  end;

  tCL.Free;
  tSel := F11.Selection;
  F11.SetSelection(1,1,iR2+2,11);
  F11.SetPrintAreaFromSelection;
  F11.Selection := tSel;

end;

procedure TfrmDocsCotiza.LlenaFactura3;
var tSql,tCodPS,tLetra,tSel,tMoneda:String;
    ix,iR1,iR2,iR3,iC1,r,iRen,iVacios,iPartida,iCount,iRLast:integer;
    iA,iM,iD,iDias:Integer;
    tFecha,tMes,tCP:String;
    bHayTexto:Boolean;
    tCL:TStringList;
    v:Variant;
begin

  if mfLoading then exit;

  LoadF11;

  tMoneda := sm.NthWord(1,cboMoneda.Text);

  tCL := TStringList.Create;
  tFecha := ESBDates.Date2StrShort2(xdeFecha.Date);
// Llenar datos de la Pedidos y Remisiones... Facturas es otro proc
  F11.TextRC[3,12] := xceFolio.Text;
  F11.TextRC[4,12] := tFecha;
  F11.TextRC[6,10] := xceOC.Text;
  F11.TextRC[6,12] := xcePedido.Text;

  F11.TextRC[7, 6] := oAge.EMAIL1;
  F11.TextRC[8, 6] := oAge.EMAIL2;

  tCP := edtPlazo.Text;
  tCP := Trim(tCP);
  iDias := sm.ToI(tCP);
  if (iDias>0) then
    tCP := 'CREDITO: ' + tCP +' Dias'
  else
    tCP := 'CONTADO';

//  F11.TextRC[8,10] := sm.Between('(',')',cboMoneda.Text);
  F11.NumberRC[8,10] := xcrTipoCambio.Value;
  F11.TextRC[8,12] := tCP;

  F11.TextRC[10,2]  := 'N/A'; //cboFormaPago.Text;
  F11.TextRC[10,6]  := 'N/A'; //cboMetodoPago.Text;
  F11.TextRC[10,8]  := 'N/A'; //cboUsoCfdi.Text;
  F11.TextRC[10,9]  := 'N/A'; //edtCuentaBanco.Text;
  F11.TextRC[10,10] := xceNumAgente.Text + ' ' + xceNombreAgente.Text;
  F11.TextRC[10,12] := cboNumAlmac.Text;

// Llenar datos fiscales del cliente
  F11.TextRC[11,5] := 'N/A'; //edtRFC.Text;
  F11.TextRC[12,2] := xceCodCteProv.Text + ' ' + xceNombreCte.Text;
  F11.TextRC[12,2] := xceCodCteProv.Text + ' ' + xceNombreCte.Text;
  F11.TextRC[13,2] := Memo1.Lines.Strings[0];
  F11.TextRC[14,2] := Memo1.Lines.Strings[1];
  F11.TextRC[15,2] := Memo1.Lines.Strings[2];
  F11.TextRC[16,2] := Memo1.Lines.Strings[4];

// Llenar datos de Entrega de Mercancias
//  F11.TextRC[11,10] := ''; //fraDirs_Entrega1.cboNombreDir.Text;
  F11.TextRC[12,7] := xceObservaciones.Lines.Strings[0];
  F11.TextRC[13,7] := xceObservaciones.Lines.Strings[1];
  F11.TextRC[14,7] := xceObservaciones.Lines.Strings[2];
  F11.TextRC[15,7] := xceObservaciones.Lines.Strings[3];
  F11.TextRC[16,7] := xceObservaciones.Lines.Strings[4];

// Llenar datos de Embarque
//  F11.TextRC[12,12] := mmoEntregar.Lines.Strings[0];
//  F11.TextRC[13,12] := mmoEntregar.Lines.Strings[1];

  iCount := mmoLeyendas.Lines.Count;
  aF11.DetLastRow := aF11.HeaderRows + aF11.DetCount - iCount;

  iR1 := aF11.HeaderRows + 1;
  iR1 := 18;
  for iRen := 1 to F1.MaxRow do begin
    tCodPS := F1.TextRC[iRen,IdCols.CodProdSer];
    tCodPS := sm.Strip (tCodPS);
    if (F1.NumberRC[iRen,IdCols.Cancela] <> 2) then begin
      if ((length(tCodPS) > 0) and (F1.NumberRC[iRen, IdCols.Unidades] > 0)) or
        (length(F1.TextRC[iRen, IdCols.DescripPro]) > 0) then
      begin

        iVacios := 0; //Al encontrar un codigo limpio el contador de vacios
        iPartida := iPartida + 1;
          F11.TextRC[iR1,2]    := tCodPS;
          F11.NumberRC[iR1,3]  := F1.NumberRC[iRen,IdCols.Unidades];
          F11.TextRC[iR1,4]    := F1.TextRC[iRen,IdCols.UniVta];
          F11.TextRC[iR1,5]    := F1.TExtRC[iRen,IdCols.DescripPro];

          if tMoneda = '1' then begin
            F11.TextRC[iR1,9]:= 'MXN';
          end;

          if tMoneda = '2' then begin
            F11.TextRC[iR1,9]:= 'USD';
          end;

          if tMoneda = '0' then begin
            if F1.NumberRC[iRen,IdCols.Es_Dls] = 1 then
              F11.TextRC[iR1,9]:= 'USD'
            else
              F11.TextRC[iR1,9]:= 'MXN';
          end;

          F11.NumberRC[iR1,10] := F1.NumberRC[iRen,IdCols.PrecioLista];
          F11.NumberRC[iR1,11] := F1.NumberRC[iRen,IdCols.PorcDescAu];
          F11.NumberRC[iR1,12] := F1.NumberRC[iRen,IdCols.PrecioNeto];
          F11.NumberRC[iR1,13] := F1.NumberRC[iRen,IdCols.ImpNetoMov];
          aF11.Row := iR1;
      end else begin
{        if iR1 <= (aF11.DetLastRow+iCount) then
          F11.ClearRange(iR1,2,iR1,10,F1ClearValues);}
        iVacios := iVacios + 1;
      end;
      iR1 := iR1 + 1;

      if iVacios > 2 then break;


    end;
  end;

//  iR2 := aF11.HeaderRows+aF11.DetCount+1;
  iR2 := 219;
  iC1 := 13;

  F11.NumberRC[iR2+0,13] := xcrSubTotal.Value;
  F11.NumberRC[iR2+1,13] := xcrIva.Value;
  F11.NumberRC[iR2+2,13] := xcrIEPS.Value;
  F11.NumberRC[iR2+3,13] := xcrIvaRet.Value;
  F11.NumberRC[iR2+4,13] := xcrTotal.Value;


// Imprimir las leyendas
{  v := speColIni.Value;
  iC1 := v;

  iR2 := aF11.DetLastRow + 1;
  for r := 0 to iCount - 1 do begin
    F11.TextRC[iR2 + r, iC1] := mmoLeyendas.Lines.Strings[r];
  end;
}
//----------------------------------------------------------
{    if (aF11.DetLastRow - aF11.Row >=2) and
       (aF11.DetCount > aF11.DetMinCount) then begin
          F11.SetSelection(aF11.Row+1,1,aF11.Row+1,1);
          F11.EditDelete(F1ShiftRows);
          aF11.DetCount := aF11.DetCount - 1;
          aF11.DetLastRow := aF11.DetLastRow - 1;

    end;
}

  tCL.Free;
  tSel := F11.Selection;
//  iR1 := aF11.DetLastRow + iCount + aF11.FooterRows+1;
  iR1 := 224;
  F11.SetSelection(2,2,iR1,13);
  F11.SetPrintAreaFromSelection;
  F11.Selection := tSel;

//Esconder renglones vacios
  iC1 := 2;
  bHayTexto := False;
  for iR3 := 218 downto 48 do begin

    if (length(F11.TextRC[iR3,iC1]) <=0) then begin
      F11.RowHidden[iR3] := not bHayTexto;
    end else begin
      F11.RowHidden[iR3] := False;
      bHayTexto := True;
    end;
  end;

end;


procedure TfrmDocsCotiza.F12SelChange(Sender: TObject);
begin
  if F12.Row < 4 then begin
    F12.Row := 4;
    F12.TopRow := 1;
  end;
  if F12.Col < 3 then begin
    F12.Col := 3;
    F12.LeftCol := 1;
  end;

  F12.TextRC[1,2] := F12.TExtRC[3,2] + ' ' + F12.TextRC[F12.Row,1] + ' x ' + F12.TextRC[2,F12.Col];

end;

procedure TfrmDocsCotiza.ChecarCredito(var AContinuar:Boolean);
var
  Cte,Msg:String;
  Fecha,Fecha1:TDateTime;
  BloqueoManual:Boolean;
  LimiteCredito:Boolean;
  SaldoVencido:Boolean;
  HistorialPagos:Boolean;
  VentaUnica:Boolean;
  ShowWin:Boolean;
  Monto:Double;
begin
  Cte := xceCodCteProv.Text;
  Fecha := Date - 365;
  AContinuar := True;
  ShowWin    := False;

  DM1.GetEstadisticaCte(Cte,Fecha,BloqueoManual,LimiteCredito,SaldoVencido,HistorialPagos,VentaUnica,Monto);

  //Si en los parametros Checar credito es 1, checar el credito del cliente
  Msg := '';
  if (BloqueoManual)  then begin
    Msg := Msg + 'El Cliente tiene Bloqueo Manual Específico: HECHO POR EL SUPERVISOR.'+#10+#13;
    AContinuar := False;
    ShowWin := True;
  end;
  if (LimiteCredito)  then begin
    Msg := Msg + 'El Cliente tiene bloqueo: LIMITE DE CREDITO EXCEDIDO.'+#10+#13;
    AContinuar := False;
    ShowWin := True;
  end;
  if (SaldoVencido)   then begin
    Msg := Msg + 'El Cliente tiene bloqueo: SALDOS VENCIDOS.'+#10+#13;
    AContinuar := False;
    ShowWin := True;
  end;
  if (HistorialPagos) then begin
    Msg := Msg + 'El Cliente tiene bloqueo: MAL HISTORIAL DE PAGOS.'+#10+#13;
    AContinuar := False;
    ShowWin := True;
  end;
  if VentaUnica then begin
    ShowWin := False;
    if not AContinuar then begin
      Msg := '';
      Msg := Msg + 'El Cliente tiene bloqueos automáticos... '+#10+#13;
      Msg := Msg + 'Pero se le permitirá SOLAMENTE esta venta hasta $ '+sm.StrFloat(Monto,'#,###.00')+' pesos. '+#10+#13;
      ShowWin := True;
    end;
    AContinuar := True;
  end;

  if ShowWin then MessageDlg(Msg, mtWarning, [mbOK], 0);


end;

procedure TfrmDocsCotiza.btnAplicarDecClick(Sender: TObject);
begin
    PonerFormulas;
end;

procedure TfrmDocsCotiza.btnBuscarClick(Sender: TObject);
begin
  F31.FindDlg;
end;

procedure TfrmDocsCotiza.btnDeleteRowClick(Sender: TObject);
begin
  F11.EditDelete(F1ShiftRows);
end;

procedure TfrmDocsCotiza.GetRC(AVar:String;
                            var Ren,Col:Integer);
var
  tAux:String;
  i,r,s:Integer;
  v:Variant;
begin

  s := 2; //Hoja de Configuracion

  Ren := -1;
  Col := -1;
  for r := 3 to 1000 do begin
    tAux := F11.TextSRC[s,r,1];
    tAux := Trim(tAux);
    if length(tAux)<=0 then break;
    if tAux = AVar then begin
        v := F11.NumberSRC[s,r,2];
        Ren := v;
        v := F11.NumberSRC[s,r,3];
        Col := v;
        break;
    end;
  end;

end;

procedure TfrmDocsCotiza.F13DblClick(ASender: TObject; nRow, nCol: Integer);
begin
  SelectLP;
  RefreshF1;

end;

procedure TfrmDocsCotiza.F13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_RETURN:
        begin
          SelectLP;
          RefreshF1;
        end;
    end;

end;

procedure TfrmDocsCotiza.SelectLP;
var
  h,r,c:Integer;
  tProd:String;
  dCant:Double;
begin
  h:= F13.Sheet;
  r:= F13.Row;
  c:= F13.Col;

  oProd.RetrieveHRC(h,r,c);
  if oProd.ERROR > 0 then begin
    ShowMessage('No existe un producto con estas coordenadas!');
    exit;
  end;
  tProd := oProd.CODPRODSER;
  GetProducto(tProd);
  if (h = 1) and (r <= 60) then
    dCant := F13.NumberRC[r+1,c]
  else
    dCant := 1;

  F1.NumberRC[F1.Row,IDCols.Unidades] := dCant;
  if F1.Row < F1.MaxRow then
    F1.Row := F1.Row + 1;


end;
procedure TfrmDocsCotiza.SeleccionaAlmacen(AIdSucursal:Integer);
var
  i,iAlm,iCount:Integer;
  tAlm:String;
  dCant:Double;
begin
  iCount := cboNumalmac.Items.Count;
  for i := 0 to iCount - 1 do begin
    tAlm := sm.NthWord(1,cboNumAlmac.Items.Strings[i],['|']);
    tAlm := Trim(tAlm);
    iAlm := sm.ToI(tAlm);
    if iAlm = AIdSucursal then begin
      cboNumAlmac.ItemIndex := i;
      break;
    end;
  end;

  zlbAlmacen.caption := cboNumAlmac.Text;
  oProd.NUMALMAC   := Trim(sm.NthWord (1,cboNumAlmac.Text,['|']));

end;

//------------------------------------------------------------------------------------------------
procedure TfrmDocsCotiza.cboCodigo2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then btnListarArticulosClick(NIL);
end;

procedure TfrmDocsCotiza.cboCodigoCteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then btnListarCtesClick(nil);

end;

procedure TfrmDocsCotiza.cboCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_Return: BuscarProductos;
    end;

end;

procedure TfrmDocsCotiza.xsbListarClick(Sender: TObject);
begin
  BuscarProductos;
end;

procedure TfrmDocsCotiza.xsbBuscarClick(Sender: TObject);
begin
  F3.FindDlg;
end;

procedure TfrmDocsCotiza.F31DblClick(ASender: TObject; nRow, nCol: Integer);
begin
//  btnPasarCotiClick(ASender);
  btnChecaExistenciasClick(ASender);
end;

procedure TfrmDocsCotiza.F31EndEdit(ASender: TObject;
  var EditString: WideString; var Cancel: Smallint);
var
  tES,tFam:String;
  dCant,dDescto:Double;
begin
  if F31.Col = 5 then begin //Cantidad...
    tES := EditString;
    if length(tES) > 0 then dCant := StrToFloat(tES) else dCant :=0;
    if dCant > 0 then begin
      tFam := F31.TextRC[F31.Row,3];
      dDescto := GetDescuentoCliente(tFam);
      F31.NumberRC[F31.Row,7] := dDescto;
    end;
  end;

end;

procedure TfrmDocsCotiza.F32KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
      VK_DELETE:
        if ssCtrl in Shift then begin
          F32.DeleteRange(F32.SelStartRow,1,F32.SelEndRow,F32.MaxCol,F1ShiftRows);
        end;
    end;
end;

procedure TfrmDocsCotiza.F3DblClick(ASender: TObject; nRow, nCol: Integer);
begin
  PasarProductosDoc;
  RefreshF1;

end;

function TfrmDocsCotiza.GetNextRowDoc:Integer;
var i:Integer;
    tCod:String;
    fExit:Boolean;

begin
    i:= 1; //Renglon Inicial
    repeat
        tCod := F1.TextSRC[1,i,1];
        tCod := Trim(tCod);
        if length(tCod) <= 0 then
            fExit := True
        else
            i := i + 1;

    until fExit = True;

    Result := i;

end;

function TfrmDocsCotiza.GetNextRowSel:Integer;
var i:Integer;
    tCod:String;
    fExit:Boolean;

begin
    i:= 1; //Renglon Inicial
    repeat
        tCod := F32.TextSRC[1,i,2];
        tCod := Trim(tCod);
        if length(tCod) <= 0 then
            fExit := True
        else
            i := i + 1;

    until fExit = True;

    Result := i;

end;

procedure TfrmDocsCotiza.axnLimpiarListado;
var iSheet:integer;
    tSel:String;
begin
    iSheet := F3.Sheet;
    F3.Sheet := 1;
    tSel := F3.Selection;
    F3.ClearRange (10,1,F3.MaxRow,F3.MaxCol,F1ClearValues);
    F3.SetSelection (10,1,F3.LastRow,F3.LastCol);
    F3.FontBold := False;
    F3.FontColor := clBlack;
    F3.Selection := tSel;
    F3.Sheet := iSheet;
end;

procedure TfrmDocsCotiza.BuscarProductos;
var tStr,tCod,tDes,tNumAlmacen:String;
    iSheet,irow,iCol,iColx,iField,iPos:Integer;
    tFName,tDescripTec:String;
    tChar:Char;
    tcChars: TCharSet; //StrMan

begin

    F3.SetFocus;
    F3.Sheet := 1;
    axnLimpiarListado;
    F3.TopRow := 2;
    F3.LeftCol := 2;

    tStr := cboCodigo.Text;
    tStr := UpperCase(tStr);

    tCod := '';
    tDes := '';

    if POS(',',tStr) > 0 then begin
      tCod := sm.NthWord2(2,tStr);
    end else begin
      tDes := tStr
    end;

    tChar := StringLib.GetSeparador(tStr);
    if tChar = ',' then
        tcChars := [',']
    else
        tcChars := [' '];

    if (length(tCod) <= 0)and (length(tDes) <= 0) then begin
        exit;
    end;

    tCod := UpperCase(tCod);
    tDes := UpperCase(tDes);
    tNumAlmacen := Trim(sm.NthWord (1,cboAlmacenes1.Text,['|']));

    with DM1.icuListaArt2 do begin
        Prepare;

        ParamByName('p_CodProdSer').AsString := tCod;
        ParamByName('p_DescripPro').AsString := tDes;
        ParamByName('p_NumAlmacen').AsString := tNumAlmacen;
        Open;

        iSheet := 1;
        iRow   := 4;
        iCol   := 2;
        iColx  := iCol;

        First;
        while not Eof do begin
          F3.EntrySRC[iSheet,iRow,2] := FieldByName('CODPRODSER').AsString;
          F3.EntrySRC[iSheet,iRow,3] := FieldByName('DescripPro').AsString;
          F3.EntrySRC[iSheet,iRow,4] := '';
          F3.EntrySRC[iSheet,iRow,5] := FieldByName('ExisTotal').AsString;
          F3.EntrySRC[iSheet,iRow,6] := FieldByName('PcioVta1').AsString;
          F3.EntrySRC[iSheet,iRow,7] := FieldByName('PcioVta2').AsString;
          F3.EntrySRC[iSheet,iRow,8] := FieldByName('PcioVta3').AsString;

          F3.EntrySRC[iSheet,iRow,10] := FieldByName('PathFoto').AsString;
          tDescripTec := FieldByName('DescripTec').AsString;
          tDescripTec := trim(tDescripTec);
          F3.TExtSRC[iSheet,iRow,12] := copy(tDescripTec,1,250);
          F3.TExtSRC[iSheet,iRow,13] := copy(tDescripTec,251,250);

          iRow := iRow + 1;
          Next;
        end;
        F3.SetSelection (1,1,iRow,Fields.ColumnCount + 1);
        F3.SetPrintAreaFromSelection;
        F3.Selection := 'B4';

    end;
end;

procedure TfrmDocsCotiza.PasarProductosDoc;
var i,iR1,iR2,iC1,iC2,iRowIni,iRC,iPrecio,iColPrecio,s,selCount:Integer;
    tCod:String;
begin
  iRowIni := GetNextRowDoc;
  iPrecio := 1; //sm.ToI(cboPasar.Text);
  iColPrecio := 5 + iPrecio;

//  iRC := GetNextRowCotiza;

  selCount := F3.SelectionCount;

  F3.Sheet := 1;

  for s := 0 to selCount -1 do begin
    F3.GetSelection (s,iR1,iC1,iR2,iC2);
    for i := iR1 to iR2 do begin
        tCod := F3.TextSRC[1,i,2];
        F1.Row := iRowIni;
        GetProducto(tCod);

        F1.NumberRC[F1.Row,IdCols.Unidades] := F3.NumberSRC[1,i,4];


//        FormateaRen(i);
        iRowIni := iRowIni + 1;
        iRC := iRC + 1;
    end;
  end;

end;

procedure TfrmDocsCotiza.BuscarProductos2;
var tStr,tCod,tDes,tNumAlmacen,tFor:String;
    iSheet,irow,iCol,iColx,iField,iPos,iLP:Integer;
    tFName,tDescripTec,tSel:String;
    tChar:Char;
    tcChars: TCharSet; //StrMan
    dPrecio2,dDescuento:Double;
begin

    F31.SetFocus;
    F31.Sheet := 1;
//--- Limpiar Listado
    iSheet := F31.Sheet;
    F31.Sheet := 1;
    tSel := F31.Selection;
    F31.ClearRange (1,1,F31.MaxRow,F31.MaxCol,F1ClearValues);
    F31.ClearRange (1,1,F31.MaxRow,1,F1ClearFormats);
    F31.SetSelection (10,1,F31.LastRow,F31.LastCol);
    F31.FontBold := False;
    F31.FontColor := clBlack;
    F31.Selection := tSel;
    F31.Sheet := iSheet;

    F31.TopRow := 1;
    F31.LeftCol := 1;

    tStr := cboCodigo2.Text;
    tStr := UpperCase(tStr);

    tCod := '';
    tDes := '';

    if POS(',',tStr) > 0 then begin
      tCod := sm.NthWord2(2,tStr);
    end else begin
      tDes := tStr
    end;

    tChar := StringLib.GetSeparador(tStr);
    if tChar = ',' then
        tcChars := [',']
    else
        tcChars := [' '];

    if (length(tCod) <= 0)and (length(tDes) <= 0) then begin
        exit;
    end;

    tCod := UpperCase(tCod);
    tDes := UpperCase(tDes);
//    tNumAlmacen := Trim(sm.NthWord (1,cboAlmacenEx.Text,[' ']));

    with DM1.icuListaArt2 do begin
        Prepare;

        ParamByName('p_CodProdSer').AsString := tCod;
        ParamByName('p_DescripPro').AsString := tDes;
        ParamByName('p_NumAlmacen').AsString := '0'; //Todos... el total
        Open;

        iSheet := 1;
        iRow   := 1;
        iCol   := 2;
        iColx  := iCol;

        First;
        while not Eof do begin
          iLP := FieldByName('GRUPO').AsSmallInt;
          if (not chkListarLP.Checked) or ((chkListarLP.Checked) and (iLP = 1)) then begin
            {Listar de acuerdo al checkbox... articulos en lista de precios o no}
            F31.EntrySRC[iSheet,iRow,2] := FieldByName('CODPRODSER').AsString;

            F31.TextSRC[iSheet,iRow,3] := FieldByName('CodFamilia').AsString;;
            F31.EntrySRC[iSheet,iRow,4] := FieldByName('DescripPro').AsString;
            F31.NumberSRC[iSheet,iRow,5] := 1;
            F31.EntrySRC[iSheet,iRow,6] := FieldByName('PcioVta1').AsString;
//            tFor := Format('F%s*(1-G%s/100)',[IntToStr(iRow),IntToStr(iRow)]);
//            F31.FormulaRC[iRow,8] := tFor;
//            tFor := Format('E%s*H%s',[IntToStr(iRow),IntToStr(iRow)]);
//            F31.FormulaRC[iRow,9] := tFor;

            GetPrecioConDescuento(FieldByName('CodFamilia').AsString,
                                  F31.NumberSRC[iSheet,iRow,6],
                                  dPrecio2,
                                  dDescuento);
            F31.NUmberSRC[iSheet,iRow,7] := dDescuento;
            F31.NumberSRC[iSheet,iRow,8] := dPrecio2;
            F31.NumberSRC[iSheet,iRow,9] := F31.NUmberSRC[iSheet,iRow,5] * dPrecio2;
//          F31.EntrySRC[iSheet,iRow,6] := FieldByName('PcioVta1').AsString;
            F31.EntrySRC[iSheet,iRow,11] := FieldByName('ExisTotal').AsString;
//          F31.EntrySRC[iSheet,iRow,8] := FieldByName('PcioVta3').AsString;
//          F31.EntrySRC[iSheet,iRow,10] := FieldByName('PathFoto').AsString;
            tDescripTec := FieldByName('DescripTec').AsString;
            tDescripTec := trim(tDescripTec);
            F31.TExtSRC[iSheet,iRow,12] := copy(tDescripTec,1,250);
            F31.TExtSRC[iSheet,iRow,13] := copy(tDescripTec,251,250);

            if iLP = 1 then
              ApplyPattern('VERDE1',iRow,1,iRow,1);

            iRow := iRow + 1;
          end;
          Next;
        end;
        F31.SetSelection (1,1,iRow,Fields.ColumnCount + 1);
        F31.SetPrintAreaFromSelection;
        F31.Selection := 'B4';
        F31.SetFocus;
    end;
end;

procedure TfrmDocsCotiza.PasarProductosDoc2;
var i,iR1,iR2,iC1,iC2,iRowIni,iRC,iPrecio,iColPrecio,s,selCount:Integer;
    tCod:String;
begin
  iRowIni := GetNextRowDoc;
  iPrecio := 1; //sm.ToI(cboPasar.Text);
  iColPrecio := 5 + iPrecio;

//  iRC := GetNextRowCotiza;

  if pgcListados.ActivePageIndex = 0 then begin
    selCount := F31.SelectionCount;
    F31.Sheet := 1;
  end else begin
    selCount := F32.SelectionCount;
    F32.Sheet := 1;
  end;

  for s := 0 to selCount -1 do begin
    if pgcListados.ActivePageIndex = 0 then
      F31.GetSelection (s,iR1,iC1,iR2,iC2)
    else
      F32.GetSelection (s,iR1,iC1,iR2,iC2);

    for i := iR1 to iR2 do begin
      if pgcListados.ActivePageIndex = 0 then
        tCod := F31.TextSRC[1,i,2]
      else
        tCod := F31.TextSRC[1,i,2];

        F1.Row := iRowIni;
        GetProducto(tCod);
        if pgcListados.ActivePageIndex = 0 then begin
          F1.NumberRC[F1.Row,IdCols.Unidades]   := F31.NumberSRC[1,i,5];
          F1.NumberRC[F1.Row,IdCols.PorcDescAu] := F31.NumberSRC[1,i,7];
          if F1.NumberRC[F1.Row,IdCols.PrecioLista] <= 0 then
            F1.NumberRC[F1.Row,IdCols.PrecioLista] := F31.NumberSRC[1,i,6];

        end else begin
          F1.NumberRC[F1.Row,IdCols.Unidades]   := F32.NumberSRC[1,i,5];
          F1.NumberRC[F1.Row,IdCols.PorcDescAu] := F32.NumberSRC[1,i,7];
          if F1.NumberRC[F1.Row,IdCols.PrecioLista] <= 0 then
            F1.NumberRC[F1.Row,IdCols.PrecioLista] := F32.NumberSRC[1,i,6];

        end;


//        FormateaRen(i);
        iRowIni := iRowIni + 1;
        iRC := iRC + 1;
    end;
  end;

  RefreshF1;
  if pgcListados.ActivePageIndex = 0 then
    F31.SetFocus
  else
    F32.SetFocus

end;

procedure TfrmDocsCotiza.Seleccionar;
var i,iR1,iR2,iC1,iC2,iRowIni,iRC,iPrecio,iColPrecio,s,selCount,c:Integer;
    tCod:String;
begin
  iRowIni := GetNextRowSel;

  selCount := F31.SelectionCount;

  F31.Sheet := 1;

  for s := 0 to selCount -1 do begin
    F31.GetSelection (s,iR1,iC1,iR2,iC2);
    for i := iR1 to iR2 do begin
      F32.TextRC[iRowIni,1]   := F31.TextSRC[1,i,1];
      F32.TextRC[iRowIni,2]   := F31.TextSRC[1,i,2];
      F32.TextRC[iRowIni,3]   := F31.TextSRC[1,i,3];
      F32.TextRC[iRowIni,4]   := F31.TextSRC[1,i,4];
      F32.NumberRC[iRowIni,5]   := F31.NumberSRC[1,i,5];
      F32.NumberRC[iRowIni,6]   := F31.NumberSRC[1,i,6];
      F32.NumberRC[iRowIni,7]   := F31.NumberSRC[1,i,7];
      F32.NumberRC[iRowIni,8]   := F31.NumberSRC[1,i,8];
      F32.NumberRC[iRowIni,9]   := F31.NumberSRC[1,i,9];
      F32.NumberRC[iRowIni,10]   := F31.NumberSRC[1,i,10];


//        FormateaRen(i);
        iRowIni := iRowIni + 1;
        iRC := iRC + 1;
    end;
  end;
  F31.SetFocus;
end;

procedure TfrmDocsCotiza.pgcMainChange(Sender: TObject);
begin
  if pgcMain.ActivePageIndex = 1 then
    RefreshF1;
end;

procedure TfrmDocsCotiza.SetFont(ARow:Integer;ATipo:String);
var
  tSel:String;
begin
    tSel := F1.Selection;
    F1.SetSelection (ARow,1,ARow,F1.LastCol);
    if ATipo = 'NORMAL' then begin //Cancelar Partida
      F1.FontBold := False;
      F1.FontColor := clBlack;
    end;
    if ATipo = 'CANCELAPARTIDA' then begin //Cancelar Partida
      F1.FontBold := True;
      F1.FontColor := clRed;
    end;
    F1.Selection := tSel;
end;

procedure TfrmDocsCotiza.ListarClientes;
var i:Integer;
    iRecCount,iRec:Integer;
    tKey:String;
    td,tnum:String;
    EsCodigo:Boolean;

begin
  tnum := sm.GetDigit(cboCodigoCte.Text);
  if length(tnum) > 0 then
    EsCodigo := True
  else
    EsCodigo := False;

  with DM1.icuTemp do begin
    Sql.Clear;
    Sql.Add ('SELECT A.CODCTEPROV,A.RAZSOCIAL,A.CALLE,A.NUM_EXTERIOR,A.NUM_INTERIOR,A.COLONIACTE,A.CODPOSTAL,A.CODCTEPROV,A.NUMAGENTE,B.NOMBAGEN,A.LIMCREDCTE,A.TELEFONO1 ');
    Sql.Add (' FROM MBA10002 A ');
    SqL.Add (' LEFT JOIN MBA10001 B ON (B.NUMAGENTE = A.NUMAGENTE) ');
    if EsCodigo then
      SqL.Add (' WHERE A.CODCTEPROV STARTING WITH ?CODIGO ')
    else
      SqL.Add (' WHERE A.RAZSOCIAL CONTAINING ?CODIGO ');

    SqL.Add (' ORDER BY A.RAZSOCIAL; ');
    Prepare;
  end;

  DM1.icuTemp.ParamByName('CODIGO').AsString := cboCodigoCte.Text;
  DM1.icuTemp.Open;

    iRecCount := Dm1.icuTemp.RecordCount;
    lstClientes.Items.Clear;
    while not DM1.icuTemp.Eof do begin
      tKey := DM1.icuTemp.FieldByName('CODCTEPROV').AsString + ' ' +
              DM1.icuTemp.FieldByName('RAZSOCIAL').AsString;
      lstClientes.Items.Add(tKey);
      DM1.icuTemp.Next;
    end;
    DM1.icuTemp.Unprepare;
    DM1.icuTemp.Close;

    lblCliente2.Caption := 'Descuentos para: <Seleccionar Cliente>';
    F21.Sheet := 1;

    F21.ClearRange(7,1,F21.MaxRow,F21.MaxCol,F1ClearValues);

    F21.Refresh;

end;

procedure TfrmDocsCotiza.btnChecaExistenciasClick(Sender: TObject);
begin
  ChecaExistencias;
  F31.SetFocus
end;

procedure TfrmDocsCotiza.SelectClienteList;
var i:Integer;
    iRecCount,iRec:Integer;
    tKey:String;
    td,tnum:String;
    EsCodigo:Boolean;

begin
  tKey := lstClientes.SelectedItem;
  lblCliente2.Caption := 'Descuentos para: ' + tKey;

//Llenar datos de cliente en la cotizacion
  xceCodCteProv.Text := sm.FirstWord(tKey,[' ']);

  BuscaCliente;

{  ClearDesctos;
  LeerDesctos;
}
//  F21 := F2;

end;

procedure TfrmDocsCotiza.ApplyPattern(ANameFmt:String;piR1,piC1,piR2,piC2:Integer);
var tSel:String;
    iPattern:Smallint;
    pcrFG,pcrBG: OLE_COLOR;
begin
  tSel := F31.Selection;
  ANameFmt := UpperCase(ANameFmt);
  if (piC1 = 0) or (piC2 = 0) then begin
    piC1 := 1;
    piC2 := F1.MAXCOL;
  end;
  F31.SetSelection (piR1,piC1,piR2,piC2);
//--------------------------
  if ANameFmt = 'GRIS' then begin
    iPattern := 1;
//    pcrFG := 12632256;
//    pcrBG := 16777215;
    pcrFG := clSilver;
    pcrBG := 16777215;
    F31.SetPattern (iPattern, pcrFG, pcrBG);
  end;

  if ANameFmt = 'VERDE1' then begin
    iPattern := 1;
//    pcrFG := 12632256;
//    pcrBG := 16777215;
//    pcrFG := clYellow; //clMoneyGreen;
    pcrFG := clGREEN;
    pcrBG := 16777215;
    F31.SetPattern (iPattern, pcrFG, pcrBG);
  end;

//--------------------------
  F31.Selection := tSel;



end;

procedure TfrmDocsCotiza.pgcListadosPageChange(Sender: TObject);
begin
    btnListarArticulos.Enabled := (pgcListados.ActivePageIndex = 0);
    //btnPasarCoti.Enabled := (pgcListados.ActivePageIndex = 0);
    btnSeleccionar.Enabled := (pgcListados.ActivePageIndex = 0);
    btnBuscar.Enabled := (pgcListados.ActivePageIndex = 0);
end;
function TfrmDocsCotiza.GetDescuentoCliente(AFam:String):Double;
var
  tCod:String;
  iRowIni,iRow: Integer;
begin
  iRowIni := 7;
  iRow := iRowIni;
  AFam := Trim(AFam);
  Result := 0;
  tCod := Trim(F21.TextRC[iRowIni,2]);
  while length(tCod) > 0 do begin
    if tCod = AFam then begin
      Result := F21.NumberRC[iRow,4];
      break;
    end;
    iRow := iRow + 1;
    tCod := Trim(F21.TextRC[iRow,2]);
  end;
end;

procedure TfrmDocsCotiza.ChecaExistencias;
begin
//---
  oProd.CODPRODSER := F31.TextRC[F31.Row,2];
  oProd.CalculaExistencias;

  lblArticulo.Caption := F31.TextRC[F31.Row,4];

  lblAlm0.Caption := '* Todos *'; //Todos
  enzAlm0.Value := oProd.GetExistencia('*'); //Todos
  lblAlm1.Caption := 'Almacen MTY'; //MTY
  enzAlm1.Value := oProd.GetExistencia('1');
  lblAlm2.Caption := 'Almacen GDL'; //GDL
  enzAlm2.Value := oProd.GetExistencia('2');
  lblAlm3.Caption := 'Almacen MEX'; //GDL
  enzAlm3.Value := oProd.GetExistencia('3');
  lblAlmT.Caption := 'Transito'; //GDL
  enzAlmT.Value := oProd.GetExistencia('T');

end;

procedure TfrmDocsCotiza.CalculaDescto;
var
  mrRes:Integer;
begin

  if frmCalculaDescto = nil then
    frmCalculaDescto := TfrmCalculaDescto.Create(Application);

  frmCalculaDescto.CodCteProv := xceCodCteProv.Text;
  frmCalculaDescto.RazSocial := xceNombreCte.Text;
  frmCalculaDescto.CodProdSer := F1.TextRC[F1.Row, IdCols.CodProdSer];
  frmCalculaDescto.DescripPro := F1.TextRC[F1.Row, IdCols.DescripPro];
  frmCalculaDescto.PrecioLista := F1.NumberRC[F1.Row, IdCols.PrecioLista];
  frmCalculaDescto.PrecioFinal := F1.NumberRC[F1.Row, IdCols.PrecioNeto];
  frmCalculaDescto.Descuento := F1.NumberRC[F1.Row, IdCols.PorcDescAu];

  mrRes := frmCalculaDescto.ShowModal;

  Application.ProcessMessages;
  if (mrRes = mrOk) then begin
    F1.NumberRC[F1.Row, IdCols.PorcDescAu] := frmCalculaDescto.Descuento;
  end;

  FreeAndNil(frmCalculaDescto);
end;


end.
