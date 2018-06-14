 unit Doc_Costos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, {Grids, RXGrids,} ToolWin, Menus, ImgList, StdCtrls, {Mask,}
  RxToolEdit, ExtCtrls, RXSplit, TBXStatusBars, ActnList, DBCtrls, Db,
  DBGrids, DBTables, RxPlacemnt, StrMan, IniFiles,
  IB_UpdateBar, IB_NavigationBar, IB_Controls, IB_Components, IB_Grid,
  IB_TransactionBar, Buttons, RXCtrls, Grids, Mask, ESBDates,
  AxCtrls, OleCtrls, VCIF1Lib_TLB, TB2Dock, TB2Toolbar, TB2ExtItems, TBXExtItems, TBX,
  IB_StoredProc, RAWPrinter, LibApp, StringLib, NumWords,
  ClsParam,
  ClsCostos,
  ClsProveedor,
  ClsProducto,
  ClsFamilia,
  ClsAgente,
  ClsTablas,
  ClsMoneda, RXSpin, ProductoSearch, FamiliaSearch, TB2Item, rxCurrEdit, RzTabs,
  RzBtnEdt, RzEdit, RzCmboBx, RzCommon, RzLabel, RzButton;

//Indicar el estado del Docto al estar editandolo
type TDocState = (edInsert, edBrowse, edCancel);
type
  TfrmDoc_Costos = class(TForm)
    ImageList1: TImageList;
    Dock971: TTBXDock;
    Raw1: TRAWPrinter;
    tlbMain: TTBXToolbar;
    ToolbarSep972: TTBXSeparatorItem;
    tbtGrabar: TTBXItem;
    tbtCreate: TTBXItem;
    ToolbarSep977: TTBXSeparatorItem;
    Timer1: TTimer;
    tbtCancelar: TTBXItem;
    Timer2: TTimer;
    icuRep: TIB_Cursor;
    FormStorage1: TFormStorage;
    pgcMain: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    pnlFecha: TPanel;
    pnlTotales: TPanel;
    RxLabel3: TRxLabel;
    xcrTotal: TCurrencyEdit;
    xceFolio: TRzEdit;
    RzLabel1: TRzLabel;
    RzFrameController1: TRzFrameController;
    xdeFecha: TRzDateTimeEdit;
    RzLabel2: TRzLabel;
    xlbCancelado: TRzLabel;
    pgcDatos: TRzPageControl;
    TabSheet3: TRzTabSheet;
    TabSheet4: TRzTabSheet;
    F1: TF1Book;
    cboMoneda: TRzComboBox;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    cbzTipo: TRzComboBox;
    RzLabel5: TRzLabel;
    edzDescri: TRzEdit;
    RzLabel6: TRzLabel;
    enzTipoCambio: TRzNumericEdit;
    RzLabel7: TRzLabel;
    edzRazSocial: TRzButtonEdit;
    RzLabel8: TRzLabel;
    edzAduana: TRzEdit;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    enzSubTotal: TRzNumericEdit;
    edzGastosFlete: TRzNumericEdit;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    edzGastosAduana: TRzNumericEdit;
    RzLabel13: TRzLabel;
    edzDTA: TRzNumericEdit;
    RzLabel14: TRzLabel;
    edzOtros: TRzNumericEdit;
    RzLabel15: TRzLabel;
    edzIGI: TRzNumericEdit;
    RzLabel16: TRzLabel;
    enzPIGI: TRzNumericEdit;
    btnCalcular: TRzBitBtn;
    edzCodigo: TRzButtonEdit;
    edzAgente: TRzEdit;
    RzPageControl2: TRzPageControl;
    TabSheet5: TRzTabSheet;
    TabSheet6: TRzTabSheet;
    RzLabel17: TRzLabel;
    zfeFechaIni: TRzDateTimeEdit;
    RzLabel18: TRzLabel;
    zfeFechaFin: TRzDateTimeEdit;
    btnListar: TRzBitBtn;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBXItem1: TTBXItem;
    TBXItem2: TTBXItem;
    TBXItem3: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    tbtSalir: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXItem4: TTBXItem;
    F11: TF1Book;
    procedure cboMonedaExit(Sender: TObject);
    procedure xceIVAExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Select(ptTabla:String;piOpcion: Integer;ptKey:String);
    procedure SetUp;
    procedure SetUpF1;
    procedure SelectDocsF1(ATipo_Docto:String);
    procedure SelectCliente(piOpcion: Integer;ptKey:String);
    procedure SelectProducto(piOpcion: Integer;ptKey:String);
    procedure edzCodigoButtonClick(Sender: TObject);
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
    procedure VaciarPedidoF1;
    procedure GetProducto(ptCod:String);
    procedure tbtSalirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure xceFolio1ButtonClick(Sender: TObject);
    procedure xceFolio1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure F1EndEdit(Sender: TObject; var EditString: WideString;
      var Cancel: Smallint);
    procedure Timer1Timer(Sender: TObject);
    procedure UpdateControls;
    procedure F1StartEdit(Sender: TObject; var EditString: WideString;
      var Cancel: Smallint);
    function GetNextRow:Integer;
    procedure MoverCursor(Key: Word;piTimes:Integer);
    procedure Timer2Timer(Sender: TObject);
    procedure F1Enter(Sender: TObject);
    procedure BuscaProveedor;
    procedure ListarProductos;
    function VerificaFactura:Boolean;
    procedure LoadXLS;
    procedure HideEmptyRows;
    procedure rbtPersonalClick(Sender: TObject);
    procedure xdeFecEntregaAcceptDate(Sender: TObject;
      var ADate: TDateTime; var Action: Boolean);
    procedure ShowEmptyRows;
    procedure rbtTelefonicaClick(Sender: TObject);
    procedure EsconderColumnas(piColIni,piColFin:Integer);
    procedure BorrarOC;
    procedure cboMonedaClick(Sender: TObject);
    procedure GetTipoCambio;
    procedure tbtGabarXLSClick(Sender: TObject);
    procedure axnGrabar;
    procedure PonFormulaIVA;
    procedure PonerFormulas;
    procedure RzBitBtn2Click(Sender: TObject);
    procedure CalculaPIGI;
    procedure btnCalcularClick(Sender: TObject);
    procedure CalculaTotales;
    procedure enzSubTotalClick(Sender: TObject);
    procedure enzSubTotalExit(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
    procedure TBXItem2Click(Sender: TObject);
    procedure TBXItem3Click(Sender: TObject);
    procedure ListarDocumentos;
    procedure btnListarClick(Sender: TObject);
    procedure F11DblClick(ASender: TObject; nRow, nCol: Integer);
    procedure pgcMainChange(Sender: TObject);
    procedure tbtCancelarClick(Sender: TObject);
    procedure Eliminar;
    procedure LimpiarListaDocs;
  private
    { Private declarations }
    FTipo_Docto:Integer;
  public
    { Public declarations }
    property Tipo_Docto:Integer read FTipo_Docto write FTipo_Docto;
  end;
type
  TIdCol11 = record
    Id:Integer;
    Folio:Integer;
    Fecha:Integer;
    Descri:Integer;
    Prov:Integer;
    SubTotal:Integer;
end;

const
    TABLA_CD  : String = '7';
    TABLA_EDO : String = '4';
    TABLA_AGE : String = '12';
    TABLA_TRA : String = '10';

var
  frmDoc_Costos: TfrmDoc_Costos;
  mrRes:Integer;
  TipoTabla:String;
  miRow:Integer;
  miLista:Integer;
  miType:SmallInt;
  edEstado:TDocState;
  oProv:TProveedor;
  oDoc:TCostos_Doc;
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
  IdCol: TIdCol;
  icF11: TIdCol11;
//  Tipo_Docto:Integer;

implementation

uses Main, DM_MBA, MsgError, SelCodDes, SelDoc, SelTabla, VerImagen,
  BackOrder, Saldos, SelDocF2;

{$R *.DFM}

const sdFIXEDROWS: Integer = 6;
const sdROWINI: Integer = 7;
const sdROWINI_OC: Integer = 1;
const sdMAXROW_OC: Integer = 200;
const sdTOTCOLS: Integer = 11;

procedure TfrmDoc_Costos.FormCreate(Sender: TObject);
var tFile:String;
begin
//
    tFile := GetIniFile;
    oProv := TProveedor.Create;
    oDoc    := TCostos_Doc.Create;
    oProd   := TProducto.Create;
    oFam    := TFamilia.Create;
    oAge    := TAgente.Create;
    oTabla  := TTabla.Create;
    oMon    := TMoneda.Create;
    mtPath := oIni.ReadString ('Directorios','Graficos','c:\@Mba\Ico\');

    ColSet := [3,4,7,8,10,11]; //Columnas que no se pueden capturar

    oDoc.Prepare;

  IdCol.Codigo := 1;
  IdCol.Cantidad := 2;
  IdCol.Umedida := 3;
  IdCol.Descripcion := 4;
  IdCol.CostoU := 5;
  IdCol.PIGI := 6;
  IdCol.CostoI := 7;
  IdCol.CostoT := 8;
  IdCol.IdDetOri := 10;
  IdCol.CodFamilia := 11;

  icF11.Folio := 2;
  icF11.Fecha := 3;
  icF11.Descri:= 4;
  icF11.Prov  := 5;
  icF11.SubTotal := 6;
  icF11.Id := 10;

end;

procedure TfrmDoc_Costos.TBXItem1Click(Sender: TObject);
begin
    SelectDocsF1('31');
end;

procedure TfrmDoc_Costos.TBXItem2Click(Sender: TObject);
begin
    SelectDocsF1('63');
end;

procedure TfrmDoc_Costos.TBXItem3Click(Sender: TObject);
begin
    SelectDocsF1('81');
end;

procedure TfrmDoc_Costos.Timer1Timer(Sender: TObject);
begin

    Timer1.Enabled := False;
    SetUp;

    SetUpF1;

end;


procedure TfrmDoc_Costos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    oProv.Free;
    oDoc.Free;
    oProd.Free;
    oFam.Free;
    oAge.Free;
    oTabla.Free;
    oMon.Free;
    frmDoc_Costos := nil;
    Action := caFree;
end;

procedure TfrmDoc_Costos.SalirExecute(Sender: TObject);
begin
    close;
end;

procedure TfrmDoc_Costos.FormShow(Sender: TObject);
begin
      Top :=0;
      Left :=0;

end;

procedure TfrmDoc_Costos.SetUp;
var i:Integer;
begin

    oParam.CODPAR := 'IVA';
    mdIVA := oParam.VALORNUM;
    PonformulaIVA;
    i := IdCol.CostoU;
    //xceIVA.Value := mdIVA;

    oParam.CODPAR := 'LUGAREXP';
    mtLugarExp := oParam.VALORTXT;

{    pgcCliente.ActivePageIndex := 0;
    if Tipo_Docto = 63 then begin
        xlbNombreDocto.Caption := '** Orden de Compra **';
        xlbNombreDocto.Color   := clInfoBk;
    end;
}

    oMon.FillMoneda2 (cboMoneda.Items);
    oMon.Fecha := xdeFecha.Date;
    oMon.MONEDA := Trim(sm.NthWord (1,cboMoneda.Text));
    oDoc.MONEDA_DOC := oMon.MONEDA;

    GetTipoCambio;

    Crear;

    xdeFecha.Date := Date;
    zfeFechaIni.Date := Date - 30;
    zfeFechaFin.Date := Date;


{    dteFechaIni.date := Date - 30;
    dteFechaFin.date := Date;
}
end;

procedure TfrmDoc_Costos.SetUpF1;
var i:Integer;
begin

    LoadXls;
//Encabezados de Columnas
    F1.ColText[IdCol.Codigo] := 'Codigo';
    F1.ColText[IdCol.Cantidad] := 'Cantidad';
    F1.ColText[IdCol.Umedida] := 'U.Medida';
    F1.ColText[IdCol.Descripcion] := 'Descripcion';
    F1.ColText[IdCol.CostoU] := 'Costo U.';
    F1.ColText[IdCol.PIGI] := '% Incre G.I.';
    F1.ColText[IdCol.CostoI] := 'Costo I.';
    F1.ColText[IdCol.CostoT] := 'Costo Total';
    F1.ColText[IdCol.CostoT+1] := '';
    F1.ColText[IdCol.IdDetOri] := 'Id Det. Origen';
    F1.ColText[IdCol.CodFamilia] := 'CodFamilia';

//Esconder columnas no utilizadas en la O.C.
    for i:= IdCol.IdDetOri to IdCol.CodFamilia do
        F1.ColHidden[i] := True;

//Establecer Ancho de columnas
    F1.SetColWidth (IdCol.Codigo,IdCol.Umedida,3000,False);
    F1.SetColWidth (IdCol.Descripcion,IdCol.Descripcion,10000,False);
    F1.SetColWidth (IdCol.CostoU,IdCol.CostoT,3000,False);
    F1.SetColWidth (IdCol.IdDetOri,IdCol.CodFamilia,5000,False);
{
    for i := 8 to 25 do begin
        F1.ColHidden[i] := True;
    end;
}
//Configurar F1
    F1.Sheet := 1;
    F1.TopRow := 1;
    F1.LeftCol := 1;
    F1.Selection := 'A1';
    F1.AllowDelete := False;
    F1.ShowEditBar :=True;
    F1.ShowZeroValues := False;
    F1.EnterMovesDown := False;


    F11.ColText[icF11.Folio]    := 'Folio';
    F11.ColText[icF11.Fecha]    := 'Fecha';
    F11.ColText[icF11.Descri]   := 'Descripcion Documento';
    F11.ColText[icF11.Prov]     := 'Nombre Proveedor';
    F11.ColText[icF11.SubTotal] := 'SubTotal';
    F11.ColText[icF11.Id] := 'IdCosto_Doc';
//Establecer Ancho de columnas
    F11.SetColWidth (1,1,100,False);
    F11.SetColWidth (icF11.Folio,icF11.SubTotal,3000,False);
    F11.SetColWidth (icF11.Descri,icF11.Prov,12000,False);

    F11.SetSelection(1,icF11.Fecha,F11.MaxRow,icF11.Fecha);
    F11.NumberFormat := 'dd/mmm/yyyy';
    F11.Selection := 'A1';

end;

procedure TfrmDoc_Costos.LoadXLS;
var tFile,tDir:String;
    Enca:TStringList;
    i:Integer;
begin
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'FMT_COSTOS.xls';
    tFile := tDir+tFile;
    F1.Read (tFile,miType);

    F1.Sheet := 2;
    Enca := oEmp.DatosEnca;
    for i:= 0 to 4 do begin
      F1.TextRC[i+2,2] := Enca.Strings [i];
    end;

    F1.Sheet := 1;

    F1.MaxRow := 512;
    F1.MaxCol := 40;

    PonerFormulas;

{
    tFile := 'FMT_LISTA1.xls';
    tFile := tDir+tFile;
    F1LP.Read (tFile,miType);
    F1LP.FixedRows := 6;
    F1LP.PrintTitles := 'A1:IV6';
    F1LP.Sheet := 1;
    F1LP.TextRC[2,2] := oEmp.RAZSOCIAL;
}
end;
procedure TfrmDoc_Costos.EsconderColumnas(piColIni,piColFin:Integer);
var iCol:Integer;
begin
{    for iCol := piColIni to piColFin do begin
        F1LP.ColHidden[iCol] := True;
    end;}
end;

{---------------------------------------------------------------
Eventos de la barra herramientas
---------------------------------------------------------------}
procedure TfrmDoc_Costos.tbtCancelarClick(Sender: TObject);
begin
  Eliminar;
end;

procedure TfrmDoc_Costos.tbtCreateClick(Sender: TObject);
begin
    Crear;
end;

procedure TfrmDoc_Costos.tbtGrabarClick(Sender: TObject);
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
    ListarDocumentos;
    UpdateControls;

end;

procedure TfrmDoc_Costos.tbtImprimirClick(Sender: TObject);
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
{    if pgcListados.ActivePageIndex = 0 then begin //Orden de Compra
        F1.Sheet := 2;
        HideEmptyRows;
        F1.TextSRC[2,5,17] := edtMoneda.Text;
        F1.FilePrint(False)
    end else begin
        F1LP.FilePrint(False)
    end;
}
end;

procedure TfrmDoc_Costos.tbtSelPedidosClick(Sender: TObject);
begin
//
//    SelectDocs;
end;
procedure TfrmDoc_Costos.tbtSalirClick(Sender: TObject);
begin
    Close;
end;




{---------------------------------------------------------------
Acciones Basicas del Modulo
---------------------------------------------------------------}
procedure TfrmDoc_Costos.UpdateControls;
begin
    exit;
    tbtGrabar.Enabled := (edEstado = edInsert);
//    pgcCliente.Enabled := (edEstado = edInsert);
    pnlTotales.Enabled := (edEstado = edInsert);
end;

procedure TfrmDoc_Costos.Crear;
begin

    UpdateControls;

    Limpiar;

//    SetUpF1; // 11/Dic/2003

//    cboMoneda.ItemIndex := 0;
//    xcrTipoCambio.Value := 1;
//    edtMoneda.Text := sm.NthWord (2,cboMoneda.Text,['|']);


    oDoc.MONEDA_DOC := Trim(sm.NthWord (1,cboMoneda.Text,['|']));
//    if oDoc.MONEDADOCT <> '1' then mdIVA := 0;

    xdeFecha.Date := Date;
    oDoc.GetNextFolio;
    xceFolio.Text := sm.StrFloat(oDoc.FOLIONUM,'#');

    f1.NumberSRC [2,3,16] := StrToInt(Trim(xceFolio.Text));

    xlbCancelado.visible := False;

    edEstado := edInsert;


end;

procedure TfrmDoc_Costos.Grabar;
begin


    F1.Sheet := 1;

    oDoc.Error := 0;

    if edEstado = edInsert then begin
      oDoc.IDCOSTO_DOC := -1;
    end;
    if (edEstado = edBrowse) then begin
      oDoc.FOLIO       := xceFolio.Text;
    end;

    oDoc.TIPO_DOC := Trim(sm.NthWord (1,cbzTipo.Text));
    oDoc.MONEDA_DOC  := Trim(sm.NthWord (1,cboMoneda.Text));
    oDoc.DESCRIPCION := edzDescri.Text;
    oDoc.FECHA       := xdeFecha.Date;
    oDoc.ADUANA      := edzAduana.Text;
    oDoc.AGENTE      := edzAgente.Text;
    oDoc.PROVEEDORES := edzCodigo.Text + ' ' + edzRazSocial.Text;
    oDoc.SUBTOTAL    := enzSubTotal.Value;
    oDoc.FLETES      := edzGastosFlete.Value;
    oDoc.GASTOS      := edzGastosAduana.Value;
    oDoc.PGI         := enzPIGI.Value;
    oDoc.DTA         := edzDTA.Value;
    oDoc.IGI         := edzIGI.Value;
    oDoc.OTROS       := edzOtros.Value;
    oDoc.TIPO_CAMBIO := enzTipoCambio.Value;

    oDoc.USERACT     := oUser.LOGIN;
    oDoc.FECHAACT    := Date+Time;

    oDoc.Detalle := F1;

    if edEstado = edInsert then begin
      oDoc.Insert;
    end;
    if (edEstado = edBrowse) then begin
      oDoc.Update;
    end;

    if oDoc.Error > 0 then begin
        ShowMessage('Faltan Capturar Datos!!');
        exit;
    end;

    edEstado := edBrowse;

    UpdateControls;

end;

procedure TfrmDoc_Costos.Leer;
var
    tTD,tMon:String;
    id,ix:Integer;
    vId:Variant;
begin

    pgcMain.ActivePageIndex := 1;

    LimpiarDetalle;

    vId := F11.NumberSRC[1,F11.Row,icF11.Id];
    id := vId;
    oDoc.IDCOSTO_DOC := id;

    oDoc.Detalle := F1;

    oDoc.Retrieve;
    if oDoc.Error > 0 then begin
      ShowMessage('Documento NO encontrado');
      exit;
    end;

    tMon := Trim(oDoc.MONEDA_DOC);

    xceFolio.Text := oDoc.FOLIO;
    xdeFecha.Date := oDoc.FECHA;
    ix := TStringsSeek(cboMoneda.Items,oDoc.MONEDA_DOC);
    if ix >= 0 then begin
      cboMoneda.ItemIndex := ix;
    end;
    enzTipoCambio.value := oDoc.TIPO_CAMBIO;
    edzCodigo.Text := sm.NthWord (1,oDoc.PROVEEDORES,[' ']);
    edzRazSocial.Text := sm.Copy(oDoc.PROVEEDORES,length(edzCodigo.Text)+1);
    edzDescri.Text := oDoc.DESCRIPCION;
    ix := TStringsSeek(cbzTipo.Items,oDoc.TIPO_DOC);
    cbzTipo.ItemIndex := ix;
    edzAduana.Text := oDoc.ADUANA;
    enzSubTotal.Value := oDoc.SUBTOTAL;
    edzGastosAduana.Value := oDoc.GASTOS;
    edzIGI.Value := oDoc.IGI;
    enzTipoCambio.Value := oDoc.TIPO_CAMBIO;
    edzAgente.Text := oDoc.AGENTE;
    edzGastosFlete.Value := oDoc.FLETES;
    edzDTA.Value := oDoc.DTA;
    edzOtros.Value := oDoc.OTROS;
    enzPIGI.Value := oDoc.PGI;

//    xceIVA.Value := mdIVA;
//    PonFormulaIVA;


    {    xceNumAgente.Text  := oDoc.NUMAGENTE;
    BuscaAgente;
    xceViaTrans.Text   := oDoc.VIATRANS;
    BuscaViaTransporte;

    ComboSeek(cboMoneda,oDoc.MonedaDoct);
    cboMonedaClick(nil);
}
    F1 := oDoc.Detalle;



//    ListarProductos;

    edEstado := edBrowse;
    UpdateControls;

//    xlbCancelado.Visible  := (oDoc.CANCELA  = '1');

end;

procedure TfrmDoc_Costos.Imprimir;
begin
    if edEstado = edInsert then
        Grabar;

//    if FTipo_Docto = 63 then
//        ImprimirDoc;

    UpdateControls;
end;

procedure TfrmDoc_Costos.Limpiar;
begin

    oDoc.Clear;
    pgcDatos.ActivePageIndex := 0;
    xceFolio.Text := '';
    xdeFecha.Text := '';

    cboMoneda.ItemIndex := TStringsseek(cboMoneda.Items,'1'); //Pesos
    cboMonedaClick(nil);

    edzCodigo.Text := '';
    edzRAzSocial.Text := '';
    edzDescri.Text := '';
    cbzTipo.ItemIndex := 0;
    edzAduana.Text := '';
    enzSubTotal.Value := 0;
    edzGastosAduana.Value := 0;
    edzIGI.Value := 0;
    edzAgente.Text := '';
    edzGastosFlete.Value := 0;
    edzDTA.Value := 0;
    edzOtros.Value := 0;
    CalculaPIGI;

    xcrTotal.Value :=0;

    LimpiarDetalle;

    UpdateControls;

end;

procedure TfrmDoc_Costos.LimpiarDetalle;
var i,iMaxRows:Integer;
    tRow:String;
begin

    F1.Sheet := 1;
    iMaxRows := F1.MaxRow;
    F1.ClearRange(1, 1, iMaxRows,30, F1ClearValues);

    PonerFormulas;

    ShowEmptyRows;

end;

procedure TfrmDoc_Costos.LimpiarListaDocs;
var i,iMaxRows:Integer;
    tRow:String;
begin

    F11.Sheet := 1;
    iMaxRows := F11.MaxRow;
    F11.ClearRange(1, 1, iMaxRows,30, F1ClearValues);

end;

procedure TfrmDoc_Costos.VaciarPedidoF1;
var tAux,ptCod:String;
    i,iRow:integer;
    dPend:Double;
begin
//    if length(xcePedido.Text) > 0 then ptComa := ',' else ptComa := '';

{    ptPedido := frmSelDocF1.NUMDOCTO;
    ptPedido := sm.Strip(ptPedido);
    if (pos(ptPedido,xcePedido.Text) <= 0) and (length(ptPedido) > 0 ) then //Para no poner dos veces el pedido
        xcePedido.Text := xcePedido.Text + ptComa + ptPedido;
    xceNumAgente.Text := frmSelDocF1.NUMAGENTE;
    BuscaAgente;
    xceViaTrans.Text := frmSelDocF1.VIATRANS;
    BuscaViaTransporte;
}
//Detalle del Pedido
    iRow := GetNextRow;
    for i := 1 to frmSelDocF2.DetCount do begin
        F1.Row := iRow;
        ptCod := frmSelDocF2.F1Det.TextRC[i,2];
        tAux := frmSelDocF2.F1Det.TextRC[i,1];
        if (length(tAux) > 0) then begin
            F1.TextRC[iRow,IDCol.Codigo] := ptCod;
            GetProducto(ptCod);
            F1.NumberRC[iRow,IDCol.Cantidad] := frmSelDocF2.F1Det.NumberRC[i,3];
            F1.NumberRC[iRow,IdCol.CostoU] := frmSelDocF2.F1Det.NumberRC[i,7];
            F1.NumberRC[iRow,IdCol.PIGI] := enzPIGI.Value;
            F1.TextRC[iRow,19] := frmSelDocF2.Tipo_Docto;
            F1.TextRC[iRow,20] := frmSelDocF2.Serie_Docto;
            F1.TextRC[iRow,21] := frmSelDocF2.NumDocto;
            F1.TextRC[iRow,22] := frmSelDocF2.F1Det.TextRC[i,8];  //Porc. Descto Autorizado
            iRow := iRow+1;
        end;
    end;

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

procedure TfrmDoc_Costos.SelectDocsF1(ATipo_Docto:String);
begin

    if not Assigned(frmSelDocF2) then
        frmSelDocF2 := TfrmSelDocF2.Create (Application);

    frmSelDocF2.Tipo_Docto := ATipo_Docto;  //'23';

    mrRes := frmSelDocF2.ShowModal;
    frmSelDocF2.Hide;
    Application.ProcessMessages;

    if mrRes = mrOk then begin
      VaciarPedidoF1;
      frmSelDocF2.unprepare;
    end;

end;

procedure TfrmDoc_Costos.Select(ptTabla:String;piOpcion: Integer;ptKey:String);
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

procedure TfrmDoc_Costos.SelectCliente(piOpcion: Integer;ptKey:String);
begin
    Select('MBA10013',piOpcion,ptKey);
    if mrRes = mrOk then begin
        edzCodigo.Text := frmSelTabla.Valores[1];
        edzRazSocial.Text  := frmSelTabla.Valores[2];
        BuscaProveedor;
    end;

end;

procedure TfrmDoc_Costos.SelectProducto(piOpcion: Integer;ptKey:String);
var ptCod:String;
begin
    Select('MBA10004',piOpcion,ptKey);
    if mrRes = mrOk then begin
        F1.TextRC[miRow,1] := frmSelTabla.Valores[1];
        ptCod := F1.TextRC[miRow,1];
        GetProducto(ptCod);
        F1.Col := 2;
    end;

end;

procedure TfrmDoc_Costos.edzCodigoButtonClick(Sender: TObject);
begin
    SelectCliente(1,edzCodigo.Text);
end;

procedure TfrmDoc_Costos.enzSubTotalClick(Sender: TObject);
begin
  CalculaPIGI;
end;

procedure TfrmDoc_Costos.enzSubTotalExit(Sender: TObject);
begin
  CalculaPIGI;
end;

procedure TfrmDoc_Costos.xceNombreTranspButtonClick(Sender: TObject);
begin
end;
{---------------------------------------------------------------
Eventos F1
---------------------------------------------------------------}
function TfrmDoc_Costos.GetNextRow:Integer;
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

procedure TfrmDoc_Costos.F1KeyDown(Sender: TObject; var Key: Word;
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
            if (F1.Col in ColSet) or (F1.SelEndCol >=5) then exit;
            F1.ClearRange(F1.SelStartRow,F1.SelStartCol,F1.SelEndRow,F1.SelEndCol,F1ClearValues)
        end;
        end;
    VK_RETURN:
        begin
            tProd := F1.TextRC[F1.Row,1];
            GetProducto(tProd);
        end;
    end;
end;

procedure TfrmDoc_Costos.GetProducto(ptCod:String);
var dPrecio:Double;
begin
    oProd.CODPRODSER := UpperCase(ptCod);
    oProd.Retrieve;
    if oProd.EDOACTPROD = 2 then begin
        frmMsg.ClearAll;
        frmMsg.AddError (1,'El Producto ' + oProd.CodPRodSer + ' está dado de baja temporalmente!!',
                         'Checar con Compras','');
        frmMsg.ShowModal;
        exit;
    end;
{
    F1.ColText[1] := 'Codigo';
    F1.ColText[2] := 'Cantidad';
    F1.ColText[3] := 'U.Medida';
    F1.ColText[4] := 'Descripcion';
    F1.ColText[5] := 'Costo U.';
    F1.ColText[6] := '% Incre G.I.';
    F1.ColText[7] := 'Costo I.';
    F1.ColText[8] := 'Costo Total';
    F1.ColText[9] := '';
    F1.ColText[10] := 'Id Det. Origen';
    F1.ColText[11] := 'CodFamilia';

}
    F1.TextRC[F1.Row,IdCol.Codigo] := oProd.CODPRODSER;
    F1.TextRC[F1.Row,IdCol.Descripcion] := oProd.DESCRIPPRO;
    F1.TextRC[F1.Row,IdCol.Umedida] := oProd.UNIVTADESC;
//    F1.NumberRC[F1.Row,4] := oProd.GetPrecio(miLista);
//    F1.NumberRC[F1.Row,7] := F1.NumberRC[F1.Row,4];
{    if oDoc.MONEDADOCT <> '1' then begin
        tPrecio := Format('%8.2f', [F1.NumberRC[F1.Row,4] / xcrTipoCambio.value]);
        F1.NumberRC[F1.Row,4] := StrToFloat(tPrecio);
    end;
}
//    F1.TextRC[F1.Row,7] := oProd.PATHFOTO;
    dPrecio := oProd.PCIOCOMPRA;
    F1.NumberRC[F1.Row,IdCol.CostoU] := dPrecio;
    F1.NumberRC[F1.Row,IdCol.PIGI] := enzPIGI.Value;
    F1.NumberRC[F1.Row,IdCol.IdDetOri] := 0;
    F1.TextRC[F1.Row,IdCol.CodFamilia] := oProd.CODFAMILIA;

end;

procedure TfrmDoc_Costos.ListarDocumentos;
var i,iCount,iCan:Integer;
    iSheet,iRec,Row,iEsquema:Integer;
    tDoc,tSel,tTP,tKey,tF,tFor:String;
    fFound,fUpdate,fDelete:Boolean;
    dMonto,dDias,dPComis,dPBase,dAcum:Double;
    fPago:TDateTime;

begin

  Screen.Cursor := crHourglass;

//  sbMsg.caption := 'Generando reporte detallado de comisiones...';

//  LoadXLS;

  iSheet := 1;
  F11.Sheet := iSheet;

  Application.ProcessMessages;

  dAcum := 0;
  iCount := 0;
  iCan := 0;
  tSel := F11.Selection;

  LimpiarListaDocs;

  with DM1 do begin
    icuRep.SQL.Clear;
    icuRep.Sql.Add ('SELECT IDCOSTO_DOC,FOLIO, FECHA, DESCRIPCION, PROVEEDORES, SUBTOTAL FROM COSTOS_DOC ');
    icuRep.Sql.Add ('WHERE (FECHA >= ?FECHAINI) AND (FECHA <= ?FECHAFIN) ');
    icuRep.Sql.Add ('ORDER BY FECHA;');

    icuRep.Prepare;
    icuRep.ParambyName('FECHAINI').AsDateTime := zfeFechaIni.Date;
    icuRep.ParambyName('FECHAFIN').AsDateTime := zfeFechaFin.Date+0.999;
    icuRep.Open;

    iRec := 1;
    Row := 1;
    while not icuRep.Eof do begin
      F11.NumberSRC[iSheet,Row,icF11.Id]:= icuRep.fieldbyName('IDCOSTO_DOC').AsInteger;
      F11.TextSRC[iSheet,Row,icF11.Folio]  := icuRep.fieldbyName('FOLIO').AsString;
      F11.NumberSRC[iSheet,Row,icF11.Fecha]:= icuRep.fieldbyName('FECHA').AsDateTime;
      F11.TextSRC[iSheet,Row,icF11.Descri] := icuRep.fieldbyName('DESCRIPCION').AsString;
      F11.TextSRC[iSheet,Row,icF11.Prov] := icuRep.fieldbyName('PROVEEDORES').AsString;
      F11.NumberSRC[iSheet,Row,icF11.SubTotal]:= icuRep.fieldbyName('SUBTOTAL').AsDouble;

      if (iCount mod 10 = 0) then Application.ProcessMessages;

      icuRep.Next;
      Row := Row + 1;
    end;

    icuRep.Close;

    F11.Selection := tSel;
    F11.TopRow := 1;
    F11.LeftCol:= 1;

    F11.Sheet := 1;
    F11.TopRow := 1;
    F11.LeftCol:= 1;

  end;

  Screen.Cursor := crDefault;

end;

procedure TfrmDoc_Costos.ListarProductos;
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

//        xcrExisTotal.Value := oProd.EXISTOTAL;
        iRow := iRow+1;
        tCod := F1.TextRC[iRow,1]

    end;


end;


procedure TfrmDoc_Costos.DeleteRowsDetalle;
var i,iRowsDel,iMaxRows:Integer;
    tRow,tSel,tSel2:String;
begin
    tSel := F1.Selection;

    iMaxRows := 201;
    iRowsDel := F1.SelEndRow - F1.SelStartRow + 1;
    F1.DeleteRange(F1.SelStartRow,1,F1.SelEndRow,F1.MaxCol,F1ShiftRows);
    for i:= 200 - iRowsDel to iMaxRows do begin
        tRow := IntToStr(i);
        F1.FormulaRC[i,5] := 'Round(B'+tRow+'*'+'D'+tRow+',2)';
    end;

    F1.FormulaRC[201,5] := 'Round(SUM(E1:E200),2)';

{---------------
Al borrar los renglones las formulas de la hoja de impresión quedan
con error de referencia #REF.
Tengo que copiar de nuevo todas las formulas....
}
    F1.FormulaSRC[2,17,3] := 'CAP!B1';
    F1.FormulaSRC[2,17,4] := 'CAP!C1';
    F1.FormulaSRC[2,17,9] := 'CAP!Y1';
    F1.FormulaSRC[2,17,10] := 'CAP!Z1';
    F1.FormulaSRC[2,17,11] := 'CAP!AA1';
    F1.FormulaSRC[2,17,12] := 'CAP!AB1';
    F1.FormulaSRC[2,17,13] := 'CAP!AC1';
    F1.FormulaSRC[2,17,14] := 'CAP!AD1';
    F1.FormulaSRC[2,17,15] := 'CAP!AE1';
    F1.FormulaSRC[2,17,16] := 'CAP!AF1';

    F1.Sheet := 2;
    tSel2 := F1.Selection;
    f1.SetSelection (17,3,217,16);
    F1.EditCopyDown;
    F1.Selection := tSel2;
    F1.Sheet := 1;
    F1.Selection := tSel;

end;

procedure TfrmDoc_Costos.F1EndRecalc(Sender: TObject);
begin
  CalculaTotales;
end;

{---------------------------------------------------------------}

procedure TfrmDoc_Costos.xceFolioChange(Sender: TObject);
begin
//    UpdateDocto;
end;

procedure TfrmDoc_Costos.BuscaProveedor;
var tCod,tMoneda:String;
    slDir:TStringList;
    iErr:Integer;
begin
    slDir := TStringList.Create;
    tCod := sm.Strip(edzCodigo.Text);
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
    edzRazSocial.Text := oProv.NOMBPROVEE;
//    xceIVA.Value := oProv.PorcIVA;

    mdIVA := oProv.PorcIVA;
    PonFormulaIVA;

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


    cboMoneda.ItemIndex := TStringsSeek(cboMoneda.Items,oProv.MonedaProv);
    cboMonedaClick(nil);

//LLenar datos de proveedor en OC
    slDir := oProv.GetDireccion;
    F1.TextSRC[2,7,4] := oProv.NOMBPROVEE;
    F1.TextSRC[2,8,4] := slDir.Strings[0];
    F1.TextSRC[2,9,4] := slDir.Strings[1];
    F1.TextSRC[2,10,4] := slDir.Strings[2];
    F1.TextSRC[2,11,4] := slDir.Strings[3];

// Volver a poner la OC por si las dudas
    f1.NumberSRC [2,3,16] := StrToInt(Trim(xceFolio.Text));

end;

function TfrmDoc_Costos.VerificaFactura:Boolean;
var iMaxRow,iRen:Integer;
    dCostoU,dCantidad,dCostoI:Double;
    tCodPS,tDescri:String;
    fRes:boolean;
begin
    fRes := True;
    iMaxRow := f1.MaxRow;
    for iRen := 1 to iMaxRow do begin
        tCodPS := F1.TextRC[iRen,IdCol.Codigo];
        tCodPS := sm.Strip (tCodPS);
        tDescri := sm.Strip(F1.TextRC[iRen,IDCol.Descripcion]);
        if (length(tCodPS) > 0) then begin
            dCostoU := F1.NumberRC[iRen,IDCol.CostoU];
            dCantidad := F1.NumberRC[iRen,IDCol.Cantidad];
            dCostoI    := F1.NumberRC[iRen,IdCol.CostoI];

            if (dCostoU <= 0) or (dCantidad <= 0) or (dCostoI <= 0) then begin
                frmMsg.AddMsg ('El producto '+tCodPS+' tiene errores en Precio, Cantidad o Total!!');
                fRes := False;

            end;
        end;
    end;

    Result := fRes;

end;

{procedure TfrmDoc_Costos.edzCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_F3:    SelectCliente(1,edzCodigo.Text);
    VK_F4:    SelectCliente(2,edzRazSocial.Text);
    VK_Return: BuscaProveedor
    end;


end;
}
procedure TfrmDoc_Costos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_ESCAPE: Close;
    VK_F5:    Crear;
    VK_F6:    tbtGrabarClick(Sender);
    VK_F7:    tbtImprimirClick(Sender);
    end;


end;

procedure TfrmDoc_Costos.xceFolio1ButtonClick(Sender: TObject);
begin
    Leer;
end;

procedure TfrmDoc_Costos.xceFolio1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_RETURN: Leer;
    end;

end;

procedure TfrmDoc_Costos.xceIVAExit(Sender: TObject);
begin
  //Vamos a tomar el iva del proveedor como el bueno.
//  mdIVA := xceIVA.Value;
end;

procedure TfrmDoc_Costos.F11DblClick(ASender: TObject; nRow, nCol: Integer);
begin
  Leer;
end;

procedure TfrmDoc_Costos.F1EndEdit(Sender: TObject; var EditString: WideString;
  var Cancel: Smallint);
var
    dCant:Double;
    tES:String;
begin
    if F1.Col = 1 then begin
        EditString := UpperCase(EditString);
        GetProducto(EditString);
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

procedure TfrmDoc_Costos.F1StartEdit(Sender: TObject; var EditString: WideString;
  var Cancel: Smallint);
begin
    if F1.Col in ColSet then Cancel := 1;
end;

procedure TfrmDoc_Costos.MoverCursor(Key: Word;piTimes:Integer);
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
procedure TfrmDoc_Costos.pgcMainChange(Sender: TObject);
begin
  if pgcMain.ActivePageIndex = 0 then begin
    F11.SetFocus;

  end else begin
    F1.SetFocus;

  end;
end;

procedure TfrmDoc_Costos.Timer2Timer(Sender: TObject);
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
            MoverCursor(VK_LEFT,1);
            MoverCursor(VK_DOWN,1);
        end;
    end;

    Timer2.Enabled := False;
end;

procedure TfrmDoc_Costos.F1Enter(Sender: TObject);
begin
//    pgcCliente.ActivePage := tshProducto;
end;

procedure TfrmDoc_Costos.BorrarOC;
var i:Integer;
begin
//    F1LP.ClearRange(miRowIni,1,F1LP.MaxRow,22,F1ClearValues);

end;

procedure TfrmDoc_Costos.btnCalcularClick(Sender: TObject);
begin
  CalculaPIGI;
end;

procedure TfrmDoc_Costos.btnListarClick(Sender: TObject);
begin
  ListarDocumentos;
end;

procedure TfrmDoc_Costos.HideEmptyRows;
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

procedure TfrmDoc_Costos.ShowEmptyRows;
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

procedure TfrmDoc_Costos.rbtTelefonicaClick(Sender: TObject);
begin
    F1.TextSRC[2,12,18] := 'X';
    F1.TextSRC[2,13,18] := '';
end;

procedure TfrmDoc_Costos.RzBitBtn2Click(Sender: TObject);
begin
PonerFormulas;
end;

procedure TfrmDoc_Costos.rbtPersonalClick(Sender: TObject);
begin
    F1.TextSRC[2,12,18] := '';
    F1.TextSRC[2,13,18] := 'X';
end;

procedure TfrmDoc_Costos.xdeFecEntregaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
    F1.NUmberSRC[2,9,15] := ESBDAtes.Date2Day (ADate);
    F1.NUmberSRC[2,9,16] := ESBDAtes.Date2Month (ADate);
    F1.NUmberSRC[2,9,17] := ESBDAtes.Date2Year (ADate);
end;

procedure TfrmDoc_Costos.cboMonedaClick(Sender: TObject);
var
  tMon:String;
begin
//    oParam.CODPAR := 'IVA';
//    mdIVA := oParam.VALORNUM;
    tMon := sm.NthWord(1,cboMoneda.Text);
    tMon := sm.Strip (tMon);
    if tMon <> '1' then begin
        GetTipoCambio;
    end;
    oDoc.MONEDA_DOC := tMon;

//    LimpiarDetalle;
end;

procedure TfrmDoc_Costos.cboMonedaExit(Sender: TObject);
begin
    cboMonedaClick(Sender);
end;

procedure TfrmDoc_Costos.GetTipoCambio;
begin

    oMon.MONEDA := Trim(sm.NthWord (1,cboMoneda.Text));
    oMon.Fecha := xdeFecha.Date;
//    xcrTipoCambio.Value := oMon.GetTipoCambio;
    enzTipoCambio.Value := DM1.GetTipoCambio2;
    if (enzTipoCambio.Value) <= 0 then enzTipoCambio.Value := 1;

end;



procedure TfrmDoc_Costos.tbtGabarXLSClick(Sender: TObject);
begin
  axnGrabar;
end;

procedure TfrmDoc_Costos.axnGrabar;
var tFile:WideString;
    miType:smallint;
begin
    try
        F1.SaveFileDlg ('Grabar Orden de Compra (XLS)',tFile,miType);
    except
        Exit;
    end;

    try
        F1.Write (tFile,miType);
    except;
        MessageDlg('Imposible grabar el archivo!', mtWarning,[mbOk], 0);
    end;
end;

procedure TfrmDoc_Costos.PonFormulaIVA;
var t:String;
    miType:smallint;
begin
    t := sm.StrFloat(mdIVA/100,'0.00');
    F1.FormulaSRC[2,220,18] := 'R219*'+t;
end;

procedure TfrmDoc_Costos.PonerFormulas;
var i,iRen,iCol,iMaxRows,iMaxCols:Integer;
    tSel,tF1,tF2,tF3,tFor,tRow,tCol,tFmtPrecio:String;
begin


  tSel := F1.Selection;

  i:= 2;

  tFmtPrecio := '#,##0.' + sm.RepeatStr('0',i);
{
    F1.ColText[IdCol.Codigo] := 'Codigo';
    F1.ColText[IdCol.Cantidad] := 'Cantidad';
    F1.ColText[IdCol.Umedida] := 'U.Medida';
    F1.ColText[IdCol.Descripcion] := 'Descripcion';
    F1.ColText[IdCol.CostoU] := 'Costo U.';
    F1.ColText[IdCol.PIGI] := '% Incre G.I.';
    F1.ColText[IdCol.CostoI] := 'Costo I.';
    F1.ColText[IdCol.CostoT] := 'Costo Total';
    F1.ColText[IdCol.CostoT+1] := '';
    F1.ColText[IdCol.IdDetOri] := 'Id Det. Origen';
    F1.ColText[IdCol.CodFamilia] := 'CodFamilia';

}
//Formula para obtener el precio neto
  F1.SetSelection(1,IdCol.CostoU,1,IdCol.CostoU);
  tF1 := F1.Selection; // Celda del precio de lista
  F1.NumberFormat := tFmtPrecio;
  F1.SetSelection(1,IdCol.PIGI,1,IdCol.PIGI);
  tF2 := F1.Selection; // Celda del porcentaje incr. Gtos. Imp.
  tFor := tF1 + '*(1+(' + tF2 +'/100))';
  F1.FormulaRC[1,IdCol.CostoI] := tFor;
  F1.NumberFormat := tFmtPrecio;

//Formula para obtener el Importe del descuento en pesos
  F1.SetSelection(1,IdCol.Cantidad,1,IdCol.Cantidad);
  tF1 := F1.Selection; // Celda de la Cantidad
  F1.SetSelection(1,IdCol.CostoI,1,IdCol.CostoI);
  tF2 := F1.Selection; // Celda del costo Integrado
  tFor := tF1 + '*' + tF2;
  F1.FormulaRC[1,IdCol.CostoT] := tFor;

// Copiar formula hacia abajo
// Precio Neto
  F1.SetSelection(1,IdCol.CostoI,F1.MaxRow,IdCol.CostoT);
  F1.NumberFormat := tFmtPrecio;
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

//  RefreshF1;

end;

procedure TfrmDoc_Costos.CalculaPIGI;
var
  dGastos:Double;
begin
  dGastos := edzGastosAduana.Value +
             edzIGI.Value +
             edzGastosFlete.Value +
             edzDTA.Value +
             edzOtros.Value;
  if enzSubTotal.Value = 0 then
    enzPIGI.Value := 0
  else
    enzPIGI.Value := (dGastos / enzSubTotal.Value)* 100;
end;

procedure TfrmDoc_Costos.CalculaTotales;
var
  tCodPS:String;
  dTotal:Double;
  iRen,iVacios:Integer;
begin
  dTotal := 0;
  for iRen := 1 to F1.MaxRow do begin
    tCodPS := F1.TextRC[iRen,IdCol.Codigo];
    tCodPS := sm.Strip (tCodPS);
    if (length(tCodPS) > 0) then begin
        iVacios := 0; //Al encontrar un codigo limpio el contador de vacios
        dTotal := dTotal + F1.NumberRC[iRen,IdCol.CostoT];
    end;
    iVacios := iVacios + 1;
    if iVacios > 3 then break;

  end;
  xcrTotal.Value := dTotal;
end;
procedure TfrmDoc_Costos.Eliminar;
var
  wmr:Integer;
begin
  wmr := MessageDlg( 'Deseas eliminar el documento?',mtConfirmation,[mbYes, mbNo],0 );
  if (wmr = mrNo) then exit;

  oDoc.Delete;

  if oDoc.Error = 0 then
    ShowMessage('Documentos eliminado exitosamente!!');

  Crear;

  pgcMain.ActivePageIndex := 0;
  ListarDocumentos;
end;

end.
