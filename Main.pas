unit Main;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList, TBXStatusBars, RxGrdCpt, {SpeedBar, RXSpin,
  Animate, GIFCtrl, RxLogin,} RXCtrls, AxCtrls, IniFiles,
  OleCtrls, LibApp, IB_Session, FNumLet,RzTabs,
  RxPlacemnt, IB_TransactionBar, StrMan, NumWords,
  TB2Dock, TB2Toolbar, TB2ExtItems, TBXExtItems, TBX, {Word97, OleServer,} Splash02,
  MsgError, clsUser, clsAplicacion, TBXOffice2003Theme,
  ClsEmpresa, ClsApp, IB_Components, IB_Process, IB_DDL_Controller, TB2Item, rxAppEvent,
  rxTimerlst, TBXSwitcher, RzBckgnd, RzStatus, RzGroupBar,
  ClsParam, IdBaseComponent, IdComponent, IdRawBase, IdRawClient, IdIcmpClient,
  TBXMDI;

type
  TMainForm = class(TForm)
    OpenDialog: TOpenDialog;
    ImageList1: TImageList;
    PrinterSetupDialog1: TPrinterSetupDialog;
    dfsStatusBar1: TTBXStatusBar;
    RxTimerList1: TRxTimerList;
    RxTimerEvent1: TRxTimerEvent;
    FormStorage1: TFormStorage;
    ImageList2: TImageList;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    mnuSistema: TTBXSubmenuItem;
    itmIniciarSesion: TTBXItem;
    itmCerrarSesion: TTBXItem;
    N6: TTBXSeparatorItem;
    itmEmpresas: TTBXItem;
    N35: TTBXSeparatorItem;
    itmConfiguracion: TTBXItem;
    itmConexion: TTBXItem;
    N2: TTBXSeparatorItem;
    itmAcercaDe: TTBXItem;
    N5: TTBXSeparatorItem;
    itmSalir: TTBXItem;
    mnuVentas: TTBXSubmenuItem;
    Pedidos1: TTBXItem;
    Remisiones1: TTBXItem;
    Facturas1: TTBXItem;
    N10: TTBXSeparatorItem;
    itmCotiza: TTBXItem;
    itmsep12: TTBXSeparatorItem;
    itmEtiquetas: TTBXItem;
    itmEnvioFac: TTBXItem;
    N17: TTBXSeparatorItem;
    itmSyB: TTBXItem;
    itmCancelarBack: TTBXItem;
    N27: TTBXSeparatorItem;
    itmBajaRota: TTBXItem;
    N34: TTBXSeparatorItem;
    itmReportes: TTBXSubmenuItem;
    itmDiarioVentas: TTBXItem;
    itmVtaCte: TTBXItem;
    itmVtaCteProd: TTBXItem;
    itmVtasFamilia: TTBXItem;
    itmVentasAgente: TTBXItem;
    N9: TTBXSeparatorItem;
    itmBackOrderPro: TTBXItem;
    itmAuxMovCte: TTBXItem;
    itmCteSinVta: TTBXItem;
    itmCompCte: TTBXItem;
    itmCompAnualCte: TTBXItem;
    itmEstadCteProd: TTBXItem;
    itmCompAgte: TTBXItem;
    itmCompAnualAgte: TTBXItem;
    itmCompAnualProd: TTBXItem;
    itmArtBajaRota: TTBXItem;
    N38: TTBXSeparatorItem;
    itmInfoCte1: TTBXItem;
    itmInfoCte2: TTBXItem;
    itmRentaAgente: TTBXItem;
    itmCfgVtas: TTBXSubmenuItem;
    itmDesctos: TTBXItem;
    mnuCxC: TTBXSubmenuItem;
    itmAbonoClientes: TTBXItem;
    N7: TTBXSeparatorItem;
    itmSelDoc: TTBXItem;
    N16: TTBXSeparatorItem;
    itmRepCxC: TTBXSubmenuItem;
    itmDirCliente: TTBXItem;
    itmCatCliente: TTBXItem;
    N4EstadodeCuenta1: TTBXItem;
    itmEdoCtaDet: TTBXItem;
    itmCarAgente: TTBXItem;
    itmCobranzaTipo: TTBXItem;
    itmRepTipoDoc: TTBXItem;
    N22: TTBXSeparatorItem;
    itmCobAgente: TTBXItem;
    N37: TTBXSeparatorItem;
    mnuCompras: TTBXSubmenuItem;
    itmReportesCostos: TTBXItem;
    N15: TTBXSeparatorItem;
    itmOC: TTBXItem;
    FacturasProveedores1: TTBXItem;
    itmCompras: TTBXItem;
    itmComprasMP: TTBXItem;
    N26: TTBXSeparatorItem;
    itmDevProv: TTBXItem;
    N23: TTBXSeparatorItem;
    itmRepCompras: TTBXSubmenuItem;
    itmDiaCompras: TTBXItem;
    itmComprasProv: TTBXItem;
    itmConseOC: TTBXItem;
    itmProvProd: TTBXItem;
    N25: TTBXSeparatorItem;
    itmECFamProd: TTBXItem;
    itmBOProv: TTBXItem;
    mnuCxP: TTBXSubmenuItem;
    PagosaProveedores1: TTBXItem;
    N19: TTBXSeparatorItem;
    Reportes1: TTBXSubmenuItem;
    itmDirProv: TTBXItem;
    itmCatProv: TTBXItem;
    N24: TTBXSeparatorItem;
    itmEdoCtaP: TTBXItem;
    itmEdoCtaDetP: TTBXItem;
    itmCarteraProv: TTBXItem;
    mnuInventarios: TTBXSubmenuItem;
    itmDevoProd: TTBXItem;
    N33: TTBXSeparatorItem;
    itmMovsAlmac: TTBXItem;
    N11: TTBXSeparatorItem;
    CapturaInventariosFsico1: TTBXItem;
    N12: TTBXSeparatorItem;
    itmFamBackOrder: TTBXItem;
    N18: TTBXSeparatorItem;
    itmProCierreInve: TTBXItem;
    itmFisicoActual: TTBXItem;
    N1: TTBXSeparatorItem;
    N1ReportedeEntradas1: TTBXSubmenuItem;
    itmKardex: TTBXItem;
    itmMovAlmac: TTBXItem;
    N28: TTBXSeparatorItem;
    itmInvActual: TTBXItem;
    itmExisPrecio: TTBXItem;
    itmBackOrderInve: TTBXItem;
    itmRepBackFam: TTBXItem;
    N29: TTBXSeparatorItem;
    ValuaInve: TTBXItem;
    itmValuacionExis: TTBXItem;
    N3: TTBXSeparatorItem;
    itmEstadExis: TTBXItem;
    mnuCatalogos: TTBXSubmenuItem;
    Clientes2: TTBXItem;
    Proveedores2: TTBXItem;
    itmAgentes: TTBXItem;
    Productos2: TTBXItem;
    itmAlmacenes: TTBXItem;
    N30: TTBXSeparatorItem;
    itmFotos: TTBXItem;
    N32: TTBXSeparatorItem;
    ProductosCompuestos1: TTBXItem;
    Familias1: TTBXItem;
    N31: TTBXSeparatorItem;
    itmMonedas: TTBXItem;
    TiposdeClientes1: TTBXItem;
    itmTipoDoc: TTBXItem;
    ConceptosdeInventario1: TTBXItem;
    itmTablas: TTBXItem;
    mnuEstadisticas: TTBXSubmenuItem;
    Generales1: TTBXItem;
    Clientes1: TTBXItem;
    Proveedores1: TTBXItem;
    Productos1: TTBXItem;
    mnuProcesos: TTBXSubmenuItem;
    itmCierreMes: TTBXItem;
    itmProCteSinVta: TTBXItem;
    N14: TTBXSeparatorItem;
    itmCambioCodProd: TTBXItem;
    itmCambioCodFam: TTBXItem;
    itmCambioProdFam: TTBXItem;
    N8: TTBXSeparatorItem;
    itmExpProd: TTBXItem;
    itmImpProd: TTBXItem;
    N39: TTBXSeparatorItem;
    itmExpProvee: TTBXItem;
    itmImpProvee: TTBXItem;
    N40: TTBXSeparatorItem;
    itmPrecio9: TTBXItem;
    mnuUtilerias: TTBXSubmenuItem;
    itmMiniexcel: TTBXItem;
    N20: TTBXSeparatorItem;
    itmScripts: TTBXItem;
    itmQuery: TTBXItem;
    N21: TTBXSeparatorItem;
    itmConversion: TTBXItem;
    itmListaAccesos: TTBXItem;
    itmActUsuarios: TTBXItem;
    ActualizarEmpresas1: TTBXItem;
    N13: TTBXSeparatorItem;
    itmList: TTBXItem;
    N36: TTBXSeparatorItem;
    UsuariosConectados1: TTBXItem;
    Window1: TTBXSubmenuItem;
    WindowTileItem: TTBXItem;
    VentanaAnterior1: TTBXItem;
    VentanaSiguiente1: TTBXItem;
    N4: TTBXSeparatorItem;
    Help1: TTBXSubmenuItem;
    Contenido: TTBXItem;
    TBXPopupMenu1: TTBXPopupMenu;
    Linea11: TTBXItem;
    Linea21: TTBXItem;
    Linea31: TTBXItem;
    Linea41: TTBXItem;
    TBXSwitcher1: TTBXSwitcher;
    rzClock: TRzClockStatus;
    mobMenu: TRzGroupBar;
    rzgFrecuentes: TRzGroup;
    rzgCostos: TRzGroup;
    rzgVentas: TRzGroup;
    rzgCobranza: TRzGroup;
    rzgSIE: TRzGroup;
    rzgReportesRx: TRzGroup;
    rzBAck: TRzBackground;
    TBXSeparatorItem1: TTBXSeparatorItem;
    tbtCostos: TTBXItem;
    itmPedimentoAjuste: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    itmRepSaldosCtes: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    tbtParam: TTBXItem;
    tbtNotasCargo: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    tbtComprasBack: TTBXItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    itmSaldos: TTBXItem;
    itmAS: TTBXItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    tbtSaldosNCg: TTBXItem;
    mnuAlmacen: TTBXSubmenuItem;
    itmES: TTBXItem;
    FacElec: TTBXItem;
    TBXSeparatorItem8: TTBXSeparatorItem;
    tbtClientesAtraso: TTBXItem;
    itmMailer: TTBXItem;
    TBXSeparatorItem9: TTBXSeparatorItem;
    itmMapper: TTBXItem;
    TBXSeparatorItem10: TTBXSeparatorItem;
    itmCostosFac: TTBXItem;
    TBXSeparatorItem11: TTBXSeparatorItem;
    itmCapturaLP: TTBXItem;
    itmCostosAR: TTBXItem;
    itmRepComis: TTBXItem;
    TBXSeparatorItem12: TTBXSeparatorItem;
    TBXSeparatorItem13: TTBXSeparatorItem;
    itmTablasComis: TTBXItem;
    itmRepAdic: TTBXSubmenuItem;
    itmCosteoEsp: TTBXItem;
    tbtCambioArt: TTBXItem;
    itmXRepVtaSuc: TTBXItem;
    itmXRepRentab: TTBXItem;
    itmXRepVtaSuc2: TTBXItem;
    TBXSeparatorItem14: TTBXSeparatorItem;
    itmXRepInve: TTBXItem;
    itmRepVtaAvance: TTBXItem;
    itmXRepAS2: TTBXItem;
    itmXCapPpto: TTBXItem;
    TBXSeparatorItem15: TTBXSeparatorItem;
    itmHistoria: TTBXItem;
    TBXSeparatorItem16: TTBXSeparatorItem;
    tbtDescargar: TTBXItem;
    itmDocVentas: TTBXItem;
    itmClientes2: TTBXItem;
    tbtProductos2: TTBXItem;
    itmFacTxt: TTBXItem;
    TBXSeparatorItem17: TTBXSeparatorItem;
    itmNCTxt: TTBXItem;
    tbtXRepVtaFam: TTBXItem;
    itmCambialCapturaPL: TTBXItem;
    TBXSeparatorItem18: TTBXSeparatorItem;
    itmParametrosCxC: TTBXItem;
    itmAutorizaCxC: TTBXItem;
    TBXSeparatorItem19: TTBXSeparatorItem;
    itmDocCobros: TTBXItem;
    itmCambioLimCre: TTBXItem;
    TBXSeparatorItem20: TTBXSeparatorItem;
    itmBloqueados: TTBXItem;
    itmAnalisisDesctos: TTBXItem;
    IdIcmpClient1: TIdIcmpClient;
    TBXSeparatorItem21: TTBXSeparatorItem;
    itmRefacciones: TTBXItem;
    itmRecursos: TTBXItem;
    itmDeptos: TTBXItem;
    TBXSeparatorItem22: TTBXSeparatorItem;
    itmRepAlmacen: TTBXSubmenuItem;
    itmRepExistencias: TTBXItem;
    itmRepConsumos: TTBXItem;
    itmRepRequisiciones: TTBXItem;
    TBXSeparatorItem23: TTBXSeparatorItem;
    itmTomarFotos: TTBXItem;
    itmXRepUltimasVentas: TTBXItem;
    mnuConta: TTBXSubmenuItem;
    itmPolizas: TTBXItem;
    TBXSeparatorItem24: TTBXSeparatorItem;
    itmLayout: TTBXItem;
    tbtDocCostos: TTBXItem;
    TBXSeparatorItem25: TTBXSeparatorItem;
    tbtAnalisis: TTBXItem;
    tbtImportar: TTBXItem;
    TBXSeparatorItem26: TTBXSeparatorItem;
    TBXSeparatorItem27: TTBXSeparatorItem;
    TBXLabelItem1: TTBXLabelItem;
    TBXMDIWindowItem1: TTBXMDIWindowItem;
    tbEstatus: TTBXItem;
    TBXSeparatorItem28: TTBXSeparatorItem;
    tbtRemGDL: TTBXItem;
    tbtRemMEX: TTBXItem;
    TBXSeparatorItem29: TTBXSeparatorItem;
    tbtUbicaciones: TTBXItem;
    tbtUbiProd: TTBXItem;
    tbtSurtidores: TTBXItem;
    tbtConteoFis: TTBXItem;
    TBXSeparatorItem30: TTBXSeparatorItem;
    Pedidos2: TTBXItem;
    Pedidos3: TTBXItem;
    TBXSeparatorItem31: TTBXSeparatorItem;
    TBSeparatorItem1: TTBSeparatorItem;
    tbtEstatus_Pedidos: TTBXItem;
    TBXSeparatorItem32: TTBXSeparatorItem;
    procedure tbtSaldosNCgClick(Sender: TObject);
    procedure itmSaldosClick(Sender: TObject);
    procedure itmASClick(Sender: TObject);
    procedure tbtComprasBackClick(Sender: TObject);
    procedure tbtImpreNotaCargoClick(Sender: TObject);
    procedure tbtNotasCargoClick(Sender: TObject);
    procedure ConceptosdeInventario1Click(Sender: TObject);
    procedure rzgSIEItems5Click(Sender: TObject);
    procedure tbtParamClick(Sender: TObject);
    procedure itmRepSaldosCtesClick(Sender: TObject);
    procedure itmPedimentoAjusteClick(Sender: TObject);
    procedure tbtCostosClick(Sender: TObject);
    procedure rzgSIEItems0Click(Sender: TObject);
    procedure rzgCobranzaItems4Click(Sender: TObject);
    procedure rzgCobranzaItems3Click(Sender: TObject);
    procedure rzgCobranzaItems2Click(Sender: TObject);
    procedure rzgCobranzaItems1Click(Sender: TObject);
    procedure rzgCobranzaItems0Click(Sender: TObject);
    procedure rzgVentasItems5Click(Sender: TObject);
    procedure rzgVentasItems4Click(Sender: TObject);
    procedure rzgVentasItems3Click(Sender: TObject);
    procedure rzgVentasItems2Click(Sender: TObject);
    procedure rzgVentasItems1Click(Sender: TObject);
    procedure rzgVentasItems0Click(Sender: TObject);
    procedure rzgCostosItems3Click(Sender: TObject);
    procedure rzgCostosItems2Click(Sender: TObject);
    procedure rzgCostosItems1Click(Sender: TObject);
    procedure rzgCostosItems0Click(Sender: TObject);
    procedure rzgFrecuentesItems6Click(Sender: TObject);
    procedure rzgFrecuentesItems5Click(Sender: TObject);
    procedure rzgFrecuentesItems4Click(Sender: TObject);
    procedure rzgFrecuentesItems3Click(Sender: TObject);
    procedure rzgFrecuentesItems2Click(Sender: TObject);
    procedure rzgFrecuentesItems1Click(Sender: TObject);
    procedure rzgFrecuentesItems0Click(Sender: TObject);
    procedure rzgRxClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure COnfigurarImpresoras1Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure SetupMain;
    procedure RxTimerEvent1Timer(Sender: TObject);
    procedure CloseAll;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure MiniWord1Click(Sender: TObject);
    procedure MiniExcel1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure ToolbarButton973Click(Sender: TObject);
    procedure itmIniSesClick(Sender: TObject);
    procedure DBConnect;
    procedure DBDisconnect;
    procedure itmCerSesClick(Sender: TObject);
    procedure VS;
    procedure WindowTileItemClick(Sender: TObject);
    procedure WindowTileItem2Click(Sender: TObject);
    procedure itmAcercaDeClick(Sender: TObject);
    procedure itmConversionClick(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure Clientes;
    procedure Proveedores;
    procedure Productos;
    procedure Proveedores2Click(Sender: TObject);
    procedure Productos2Click(Sender: TObject);
    procedure Facturas1Click(Sender: TObject);
    procedure Pedidos(ASucursal:Integer);
    procedure Remisiones(ASucursal:Integer);
    procedure Facturas(ATipo:Integer);
    procedure Button1Click(Sender: TObject);
    procedure itmIniciarSesionClick(Sender: TObject);
    procedure itmCerrarSesionClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
    procedure itmArticulosClick(Sender: TObject);
    procedure obtArtClick(Sender: TObject);
    procedure Articulos;
    procedure itmPruebasImpreClick(Sender: TObject);
    procedure itmAbonoClientesClick(Sender: TObject);
    procedure itmMiniexcelClick(Sender: TObject);
    procedure itmScriptsClick(Sender: TObject);
    procedure itmRespaldosClick(Sender: TObject);
    procedure Reportes;
    procedure Procesos(ptProceso:String);
    procedure N1ReportedeVentas1Click(Sender: TObject);
    procedure itmOCClick(Sender: TObject);
    procedure OC;
    procedure SetWait(TypeWait:Byte;Msg:String);
    procedure CapturaInventariosFsico1Click(Sender: TObject);
    procedure N4EstadodeCuenta1Click(Sender: TObject);
    procedure OutlookButton12Click(Sender: TObject);
    procedure ValuaInveClick(Sender: TObject);
    procedure itmReportesCostosClick(Sender: TObject);
    procedure obtRepClick(Sender: TObject);
    procedure itmMonedasClick(Sender: TObject);
    procedure Compras;
    procedure FacturasProveedores1Click(Sender: TObject);
    procedure itmActUsuariosClick(Sender: TObject);
    procedure Usuarios;
    procedure EsconderTodo;
    function VerificaUsuario(ptUsr,ptPass:String):Boolean;
    procedure AplicarPerfil;
    procedure AplicarPerfil2(Form:TForm);
    procedure CerrarFormas;
    procedure itmMovsAlmacClick(Sender: TObject);
    procedure Almacen;
    procedure itmDiarioVentasClick(Sender: TObject);
    procedure itmAlmacenesClick(Sender: TObject);
    procedure itmListaAccesosClick(Sender: TObject);
    procedure itmEtiquetasClick(Sender: TObject);
    procedure itmQueryClick(Sender: TObject);
    procedure itmSyBClick(Sender: TObject);
    procedure itmDevoProdClick(Sender: TObject);
    procedure obtDevoProdClick(Sender: TObject);
    procedure obtProductosClick(Sender: TObject);
    procedure itmAgentesClick(Sender: TObject);
    procedure itmTablasClick(Sender: TObject);
    procedure Familias1Click(Sender: TObject);
    procedure itmSelDocClick(Sender: TObject);
    procedure itmCancelarBackClick(Sender: TObject);
    procedure itmConfiguracionClick(Sender: TObject);
    procedure itmInvActualClick(Sender: TObject);
    procedure itmVentasAgenteClick(Sender: TObject);
    procedure itmCobAgenteClick(Sender: TObject);
    procedure itmVtasFamiliaClick(Sender: TObject);
    procedure itmEdoCtaDetClick(Sender: TObject);
    procedure obtVentasClick(Sender: TObject);
    procedure SIE(Pagina:Integer);
    procedure itmCarAgenteClick(Sender: TObject);
    procedure itmBackOrderProClick(Sender: TObject);
    procedure itmCobranzaTipoClick(Sender: TObject);
    procedure obtCxCClick(Sender: TObject);
    procedure obtComprasClick(Sender: TObject);
    procedure obtCxPClick(Sender: TObject);
    procedure obtInveClick(Sender: TObject);
    procedure itmEnvioFacClick(Sender: TObject);
    procedure SetText(Msg:String);
    procedure itmValuacionExisClick(Sender: TObject);
    procedure itmRepTipoDocClick(Sender: TObject);
    procedure itmCatClienteClick(Sender: TObject);
    procedure itmVtaCteClick(Sender: TObject);
    procedure iitmCatProvClick(Sender: TObject);
    procedure itmDiaComprasClick(Sender: TObject);
    procedure itmComprasProvClick(Sender: TObject);
    procedure itmConseOCClick(Sender: TObject);
    procedure itmTipoDocClick(Sender: TObject);
    procedure TipoDocs;
    procedure itmExisPrecioClick(Sender: TObject);
    procedure itmAuxMovCteClick(Sender: TObject);
    procedure obtSelDocDblClick(Sender: TObject);
    procedure obtOCDblClick(Sender: TObject);
    procedure obtFac2Click(Sender: TObject);
    procedure obtPed2Click(Sender: TObject);
    procedure obtDev2Click(Sender: TObject);
    procedure obtEti2Click(Sender: TObject);
    procedure obtDiaVtaClick(Sender: TObject);
    procedure obtBackorderClick(Sender: TObject);
    procedure obtSelDoc2Click(Sender: TObject);
    procedure OutlookButton10Click(Sender: TObject);
    procedure OutlookButton11Click(Sender: TObject);
    procedure itmDirClienteClick(Sender: TObject);
    procedure itmCteSinVtaClick(Sender: TObject);
    procedure itmProCteSinVtaClick(Sender: TObject);
    procedure itmCierreMesClick(Sender: TObject);
    procedure itmCompCteClick(Sender: TObject);
    procedure itmCompAgteClick(Sender: TObject);
    procedure itmCompAnualCteClick(Sender: TObject);
    procedure itmCompAnualAgteClick(Sender: TObject);
    procedure itmDesctosClick(Sender: TObject);
    procedure itmConexionClick(Sender: TObject);
    procedure dfsStatusBar1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure UsuariosConectados1Click(Sender: TObject);
    procedure itmCotizaClick(Sender: TObject);
    procedure Cotizaciones;
    procedure itmAjusteClick(Sender: TObject);
    procedure itmCompAnualProdClick(Sender: TObject);
    procedure ContenidoClick(Sender: TObject);
    procedure itmVtaCteProdClick(Sender: TObject);
    procedure itmCambioCodProdClick(Sender: TObject);
    procedure itmCambioCodFamClick(Sender: TObject);
    procedure itmCambioProdFamClick(Sender: TObject);
    procedure olbPendClick(Sender: TObject);
    procedure itmFamBackOrderClick(Sender: TObject);
    procedure itmEstadCteProdClick(Sender: TObject);
    procedure itmBackOrderInveClick(Sender: TObject);
    procedure itmProCierreInveClick(Sender: TObject);
    procedure itmEstadExisClick(Sender: TObject);
    procedure itmExpProdClick(Sender: TObject);
    procedure itmImpProdClick(Sender: TObject);
    procedure itmFisicoActualClick(Sender: TObject);
    procedure CargaLogo;
    procedure itmCostosClick(Sender: TObject);
    procedure PagosaProveedores1Click(Sender: TObject);
    procedure Pagos;
    procedure itmCatProvClick(Sender: TObject);
    procedure itmEdoCtaDetPClick(Sender: TObject);
    procedure itmEdoCtaPClick(Sender: TObject);
    procedure itmDirProvClick(Sender: TObject);
    procedure itmECFamProdClick(Sender: TObject);
    procedure itmBajaRotaClick(Sender: TObject);
    procedure itmMovAlmacClick(Sender: TObject);
    procedure MovAlmac;
    procedure itmProvProdClick(Sender: TObject);
    procedure itmRepBackFamClick(Sender: TObject);
    procedure itmArtBajaRotaClick(Sender: TObject);
    procedure itmEmpresasClick(Sender: TObject);
    procedure CargaEmpresas;
    procedure LeerRx;
    procedure ListControls(frm: TForm);
    procedure itmListClick(Sender: TObject);
    procedure itmKardexClick(Sender: TObject);
    procedure ChecarPeriodo;
    procedure itmFotosClick(Sender: TObject);
    procedure itmInfoCte2Click(Sender: TObject);
    procedure itmInfoCte1Click(Sender: TObject);
    procedure itmExpProveeClick(Sender: TObject);
    procedure itmImpProveeClick(Sender: TObject);
    procedure itmDevProvClick(Sender: TObject);
    procedure itmCarteraProvClick(Sender: TObject);
    procedure ComprasMP;
    procedure ComprasNuevo;
    procedure itmComprasMPClick(Sender: TObject);
    procedure itmComprasClick(Sender: TObject);
    procedure itmBOProvClick(Sender: TObject);
    procedure itmRentaAgenteClick(Sender: TObject);
    procedure itmPrecio9Click(Sender: TObject);
    procedure ConceptosDocs;
    procedure FacElecClick(Sender: TObject);
    procedure tbtClientesAtrasoClick(Sender: TObject);
    procedure itmMailerClick(Sender: TObject);
    procedure itmMapperClick(Sender: TObject);
    procedure itmCostosFacClick(Sender: TObject);
    procedure itmCapturaLPClick(Sender: TObject);
    procedure itmCostosARClick(Sender: TObject);
    procedure itmTablasComisClick(Sender: TObject);
    procedure itmRepComisClick(Sender: TObject);
    procedure itmCosteoEspClick(Sender: TObject);
    procedure tbtCambioClienteClick(Sender: TObject);
    procedure tbtCambioArtClick(Sender: TObject);
    procedure itmXRepVtaSucClick(Sender: TObject);
    procedure itmXRepRentabClick(Sender: TObject);
    procedure itmXRepVtaSuc2Click(Sender: TObject);
    procedure itmXRepInveClick(Sender: TObject);
    procedure itmRepVtaAvanceClick(Sender: TObject);
    procedure itmXRepAS2Click(Sender: TObject);
    procedure itmXCapPptoClick(Sender: TObject);
    procedure itmHistoriaClick(Sender: TObject);
    procedure VentanaAnterior1Click(Sender: TObject);
    procedure VentanaSiguiente1Click(Sender: TObject);
    procedure Remisiones1Click(Sender: TObject);
    procedure tbtDescargarClick(Sender: TObject);
    procedure itmDocVentasClick(Sender: TObject);
    procedure itmClientes2Click(Sender: TObject);
    procedure tbtProductos2Click(Sender: TObject);
    procedure itmMenuVerticalClick(Sender: TObject);
    procedure itmFacTxtClick(Sender: TObject);
    procedure itmNCTxtClick(Sender: TObject);
    procedure tbtXRepVtaFamClick(Sender: TObject);
    procedure itmCambialCapturaPLClick(Sender: TObject);
    procedure itmParametrosCxCClick(Sender: TObject);
    procedure itmAutorizaCxCClick(Sender: TObject);
    procedure itmDocCobrosClick(Sender: TObject);
    procedure itmCambioLimCreClick(Sender: TObject);
    procedure itmBloqueadosClick(Sender: TObject);
    procedure itmAnalisisDesctosClick(Sender: TObject);
    function ServerOnLine:boolean;
    procedure IdIcmpClient1Reply(ASender: TComponent;
      const AReplyStatus: TReplyStatus);
    procedure itmRefaccionesClick(Sender: TObject);
    procedure itmTomarFotosClick(Sender: TObject);
    procedure itmRecursosClick(Sender: TObject);
    procedure itmDeptosClick(Sender: TObject);
    procedure itmESClick(Sender: TObject);
    procedure itmRepExistenciasClick(Sender: TObject);
    procedure itmRepRequisicionesClick(Sender: TObject);
    procedure itmRepConsumosClick(Sender: TObject);
    procedure itmXRepUltimasVentasClick(Sender: TObject);
    procedure itmPolizasClick(Sender: TObject);
    procedure itmLayoutClick(Sender: TObject);
    procedure tbtDocCostosClick(Sender: TObject);
    procedure Costos;
    procedure AnalisisCostos;
    procedure tbtAnalisisClick(Sender: TObject);
    procedure tbtImportarClick(Sender: TObject);
    procedure Estatus_Pedidos;
    procedure Control_OS;
    procedure tbEstatusClick(Sender: TObject);
    procedure tbtUbicacionesClick(Sender: TObject);
    procedure tbtUbiProdClick(Sender: TObject);
    procedure itmControlTarimasClick(Sender: TObject);
    procedure tbtEstatus_PedidosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function NumToLetraMON(peCantidad:Extended):String;

var
  MainForm: TMainForm;
  mtTipoRep: String;
  mfWordOk:Boolean;
  Reporte:String;
  slACL:TStringList;
  mtACL:String;
  f : TSplash ;
  oApp:TApp;
  oEmp: TEmpresa;
  oUser:TUser;
  oIni:TIniFile;
  oParam:TParam;
  mtTipoFac:String;


implementation

uses DM_MBA, Acceso, Clientes, Proveedores, AcercaDe, Conversion, Productos,
  Doc_Cargos, Articulos, PrintTest, Doc_Abonos, Script, Respaldo,
  Reportes, InvFisico, Repo_Costos, Monedas, Empresas,
  Doc_Compras, Usuarios, Doc_Almacen, Almacenes, ACL, Etiquetas, Queries,
  SurtBack, Doc_Devo, Agentes, Tablas, Familias, Rep_SelDoc, Procesos,
  ConfigSys, SIE, EnvioFac, OCompra, dbExcel, TipoDocto, Conexion, UsersCon,
  Doc_Cotiza, HHelp, PendientesFam, Doc_Pagos, ArtRotacion, FormFisAct{2},
  FotosProd, Compras, PedimentosAct, ParametrosAct, ConceptosDocto, DownLoad,
  Doc_NotasCargo, NotaCargoImpre, Doc_Factura, Mailer, Mapper, CostosFac,
  CapturaLP, CostosProd, TablasComis,RepComis,CambioFam,CosteoEspecial,CambioArt,
  XRepVtaSuc,XRepRentab,XRepVtaSuc2,XRepInve,XRepVtaAvance,XRepAS2,XCapPpto,
  RepDocVentas, Clientes2, Productos2, CapFacturas,CapNC, XRepVtaFam,CambioCapturaPL,
  CambioCodigos,ParametrosCxC,XAutorizaCxC,RepDocCobros, CambioLimCre, RepBloqueados,
  XAnalisisDesctos, Refacciones, Recursos, Departamentos, Doc_AlmacenRIH, Fotos,
  RRepExistencias, RRepRequisiciones, RRepConsumos, XRepUltimasVentas,XRepPolizas,
  LayOutPolizas, Doc_Costos, AnalisisCostos, ImportarCFDI, Estatus_Pedidos, Ubicaciones,
  Ubicaciones_Producto, Ordenes_Surtido;

{$R *.DFM}


procedure TMainForm.FormCreate(Sender: TObject);
begin
  TBXSwitcher1.Theme := 'Office2003';
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
//    ShowMessage('Activar Timer');
    RxTimerList1.Active := True;
    RxTimerEvent1.Enabled := True;
end;
procedure TMainForm.RxTimerEvent1Timer(Sender: TObject);
begin
      SetUpMain;
      RxTimerList1.Active := False;
end;


procedure TMainForm.SetupMain;
var
   start,lRes : longint;
begin
//  ImageList1.GetBitmap(2,dfsStatusBar1.Panels[3].Glyph.BitMap);

//  mtACL := GetACLFile;

  oApp := TApp.Create;

  slACL := TStringList.Create;

  EsconderTodo;

  dfsStatusBar1.Panels[5].Caption := GetVersionNUmber(Application.ExeName);
  dfsStatusBar1.Refresh;

  if frmMsg = nil then
      frmMsg := TfrmMsgError.Create(Application);

  f.Top := f.Top - (frmAcceso.Height div 2);
  frmAcceso.Top := f.Top + f.Height;
  frmAcceso.Left := f.Left - ((frmAcceso.Width - f.Width) div 2);
  f.PutMessage ('Conectando a la base de datos...');

//Checar si el servidor esta online...
//  if  not ServerOnLine then close;

  DBConnect;

  CargaEmpresas;

  f.Close;

  if oApp.NeedUpdate then begin
    frmMsg.ClearAll;
    frmMsg.AddMsg ('Ya hay una version nueva del MBA (' + oApp.VersionNew + ') en el servidor.');
    frmMsg.AddMsg ('Se recomienda instalarla.');
    frmMsg.AddMsg ('En el archivo Historia.txt se detallan los cambios realizados en la nueva versión.');
    frmMsg.ShowModal;
  end;


//  if oUser.ShowBackOrder then
//    itmFamBackOrderClick(nil);


  CargaLogo;
  LeerRx;

  ChecarPeriodo;

  oParam:=TParam.Create;
  oParam.CODPAR := 'TIPOFAC';
  mtTipoFac := oParam.VALORTXT;
  mtTipoFac := Trim(mtTipoFac);
  if length(mtTipoFac) <= 0 then mtTipoFac := 'TEXTO';

// Objetoa del menu principal
  itmAutorizaCxC.Visible := (oUser.UID > 0);


end;

function TMainForm.ServerOnLine:boolean;
var
  i:Integer;
  tFileName,Server,Path,Protocol:String;
begin
    tFileName := oApp.IniFile;
    oIni := TIniFile.Create(tFileName);
    Server := oIni.ReadString ('Database','Server','Servidor');
    Path := oIni.ReadString ('Database','Path','MBA.gdb');
    Protocol := oIni.ReadString ('Database','Protocol','Local');
    Protocol := UpperCase(Protocol);

    if (Server = '') and (Protocol = 'LOCAL') then begin
      Result := True;
      exit;
    end;

//  IdIcmpClient1.OnReply := IdIcmpClient1Reply;
//  Result := True;
//  exit;
  try
    IdIcmpClient1.Host := Server; //'192.168.0.1';
    for i := 1 to 2 do
    begin
      IdIcmpClient1.Ping;
      Application.ProcessMessages;
    end;
  finally
  end;
  Result := true;
end;

procedure TMainForm.IdIcmpClient1Reply(ASender: TComponent;
  const AReplyStatus: TReplyStatus);
begin
 if IdIcmpClient1.Receive(5).BytesReceived = 0 then  //.ReplyStatus.BytesReceived = 0 then
    begin
      ShowMessage('!Mierda, está desconectado!');
    end else begin
      ShowMessage('Â¡Está conectado!');
    end;
end;

procedure TMainForm.ChecarPeriodo;
var iRes:Integer;
begin
  if (Date > oEmp.FechaFinPeriodo) then begin
    if (oUser.ISMASTER = 1) then begin

      frmMsg.ClearAll;
      frmMsg.Style := smUrgent;
      frmMsg.AddMsg('El MBA detectó un cambio del MES en la fecha.');
      frmMsg.AddMsg(' ');
      frmMsg.Style := smDefault;
      frmMsg.AddError (1,'Si ya se terminó el MES, se sugiere hacer el cierre mensual.',
                        'Se detectó un cambio de período en la fecha. Hay que hacer el cierre.',
                        'Deseas hacer el cierre de mes ahora?');
      iRes := frmMsg.ShowModal;

      if iRes = mrOk then begin
         Procesos('CIERREMES'); // Cierre del Mes
      end;
    end else begin
      frmMsg.ClearAll;
      frmMsg.Style := smUrgent;
      frmMsg.AddMsg('*****');
      frmMsg.AddMsg('Dile al supervisor que haga el cierre mensual !!');
      frmMsg.AddMsg('*****');
      frmMsg.Style := smDefault;
      frmMsg.AddMsg('No es conveniente que hagas ningún movimiento hasta que se realice el cierre mensual.');
      frmMsg.AddMsg('Si te urge hacer algún movimiento, le tienes que poner fecha del mes anterior.');
      frmMsg.ShowAsk := False;
      frmMsg.ShowCancel := False;
      iRes := frmMsg.ShowModal;

    end;
  end;
end;

procedure TMainForm.CargaLogo;
var tFile,tDir:String;
begin
    tDir := oIni.ReadString ('Directorios','Logo','C:\@SSM\@MBA\Ico\Logo.bmp'); //   ExtractFileDir(ParamStr(0));
    tFile := tDir;

    if FileExists(tFile) then begin
      rzBack.Image.LoadFromFile(tFile);
    end;

end;

procedure TMainForm.CargaEmpresas;
begin
  f.PutMessage ('Cargando Empresas...');
  oEmp := TEmpresa.Create;
  oEmp.FillLista;
//cargar la sucursal al objeto oEmp...
  oEmp.Sucursal := sm.ToI(oIni.ReadString ('General','Sucursal','1'));
  oEmp.CargaDatosSucursal;

  dfsStatusBar1.Panels[1].Caption := oEmp.RAZSOCIAL + ' ** ' + oEmp.NombreSuc + ' **';
  dfsStatusBar1.Hint := oEmp.RAZSOCIAL;
  dfsStatusBar1.ShowHint := True;
end;



procedure TMainForm.AplicarPerfil;
var
    i,j,iIndex,iPos:Integer;
    tNombreCtr,tNombreFrm,tEstado,tIndex :String;
    Ctrl:TControl;
    Cmp:TComponent;

begin
    for i:= 0 to slACL.Count -1 do begin
        tNombreFrm := sm.NthWord(2,slACL.Strings[i],[';']);
        tNombreCtr := sm.NthWord(3,slACL.Strings[i],[';']);
        iPos := Pos('(',tNombreCtr);
        if iPos > 0 then
          tNombreCtr := copy(tNombreCtr,1,iPos-1);
        tEstado := copy(oUser.Perfil,i+1,1);
        tIndex     := sm.Between('(',')',tNombreCtr);

        mobMenu.Visible := True;
//        mobVertical.lobFrecuentes.Items[0].Visible := False;

        if length(tIndex) > 0 then
          iIndex := sm.ToI(tIndex);
        if (MainForm.Name = tNombreFrm) then begin
            for j:= 0 to MainForm.ComponentCount - 1 do begin
                 Cmp := MainForm.Components[j];
                 if (Cmp.Name = tNombreCtr) then begin
                     if (Cmp is TControl)  then (Cmp as TControl).Visible := (tEstado = '1') or (oUser.ISMASTER = 1);
                     if (Cmp is TTBXItem)  then (Cmp as TTBXItem).Visible := (tEstado = '1') or (oUser.ISMASTER = 1);
                     if (Cmp is TTBXSubmenuItem)  then (Cmp as TTBXSubmenuItem).Visible := (tEstado = '1') or (oUser.ISMASTER = 1);
                     if (Cmp is TRzGroup)  then begin
                         (Cmp as TRzGroup).Visible := ((tEstado = '1') or (oUser.ISMASTER = 1))
//                         (Cmp as TRzGroup).Items[iIndex].Visible := ((tEstado = '1') or (oUser.ISMASTER = 1))
                     end;
                 end;
            end;
        end;
    end;

end;

procedure TMainForm.AplicarPerfil2(Form:TForm);
var
    i,j,iIndex:Integer;
    tNombreCtr,tNombreFrm,tEstado,tIndex :String;
    Ctrl:TControl;
    Cmp:TComponent;

begin
    for i:= 0 to slACL.Count -1 do begin
        tNombreFrm := sm.NthWord(2,slACL.Strings[i],[';']);
        tNombreCtr := sm.NthWord(3,slACL.Strings[i],[';']);
        tIndex     := sm.Between('(',')',tNombreCtr);
        if length(tIndex) > 0 then
          iIndex := sm.ToI(tIndex);

        tEstado := copy(oUser.Perfil,i+1,1);
        if (Form.Name = tNombreFrm) then begin
            for j:= 0 to Form.ComponentCount - 1 do begin
                 Cmp := Form.Components[j];
                 if (Cmp.Name = tNombreCtr) then begin
                     if (Cmp is TControl)  then
                        (Cmp as TControl).Visible := ((tEstado = '1') or (oUser.ISMASTER = 1));
                     if (Cmp is TWinControl)  then
                        (Cmp as TWinControl).Visible := ((tEstado = '1') or (oUser.ISMASTER = 1));
                     if (Cmp is TMenuItem)  then
                        (Cmp as TMenuItem).Visible := ((tEstado = '1') or (oUser.ISMASTER = 1));
                     if (Cmp is TRzGroup)  then
                        (Cmp as TRzGroup).Items[iIndex].Visible := ((tEstado = '1') or (oUser.ISMASTER = 1));
                     if (Cmp is TRzTabSheet)  then
                        (Cmp as TRzTabSheet).TabVisible := ((tEstado = '1') or (oUser.ISMASTER = 1));
                 end;
            end;
        end;
    end;

end;

procedure TMainForm.EsconderTodo;
begin
    mnuSistema.Visible := True;
    mnuVentas.Visible := False;
    mnuCxC.Visible := False;
    mnuCxP.Visible := False;
    mnuCompras.Visible := False;
    mnuInventarios.Visible := False;
    mnuCatalogos.Visible := False;
    mnuProcesos.Visible := False;
    mnuAlmacen.Visible := False;
    mnuUtilerias.Visible := False;
    Window1.Visible := false;
    mobMenu.Visible := False;

end;
procedure TMainForm.DBConnect;
var
   tFileName,
   Server,ServerAcSo,
   Path,PathAcSo,
   Protocol,ProtocolAcSo,
   UserName,
   Password,DBName:String;
   iErr,lRes:Integer;
   fOk:Boolean;
begin
// Setup Database

    tFileName := oApp.IniFile;
    oIni := TIniFile.Create(tFileName);
    Server := oIni.ReadString ('Database','Server','Servidor');
    Path := oIni.ReadString ('Database','Path','MBA.gdb');
    Protocol := oIni.ReadString ('Database','Protocol','Local');
    Protocol := UpperCase(Protocol);

    DBName := oIni.ReadString ('Database','DatabaseName','');

    UserName := oIni.ReadString ('Database','UserName','');
    Password := oIni.ReadString ('Database','Password','');

    if Uppercase(UserName) = 'FPOMPA' then Password := '631212';

//    DBDisconnect;

    if Protocol = 'LOCAL'   then   DM1.cnMBA.Protocol := cpLocal;
    if Protocol = 'TCP_IP'  then   DM1.cnMBA.Protocol := cpTCP_IP;
    if Protocol = 'NETBEUI' then   DM1.cnMBA.Protocol := cpNetBEUI;
    if Protocol = 'NOVELL'  then   DM1.cnMBA.Protocol := cpNovell;

    if Protocol <> 'LOCAL' then    DM1.cnMBA.Server := Server;

    try
        //DM1.cnMBA.LoginPrompt :=False;
        DM1.cnMBA.USERNAME := 'SYSDBA'; //Username;
        DM1.cnMBA.PASSWORD := 'masterkey'; //Password;
        DM1.cnMBA.Path :=Path;
        if length(DBName) > 0 then
            DM1.cnMBA.DatabaseName :=DBName;
        if (not DM1.cnMBA.Connected) then begin
            DM1.cnMBA.Connected := True;
        end;
//      dfsStatusBar1.Panels[2].Text := DM1.cnMBA.USERNAME; //Username;
    except
      frmmsg.AddMsg('El usuario SYSDBA no está registrado!!!');
      frmMsg.ShowModal;
      frmMsg.ClearAll;
      dfsStatusBar1.Panels[2].Caption := '';
      exit;
    end;

    frmAcceso.lblServer.caption := Server;
    frmAcceso.lblPro.caption := Protocol;
    frmAcceso.lblBD.caption := Path;
    frmAcceso.txtUser.Text := UserName;



  f.PutMessage ('Verificando Usuario y Password...');

    if length(Password) <= 0 Then begin
        frmAcceso.txtPassword.Text := '';
        lRes := frmAcceso.Showmodal;
    end else begin
        frmAcceso.txtPassword.Text := Password;
        lRes := mrOk;
    end;


  if lRes = mrOk then begin
    Username := Trim(frmAcceso.txtUser.Text);
    Username := UpperCase(Username);
    Password := Trim(frmAcceso.txtPassword.Text);
    Password := UpperCase(Password);
    fOk := VerificaUsuario(Username,Password);
    if fOk then begin
      oUser.CONECTADO := 1;
      AplicarPerfil;
    end else begin
      frmMsg.ShowModal;
      frmMsg.ClearAll;
    end;
 end else begin
      frmmsg.AddMsg('Acceso al sistema abortado !!!');
      frmMsg.ShowModal;
      frmMsg.ClearAll;
 end;

 dfsStatusBar1.Panels[3].Caption := Protocol + ' : ' + Server + ':' + Path;

end;

procedure TMainForm.VentanaAnterior1Click(Sender: TObject);
begin
  self.Previous;
end;

procedure TMainForm.VentanaSiguiente1Click(Sender: TObject);
begin
  Next;

end;

function TMainForm.VerificaUsuario(ptUsr,ptPass:String):Boolean;
begin
    frmmsg.ClearAll;
    oUser := TUser.Create;
    oUser.LOGIN := ptUsr;
    oUser.Retrieve;
    if oUser.Error = 1 then begin
      frmmsg.AddMsg('El usuario NO existe en la base de datos !!!');
      Result := False;
      exit;
    end;

    if oUser.PASSWD <> ptPass then begin
      frmmsg.AddMsg('El password es incorrecto !!!');
      Result := False;
      exit;
    end;

    dfsStatusBar1.Panels[2].Caption := ptUsr; //Username;

    Result := True;
end;

procedure TMainForm.DBDisconnect;
begin
  try
//    if (oIni <> nil)  then oIni.Free;
    if oUSer <> nil then oUser.Conectado := 0;
//    if oApp <> nil then oApp.Free;

    CerrarFormas;
    if  DM1.cnMBA.Connected then begin
        DM1.cnMBA.Connected := False;
        dfsStatusBar1.Panels[2].Caption := '';
        EsconderTodo;
    end;
  except

  end;

end;

procedure TMainForm.CerrarFormas;
var
    j:Integer;
begin
   for j := MainForm.MDIChildCount-1 downto 0 do begin
      MainForm.MDIChildren[j].Close;
   end;

end;


procedure TMainForm.CloseAll;
begin
// Close Database
  try
    slACL.Free;
    if DM1 <> nil then begin
        DM1.cnMBA.Disconnect;
//        DM1.FIBTR1.Active := False;
    end;
  except
  end;
end;
{--------------------------------------------------------------
Rutinas de conversion de numero a letras
--------------------------------------------------------------}
function NumToLetraMON(peCantidad:Extended):String;
var peInt,peDec:Extended;
    tRes,tDec :String;
    tLetra:String;
begin
  InWords.SelectLocale (CTRY_MEXICO,LANG_SPANISH);
  tLetra := InWords.Money (peCantidad,noEuro);
//      InWords.SelectLocale (CTRY_UNITED_STATES,LANG_ENGLISH);
//      tLetra := InWords.Money (xcrTotal.Value,noEuro);

  tLetra := upperCase(tLetra);
  tLetra := '**('+tLetra+')**';
  Result := tLetra;
{

    peInt := Int(peCantidad);
    peDec := Round((peCantidad - peInt) * 100);
    peDec := Int(peDec);
    MainForm.NumLet1.SetNumber := peInt;
    tRes := MainForm.NumLet1.Result;
    tDec := sm.StrFloat (peDec,'00');
    tRes := '('+tRes+' PESOS '+tDec+'/100 M.N.)';

    Result := tRes;
    }
end;

procedure TMainForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.COnfigurarImpresoras1Click(Sender: TObject);
begin
    PrinterSetUpDialog1.Execute;
end;

procedure TMainForm.ToolButton13Click(Sender: TObject);
begin
     Close;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    DBDisconnect;
    CloseAll;
  except

  end;
  FreeAndNil(oParam);

end;

procedure TMainForm.ToolButton9Click(Sender: TObject);
begin
    close;
end;

procedure TMainForm.ToolButton3Click(Sender: TObject);
begin
//    frmRep00 := TfrmRep00.create(Application);
//    frmRep00.show;

end;

procedure TMainForm.MiniWord1Click(Sender: TObject);
begin
//    frmWP.showmodal;
end;

procedure TMainForm.MiniExcel1Click(Sender: TObject);
begin
//    frmRepCon.Showmodal;
end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
    ShowMessage('Ultrasonido');
end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
    ShowMessage('Ensayo01');

end;

procedure TMainForm.ToolButton4Click(Sender: TObject);
begin
    close;
end;

procedure TMainForm.Button19Click(Sender: TObject);
begin
    Clientes;

end;

procedure TMainForm.Button20Click(Sender: TObject);
begin
    Proveedores;
end;

procedure TMainForm.ToolbarButton973Click(Sender: TObject);
begin
    close;
end;

procedure TMainForm.itmIniSesClick(Sender: TObject);
begin
    DBConnect;
end;

procedure TMainForm.itmCerSesClick(Sender: TObject);
begin
    DBDisconnect;
end;

procedure TMainForm.VS;
begin
end;
//*****************************************************************
// Rutinas de WORD
//*****************************************************************
procedure TMainForm.WindowTileItemClick(Sender: TObject);
begin

  TileMode := tbHorizontal;
  Tile;


end;

procedure TMainForm.WindowTileItem2Click(Sender: TObject);
begin

  TileMode := tbVertical;
  Tile;


end;

procedure TMainForm.itmAcercaDeClick(Sender: TObject);
begin
      AboutBox.ShowModal;

end;

procedure TMainForm.itmIniciarSesionClick(Sender: TObject);
begin
  DBConnect;
  CargaEmpresas;
  LeerRx;
end;

procedure TMainForm.itmCerrarSesionClick(Sender: TObject);
begin
   DBDisconnect;
end;


procedure TMainForm.itmConversionClick(Sender: TObject);
begin
    if frmConversion = Nil then
       frmConversion := TfrmConversion.create(Application);
    if frmConversion.WindowState = wsMinimized then
        frmConversion.WindowState := wsNormal
    else
        frmConversion.show;

end;

procedure TMainForm.Clientes2Click(Sender: TObject);
begin
    Clientes;
end;

procedure TMainForm.Clientes;
begin
    if frmClientes = Nil then
       frmClientes := TfrmClientes.create(Application);
    if frmClientes.WindowState = wsMinimized then
        frmClientes.WindowState := wsNormal
    else
        frmClientes.show;


end;

procedure TMainForm.Proveedores;
begin
    if frmProveedores = Nil then
       frmProveedores := TfrmProveedores.create(Application);
    if frmProveedores.WindowState = wsMinimized then
        frmProveedores.WindowState := wsNormal
    else
        frmProveedores.show;


end;

procedure TMainForm.Productos;
begin
    if frmProductos = Nil then
       frmProductos := TfrmProductos.create(Application);
    if frmProductos.WindowState = wsMinimized then
        frmProductos.WindowState := wsNormal
    else
        frmProductos.show;


end;

procedure TMainForm.Cotizaciones;
var
  itipo:Integer;
begin
  if frmDocsCotiza = Nil then
     frmDocsCotiza := TfrmDocsCotiza.create(Application);
       //Dependiendo de la sucursal es el tipo de pedido que uso: 23=Mty,232=Gdl,233=Mex
    iTipo := 30;
    case oEmp.Sucursal of
    1: iTipo:=30;
    2: iTipo:=302;
    3: iTipo:=303;
    else iTipo:=30;
    end;

    frmDocsCotiza.Tipo_Docto := iTipo;
    frmDocsCotiza.show;


end;

procedure TMainForm.Pedidos(ASucursal:Integer);
var
  iTipo:Integer;
  frmPedidos: TfrmDocsFac;
begin
//  if frmRemisiones = Nil then
     frmPedidos := TfrmDocsFac.create(Application);
       //Dependiendo de la sucursal es el tipo de pedido que uso: 23=Mty,232=Gdl,233=Mex
    iTipo := 23;
    case ASucursal of
    1: iTipo:=23;
    2: iTipo:=232;
    3: iTipo:=233;
    else iTipo:=23;
    end;

    frmPedidos.Tipo_Docto := iTipo;
    frmPedidos.show;

end;

procedure TMainForm.Remisiones(ASucursal:Integer);
var
  iTipo:Integer;
  frmRemisiones: TfrmDocsFac;
begin
//  if frmRemisiones = Nil then
     frmRemisiones := TfrmDocsFac.create(Application);
       //Dependiendo de la sucursal es el tipo de pedido que uso: 23=Mty,232=Gdl,233=Mex
    iTipo := 28;
    case ASucursal of
    1: iTipo:=28;
    2: iTipo:=282;
    3: iTipo:=283;
    else iTipo:=28;
    end;

    frmRemisiones.Tipo_Docto := iTipo;
    frmRemisiones.show;

end;

procedure TMainForm.FacElecClick(Sender: TObject);
begin
  Facturas(107);
{    if frmFacElectronica = Nil then
       frmFacElectronica := TfrmFacElectronica.create(Application);

    frmFacElectronica.show;
}
end;

procedure TMainForm.Facturas(ATipo:Integer);
var
  frmDocsFac: TfrmDocsFac;
begin

//  if frmDocsFac = Nil then
     frmDocsFac := TfrmDocsFac.create(Application);

  frmDocsFac.Tipo_Docto := ATipo; //Factura
  frmDocsFac.show;


end;

procedure TMainForm.Articulos;
begin
    if frmArticulos = Nil then
       frmArticulos := TfrmArticulos.create(Application);

    frmArticulos.show;
end;

procedure TMainForm.Proveedores2Click(Sender: TObject);
begin
    Proveedores;
end;

procedure TMainForm.Productos2Click(Sender: TObject);
begin
    Productos;
end;

procedure TMainForm.Facturas1Click(Sender: TObject);
begin
    Facturas(1); //Facturar como fac eletronica ya...
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
    Facturas(107);
end;


procedure TMainForm.Button2Click(Sender: TObject);
begin
    Pedidos(oEmp.Sucursal);
end;

procedure TMainForm.Pedidos1Click(Sender: TObject);
var
  iSucursal:Integer;
begin
  iSucursal := (Sender as TTBXItem).Tag;
  Pedidos(iSucursal);
end;

procedure TMainForm.itmArticulosClick(Sender: TObject);
begin
    Articulos;
end;

procedure TMainForm.itmASClick(Sender: TObject);
begin
    Reporte := 'AS';
    Reportes;

end;

procedure TMainForm.obtArtClick(Sender: TObject);
begin
    Articulos;
end;

procedure TMainForm.itmPruebasImpreClick(Sender: TObject);
begin
    if frmPrintTest = Nil then
       frmPrintTest := TfrmPrintTest.create(Application);

    frmPrintTest.show;

end;



procedure TMainForm.itmAbonoClientesClick(Sender: TObject);
begin
    if frmDocAbo = Nil then
       frmDocAbo := TfrmDocAbo.create(Application);

    frmDocAbo.show;

end;

//-------------------  REPORTES   -------------------------

procedure TMainForm.Remisiones1Click(Sender: TObject);
var
  iSucursal:Integer;
begin
  iSucursal := (Sender as TTBXItem).Tag;
  Remisiones(iSucursal);
end;

procedure TMainForm.Reportes;
begin
    if frmReportes = nil then
       frmReportes := TfrmReportes.create(Application);

    frmReportes.CodigoReporte := Reporte;
    frmReportes.Setup;
    frmReportes.show;
end;

procedure TMainForm.Procesos(ptProceso:String);
begin
    if frmProcesos = nil then
       frmProcesos := TfrmProcesos.create(Application);

    frmProcesos.CodigoProceso := ptProceso;
    frmProcesos.Setup;
    frmProcesos.show;
end;

procedure TMainForm.N1ReportedeVentas1Click(Sender: TObject);
begin
    Reporte := 'FACRANGO';
    Reportes;

end;


//----------- Utilerias  -----------------------------
procedure TMainForm.itmMailerClick(Sender: TObject);
begin
    if frmMailer = Nil then
       frmMailer := TfrmMailer.create(Application);

    frmMailer.show;

end;

procedure TMainForm.itmMapperClick(Sender: TObject);
begin
    if frmMapper = Nil then
       frmMapper := TfrmMapper.create(Application);

    frmMapper.show;

end;

procedure TMainForm.itmMenuVerticalClick(Sender: TObject);
begin
  mobMenu.Visible := not mobMenu.Visible; 
  
end;

procedure TMainForm.itmMiniexcelClick(Sender: TObject);
begin
    if frmMiniExcel = Nil then
       frmMiniExcel := TfrmMiniExcel.create(Application);

    frmMiniExcel.show;

end;

procedure TMainForm.itmSaldosClick(Sender: TObject);
begin
    Reporte := 'SALDOS';
    Reportes;

end;

procedure TMainForm.itmScriptsClick(Sender: TObject);
begin
    if frmScript = Nil then
       frmScript := TfrmScript.create(Application);

    frmScript.show;


end;

procedure TMainForm.itmRespaldosClick(Sender: TObject);
begin
    if frmRespaldo = Nil then
       frmRespaldo := TfrmRespaldo.create(Application);

    frmRespaldo.show;
end;

procedure TMainForm.itmOCClick(Sender: TObject);
begin
    OC;
end;

procedure TMainForm.OC;
begin
    if frmOCompra = Nil then
       frmOCompra := TfrmOCompra.create(Application);

    frmOCompra.Tipo_Docto := 63; //Orden de Compra
    frmOCompra.show;

end;

procedure TMainForm.SetWait(TypeWait:Byte;Msg:String);
begin
    if TypeWait = 0 then begin
 //       dfsStatusBar1.Panels[1].PanelType := sptEllipsisText;
        dfsStatusBar1.Panels[1].Caption := '';
    end;
    if TypeWait = 1 then begin
{        dfsStatusBar1.Panels[1].PanelType := sptGauge;
        dfsStatusBar1.Panels[1].GaugeAttrs.Style := gsIndeterminate2;
}
        dfsStatusBar1.Panels[1].Caption := Msg;
        dfsStatusBar1.Panels[1].Enabled := True;
    end;
end;

procedure TMainForm.SetText(Msg:String);
begin
//    dfsStatusBar1.Panels[1].PanelType := sptEllipsisText;
//    dfsStatusBar1.Panels[1].Text := Msg;
end;

procedure TMainForm.CapturaInventariosFsico1Click(Sender: TObject);
begin
    if frmInvFisico = Nil then
       frmInvFisico := TfrmInvFisico.create(Application);

    frmInvFisico.show;

end;

procedure TMainForm.N4EstadodeCuenta1Click(Sender: TObject);
begin
    Reporte := 'EDOCTA';
    Reportes;
end;
procedure TMainForm.itmEdoCtaDetClick(Sender: TObject);
begin
    Reporte := 'EDOCTADET';
    Reportes;

end;


procedure TMainForm.OutlookButton12Click(Sender: TObject);
begin
    Reporte := 'EDOCTA';
    Reportes;
end;

procedure TMainForm.ValuaInveClick(Sender: TObject);
begin
    Reporte := 'VALUAINVE';
    Reportes;

end;
procedure TMainForm.itmInvActualClick(Sender: TObject);
begin
    Reporte := 'INVACTUAL';
    Reportes;

end;


procedure TMainForm.itmReportesCostosClick(Sender: TObject);
begin
    if frmRep_Costos = Nil then
       frmRep_Costos := TfrmRep_Costos.create(Application);

    frmRep_Costos.show;


end;

procedure TMainForm.itmRepRequisicionesClick(Sender: TObject);
begin
   if frmRRepRequisiciones = Nil then
       frmRRepRequisiciones := TfrmRRepRequisiciones.create(Application);

    frmRRepRequisiciones.show;

end;

procedure TMainForm.itmRepSaldosCtesClick(Sender: TObject);
begin
    Reporte := 'SALDOSCLIENTES';
    Reportes;

end;

procedure TMainForm.obtRepClick(Sender: TObject);
begin
    itmReportesCostosClick(Sender);
end;

procedure TMainForm.itmMonedasClick(Sender: TObject);
begin
    if frmMonedas = Nil then
       frmMonedas := TfrmMonedas.create(Application);

    frmMonedas.show;

end;

procedure TMainForm.Compras;
begin
    if frmDocs_Compras = Nil then
       frmDocs_Compras := TfrmDocs_Compras.create(Application);


    frmDocs_Compras.Tipo_Docto := 31; //Factura. Compras a Proveedores
    frmDocs_Compras.show;


end;

procedure TMainForm.ComprasMP;
begin
    if frmDocs_Compras = Nil then
       frmDocs_Compras := TfrmDocs_Compras.create(Application);


    frmDocs_Compras.Tipo_Docto := 32; //Factura. Compras a Proveedores de MP. No afectar Inventario.
    frmDocs_Compras.show;
    

end;

procedure TMainForm.ComprasNuevo;
begin
    if frmCompras = Nil then
       frmCompras := TfrmCompras.create(Application);


    frmCompras.Tipo_Docto := 31; //Factura. Compras a Proveedores.
    frmCompras.show;


end;

procedure TMainForm.ConceptosdeInventario1Click(Sender: TObject);
begin
  ConceptosDocs;
end;

procedure TMainForm.Almacen;
begin
    if frmDocs_Almacen = Nil then
       frmDocs_Almacen := TfrmDocs_Almacen.create(Application);


    frmDocs_Almacen.Tipo_Docto := 81; //Movimientos de Inventarios
    frmDocs_Almacen.show;


end;

procedure TMainForm.Usuarios;
begin
    if frmUsuarios = Nil then
       frmUsuarios := TfrmUsuarios.create(Application);

    frmUsuarios.show;


end;

procedure TMainForm.TipoDocs;
begin
    if frmTipoDoc = Nil then
       frmTipoDoc := TfrmTipoDoc.create(Application);

    frmTipoDoc.show;


end;

procedure TMainForm.ConceptosDocs;
begin
    if frmConceptosDoc = Nil then
       frmConceptosDoc := TfrmConceptosDoc.create(Application);

    frmConceptosDoc.show;


end;

procedure TMainForm.FacturasProveedores1Click(Sender: TObject);
begin
    Compras;
end;

procedure TMainForm.itmActUsuariosClick(Sender: TObject);
begin
    Usuarios;
end;
procedure TMainForm.itmTipoDocClick(Sender: TObject);
begin
    TipoDocs;
end;


procedure TMainForm.itmTomarFotosClick(Sender: TObject);
begin
    if frmTomarFotos = Nil then
       frmTomarFotos := TfrmTomarFotos.create(Application);
    frmTomarFotos.FileName := oIni.ReadString('Directorios','FotosArticulos','C:\@SSM\@Mba\FotosArticulos\')+'CLAVE01.BMP';
    frmTomarFotos.showmodal;
//    FreeandNil(frmTomarFotos);
end;

procedure TMainForm.itmMovsAlmacClick(Sender: TObject);
begin
    Almacen;
end;

procedure TMainForm.itmNCTxtClick(Sender: TObject);
begin
    if frmCapNC = Nil then
       frmCapNC := TfrmCapNC.create(Application);
    if frmCapNC.WindowState = wsMinimized then
        frmCapNC.WindowState := wsNormal
    else
        frmCapNC.show;

end;

procedure TMainForm.itmDiarioVentasClick(Sender: TObject);
begin
    Reporte := 'DIAVTA';
    Reportes;

end;
procedure TMainForm.itmVentasAgenteClick(Sender: TObject);
begin
    Reporte := 'VTAAGENTE';
    Reportes;

end;

procedure TMainForm.itmCarAgenteClick(Sender: TObject);
begin
    Reporte := 'CARAGENTE';
    Reportes;

end;

procedure TMainForm.itmCobAgenteClick(Sender: TObject);
begin
    Reporte := 'COBAGENTE';
    Reportes;

end;

procedure TMainForm.itmVtasFamiliaClick(Sender: TObject);
begin
    Reporte := 'VTAFAMILIA';
    Reportes;

end;
procedure TMainForm.itmXCapPptoClick(Sender: TObject);
begin
   if frmXCapPpto = Nil then
       frmXCapPpto := TfrmXCapPpto.create(Application);

    frmXCapPpto.show;

end;

procedure TMainForm.itmXRepAS2Click(Sender: TObject);
begin
   if frmXRepAS2 = Nil then
       frmXRepAS2 := TfrmXRepAS2.create(Application);

    frmXRepAS2.show;

end;

procedure TMainForm.itmXRepInveClick(Sender: TObject);
begin
   if frmXRepInve = Nil then
       frmXRepInve := TfrmXRepInve.create(Application);

    frmXRepInve.show;

end;

procedure TMainForm.itmXRepRentabClick(Sender: TObject);
begin
   if frmXRepRentab = Nil then
       frmXRepRentab := TfrmXRepRentab.create(Application);

    frmXRepRentab.show;

end;

procedure TMainForm.itmXRepUltimasVentasClick(Sender: TObject);
begin
   if frmXRepUltimasVentas = Nil then
       frmXRepUltimasVentas := TfrmXRepUltimasVentas.create(Application);

    frmXRepUltimasVentas.show;

end;

procedure TMainForm.itmXRepVtaSuc2Click(Sender: TObject);
begin
   if frmXRepVtaSuc2 = Nil then
       frmXRepVtaSuc2 := TfrmXRepVtaSuc2.create(Application);

    frmXRepVtaSuc2.show;

end;

procedure TMainForm.itmXRepVtaSucClick(Sender: TObject);
begin
   if frmXRepVtaSuc = Nil then
       frmXRepVtaSuc := TfrmXRepVtaSuc.create(Application);

    frmXRepVtaSuc.show;

end;

procedure TMainForm.itmBackOrderProClick(Sender: TObject);
begin
    Reporte := 'BACKORDERPRO';
    Reportes;

end;
procedure TMainForm.itmCobranzaTipoClick(Sender: TObject);
begin
    Reporte := 'COBRANZATIPO';
    Reportes;

end;





procedure TMainForm.itmAlmacenesClick(Sender: TObject);
begin
    if frmAlmacenes = Nil then
       frmAlmacenes := TfrmAlmacenes.create(Application);


    frmAlmacenes.show;

end;

procedure TMainForm.itmAnalisisDesctosClick(Sender: TObject);
begin
   if frmAnalisisDesctos = Nil then
       frmAnalisisDesctos := TfrmAnalisisDesctos.create(Application);

    frmAnalisisDesctos.show;

end;

procedure TMainForm.itmLayoutClick(Sender: TObject);
begin
   if frmLayoutPolizas = Nil then
       frmLayoutPolizas := TfrmLayoutPolizas.create(Application);

    frmLayoutPolizas.show;

end;

procedure TMainForm.itmListaAccesosClick(Sender: TObject);
begin
    if frmACL = Nil then
       frmACL := TfrmACL.create(Application);


    frmACL.show;

end;

procedure TMainForm.itmEtiquetasClick(Sender: TObject);
begin
    if frmEtiquetas = Nil then
       frmEtiquetas := TfrmEtiquetas.create(Application);


    frmEtiquetas.show;


end;

procedure TMainForm.itmEnvioFacClick(Sender: TObject);
begin
    if frmEnvioFac = Nil then
       frmEnvioFac := TfrmEnvioFac.create(Application);


    frmEnvioFac.show;

end;


procedure TMainForm.itmESClick(Sender: TObject);
begin
    if frmDocs_AlmacenRIH = Nil then
       frmDocs_AlmacenRIH := TfrmDocs_AlmacenRIH.create(Application);


    frmDocs_AlmacenRIH.show;

end;

procedure TMainForm.itmQueryClick(Sender: TObject);
begin
    if frmQueries = Nil then
       frmQueries := TfrmQueries.create(Application);


    frmQueries.show;

end;

procedure TMainForm.itmSyBClick(Sender: TObject);
begin
    if frmSYB = Nil then
       frmSYB := TfrmSYB.create(Application);


    frmSYB.show;

end;

procedure TMainForm.itmDevoProdClick(Sender: TObject);
begin
    if frmDocs_Devo = Nil then
       frmDocs_Devo := TfrmDocs_Devo.create(Application);

    frmDocs_Devo.Tipo_Docto := 71; //Devoluciones sobre ventas
    frmDocs_Devo.show;


end;

procedure TMainForm.obtDevoProdClick(Sender: TObject);
begin
    itmDevoProdClick(Sender);
end;

procedure TMainForm.obtProductosClick(Sender: TObject);
begin
    Productos;
end;

procedure TMainForm.itmAgentesClick(Sender: TObject);
begin
    if frmAgentes = Nil then
       frmAgentes := TfrmAgentes.create(Application);

    frmAgentes.show;

end;

procedure TMainForm.itmTablasClick(Sender: TObject);
begin
    if frmTablas = Nil then
       frmTablas := TfrmTablas.create(Application);

    frmTablas.show;

end;

procedure TMainForm.itmTablasComisClick(Sender: TObject);
begin
    if frmTablasComis = Nil then
       frmTablasComis := TfrmTablasComis.create(Application);

    frmTablasComis.show;

end;

procedure TMainForm.Familias1Click(Sender: TObject);
begin
    if frmFamilias = Nil then
       frmFamilias := TfrmFamilias.create(Application);

    frmFamilias.show;

end;

procedure TMainForm.itmSelDocClick(Sender: TObject);
begin
    if frmRepSelDoc = Nil then
       frmRepSelDoc := TfrmRepSelDoc.create(Application);

    frmRepSelDoc.show;

end;

procedure TMainForm.itmCancelarBackClick(Sender: TObject);
begin

    Procesos('BACKORDER'); //Cancelar BackOrder antiguo

end;

procedure TMainForm.itmCapturaLPClick(Sender: TObject);
begin
    if frmCapturaLP = Nil then
       frmCapturaLP := TfrmCapturaLP.create(Application);

    frmCapturaLP.show;

end;

procedure TMainForm.itmProCteSinVtaClick(Sender: TObject);
begin
    Procesos('CTESINVTA'); // Clientes SIN Venta
end;


procedure TMainForm.itmCierreMesClick(Sender: TObject);
begin
    Procesos('CIERREMES'); // Cierre del Mes

end;
procedure TMainForm.itmClientes2Click(Sender: TObject);
begin
    frmClientes2 := TfrmClientes2.create(Application);
    frmClientes2.show;

end;

procedure TMainForm.itmDeptosClick(Sender: TObject);
begin
    frmDepartamentos := TfrmDepartamentos.create(Application);
    frmDepartamentos.show;

end;

procedure TMainForm.itmDesctosClick(Sender: TObject);
begin
    Procesos('DESCTOS'); // Descuentos

end;


procedure TMainForm.itmConfiguracionClick(Sender: TObject);
begin
    frmConfigSys := TfrmConfigSys.create(Application);
    frmConfigSys.show;

end;

procedure TMainForm.itmEmpresasClick(Sender: TObject);
begin
    frmEmpresas := TfrmEmpresas.create(Application);
    frmEmpresas.show;

end;


procedure TMainForm.SIE(Pagina:Integer);
begin
    PagSIE := Pagina;
    if frmSIE = Nil then
       frmSIE := TfrmSIE.create(Application);

    frmSIE.show;

end;
procedure TMainForm.tbEstatusClick(Sender: TObject);
begin
  Control_OS;
end;

procedure TMainForm.tbtAnalisisClick(Sender: TObject);
begin
  AnalisisCostos;
end;

procedure TMainForm.tbtCambioArtClick(Sender: TObject);
begin
    if frmCambioArt = Nil then
       frmCambioArt := TfrmCambioArt.create(Application);

    frmCambioArt.show;

end;

procedure TMainForm.tbtCambioClienteClick(Sender: TObject);
begin
{    if frmCambioCliente = Nil then
       frmCambioCliente := TfrmCambioCliente.create(Application);

    frmCambioCliente.show;
}
end;

procedure TMainForm.tbtClientesAtrasoClick(Sender: TObject);
begin
    Reporte := 'CLIENTESATRASO';
    Reportes;

end;

procedure TMainForm.tbtComprasBackClick(Sender: TObject);
begin
    Reporte := 'COMPRASBACK';
    Reportes;

end;

procedure TMainForm.tbtCostosClick(Sender: TObject);
begin
  Procesos('CAMBIOCOSTOS');

end;

procedure TMainForm.tbtDescargarClick(Sender: TObject);
begin
  if frmDownLoad = Nil then
       frmDownLoad := TfrmDownLoad.create(Application);

    frmDownLoad.show;

end;

procedure TMainForm.tbtDocCostosClick(Sender: TObject);
begin
  Costos;
end;

procedure TMainForm.tbtEstatus_PedidosClick(Sender: TObject);
begin
  Estatus_Pedidos;
end;

procedure TMainForm.Costos;
begin
    if frmDoc_Costos = Nil then
       frmDoc_Costos := TfrmDoc_Costos.create(Application);

//    frmDoc_Costos.Tipo_Docto := 63; //Orden de Compra
    frmDoc_Costos.show;

end;

procedure TMainForm.AnalisisCostos;
begin
    if frmAnalisisCostos = Nil then
       frmAnalisisCostos := TfrmAnalisisCostos.create(Application);

//    frmDoc_Costos.Tipo_Docto := 63; //Orden de Compra
    frmAnalisisCostos.show;

end;

procedure TMainForm.tbtImportarClick(Sender: TObject);
begin
    if frmImportarCFDI = Nil then
       frmImportarCFDI := TfrmImportarCFDI.create(Application);

    frmImportarCFDI.show;


end;

procedure TMainForm.tbtImpreNotaCargoClick(Sender: TObject);
begin
    if frmNotaCargoImpre = Nil then
       frmNotaCargoImpre := TfrmNotaCargoImpre.create(Application);

    frmNotaCargoImpre.show;

end;

procedure TMainForm.tbtNotasCargoClick(Sender: TObject);
begin
    if frmDocNotasCargo = Nil then
       frmDocNotasCargo := TfrmDocNotasCargo.create(Application);

    frmDocNotasCargo.show;


end;

procedure TMainForm.tbtParamClick(Sender: TObject);
begin
    if frmParametrosAct = Nil then
       frmParametrosAct := TfrmParametrosAct.create(Application);

    frmParametrosAct.show;


end;

procedure TMainForm.tbtProductos2Click(Sender: TObject);
begin
    frmProductos2 := TfrmProductos2.create(Application);
    frmProductos2.show;


end;

procedure TMainForm.tbtSaldosNCgClick(Sender: TObject);
begin
  Procesos('SALDONCG');

end;

procedure TMainForm.tbtUbicacionesClick(Sender: TObject);
begin
    if frmUbicaciones = Nil then
       frmUbicaciones := TfrmUbicaciones.create(Application);

    frmUbicaciones.ShowModal;

end;

procedure TMainForm.tbtUbiProdClick(Sender: TObject);
begin
    if frmUbicaciones_Producto = Nil then
       frmUbicaciones_Producto := TfrmUbicaciones_Producto.create(Application);

    frmUbicaciones_Producto.Show;

end;

procedure TMainForm.tbtXRepVtaFamClick(Sender: TObject);
begin
   if frmXRepVtaFam = Nil then
       frmXRepVtaFam := TfrmXRepVtaFam.create(Application);

    frmXRepVtaFam.show;


end;

procedure TMainForm.obtVentasClick(Sender: TObject);
begin
    SIE(0);
end;

procedure TMainForm.obtCxCClick(Sender: TObject);
begin
    SIE(1);

end;

procedure TMainForm.obtComprasClick(Sender: TObject);
begin
    SIE(2);

end;

procedure TMainForm.obtCxPClick(Sender: TObject);
begin
    SIE(3);

end;

procedure TMainForm.obtInveClick(Sender: TObject);
begin
    SIE(4);

end;

procedure TMainForm.itmValuacionExisClick(Sender: TObject);
begin
    Reporte := 'VALUAEXIS';
    Reportes;

end;
procedure TMainForm.itmEstadExisClick(Sender: TObject);
begin
    Reporte := 'ESTADEXIS';
    Reportes;

end;


procedure TMainForm.itmRepTipoDocClick(Sender: TObject);
begin
    Reporte := 'TIPODOC';
    Reportes;

end;

procedure TMainForm.itmRepVtaAvanceClick(Sender: TObject);
begin
   if frmXRepVtaAvance = Nil then
       frmXRepVtaAvance := TfrmXRepVtaAvance.create(Application);

    frmXRepVtaAvance.show;


end;

procedure TMainForm.itmDirClienteClick(Sender: TObject);
begin
    Reporte := 'DIRCTE';
    Reportes;

end;

procedure TMainForm.itmCatClienteClick(Sender: TObject);
begin
    Reporte := 'CATCTE';
    Reportes;

end;

procedure TMainForm.itmVtaCteClick(Sender: TObject);
begin
    Reporte := 'VTACTE';
    Reportes;

end;

procedure TMainForm.itmVtaCteProdClick(Sender: TObject);
begin
    Reporte := 'VTACTEPROD';
    Reportes;

end;

procedure TMainForm.iitmCatProvClick(Sender: TObject);
begin
    Reporte := 'CATPROV';
    Reportes;


end;

procedure TMainForm.itmDiaComprasClick(Sender: TObject);
begin
    Reporte := 'DIACOMPRA';
    Reportes;

end;

procedure TMainForm.itmComprasProvClick(Sender: TObject);
begin
    Reporte := 'COMPRAPROV';
    Reportes;

end;

procedure TMainForm.itmConseOCClick(Sender: TObject);
begin
    Reporte := 'RELOC';
    Reportes;

end;

procedure TMainForm.itmControlTarimasClick(Sender: TObject);
begin
{    frmControlTarimas := TfrmControlTarimas.create(Application);
    frmControlTarimas.show;
}
end;

procedure TMainForm.itmExisPrecioClick(Sender: TObject);
begin
    Reporte := 'EXISPRECIO';
    Reportes;

end;

procedure TMainForm.itmBackOrderInveClick(Sender: TObject);
begin
    Reporte := 'BACKORDERINVE';
    Reportes;

end;

procedure TMainForm.itmAutorizaCxCClick(Sender: TObject);
begin
   if frmAutorizaCxC = Nil then
       frmAutorizaCxC := TfrmAutorizaCxC.create(Application);

    frmAutorizaCxC.show;

end;

procedure TMainForm.itmAuxMovCteClick(Sender: TObject);
begin
    Reporte := 'AUXMOVCTE';
    Reportes;

end;

procedure TMainForm.itmCteSinVtaClick(Sender: TObject);
begin
    Reporte := 'CTESINVTA';
    Reportes;

end;
procedure TMainForm.itmCompCteClick(Sender: TObject);
begin
    Reporte := 'COMPCTE';
    Reportes;

end;
procedure TMainForm.itmCompAnualCteClick(Sender: TObject);
begin
    Reporte := 'COMPANUALCTE';
    Reportes;

end;

procedure TMainForm.itmEstadCteProdClick(Sender: TObject);
begin
    Reporte := 'ESTADCTEPROD';
    Reportes;

end;


procedure TMainForm.itmCompAgteClick(Sender: TObject);
begin
    Reporte := 'COMPAGTE';
    Reportes;

end;
procedure TMainForm.itmCompAnualAgteClick(Sender: TObject);
begin
    Reporte := 'COMPANUALAGTE';
    Reportes;

end;

procedure TMainForm.itmCompAnualProdClick(Sender: TObject);
begin
    Reporte := 'COMPANUALPROD';
    Reportes;

end;




procedure TMainForm.obtSelDocDblClick(Sender: TObject);
begin
    itmSelDocClick(nil);
end;

procedure TMainForm.obtOCDblClick(Sender: TObject);
begin
    OC;

end;

procedure TMainForm.obtFac2Click(Sender: TObject);
begin
    Facturas(1);
end;

procedure TMainForm.obtPed2Click(Sender: TObject);
begin

    Pedidos(oEmp.Sucursal);
end;

procedure TMainForm.obtDev2Click(Sender: TObject);
begin
    itmDevoProdClick(Sender);
end;

procedure TMainForm.obtEti2Click(Sender: TObject);
begin
    itmEtiquetasClick(nil);
end;

procedure TMainForm.obtDiaVtaClick(Sender: TObject);
begin
    itmDiarioVentasClick(Sender);
end;

procedure TMainForm.obtBackorderClick(Sender: TObject);
begin
    itmBackOrderProClick(Sender);
end;

procedure TMainForm.obtSelDoc2Click(Sender: TObject);
begin
    itmSelDocClick(Sender);
end;

procedure TMainForm.OutlookButton10Click(Sender: TObject);
begin
    itmCobAgenteClick(Sender);
end;

procedure TMainForm.OutlookButton11Click(Sender: TObject);
begin
    itmCarAgenteClick(Sender);
end;


procedure TMainForm.itmConexionClick(Sender: TObject);
begin
    if frmConexion = Nil then
       frmConexion := TfrmConexion.create(Application);

    frmConexion.showmodal;


end;

procedure TMainForm.dfsStatusBar1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if (x >= 414) and (x<=500) then begin  // Panel del tipo de conexión
     dfsStatusBar1.Hint := dfsStatusBar1.Panels[3].Caption;
     dfsStatusBar1.ShowHint := True;
 end;

end;

procedure TMainForm.UsuariosConectados1Click(Sender: TObject);
begin
    if frmUsersCon = Nil then
       frmUsersCon := TfrmUsersCon.create(Application);

    frmUsersCon.showmodal;

end;

procedure TMainForm.itmCotizaClick(Sender: TObject);
begin
    Cotizaciones;
end;

procedure TMainForm.itmAjusteClick(Sender: TObject);
begin
    Procesos('AJUSTES'); // Clientes SIN Venta

end;

procedure TMainForm.ContenidoClick(Sender: TObject);
begin
    ShowHelp('MBA');
end;
procedure TMainForm.itmCambioCodProdClick(Sender: TObject);
begin
//    Procesos('CAMBIOCODPROD');
    if frmCambioCodigos = Nil then
       frmCambioCodigos := TfrmCambioCodigos.create(Application);

    frmCambioCodigos.show;

end;

procedure TMainForm.itmCambioLimCreClick(Sender: TObject);
begin
    if frmCambioLimCre = Nil then
       frmCambioLimCre := TfrmCambioLimCre.create(Application);

    frmCambioLimCre.show;

end;

procedure TMainForm.itmCambialCapturaPLClick(Sender: TObject);
begin
    if frmCambioCapturaPL = Nil then
       frmCambioCapturaPL := TfrmCambioCapturaPL.create(Application);

    frmCambioCapturaPL.show;

end;

procedure TMainForm.itmCambioCodFamClick(Sender: TObject);
begin
//    Procesos('CAMBIOCODFAM');
    if frmCambioFam = Nil then
       frmCambioFam := TfrmCambioFam.create(Application);

    frmCambioFam.show;


end;

procedure TMainForm.itmCambioProdFamClick(Sender: TObject);
begin
    Procesos('CAMBIOPRODFAM');

end;

procedure TMainForm.itmExpProdClick(Sender: TObject);
begin
    Procesos('EXPPROD');
end;

procedure TMainForm.itmImpProdClick(Sender: TObject);
begin
    Procesos('IMPPROD');

end;


procedure TMainForm.olbPendClick(Sender: TObject);
begin
  itmFamBackOrderClick(nil);
end;

procedure TMainForm.itmFacTxtClick(Sender: TObject);
begin
    if frmCapfacturas = Nil then
       frmCapfacturas := TfrmCapfacturas.create(Application);
    if frmCapfacturas.WindowState = wsMinimized then
        frmCapfacturas.WindowState := wsNormal
    else
        frmCapfacturas.show;


end;

procedure TMainForm.itmFamBackOrderClick(Sender: TObject);
begin
    if frmPendientesFam = Nil then
       frmPendientesFam := TfrmPendientesFam.create(Application);

    frmPendientesFam.showmodal;


end;


procedure TMainForm.itmProCierreInveClick(Sender: TObject);
begin
    Procesos('CIERREINVE');

end;

procedure TMainForm.itmFisicoActualClick(Sender: TObject);
begin
//  Procesos('FISICOACTUAL');
{    if frmFisAct2 = Nil then
       frmFisAct2 := TfrmFisAct2.create(Application);
}
    if frmFisAct = Nil then
       frmFisAct := TfrmFisAct.create(Application);

end;

procedure TMainForm.rzgCobranzaItems0Click(Sender: TObject);
begin
  itmAbonoClientesClick(nil);
end;

procedure TMainForm.rzgCobranzaItems1Click(Sender: TObject);
begin
  itmSelDocClick(nil);
end;

procedure TMainForm.rzgCobranzaItems2Click(Sender: TObject);
begin
  itmCarAgenteClick(nil);
end;

procedure TMainForm.rzgCobranzaItems3Click(Sender: TObject);
begin
  itmCobranzaTipoClick(nil);
end;

procedure TMainForm.rzgCobranzaItems4Click(Sender: TObject);
begin
  itmEdoCtaDetClick(nil);
end;

procedure TMainForm.rzgCostosItems0Click(Sender: TObject);
begin
  Articulos;
end;

procedure TMainForm.rzgCostosItems1Click(Sender: TObject);
begin
  itmReportesCostosClick(nil);
end;

procedure TMainForm.rzgCostosItems2Click(Sender: TObject);
begin
  OC;
end;

procedure TMainForm.rzgCostosItems3Click(Sender: TObject);
begin
  itmFamBackOrderClick(nil);
end;

procedure TMainForm.rzgFrecuentesItems0Click(Sender: TObject);
begin
  Cotizaciones;
end;


procedure TMainForm.rzgFrecuentesItems1Click(Sender: TObject);
begin
  Pedidos(oEmp.sucursal);
end;

procedure TMainForm.rzgFrecuentesItems2Click(Sender: TObject);
begin
  Facturas(107);
end;

procedure TMainForm.rzgFrecuentesItems3Click(Sender: TObject);
begin
  itmDevoProdClick(nil);
end;

procedure TMainForm.rzgFrecuentesItems4Click(Sender: TObject);
begin
  Productos;
end;

procedure TMainForm.rzgFrecuentesItems5Click(Sender: TObject);
begin
  itmAbonoClientesClick(nil);
end;

procedure TMainForm.rzgFrecuentesItems6Click(Sender: TObject);
begin
  Remisiones(oEmp.Sucursal);
end;

procedure TMainForm.rzgSIEItems0Click(Sender: TObject);
var
  iIndex:Integer;
begin
  iIndex := (Sender as TRzGroupItem).Tag;
  SIE(iIndex);
end;

procedure TMainForm.rzgSIEItems5Click(Sender: TObject);
begin
// Pruebas Ajustes
// Proceso para borrar los documentos de ajustes de inventarios
//
  Procesos('BORRARAJUSTES');

end;

procedure TMainForm.rzgVentasItems0Click(Sender: TObject);
begin
  Facturas(107);
end;

procedure TMainForm.rzgVentasItems1Click(Sender: TObject);
begin
  Pedidos(oEmp.Sucursal);
end;

procedure TMainForm.rzgVentasItems2Click(Sender: TObject);
begin
  itmDevoProdClick(nil);
end;

procedure TMainForm.rzgVentasItems3Click(Sender: TObject);
begin
  itmEtiquetasClick(nil);
end;

procedure TMainForm.rzgVentasItems4Click(Sender: TObject);
begin
  itmDiarioVentasClick(nil);
end;

procedure TMainForm.rzgVentasItems5Click(Sender: TObject);
begin
  itmSyBClick(nil);
end;

procedure TMainForm.rzgRxClick(Sender: TObject);
var tFile:WideString;
    tPath:String;

begin
    if frmMiniExcel = Nil then
       frmMiniExcel := TfrmMiniExcel.create(Application);

  tPath := oIni.ReadString ('Directorios','Formatos','C:\@MBA\Fmt\'); //   ExtractFileDir(ParamStr(0));
  tFile := (Sender as TRzGroupItem).Caption;
  tFile := sm.Strip(tFile);
  tFile := tPath + 'RX_' + tFile + '.XLS';

  frmMiniExcel.filename := tFile;
  frmMiniExcel.show;
end;


procedure TMainForm.itmCosteoEspClick(Sender: TObject);
begin
    if frmCosteoEsp = Nil then
       frmCosteoEsp := TfrmCosteoEsp.create(Application);

    frmCosteoEsp.show;

end;

procedure TMainForm.itmCostosARClick(Sender: TObject);
begin
    if frmCostosProd = Nil then
       frmCostosProd := TfrmCostosProd.create(Application);

    frmCostosProd.show;

end;

procedure TMainForm.itmCostosClick(Sender: TObject);
begin
    Articulos;
end;

procedure TMainForm.itmCostosFacClick(Sender: TObject);
begin
    if frmCostosFac = Nil then
       frmCostosFac := TfrmCostosFac.create(Application);

    frmCostosFac.show;

end;

procedure TMainForm.PagosaProveedores1Click(Sender: TObject);
begin
  Pagos;
end;

procedure TMainForm.Pagos;
begin
    if frmDocPagos = Nil then
       frmDocPagos := TfrmDocPagos.create(Application);

    frmDocPagos.show;

end;

procedure TMainForm.itmCatProvClick(Sender: TObject);
begin
    Reporte := 'CATPROV';
    Reportes;
end;

procedure TMainForm.itmEdoCtaDetPClick(Sender: TObject);
begin
    Reporte := 'EDOCTADETP';
    Reportes;

end;

procedure TMainForm.itmEdoCtaPClick(Sender: TObject);
begin
    Reporte := 'EDOCTAP';
    Reportes;

end;

procedure TMainForm.itmDirProvClick(Sender: TObject);
begin
    Reporte := 'DIRPROV';
    Reportes;

end;

procedure TMainForm.itmDocCobrosClick(Sender: TObject);
begin
   if frmRepDocCobros = Nil then
       frmRepDocCobros := TfrmRepDocCobros.create(Application);

    frmRepDocCobros.show;


end;

procedure TMainForm.itmDocVentasClick(Sender: TObject);
begin
   if frmRepDocVentas = Nil then
       frmRepDocVentas := TfrmRepDocVentas.create(Application);

    frmRepDocVentas.show;

end;

procedure TMainForm.itmECFamProdClick(Sender: TObject);
begin
    Reporte := 'ESTADPROVPROD';
    Reportes;

end;

procedure TMainForm.itmBajaRotaClick(Sender: TObject);
begin
   if frmArtRotacion = Nil then
       frmArtRotacion := TfrmArtRotacion.create(Application);

    frmArtRotacion.show;

end;

procedure TMainForm.itmBloqueadosClick(Sender: TObject);
begin
   if frmRepBloqueados = Nil then
       frmRepBloqueados := TfrmRepBloqueados.create(Application);

    frmRepBloqueados.show;


end;

procedure TMainForm.itmMovAlmacClick(Sender: TObject);
begin
  MovAlmac;
end;

procedure TMainForm.itmKardexClick(Sender: TObject);
begin
  Reporte := 'KARDEX';
  Reportes;
end;


procedure TMainForm.MovAlmac;
begin
    Reporte := 'MOVALMAC';
    Reportes;
end;

procedure TMainForm.itmProvProdClick(Sender: TObject);
begin
    Reporte := 'PROVPROD';
    Reportes;

end;

procedure TMainForm.itmRepBackFamClick(Sender: TObject);
begin
    Reporte := 'BACKFAM';
    Reportes;

end;

procedure TMainForm.itmRepComisClick(Sender: TObject);
begin
    if frmRepComis = Nil then
       frmRepComis := TfrmRepComis.create(Application);

    frmRepComis.show;

end;

procedure TMainForm.itmRepConsumosClick(Sender: TObject);
begin
   if frmRRepConsumos = Nil then
       frmRRepConsumos := TfrmRRepConsumos.create(Application);

    frmRRepConsumos.show;

end;

procedure TMainForm.itmRepExistenciasClick(Sender: TObject);
begin
   if frmRRepExistencias = Nil then
       frmRRepExistencias := TfrmRRepExistencias.create(Application);

    frmRRepExistencias.show;


end;

procedure TMainForm.itmArtBajaRotaClick(Sender: TObject);
begin
    Reporte := 'ARTBAJAROTA';
    Reportes;

end;

procedure TMainForm.LeerRx;
var iCount1:Integer;
    olst:TRzGroupBar;
    itm:TRzGroupItem;
    sr: TSearchRec;
    FileAttrs: Integer;
    tPath,tName:String;
begin
//
//  iCount1 := mobVertical.OutlookItems.Count;
//  olst := mobVertical.OutlookItems[iCount1 - 1];
//  itm := TfcOutLookListItem.Create(mobVerticalRx.Items);
  tPath := oIni.ReadString ('Directorios','Formatos','C:\@MBA\Fmt\'); //   ExtractFileDir(ParamStr(0));
  tPath := tPath + 'Rx*.xls';
  FileAttrs := FileAttrs + faArchive;
  rzgReportesRx.Items.Clear;
  if FindFirst(tPath, FileAttrs, sr) = 0 then begin
    while FindNext(sr) = 0 do begin
      itm := rzgReportesRx.Items.Add;
      itm.ImageIndex := 135;
      tName := sr.Name;
      tName := copy(tName,4,length(tName) - 7);
      tName := sm.Pad(tName,20);
      itm.Caption := tName;
      itm.Hint := tName;
      itm.OnClick := rzgRxClick;
//      itm.Separation := 1;
    end;
  end;
  FindClose(sr);

end;

procedure TMainForm.ListControls(frm: TForm);
var i,j,iCount:Integer;
    t,tComp,tPath,tClassName:String;
    sl:TStringList;
    oCtrl,oSub:TComponent;
begin
    tPath := oINi.ReadString ('Directorios','Documentos','c:\@MBA\Doc\'); //   ExtractFileDir(ParamStr(0));
    tPath := tPath + frm.Name + '.TXT';
    sl := TStringList.create;
    sl.Clear;
    sl.add('Componentes de la Forma: ' + frm.Name);
    sl.add('Nombre del componente, Class, Index, Tag');
    sl.add('========================================');
    for i:= 0 to frm.ComponentCount  - 1  do begin
            t := '';
            oCtrl := frm.Components[i];
            t := t + sm.Pad(frm.Components[i].Name,25) + ' | ';
            tClassName := sm.Pad(frm.Components[i].ClassName,15);
            t := t + tClassName + ' | ';
            t := t + 'Index= ' + sm.StrFloat (i,'##0') + ' | ';
            sl.Add (t);
            if UpperCase(Trim(tClassName)) = 'TRZGROUP' then begin
              iCount := (oCtrl as TRzGroup).Items.Count;
              for j:= 0 to iCount - 1 do begin
                tComp := frm.Components[i].Name + '.' + sm.Pad((oCtrl as TRzGroup).Items[j].Caption,23);
                sl.Add (tComp);
              end;
            end;
    end;
//    sl.Sort;
    sl.SaveToFile (tPath);
    sl.Free;
end;


procedure TMainForm.itmListClick(Sender: TObject);
begin
  if MainForm.MDIChildCount > 0 then
    ListControls(MainForm.ActiveMDIChild)
  else
    ListControls(MainForm)

end;

procedure TMainForm.itmFotosClick(Sender: TObject);
begin
    if frmFotos = Nil then
       frmFotos := TfrmFotos.create(Application);

    frmFotos.show;

end;

procedure TMainForm.itmHistoriaClick(Sender: TObject);
begin
    ShowHelp('CAMBIOSMBA');

end;

procedure TMainForm.itmInfoCte2Click(Sender: TObject);
begin
    Reporte := 'COMPCTE2';
    Reportes;

end;

procedure TMainForm.itmInfoCte1Click(Sender: TObject);
begin
    Reporte := 'DIRCTE2';
    Reportes;

end;

procedure TMainForm.itmExpProveeClick(Sender: TObject);
begin
    Procesos('EXPPROVEE');
end;

procedure TMainForm.itmImpProveeClick(Sender: TObject);
begin
    Procesos('IMPPROVEE');

end;

procedure TMainForm.itmDevProvClick(Sender: TObject);
begin
    if frmDocs_Devo = Nil then
       frmDocs_Devo := TfrmDocs_Devo.create(Application);

    frmDocs_Devo.Tipo_Docto := 73; //Devoluciones sobre Compras
    frmDocs_Devo.show;

end;

procedure TMainForm.itmCarteraProvClick(Sender: TObject);
begin
    Reporte := 'CARTERAPROV';
    Reportes;
end;

procedure TMainForm.itmComprasMPClick(Sender: TObject);
begin
  ComprasMP;
end;

procedure TMainForm.itmComprasClick(Sender: TObject);
begin
  ComprasNuevo;
end;

procedure TMainForm.itmBOProvClick(Sender: TObject);
begin
    Reporte := 'BACKORDERCO';
    Reportes;

end;

procedure TMainForm.itmRecursosClick(Sender: TObject);
begin
    frmRecursos := TfrmRecursos.create(Application);
    frmRecursos.show;

end;

procedure TMainForm.itmRefaccionesClick(Sender: TObject);
begin
    frmRefacciones := TfrmRefacciones.create(Application);
    frmRefacciones.show;

end;

procedure TMainForm.itmRentaAgenteClick(Sender: TObject);
begin
    Reporte := 'RENTABAGENTE';
    Reportes;

end;

procedure TMainForm.itmParametrosCxCClick(Sender: TObject);
begin
    if frmParametrosCxC = Nil then
       frmParametrosCxC := TfrmParametrosCxC.create(Application);

    frmParametrosCxC.show;


end;

procedure TMainForm.itmPedimentoAjusteClick(Sender: TObject);
begin
    if frmPedimentosAct = Nil then
       frmPedimentosAct := TfrmPedimentosAct.create(Application);


    frmPedimentosAct.show;


end;

procedure TMainForm.itmPolizasClick(Sender: TObject);
begin
   if frmXRepPolizas = Nil then
       frmXRepPolizas := TfrmXRepPolizas.create(Application);

    frmXRepPolizas.show;

end;

procedure TMainForm.itmPrecio9Click(Sender: TObject);
begin
  Procesos('PRECIO9');

end;

procedure TMainForm.Estatus_Pedidos;
begin
    if frmEstat_Pedidos = Nil then
       frmEstat_Pedidos := TfrmEstat_Pedidos.create(Application);

//    frmDoc_Costos.Tipo_Docto := 63; //Orden de Compra
    frmEstat_Pedidos.show;

end;

procedure TMainForm.Control_OS;
begin
    if frmOrdenes_Surtido = Nil then
       frmOrdenes_Surtido := TfrmOrdenes_Surtido.create(Application);

//    frmDoc_Costos.Tipo_Docto := 63; //Orden de Compra
    frmOrdenes_Surtido.show;

end;

end.
