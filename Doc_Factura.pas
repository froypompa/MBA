unit Doc_Factura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, {Grids, RXGrids,}ToolWin, Menus, ImgList, StdCtrls, {Mask,}
  RxToolEdit, ExtCtrls, RXSplit, TBXStatusBars, ActnList, DBCtrls, Db,
  DBGrids, DBTables, RxPlacemnt, StrMan, IniFiles, ClipBrd, ShellAPI,
  IB_UpdateBar, IB_NavigationBar, IB_Controls, IB_Components, IB_Grid,
  IB_TransactionBar, Buttons, RXCtrls, Grids, Mask, ESBDates,
  AxCtrls, OleCtrls, VCIF1Lib_TLB, RxCurrEdit, TB2Dock, TB2Toolbar, TB2ExtItems,
    TBXExtItems, TBX, RXSpin, TB2Item, RzEdit, RzButton, RzPanel, ExtDlgs, RzLabel,
  IB_StoredProc, LibApp, StringLib, NumWords, RzBtnEdt,
  Constants_App,
  ClsParam,
  ClsDoc,
  ClsCliente,
  ClsProducto,
  ClsFamilia,
  ClsAgente,
  ClsTablas, ClsMailer, ClsCfdi33,
  ClsMoneda,
  Dirs_Entrega, ClsOrdenSurtido;

type
  TDefs = record
    HeaderRows: Integer;
    DetCount: Integer;
    DetMinCount: Integer;
    Row: Integer;
    DetLastRow: Integer;
    FooterRows: Integer;
  end;

type
  TfrmDocsFac = class(TForm)
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
    pnlMain: TPanel;
    pnlFecha: TPanel;
    pnlDetalle: TPanel;
    pnlTotales: TPanel;
    pgcCliente: TPageControl;
    tshCliente: TTabSheet;
    tshAdicionales: TTabSheet;
    xceNombreAgente: TComboEdit;
    Label3: TLabel;
    xceNombreCte: TComboEdit;
    Label2: TLabel;
    pnlFolio: TPanel;
    xceNombreTransp: TComboEdit;
    Label4: TLabel;
    xlbNombreDocto: TRxLabel;
    Dock971: TTBXDock;
    lblPlazo: TLabel;
    edtPlazo: TEdit;
    xdeFecha: TDateEdit;
    lblFechaFolio: TLabel;
    xceFolio: TComboEdit;
    lblFolio: TLabel;
    xceCodCteProv: TComboEdit;
    Label9: TLabel;
    xceNumAgente: TComboEdit;
    Label10: TLabel;
    Label11: TLabel;
    xceViaTrans: TComboEdit;
    tlbMain: TTBXToolbar;
    tbtSalir: TTBXItem;
    ToolbarSep971: TTBXSeparatorItem;
    tbtImprimir: TTBXItem;
    tbtGrabar: TTBXItem;
    tbtCreate: TTBXItem;
    ToolbarSep973: TTBXSeparatorItem;
    tbtVer: TTBXItem;
    Timer1: TTimer;
    tshFoto: TTabSheet;
    Timer2: TTimer;
    Panel1: TPanel;
    xsbAmpliar: TRxSpeedButton;
    xlbDescri: TRxLabel;
    Panel2: TPanel;
    imgFoto: TImage;
    tlbBackOrder: TTBXItem;
    tbtSaldos: TTBXItem;
    GroupBox1: TGroupBox;
    xcrExisTotal: TCurrencyEdit;
    tbtPedimentos: TTBXItem;
    xcePedimento: TComboEdit;
    lblPedimento: TLabel;
    xsbPedimento: TRxSpeedButton;
    xcrDescRota: TCurrencyEdit;
    Label14: TLabel;
    pgcMain: TPageControl;
    tshCaptura: TTabSheet;
    tshImpresion: TTabSheet;
    F1: TF1Book;
    F11: TF1Book;
    TabSheet1: TTabSheet;
    F12: TF1Book;
    TabSheet2: TTabSheet;
    F2: TF1Book;
    TabSheet3: TTabSheet;
    Label16: TLabel;
    speColIni: TRxSpinEdit;
    mmoLeyendas: TMemo;
    Label17: TLabel;
    Label18: TLabel;
    xceOC: TComboEdit;
    Label19: TLabel;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TabSheet4: TTabSheet;
    RzPanel1: TRzPanel;
    Otf: TOpenTextFileDialog;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    edzSerie: TRzEdit;
    edzFolio: TRzEdit;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    edzFecha: TRzEdit;
    edzTotal: TRzEdit;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    edzemRFC: TRzEdit;
    RzLabel7: TRzLabel;
    edzreRFC: TRzEdit;
    RzLabel8: TRzLabel;
    edzUUID: TRzEdit;
    tbtFE: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    tbtVerifica: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    tshLP: TTabSheet;
    F13: TF1Book;
    grpExistencias: TGroupBox;
    xcrExisTotal2: TCurrencyEdit;
    zlbAlmacen: TRzLabel;
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
    TBXSeparatorItem6: TTBXSeparatorItem;
    tbtFijarLP: TTBXItem;
    tbtLiberarLP: TTBXItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    TabSheet5: TTabSheet;
    F3: TF1Book;
    RzPanel2: TRzPanel;
    Label8: TLabel;
    cboCodigo: TComboBox;
    xsbListar: TRxSpeedButton;
    xsbBuscar: TRxSpeedButton;
    xcrExisTransito: TCurrencyEdit;
    zlbTodosAlm: TRzLabel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    tbtHidePrecios: TTBXItem;
    tbtShowPrecios: TTBXItem;
    TBXSeparatorItem8: TTBXSeparatorItem;
    TBXSeparatorItem9: TTBXSeparatorItem;
    tbtPrint2: TTBXItem;
    tbtCancelar1: TTBXSubmenuItem;
    tbtCancelarPartida: TTBXItem;
    tbtCancelar: TTBXItem;
    Label28: TLabel;
    cboAlmacenes1: TComboBox;
    TabSheet6: TTabSheet;
    pnlDatosEnt: TRzPanel;
    pnlDatosFac: TRzPanel;
    RzLabel9: TRzLabel;
    Memo1: TMemo;
    Label6: TLabel;
    cboMoneda: TComboBox;
    Label1: TLabel;
    cboNumAlmac: TComboBox;
    lblFecVence: TLabel;
    xdeFecVenceDo: TDateEdit;
    lblPedido: TLabel;
    xcePedido: TComboEdit;
    TBXSeparatorItem10: TTBXSeparatorItem;
    tbtMostrar: TTBXItem;
    RzGroupBox1: TRzGroupBox;
    RxLabel4: TRxLabel;
    xcrDescto: TCurrencyEdit;
    xcrSubTotal: TCurrencyEdit;
    RxLabel1: TRxLabel;
    RxLabel5: TRxLabel;
    xcrIVARet: TCurrencyEdit;
    xcrIVA: TCurrencyEdit;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    xcrTotal: TCurrencyEdit;
    TBXDock2: TTBXDock;
    TBXToolbar2: TTBXToolbar;
    tbtPropiedades: TTBXItem;
    tbtChecarPartidas: TTBXItem;
    TBXSeparatorItem11: TTBXSeparatorItem;
    tbtPedimento: TTBXItem;
    TBXSeparatorItem12: TTBXSeparatorItem;
    xcrTipoCambio: TCurrencyEdit;
    Label29: TLabel;
    btnCopiarCte: TRzBitBtn;
    RxLabel6: TRxLabel;
    xcrIEPS: TCurrencyEdit;
    Label12: TLabel;
    xceObservaciones: TComboEdit;
    btnCopiar: TRzBitBtn;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    edtComprador: TRzEdit;
    edtNumProveedor: TRzEdit;
    edtReferencia: TRzEdit;
    edtCuentaBanco: TRzEdit;
    RzPanel3: TRzPanel;
    Label13: TLabel;
    cboPrecio: TComboBox;
    chkDescto: TCheckBox;
    Label15: TLabel;
    xcrPIva: TCurrencyEdit;
    Label27: TLabel;
    edtDec: TEdit;
    RzPanel4: TRzPanel;
    fraDirs_Entrega1: TfraDirs_Entrega;
    Label30: TLabel;
    btnCopiarDatos: TRzBitBtn;
    lblStatusBar1: TRzLabel;
    tbtGenerarPDF: TTBXItem;
    Label22: TLabel;
    cboMetodoPago: TComboBox;
    cboFormaPago: TComboBox;
    Label5: TLabel;
    Label7: TLabel;
    cboUsoCfdi: TComboBox;
    edtRFC: TRzEdit;
    Label20: TLabel;
    xlbCancelado: TRzLabel;
    edtEmailFacturas: TRzEdit;
    Label21: TLabel;
    tbtVerPDF: TTBXItem;
    lblStatusBar2: TRzLabel;
    btnActCte: TRzBitBtn;
    tbtCalculaDescto: TTBXItem;
    lblMoneda2: TRzLabel;
    tbtLimpiarDet: TTBXItem;
    xcrExisAlm1: TCurrencyEdit;
    RzLabel10: TRzLabel;
    xcrExisAlm2: TCurrencyEdit;
    RzLabel11: TRzLabel;
    xcrExisAlm3: TCurrencyEdit;
    RzLabel12: TRzLabel;
    btnExistencia: TRzBitBtn;
    mmoEntregar: TRzMemo;
    lblLinCol: TLabel;
    btnMFU: TRzBitBtn;
    btnAplicarDec: TRxSpeedButton;
    TBXSeparatorItem13: TTBXSeparatorItem;
    tbtFacturas: TTBXItem;
    tbtGrabarMailer: TTBXItem;
    TBXSeparatorItem14: TTBXSeparatorItem;
    tbtSurtir: TTBXItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Select(ptTabla: string; piOpcion: Integer; ptKey: string);
    procedure SetUp;
    procedure SetUpF1;
    procedure SelectDocs;
    procedure SelectDocsF1(ATipo_Docto: string);
    procedure SelectCliente(piOpcion: Integer; ptKey: string);
    procedure SelectAgente(piOpcion: Integer; ptKey: string);
    procedure SelectTransp(piOpcion: Integer; ptKey: string);
    procedure SelectProducto(piOpcion: Integer; ptKey: string);
    procedure SelectBackOrder;
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
    procedure DeleteRowsDetalle;
    procedure tbtCreateClick(Sender: TObject);
    procedure tbtGrabarClick(Sender: TObject);
    procedure tbtSelPedidosClick(Sender: TObject);
    procedure Crear;
    procedure Grabar;
    procedure Update;
    procedure Leer;
    procedure Imprimir;
    procedure Limpiar;
    procedure Cancelar;
    procedure VaciarPedido;
    procedure VaciarPedidoF1;
    procedure GetProducto(ptCod: string);
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
    function GetNextRow: Integer;
    procedure VerFoto;
    procedure VerExistencia;
    procedure VerPedimento;
    procedure F1SelChange(Sender: TObject);
    procedure MoverCursor(Key: Word; piTimes: Integer);
    procedure Timer2Timer(Sender: TObject);
    procedure F1Enter(Sender: TObject);
    procedure xsbAmpliarClick(Sender: TObject);
    procedure BuscaCliente;
    procedure BuscaAgente;
    procedure BuscaViaTransporte;
    procedure tlbBackOrderClick(Sender: TObject);
    procedure SelectSaldos;
    procedure tbtSaldosClick(Sender: TObject);
    procedure ListarProductos;
    function VerificaFactura: Boolean;
    procedure tbtPedidosF1Click(Sender: TObject);
    procedure cboMonedaClick(Sender: TObject);
    procedure GetTipoCambio;
    function HayDescuento: Boolean;
    procedure PonerFormulas;
    procedure CalculaTotales;
    procedure InsertRowsDetalle;
    procedure SelectPedimentos;
    procedure tbtPedimentosClick(Sender: TObject);
    procedure xsbPedimentoClick(Sender: TObject);
    procedure PonLimite;
    procedure ClearDesctos;
    procedure LeerDesctos;
    procedure GetPrecioConDescuento(ptFam: string;
      pdPrecioLista: Double;
      var pdPrecioFinal: Double;
      var pdDescuento: Double);
    procedure LlenaFactura;
    procedure LlenaFactura2;
    procedure BuildCodigo;
    procedure F12EndEdit(Sender: TObject; var EditString: WideString;
      var Cancel: Smallint);
    procedure F12SelChange(Sender: TObject);
    procedure F12DblClick(Sender: TObject; nRow, nCol: Integer);
    procedure F11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function ValidarDoc: Integer;
    procedure ChecarCredito(var AContinuar: Boolean);
    procedure GenerarFacturaElectronica(ATipo_Docto: Integer);
    procedure GenerarCancelElectronica(ATipo_Docto: Integer; var AErr: Integer);
    procedure btnGenerarClick(Sender: TObject);
    procedure GetRC(AVar: string;
      var Ren, Col: Integer);
    procedure RefreshF1;
    procedure tbtLigarClick(Sender: TObject);
    procedure tbtFEClick(Sender: TObject);
    procedure tbtVerificaClick(Sender: TObject);
    procedure btnInsertarClick(Sender: TObject);
    procedure F13DblClick(ASender: TObject; nRow, nCol: Integer);
    procedure SelectLP;
    procedure F13KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SeleccionaAlmacen(AIdSucursal: Integer);
    procedure LlenaFactura3;
    procedure LlenaFE33;
    procedure LeerXLS;
    procedure GrabarXLS;
    function GetFileName: string;
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
    function GetNextRowDoc: Integer;
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
    procedure SetFont(ARow: Integer; ATipo: string);
    procedure tbtMostrarClick(Sender: TObject);
    procedure btnCopiarCteClick(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
    procedure btnCopiarDatosClick(Sender: TObject);
    procedure mmoEntregarChange(Sender: TObject);
    procedure cboSelectDirs(Sender: TObject);
    procedure SetMetodoFormaPago(ADias: Integer);
    procedure xceCodCteProvEnter(Sender: TObject);
    procedure tbtGenerarPDFClick(Sender: TObject);
    procedure cboMetodoPagoSelect(Sender: TObject);
    procedure SetMsg(AMsg: string; ABlink: Boolean);
    procedure SetMsg2(AMsg: string; ABlink: Boolean);
    procedure tbtVerPDFClick(Sender: TObject);
    procedure Cliente_Update;
    procedure btnActCteClick(Sender: TObject);
    procedure CalculaDescto;
    procedure tbtCalculaDesctoClick(Sender: TObject);
    procedure tbtLimpiarDetClick(Sender: TObject);
    procedure btnExistenciaClick(Sender: TObject);
    procedure mmoEntregarLineColChange(Sender: TObject; Line, Column: Integer);
    procedure btnMFUClick(Sender: TObject);
    procedure tbtFacturasClick(Sender: TObject);
    procedure GrabarMailer;
    procedure tbtGrabarMailerClick(Sender: TObject);
    procedure tbtSurtirClick(Sender: TObject);
    procedure SurtirPedido(APrioridad:Integer = 1);
    procedure tbtPrint2Click(Sender: TObject);
  private
    { Private declarations }
    oCte: TCliente;
    oDoc: TDoc;
    oProd: TProducto;
    oFam: TFamilia;
    oAge: TAgente;
    oTabla: TTabla;
    oMon: TMoneda;
    oMailer: TMailer;
    oCfdi: TCfdi;
    oOS: TOrdenSurtido;
    Pedimento: TPedimento;
    FTipo_Docto: Integer;
    mrRes: Integer;
    TipoTabla: string;
    miRow: Integer;
    miLista: Integer;
    edEstado: TDocState;
    mtPath: string;
    mtFoto: string;
    mdIVA: Double;
    mtLugarExp: string;
    miErrorFactura: Integer;
    miMoneda: Integer;
    ColSet: set of 1..200;
    fHuboFacturas: Boolean;
    miRenFac, //Total rens factura
    miRenLimite: integer; // Ren limite actual (cambia en cada captura de articulo)
  //  Tipo_Docto:Integer;
    mdValidar: Double;
    mdValorMaxFac: Double;
    vr: Integer;
    mfLoading: Boolean;
    mtZona: string;
    miType, miType11: Smallint;
    miVeces: Integer;
    aF11: TDefs;
    c_TipoComprobante: string;
    mtCliente, mtAgente, mtTransp: string;
    mfLiberacionAutomatica:Boolean;

  public
    { Public declarations }
    property Tipo_Docto: Integer read FTipo_Docto write FTipo_Docto;
  end;

const
  TABLA_CD: string = '7';
  TABLA_EDO: string = '4';
  TABLA_PAIS: string = '16';
  TABLA_AGE: string = '12';
  TABLA_TRA: string = '10';


implementation

uses Main, DM_MBA, MsgError, SelCodDes, ClsPrintTxt, SelDoc, SelTabla,
VerImagen, BackOrder, Saldos, SelDocF1, SelPedimentos, FE332, ClienteAct,
CalculaDescto;

{$R *.DFM}

procedure TfrmDocsFac.FormCreate(Sender: TObject);
var
  tFile: string;
begin
  //
  mfLoading := True;
  fHuboFacturas := False;
  tFile := GetIniFile;
  oCte := TCliente.Create;
  oDoc := TDoc.Create;
  oProd := TProducto.Create;
  oFam := TFamilia.Create;
  oAge := TAgente.Create;
  oTabla := TTabla.Create;
  oMon := TMoneda.Create;
  oMailer := TMailer.Create;
  oCfdi := TCfdi.Create;
  oOS:= TOrdenSurtido.Create;
  mtPath := oIni.ReadString('Directorios', 'Graficos', 'c:\@Mba\Ico\');
  miVeces := 0;

  oParam.CODPAR := 'LIBERAPEDIDO';
  mfLiberacionAutomatica := (oParam.VALORNUM = 1);


  frmFE332 := TfrmFE332.Create(Application);
  frmFE332.Inicializar;
  frmFE332.CarpetaFormatos := oIni.ReadString('Directorios', 'Formatos','C:\@MBA\Fmt\');
  frmFE332.CarpetaCFDI     := oIni.ReadString('Directorios', 'CFDI','C:\@MBA\Fmt\');
  frmFE332.CarpetaCFDI2017 := oIni.ReadString('Directorios', 'CFDI2017','C:\@MBA\Fmt\');

end;

procedure TfrmDocsFac.tbtGenerarPDFClick(Sender: TObject);
begin
  frmFE332.MoverPDF;
  tbtImprimirClick(Sender);
end;

procedure TfrmDocsFac.tbtGrabarMailerClick(Sender: TObject);
begin
  if (edEstado = edInsert) then begin
    ShowMessage('Graba la factura primero antes de Grabarla en el Mailer');
    exit;
  end;
  GrabarMailer;
end;

procedure TfrmDocsFac.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  mfLoading := True;
  SetUp;
  //    SetUpF1;
  mfLoading := False;
end;

procedure TfrmDocsFac.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  // Acumular las ventas al salir de facturar... con la fecha que tiene la PC
  {    if fHuboFacturas then
          DM1.CierreMes;
  }
  //--------------------------------------------
  FreeAndNil(oCte);
  FreeAndNil(oDoc);
  FreeAndNil(oProd);
  FreeAndNil(oFam);
  //    oParam.Free;
  FreeAndNil(oAge);
  FreeAndNil(oTabla);
  FreeAndNil(oMon);
  FreeAndNil(oMailer);
  FreeandNil(oCfdi);
  FreeandNil(oOS);
  //    oIni.Free;

  FreeAndNil(frmFE332);

//  frmDocsFac := nil;
//  FreeAndNil(self);
  Action := caFree;
end;

procedure TfrmDocsFac.SalirExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmDocsFac.FormShow(Sender: TObject);
begin
  Top := 0;
  Left := 0;

end;

procedure TfrmDocsFac.SetUp;
var
  ix: integer;
  tCod,tSuc: string;
begin
  miRenFac := 120; // A la factura le caben 25 renglones
  F1.Maxrow := mirenFac;

  oParam.CODPAR := 'IVA';
  //    mdIVA := oParam.VALORNUM;
  xcrPIVA.Value := oParam.VALORNUM;
  //    oParam.CODPAR := 'LUGAREXP';
  oParam.CODPAR := 'LUGAREXPCP';
  mtLugarExp := oParam.VALORTXT;

  oParam.CODPAR := 'CXC';
  mdValidar := oParam.VALORNUM;

  oParam.CODPAR := 'VALORMAXFAC';
  mdValorMaxFac := oParam.VALORNUM;

  pgcCliente.ActivePageIndex := 0;

  case Tipo_Docto of
    23, 28:
      begin
        tSuc := 'Matriz Monterrey';
        xlbNombreDocto.Color := clGreen;
      end;
    232, 282:
      begin
        tSuc := 'Sucursal Guadalajara';
        xlbNombreDocto.Color := clFuchsia;
      end;
    233, 283:
      begin
        tSuc := 'Sucursal Mexico';
        xlbNombreDocto.Color := clAqua;
      end;
  end;
  case Tipo_Docto of
    1:
      begin
        xlbNombreDocto.Caption := '** Facturas AR**';
        xlbNombreDocto.Color := clRed;
        lblfolio.Caption := 'Folio (' + sm.StrFloat(Tipo_Docto, '#') + ')';
        c_TipoComprobante := 'I';
      end;
    107:
      begin
        xlbNombreDocto.Caption := '** Factura Electronica **';
        xlbNombreDocto.Color := clBlue;
        lblfolio.Caption := 'Folio (' + sm.StrFloat(Tipo_Docto, '#') + ')';
        c_TipoComprobante := 'I';
        Caption := 'Factura Electronica v 3.3';
      end;
    23, 232, 233:
      begin
        xlbNombreDocto.Caption := '** PEDIDOS: ' + tSuc + '  **';
//        xlbNombreDocto.Color := clGreen;
        tbtPedimentos.Visible := False;
        lblfolio.Caption := 'Folio (' + sm.StrFloat(Tipo_Docto, '#') + ')';
        c_TipoComprobante := '';
        Caption := 'PEDIDOS: ' + tSuc;
      end;
    28, 282, 283:
      begin
        xlbNombreDocto.Caption := '** REMISIONES: ' + tSuc + '  **';
//        xlbNombreDocto.Color := clGreen;
        tbtPedimentos.Visible := False;
        lblfolio.Caption := 'Folio (' + sm.StrFloat(Tipo_Docto, '#') + ')';
        c_TipoComprobante := '';
        Caption := 'REMISIONES: ' + tSuc;
      end;

  end;

  oMon.FillMoneda(cboMoneda);
  oMon.Fecha := xdeFecha.Date;

  oMon.MONEDA := '2';
  xcrTipoCambio.Value := oMon.GetTipoCambio; // Lo uso en GetProducto...

  oMon.MONEDA := Trim(sm.NthWord(1, cboMoneda.Text));
  oDoc.MONEDADOCT := oMon.MONEDA;

  // Llenar combos

  DM1.FillAlmacen(cboNumAlmac);
  if cboNumAlmac.Items.Count > 0 then
    cboNumAlmac.ItemIndex := 0;
  ix := StringLib.ComboSeekText(cboNumAlmac.Items, sm.StrFloat(oEmp.Sucursal,
    '#'));

  cboNumalmac.ItemIndex := ix;

  DM1.FillAlmacen(cboAlmacenes1);
  tCod := sm.Pad('0', 3);
  cboAlmacenes1.Items.Add(tCod + '|Todos los Almacenes');
  cboAlmacenes1.ItemIndex := 0;

  //Poner en el producto con cual almacen estamos manejando para sacar la existencia de ese almacen
  oProd.NUMALMAC := Trim(sm.NthWord(1, cboNumAlmac.Text, ['|']));

  oCfdi.Fill_FormaPago(cboFormaPago.Items);
  oCfdi.Fill_MetodoPago(cboMetodoPago.Items);
  oCfdi.Fill_UsoCfdi(cboUsoCfdi.Items);

  xdeFecha.Date := Date;

  fraDirs_Entrega1.Initiate;
  fraDirs_Entrega1.CODCTEPROV := oCte.CODCTEPROV;
  fraDirs_Entrega1.EventSelect := cboSelectDirs;
  Crear;

end;

procedure TfrmDocsFac.SetUpF1;
var
  i, iMaxRows: Integer;
  tSel, tRow: string;
  tFile, tDir: string;
  iType: smallint;
  Enca: TStringList;
begin

  F1.AutoRecalc := False;
  F1.DoEndRecalc := False;
  //-----------------------------------------------------
  aF11.HeaderRows := 17;
  aF11.DetCount := 35; //28
  aF11.DetMinCount := 35; //28
  aF11.DetLastRow := 52; // se modifica en LLenaFactura3
  aF11.FooterRows := 6;

  tSel := F1.Selection;
  F1.ShowSelections := F1Off;
  for i := 1 to ctMaxColumn do
  begin
    F1.SetSelection(1, i, F1.MaxRow, i);
    F1.ColText[i] := ColFac[i].Header;
    F1.SetColWidth(i, i, ColFac[i].Width, False);
    F1.NumberFormat := ColFac[i].Format;
    F1.ColHidden[i] := ColFac[i].Hidden;
  end;
  F1.ShowSelections := F1Auto;

  //Configurar F1
  F1.AllowDelete := False;
  F1.ShowEditBar := True;
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

//  LoadF11;

  //Cargar Hoja de selección de productos
  tDir := oINi.ReadString('Directorios', 'Formatos', '');
    //   ExtractFileDir(ParamStr(0));
  tFile := 'FMT_FACCAP.xls';
  tFile := tDir + '\' + tFile;
  F12.Read(tFile, iType);
  F12.Sheet := 1;
  for i := 1 to 8 do
  begin
    F12.Sheet := i;
    F12.FixedRows := 3;
    F12.FixedCols := 2;
    F12.EnterMovesDown := False;
  end;
  F12.Sheet := 1;
  F12.AllowDelete := False;
  F12.ShowEditBar := True;

  //Cargar Hoja de Lista de Precios
  tDir := oINi.ReadString('Directorios', 'Formatos', '');
    //   ExtractFileDir(ParamStr(0));
  tFile := 'Fmt_Cap2012.xls';
  tFile := tDir + tFile;
  F13.Read(tFile, iType);
  F13.Sheet := 1;
  F13.Sheet := 1;
  F13.AllowDelete := False;
  F13.ShowEditBar := True;

  //Cargar Hoja de Descuetos
  tDir := oINi.ReadString('Directorios', 'Formatos', '');
    //   ExtractFileDir(ParamStr(0));
  tFile := 'FMT_DESCTOSCTE.xls';
  tFile := tDir + '\' + tFile;
  F2.Read(tFile, iType);
  F2.Sheet := 1;
  F2.MaxCol := 8;
  F2.MaxRow := 100;
  F2.TopRow := 7;
  F2.ViewScale := 80;
  F2.Selection := 'B7';

  // Configurar Hoja F3....
  tDir := oINi.ReadString('Directorios', 'Formatos', '');
    //   ExtractFileDir(ParamStr(0));
  tFile := 'Fmt_Busqueda2.xls';
  tFile := tDir + '\' + tFile;

  if not FileExists(tFile) then
  begin
    tFile := 'Rep_Vacio.xls';
    tFile := tDir + tFile;
  end;

  F3.Read(tFile, miType);

  //    miHojaConfig := GetHojaConfig;

  F3.ShowTabs := F1TabsBottom;
  F3.Sheet := 1;
  F3.EnterMovesDown := False;
  F3.AllowDelete := False;
  F3.AllowTabs := False;
  F3.ShowEditBar := true;

end;

procedure TfrmDocsFac.LoadF11;
var
  tFile, tDir: string;
  iType: smallint;
begin
  //Cargar Hoja de Impresión  XLS
  tDir := oINi.ReadString('Directorios', 'Formatos', '');
    //   ExtractFileDir(ParamStr(0));

  case Tipo_Docto of
    1: tFile := 'FMT_FACIMPRE.xls';
    107: tFile := 'FMT_FACTURA33.xls';
    30, 302, 303: tFile := oINi.ReadString('Archivos', 'Cotizacion',
      'Fmt_CotizaMty.xls');
    23, 232, 233: tFile := oINi.ReadString('Archivos', 'Pedido',
      'Fmt_PedidoMty.xls');
    28, 282, 283: tFile := oINi.ReadString('Archivos', 'Remision',
      'Fmt_RemisionMty.xls');
  end;

  tFile := tDir + tFile;
  F11.Read(tFile, miType11);
  F11.Sheet := 1;
  F11.TopRow := 7;
  F11.LeftCol := 1;
  F11.AllowDelete := False;
  F11.ShowEditBar := True;

end;

procedure TfrmDocsFac.mmoEntregarChange(Sender: TObject);
begin
  fraDirs_Entrega1.Datos_Embarque := mmoEntregar.Text;

end;

procedure TfrmDocsFac.mmoEntregarLineColChange(Sender: TObject; Line,
  Column: Integer);
begin
  lblLinCol.Caption := 'Lin: ' + sm.StrFloat(Line,'0',2,' ') + ' Col: ' + sm.StrFloat(Column,'0',2,' ')
end;

{---------------------------------------------------------------
Eventos de la barra herramientas
---------------------------------------------------------------}

procedure TfrmDocsFac.tbtCreateClick(Sender: TObject);
begin
  Crear;
end;

procedure TfrmDocsFac.tbtFacturasClick(Sender: TObject);
begin
  SelectDocsF1('107');

end;

procedure TfrmDocsFac.tbtFEClick(Sender: TObject);
var
  fOk:Boolean;
begin

  frmMsg.ClearAll;
  fOk := VerificaFactura;

  if not fOk then begin
    frmMsg.ShowModal;
    exit;
  end;

  GenerarFacturaElectronica(Tipo_Docto);

end;

procedure TfrmDocsFac.tbtFijarLPClick(Sender: TObject);
begin
  F13.FixedRows := F13.Row - 1;
  F13.FixedCols := F13.Col - 1;

end;

procedure TfrmDocsFac.tbtLiberarLPClick(Sender: TObject);
begin
  F13.FixedRows := 0;
  F13.FixedCols := 0;
end;

procedure TfrmDocsFac.tbtGrabarClick(Sender: TObject);
var
  fOk: Boolean;
begin

  frmMsg.ClearAll;
  fOk := VerificaFactura;

  if not fOk then begin
    frmMsg.ShowModal;
    exit;
  end;

  if (edEstado = edInsert) then Grabar;
  if (edEstado = edBrowse) then begin
    case Tipo_Docto of
    23,232,233: Grabar;
    28,282,283: Update;
    end;
  end;
  UpdateControls;
  //    Crear;   //Inicio nuevo docto
end;

procedure TfrmDocsFac.tbtHidePreciosClick(Sender: TObject);
var
  tSel: string;
begin
  if Tipo_Docto = 107 then
  begin
    tSel := F11.Selection;
    F11.SetSelection(18, 10, 167, 13);
    F11.NumberFormat := '"*"';
    F11.Selection := tSel;
  end
  else
  begin
    tSel := F11.Selection;
    F11.SetSelection(18, 10, 145, 13);
    F11.NumberFormat := '"*"';
    F11.Selection := tSel;
  end;

end;

procedure TfrmDocsFac.tbtShowPreciosClick(Sender: TObject);
var
  tSel: string;
begin
  if Tipo_Docto = 107 then
  begin
    tSel := F11.Selection;
    F11.SetSelection(18, 10, 167, 13);
    F11.NumberFormat := '#,##0.00';
    F11.SetSelection(18, 11, 167, 11);
    F11.NumberFormat := '#,##0.00"%"';
    F11.Selection := tSel;
  end
  else
  begin
    tSel := F11.Selection;
    F11.SetSelection(18, 10, 144, 13);
    F11.NumberFormat := '#,##0.00';
    F11.SetSelection(18, 11, 144, 11);
    F11.NumberFormat := '#,##0.00"%"';
    F11.Selection := tSel;
  end;

end;

procedure TfrmDocsFac.tbtSurtirClick(Sender: TObject);
begin
  SurtirPedido(1); //Normal
end;

procedure TfrmDocsFac.tbtImprimirClick(Sender: TObject);
var
  fOk: Boolean;
  Msg: string;
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

  if not fOk then
  begin
    frmMsg.ShowModal;
    exit;
  end;

  if Tipo_Docto = 107 then
  begin
    Clipboard.AsText := frmFE332.CarpetaDataOut + frmFE332.ArchivoPDF;
  end;
  Imprimir;
  UpdateControls;
  //    Crear;   //Inicio nuevo docto
end;

procedure TfrmDocsFac.tbtLigarClick(Sender: TObject);
var
  fRes: Boolean;
begin
  fRes := otf.Execute;
  if fRes then
  begin
    frmFE332.LoadXMLFile(otf.FileName);
    frmFE332.GetInfo;
    //    ShowMessage(frmFE.feDatos.Serie+#10+#13+frmFE.feDatos.Folio+#10+#13+frmFE.feDatos.Total);
    edzSerie.Text := frmFE332.Serie;
    edzFolio.Text := frmFE332.Folio;
    edzFecha.Text := ESBDates.Date2Str(frmFE332.Fecha);
    edzTotal.Text := sm.StrFloat(frmFE332.Total, '0');
    edzUUID.Text := frmFE332.UUID;
    edzemRFC.Text := frmFE332.emRFC;
    edzreRFC.Text := frmFE332.reRFC;

    if oDoc.Docto_ID <= 0 then
    begin
      ShowMessage('Hay que grabar el documento antes de hacer la liga!');
      exit;

    end;
    oDoc.SaveFE(oDoc.DOCTO_ID, edzSerie.Text, edzFolio.Text, edzFecha.Text,
      edzTotal.Text, edzemRFC.Text, edzreRFC.Text, edzUUID.Text);

  end;
end;

procedure TfrmDocsFac.tbtLimpiarDetClick(Sender: TObject);
begin
  LimpiarDetalle;
  xcePedido.Text := '';
  xceOC.Text := '';
  xceObservaciones.Text := '';
end;

procedure TfrmDocsFac.tbtMostrarClick(Sender: TObject);
begin
  frmFE332.ShowModal;
end;

procedure TfrmDocsFac.tbtCalculaDesctoClick(Sender: TObject);
begin
  F1.SetFocus;
  CalculaDescto;
end;

procedure TfrmDocsFac.tbtCancelarOldClick(Sender: TObject);
begin
  if edEstado = edBrowse then
    // La factura se leyó de la BD, => si la puedo cancelar
    Cancelar
  else
    Crear; //Si estoy insertando la factura (no la he grabado)
  //solo limpio los datos.
  UpdateControls;
end;

procedure TfrmDocsFac.tbtCancelarPartidaClick(Sender: TObject);
begin
  if oUser.UID <= 0 then
  begin
    ShowMessage('No tienes autorizacion para cancelar partidas!!' + #10 + #13 +
      'Avisale al SUPERVISOR');
    exit;
  end;

  if F1.NumberRC[F1.Row, IdCols.Partida] > 0 then
  begin
    // Si puedo cancelar en estado de Browse
    if F1.NumberRC[F1.Row, IdCols.Cancela] = 2 then
    begin
      F1.NumberRC[F1.Row, IdCols.Cancela] := 0;
      SetFont(F1.Row, 'NORMAL');
    end
    else
    begin
      F1.NumberRC[F1.Row, IdCols.Cancela] := 2;
      SetFont(F1.Row, 'CANCELAPARTIDA');
    end;
  end
  else
  begin
    DeleteRowsDetalle //Si estoy insertando, Cancelar = Eliminar
  end;
  RefreshF1;
end;

procedure TfrmDocsFac.tbtPed1Click(Sender: TObject);
begin
  SelectDocsF1('23');

end;

procedure TfrmDocsFac.tbtPed2Click(Sender: TObject);
begin
  SelectDocsF1('232');

end;

procedure TfrmDocsFac.tbtPed3Click(Sender: TObject);
begin
  SelectDocsF1('233');

end;

procedure TfrmDocsFac.tbtPedimentosClick(Sender: TObject);
begin
  SelectPedimentos;
end;

procedure TfrmDocsFac.tbtPrint2Click(Sender: TObject);
begin
  ImprimirDoc;
end;

procedure TfrmDocsFac.tbtRem1Click(Sender: TObject);
begin
  SelectDocsF1('28');

end;

procedure TfrmDocsFac.tbtRem2Click(Sender: TObject);
begin
  SelectDocsF1('282');

end;

procedure TfrmDocsFac.tbtRem3Click(Sender: TObject);
begin
  SelectDocsF1('283');

end;

procedure TfrmDocsFac.tbtPedidosF1Click(Sender: TObject);
begin
  SelectDocsF1('23');
end;

procedure TfrmDocsFac.tbtCot1Click(Sender: TObject);
begin
  SelectDocsF1('30');
end;

procedure TfrmDocsFac.tbtCot2Click(Sender: TObject);
begin
  SelectDocsF1('302');

end;

procedure TfrmDocsFac.tbtCot3Click(Sender: TObject);
begin
  SelectDocsF1('303');

end;

procedure TfrmDocsFac.tbtSelPedidosClick(Sender: TObject);
begin
  //
  SelectDocs;
end;

procedure TfrmDocsFac.tbtVerClick(Sender: TObject);
begin
//  pnlTotales.Visible := not pnlTotales.Visible;
  pgcCliente.Visible := not pgcCliente.Visible;
end;

procedure TfrmDocsFac.tbtVerificaClick(Sender: TObject);
var
  tSerie: string;
  tAux, tFile: string;
  AErr: Integer;
begin
  if Tipo_Docto <> 107 then
    exit;

  if sm.IsEmpty(frmFE332.Folio) then
  begin
    frmFE332.TipoDocto := 'FAC';
    frmFE332.Serie := 'A';
    frmFE332.Folio := xceFolio.Text;
  end;

  AErr := frmFE332.CheckXMLFile;
  if AErr = 0 then
  begin
    SetMsg2('Factura Timbrada!!! XML Generado!!!', False);
    Clipboard.AsText := frmFE332.CarpetaDataOut + frmFE332.ArchivoPDF;
  end
  else
  begin
    ShowMessage('El archivo "' + frmFE332.CarpetaDataOut + frmFE332.ArchivoXML +
      '" NO Existe!!'#10 + #13 +
      'Espera unos 5 segundos y vuelve a intentar');

  end;

  UpdateControls;

end;

procedure TfrmDocsFac.tbtVerPDFClick(Sender: TObject);
var
  tFile:PAnsiChar;
begin
  tFile := PAnsiChar(frmFE332.CarpetaDataOut + frmFE332.ArchivoPDF);
  ShellExecute(Handle, 'open', tFile, nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmDocsFac.tlbBackOrderClick(Sender: TObject);
begin
  SelectBackOrder;
end;

procedure TfrmDocsFac.tbtSalirClick(Sender: TObject);
begin
  Close;
end;

{---------------------------------------------------------------
Acciones Basicas del Modulo
---------------------------------------------------------------}

procedure TfrmDocsFac.UpdateControls;
begin
  tbtCancelar.Enabled := (oDoc.CANCELA <> '1');
  if Tipo_Docto <> 107 then begin
    tbtFE.Visible := False;
    tbtverifica.Visible := False;
    tbtMostrar.Visible := False;
    tbtGenerarPDF.Visible := False;
    tbtVerPDF.Visible := False;
    tbtGrabarMailer.Visible := False;
  end else begin
    tbtFE.Visible := True;
    tbtverifica.Visible := True;
    tbtMostrar.Visible := True;
    tbtGenerarPDF.Visible := True;
    tbtVerPDF.Visible := True;
    tbtGrabar.Enabled := (edEstado = edInsert);
    tbtGrabarMailer.Visible := False;
  end;
  case Tipo_Docto of
    28, 282, 283, 107:
      begin
        tbtCancelar1.Enabled := (oUser.UID > 0);
        xceCodCteProv.Enabled := (edEstado = edInsert);
        xceNombreCte.Enabled := (edEstado = edInsert);
        xceNumAgente.Enabled := (edEstado = edInsert);
        xceNombreAgente.Enabled := (edEstado = edInsert);
      end;
  end;

  btnCopiarCte.Enabled := (length(mtCliente) > 0);
  tbtGenerarPDF.Enabled := frmFE332.XMLOk;
  tbtSurtir.Visible     := ((Tipo_Docto = 23) or (Tipo_Docto = 232) or (Tipo_Docto = 233));
  {
      exit;
      tbtGrabar.Enabled := (edEstado = edInsert);
      pgcCliente.Enabled := (edEstado = edInsert);
      pnlTotales.Enabled := (edEstado = edInsert);
  }
end;

procedure TfrmDocsFac.Crear;
var
  tTD: string;
  iFolio: Integer;
begin

  F1.DoEndRecalc := False;

  edEstado := edInsert;
  oDoc.Status := edEstado;
  UpdateControls;

  SetUpF1;

  pgcMain.ActivePageIndex := 0;
  pgcCliente.Visible := True;
  pgcCliente.ActivePageIndex := 0;

  Limpiar;
  oDoc.NUMTIPODOC := sm.StrFloat(Tipo_Docto, '###');

  cboMoneda.Enabled := True;
  cboMoneda.ItemIndex := 0;
  cboMonedaClick(nil);

  oParam.CODPAR := 'IVA';
  xcrPIVA.Value := oParam.VALORNUM;


  xceFolio.Text := oDoc.GetNextFolio;

  xlbCancelado.visible := False;

  pgcMain.ActivePageIndex := 0;

  oProd.NUMALMAC := Trim(sm.NthWord(1, cboNumAlmac.Text, ['|']));

  fraDirs_entrega1.LimpiarTodo;

  F1.DoEndRecalc := True;
  F1.Recalc;

  frmFE332.Inicializar;

  xceCodCteProv.SetFocus;

end;

procedure TfrmDocsFac.Grabar;
var
  iErr: integer;
begin

  RefreshF1;

  if (edEstado = edBrowse) and (not oDoc.Modificar) then
  begin
    // NUNCA modificar una factura....
    frmMsg.ClearAll;
    frmMsg.AddError(1, 'Este tipo de documentos NO se puede modificar',
      'Verica con el supervisor si es posible modificar este tipo de documentos.',
      '');
    frmMsg.ShowAsk := False;
    frmMsg.ShowCancel := False;
    frmMsg.ShowModal;
    exit;
  end;
  if edEstado = edInsert then
  begin
    {Antes de grabar obtengo el Folio de nuevo, por si otro usuario
     grabó otro folio mientras se editaba este.
     Si estoy creando un nuevo documento, SI incremento el folio}
//        if Tipo_Docto <> 1 then  // No incrementar el folio cuando es factura
//        xceFolio.Text := oDoc.GetNextFolio;  <== Lo puse dentro de ClsDoc 26/Feb/2003
  end;

  oDoc.Error := 0;
  oDoc.NUMTIPODOC := sm.StrFloat(Tipo_Docto, '#');
  oDoc.SERIEDOCTO := '*';
  oDoc.NUMDOCTO := xceFolio.Text;
  oDoc.FECDOCTO := xdeFecha.Date + Time;
  oDoc.CODCTEPROV := xceCodCteProv.Text;
  oDoc.NUMAGENTE := xceNumAgente.Text;
  oDoc.VIATRANS := xceViaTrans.Text;
  oDoc.DIAESP := edtPlazo.Text;
  oDoc.REFERDOCTO := xcePedido.Text;
  oDoc.IMPDESCAUT := xcrDescto.Value;
  oDoc.IMPNETODOC := xcrSubTotal.Value;
  oDoc.IMPIVADOCT := xcrIVA.Value;
  oDoc.PORCIVADOC := xcrPIVA.Value;
  oDoc.IMPTOTALDO := xcrTotal.Value;
  oDoc.IMPPENDDOC := xcrTotal.Value;
  oDoc.NUMALMAC := Trim(sm.NthWord(1, cboNumAlmac.Text, ['|']));
  oDoc.MONEDADOCT := Trim(sm.NthWord(1, cboMoneda.Text, ['|']));
  oDoc.TIPOCAMBIO := xcrTipoCambio.value;
  oDoc.FECVENCEDO := xdeFecVenceDo.date;
  oDoc.REFERDOCTO2 := xceOC.Text;
  oDoc.OBSERVA := xceObservaciones.Text;
  oDoc.IDDIRENTREGA := fraDirs_Entrega1.IDDIRENTREGA;
  oDoc.METODOPAGO := Trim(sm.NthWord(1, cboMetodoPago.Text, ['|']));
  oDoc.FORMAPAGO  := Trim(sm.NthWord(1, cboFormaPago.Text, ['|']));
  oDoc.USOCFDI    := Trim(sm.NthWord(1, cboUsoCfdi.Text, ['|']));

  oDoc.Detalle := F1;

  frmMsg.ClearAll;
  iErr := ValidarDoc;
  if iErr > 0 then
  begin
    frmMsg.ShowAsk := False;
    frmMsg.ShowCancel := False;
    frmMsg.ShowModal;
    exit;
  end;

  oDoc.Save;

  if oDoc.Error > 0 then
  begin
    frmMsg.Messages := oDoc.Msg;
    frmMsg.ShowAsk := False;
    frmMsg.ShowCancel := False;
    frmMsg.ShowModal;
    exit;
  end;

  SetMsg('Se guardaron los datos completos del documento con exito!',False);
  //Si al grabar toma otro folio diferente al que se muestra en pantalla.
  //Cuando otro usuario simultaneamente graba el mismo tipo de documento...
  xceFolio.Text := oDoc.NUMDOCTO;
  Application.ProcessMessages;

  fHuboFacturas := True;

  if Tipo_Docto in [107] then
    GenerarFacturaElectronica(Tipo_Docto);

  edEstado := edBrowse;
  oDoc.Status := edEstado;

  //Grabar la ultima direccion de entrega del cliente...
{  oCte.Save_UltimaDir(fraDirs_Entrega1.NOMBRE_DIR,
    fraDirs_Entrega1.Dir_Entrega,
    fraDirs_Entrega1.Prioridad,
    mmoEntregar.Text); }
  //Grabar la hoja de calculo...
  GrabarXLS;

  UpdateControls;

  mtCliente := xceCodCteProv.Text;
  mtAgente := xceNumAgente.Text;
  mtTransp := xceViaTrans.Text;

end;

procedure TfrmDocsFac.Update;
var
  iErr: integer;
begin

  RefreshF1;

  oDoc.Error := 0;
  oDoc.FECDOCTO := xdeFecha.Date + Time;
//  oDoc.CODCTEPROV := xceCodCteProv.Text;
//  oDoc.NUMAGENTE := xceNumAgente.Text;
  oDoc.VIATRANS := xceViaTrans.Text;
  oDoc.REFERDOCTO := xcePedido.Text;
  oDoc.NUMALMAC := Trim(sm.NthWord(1, cboNumAlmac.Text, ['|']));
  oDoc.MONEDADOCT := Trim(sm.NthWord(1, cboMoneda.Text, ['|']));
  oDoc.REFERDOCTO2 := xceOC.Text;
  oDoc.OBSERVA := xceObservaciones.Text;
  oDoc.IDDIRENTREGA := fraDirs_Entrega1.IDDIRENTREGA;
  oDoc.METODOPAGO := Trim(sm.NthWord(1, cboMetodoPago.Text, ['|']));
  oDoc.FORMAPAGO  := Trim(sm.NthWord(1, cboFormaPago.Text, ['|']));
  oDoc.USOCFDI    := Trim(sm.NthWord(1, cboUsoCfdi.Text, ['|']));

  oDoc.Update;

  if oDoc.Error > 0 then
  begin
    frmMsg.Messages := oDoc.Msg;
    frmMsg.ShowAsk := False;
    frmMsg.ShowCancel := False;
    frmMsg.ShowModal;
    exit;
  end;
  SetMsg('Se actualizaron los datos generales del documento con exito!',False);
end;

procedure TfrmDocsFac.LeerXLS;
var
  tDir, tFile, tFolio: WideString;
begin

  tDir := oINi.ReadString('Directorios', 'Documentos', '');
    //   ExtractFileDir(ParamStr(0));
  tFile := GetFileName;
  tFolio := Trim(xceFolio.text);
  tFolio := sm.PadLeft(tFolio, 6, '0');
  tFile := tFile + tFolio;
  tFile := tDir + tFile + '.xls';

  {    if not FileExists(tFile) then begin
          MessageDlg('El archivo XLS NO existe!'+#10+#13+'Nombre:'+tFile, mtConfirmation,[mbOk], 0);
          exit;
      end;
  }
  try
    F11.read(tFile, miType11);
  except;
    MessageDlg('Imposible leer el archivo!' + #10 + #13 + 'Nombre:' + tFile,
      mtWarning, [mbOk], 0);
  end;

  // Al leer, no se refresca bien el F1. Cambiando de una hoja a otra, ya hace el refresh bien...
  F11.Sheet := 2;
  F11.Sheet := 1;

end;

procedure TfrmDocsFac.GrabarXLS;
var
  tDir, tFile, tFolio: WideString;
begin
  RefreshF1;
  tDir := oINi.ReadString('Directorios', 'Documentos', '');
    //   ExtractFileDir(ParamStr(0));
  tFile := GetFileName;
  tFolio := Trim(xceFolio.text);
  tFolio := sm.PadLeft(tFolio, 6, '0');
  tFile := tFile + tFolio;
  tFile := tDir + tFile + '.xls';

  try
    F11.Write(tFile, miType11);
    MessageDlg('El archivo se guardó correctamente!' + #10 + #13 + 'Nombre:' +
      tFile, mtConfirmation, [mbOk], 0);
  except;
    MessageDlg('Imposible grabar el archivo!' + #10 + #13 + 'Nombre:' + tFile,
      mtWarning, [mbOk], 0);
  end;
end;

function TfrmDocsFac.GetFileName: string;
var
  tNumAlmac: string;
begin
  case Tipo_Docto of
    1: Result := 'Fac_';
    107: Result := 'FacElec_';
    23: Result := 'PedidoMty_';
    232: Result := 'PedidoGdl_';
    233: Result := 'PedidoMex_';
    28: Result := 'RemisionMty_';
    282: Result := 'RemisionGdl_';
    283: Result := 'RemisionMex_';
    30: Result := 'CotizaMty_';
    302: Result := 'CotizaGdl_';
    303: Result := 'CotizaMex_';
  else
    Result := 'Otro_';
  end;
end;

function TfrmDocsFac.ValidarDoc: Integer;
var
  tNumAlmac: string;
begin
  Result := 0;
  if length(oDoc.NUMALMAC) <= 0 then
  begin
    frmMsg.AddMsg('No se ha especificado el ALMACEN!!');
    Result := Result + 1;
  end;
  if cboMoneda.ItemIndex = 1 then
  begin //Dolares
    if xcrTipoCambio.Value = 1 then
    begin
      frmMsg.AddMsg('Falta Captura el tipo de cambio!!');
      Result := Result + 1;
    end;
  end;
end;

procedure TfrmDocsFac.Leer;
var
  tTD,tFile: string;
  AErr:Integer;
begin
  //    oDoc.FECDOCTO := xdeFecha.Date;

  edEstado := edBrowse;
  oDoc.Status := edEstado;

  LimpiarDetalle;
  tTD := sm.StrFloat(Tipo_Docto, '###');
  tTD := Trim(tTD);
  oDoc.NUMTIPODOC := tTD;
  oDoc.SERIEDOCTO := '*';
  oDoc.NUMDOCTO := Trim(xceFolio.Text);

  oDoc.Detalle := F1;

  oDoc.Retrieve;

  xdeFecha.Date := oDoc.FECDOCTO;
  xceCodCteProv.Text := oDoc.CODCTEPROV;
  BuscaCliente;

  xceNumAgente.Text := oDoc.NUMAGENTE;
  BuscaAgente;

  xceViaTrans.Text := oDoc.VIATRANS;
  BuscaViaTransporte;

  edtPlazo.Text := oDoc.DIAESP;
  xceOC.Text := oDoc.REFERDOCTO2;
  xceObservaciones.Text := oDoc.OBSERVA;


  if oDoc.IDDIRENTREGA > 0 then begin
    fraDirs_Entrega1.IDDirEntrega := oDoc.IDDIRENTREGA
  end else begin
    fraDirs_Entrega1.LimpiarTodo;
    fraDirs_Entrega1.CodCteProv := oCte.CODCTEPROV;
    fraDirs_Entrega1.Llena_Dirs;
    fraDirs_Entrega1.cboNombreDir.ItemIndex := -1;
    fraDirs_Entrega1.Limpiar;
    mmoEntregar.Lines.Clear;
  end;

  xcePedido.Text := oDoc.REFERDOCTO;

  xcrPIVA.Value := oDoc.PORCIVADOC;

  ComboSeek(cboNumAlmac, oDoc.NUMALMAC);

  ComboSeek(cboMoneda, oDoc.MonedaDoct);
  cboMonedaClick(nil);
  cboMoneda.Enabled := False;

  xcrTipoCAmbio.Value := oDoc.TIPOCAMBIO;

  F1 := oDoc.Detalle;

  ListarProductos;

  UpdateControls;

  xlbCancelado.Visible := (oDoc.CANCELA = '1');

  edzSerie.Text := oDoc.FESerie;
  edzFolio.Text := oDoc.FEFolio;
  edzFecha.Text := oDoc.FEFEcha;
  edzTotal.Text := oDoc.FETotal;
  edzemRFC.Text := oDoc.FEEMRFC;
  edzreRFC.Text := oDoc.FERERFC;
  edzUUID.Text := oDoc.FEUUID;

  ComboSeek(cboMetodoPago, oDoc.METODOPAGO);
  ComboSeek(cboFormaPago, oDoc.FORMAPAGO);
  ComboSeek(cboUsoCfdi, oDoc.USOCFDI);

  RefreshF1;

  if Tipo_Docto = 107 then
  begin

    frmFE332.TipoDocto := 'FAC';
    frmFE332.Serie := 'A';
    frmFE332.Folio := xceFolio.Text;

    //31/May/2018 - FPG
    AErr := frmFE332.LoadXMLFile;
    if AErr > 0 then begin
      ShowMessage('El archivo "'+frmFE332.ArchivoXML+'" NO existe en carpeta!!'+#10+#13+
      'No es posible leer los datos del XML.'+#10+#13+
      'Avisale al encargado de Sistemas');
      exit;
    end;

    frmFE332.GetInfo;
  end;

  // Guardar los datos del cliente anterior
  mtCliente := xceCodCteProv.Text;
  mtAgente := xceNumAgente.Text;
  mtTransp := xceViaTrans.Text;

end;

procedure TfrmDocsFac.Imprimir;
var
  fOk: Boolean;
begin
  if edEstado = edInsert then Grabar;
  if edEstado = edBrowse then Update;

  ImprimirDoc;
  //        ImprimirPedido;  ---fpg:13/May/2011

  UpdateControls;
end;

procedure TfrmDocsFac.Cancelar;
var
  wmr: Word;
  iErr: Integer;
begin
  iErr := 0;
  if (oUser.UID <= 0) and
     ((Tipo_Docto=107) or (Tipo_Docto=28) or (Tipo_Docto=282) or (Tipo_Docto=283)) then
  begin
    ShowMessage('No tienes autorizacion para cancelar Facturas ni Remisiones!!' + #10 + #13
      +
      'Avisale al SUPERVISOR');
    exit;

  end;

  if (Tipo_Docto in [107]) and (frmFE332.DataOutExists > 0) then
  begin
    ShowMessage('La carpeta de la Factura Electrónica NO existe!' + #10 + #13 +
      'No es posible cancelar el documento' + #10 + #13 +
      'Avisale al encargado de Sistemas');
    exit;
  end;

  wmr := MessageDlg('Deseas cancelar el documento?',
    mtConfirmation,
    [mbYes, mbNo],
    0);
  if (wmr = mrNo) then
    exit;

  if edEstado = edBrowse then
  begin

    //Generar la cancelacion...
    if (Tipo_Docto in [107]) then
    begin
      GenerarCancelElectronica(Tipo_Docto, iErr);
      if iErr > 0  then begin
        ShowMessage('La Cancelación de la Factura NO se aplicó debido al error en el Timbrado!!!');
        exit;
      end;

    end;
    //       iErr:=0;
    //       exit;

    oDoc.NUMTIPODOC := sm.StrFloat(Tipo_Docto, '###', 3, ' ');
    oDoc.SERIEDOCTO := '*';
    oDoc.NUMDOCTO := xceFolio.Text;

    oDoc.Cancel;
    if oDoc.Error > 0 then
    begin
      frmMsg.Messages := oDoc.Msg;
      frmMsg.ShowAsk := False;
      frmMsg.ShowCancel := False;
      frmMsg.ShowModal;
      exit;
    end;

    xlbCancelado.Visible := (oDoc.CANCELA = '1');

  end;

  UpdateControls;

end;

procedure TfrmDocsFac.Limpiar;
begin

  oDoc.Clear;
  pgcCliente.ActivePageIndex := 0;
  xceFolio.Text := '';
  xdeFecha.Date := Date;
  xceCodCteProv.Text := '';
  xceNumAgente.Text := '';
  xceViaTrans.Text := '';
  xceNombreCte.Text := '';
  xceNombreCte.Hint := xceNombreCte.Text;
  xceNombreAgente.Text := '';
  xceNombreTransp.Text := '';
  xcePEdido.Text := '';
  edtPlazo.Text := '';
  xceOC.Text := '';
  mmoEntregar.Lines.Clear;
  xceObservaciones.Text := '';
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
  edzUUID.Text := '';

  edtRFC.Text := '';
  edtCuentaBanco.Text := '';
  edtReferencia.Text := '';
  edtNumProveedor.Text := '';
  edtComprador.Text := '';
  edzemRFC.Text := '';
  edzreRFC.Text := '';

  fraDirs_entrega1.LimpiarTodo;

  cboMetodoPago.ItemIndex := -1;
  cboformaPago.ItemIndex := -1;
  cboUsoCFDI.ItemIndex := -1;

  //    mmzFac.Lines.Clear;

  LimpiarDetalle;

  xcrDescto.Value := 0;
  xcrSubtotal.Value := 0;
  xcrIva.Value := 0;
  xcrTotal.Value := 0;

  xcrTipoCambio.Value := 1;

  oCte.Clear;

  xceCodCteProv.SetFocus;

  SetMsg('Listo!', False);
  SetMsg2('Listo!', False);

  UpdateControls;

end;

procedure TfrmDocsFac.VaciarPedido;
var
  tAux, ptCod, ptComa, ptPedido: string;
  iRow: integer;
  dPend: Double;
begin
  if length(xcePedido.Text) > 0 then
    ptComa := ','
  else
    ptComa := '';

  ptPedido := frmSelDoc.iqrDoc.FieldByName('NUMDOCTO').AsString;
  ptPedido := sm.Strip(ptPedido);
  if (pos(ptPedido, xcePedido.Text) <= 0) and (length(ptPedido) > 0) then
    //Para no poner dos veces el pedido
    xcePedido.Text := xcePedido.Text + ptComa + ptPedido;
  xceNumAgente.Text := frmSelDoc.iqrDoc.FieldByName('NUMAGENTE').AsString;
  BuscaAgente;
  xceViaTrans.Text := frmSelDoc.iqrDoc.FieldByName('VIATRANS').AsString;
  BuscaViaTransporte;

  //Detalle del Pedido
  iRow := GetNextRow;
  frmSelDoc.iqrDet.First;
  while not frmSelDoc.iqrDet.eof do
  begin
    F1.Row := iRow;
    ptCod := frmSelDoc.iqrDet.FieldByName('CODPRODSER').AsString;
    dPend := frmSelDoc.iqrDet.FieldByName('UniPend').AsDouble;
    if dPend > 0 then
    begin
      F1.TextRC[iRow, IdCols.CodProdSer] := ptCod;
      GetProducto(ptCod);
      F1.NumberRC[iRow, IdCols.Unidades] := dPend;
      F1.NumberRC[iRow, IdCols.PrecioLista] :=
        frmSelDoc.iqrDet.FieldByName('PRECIO').AsDouble;
      F1.NumberRC[iRow, IdCols.PorcDescAu] :=
        frmSelDoc.iqrDet.FieldByName('PORCDESCAU').AsDouble;
      F1.TextRC[iRow, IdCols.DeNumTipoDoc] :=
        frmSelDoc.iqrDet.FieldByName('NumTipoDoc').AsString;
      F1.TextRC[iRow, IdCols.DeSerieDocto] :=
        frmSelDoc.iqrDet.FieldByName('SerieDocto').AsString;
      F1.TextRC[iRow, IdCols.DeNumDocto] :=
        frmSelDoc.iqrDet.FieldByName('NumDocto').AsString;
      F1.TextRC[iRow, IdCols.DeNumMovto] :=
        frmSelDoc.iqrDet.FieldByName('NumMovto').AsString;
      iRow := iRow + 1;
      if iRow > F1.MaxRow then
        break;
    end;
    frmSelDoc.iqrDet.Next;
  end;

end;

procedure TfrmDocsFac.VaciarPedidoF1;
var
  tAux, ptCod, ptDescri, ptComa, ptComa2, ptPedido, ptRD2,tMoneda2,tMoneda: string;
  i, iRow,mr: integer;
  dPend,dPrecioLista,iDls: Double;
begin
  if length(xcePedido.Text) > 0 then
    ptComa := ','
  else
    ptComa := '';

  ptPedido := frmSelDocF1.Tipo_Docto+'-'+frmSelDocF1.NUMDOCTO;
  ptPedido := sm.Strip(ptPedido);
  if (pos(ptPedido, xcePedido.Text) <= 0) and (length(ptPedido) > 0) then
    //Para no poner dos veces el pedido
    xcePedido.Text := xcePedido.Text + ptComa + ptPedido;

  if length(xceOC.Text) > 0 then
    ptComa2 := ','
  else
    ptComa2 := '';
  ptRD2 := frmSelDocF1.ReferDocto2;
  ptRD2 := sm.Strip(ptRD2);
  if (pos(ptRD2, xceOC.Text) <= 0) and (length(ptRD2) > 0) then
    //Para no poner dos veces la OC de Cliente
    xceOC.Text := xceOC.Text + ptComa2 + ptRD2;

  xceNumAgente.Text := frmSelDocF1.NUMAGENTE;
  BuscaAgente;
  xceViaTrans.Text := frmSelDocF1.VIATRANS;
  BuscaViaTransporte;


  tMoneda2 := Trim(frmSelDocF1.Moneda);
  //El docto trae moneda 0, o sea, monedas mezcladas en Pesos y Dolares
  if tMoneda2 = '0' then begin
    ShowMessage('Información: El documento trae Precios en Pesos y Dolares.' + #10+#13 +
                'Los precios se va a ajustar a la Moneda del documento receptor');
  end else begin
//    cboMoneda.ItemIndex := StringLib.ComboSeekText(cboMoneda.Items,tMon);
//    GetTipoCambio;
  end;

  tMoneda := Trim(sm.NthWord(1,cboMoneda.Text));


  cboNumAlmac.ItemIndex := StringLib.ComboSeekText(cboNumAlmac.Items,frmSelDocF1.Almacen);

  if length(Trim(frmSelDocF1.MetodoPago)) > 0 then
    cboMetodoPago.ItemIndex := StringLib.ComboSeekText(cboMetodoPago.Items,frmSelDocF1.MetodoPago);
  if length(Trim(frmSelDocF1.FormaPago)) > 0 then
    cboFormaPago.ItemIndex := StringLib.ComboSeekText(cboFormaPago.Items,frmSelDocF1.FormaPago);
  if length(Trim(frmSelDocF1.UsoCFDI)) > 0 then
    cboUsoCFDI.ItemIndex := StringLib.ComboSeekText(cboUsoCFDI.Items,frmSelDocF1.UsoCFDI);

  fraDirs_Entrega1.IDDirEntrega := frmSelDocF1.IdDirEntrega;

  iRow := GetNextRow;

  mr := mrCancel;
  if (tMoneda2 <> tMoneda) and (iRow <=1) then begin
  // Si ya puse productos en el documento previamente, YA NO PUEDO CAMBIAR LA MONEDA
    frmMsg.ClearAll;
    frmMsg.AddMsg('La Moneda del documento seleccionado es diferente a la moneda del documento destino!!');
    frmMsg.Question := 'Quieres cambiar la moneda del documento destino??';
    mr := frmMsg.ShowModal;
  end;

  if mr = mrOk then begin  // Voy a cambiar la moneda del docto destino
    tAux := tMoneda2;
    if tAux = '0' then tAux := '1'; // Si viene mezclada, pongo el doc en pesos
    cboMoneda.ItemIndex := StringLib.ComboSeekText(cboMoneda.Items,tAux);
    GetTipoCambio;
  end;

  tMoneda := Trim(sm.NthWord(1,cboMoneda.Text));


  //Detalle del Pedido
  for i := 1 to frmSelDocF1.DetCount do
  begin
    F1.Row := iRow;
    ptCod := frmSelDocF1.F1Det.TextRC[i, 2];
    dPend := frmSelDocF1.F1Det.NumberRC[i, 3];
    ptDescri := frmSelDocF1.F1Det.TextRC[i, 4];
    tAux := frmSelDocF1.F1Det.TextRC[i, 1];
    if (length(tAux) > 0) then
    begin
      if (dPend > 0) and (length(ptCod) > 0) then
      begin
        F1.TextRC[iRow, IdCols.CodProdSer] := ptCod;
        GetProducto(ptCod);
        F1.NumberRC[iRow, IdCols.Unidades] := dPend;
        F1.TextRC[iRow, IdCols.DescripPro] := frmSelDocF1.F1Det.TextRC[i, 4];

        F1.NumberRC[iRow, IdCols.PrecioLista] := frmSelDocF1.F1Det.NumberRC[i,7];
        F1.NumberRC[iRow, IdCols.PorcDescAu] := frmSelDocF1.F1Det.NumberRC[i,8];
        F1.TextRC[iRow, IdCols.DeNumTipoDoc] := frmSelDocF1.F1Det.TextRC[i, 20];
        F1.TextRC[iRow, IdCols.DeSerieDocto] := frmSelDocF1.Serie_Docto;
        F1.TextRC[iRow, IdCols.DeNumDocto] := frmSelDocF1.NumDocto;
        F1.TextRC[iRow, IdCols.DeNumMovto] := frmSelDocF1.F1Det.TextRC[i, 9];
        dPrecioLista := F1.NumberRC[iRow, IdCols.PrecioLista];

        iDls := F1.NumberRC[iRow, IdCols.Es_Dls];
        if tMoneda = '1' then begin //Pesos en el Docto Destino
          if (tMoneda2 = '2') or ((tMoneda2='0' ) and (iDls=1)) then begin //Moneda del Docto Origen
            dPrecioLista := dPrecioLista * xcrTipoCambio.Value; //xcrTCInox.Value;
            F1.NumberRC[iRow, IdCols.CostoMov] := oProd.CTOREAL * xcrTipoCambio.Value; //xcrTipoCambio.value;
            F1.NumberRC[iRow, IDCols.PrecioLista] := dPrecioLista;
//      F1.NumberRC[F1.Row, IdCols.Es_Dls] := 0;
          end;
        end;
        if tMoneda = '2' then begin //Dolares en el Docto Destino
          if (tMoneda2 = '1') or ((tMoneda2='0' ) and (iDls=0)) then begin  //Moneda del Docto Origen
            dPrecioLista := dPrecioLista / xcrTipoCambio.Value;
            F1.NumberRC[iRow, IdCols.CostoMov] := oProd.CTOREAL / xcrTipoCambio.value;
            F1.NumberRC[iRow, IDCols.PrecioLista] := dPrecioLista;
//      F1.NumberRC[F1.Row, IdCols.Es_Dls] := 1;
          end;
        end;


      end;
      //Es comentario en la partida
      if (length(ptDescri) > 0) and (length(ptCod) <= 0) then
      begin
        F1.TextRC[iRow, IdCols.DescripPro] := frmSelDocF1.F1Det.TextRC[i, 4];
      end;

      iRow := iRow + 1;
      if iRow > F1.MaxRow then begin
        iRow := F1.MaxRow;
        break;
      end;

    end;
  end;


  PonerFormulas;
  RefreshF1;

  F1.SetSelection(iRow,1,iRow,1);

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

procedure TfrmDocsFac.SelectDocs;
begin
  if not Assigned(frmSelDoc) then
    frmSelDoc := TfrmSelDoc.Create(Application);

  frmSelDoc.CodCliente := xceCodCteProv.Text;
  case Tipo_Docto of
    1, 107, 23, 232, 233, 28, 282, 283:
      begin
        frmSelDoc.Tipo_Docto := oEmp.TipoDocto; //  '23';
        frmSelDoc.Serie_Docto := '*';
        frmSelDoc.Encabezado := xceCodCteProv.Text + ' ' + xceNombreCte.Text;
      end;
  end;
  mrRes := frmSelDoc.ShowModal;
  frmSelDoc.Hide;
  Application.ProcessMessages;
  if (mrRes = mrOk) and (Tipo_Docto in [1, 107]) then
  begin
    VaciarPedido;
    frmSelDoc.unprepare;
  end;

  case Tipo_Docto of
    23, 232, 233, 28, 282, 283:
      begin
        if (mrRes = mrOk) then
        begin
          xceFolio.Text := frmSelDoc.Codigo;
          Leer;
        end;
      end;
  end;
end;

procedure TfrmDocsFac.SelectDocsF1(ATipo_Docto: string);
begin
  if length(Trim(xceCodCteProv.Text)) <= 0 then
  begin
    MessageDlg('Hay que seleccionar un cliente primero!!', mtWarning, [mbOk],
      0);
    exit;
  end;

  if not Assigned(frmSelDocF1) then
    frmSelDocF1 := TfrmSelDocF1.Create(Application);

  frmSelDocF1.CodCteProv := xceCodCteProv.Text;
  frmSelDocF1.RazSocial := xceNombreCte.Text;
  frmSelDocF1.Tipo_Docto := ATipo_Docto; //'23';

  mrRes := frmSelDocF1.ShowModal;
  frmSelDocF1.Hide;
  Application.ProcessMessages;

  case Tipo_Docto of
    1, 107, 23, 232, 233, 28, 282, 283: {Facs y remisiones}
      begin
        if mrRes = mrOk then
        begin
          VaciarPedidoF1;
          frmSelDocF1.unprepare;
        end;
      end;
  end;

end;

procedure TfrmDocsFac.SelectBackOrder;
begin
  if not Assigned(frmBackOrder) then
    frmBackOrder := TfrmBackOrder.Create(Application);

  frmBackOrder.CodCliente := xceCodCteProv.Text;
  frmBackOrder.Encabezado := xceCodCteProv.Text + ' ' + xceNombreCte.Text;

  mrRes := frmBackOrder.ShowModal;
  frmBackOrder.Hide;
  frmBackOrder.unprepare;
end;

procedure TfrmDocsFac.SelectSaldos;
begin
  if not Assigned(frmSaldos) then
    frmSaldos := TfrmSaldos.Create(Application);

  frmSALDOS.CodCliente := xceCodCteProv.Text;
  frmsALDOS.Encabezado := xceCodCteProv.Text + ' ' + xceNombreCte.Text;

  mrRes := frmSaldos.ShowModal;
  frmSaldos.Hide;
  frmSaldos.unprepare;
end;

procedure TfrmDocsFac.SelectPedimentos;
var
  tCod, tProd, tDescri, tCodFamilia: string;
begin
  tCod := Trim(F1.TextRC[F1.Row, IdCols.CodProdSer]);
  tDescri := F1.TextRC[F1.Row, IdCols.DescripPro];
  tCodFamilia := Trim(F1.TextRC[F1.Row, IdCols.CodFamilia]);

  frmMsg.ClearAll;
  if length(tCod) < 0 then
  begin
    frmMsg.AddMsg('Debes de teclear un código de producto para poder seleccionar Pedimentos!!');
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
    frmPedimentos := TfrmPedimentos.Create(Application);

  frmPedimentos.CodProdSer := tCod;
  frmPedimentos.Encabezado := tCod + ' ' + tDescri;
  frmPedimentos.CodFamilia := tCodFamilia;

  mrRes := frmPedimentos.ShowModal;

  if mrRes = mrOk then
  begin
    F1.TextRC[F1.Row, IdCols.cmNumTipoDoc] := frmPedimentos.Valores[1];
    F1.TextRC[F1.Row, IdCols.cmSerieDocto] := frmPedimentos.Valores[2];
    F1.TextRC[F1.Row, IdCols.cmNumDocto] := frmPedimentos.Valores[3];
    F1.TextRC[F1.Row, IdCols.cmNumMovto] := frmPedimentos.Valores[4];
    F1.TextRC[F1.Row, IdCols.Pedimento] := frmPedimentos.Valores[5];
    F1.NumberRC[F1.Row, IdCols.FechaEnt] := frmPedimentos.Valores[6];
    F1.TextRC[F1.Row, IdCols.Aduana] := frmPedimentos.Valores[7];
    F1.NumberRC[F1.Row, IdCols.UniPedimento] := frmPedimentos.Valores[8];
  end;

  frmPedimentos.Hide;
  frmPedimentos.unprepare;
end;

procedure TfrmDocsFac.Select(ptTabla: string; piOpcion: Integer; ptKey: string);
begin
  if not Assigned(frmSelTabla) then
    frmSelTabla := TfrmSelTabla.Create(Application);
  frmSelTabla.Tabla := ptTabla;
  frmSelTabla.Campo := piOpcion;

  frmSelTabla.Param1 := '';
  frmSelTabla.Param2 := '';
  if ptTabla = 'MBA10021' then
  begin // Tablas del Sistema
    frmSelTabla.Param1 := TipoTabla;
  end;

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

procedure TfrmDocsFac.SelectCliente(piOpcion: Integer; ptKey: string);
begin
  Select('MBA10002', piOpcion, ptKey);
  if mrRes = mrOk then
  begin
    xceCodCteProv.Text := frmSelTabla.Valores[1];
    xceNombreCte.Text := frmSelTabla.Valores[2];
    BuscaCliente;
  end;

end;

procedure TfrmDocsFac.SelectAgente(piOpcion: Integer; ptKey: string);
begin
  Select('MBA10001', piOpcion, ptKey);
  if mrRes = mrOk then
  begin
    xceNumAgente.Text := frmSelTabla.Valores[1];
    xceNombreAgente.Text := frmSelTabla.Valores[2];
    BuscaAgente;
  end;

end;

procedure TfrmDocsFac.SelectTransp(piOpcion: Integer; ptKey: string);
begin
  Select('MBA10021', piOpcion, ptKey);
  if mrRes = mrOk then
  begin
    xceViaTrans.Text := frmSelTabla.Valores[2];
    xceNombreTransp.Text := frmSelTabla.Valores[3];
  end;

end;

procedure TfrmDocsFac.SelectProducto(piOpcion: Integer; ptKey: string);
var
  iLista: Integer;
  ptCod: string;
begin
  Select('MBA10004', piOpcion, ptKey);
  if mrRes = mrOk then
  begin
    F1.TextRC[miRow, IdCols.CodProdSer] := frmSelTabla.Valores[1];
    ptCod := F1.TextRC[miRow, IdCols.CodProdSer];
    GetProducto(ptCod);
    F1.Col := 2;
  end;

end;

procedure TfrmDocsFac.xceCodCteProvButtonClick(Sender: TObject);
begin
  SelectCliente(1, xceCodCteProv.Text);
end;

procedure TfrmDocsFac.xceCodCteProvEnter(Sender: TObject);
begin
  SetMsg('Capturando Codigo de Cliente...', False);
end;

procedure TfrmDocsFac.xceNombreCteButtonClick(Sender: TObject);
begin
  SelectCliente(2, xceNombreCte.Text);

end;

procedure TfrmDocsFac.xceNumAgenteButtonClick(Sender: TObject);
begin
  TipoTabla := TABLA_AGE;
  SelectAgente(1, xceNumAgente.Text);

end;

procedure TfrmDocsFac.xceNombreAgenteButtonClick(Sender: TObject);
begin
  TipoTabla := TABLA_AGE;
  SelectAgente(2, xceNombreAgente.Text);

end;

procedure TfrmDocsFac.xceViaTransButtonClick(Sender: TObject);
begin
  TipoTabla := TABLA_TRA;
  SelectTransp(1, xceViaTrans.Text);

end;

procedure TfrmDocsFac.xceNombreTranspButtonClick(Sender: TObject);
begin
  TipoTabla := TABLA_TRA;
  SelectTransp(2, xceNombreTransp.Text);

end;
{---------------------------------------------------------------
Eventos F1
---------------------------------------------------------------}

function TfrmDocsFac.GetNextRow: Integer;
var
  i, iMaxRows: Integer;
  tCon: string;
begin
  Result := -1;
  iMaxRows := F1.MaxRow;
  for i := 1 to iMaxRows do
  begin
    tCon := F1.TextRC[i, IdCols.DescripPro];
    tCon := sm.Strip(tCon);
    if length(tCon) <= 0 then
    begin
      Result := i;
      break;
    end;
  end;
end;

procedure TfrmDocsFac.LimpiarDetalle;
var
  i: Integer;
  tRow: string;
begin
  F1.DoEndRecalc := False;

  F1.Sheet := 1;
  F1.ClearRange(1, 1, F1.MaxRow, F1.MaxCol, F1ClearValues);

  PonerFormulas;
  PonLimite;
  //Quitar los rojos por si se cancelo alguna partida
  for i := 1 to F1.MaxRow do
    SetFont(i, 'NORMAL');

  f1.Selection := 'A1';

  F1.DoEndRecalc := True;
  F1.Recalc;
  F1.TopRow := 1;

  cboMoneda.Enabled := True;

//  LoadF11;
end;

procedure TfrmDocsFac.PonerFormulas;
var
  i, iRen, iCol, iMaxRows, iMaxCols: Integer;
  tSel, tF1, tF2, tF3, tFor, tRow, tCol, tFmtPrecio: string;
begin

  tSel := F1.Selection;

  i := sm.ToI(edtDec.Text);
  if i = 0 then
    i := 2;

  tFmtPrecio := '#,##0.' + sm.RepeatStr('0', i);

  //Formula para obtener el precio neto
  F1.SetSelection(1, IdCols.PrecioLista, 1, IdCols.PrecioLista);
  tF1 := F1.Selection; // Celda del precio de lista
  F1.NumberFormat := tFmtPrecio;
  F1.SetSelection(1, IdCols.PorcDescAu, 1, IdCols.PorcDescAu);
  tF2 := F1.Selection; // Celda del porcentaje autorizado
  //---FPG 3/May/2014
  tFor := 'Round(' + tF1 + '*(1-(' + tF2 + '/100)),' + edtDec.Text + ')';
  F1.FormulaRC[1, IdCols.PrecioNeto] := tFor;
  F1.NumberFormat := tFmtPrecio;

  //Formula para obtener el Importe del descuento en pesos
  F1.SetSelection(1, IdCols.PrecioLista, 1, IdCols.PrecioLista);
  tF1 := F1.Selection; // Celda del precio de lista
  F1.SetSelection(1, IdCols.PrecioNeto, 1, IdCols.PrecioNeto);
  tF2 := F1.Selection; // Celda del precio neto
  F1.SetSelection(1, IdCols.Unidades, 1, IdCols.Unidades);
  tF3 := F1.Selection;
  tFor := 'Round((' + tF1 + '- ' + tF2 + ')*' + tF3 + ',2)';
  F1.FormulaRC[1, IdCols.ImpDescAut] := tFor;

  //Formula para obtener el Importe Neto del Detalle
  F1.SetSelection(1, IdCols.Unidades, 1, IdCols.Unidades);
  tF1 := F1.Selection;
  F1.SetSelection(1, IdCols.PrecioNeto, 1, IdCols.PrecioNeto);
  tF2 := F1.Selection;
  //---FPG 3/May/2014
  tFor := 'Round(' + tF1 + '*' + tF2 + ',' + edtDec.Text + ')';
  F1.FormulaRC[1, IdCols.ImpNetoMov] := tFor;
  F1.NumberFormat := tFmtPrecio;

  //Formula para obtener el Importe de la comisión del vendedor
  F1.SetSelection(1, IdCols.ImpNetoMov, 1, IdCols.ImpNetoMov);
  tF1 := F1.Selection;
  F1.SetSelection(1, IdCols.PorcComisV, 1, IdCols.PorcComisV);
  tF2 := F1.Selection;
  tFor := 'Round(' + tF1 + '*' + tF2 + '/100,2)';
  F1.FormulaRC[1, IdCols.ImpComisMo] := tFor;
  //Formula para obtener el Importe del IVA
  F1.SetSelection(1, IdCols.ImpNetoMov, 1, IdCols.ImpNetoMov);
  tF1 := F1.Selection;
  F1.SetSelection(1, IdCols.PorcIVAMov, 1, IdCols.PorcIVAMov);
  tF2 := F1.Selection;
  tFor := 'Round(' + tF1 + '*' + tF2 + '/100,2)';
  F1.FormulaRC[1, IdCols.ImpIVAMovt] := tFor;
  //Formula para obtener el Importe de IVA Retenido
  F1.SetSelection(1, IdCols.PorcRetIVAMov, 1, IdCols.PorcRetIVAMov);
  tF2 := F1.Selection;
  tFor := 'Round(' + tF1 + '*' + tF2 + '/100,2)';
  F1.FormulaRC[1, IdCols.ImpRetIVAMov] := tFor;
  //Formula para obtener el Importe de IEPS
  F1.SetSelection(1, IdCols.PorcIEPSMo, 1, IdCols.PorcIEPSMo);
  tF2 := F1.Selection;
  tFor := 'Round(' + tF1 + '*' + tF2 + '/100,2)';
  F1.FormulaRC[1, IdCols.ImpIEPSMov] := tFor;

  // Copiar formula hacia abajo
  // Precio Neto
  F1.SetSelection(1, IdCols.PrecioLista, F1.MaxRow, IdCols.PrecioLista);
  F1.NumberFormat := tFmtPrecio;

  F1.SetSelection(1, IdCols.PrecioNeto, F1.MaxRow, IdCols.PrecioNeto);
  F1.EditCopyDown;
  // Importe Neto
  F1.SetSelection(1, IdCols.ImpNetoMov, F1.MaxRow, IdCols.ImpNetoMov);
  F1.EditCopyDown;
  // Columna de Importe de descuento
  F1.SetSelection(1, IdCols.ImpDescAut, F1.MaxRow, IdCols.ImpDescAut);
  F1.EditCopyDown;
  // Columna de Importe Comision
  F1.SetSelection(1, IdCols.ImpComisMo, F1.MaxRow, IdCols.ImpComisMo);
  F1.EditCopyDown;
  // Columna de Importe IVA
  F1.SetSelection(1, IdCols.ImpIVAMovt, F1.MaxRow, IdCols.ImpIVAMovt);
  F1.EditCopyDown;
  // Columna de Importe IVA Retenido
  F1.SetSelection(1, IdCols.ImpRetIVAMov, F1.MaxRow, IdCols.ImpRetIVAMov);
  F1.EditCopyDown;
  // Columna de Importe IEPS
  F1.SetSelection(1, IdCols.ImpIEPSMov, F1.MaxRow, IdCols.ImpIEPSMov);
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

  //RefreshF1;

end;

procedure TfrmDocsFac.CalculaTotales;
var
  r: Integer;
  dDesctos, dTotMovto, dIva, dIvaR, dIeps: Double;
begin
  dDesctos := 0;
  dTotMovto := 0;
  dIva := 0;
  dIvaR := 0;
  dIeps := 0;
  for r := 1 to F1.Maxrow do
  begin
    if F1.NumberRC[r, IdCols.Cancela] <> 2 then
    begin
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

procedure TfrmDocsFac.F1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tProd: string;
begin

  //    if edEstado = edBrowse then exit;

  case Key of
    VK_F3:
      begin
        miRow := F1.Row;
        SelectProducto(1, F1.TextRC[miRow, IdCols.CodProdSer]);
        Timer2Timer(Sender);
      end;
    VK_F4:
      begin
        miRow := F1.Row;
        SelectProducto(2, F1.TextRC[miRow, IdCols.DescripPro]);
        Timer2Timer(Sender);
      end;
    VK_F8:
      begin
        CalculaDescto;
      end;
    VK_DELETE:
      begin
        if ssCtrl in Shift then
          DeleteRowsDetalle
        else
        begin
          if (F1.Col in ColSet) or (F1.SelEndCol >= 5) then
            exit;
          F1.ClearRange(F1.SelStartRow, F1.SelStartCol, F1.SelEndRow,
            F1.SelEndCol, F1ClearValues)
        end;
      end;
    VK_INSERT:
      begin
        if ssCtrl in Shift then
          InsertRowsDetalle
      end;
    VK_RETURN:
      begin
        tProd := F1.TextRC[F1.Row, IdCols.CodProdSer];
        GetProducto(tProd);
      end;
  end;

  RefreshF1;
end;

procedure TfrmDocsFac.F11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tProd: string;
begin
  case Key of
    VK_DELETE:
      begin
        F11.ClearRange(F11.SelStartRow, F11.SelStartCol, F11.SelEndRow,
          F11.SelEndCol, F1ClearValues);
      end;
  end;
end;

procedure TfrmDocsFac.F12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tProd: string;
begin

  //    if edEstado = edBrowse then exit;

  case Key of
    VK_F11:
      begin
        if F12.Sheet = 1 then
          F12.Sheet := 8
        else
          F12.Sheet := F12.Sheet - 1;
      end;
    VK_F12:
      begin
        if F12.Sheet = 8 then
          F12.Sheet := 1
        else
          F12.Sheet := F12.Sheet + 1;
      end;
    VK_DELETE:
      begin
        if ssCtrl in Shift then
        else
        begin
          F1.ClearRange(F1.SelStartRow, F1.SelStartCol, F1.SelEndRow,
            F1.SelEndCol, F1ClearValues)
        end;
      end;
    VK_RETURN:
      begin
      end;
  end;
end;

procedure TfrmDocsFac.btnInsertarClick(Sender: TObject);
begin
  mmoEntregar.Lines.Add(edtCuentaBanco.Text);
end;

procedure TfrmDocsFac.btnInsertRowClick(Sender: TObject);
begin
  F11.EditInsert(F1ShiftRows);
end;

procedure TfrmDocsFac.btnMFUClick(Sender: TObject);
var
  tDias:String;
  iDias:Integer;
begin
  tDias := sm.GetDigit(edtPlazo.Text);
  if length(tDias) <= 0 then
    iDias := 0
  else
    iDias := StrToInt(tDias);

  SetMetodoFormaPago(iDias);

end;

procedure TfrmDocsFac.BuildCodigo;
var
  i: Integer;
  tCod: string;
  tD, tL: string;
begin
  tD := F12.TextRC[F12.Row, 2];
  tL := F12.TextRC[3, F12.Col];
  tCod := F12.TextRC[1, 1] + '-' + tD + tL;

  F1.TextRC[F1.Row, IDCols.CodProdSer] := tCod;

end;

procedure TfrmDocsFac.GetProducto(ptCod: string);
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

  tMoneda := Trim(sm.NthWord(1,cboMoneda.Text));

  F1.TextRC[F1.Row, IdCols.CodProdSer] := oProd.CODPRODSER;
  F1.TextRC[F1.Row, IdCols.DescripPro] := oProd.DESCRIPPRO;
  if chkDescto.Checked then
    F1.NumberRC[F1.Row, IdCols.PorcDescAu] := oProd.PORDESCAUT;

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

  VerExistencia;
{  xcrExisAlm1.Value := F1.NumberRC[F1.Row, IdCols.ExisAlmacen];
  xcrExisTotal.Value := F1.NumberRC[F1.Row, IdCols.ExisTotal];
  xcrDescRota.Value := oProd.DescRota;
}
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

  PonLimite; // Colorear el ultimo renglon disponible de la factura
  //    PonerFormulas;

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

  //Si es cliente extranjero, NO se cobran impuestos.
  if oCte.NUMTIPOCTE = '2' then begin
    F1.NumberRC[F1.Row, IdCols.PorcIVAMov] := 0; //xcrPIVA.Value;
    F1.NumberRC[F1.Row, IdCols.PorcIEPSMo] := 0;
    F1.NumberRC[F1.Row, IdCols.PorcRetIVAMov] := 0;
    F1.NumberRC[F1.Row, IdCols.Cobro_IVA] := 0;
    F1.NumberRC[F1.Row, IdCols.Cobro_RETIVA] := 0;
    F1.NumberRC[F1.Row, IdCols.Cobro_IEPS] := 0;
  end;



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

procedure TfrmDocsFac.GetPrecioConDescuento(ptFam: string;
  pdPrecioLista: Double;
  var pdPrecioFinal: Double;
  var pdDescuento: Double);
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
    if tFam = ptFam then
    begin
      ;
      for i := 4 to 8 do
        pdPrecioFinal := pdPrecioFinal * (1 - (F2.NumberRC[r, i] / 100));

      break;
    end;
  end;

  pdDescuento := (1 - (pdPrecioFinal / Precio)) * 100;

end;

procedure TfrmDocsFac.ListarProductos;
var
  iRow,iDls: Integer;
  tCod, tDes,tMoneda: string;
  dP1, dP2, dD1: Double;
begin

  tMoneda := Trim(sm.NthWord(1,cboMoneda.Text));

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

    if F1.NumberRC[iRow, IdCols.Cancela] = 2 then
      SetFont(iRow, 'CANCELAPARTIDA');

    iRow := iRow + 1;
    tCod := F1.TextRC[iRow, IdCols.CodProdSer];
    tDes := F1.TextRC[iRow, IdCols.DescripPro];

  end;

  PonerFormulas;

end;

procedure TfrmDocsFac.DeleteRowsDetalle;
var
  i, iRowsDel, iMaxRows: Integer;
  tRow: string;
begin
  //No se puede borrar las partidas leidas de la BD
  if F1.NumberRC[F1.Row, IdCols.Partida] > 0 then
    exit;

  iMaxRows := F1.MaxRow;
  iRowsDel := F1.SelEndRow - F1.SelStartRow + 1;
  F1.DeleteRange(F1.SelStartRow, 1, F1.SelEndRow, F1.MaxCol, F1ShiftRows);

  PonerFormulas;
  PonLimite;

end;

procedure TfrmDocsFac.InsertRowsDetalle;
var
  i, iRowsDel, iMaxRows: Integer;
  tRow: string;
begin
  iMaxRows := F1.MaxRow;
  iRowsDel := F1.SelEndRow - F1.SelStartRow + 1;
  F1.InsertRange(F1.SelStartRow, 1, F1.SelEndRow, F1.MaxCol, F1ShiftRows);

  PonerFormulas;
  PonLimite;

end;

procedure TfrmDocsFac.F1EndRecalc(Sender: TObject);
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

procedure TfrmDocsFac.RefreshF1;
begin
  CalculaTotales;
  if Tipo_Docto = 1 then
    LlenaFactura;
  if Tipo_Docto = 107 then
    LlenaFE33; //antes era la LlenaFactura3

  case Tipo_Docto of
    23, 232, 233, 28, 282, 283:
      begin
        LlenaFactura3;
      end;
  end;
  miVeces := miVeces + 1;
end;

{---------------------------------------------------------------}

procedure TfrmDocsFac.xceFolioChange(Sender: TObject);
begin
  //    UpdateDocto;
end;

procedure TfrmDocsFac.SetMetodoFormaPago(ADias: Integer);
begin
  if ADias <= 0 then
  begin //Contado
    cboMetodoPago.ItemIndex := ComboSeek(cboMetodoPago, 'PUE');
    cboFormaPago.ItemIndex := ComboSeek(cboFormaPago, oCte.FORMAPAGO);
  end
  else
  begin
    cboMetodoPago.ItemIndex := ComboSeek(cboMetodoPago, 'PPD');
    cboFormaPago.ItemIndex := ComboSeek(cboFormaPago, '99'); // Por definir

  end;

end;

procedure TfrmDocsFac.BuscaCliente;
var
  tCod, tCod2, tDias: string;
  iDias: Integer;
  iError: Integer;
  Continuar: boolean;
begin
  tCod := sm.Strip(xceCodCteProv.Text);
  if length(tCod) <= 0 then
    exit;

  oCte.CODCTEPROV := tCod;
  oCte.Retrieve;
  if (oCte.Error > 0) then
    exit;

  // Checar que el cliente no esté bloqueado
  if oCte.EDOACTCTE = 2 then
  begin
    frmMsg.ClearAll;
    frmMsg.AddError(1, 'El Cliente ' + oCte.RazSocial +
      ' está dado de baja temporalmente!!',
      'Checar con creditos y cobranzas', '');
    frmMsg.ShowModal;
    Crear;
    exit;
  end;

  xceNombreCte.Text := oCte.RAZSOCIAL;
  xceNombreCte.Hint := xceNombreCte.Text;

  Memo1.Lines := oCte.GetDireccion;

  fraDirs_Entrega1.LimpiarTodo;
  fraDirs_Entrega1.CodCteProv := oCte.CODCTEPROV;
  fraDirs_Entrega1.Llena_Dirs;

//  mmoEntregar.Lines.Clear;
  //    if edEstado = edBrowse then begin
//  fraDirs_Entrega1.NOMBRE_DIR := oCte.NOMBRE_DIR;
//  mmoEntregar.Text := oCte.DATOS_EMBARQUE;
  //    end;

  edtPlazo.Text := sm.StrFloat(oCte.DIASCREDIT, '##0');
  iDias := oCte.DIASCREDIT;
  xdeFecVenceDo.Text := DateTimeToStr(StrToDateTime(xdeFecha.Text) + iDias);

  miLista := oCte.LISTPRECIO; //     .GetFieldValue('LISTPRECIO');
  if miLista <= 0 then
    miLista := 1;
  cboPrecio.Text := sm.StrFloat(miLista, '##');

  if edEstado = edInsert then
  begin
    xceNumAgente.Text := sm.Strip(oCte.NumAgente);
    BuscaAgente;
    xceViaTrans.Text := sm.Strip(oCte.VIATRANS);
    BuscaViaTransporte;
  end;

  edtRFC.Text := oCte.RFC;
  edtCuentaBanco.Text := oCte.CUENTABANCO;
  //    edtMetodoPago.Text :=  oCte.METODOPAGO;
  cboMetodoPago.ItemIndex := ComboSeek(cboMetodoPago, oCte.METODOPAGO);
  cboFormaPago.ItemIndex := ComboSeek(cboFormaPago, oCte.FORMAPAGO);
  //    edtFormaPago.Text :=  oCte.FORMAPAGO;
  cboUsoCfdi.ItemIndex := ComboSeek(cboUsoCfdi, oCte.USOCFDI);

  edtReferencia.Text := oCte.REFERENCIA;
  edtNumProveedor.Text := oCte.NUMPROVEEDOR;
  edtComprador.Text := oCte.JEFECOMPRAS;
  edtEmailFacturas.Text := oCte.EMAILFACTURA;

  mtZona := oCte.ZONA;
  //    Memo2.Text := oCte.DIR_ENTREGA;

  LeerDesctos;

  if edEstado = edInsert then
  begin
    if (length(xceNumAgente.Text) > 0) and (length(xceViaTrans.Text) > 0) then
    begin
      pgcMain.ActivePageIndex := 0;
      F1.SetFocus;
    end;
  end;

  if length(Trim(oCte.RFC)) < 7 then
  begin
    frmMsg.ClearAll;
    frmMsg.AddError(1, 'El Cliente ' + oCte.RazSocial +
      ' tiene errores en su RFC!!',
      'Checar sus datos.', '');
    frmMsg.ShowModal;
  end;

  // Checar facturas vencidas del cliente
  if length(xceCodCteProv.Text) > 0 then
  begin
    ChecarCredito(continuar);
  end;

  if not Continuar then
  begin
    tbtCreateClick(nil);
    exit;
  end;

  RefreshF1;
end;

procedure TfrmDocsFac.BuscaAgente;
begin
  //    xceNombreAgente.Text := oTabla.GetDescri(TABLA_AGE,xceNumAgente.Text);
  oAge.NUMAGENTE := xceNumAgente.Text;
  oAge.Retrieve;
  if oAge.Error <> 0 then
    exit;

  xceNombreAgente.Text := oAge.NOMBAGEN;
  SeleccionaAlmacen(oAge.IDSUCURSAL);
end;

procedure TfrmDocsFac.BuscaViaTransporte;
begin
  xceNombreTransp.Text := oTabla.GetDescri(TABLA_TRA, xceViaTrans.Text);

end;

function TfrmDocsFac.VerificaFactura: Boolean;
var
  i, iMaxRow, iRen, len1: Integer;
  dPrecio, dCantidad, dTotal: Double;
  tCodPS, tDescri: string;
  fRes: boolean;
begin
  fRes := True;

  // Checar el agente
  if (length(xceNumAgente.Text) <= 0) then
  begin
    frmMsg.AddMsg('El Agente NO puede estar vacio!!');
    fRes := False;
  end;
  // Checar la via de transporte
  if (length(Trim(xceViaTrans.Text)) <= 0) or (length(Trim(xceNombreTransp.Text))
    <= 0) then
  begin
    frmMsg.AddMsg('La Vía de Transporte NO puede estar vacia!!');
    fRes := False;
  end;

  // Checar Datos de Entrega y Embarque
  if (length(fraDirs_Entrega1.mmoDirEnt.Text) <= 0) then
  begin
    frmMsg.AddMsg('La Dirección de Entrega NO puede estar vacia!!');
    fRes := False;
    //mmoDirEnt.Tag := 0;
  end;

  if (length(mmoEntregar.Text) <= 0) then
  begin
    frmMsg.AddMsg('Los Datos de Embarque NO pueden estar vacios!!');
    fRes := False;
  end;

  iMaxRow := f1.MaxRow;
  for iRen := 1 to iMaxRow do
  begin
    tCodPS := Trim(F1.TextRC[iRen, IdCols.CodProdSer]);
    tCodPS := sm.Strip(tCodPS);
    tDescri := sm.Strip(F1.TextRC[iRen, IdCols.DescripPro]);
    if (length(tCodPS) > 0) then begin
      dPrecio := F1.NumberRC[iRen, IdCols.PrecioNeto];
      dCantidad := F1.NumberRC[iRen, IdCols.Unidades];
      dTotal := F1.NumberRC[iRen, IdCols.ImpNetoMov];
      len1 := length(F1.TextRC[iRen, IdCols.Pedimento]);

      if (dPrecio <= 0) or (dCantidad <= 0) or (dTotal <= 0) then begin
        frmMsg.AddMsg('El producto ' + tCodPS +
          ' tiene errores en Precio, Cantidad o Total!!');
        frmMsg.AddAxn('Precio   = ' + sm.StrFloat(dPrecio, '#,##0.00'));
        frmMsg.AddAxn('Cantidad = ' + sm.StrFloat(dCantidad, '#,##0.00'));
        frmMsg.AddAxn('Total    = ' + sm.StrFloat(dTotal, '#,##0.00'));
        fRes := False;
      end;
      if (len1 > 0) and (len1 < 21) then begin
        frmMsg.AddMsg('El pedimento ' + F1.TextRC[iRen, IdCols.Pedimento] +
          ' tiene incorrecto el numero!!');
        frmMsg.AddAxn('');
        fRes := False;
      end;
      if F1.NumberRC[iRen, IdCols.PorcIVAMov] <=0 then begin
        if Trim(oCte.NUMTIPOCTE) = '1' then begin // Si no tiene IVA y es cliente nacional, error!!
          frmMsg.AddMsg('El producto ' + F1.TextRC[iRen, IdCols.CodProdSer] +
            ' NO tiene % IVA asignado!!');
          frmMsg.AddAxn('');
          fRes := False;
        end;

      end;
      if length(F1.TextRC[iRen, IdCols.ClaveSAT]) <=7 then begin
        frmMsg.AddMsg('El producto ' + F1.TextRC[iRen, IdCols.CodProdSer] +
          ' tiene Clave SAT erronea!!');
        frmMsg.AddAxn('');
        fRes := False;
      end;
      if length(F1.TextRC[iRen, IdCols.ClaveUnidad]) <=1 then begin
        frmMsg.AddMsg('El producto ' + F1.TextRC[iRen, IdCols.CodProdSer] +
          ' NO tiene Clave Unidad Medida erronea!!');
        frmMsg.AddAxn('');
        fRes := False;
      end;
    end;
  end;

  //    RefreshF1;

  Result := fRes;

end;

procedure TfrmDocsFac.ImprimirDoc;
begin
  F11.FilePrint(True);
end;

procedure TfrmDocsFac.xceCodCteProvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F3: SelectCliente(1, xceCodCteProv.Text);
    VK_F4: SelectCliente(2, xceNombreCte.Text);
    VK_Return: BuscaCliente
  end;

end;

procedure TfrmDocsFac.xceNumAgenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F3:
      begin
        TipoTabla := TABLA_AGE;
        SelectAgente(1, xceNumAgente.Text);
      end;
    VK_F4:
      begin
        TipoTabla := TABLA_AGE;
        SelectAgente(2, xceNombreAgente.Text);
      end;
    VK_RETURN: BuscaAgente;
  end;

end;

procedure TfrmDocsFac.xceViaTransKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F3:
      begin
        TipoTabla := TABLA_TRA;
        SelectTransp(1, xceViaTrans.Text);
      end;
    VK_F4:
      begin
        TipoTabla := TABLA_TRA;
        SelectTransp(2, xceNombreTransp.Text);
      end;
    VK_Return: BuscaViaTransporte;
  end;

end;

procedure TfrmDocsFac.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    //    VK_ESCAPE: Crear;
    VK_F5: Crear;
    VK_F6: tbtGrabarClick(Sender);
    VK_F7: tbtImprimirClick(Sender);
    VK_F9: SelectDocs;
  end;

end;

procedure TfrmDocsFac.xceFolioButtonClick(Sender: TObject);
begin
//  LoadF11;
  Leer;
end;

procedure TfrmDocsFac.xceFolioKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDocsFac.F1EndEdit(Sender: TObject; var EditString: WideString;
  var Cancel: Smallint);
var
  dCant: Double;
  tES: string;
begin
  if length(Trim(EditString)) <= 0 then
    exit;

  if F1.Col = 1 then
  begin
    EditString := UpperCase(EditString);
    GetProducto(EditString);
    EditString := oProd.CODPRODSER;
  end;
  if F1.Col = 2 then
  begin
    tES := EditString;
    //        tES := sm.GetDigit (tES);
    if length(tES) > 0 then
      dCant := StrToFloat(tES)
    else
      dCant := 0;
    if dCant > 0 then
    begin
      {
          if (xcrExisTotal.Value - dCant < 0) then begin
              frmMsg.clearall;
              frmMsg.AddMsg ('La existencia del producto es negativa!');
              frmMsg.ShowModal;
          end;
      }
    end;
  end;

  if F1.Col = 4 then
  begin
    tES := EditString;
    if length(tES) > 0 then
      dCant := StrToFloat(tES)
    else
      dCant := 0;
    if dCant > 0 then
    begin
      if (dCant < F1.NumberRC[F1.Row, IdCols.CostoMov]) then
      begin
        frmMsg.clearall;
        frmMsg.AddMsg('El Precio es menor al costo del producto!');
        frmMsg.ShowModal;
        //                Cancel := 1;
      end;
    end;
  end;

  Timer2.Enabled := True;

  cboMoneda.Enabled := False;

end;

procedure TfrmDocsFac.F12EndEdit(Sender: TObject; var EditString: WideString;
  var Cancel: Smallint);
var
  tProd: string;
begin
  BuildCodigo;
  tProd := F1.TextRC[F1.Row, IdCols.CodProdSer];
  GetProducto(tProd);
  EditString := sm.GetDigit(EditString);

  if EditString = '' then
    exit;

  F1.NumberRC[F1.Row, IDCols.Unidades] := StrToInt(EditString);
  if F1.Row < F1.MaxRow then
    F1.Row := F1.Row + 1;

  RefreshF1;

end;

procedure TfrmDocsFac.F12DblClick(Sender: TObject; nRow, nCol: Integer);
var
  tProd: string;
  dCant: Double;
begin
  if (F12.Row < 4) and (F12.Col < 3) then
    exit;

  BuildCodigo;
  tProd := F1.TextRC[F1.Row, IdCols.CodProdSer];
  GetProducto(tProd);
  dCant := F12.NumberRC[F12.Row, F12.Col];

  if dCant = 0 then
  begin
    dCant := 1;
    F12.NumberRC[F12.Row, F12.Col] := dCant;
  end;

  F1.NumberRC[F1.Row, IDCols.Unidades] := dCant;
  if F1.Row < F1.MaxRow then
    F1.Row := F1.Row + 1;

  RefreshF1;

end;

procedure TfrmDocsFac.F1StartEdit(Sender: TObject; var EditString: WideString;
  var Cancel: Smallint);
begin
  //  if edEstado = edBrowse then Cancel := 1;
  if (F1.NumberRC[F1.Row, IdCols.Partida] > 0) then
    Cancel := 1;
  if (not ColFac[F1.Col].Editable) then
    Cancel := 1;
  if F1.Col = IdCols.PrecioLista then
    if (F1.TextRC[F1.Row, IdCols.Captura] <> '1') then
      Cancel := 1;
end;

procedure TfrmDocsFac.F11StartEdit(Sender: TObject; var EditString: WideString;
  var Cancel: Smallint);
begin
  if edEstado = edBrowse then
    Cancel := 1;
end;

{procedure TfrmDocsFac.xsbCalcularMEClick(Sender: TObject);
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

    F1.SetFocus;

end;
}

procedure TfrmDocsFac.VerFoto;
var
  tFile: string;
  iRow: Integer;
begin

  exit;
  //No implementada...


  iRow := F1.Row;
  //    tFile := sm.Strip(F1.TextRC[iRow,IdCols.PathFoto]);
  tFile := sm.Strip(F1.TextRC[iRow, IdCols.CodProdSer]);
  tFile := tFile + '.jpg';
  {    if length(tFile) <= 0 then begin
          if F1.Row <= 1 then
              iRow := 1
          else
          iRow := F1.Row - 1;
          tFile := sm.Strip(F1.TextRC[iRow,7]);
      end;
  }
  tFile := mtPath + tFile;

  xlbDescri.Caption := F1.TextRC[iRow, IdCols.DescripPro];

  //Si es la misma foto anterior, me salgo.
  if tFile = mtFoto then
    exit;

  mtFoto := tFile;

  if FileExists(tFile) then
  begin
    imgFoto.Visible := True;
    imgFoto.Picture.LoadFromFile(tFile);
  end
  else
    imgFoto.Visible := False;

  xsbAmpliar.Visible := imgFoto.Visible;

end;

procedure TfrmDocsFac.VerExistencia;
var
  iRow: Integer;
  t:String;
begin
  if mfLoading then exit;

  iRow := F1.Row;
  grpExistencias.Caption := ' Existencias: ' + F1.TextRC[iRow, IdCols.DescripPro]+ '  ';
  t := Trim(sm.NthWord(1,cboNumAlmac.Text));
  xcrExisTotal2.Value := F1.NumberRC[iRow, IdCols.ExisTotal];
  if t='1' then begin
    xcrExisAlm1.Value := F1.NumberRC[iRow, IdCols.ExisAlmacen];
    xcrExisAlm2.Value := 0;
    xcrExisAlm3.Value := 0;
  end;
  if t='2' then begin
    xcrExisAlm1.Value := 0;
    xcrExisAlm2.Value := F1.NumberRC[iRow, IdCols.ExisAlmacen];
    xcrExisAlm3.Value := 0;
  end;
  if t='3' then begin
    xcrExisAlm1.Value := 0;
    xcrExisAlm2.Value := 0;
    xcrExisAlm3.Value := F1.NumberRC[iRow, IdCols.ExisAlmacen];
  end;

  xcrDescRota.Value := F1.NumberRC[iRow, IdCols.DescRota];
end;

procedure TfrmDocsFac.VerPedimento;
var
  iRow: Integer;
  tPedi: string;
begin
  iRow := F1.Row;
  tPedi := F1.TextRC[iRow, IdCols.Pedimento];
  if (length(tPedi) > 0) then
  begin
    xcePedimento.Text := tPedi;
    xcePedimento.Visible := True;
    lblPedimento.Visible := True;
    xsbPedimento.Visible := True;
  end
  else
  begin
    xcePedimento.Text := '';
    xcePedimento.Visible := False;
    lblPedimento.Visible := False;
    xsbPedimento.Visible := False;
  end;
end;

procedure TfrmDocsFac.F1SelChange(Sender: TObject);
begin
  VerFoto;
  VerExistencia;
  VerPedimento;
end;

procedure TfrmDocsFac.MoverCursor(Key: Word; piTimes: Integer);
var
  iRow, iCol: Integer;
begin
  iRow := F1.Row;
  iCol := F1.Col;
  case Key of
    VK_UP:
      begin
        iRow := F1.Row - piTimes;
        if iRow < 1 then
          iRow := 1;
      end;
    VK_DOWN:
      begin
        iRow := F1.Row + piTimes;
        if iRow > F1.MaxRow then
          iRow := F1.MaxRow;
      end;
    VK_LEFT:
      begin
        iCol := F1.Col - piTimes;
        if iCol < 1 then
          iCol := 1;
      end;
    VK_RIGHT:
      begin
        iCol := F1.Col + piTimes;
        if iCol > F1.MaxCol then
          iCol := F1.MaxCol;
      end;
  end;

  F1.Row := iRow;
  F1.Col := iCol;

end;

procedure TfrmDocsFac.Timer2Timer(Sender: TObject);
begin
  if oProd.EDOACTPROD = 2 then
  begin
    MoverCursor(VK_LEFT, 1);
    Timer2.Enabled := False;
    exit;
  end;

  if F1.Col = 1 then
  begin
    MoverCursor(VK_RIGHT, 1);
  end
  else
  begin
    if F1.Col = 2 then
    begin
      {            MoverCursor(VK_LEFT,1);
                  MoverCursor(VK_DOWN,1);
      }
    end;
  end;

  Timer2.Enabled := False;
  RefreshF1;

end;

procedure TfrmDocsFac.F1Enter(Sender: TObject);
begin
  SetMsg('Capturando Partidas de documento...', False);
end;

procedure TfrmDocsFac.xsbAmpliarClick(Sender: TObject);
begin
  frmVerImagen := TfrmVerImagen.Create(Application);
  frmVerImagen.imgFoto.Picture := imgFoto.Picture;
  frmVerImagen.ShowModal;
end;

procedure TfrmDocsFac.tbtSaldosClick(Sender: TObject);
begin
  SelectSaldos;
end;

procedure TfrmDocsFac.cboMetodoPagoSelect(Sender: TObject);
var
  iPos: Integer;
  t: string;
begin
  t := cboMetodoPago.Text;
  iPos := sm.Pos('PPD', t, 1);
  if iPos > 0 then
  begin
    cboFormaPago.ItemIndex := ComboSeekText(cboFormaPago.Items, '99');
  end
  else
  begin
    cboFormaPago.ItemIndex := ComboSeekText(cboFormaPago.Items, oCte.FORMAPAGO);
  end;

end;

procedure TfrmDocsFac.cboMonedaClick(Sender: TObject);
begin
  GetTipoCambio;
  //    oParam.CODPAR := 'IVA';
  //    xcrPIVA.Value := oParam.VALORNUM;
  //    if oDoc.MONEDADOCT <> '1' then begin
  //        xcrPIVA.Value := 0
  //    end;
  //    LimpiarDetalle;
end;

procedure TfrmDocsFac.cboNumAlmacChange(Sender: TObject);
begin
  oProd.NUMALMAC := Trim(sm.NthWord(1, cboNumAlmac.Text, ['|']));
  xcrExisAlm1.Value := 0;
  xcrExisAlm2.Value := 0;
  xcrExisAlm3.Value := 0;
  xcrExisTotal2.Value := 0;
  xcrExisTransito.Value := 0;
end;

procedure TfrmDocsFac.GetTipoCambio;
begin

  oMon.MONEDA := Trim(sm.NthWord(1, cboMoneda.Text));
  oMon.Fecha := xdeFecha.Date;
  xcrTipoCambio.Value := oMon.GetTipoCambio2;
  if (xcrTipoCambio.Value) <= 0 then
    xcrTipoCambio.Value := 1;
  oDoc.MONEDADOCT := oMon.MONEDA;

  lblMoneda2.Caption := sm.Between('(',')',cboMoneda.Text);

end;

function TfrmDocsFac.HayDescuento: Boolean;
var
  i: integer;
begin
  Result := False;
  for i := 1 to F1.MaxRow do
  begin
    if F1.NumberRC[i, idCols.PorcDescAu] > 0 then
    begin
      Result := True;
      break;
    end;
  end;

end;

procedure TfrmDocsFac.xsbPedimentoClick(Sender: TObject);
begin
  F1.TextRC[F1.Row, IdCols.cmNumTipoDoc] := '';
  F1.TextRC[F1.Row, IdCols.cmSerieDocto] := '';
  F1.TextRC[F1.Row, IdCols.cmNumDocto] := '';
  F1.TextRC[F1.Row, IdCols.cmNumMovto] := '';
  F1.TextRC[F1.Row, IdCols.Pedimento] := '';
  F1.NumberRC[F1.Row, IdCols.FechaEnt] := 0;
  F1.TextRC[F1.Row, IdCols.Aduana] := '';
  F1.NumberRC[F1.Row, IdCols.UniPedimento] := 0;

  VerPedimento;
end;

procedure TfrmDocsFac.PonLimite;
{Objetivo: Pone una marca en el datalle para indicar hasta donde se puede llenar la factura.
           La factura permite solo 23 renglones.
           Los datos del pedimento utilizan un renglon más
}
var
  i, iRenUti: integer;
  tCod, tDes, tPedi: string;
begin

  // Obtener cuantos renglones necesito
  F1.DoSelChange := False;
  iRenUti := 0;
  for i := 1 to F1.MaxRow do
  begin
    tCod := F1.TextRC[i, IdCols.CodProdSer];
    tDes := F1.TextRC[i, IdCols.DescripPro];
    tPedi := F1.TextRC[i, IdCols.Pedimento];

    if (length(tCod) > 0) or (length(tDes) > 0) then begin
      iRenUti := iRenUti + 1;
    end;
  end;

  cboMoneda.Enabled := (iRenUti<=0);

  f1.DoSelChange := True;

end;

procedure TfrmDocsFac.ClearDesctos;
begin
  F2.ClearRange(7, 1, F1.MaxRow, F1.MaxCol, F1ClearValues);
end;

procedure TfrmDocsFac.LeerDesctos;
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

procedure TfrmDocsFac.LlenaFactura;
var
  tSql, tCodPS, tLetra: string;
  iR1, iR2, iR3, iC1, r, iRen, iVacios, iPartida, iCount: integer;
  iA, iM, iD, iDias: Integer;
  tFecha, tMes, tCP: string;
  tCL: TStringList;
  v: Variant;
begin

  if mfLoading then
    exit;

  tCL := TStringList.Create;
  tFecha := ESBDates.Date2StrLong(xdeFecha.Date);
  // Llenar datos de la factura
  F11.TextRC[3, 12] := xceFolio.Text;
  F11.TextRC[4, 12] := tFecha;
  F11.TextRC[6, 10] := xceOC.Text;
  F11.TextRC[6, 12] := xcePedido.Text;
  tCP := edtPlazo.Text;
  tCP := Trim(tCP);
  iDias := sm.ToI(tCP);
  if (iDias > 0) then
    tCP := 'CREDITO: ' + tCP + ' Dias'
  else
    tCP := 'CONTADO';

  F11.TextRC[8, 10] := sm.Between('(', ')', cboMoneda.Text);
  F11.NumberRC[8, 11] := xcrTipoCambio.Value;
  F11.TextRC[8, 12] := tCP;

  F11.TextRC[10, 2] := cboFormaPago.Text;
  F11.TextRC[10, 6] := cboMetodoPago.Text;
  F11.TextRC[10, 8] := cboUsoCfdi.Text;
  F11.TextRC[10, 9] := edtCuentaBanco.Text;
  F11.TextRC[10, 10] := xceNumAgente.Text + ' ' + xceNombreAgente.Text;
  F11.TextRC[10, 12] := cboNumAlmac.Text;

  // Llenar datos fiscales del cliente
  F11.TextRC[12, 2] := xceCodCteProv.Text + ' ' + xceNombreCte.Text;
  F11.TextRC[13, 2] := Memo1.Lines.Strings[0];
  F11.TextRC[14, 2] := Memo1.Lines.Strings[1];
  F11.TextRC[15, 2] := Memo1.Lines.Strings[2];
  F11.TextRC[16, 2] := Memo1.Lines.Strings[4];

  // Llenar datos de Entrega de Mercancias
  F11.TextRC[12, 7] := fraDirs_Entrega1.mmoDirEnt.Lines.Strings[0];
  F11.TextRC[13, 7] := fraDirs_Entrega1.mmoDirEnt.Lines.Strings[1];
  F11.TextRC[14, 7] := fraDirs_Entrega1.mmoDirEnt.Lines.Strings[2];
  F11.TextRC[15, 7] := fraDirs_Entrega1.mmoDirEnt.Lines.Strings[3];
  F11.TextRC[16, 7] := fraDirs_Entrega1.mmoDirEnt.Lines.Strings[4];

  // Llenar datos de Embarque
  F11.TextRC[12, 12] := mmoEntregar.Lines.Strings[0];
  F11.TextRC[13, 12] := mmoEntregar.Lines.Strings[1];

  iR1 := 18;
  iC1 := 2;

  for iRen := 1 to F1.MaxRow do
  begin
    tCodPS := F1.TextRC[iRen, IdCols.CodProdSer];
    tCodPS := sm.Strip(tCodPS);
    if ((length(tCodPS) > 0) and (F1.NumberRC[iRen, IdCols.Unidades] > 0)) or
      (length(F1.TextRC[iRen, IdCols.DescripPro]) > 0) then
    begin
      iVacios := 0; //Al encontrar un codigo limpio el contador de vacios
      iPartida := iPartida + 1;

      case Tipo_Docto of
        1: F11.NumberRC[iR1, 1] := iPartida;
        107, 23, 232, 233, 28, 282, 283: F11.TextRC[iR1, 2] := tCodPS;
      end;
      F11.NumberRC[iR1, 3] := F1.NumberRC[iRen, IdCols.Unidades];
      F11.TextRC[iR1, 4] := F1.TextRC[iRen, IdCols.UniVta];
      F11.TextRC[iR1, 5] := F1.TExtRC[iRen, IdCols.DescripPro];
      F11.NumberRC[iR1, 10] := F1.NumberRC[iRen, IdCols.PrecioLista];
      F11.NumberRC[iR1, 11] := F1.NumberRC[iRen, IdCols.PorcDescAu];
      F11.NumberRC[iR1, 12] := F1.NumberRC[iRen, IdCols.PrecioNeto];
      F11.NumberRC[iR1, 13] := F1.NumberRC[iRen, IdCols.ImpNetoMov];
    end
    else
    begin
      F11.ClearRange(iR1, 1, iR1, 11, F1ClearValues);

    end;
    iR1 := iR1 + 1;

    iVacios := iVacios + 1;

  end;

  iR2 := 53;
  iC1 := 13;

  F11.NumberRC[iR2 + 0, 11] := xcrSubTotal.Value;
  F11.NumberRC[iR2 + 1, 11] := xcrIva.Value;
  F11.NumberRC[iR2 + 2, 11] := xcrIEPS.Value;
  F11.NumberRC[iR2 + 3, 11] := xcrIvaRet.Value;
  F11.NumberRC[iR2 + 4, 11] := xcrTotal.Value;

  if oDoc.MONEDADOCT = '1' then
  begin
    InWords.SelectLocale(CTRY_MEXICO, LANG_SPANISH);
    tLetra := InWords.Money(xcrTotal.Value, noEuro);
  end
  else
  begin
    InWords.SelectLocale(CTRY_UNITED_STATES, LANG_SPANISH);
    tLetra := InWords.Money(xcrTotal.Value, noEuro);
  end;

  tLetra := upperCase(tLetra);
  tLetra := '**(' + tLetra + ')**';

  tCL := WrapText(tLetra, 60);

  F11.TextRC[53, 2] := tLetra;

  {
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
}
// Imprimir las leyendas
  iCount := mmoLeyendas.Lines.Count;
  v := speColIni.Value;
  iC1 := v;

  for r := 0 to iCount - 1 do
  begin
    F11.TextRC[iR1 + r, iC1] := mmoLeyendas.Lines.Strings[r];
  end;

  tCL.Free;
end;

procedure TfrmDocsFac.LlenaFactura2;
var
  tSql, tCodPS, tLetra, tSel: string;
  iR1, iC1, r, iRen, iVacios, iPartida, iCount, iR2, iRLast: integer;
  iA, iM, iD: Integer;
  tFecha, tMes: string;
  tCL: TStringList;
  v: Variant;
begin

  if mfLoading then
    exit;

  tCL := TStringList.Create;
  tFecha := ESBDates.Date2StrLong(xdeFecha.Date);
  // Llenar datos de la factura
  F11.TextRC[4, 11] := xceFolio.Text;
  F11.TextRC[7, 9] := tFecha;
  F11.TExtRC[8, 10] := edtPlazo.Text;
  F11.TExtRC[8, 11] := 'Días';
  F11.TExtRC[9, 10] := xceOC.Text;
  F11.TExtRC[10, 10] := mmoEntregar.Lines.Strings[0];
  F11.TExtRC[11, 10] := mmoEntregar.Lines.Strings[1];
  // Llenar datos del cliente

  F11.TExtRC[7, 1] := oCte.CODCTEPROV;
  F11.TExtRC[7, 2] := xceNombreCte.Text;
  F11.TExtRC[8, 2] := Memo1.Lines.Strings[0];
  F11.TExtRC[9, 2] := Memo1.Lines.Strings[1];
  F11.TExtRC[10, 2] := Memo1.Lines.Strings[2];
  F11.TExtRC[11, 2] := Memo1.Lines.Strings[4];
  F11.TExtRC[12, 2] := oCte.TELEFONO1 + ' / ' + oCte.TELEFONO2;

  iR1 := 15;
  for iRen := 1 to F1.MaxRow do
  begin
    tCodPS := F1.TextRC[iRen, IdCols.CodProdSer];
    tCodPS := sm.Strip(tCodPS);
    if ((length(tCodPS) > 0) and (F1.NumberRC[iRen, IdCols.Unidades] > 0)) or
      (length(F1.TextRC[iRen, IdCols.DescripPro]) > 0) then
    begin
      iVacios := 0; //Al encontrar un codigo limpio el contador de vacios
      iPartida := iPartida + 1;

      case Tipo_Docto of
        1: F11.NumberRC[iR1, 1] := iPartida;
        107, 23, 232, 233: F11.TextRC[iR1, 1] := tCodPS;
      end;

      F11.NumberRC[iR1, 2] := F1.NumberRC[iRen, IdCols.Unidades];
      F11.TextRC[iR1, 3] := F1.TExtRC[iRen, IdCols.DescripPro];
      F11.NumberRC[iR1, 9] := F1.NumberRC[iRen, IdCols.PrecioLista];
      F11.NumberRC[iR1, 10] := F1.NumberRC[iRen, IdCols.PrecioNeto];
      F11.NumberRC[iR1, 11] := F1.NumberRC[iRen, IdCols.ImpNetoMov];
      iRLast := iR1;
    end
    else
    begin
      F11.ClearRange(iR1, 1, iR1, 11, F1ClearValues);

    end;
    iR1 := iR1 + 1;

    iVacios := iVacios + 1;

  end;
  if iRLast < 44 then
  begin
    iR2 := 45
  end
  else
  begin
    iR2 := iRLast + 2
  end;

  F11.TextRC[iR2 + 0, 10] := 'SubTotal:';
  F11.TextRC[iR2 + 1, 10] := 'IVA (' + sm.StrFloat(xcrPIVA.Value, '0.00') +
    '):';
  F11.TextRC[iR2 + 2, 10] := 'Total:';

  F11.NumberRC[iR2 + 0, 11] := xcrSubTotal.Value;
  F11.NumberRC[iR2 + 1, 11] := xcrIva.Value;
  F11.NumberRC[iR2 + 2, 11] := xcrTotal.Value;

  if oDoc.MONEDADOCT = '1' then
  begin
    InWords.SelectLocale(CTRY_MEXICO, LANG_SPANISH);
    tLetra := InWords.Money(xcrTotal.Value, noEuro);
  end
  else
  begin
    InWords.SelectLocale(CTRY_UNITED_STATES, LANG_SPANISH);
    tLetra := InWords.Money(xcrTotal.Value, noEuro);
  end;

  tLetra := upperCase(tLetra);
  tLetra := '**(' + tLetra + ')**';

  tCL := WrapText(tLetra, 60);

  F11.TextRC[iR2, 1] := tLetra;
  // Fechas de la parte de abajo de la factura
  // Se elimino este dato. fpg:1/Jun/2011

  // Imprimir las leyendas
  iCount := mmoLeyendas.Lines.Count;
  v := iR1;
  iR1 := v;
  v := speColIni.Value;
  iC1 := v;

  for r := 0 to iCount - 1 do
  begin
    F11.TextRC[iR1 + r, iC1] := mmoLeyendas.Lines.Strings[r];
  end;

  tCL.Free;
  tSel := F11.Selection;
  F11.SetSelection(1, 1, iR2 + 2, 11);
  F11.SetPrintAreaFromSelection;
  F11.Selection := tSel;

end;

procedure TfrmDocsFac.LlenaFactura3;
var
  t,tSql, tCodPS, tLetra, tSel: string;
  ix, iR1, iR2, iR3, iC1, r, iRen, iVacios, iPartida, iCount, iRLast: integer;
  i,iA, iM, iD, iDias: Integer;
  tFecha, tMes, tCP: string;
  bHayTexto: Boolean;
  tCL: TStringList;
  v: Variant;
begin

  if mfLoading then
    exit;

  LoadF11;

  tCL := TStringList.Create;
  tFecha := ESBDates.Date2StrShort2(xdeFecha.Date);
  // Llenar datos de la Pedidos y Remisiones... Facturas es otro proc
  F11.TextRC[3, 12] := xceFolio.Text;
  F11.TextRC[4, 12] := tFecha;
  F11.TextRC[6, 10] := xceOC.Text;
  F11.TextRC[6, 12] := xcePedido.Text;

  F11.TextRC[7, 6] := oAge.EMAIL1;
  F11.TextRC[8, 6] := oAge.EMAIL2;


  tCP := edtPlazo.Text;
  tCP := Trim(tCP);
  iDias := sm.ToI(tCP);
  if (iDias > 0) then
    tCP := 'CREDITO: ' + tCP + ' Dias'
  else
    tCP := 'CONTADO';

  F11.TextRC[8, 10] := sm.Between('(', ')', cboMoneda.Text);
  F11.TextRC[144, 11] := F11.TextRC[8, 10];
  F11.NumberRC[8, 11] := xcrTipoCambio.Value;
  F11.TextRC[8, 12] := tCP;

  F11.TextRC[10, 2] := cboFormaPago.Text;
  F11.TextRC[10, 6] := cboMetodoPago.Text;
  F11.TextRC[10, 8] := cboUsoCfdi.Text;
  F11.TextRC[10, 9] := edtCuentaBanco.Text;
  F11.TextRC[10, 10] := xceNumAgente.Text + ' ' + xceNombreAgente.Text;
  F11.TextRC[10, 12] := cboNumAlmac.Text;

  // Llenar datos fiscales del cliente
  F11.TextRC[11, 5] := edtRFC.Text;
  F11.TextRC[12, 2] := xceCodCteProv.Text + ' ' + xceNombreCte.Text;
  F11.TextRC[12, 2] := xceCodCteProv.Text + ' ' + xceNombreCte.Text;
  F11.TextRC[13, 2] := Memo1.Lines.Strings[0];
  F11.TextRC[14, 2] := Memo1.Lines.Strings[1];
  F11.TextRC[15, 2] := Memo1.Lines.Strings[2];
  F11.TextRC[16, 2] := Memo1.Lines.Strings[4];

  // Llenar datos de Entrega de Mercancias
  F11.TextRC[11, 9] := fraDirs_Entrega1.cboNombreDir.Text;
  F11.TextRC[12, 7] := fraDirs_Entrega1.mmoDirEnt.Lines.Strings[0];
  F11.TextRC[13, 7] := fraDirs_Entrega1.mmoDirEnt.Lines.Strings[1];
  F11.TextRC[14, 7] := fraDirs_Entrega1.mmoDirEnt.Lines.Strings[2];
  F11.TextRC[15, 7] := fraDirs_Entrega1.mmoDirEnt.Lines.Strings[3];
  F11.TextRC[16, 7] := fraDirs_Entrega1.mmoDirEnt.Lines.Strings[4];

  // Llenar datos de Embarque
  // Llenar datos de Embarque
  iR2 := 12;
  iC1 := 12;
  i := mmoEntregar.Lines.Count;
  if i >= 1 then
    F11.TextRC[iR2, iC1] := mmoEntregar.Lines.Strings[0];
  if i >= 2 then
    F11.TextRC[iR2 + 1, iC1] := mmoEntregar.Lines.Strings[1];
  if i >= 3 then
    F11.TextRC[iR2 + 2, iC1] := mmoEntregar.Lines.Strings[2];
  if i >= 4 then
    F11.TextRC[iR2 + 3, iC1] := mmoEntregar.Lines.Strings[3];
  if i >= 5 then
    F11.TextRC[iR2 + 4, iC1] := mmoEntregar.Lines.Strings[4];


  iCount := mmoLeyendas.Lines.Count;
  aF11.DetLastRow := aF11.HeaderRows + aF11.DetCount - iCount;

  iR1 := aF11.HeaderRows + 1;
  iR1 := 18;
  for iRen := 1 to F1.MaxRow do
  begin
    tCodPS := F1.TextRC[iRen, IdCols.CodProdSer];
    tCodPS := sm.Strip(tCodPS);
    if (F1.NumberRC[iRen, IdCols.Cancela] <> 2) then
    begin
      if ((length(tCodPS) > 0) and (F1.NumberRC[iRen, IdCols.Unidades] > 0)) or
        (length(F1.TextRC[iRen, IdCols.DescripPro]) > 0) then
      begin

        iVacios := 0; //Al encontrar un codigo limpio el contador de vacios
        iPartida := iPartida + 1;
        {        if iR1 = aF11.DetLastRow then begin
                  F11.Row := aF11.HeaderRows+aF11.DetCount;
                  F11.SetSelection(iR1,1,iR1,1);
                  F11.EditInsert(F1ShiftRows);
                  aF11.DetCount := aF11.DetCount + 1;
                  aF11.DetLastRow := aF11.DetLastRow + 1;
                end;
        }
        //        if (Tipo_Docto in [1])  then F11.NumberRC[iR1,1] := iPartida;
        F11.TextRC[iR1, 2] := tCodPS;
        F11.NumberRC[iR1, 3] := F1.NumberRC[iRen, IdCols.Unidades];
        F11.TextRC[iR1, 4] := F1.TextRC[iRen, IdCols.UniVta];
        F11.TextRC[iR1, 5] := F1.TExtRC[iRen, IdCols.DescripPro];
        F11.NumberRC[iR1, 10] := F1.NumberRC[iRen, IdCols.PrecioLista];
        F11.NumberRC[iR1, 11] := F1.NumberRC[iRen, IdCols.PorcDescAu];
        F11.NumberRC[iR1, 12] := F1.NumberRC[iRen, IdCols.PrecioNeto];
        F11.NumberRC[iR1, 13] := F1.NumberRC[iRen, IdCols.ImpNetoMov];
        aF11.Row := iR1;
      end
      else
      begin
        {        if iR1 <= (aF11.DetLastRow+iCount) then
                  F11.ClearRange(iR1,2,iR1,10,F1ClearValues);}
        iVacios := iVacios + 1;
      end;
      iR1 := iR1 + 1;

      if iVacios > 2 then
        break;

    end;
  end;

  //  iR2 := aF11.HeaderRows+aF11.DetCount+1;
  iR2 := 140;
  iC1 := 13;

  F11.NumberRC[iR2 + 0, 13] := xcrSubTotal.Value;
  F11.NumberRC[iR2 + 1, 13] := xcrIva.Value;
  F11.NumberRC[iR2 + 2, 13] := xcrIEPS.Value;
  F11.NumberRC[iR2 + 3, 13] := xcrIvaRet.Value;
  F11.NumberRC[iR2 + 4, 13] := xcrTotal.Value;

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
  iR1 := 145;
  F11.SetSelection(2, 2, iR1, 13);
  F11.SetPrintAreaFromSelection;
  F11.Selection := tSel;

  //Esconder renglones vacios
  iC1 := 2;
  bHayTexto := False;
  for iR3 := 139 downto 47 do
  begin

    if (length(F11.TextRC[iR3, iC1]) <= 0) then
    begin
      F11.RowHidden[iR3] := not bHayTexto;
    end
    else
    begin
      F11.RowHidden[iR3] := False;
      bHayTexto := True;
    end;
  end;

end;

//-------------------------------------------------------------------
//--- Llenar factura electronica
//-------------------------------------------------------------------

procedure TfrmDocsFac.LlenaFE33;
var
  t, tSql, tCodPS, tLetra, tSel: string;
  ix, iR1, iR2, iR3, iC1, r, iRen, iVacios, iPartida, iCount, iRLast, AErr:
    integer;
  iA, iM, iD, iDias: Integer;
  tFecha, tMes, tCP, tFile, tSerie, tAux: string;
  bHayTexto: Boolean;
  tCL: TStringList;
  v: Variant;
begin

  if mfLoading then
    exit;

  AErr := 0;
  tSerie := frmFE332.GetSerie(Tipo_Docto);
  tAux := sm.PadLeft(xceFolio.Text, 9, '0');
  tFile := 'FAC-' + tSerie + tAux + '.XML';
  AErr := frmFE332.LoadXMLFile(tFile);
  if AErr > 0 then
  begin
    //exit;
  end
  else
  begin
    frmFE332.GetInfo;
  end;

  LoadF11;

  aF11.HeaderRows := 20;
  aF11.DetCount := 17; //28
  aF11.DetMinCount := 17; //28
  aF11.DetLastRow := 55; // se modifica en LLenaFactura3
  aF11.FooterRows := 6;

  tCL := TStringList.Create;
  tFecha := ESBDates.Date2StrShort2(xdeFecha.Date);
  // Llenar datos de la factura
  F11.TextRC[3, 11] := xceFolio.Text;
  F11.TextRC[4, 10] := frmFE332.UUID;
  F11.TextRC[5, 10] := tFecha;
  F11.TextRC[6, 10] := '66080'; //oEmp.CODPOSTAL;
  F11.TextRC[6, 12] := 'ESCOBEDO, N.L.'; //oEmp.CIUDAD + ',' + oEmp.ESTADO;
  F11.TextRC[8, 9] := xceOC.Text;
  F11.TextRC[8, 12] := xcePedido.Text;
  tCP := edtPlazo.Text;
  tCP := Trim(tCP);
  iDias := sm.ToI(tCP);
  if (iDias > 0) then
    tCP := 'CREDITO: ' + tCP + ' Dias'
  else
    tCP := 'CONTADO';

  t := sm.Between('(', ')', cboMoneda.Text);
  F11.TextRC[10, 9] := t;
  F11.TextRC[277, 11] := t;
  if Trim(t) = 'MXN' then
    F11.NumberRC[10, 10] := 1.00
  else
    F11.NumberRC[10, 10] := xcrTipoCambio.Value;
  F11.TextRC[10, 12] := tCP;

  F11.TextRC[12, 2] := Copy(cboMetodoPago.Text,1,35);
  F11.TextRC[12, 5] := Copy(cboFormaPago.Text,1,30);
  F11.TextRC[12, 7] := Copy(edtCuentaBanco.Text,1,20);
  F11.TextRC[12, 9] := Copy(cboUsoCfdi.Text,1,15);
  F11.TextRC[12, 10] := Copy(xceNumAgente.Text + ' ' + xceNombreAgente.Text,1,14);
  F11.TextRC[12, 12] := Copy(cboNumAlmac.Text,1,23);

  // Llenar datos fiscales del cliente
  F11.TextRC[13, 3] := xceCodCteProv.Text;
  F11.TextRC[13, 5] := 'RFC: ' + oCte.RFC;
  F11.TextRC[14, 2] := xceNombreCte.Text;
  F11.TextRC[15, 2] := Memo1.Lines.Strings[0];
  F11.TextRC[16, 2] := Memo1.Lines.Strings[1];
  F11.TextRC[17, 2] := Memo1.Lines.Strings[2];
  F11.TextRC[18, 2] := Memo1.Lines.Strings[3];

  // Llenar datos de Entrega de Mercancias
  F11.TextRC[13, 10] := fraDirs_Entrega1.cboNombreDir.Text;
  F11.TextRC[14, 7] := fraDirs_Entrega1.mmoDirEnt.Lines.Strings[0];
  F11.TextRC[15, 7] := fraDirs_Entrega1.mmoDirEnt.Lines.Strings[1];
  F11.TextRC[16, 7] := fraDirs_Entrega1.mmoDirEnt.Lines.Strings[2];
  F11.TextRC[17, 7] := fraDirs_Entrega1.mmoDirEnt.Lines.Strings[3];
  F11.TextRC[18, 7] := fraDirs_Entrega1.mmoDirEnt.Lines.Strings[4];
  F11.TextRC[18, 7] := edtEmailFacturas.Text;

  // Llenar datos de Embarque
  iR2 := 14;
  iC1 := 12;
  tCL := WrapText3(mmoEntregar.Lines.Strings[0], 23);
  if tCl.Count >= 1 then
    F11.TextRC[iR2, iC1] := tCL.Strings[0];
  if tCl.Count >= 2 then
    F11.TextRC[iR2 + 1, iC1] := tCL.Strings[1];
  if tCl.Count >= 3 then
    F11.TextRC[iR2 + 2, iC1] := tCL.Strings[2];

  iR2 := iR2 + tCL.Count;

  tCL := WrapText3(mmoEntregar.Lines.Strings[1], 23);
  if tCl.Count >= 1 then
    F11.TextRC[iR2, iC1] := tCL.Strings[0];
  if tCl.Count >= 2 then
    F11.TextRC[iR2 + 1, iC1] := tCL.Strings[1];
//  F11.TextRC[14, 12] := mmoEntregar.Lines.Strings[0];
//  F11.TextRC[15, 12] := mmoEntregar.Lines.Strings[1];

  {
    TDefs = Record
      HeaderRows   : Integer; // Cuantos ren en encabezados
      DetCount     : Integer; // renglones en el detalle
      DetMinCount  : Integer; // Minimo de renglones en el detalle
      Row          : Integer; // Renglon actual donde esta el ultimo dato
      DetLastRow   : Integer; // Ultimo renglon para poner datos, quitando la leyenda
      FooterRows   : Integer; // renglones en el pie de pagina
    end;
  }
  iCount := mmoLeyendas.Lines.Count;
  //  aF11.DetLastRow := aF11.HeaderRows + aF11.DetCount - iCount;

  iR1 := aF11.HeaderRows + 1;
  for iRen := 1 to F1.MaxRow do
  begin
    tCodPS := F1.TextRC[iRen, IdCols.CodProdSer];
    tCodPS := sm.Strip(tCodPS);
    if ((length(tCodPS) > 0) and (F1.NumberRC[iRen, IdCols.Unidades] > 0)) or
      (length(F1.TextRC[iRen, IdCols.DescripPro]) > 0) then
    begin

      iVacios := 0; //Al encontrar un codigo limpio el contador de vacios
      iPartida := iPartida + 1;

      //        if (Tipo_Docto in [1])  then F11.NumberRC[iR1,1] := iPartida;
      if (length(tCodPS) > 0) then
      begin
        F11.TextRC[iR1, 2] := tCodPS;
        F11.TextRC[iR1 + 1, 2] := F1.TextRC[iRen, IdCols.ClaveSAT];
        F11.NumberRC[iR1, 3] := F1.NumberRC[iRen, IdCols.Unidades];
        F11.TextRC[iR1, 4] := F1.TextRC[iRen, IdCols.UniVta];
        F11.TextRC[iR1 + 1, 4] := F1.TextRC[iRen, IdCols.ClaveUnidad];
        F11.TextRC[iR1, 5] := F1.TExtRC[iRen, IdCols.DescripPro];
        if length(F1.TExtRC[iRen, IdCols.Pedimento]) > 0 then
        begin
          ;
          F11.TextRC[iR1 + 1, 5] := 'Pedimento: ' + F1.TExtRC[iRen,
            IdCols.Pedimento] + ' / ' + F1.FormattedTextRC[iRen, IdCols.FechaEnt];
        end;
        F11.NumberRC[iR1, 10] := F1.NumberRC[iRen, IdCols.PrecioLista];
        F11.TextRC[iR1 + 1, 10] := 'Tasa';
        F11.NumberRC[iR1, 11] := F1.NumberRC[iRen, IdCols.PorcDescAu];
        F11.NumberRC[iR1 + 1, 11] := F1.NumberRC[iRen, IdCols.PorcIVAMov];
        F11.NumberRC[iR1, 12] := F1.NumberRC[iRen, IdCols.PrecioNeto];
        F11.NumberRC[iR1 + 1, 12] := F1.NumberRC[iRen, IdCols.ImpIVAMovt];
        F11.NumberRC[iR1, 13] := F1.NumberRC[iRen, IdCols.ImpNetoMov];
        if F1.NumberRC[iRen, IdCols.ImpRetIVAMov] > 0 then
          F11.NumberRC[iR1 + 1, 13] := F1.NumberRC[iRen, IdCols.ImpRetIVAMov];

        iR1 := iR1 + 2;

      end
      else
      begin
        F11.TextRC[iR1, 5] := F1.TExtRC[iRen, IdCols.DescripPro];

        iR1 := iR1 + 1;
      end;

      aF11.Row := iR1;

    end
    else
    begin
      iVacios := iVacios + 1;
    end;

    if iVacios > 2 then
      break;

  end;

  iR2 := 261;
  tCL := WrapText2(xceObservaciones.Text, 100);
  if tCl.Count >= 1 then
    F11.TextRC[iR2, 3] := tCL.Strings[0];
  if tCl.Count >= 2 then
    F11.TextRC[iR2 + 1, 3] := tCL.Strings[1];

  iR2 := iR2 + 2;
  iC1 := 4;
  tCL := WrapText3(frmFE332.CadenaOriginalTimbre, 150);
  if tCl.Count >= 1 then
    F11.TextRC[iR2, iC1] := tCL.Strings[0];
  if tCl.Count >= 2 then
    F11.TextRC[iR2 + 1, iC1] := tCL.Strings[1];
  if tCl.Count >= 3 then
    F11.TextRC[iR2 + 2, iC1] := tCL.Strings[2];
  if tCl.Count >= 4 then
    F11.TextRC[iR2 + 3, iC1] := tCL.Strings[3];

  iR2 := iR2+4;
  tCL := WrapText3(frmFE332.SelloCFD, 150);
  if tCl.Count >= 1 then
    F11.TextRC[iR2, iC1] := tCL.Strings[0];
  if tCl.Count >= 2 then
    F11.TextRC[iR2 + 1, iC1] := tCL.Strings[1];
  if tCl.Count >= 3 then
    F11.TextRC[iR2 + 2, iC1] := tCL.Strings[2];

  iR2 := iR2+3;
  tCL := WrapText3(frmFE332.SelloSAT, 150);
  if tCl.Count >= 1 then
    F11.TextRC[iR2, iC1] := tCL.Strings[0];
  if tCl.Count >= 2 then
    F11.TextRC[iR2 + 1, iC1] := tCL.Strings[1];
  if tCl.Count >= 3 then
    F11.TextRC[iR2 + 2, iC1] := tCL.Strings[2];

  iR2 := iR2+4;
  iC1 := 5;
  F11.TextRC[iR2, iC1] := frmFE332.NoCertificadoSAT;
  iC1 := 7;
  F11.TextRC[iR2, iC1] := frmFE332.FechaTimbrado;

  iR2 := 273;
  iC1 := 13;

  F11.NumberRC[iR2 + 0, iC1] := xcrSubTotal.Value;
  F11.NumberRC[iR2 + 1, iC1] := xcrIva.Value;
  F11.NumberRC[iR2 + 2, iC1] := xcrIEPS.Value;
  F11.NumberRC[iR2 + 3, iC1] := xcrIvaRet.Value;
  F11.NumberRC[iR2 + 4, iC1] := xcrTotal.Value;

  if oDoc.MONEDADOCT = '1' then  begin
    InWords.SelectLocale(CTRY_MEXICO, LANG_SPANISH);
    tLetra := InWords.Money(xcrTotal.Value, noEuro);
  end else begin
    InWords.SelectLocale(CTRY_UNITED_STATES, LANG_SPANISH);
    tLetra := InWords.Money(xcrTotal.Value, noEuro);
  end;

  tLetra := upperCase(tLetra);
  tLetra := '**(' + tLetra + ')**';

//  tCL := WrapText(tLetra, 60);

  F11.TextRC[iR2 + 3, 5] := tLetra;
  {// Imprimir las leyendas
    v := speColIni.Value;
    iC1 := v;

    iR2 := aF11.DetLastRow + 1;
    for r := 0 to iCount - 1 do begin
      F11.TextRC[iR2 + r, iC1] := mmoLeyendas.Lines.Strings[r];
    end;
  }

  tCL.Free;
  tSel := F11.Selection;
  // iR1 := aF11.DetLastRow + iCount + aF11.FooterRows+1;
  F11.SetSelection(2, 2, 279, 13);
  F11.SetPrintAreaFromSelection;
  F11.Selection := tSel;

  //Esconder renglones vacios
  iC1 := 2;
  bHayTexto := False;
  for iR3 := 260 downto 47 do
  begin
    //Checar si en codigo o en descripcion hay texto
    if (length(F11.TextRC[iR3, iC1]) <= 0) and (length(F11.TextRC[iR3, 5]) <= 0)
      then
    begin
      F11.RowHidden[iR3] := not bHayTexto;
    end
    else
    begin
      F11.RowHidden[iR3] := False;
      bHayTexto := True;
    end;
  end;

  F11.TopRow := 2;
  F11.LeftCol:= 1;
//  xceObservaciones.Text := xceObservaciones.Text + '*';
end;

procedure TfrmDocsFac.F12SelChange(Sender: TObject);
begin
  if F12.Row < 4 then
  begin
    F12.Row := 4;
    F12.TopRow := 1;
  end;
  if F12.Col < 3 then
  begin
    F12.Col := 3;
    F12.LeftCol := 1;
  end;

  F12.TextRC[1, 2] := F12.TExtRC[3, 2] + ' ' + F12.TextRC[F12.Row, 1] + ' x ' +
    F12.TextRC[2, F12.Col];

end;

procedure TfrmDocsFac.ChecarCredito(var AContinuar: Boolean);
var
  Cte, Msg: string;
  Fecha, Fecha1: TDateTime;
  BloqueoManual: Boolean;
  LimiteCredito: Boolean;
  SaldoVencido: Boolean;
  HistorialPagos: Boolean;
  VentaUnica: Boolean;
  ShowWin: Boolean;
  Monto: Double;
begin
  Cte := xceCodCteProv.Text;
  Fecha := Date - 365;
  AContinuar := True;
  ShowWin := False;

  DM1.GetEstadisticaCte(Cte, Fecha, BloqueoManual, LimiteCredito, SaldoVencido,
    HistorialPagos, VentaUnica, Monto);

  //Si en los parametros Checar credito es 1, checar el credito del cliente
  Msg := '';
  if (BloqueoManual) then
  begin
    Msg := Msg +
      'El Cliente tiene Bloqueo Manual Específico: HECHO POR EL SUPERVISOR.' + #10
      + #13;
    AContinuar := False;
    ShowWin := True;
  end;
  if (LimiteCredito) then
  begin
    Msg := Msg + 'El Cliente tiene bloqueo: LIMITE DE CREDITO EXCEDIDO.' + #10 +
      #13;
    AContinuar := False;
    ShowWin := True;
  end;
  if (SaldoVencido) then
  begin
    Msg := Msg + 'El Cliente tiene bloqueo: SALDOS VENCIDOS.' + #10 + #13;
    AContinuar := False;
    ShowWin := True;
  end;
  if (HistorialPagos) then
  begin
    Msg := Msg + 'El Cliente tiene bloqueo: MAL HISTORIAL DE PAGOS.' + #10 +
      #13;
    AContinuar := False;
    ShowWin := True;
  end;
  if VentaUnica then
  begin
    ShowWin := False;
    if not AContinuar then
    begin
      Msg := '';
      Msg := Msg + 'El Cliente tiene bloqueos automáticos... ' + #10 + #13;
      Msg := Msg + 'Pero se le permitirá SOLAMENTE esta venta hasta $ ' +
        sm.StrFloat(Monto, '#,###.00') + ' pesos. ' + #10 + #13;
      ShowWin := True;
    end;
    AContinuar := True;
  end;

  if ShowWin then
    MessageDlg(Msg, mtWarning, [mbOK], 0);

end;

procedure TfrmDocsFac.btnActCteClick(Sender: TObject);
begin
  Cliente_Update;
  fraDirs_entrega1.Llena_Dirs;
  fraDirs_Entrega1.Leer_DirPrincipal;
end;

procedure TfrmDocsFac.btnAplicarDecClick(Sender: TObject);
begin
  PonerFormulas;
end;

procedure TfrmDocsFac.btnCopiarClick(Sender: TObject);
begin
  with fraDirs_Entrega1 do
  begin
    Nombre_Dir := 'FISCAL';
    Dir_Entrega := Memo1.Text;
    Prioridad := 0;
    Datos_Embarque := mmoEntregar.Text;
  end;
end;

procedure TfrmDocsFac.btnCopiarCteClick(Sender: TObject);
begin

  if length(mtCliente) > 0 then
  begin
    xceCodCteProv.Text := mtCliente;
    BuscaCliente;
  end;
  if length(mtAgente) > 0 then
  begin
    xceNumAgente.Text := mtAgente;
    BuscaAgente;
  end;
  if length(mtTransp) > 0 then
  begin
    xceViaTrans.Text := mtTransp;
    BuscaViaTransporte;
  end;

end;

procedure TfrmDocsFac.btnCopiarDatosClick(Sender: TObject);
begin
  mmoEntregar.Text := fraDirs_Entrega1.Datos_Embarque;
  if length(mmoEntregar.Text) <= 0 then
  begin
    mmoentregar.Lines.Add(xceNombreTransp.Text);
    //    mmoentregar.Lines.Add('OCURRE');
  end;

end;

procedure TfrmDocsFac.btnDeleteRowClick(Sender: TObject);
begin
  F11.EditDelete(F1ShiftRows);
end;

procedure TfrmDocsFac.btnExistenciaClick(Sender: TObject);
var
  t,tfc:String;
  fh:TDateTime;
begin
  t:= oProd.NUMALMAC;
  oProd.CODPRODSER := F1.TextRC[F1.Row, IdCols.CodProdSer];
  oProd.NUMALMAC := '1';
  xcrExisAlm1.Value := oProd.EXISALMACEN;
  fh := oProd.FECCONTEO;
  if fh > 0 then
    tfc := ESBDAtes.Date2StrShort2(fh)
  else
    tfc := 'No hay fecha';
  xcrExisAlm1.Hint  := 'F.Conteo: ' + tfc;
  oProd.NUMALMAC := '2';
  xcrExisAlm2.Value := oProd.EXISALMACEN;
  fh := oProd.FECCONTEO;
  if fh > 0 then
    tfc := ESBDAtes.Date2StrShort2(fh)
  else
    tfc := 'No hay fecha';
  xcrExisAlm2.Hint  := 'F.Conteo: ' + tfc;
  oProd.NUMALMAC := '3';
  xcrExisAlm3.Value := oProd.EXISALMACEN;
  fh := oProd.FECCONTEO;
  if fh > 0 then
    tfc := ESBDAtes.Date2StrShort2(fh)
  else
    tfc := 'No hay fecha';
  xcrExisAlm3.Hint  := 'F.Conteo: ' + tfc;

  oProd.NUMALMAC := t;

  pgcMain.ActivePageIndex := 0;

  F1.SetFocus;
end;

procedure TfrmDocsFac.btnGenerarClick(Sender: TObject);
begin
  GenerarFacturaElectronica(Tipo_Docto);
end;

procedure TfrmDocsFac.GenerarFacturaElectronica(ATipo_Docto: Integer);
var
  t, tAux, tCP, tValue, tCodPS, tNumMovto, tLetra, tFmtPrecio: string;
  i, iRen, iMaxRow, iVacios, iNumMovto, iDias, iErr: Integer;
  dPrecioLista, dPrecioNeto, dCantidad, dTotal, dImpNetoDoc: Double;
  dPorcIVA, dPorcIEPS, dPorcRetIVA: Double;
  bFirst: Boolean;
  tSerie: string;
begin
  //    oCte1 := oCte;
  //  oCte1.CODCTEPROV := oCte.CODCTEPROV;
  //  oCte1.RAZSOCIAL := oCte1.RAZSOCIAL;
  SetMsg2('Generando Factura Electrónica...', True);

  i := sm.ToI(edtDec.Text);
  if i = 0 then
    i := 2;

  tFmtPrecio := '0.' + sm.RepeatStr('0', i);

  frmFE332.Inicializar;
  frmFE332.Formato_Factura := 'FAC33_BASE.xls';

  frmFE332.TipoDocto := 'FAC';
  frmFE332.Serie := 'A';
  frmFE332.Folio := xceFolio.Text;

  frmFE332.Preparar(2); //Hoja: Enca01
  frmFE332.SetVariable('vNombreCfdi', frmFE332.NombreCFDI);
  frmFE332.SetVariable('vRefId', sm.StrFloat(oDoc.DOCTO_ID, '0'));
  frmFE332.SetVariable('vSerie', 'A');
  frmFE332.SetVariable('vFolio', xceFolio.Text);
  t := esbDates.Date2ISOEnhStr(xdeFecha.Date) + 'T' + ESBDates.Time2Str2(Time);
  frmFE332.SetVariable('vFecha', t);
  frmFE332.SetVariable('vSello', 'Sin Sello');
  frmFE332.SetVariable('vFormaPago', Copy(cboFormaPago.Text, 1, 2));
  frmFE332.SetVariable('vNoCertificado', '00001000000409196182');
  frmFE332.SetVariable('vCertificado', 'Sin certificado');
  tCP := edtPlazo.Text;
  tCP := Trim(tCP);
  iDias := sm.ToI(tCP);
  if (iDias > 0) then
    tCP := 'CREDITO: ' + tCP + ' Dias'
  else
    tCP := 'CONTADO';
  frmFE332.SetVariable('vCondicionesDePago', tCP);
  t := sm.StrFloat(xcrSubTotal.Value, '0.00');
  frmFE332.SetVariable('vSubTotal', t);
  frmFE332.SetVariable('vDescuentoT', '0.00');
  tAux := sm.Between('(', ')', cboMoneda.Text);
  frmFE332.SetVariable('vMoneda', tAux);
  if tAux = 'MXN' then
    frmFE332.SetVariable('vTipoCambio', '1')
  else
  begin
    t := sm.StrFloat(xcrTipoCambio.value, '0.000000');
    frmFE332.SetVariable('vTipoCambio', t);
  end;
  t := sm.StrFloat(xcrTotal.Value, '0.00');
  frmFE332.SetVariable('vTotal', t);
  frmFE332.SetVariable('vTipoDeComprobante', 'I');
  if iDias <= 0 then
    frmFE332.SetVariable('vMetodoPago', 'PUE')
  else
    frmFE332.SetVariable('vMetodoPago', 'PPD');

  frmFE332.SetVariable('vLugarExpedicion', oEmp.CODPOSTAL);
  frmFE332.SetVariable('vConfirmacion', '000000');
  frmFE332.Generar;

  frmFE332.Preparar(4); //Hoja: Enca03
  frmFE332.SetVariable('vEmiRFC', oEmp.RFC);
  frmFE332.SetVariable('vEmiNombre', oEmp.RAZSOCIAL);
  frmFE332.SetVariable('vEmiRegimenFiscal', oEmp.Regimen_Fiscal);
  frmFE332.SetVariable('vRecRFC', oCte.RFC);
  frmFE332.SetVariable('vRecNombre', oCte.RAZSOCIAL);
  frmFE332.SetVariable('vRecResidenciaFiscal', oCte.RESIDENCIA);
  frmFE332.SetVariable('vRecNumRegIdTrib', oCte.IDTRIBUTARIO);
  frmFE332.SetVariable('vRecUsoCFDI', Copy(cboUsoCfdi.Text, 1, 3));
  frmFE332.Generar;

  //Generar los Datos de Conceptos
  iMaxRow := F1.MaxRow;
  for iRen := 1 to iMaxRow do
  begin
    tCodPS := F1.TextRC[iRen, IdCols.CodProdSer];
    tCodPS := sm.Strip(tCodPS);
    if (length(tCodPS) > 0) and (F1.NumberRC[iRen, IdCols.Unidades] > 0) then
    begin
      iVacios := 0; //Al encontrar un codigo limpio el contador de vacios
      iNumMovto := iNumMovto + 1;
      tNumMovto := sm.StrFloat(iNumMovto, '00000');
      dPrecioLista := F1.NumberRC[iRen, IdCols.PrecioLista];
      dPrecioNeto := F1.NumberRC[iRen, IdCols.PrecioNeto];
      dCantidad := F1.NumberRC[iRen, IdCols.Unidades];
      dTotal := F1.NumberRC[iRen, IdCols.ImpNetoMov];
      dImpNetoDoc := dImpNetoDoc + dTotal;

      frmFE332.Partida.ClaveProdServ := F1.TextRC[iRen, IdCols.ClaveSAT];
      frmFE332.Partida.NoIdentificacion := F1.TextRC[iRen, IdCols.CodProdSer];
      frmFE332.Partida.Cantidad := F1.NumberRC[iRen, IdCols.Unidades];
      frmFE332.Partida.ClaveUnidad := F1.TextRC[iRen, IdCols.ClaveUnidad];
      frmFE332.Partida.Unidad := F1.TextRC[iRen, IdCols.UniVta];
      frmFE332.Partida.Descripcion := F1.TextRC[iRen, IdCols.DescripPro];
      frmFE332.Partida.ValorUnitario := F1.NumberRC[iRen, IdCols.PrecioNeto];
      frmFE332.Partida.Importe := F1.NumberRC[iRen, IdCols.ImpNetoMov];
      frmFE332.Partida.PorcIVA := F1.NumberRC[iRen, IdCols.PorcIVAMov];
      frmFE332.Partida.PorcIEPS := F1.NumberRC[iRen, IdCols.PorcIEPSMo];
      frmFE332.Partida.PorcRetIVA := F1.NumberRC[iRen, IdCols.PorcRetIVAMov];
      frmFE332.Partida.IVA := F1.NumberRC[iRen, IdCols.ImpIVAMovt];
      frmFE332.Partida.IEPS := F1.NumberRC[iRen, IdCols.ImpIEPSMov];
      frmFE332.Partida.RetIVA := F1.NumberRC[iRen, IdCols.ImpRetIVAMov];
      frmFE332.Partida.NumeroPedimento := F1.TextRC[iRen, IdCols.Pedimento];
      frmFE332.InsertPartida;

      if frmFE332.Partida.PorcIVA > 0 then
        dPorcIVA := frmFE332.Partida.PorcIVA;
      if frmFE332.Partida.PorcIEPS > 0 then
        dPorcIEPS := frmFE332.Partida.PorcIEPS;
      if frmFE332.Partida.PorcRetIVA > 0 then
        dPorcRetIVA := frmFE332.Partida.PorcRetIVA;

      if bFirst then
        bFirst := False;
    end; // if...
  end; //for...

  //----------------------------------------------
  // Final del documento: Impuestos, leyendas, etc.
  //----------------------------------------------
  // Datos adcionales del documento
  if oDoc.MONEDADOCT = '1' then
  begin
    InWords.SelectLocale(CTRY_MEXICO, LANG_SPANISH);
    tLetra := InWords.Money(xcrTotal.Value, noEuro);
  end
  else
  begin
    InWords.SelectLocale(CTRY_UNITED_STATES, LANG_SPANISH);
    tLetra := InWords.Money(xcrTotal.Value, noEuro);
  end;

  tLetra := upperCase(tLetra);
  tLetra := '**(' + tLetra + ')**';

  frmFE332.Preparar(9); //Hoja: Pie01

  t := sm.StrFloat(xcrIVA.Value + xcrIEPS.Value,'0.00');
  frmFE332.SetVariable('vTotalImpuestosTrasladados', t);
  frmFE332.SetVariable('vTotTrasladosImpuesto', '002');
  frmFE332.SetVariable('vTotTrasladosTipoFactor', 'Tasa');
  tAux := sm.StrFloat(dPorcIVA / 100, '0.000000');
  frmFE332.SetVariable('vTotTrasladosTasaOCuota', tAux);
  t := sm.StrFloat(xcrIVA.Value,'0.00');
  frmFE332.SetVariable('vTotTrasladosImporte', t);
  frmFE332.Generar;

  // Es opcional... si hay IEPS
  if xcrIEPS.Value > 0 then
  begin
    frmFE332.Copiar_ElementoLista(9); //Hoja: Pie01
    frmFE332.SetVariable('vTotTrasladosImpuesto', '003');
    frmFE332.SetVariable('vTotTrasladosTipoFactor', 'Tasa');
    tAux := sm.StrFloat(dPorcIEPS / 100, '0.000000');
    frmFE332.SetVariable('vTotTrasladosTasaOCuota', tAux);
    t := sm.StrFloat(xcrIEPS.Value,'0.00');
    frmFE332.SetVariable('vTotTrasladosImporte', t);
    frmFE332.Generar;
  end;
  // Es opcional... si hay Retencion IVA
  if xcrIVARet.Value > 0 then
  begin
    frmFE332.Preparar(10); //Hoja: Pie02
    t := sm.StrFloat(xcrIVARet.Value,'0.00');
    frmFE332.SetVariable('vTotalImpuestosRetenidos', t);
    frmFE332.SetVariable('vTotRetencionesImpuesto', '002');
    frmFE332.SetVariable('vTotRetencionesTipoFactor', 'Tasa');
    tAux := sm.StrFloat(dPorcRetIVA / 100, '0.000000');
    frmFE332.SetVariable('vTotRetencionesTasaOCuota', tAux);
    t := sm.StrFloat(xcrIVARet.Value,'0.00');
    frmFE332.SetVariable('vTotRetencionesImporte', t);
    frmFE332.Generar;
  end;



//Adenda Diversa.... Hay problemas con la fecha de la adenda... la voy a quitar por lo pronto...
// despues hacemos las pruebas correspondientes.
{  frmFE332.Preparar(11); //Hoja: Pie03
  frmFE332.SetVariable('vGenTipoDocumento', 'Facturas');
  frmFE332.SetVariable('vGenTotalConLetra', tLetra);
  frmFE332.SetVariable('vGenObservaciones', xceObservaciones.Text);
  frmFE332.SetVariable('vGenNumeroOrden', xceOC.Text);
  frmFE332.SetVariable('vGenNombreTransportista', xceNombreTransp.Text);
  frmFE332.SetVariable('vGenNumeroEntrega', 'N/D');
  frmFE332.SetVariable('vGenTerminosPago', tCP);
  t := esbDates.Date2ISOEnhStr(xdeFecha.Date) + 'T' + ESBDates.Time2Str2(Time);
  frmFE332.SetVariable('vGenFechaEntrega', t);
  frmFE332.SetVariable('vGenFechaTipoCambio', t);
//  frmFE332.SetVariable('vTipoDocumento', 'Factura');

  frmFE332.SetVariable('vEmiVendedor', xceNumAgente.Text + ' ' +
    xceNombreAgente.Text);
  frmFE332.SetVariable('vEmiNumeroProveedor', 'N/D');
  frmFE332.SetVariable('vEmiTipoProveedor', 'N/D');
  frmFE332.SetVariable('vEmiGln', 'N/D');

  t := oEmp.TELEFONO1;
  frmFE332.SetVariable('vEmiTelefono', t);
  t := oEmp.EMAIL;
  frmFE332.SetVariable('vEmiEmailComercial', t);
  frmFE332.SetVariable('vEmiEmailContacto', oAge.EMAIL1);
  frmFE332.SetVariable('vEmiWeb', 'www.acerosroscados.com.mx');

  t := oEmp.CODPOSTAL;
  frmFE332.SetVariable('vEmiCodigoSitio', t);
  t := oEmp.DOMICILIO;
  frmFE332.SetVariable('vEmiCalle', t);
  t := oEmp.NUM_EXT;
  frmFE332.SetVariable('vEmiNumero', t);
  t := oEmp.COLONIA;
  frmFE332.SetVariable('vEmiColonia', t);
  t := oEmp.CIUDAD;
  frmFE332.SetVariable('vEmiCiudad', t);
  t := oEmp.CIUDAD;
  frmFE332.SetVariable('vEmiMunicipio', t);
  t := oEmp.ESTADO;
  frmFE332.SetVariable('vEmiEstado', t);
  t := oEmp.PAIS;
  frmFE332.SetVariable('vEmiPais', t);
  t := oEmp.CODPOSTAL;
  frmFE332.SetVariable('vEmiCodigoPostal', oEmp.CODPOSTAL);
  frmFE332.SetVariable('vEmiAlias', 'MTY');

  tValue := oCte.TELEFONO1 + ',' + oCte.TELEFONO2;
  frmFE332.SetVariable('vRecTelefono', oCte.TELEFONO1);
  frmFE332.SetVariable('vRecEmailComercial', oCte.EMAIL);
  frmFE332.SetVariable('vRecEmailContacto', oCte.EMAILPAGOS);
  frmFE332.SetVariable('vRecWeb', 'www');

  frmFE332.SetVariable('vRecCodigoSitio', oCte.CODPOSTAL);
  frmFE332.SetVariable('vRecCalle', oCte.DOMICILIO);
  frmFE332.SetVariable('vRecNumero', oCte.NUM_EXTERIOR+' '+oCte.NUM_INTERIOR);
  frmFE332.SetVariable('vRecColonia', oCte.COLONIACTE);
  frmFE332.SetVariable('vRecCiudad', oCte.NOMBRE_POBLACION);
  frmFE332.SetVariable('vRecMunicipio', oCte.NOMBRE_MUNICIPIO);
  frmFE332.SetVariable('vRecEstado', oCte.NOMBRE_ESTADO);
  frmFE332.SetVariable('vRecPais', oCte.NOMBRE_PAIS);
  frmFE332.SetVariable('vRecCodigoPostal', oCte.CODPOSTAL);
  frmFE332.SetVariable('vRecNumCliente', oCte.CODCTEPROV);

  tValue := oCte.CODPOSTAL;
  frmFE332.SetVariable('vRecDCodigoSitio', tValue);
  tValue := oCte.CALLE;
  frmFE332.SetVariable('vRecDCalle', tValue);
  tValue := oCte.NUM_EXTERIOR + ' ' + oCte.NUM_INTERIOR;
  frmFE332.SetVariable('vRecDNumero', tValue);
  tValue := oCte.COLONIACTE;
  frmFE332.SetVariable('vRecDColonia', tValue);
  tValue := oCte.NOMBRE_POBLACION;
  frmFE332.SetVariable('vRecDCiudad', tValue);
  frmFE332.SetVariable('vRecDMunicipio', '');
  tValue := oCte.NOMBRE_ESTADO;
  frmFE332.SetVariable('vRecDEstado', tValue);
  tValue := oCte.NOMBRE_PAIS;
  frmFE332.SetVariable('vRecDPais', tValue);
  tValue := oCte.CODPOSTAL;
  frmFE332.SetVariable('vRecDCodigoPostal', tValue);
  frmFE332.Generar;
}

  frmFE332.Preparar(11); //Hoja: Pie03
  frmFE332.Generar;


  SetMsg2('Timbrando la Factura... (Se haran 3 intentos de 5 segundos cada uno)',True);
  frmFE332.Grabar_Factura;

  if frmFE332.XMLOk then begin
    SetMsg2('Factura Timbrada!!! XML Generado!!!', False);
    Clipboard.AsText := frmFE332.CarpetaDataOut + frmFE332.ArchivoPDF;
    GrabarMailer;
    RefreshF1; // Actualizo para llenar la factura en el F1
    //Mover el PDF generado por Mercurio. Para almacenar el original en carpeta Data\Pdf
  end else begin
    SetMsg2('Hubo ERROR al timbrar!!! Checa carpeta de diagnóstico!!!', False);
  end;

  UpdateControls;
  //frmFE332.ShowModal;

end;

procedure TfrmDocsFac.GrabarMailer;
begin
// Insertarlo en la lista de correo
//  if (edEstado = edInsert) then exit;

  SetMsg('Actualizando Documento en el Mailer...',False);
  oMailer.REFID    := oDoc.Docto_Id;
  oMailer.ESTATUS  := 0; // No enviado
  oMailer.ARCHIVO  := frmFE332.NombreCFDI;
  oMailer.FECHA    := xdeFecha.Date;
  oMailer.FHINSERT := Date+Time;
  oMailer.CODCTEPROV := oCte.CODCTEPROV;
  oMailer.RAZSOCIAL  := oCte.RAZSOCIAL;
  oMailer.EMAILREC := oCte.EMAILFACTURA;
  oMailer.NOMBREREC:= oCte.JEFEPAGOS;
  oMailer.FHENVIADO:= 0;
  oMailer.USUARIO  := oUser.LOGIN;
  oMailer.OBSERVACIONES := 'Agregado.No enviado.';
  oMailer.InsertUpdate;
  if oMailer.Error = 0 then
    SetMsg('Actualizacio al Mailer exitosa!!',False)
  else
    SetMsg('Hubo problemas al Actualizar el Documento!!',False);

end;
//----------------------------------------------------

{$REGION 'Genera Factura electronica anterior'}
{
procedure TfrmDocsFac.GenerarFacturaElectronica(ATipo_Docto:Integer);
var
  tAux,tCodPS,tNumMovto,tLetra,tFmtPrecio:String;
  i,iRen,iMaxRow,iVacios,iNumMovto,iDias:Integer;
  dPrecioLista,dPrecioNeto,dCantidad,dTotal,dImpNetoDoc:Double;
  bFirst:Boolean;
  tSerie:String;
begin

  i := sm.ToI(edtDec.Text);
  if i = 0 then i:= 2;

  tFmtPrecio := '0.' + sm.RepeatStr('0',i);

  if frmFE33.DataInExists > 0 then begin
    ShowMessage('La carpeta de la Factura Electrónica NO existe!'+#10+#13+
    'Avisale al encargado de Sistemas');
    exit;
  end;

  frmFE33.ClearAll;
  frmFE33.LoadFiles;

  bFirst := True;
//Datos Generales
  frmFE33.AsignarEnca('folio',xceFolio.Text);
  frmFE33.AsignarEnca('fecha',xdeFecha.Text);
//Datos del Emisor
  frmFE33.AsignarEnca('emRfc','ARO03042381A');
  frmFE33.AsignarEnca('emNombre','ACEROS ROSCADOS, SA DE CV');
  frmFE33.AsignarEnca('emCalle','ZAPOTLAN');
  frmFE33.AsignarEnca('emNoExterior','306');
  frmFE33.AsignarEnca('emColonia','Fracc. Gonzalitos');
  frmFE33.AsignarEnca('emLocalidad','Monterrey');
  frmFE33.AsignarEnca('emMunicipio','Monterrey');
  frmFE33.AsignarEnca('emEstado','Nuevo Leon');
  frmFE33.AsignarEnca('emPais','Mexico');
  frmFE33.AsignarEnca('emCodigoPostal','64020');
  frmFE33.AsignarEnca('emProveedor',edtNumProveedor.Text);
  frmFE33.AsignarEnca('emGLN','');
//  frmFE.AsignarPie('montoTotal','25500.00');
//Datos del Receptor
  frmFE.AsignarEnca('reRfc',oCte.RFC);
  frmFE.AsignarEnca('reNombre',oCte.RAZSOCIAL);
  frmFE.AsignarEnca('reCalle',oCte.CALLE);
  frmFE.AsignarEnca('reNoExterior',oCte.NUM_EXTERIOR);
  frmFE.AsignarEnca('reNoInterior',oCte.NUM_INTERIOR);
  frmFE.AsignarEnca('reColonia',oCte.COLONIACTE);

  tAux := oTabla.GetDescri (TABLA_CD,oCte.POBLACTE);
  frmFE.AsignarEnca('reLocalidad',tAux);
  frmFE.AsignarEnca('reMunicipio',tAux);

  tAux := oTabla.GetDescri (TABLA_EDO,oCte.ESTADOCTE);
  frmFE.AsignarEnca('reEstado',tAux);

  tAux := oTabla.GetDescri (TABLA_PAIS,oCte.PAISCTE);
//  tAux := 'MEXICO';
  frmFE.AsignarEnca('rePais',tAux);
  frmFE.AsignarEnca('reCodigoPostal',oCte.CODPOSTAL);
  frmFE.AsignarEnca('reNoCliente',oCte.CODCTEPROV);
  frmFE.AsignarEnca('reEMail',oCte.EMAIL);
  frmFE.AsignarEnca('reTelefono',oCte.TELEFONO1+', '+oCte.TELEFONO2);
  frmFE.AsignarEnca('reFax',oCte.TELEFONO3);
  frmFE.AsignarEnca('reComprador',edtComprador.Text);
  frmFE.AsignarEnca('reReferencia',edtReferencia.Text);
  frmFE.AsignarEnca('reEmail',oCte.EMAILFACTURA);

  frmFE.AddEnca;

//Generar los Datos de Conceptos
  iMaxRow := F1.MaxRow;
  for iRen := 1 to iMaxRow do begin
    tCodPS := F1.TextRC[iRen,IdCols.CodProdSer];
    tCodPS := sm.Strip (tCodPS);
    if ((length(tCodPS) > 0) and (F1.NumberRC[iRen,IdCols.Unidades] > 0)) or
       (length(F1.TextRC[iRen,IdCols.DescripPro]) > 0) then begin
        iVacios := 0; //Al encontrar un codigo limpio el contador de vacios
        iNumMovto := iNumMovto + 1;
        tNumMovto := sm.StrFloat (iNumMovto,'00000');
        dPrecioLista := F1.NumberRC[iRen,IdCols.PrecioLista];
        dPrecioNeto := F1.NumberRC[iRen,IdCols.PrecioNeto];
        dCantidad := F1.NumberRC[iRen,IdCols.Unidades];
        dTotal    := F1.NumberRC[iRen,IdCols.ImpNetoMov];
        dImpNetoDoc := dImpNetoDoc + dTotal;

        frmFE.AsignarDet('cantidad',sm.StrFloat(dCantidad,'#.00'));
        frmFE.AsignarDet('unidad',F1.TextRC[iRen,IdCols.UniVta]);
//        frmFE.AsignarDet('unidad','Pieza');
        frmFE.AsignarDet('numIdentificacion',tNumMovto);
        frmFE.AsignarDet('descripcion',F1.TextRC[iRen,IdCols.DescripPro]);
        frmFE.AsignarDet('valorUnitario',sm.StrFloat(dPrecioNeto,tFmtPrecio));
        frmFE.AsignarDet('importe',sm.StrFloat(dTotal,'#.00'));
        frmFE.AddDet(True);

      if bFirst then bFirst := False;
    end;

 end;

// Generar el pie del documento
//Datos Complementarios
  tAux := sm.StrFloat(xcrSubTotal.Value,'0.00');
  frmFE.AsignarPie('subtotalConceptos',tAux);
  tAux := sm.StrFloat(xcrSubTotal.Value,'0.00');
  frmFE.AsignarPie('totalConceptos',tAux);
  frmFE.AsignarPie('pagoForma','PAGO EN UNA SOLA EXHIBICION');

  tAux := edtPlazo.Text;
  tAux := Trim(tAux);
  iDias := sm.ToI(tAux);
  if (iDias>0) then
    tAux := 'CREDITO: ' + tAux +' Dias'
  else
    tAux := 'CONTADO';

  frmFE.AsignarPie('pagoCondiciones',tAux);
  frmFE.AsignarPie('refID',sm.StrFloat(oDoc.Docto_Id,'#'));
  frmFE.AsignarPie('tipoDocumento','Factura');
  frmFE.AsignarPie('ordenCompra',xceOC.Text);
  frmFE.AsignarPie('agente',xceNumAgente.Text);

  tAux := sm.Replace(#10,' ',mmoEntregar.Text);
  frmFE.AsignarPie('observaciones',tAux);
//FEP - 14/Jun/2012
  tAux := Trim(edtMetodoPago.Text);
  if (length(tAux) > 0) then
    frmFE.AsignarPie('pagoMetodo',tAux);

  tAux := Trim(edtCuentaBanco.Text);
  if length(tAux) > 0 then
    frmFE.AsignarPie('numCtaPago',tAux);

  frmFE.AsignarPie('trasladadoImpuesto','IVA');
  tAux := sm.StrFloat(xcrIVA.Value,'0.00');
  frmFE.AsignarPie('trasladadoImporte',tAux);
  tAux := sm.StrFloat(xcrPIVA.Value,'0.00');
  frmFE.AsignarPie('trasladadoTasa',tAux);
  tAux := sm.StrFloat(xcrIVA.Value,'0.00');
  frmFE.AsignarPie('subtotalTrasladados',tAux);

  // Impuestos Locales
  tAux := sm.StrFloat(0,'0.00');
  frmFE.AsignarPie('totalTraslados',tAux);
  tAux := sm.StrFloat(0,'0.00');
  frmFE.AsignarPie('totalRetenciones',tAux);

  frmFE.AsignarPie('nombreMoneda',edtMoneda.Text);
  tAux := sm.StrFloat(xcrTCInox.Value,'0.00');
  frmFE.AsignarPie('tipoCambio',tAux);

  tAux := sm.StrFloat(xcrTotal.Value,'0.00');
  frmFE.AsignarPie('montoTotal',tAux);

  if oDoc.MONEDADOCT = '1' then begin
      InWords.SelectLocale (CTRY_MEXICO,LANG_SPANISH);
      tLetra := InWords.Money (xcrTotal.Value,noEuro);
  end else begin
      InWords.SelectLocale (CTRY_UNITED_STATES,LANG_ENGLISH);
      tLetra := InWords.Money (xcrTotal.Value,noEuro);
  end;

  tLetra := upperCase(tLetra);
  tLetra := '**('+tLetra+')**';
  frmFE.AsignarPie('montoTotalTexto',tLetra);
  //---------  Leyendas de la factura --------
  frmFE.AsignarPie('LeyendaEspecial1',mmoLeyendas.Lines.Strings[0]);
  frmFE.AsignarPie('LeyendaEspecial2',mmoLeyendas.Lines.Strings[1]);
  frmFE.AsignarPie('LeyendaEspecial3',mmoLeyendas.Lines.Strings[2]);

  //------------------------------------------
  frmFE.AddPie;

  mmzFac.Lines := frmFE.mmzDoc.Lines;

  tSerie := frmFE.GetSerie(ATipo_Docto);

  tAux := sm.PadLeft(xceFolio.Text,9,'0');
  frmFE.SaveFile('FAC-'+tSerie+tAux+'.TXT');

// Insertarlo en la lista de correo

  oMailer.REFID    := oDoc.Docto_Id;
  oMailer.ESTATUS  := 0; // No enviado
  oMailer.ARCHIVO  := 'FAC-'+tSerie+tAux;
  oMailer.FECHA    := xdeFecha.Date;
  oMailer.FHINSERT := Date+Time;
  oMailer.CODCTEPROV := oCte.CODCTEPROV;
  oMailer.RAZSOCIAL  := oCte.RAZSOCIAL;
  oMailer.EMAILREC := oCte.EMAILFACTURA;
  oMailer.NOMBREREC:= oCte.JEFEPAGOS;
  oMailer.FHENVIADO:= 0;
  oMailer.USUARIO  := oUser.LOGIN;
  oMailer.OBSERVACIONES := 'Agregado.No enviado.';
  oMailer.InsertUpdate;

end;
}
{$ENDREGION}

procedure TfrmDocsFac.GenerarCancelElectronica(ATipo_Docto: Integer; var AErr:
  integer);
var
  tAux, tCodPS, tNumMovto, tLetra, tFile, tSerie: string;
  iRen, iMaxRow, iVacios, iNumMovto, iDias, iErr: Integer;
  dPrecioLista, dPrecioNeto, dCantidad, dTotal, dImpNetoDoc: Double;
  bFirst: Boolean;
begin
  if frmFE332.DataOutExists > 0 then
  begin
    ShowMessage('La carpeta de la Factura Electrónica NO existe!' + #10 + #13 +
      'Avisale al encargado de Sistemas');
    AErr := 1;
    exit;
  end;

  AErr := 0;
  tSerie := frmFE332.GetSerie(ATipo_Docto);
  tAux := sm.PadLeft(xceFolio.Text, 9, '0');
  tFile := 'FAC-' + tSerie + tAux + '.XML';
  AErr := frmFE332.LoadXMLFile(tFile);
  if AErr > 0 then
  begin
    ShowMessage('La Factura (XML) NO existe!' + #10 + #13);
    exit;
  end;
  frmFE332.GetInfo;

  frmFE332.Inicializar;
  frmFE332.Formato_CancelaFactura := 'CFA33_BASE.xls';

  frmFE332.TipoDocto := 'CFA';
  frmFE332.Serie := 'A';
  frmFE332.Folio := xceFolio.Text;

  frmFE332.Preparar(2); //Hoja: Enca01
  frmFE332.SetVariable('vUUID', frmFE332.UUID);
  frmFE332.SetVariable('vEmiRFC', frmFE332.emRFC);
  frmFE332.Generar;

  SetMsg2('Cancelando la Factura... (Se haran 3 intentos de 5 segundos cada uno)', True);
  AErr := frmFE332.Grabar_Cancelacion;

  if frmFE332.XMLOk then
  begin
    SetMsg2('Factura Cancelada!!! XML de Cancelación Generado!!!', False);
  end
  else
  begin
    SetMsg2('Hubo ERROR al CANCELAR la factura!!! Checa carpeta de diagnóstico!!!', False);
  end;

  UpdateControls;

  //frmFE332.ShowModal;

end;

{$REGION 'GenerarCancelElectronica'}
{
procedure TfrmDocsFac.GenerarCancelElectronica(ATipo_Docto:Integer;var AErr:integer);
var
  tAux,tCodPS,tNumMovto,tLetra,tFile,tSerie:String;
  iRen,iMaxRow,iVacios,iNumMovto,iDias,iErr:Integer;
  dPrecioLista,dPrecioNeto,dCantidad,dTotal,dImpNetoDoc:Double;
  bFirst:Boolean;
begin

  if frmFE.DataInExists > 0 then begin
    ShowMessage('La carpeta de la Factura Electrónica NO existe!'+#10+#13+
    'Avisale al encargado de Sistemas');
    AErr :=1;
    exit;
  end;

  AErr := 0;
  tSerie := frmFE.GetSerie(ATipo_Docto);
  tAux := sm.PadLeft(xceFolio.Text,9,'0');
  tFile:= 'FAC-'+tSerie+tAux+'.XML';
  AErr := frmFE.LoadXMLFile(tFile);
  if AErr > 0 then begin
    exit;
  end;
  frmFE.GetInfo;

  frmFE.ClearAll;
  frmFE.LoadCancelFiles;

  bFirst := True;
//Datos Generales
  frmFE.AsignarEnca('uuid',frmFE.feDatos.UUID);
//Datos del Emisor
  frmFE.AsignarEnca('emRfc',frmFE.feDatos.emRFC);
  frmFE.AsignarEnca('reRfc',frmFE.feDatos.reRFC);
  frmFE.AsignarEnca('refID',sm.StrFloat(oDoc.Docto_Id,'#'));

  frmFE.AddEnca;

  mmzFac.Lines := frmFE.mmzDoc.Lines;

  frmFE.SaveFile('cancela_FAC-'+tSerie+tAux+'.TXT');

end;
}
{$ENDREGION}

procedure TfrmDocsFac.GetRC(AVar: string;
  var Ren, Col: Integer);
var
  tAux: string;
  i, r, s: Integer;
  v: Variant;
begin

  s := 2; //Hoja de Configuracion

  Ren := -1;
  Col := -1;
  for r := 3 to 1000 do
  begin
    tAux := F11.TextSRC[s, r, 1];
    tAux := Trim(tAux);
    if length(tAux) <= 0 then
      break;
    if tAux = AVar then
    begin
      v := F11.NumberSRC[s, r, 2];
      Ren := v;
      v := F11.NumberSRC[s, r, 3];
      Col := v;
      break;
    end;
  end;


end;

procedure TfrmDocsFac.F13DblClick(ASender: TObject; nRow, nCol: Integer);
begin
  SelectLP;
  RefreshF1;

end;

procedure TfrmDocsFac.F13KeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDocsFac.SelectLP;
var
  h, r, c: Integer;
  tProd: string;
  dCant: Double;
begin
  h := F13.Sheet;
  r := F13.Row;
  c := F13.Col;

  oProd.RetrieveHRC(h, r, c);
  if oProd.ERROR > 0 then
  begin
    ShowMessage('No existe un producto con estas coordenadas!');
    exit;
  end;
  tProd := oProd.CODPRODSER;
  GetProducto(tProd);
  if (h = 1) and (r <= 60) then
    dCant := F13.NumberRC[r + 1, c]
  else
    dCant := 1;

  F1.NumberRC[F1.Row, IDCols.Unidades] := dCant;
  if F1.Row < F1.MaxRow then
    F1.Row := F1.Row + 1;

end;

procedure TfrmDocsFac.SeleccionaAlmacen(AIdSucursal: Integer);
var
  i, iAlm, iCount: Integer;
  tAlm: string;
  dCant: Double;
begin
  iCount := cboNumalmac.Items.Count;
  for i := 0 to iCount - 1 do
  begin
    tAlm := sm.NthWord(1, cboNumAlmac.Items.Strings[i], ['|']);
    tAlm := Trim(tAlm);
    iAlm := sm.ToI(tAlm);
    if iAlm = AIdSucursal then
    begin
      cboNumAlmac.ItemIndex := i;
      break;
    end;
  end;

  oProd.NUMALMAC := Trim(sm.NthWord(1, cboNumAlmac.Text, ['|']));

end;

//------------------------------------------------------------------------------------------------

procedure TfrmDocsFac.cboCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Return: BuscarProductos;
  end;

end;

procedure TfrmDocsFac.xsbListarClick(Sender: TObject);
begin
  BuscarProductos;
end;

procedure TfrmDocsFac.xsbBuscarClick(Sender: TObject);
begin
  F3.FindDlg;
end;

procedure TfrmDocsFac.F3DblClick(ASender: TObject; nRow, nCol: Integer);
begin
  PasarProductosDoc;
  RefreshF1;

end;

function TfrmDocsFac.GetNextRowDoc: Integer;
var
  i: Integer;
  tCod: string;
  fExit: Boolean;

begin
  i := 1; //Renglon Inicial
  repeat
    tCod := F1.TextSRC[1, i, 1];
    tCod := Trim(tCod);
    if length(tCod) <= 0 then
      fExit := True
    else
      i := i + 1;

  until fExit = True;

  Result := i;

end;

procedure TfrmDocsFac.axnLimpiarListado;
var
  iSheet: integer;
  tSel: string;
begin
  iSheet := F3.Sheet;
  F3.Sheet := 1;
  tSel := F3.Selection;
  F3.ClearRange(10, 1, F3.MaxRow, F3.MaxCol, F1ClearValues);
  F3.SetSelection(10, 1, F3.LastRow, F3.LastCol);
  F3.FontBold := False;
  F3.FontColor := clBlack;
  F3.Selection := tSel;
  F3.Sheet := iSheet;
end;

procedure TfrmDocsFac.BuscarProductos;
var
  tStr, tCod, tDes, tNumAlmacen: string;
  iSheet, irow, iCol, iColx, iField, iPos: Integer;
  tFName, tDescripTec: string;
  tChar: Char;
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

  if POS(',', tStr) > 0 then
  begin
    tCod := sm.NthWord2(2, tStr);
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
  tNumAlmacen := Trim(sm.NthWord(1, cboAlmacenes1.Text, ['|']));

  with DM1.icuListaArt2 do
  begin
    Prepare;

    ParamByName('p_CodProdSer').AsString := tCod;
    ParamByName('p_DescripPro').AsString := tDes;
    ParamByName('p_NumAlmacen').AsString := tNumAlmacen;
    Open;

    iSheet := 1;
    iRow := 4;
    iCol := 2;
    iColx := iCol;

    First;
    while not Eof do
    begin
      F3.EntrySRC[iSheet, iRow, 2] := FieldByName('CODPRODSER').AsString;
      F3.EntrySRC[iSheet, iRow, 3] := FieldByName('DescripPro').AsString;
      F3.EntrySRC[iSheet, iRow, 4] := '';
      F3.EntrySRC[iSheet, iRow, 5] := FieldByName('ExisTotal').AsString;
      F3.EntrySRC[iSheet, iRow, 6] := FieldByName('PcioVta1').AsString;
      F3.EntrySRC[iSheet, iRow, 7] := FieldByName('PcioVta2').AsString;
      F3.EntrySRC[iSheet, iRow, 8] := FieldByName('PcioVta3').AsString;
      F3.EntrySRC[iSheet, iRow, 10] := FieldByName('PathFoto').AsString;
      tDescripTec := FieldByName('DescripTec').AsString;
      tDescripTec := trim(tDescripTec);
      F3.TExtSRC[iSheet, iRow, 12] := copy(tDescripTec, 1, 250);
      F3.TExtSRC[iSheet, iRow, 13] := copy(tDescripTec, 251, 250);

      iRow := iRow + 1;
      Next;
    end;
    F3.SetSelection(1, 1, iRow, Fields.ColumnCount + 1);
    F3.SetPrintAreaFromSelection;
    F3.Selection := 'B4';

  end;
end;

procedure TfrmDocsFac.PasarProductosDoc;
var
  i, iR1, iR2, iC1, iC2, iRowIni, iRC, iPrecio, iColPrecio, s, selCount:
    Integer;
  tCod: string;
begin
  iRowIni := GetNextRowDoc;
  iPrecio := 1; //sm.ToI(cboPasar.Text);
  iColPrecio := 5 + iPrecio;

  //  iRC := GetNextRowCotiza;

  selCount := F3.SelectionCount;

  F3.Sheet := 1;

  for s := 0 to selCount - 1 do
  begin
    F3.GetSelection(s, iR1, iC1, iR2, iC2);
    for i := iR1 to iR2 do
    begin
      tCod := F3.TextSRC[1, i, 2];
      F1.Row := iRowIni;
      GetProducto(tCod);

      F1.NumberRC[F1.Row, IdCols.Unidades] := F3.NumberSRC[1, i, 4];

      //        FormateaRen(i);
      iRowIni := iRowIni + 1;
      iRC := iRC + 1;
    end;
  end;

end;

procedure TfrmDocsFac.pgcMainChange(Sender: TObject);
begin
  if pgcMain.ActivePageIndex = 1 then
    RefreshF1;
end;

procedure TfrmDocsFac.SetFont(ARow: Integer; ATipo: string);
var
  tSel: string;
begin
  tSel := F1.Selection;
  F1.SetSelection(ARow, 1, ARow, F1.LastCol);
  if ATipo = 'NORMAL' then
  begin //Cancelar Partida
    F1.FontBold := False;
    F1.FontColor := clBlack;
  end;
  if ATipo = 'CANCELAPARTIDA' then
  begin //Cancelar Partida
    F1.FontBold := True;
    F1.FontColor := clRed;
  end;
  F1.Selection := tSel;
end;

procedure TfrmDocsFac.cboSelectDirs(Sender: TObject);
begin
  mmoEntregar.Text := fraDirs_Entrega1.Datos_Embarque;

end;

procedure TfrmDocsFac.SetMsg(AMsg: string; ABlink: Boolean);
begin
  lblStatusBar1.Caption := AMsg;
  lblStatusBar1.Blinking := ABlink;
end;
procedure TfrmDocsFac.SetMsg2(AMsg: string; ABlink: Boolean);
begin
  lblStatusBar2.Caption := AMsg;
  lblStatusBar2.Blinking := ABlink;
end;

procedure TfrmDocsFac.Cliente_Update;
var
  tCod:String;
begin
  tCod := xceCodCteProv.Text;
  if length(tCod) <=0 then begin
    MessageDlg('No hay cliente seleccionado!!', mtError, [mbOK], 0);
    exit;
  end;

  if frmClienteAct = nil then
    frmClienteAct := TfrmClienteAct.Create(Application);

  frmClienteAct.oCte := oCte;
  frmClienteAct.Perfil := 1; //Vendedores....
  frmClienteAct.SetEstado_Update;
  frmClienteAct.ShowModal;
  FreeAndNil(frmClienteAct);
end;

procedure TfrmDocsFac.CalculaDescto;
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

procedure TfrmDocsFac.SurtirPedido(APrioridad:Integer = 1);
var
  mrRes:Integer;
  tComentarios,tOS:String;
  fLiberar:Boolean;
begin
//Prioridad:  1=Normal, 2=Rapido, 3=Urgente!!

  fLiberar := mfLiberacionAutomatica;
  oOS.LIBERACION_AUTOMATICA := mfLiberacionAutomatica;

  oCte.CODCTEPROV := oDoc.CODCTEPROV;
  oCte.GetInfoCxC;

  if oCte.FACTURAS_VENCIDAS <=0   then fLiberar := True;
  if oCte.MAX_DIAS_VENCIDOS <= 15 then fLiberar := True;
  if oCte.SALDO_TOTAL > oCte.LIMCREDCTE then fLiberar := False;


  oOS.LIBERACION_AUTOMATICA := fLiberar;


  oOS.DOCTO_ID := oDoc.DOCTO_ID;
  oOS.DIRENTREGA_ID := oDoc.IDDIRENTREGA;

  tComentarios := '';
  if APrioridad = 2 then tComentarios := 'Pedido Normal pero darle velocidad';
  if APrioridad = 3 then tComentarios := 'Pedido URGENTE!!';

  oOS.COMENTARIOS_VEN := tComentarios;
  oOS.USERINS    := oUser.LOGIN;
  oOS.FHINS      := DATE + Time;


  oOS.Insert;
  if oOS.Error = 0 then begin
    tOS := sm.StrFloat(oOS.ORDEN,'0');
    if oOS.ORDEN <=0 then
      SetMsg('El Pedido esta en CxC para su autorización!!',False)
    else
      SetMsg('Enviado a Almacen para surtido!! Orden # ' + tOS,False);
  end else begin
    SetMsg('Hubo Error al grabar pedido en Almacen!!',False);
  end;
end;
end.
