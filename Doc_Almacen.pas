 unit Doc_Almacen;

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
  Constants_App,
  ClsParam,
  ClsDoc, ClsMoneda,
  ClsProducto,
  ClsTablas, TB2Item, rxCurrEdit, RzTabs;

type
  TfrmDocs_Almacen = class(TForm)
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
    pnlTotales: TPanel;
    xcrSubTotal: TCurrencyEdit;
    pgcProducto: TPageControl;
    tshCliente: TTabSheet;
    tshAdicionales: TTabSheet;
    Dock971: TTBXDock;
    Memo1: TMemo;
    Label5: TLabel;
    Bevel1: TBevel;
    xdeFecha: TDateEdit;
    Label7: TLabel;
    tlbMain: TTBXToolbar;
    tbtSalir: TTBXItem;
    ToolbarSep972: TTBXSeparatorItem;
    tbtImprimir: TTBXItem;
    tbtGrabar: TTBXItem;
    tbtCreate: TTBXItem;
    ToolbarSep975: TTBXSeparatorItem;
    ToolbarSep977: TTBXSeparatorItem;
    tbtVer: TTBXItem;
    Timer1: TTimer;
    tbtCancelar: TTBXItem;
    tshFoto: TTabSheet;
    Timer2: TTimer;
    Panel1: TPanel;
    xsbAmpliar: TRxSpeedButton;
    xlbDescri: TRxLabel;
    Panel2: TPanel;
    imgFoto: TImage;
    xlbCancelado: TRxLabel;
    GroupBox1: TGroupBox;
    xcrExisTotal: TCurrencyEdit;
    lblAlmOri: TLabel;
    cboNumAlmac: TComboBox;
    Label11: TLabel;
    cboTipoMov: TComboBox;
    cboNumConc: TComboBox;
    Label3: TLabel;
    cboNumAlmacT: TComboBox;
    lblAlmDes: TLabel;
    RxLabel2: TRxLabel;
    xceFolio: TComboEdit;
    Label8: TLabel;
    RxLabel4: TRxLabel;
    xcrDescto: TCurrencyEdit;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXSubmenuItem1: TTBXSubmenuItem;
    tbtPedMty: TTBXItem;
    tbtPedGdl: TTBXItem;
    tbtPedMex: TTBXItem;
    tbtCotMex: TTBXItem;
    tbtCotGdl: TTBXItem;
    tbtCotMty: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    tbtRemMex: TTBXItem;
    tbtRemGdl: TTBXItem;
    tbtRemMty: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    tbtFac: TTBXItem;
    Label19: TLabel;
    xceObservaciones: TComboEdit;
    lblPedido: TLabel;
    xceDocOrigen: TComboEdit;
    Label6: TLabel;
    cboMoneda: TComboBox;
    Label29: TLabel;
    xcrTipoCambio: TCurrencyEdit;
    pgcDetalle: TRzPageControl;
    tshCaptura: TRzTabSheet;
    tshImpresion: TRzTabSheet;
    F1: TF1Book;
    F11: TF1Book;
    tbtOC: TTBXItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SalirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Select(ptTabla:String;piOpcion: Integer;ptKey:String);
    procedure SetUp;
    procedure SetUpF1;
    procedure SelectProducto(piOpcion: Integer;ptKey:String);
    procedure xceNombreTranspButtonClick(Sender: TObject);
    procedure F1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure F1EndRecalc(Sender: TObject);
    procedure LimpiarDetalle;
    procedure tbtImprimirClick(Sender: TObject);
    procedure ImprimirDoc;
    procedure DeleteRowsDetalle;
    procedure tbtCreateClick(Sender: TObject);
    procedure tbtGrabarClick(Sender: TObject);
    procedure Crear;
    procedure Grabar;
    procedure Leer;
    procedure Imprimir;
    procedure Limpiar;
    procedure Cancelar;
    procedure GetProducto(ptCod:String);
    procedure tbtSalirClick(Sender: TObject);
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
    procedure VerFoto;
    procedure VerExistencia;
    procedure F1SelChange(Sender: TObject);
    procedure MoverCursor(Key: Word;piTimes:Integer);
    procedure Timer2Timer(Sender: TObject);
    procedure F1Enter(Sender: TObject);
    procedure xsbAmpliarClick(Sender: TObject);
    procedure ListarProductos;
    procedure cboTipoMovClick(Sender: TObject);
    procedure cboNumConcClick(Sender: TObject);
    procedure PonerFormulas;
    function ValidarDoc:Integer;
    procedure SelectDocsF1(ATipo_Docto: string);
    procedure VaciarPedidoF1;
    procedure tbtCotMtyClick(Sender: TObject);
    procedure tbtCotGdlClick(Sender: TObject);
    procedure tbtCotMexClick(Sender: TObject);
    procedure tbtPedMtyClick(Sender: TObject);
    procedure tbtPedGdlClick(Sender: TObject);
    procedure tbtPedMexClick(Sender: TObject);
    procedure tbtRemMtyClick(Sender: TObject);
    procedure tbtRemGdlClick(Sender: TObject);
    procedure tbtRemMexClick(Sender: TObject);
    procedure tbtFacClick(Sender: TObject);
    procedure tbtVerClick(Sender: TObject);
    procedure tbtOCClick(Sender: TObject);
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
  frmDocs_Almacen: TfrmDocs_Almacen;
  mrRes:Integer;
  TipoTabla:String;
  miRow:Integer;
  miLista:Integer;
  edEstado:TDocState;
  oDoc:TDoc;
  oProd:TProducto;
  oTabla:TTabla;
  oMon:TMoneda;
  mtPath:String;
  mtFoto:String;
  mdIVA:Double;
  mtLugarExp,
  mtNumConc   :String;
  miTipo:Integer;
//  Tipo_Docto:Integer;

implementation

uses Main,DM_MBA, MsgError, SelCodDes, ClsPrintTxt, SelDoc, SelTabla, VerImagen,
  BackOrder, Saldos, SelDocF2;

{$R *.DFM}


procedure TfrmDocs_Almacen.FormCreate(Sender: TObject);
var tFile:String;
begin
//
    oDoc    := TDoc.Create;
    oProd   := TProducto.Create;
    oTabla  := TTabla.Create;
    oMon    := TMoneda.Create;
    mtPath  := oIni.ReadString ('Directorios','Graficos','c:\@Mba\Ico\');

end;

procedure TfrmDocs_Almacen.FormShow(Sender: TObject);
begin
  Top :=0;
  Left :=0;
end;

procedure TfrmDocs_Almacen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDoc.Free;
  oProd.Free;
  oTabla.Free;
  oMon.Free;

  frmDocs_Almacen := nil;
  Action := caFree;
end;

procedure TfrmDocs_Almacen.tbtCotGdlClick(Sender: TObject);
begin
SelectDocsF1('302');
end;

procedure TfrmDocs_Almacen.tbtCotMexClick(Sender: TObject);
begin
  SelectDocsF1('303');
end;

procedure TfrmDocs_Almacen.tbtCotMtyClick(Sender: TObject);
begin
  SelectDocsF1('30');
end;

procedure TfrmDocs_Almacen.Timer1Timer(Sender: TObject);
begin
    Timer1.Enabled := False;
    SetUp;
    SetUpF1;
end;

procedure TfrmDocs_Almacen.SalirExecute(Sender: TObject);
begin
    close;
end;

procedure TfrmDocs_Almacen.SetUp;
begin

  mdIVA := oParam.VALORNUM;
  oParam.CODPAR := 'LUGAREXP';
  mtLugarExp := oParam.VALORTXT;

  oMon.FillMoneda(cboMoneda);
  oMon.Fecha := xdeFecha.Date;

  oMon.MONEDA := '2';
  xcrTipoCambio.Value := oMon.GetTipoCambio; // Lo uso en GetProducto...

  oMon.MONEDA := Trim(sm.NthWord(1, cboMoneda.Text));
  oDoc.MONEDADOCT := oMon.MONEDA;


  pgcProducto.ActivePageIndex := 0;
  Crear;

  xdeFecha.Date := Date;

  cboTipoMov.ItemIndex := 0;
  cboTipoMovClick(nil);
end;

procedure TfrmDocs_Almacen.SetUpF1;
var i,iMaxRows,iCol:Integer;
    tRow,tSel:String;
begin

  tSel := F1.Selection;
  F1.ShowSelections := F1Off;
  for i := 1 to ctMaxColumn do begin
    F1.SetSelection (1,i,F1.MaxRow,i);
    F1.ColText[i] := ColFac[i].Header;
    F1.SetColWidth (i,i,ColFac[i].Width,False);
    F1.NumberFormat := ColFac[i].Format;
  end;
  F1.ShowSelections := F1Auto;

// Esconder Columnas adicionales

    iCol := IdCols.PrecioLista;
    F1.ColText[iCol] := 'Costo Lista';
    iCol := IdCols.PrecioNeto;
    F1.ColText[iCol] := 'Costo U.';;
    iCol := IdCols.ImpNetoMov;
    F1.ColText[iCol] := 'Costo Neto';;



//Configurar F1
    F1.AllowDelete := False;
    F1.ShowEditBar :=True;
    F1.ShowZeroValues := False;
    F1.EnterMovesDown := False;
    F1.ShowTabs := 0;
    F1.ViewScale := 80;
    F1.MaxCol := ctMaxColumn;
    tSel := F1.Selection;

// Llenar combos

    DM1.FillAlmacen (cboNumAlmac);
    cboNumAlmacT.Items := cboNumAlmac.Items;
    if cboNumAlmac.Items.Count > 0 then cboNumAlmac.ItemIndex := 0;

//Poner las formulas de la Hoja
    LimpiarDetalle;


end;


{---------------------------------------------------------------
Eventos de la barra herramientas
---------------------------------------------------------------}
procedure TfrmDocs_Almacen.tbtCreateClick(Sender: TObject);
begin
    Crear;
end;

procedure TfrmDocs_Almacen.tbtFacClick(Sender: TObject);
begin
  SelectDocsF1('107');

end;

procedure TfrmDocs_Almacen.tbtGrabarClick(Sender: TObject);
begin
    Grabar;
    UpdateControls;
    Crear;   //Inicio nuevo docto
end;

procedure TfrmDocs_Almacen.tbtImprimirClick(Sender: TObject);
begin
    Imprimir;
    UpdateControls;
    Crear;   //Inicio nuevo docto
end;

procedure TfrmDocs_Almacen.tbtOCClick(Sender: TObject);
begin
  SelectDocsF1('63');

end;

procedure TfrmDocs_Almacen.tbtPedGdlClick(Sender: TObject);
begin
  SelectDocsF1('232');

end;

procedure TfrmDocs_Almacen.tbtPedMexClick(Sender: TObject);
begin
  SelectDocsF1('233');

end;

procedure TfrmDocs_Almacen.tbtPedMtyClick(Sender: TObject);
begin
  SelectDocsF1('23');
end;

procedure TfrmDocs_Almacen.tbtRemGdlClick(Sender: TObject);
begin
  SelectDocsF1('282');

end;

procedure TfrmDocs_Almacen.tbtRemMexClick(Sender: TObject);
begin
  SelectDocsF1('283');

end;

procedure TfrmDocs_Almacen.tbtRemMtyClick(Sender: TObject);
begin
  SelectDocsF1('28');

end;

procedure TfrmDocs_Almacen.tbtCancelarClick(Sender: TObject);
begin
    if edEstado = edBrowse then
        Cancelar
    else
        Crear;

    UpdateControls;
end;

procedure TfrmDocs_Almacen.tbtSalirClick(Sender: TObject);
begin
    Close;
end;




procedure TfrmDocs_Almacen.tbtVerClick(Sender: TObject);
begin
  pnlTotales.Visible := not pnlTotales.Visible;
  pgcProducto.Visible := not pgcProducto.Visible;

end;

{---------------------------------------------------------------
Acciones Basicas del Modulo
---------------------------------------------------------------}
procedure TfrmDocs_Almacen.UpdateControls;
begin
    tbtGrabar.Enabled := (edEstado = edInsert);
    tbtCancelar.Enabled := (oDoc.CANCELA <> '1');
//    pgcProducto.Enabled := (edEstado = edInsert);
    pnlTotales.Enabled := (edEstado = edInsert);
    lblAlmDes.Visible := (miTipo = 3);
    cboNumAlmacT.Visible := (miTipo = 3);
end;

procedure TfrmDocs_Almacen.Crear;
var tTD:String;
    iFolio:Integer;
begin
    edEstado := edInsert;
    oDoc.Status := edEstado;
    UpdateControls;

    Limpiar;
    oDoc.NUMTIPODOC  := sm.StrFloat(Tipo_Docto,'###');
    xceFolio.Text := oDoc.GetNextFolio;

    xlbCancelado.visible := False;

    pgcProducto.ActivePageIndex := 0;
    cboTipoMov.SetFocus;


end;

procedure TfrmDocs_Almacen.Grabar;
var
  iClase:SmallInt;
  tClase:String;
  iErr: Integer;
begin
    oDoc.Error := 0;
    oDoc.NUMTIPODOC := sm.StrFloat (Tipo_Docto,'#');
    oDoc.SERIEDOCTO  := '*';
    oDoc.NUMDOCTO := xceFolio.Text;
    oDoc.FECDOCTO := xdeFecha.Date + Time;
    tClase := Trim(sm.NthWord (1,cboNumConc.Text,['|']));
    iClase := sm.ToI(tClase);
    oDoc.CLASEDOC := iClase;
    oDoc.CODCTEPROV := '';
    oDoc.NUMAGENTE := '';
    oDoc.VIATRANS :=  '';
    oDoc.IMPNETODOC := xcrSubTotal.Value;
    oDoc.IMPIVADOCT := 0;
    oDoc.PORCIVADOC := mdIVA;
    oDoc.IMPTOTALDO := xcrSubTotal.Value;
    oDoc.IMPPENDDOC := 0;
    oDoc.NUMALMAC := Trim(sm.NthWord (1,cboNumAlmac.Text,['|']));
    oDoc.NALMTRASP := Trim(sm.NthWord (1,cboNumAlmacT.Text,['|']));
    oDoc.MONEDADOCT := Trim(sm.NthWord (1,cboMoneda.Text,['|']));
    oDoc.REFERDOCTO := xceDocOrigen.Text;
    oDoc.OBSERVA    := xceObservaciones.Text;
    oDoc.FECVENCEDO := Date;
    oDoc.Detalle := F1;

    iErr := ValidarDoc;
    frmMsg.ClearAll;
    if iErr > 0 then begin
        frmMsg.ShowAsk := False;
        frmMsg.ShowCancel := False;
        frmMsg.ShowModal;
        exit;
    end;

    oDoc.Save;

    if oDoc.Error > 0 then begin
        ShowMessage(oDoc.Msg.Text);
        exit;
    end;

    edEstado := edBrowse;
    oDoc.Status := edEstado;

    UpdateControls;

end;

function TfrmDocs_Almacen.ValidarDoc:Integer;
var
  tNumAlmac:String;
begin
  Result := 0;
  if length(oDoc.NUMALMAC) <= 0 then begin
    frmMsg.AddMsg ('No se ha especificado el ALMACEN!!');
    Result := Result + 1;
  end;
  if Tipo_Docto = 83 then begin //Traspasos
    if length(oDoc.NALMTRASP) <= 0 then begin
      frmMsg.AddMsg ('No se ha especificado el ALMACEN de Traspaso!!');
      Result := Result + 1;
    end;
  end;
end;



procedure TfrmDocs_Almacen.Leer;
var
    tTD:String;
    iClase:SmallInt;
    tClase: String;
    ix:Integer;
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
    iClase := oDoc.CLASEDOC;
    tClase := sm.StrFloat(iClase,'#');
    tClase := sm.Pad(tClase,3,' ');
    ix := ComboSeek(cboNumConc,tClase);
    cboNumConc.ItemIndex := ix;

    cboNumAlmac.ItemIndex := ComboSeek(cboNumAlmac,oDoc.NumAlmac);
    cboNumAlmacT.ItemIndex := ComboSeek(cboNumAlmacT,oDoc.NAlmTrasp);
    xceDocOrigen.Text := oDoc.REFERDOCTO;
    xceObservaciones.Text := oDoc.OBSERVA;

    F1 := oDoc.Detalle;

    ListarProductos;

    edEstado := edBrowse;
    oDoc.Status := edEstado;
    UpdateControls;

    xlbCancelado.Visible  := (oDoc.CANCELA  = '1');

end;

procedure TfrmDocs_Almacen.Imprimir;
begin
    if edEstado = edInsert then
        Grabar;
    if FTipo_Docto <> 0 then ImprimirDoc;

    UpdateControls;
end;

procedure TfrmDocs_Almacen.Cancelar;
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


procedure TfrmDocs_Almacen.Limpiar;
begin

    oDoc.Clear;
    
    pgcProducto.ActivePageIndex := 0;
    xceFolio.Text := '';

    xceDocOrigen.Text := '';
    xceObservaciones.Text := '';
    LimpiarDetalle;

    xcrSubtotal.Value :=0;

    UpdateControls;

end;

procedure TfrmDocs_Almacen.Select(ptTabla:String;piOpcion: Integer;ptKey:String);
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


procedure TfrmDocs_Almacen.SelectProducto(piOpcion: Integer;ptKey:String);
var iLista:Integer;
    ptCod:String;
begin
    Select('MBA10004',piOpcion,ptKey);
    if mrRes = mrOk then begin
        F1.TextRC[miRow,IdCols.CodPRodSer] := frmSelTabla.Valores[1];
        ptCod := F1.TextRC[miRow,IdCols.CodPRodSer];
        GetProducto(ptCod);
        F1.Col := 2;
    end;

end;

procedure TfrmDocs_Almacen.xceNombreTranspButtonClick(Sender: TObject);
begin
end;
{---------------------------------------------------------------
Eventos F1
---------------------------------------------------------------}
function TfrmDocs_Almacen.GetNextRow:Integer;
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

procedure TfrmDocs_Almacen.LimpiarDetalle;
begin


    F1.Sheet := 1;
    F1.ClearRange(1, 1, F1.MaxRow,F1.MaxCol, F1ClearValues);

    PonerFormulas;

    f1.Selection := 'A1';


end;

procedure TfrmDocs_Almacen.PonerFormulas;
var i,iRen,iCol,iMaxRows,iMaxCols:Integer;
    tSel,tF1,tF2,tF3,tFor,tRow,tCol:String;
begin
  tSel := F1.Selection;

//Formula para obtener el precio neto
  F1.SetSelection(1,IdCols.PrecioLista,1,IdCols.PrecioLista);
  tF1 := F1.Selection; // Celda del precio de lista
  F1.SetSelection(1,IdCols.PorcDescAu,1,IdCols.PorcDescAu);
  tF2 := F1.Selection; // Celda del porcentaje autorizado
  tFor := 'Round(' + tF1 + '*(1-(' + tF2 +'/100)),2)';
  F1.FormulaRC[1,IdCols.PrecioNeto] := tFor;

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
  tFor := 'Round(' + tF1 + '*' + tF2 +',2)';
  F1.FormulaRC[1,IdCols.ImpNetoMov] := tFor;

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
  F1.SetSelection(1,IdCols.ImpNetoMov,F1.MaxRow,IdCols.ImpNetoMov);
  tF1 := F1.Selection;
  F1.FormulaSRC[2,1,1] := 'Round(SUM(Doc!'+ tF1 + '),2)';
// Importe Descuento
  F1.SetSelection(1,IdCols.ImpDescAut,F1.MaxRow,IdCols.ImpDescAut);
  tF1 := F1.Selection;
  F1.FormulaSRC[2,2,1] := 'Round(SUM(Doc!'+ tF1 + '),2)';

  F1.Selection := tSel;

end;


procedure TfrmDocs_Almacen.F1KeyDown(Sender: TObject; var Key: Word;
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
    VK_DELETE: begin
        if ssCtrl in Shift then
            DeleteRowsDetalle
        else
            F1.ClearRange(F1.SelStartRow,F1.SelStartCol,F1.SelEndRow,F1.SelEndCol,F1ClearValues)
        end;
    VK_RETURN:
        begin
            tProd := F1.TextRC[F1.Row,IdCols.CodProdSer];
            GetProducto(tProd);
        end;
    end;
end;

procedure TfrmDocs_Almacen.GetProducto(ptCod:String);
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

  F1.TextRC[F1.Row, IdCols.UniVta] := oProd.UNIVTADESC;
  miLista := 1;

  F1.TextRC[F1.Row, idCols.PathFoto] := oProd.PATHFOTO;
  F1.NumberRC[F1.Row, IdCols.CostoMov] := oProd.CTOREAL;

  //dPrecioLista := oProd.GetPrecio(miLista);

  F1.NumberRC[F1.Row, IDCols.PrecioLista] := F1.NumberRC[F1.Row, IdCols.CostoMov];
  F1.NumberRC[F1.Row, IDCols.PorcDescAu] := 0;
  F1.NumberRC[F1.Row, IdCols.PorcIVAMov] := oProd.PORC_IVA; //xcrPIVA.Value;
  F1.NumberRC[F1.Row, IdCols.PorcIEPSMo] := oProd.PORC_IEPS;
  F1.NumberRC[F1.Row, IdCols.PorcRetIVAMov] := oProd.PORC_RETIVA;
  dPrecioLista := F1.NumberRC[F1.Row, IDCols.PrecioLista];

  F1.NumberRC[F1.Row, IdCols.FecDocto] := xdeFecha.Date;

  F1.NumberRC[F1.Row, IDCols.PorcComisV] := 0;
  F1.NumberRC[F1.Row, IdCols.ExisTotal] := oProd.EXISTOTAL;
  F1.NumberRC[F1.Row, IdCols.ExisAlmacen] := oProd.EXISALMACEN;
  F1.NumberRC[F1.Row, IdCols.DescRota] := oProd.DescRota;
  F1.NumberRC[F1.Row, IdCols.TipoCalculo] := oProd.TipoCalculo;
  F1.NumberRC[F1.Row, IdCols.NumPrecioLista] := 1;

  F1.TextRC[F1.Row, IdCols.CodFamilia] := oProd.CODFAMILIA;

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

procedure TfrmDocs_Almacen.ListarProductos;
var
    iRow:Integer;
    tCod,tDes:String;
begin

    PonerFormulas;

    iRow := 1;
    tCod := F1.TextRC[iRow,IdCols.CodProdSer];
    tDes := F1.TextRC[iRow,IdCols.DescripPro];
    while (length(tCod) > 0) or (length(tDes) > 0) do begin
      if (length(tCod) > 0) then begin
        oProd.CODPRODSER := UpperCase(tCod);
        oProd.Retrieve;
        F1.TextRC[iRow,IdCols.UniVta] := oProd.UNIVTADESC;
        F1.TextRC[iRow,IDCols.PathFoto] := oProd.PATHFOTO;
        F1.TextRC[iRow,IDCols.DescripPro] := oProd.DESCRIPPRO;

        F1.NumberRC[iRow,IdCols.ExisTotal] := oProd.EXISTOTAL;

        xcrExisTotal.Value := oProd.EXISTOTAL;
      end;
      iRow := iRow+1;
      tCod := F1.TextRC[iRow,IdCols.CodProdSer];
      tDes := F1.TextRC[iRow,IdCols.DescripPro];

    end;


end;


procedure TfrmDocs_Almacen.DeleteRowsDetalle;
var i,iRowsDel,iMaxRows:Integer;
    tRow:String;
begin
    iMaxRows := F1.MaxRow;
    iRowsDel := F1.SelEndRow - F1.SelStartRow + 1;
    F1.DeleteRange(F1.SelStartRow,1,F1.SelEndRow,F1.MaxCol,F1ShiftRows);

    PonerFormulas;

end;

procedure TfrmDocs_Almacen.F1EndRecalc(Sender: TObject);
begin
    xcrDescto.Value := F1.NumberSRC[2,2,1];
    xcrSubTotal.Value := F1.NumberSRC[2,1,1];
end;

{---------------------------------------------------------------}



procedure TfrmDocs_Almacen.ImprimirDoc;
begin
//
end;

procedure TfrmDocs_Almacen.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_ESCAPE: Close;
    VK_F5:    Crear;
    VK_F6:    Grabar;
    VK_F7:    Imprimir;
    end;


end;

procedure TfrmDocs_Almacen.xceFolioButtonClick(Sender: TObject);
begin
    Leer;
end;

procedure TfrmDocs_Almacen.xceFolioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_RETURN: Leer;
    end;

end;

procedure TfrmDocs_Almacen.F1EndEdit(Sender: TObject; var EditString: WideString;
  var Cancel: Smallint);
begin
    if F1.Col = 1 then begin
        EditString := UpperCase(EditString);
        GetProducto(EditString);
        EditString := oProd.CODPRODSER;
    end;
    Timer2.Enabled := True;
end;

procedure TfrmDocs_Almacen.F1StartEdit(Sender: TObject; var EditString: WideString;
  var Cancel: Smallint);
begin
//    if edEstado = edBrowse then Cancel := 1;
end;

procedure TfrmDocs_Almacen.VerFoto;
var tFile:String;
    iRow:Integer;
begin
    iRow := F1.Row;
    tFile := sm.Strip(F1.TextRC[iRow,IdCols.PathFoto]);
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
procedure TfrmDocs_Almacen.VerExistencia;
var iRow:Integer;
begin
    iRow := F1.Row;
    xcrExisTotal.Value := F1.NumberRC[iRow,IdCols.ExisTotal];
end;

procedure TfrmDocs_Almacen.F1SelChange(Sender: TObject);
begin
    VerFoto;
    VerExistencia;
end;

procedure TfrmDocs_Almacen.MoverCursor(Key: Word;piTimes:Integer);
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
procedure TfrmDocs_Almacen.Timer2Timer(Sender: TObject);
begin
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

procedure TfrmDocs_Almacen.F1Enter(Sender: TObject);
begin
    pgcProducto.ActivePage := tshFoto;
end;

procedure TfrmDocs_Almacen.xsbAmpliarClick(Sender: TObject);
begin
    frmVerImagen := TfrmVerImagen.Create (Application);
    frmVerImagen.imgFoto.Picture  := imgFoto.Picture;
    frmVerImagen.ShowModal;
end;

procedure TfrmDocs_Almacen.cboTipoMovClick(Sender: TObject);
var tTipo:String;
begin
    tTipo := sm.NthWord (1,cboTipoMov.Text,['|']);
    tTipo := Trim(TTipo);

    try
        miTipo := sm.ToI(tTipo);
    except
        miTipo := 0;
    end;


    Tipo_Docto := 0;
    if miTipo = 1 then Tipo_Docto := 81; //Entradas
    if miTipo = 2 then Tipo_Docto := 82; //Salidas
    if miTipo = 3 then Tipo_Docto := 83; //Traspasos


    DM1.FillConceptosInv(cboNumConc.Items,miTipo);
    if cboNumConc.Items.Count > 0 then cboNumConc.ItemIndex := 0;

    Crear; // Inicio nuevo documento...

end;

procedure TfrmDocs_Almacen.cboNumConcClick(Sender: TObject);
begin
    mtNumConc := sm.NthWord (1,cboNumConc.Text,['|']);
end;

procedure TfrmDocs_Almacen.SelectDocsF1(ATipo_Docto: string);
begin

  if not Assigned(frmSelDocF2) then
    frmSelDocF2 := TfrmSelDocF2.Create(Application);

  frmSelDocF2.FechaIni := xdeFecha.Date - 150;
  frmSelDocF2.FechaFin := xdeFecha.Date + 1;
  frmSelDocF2.Tipo_Docto := ATipo_Docto; //'23';

  mrRes := frmSelDocF2.ShowModal;
  frmSelDocF2.Hide;
  Application.ProcessMessages;

// if (ATipo_Docto in ['1', '107', '23', '232', '233', '28', '282', '283']) then  {Facs y remisiones}
//   begin
     if mrRes = mrOk then begin
       VaciarPedidoF1;
       frmSelDocF2.unprepare;
     end;
//   end;

end;

procedure TfrmDocs_Almacen.VaciarPedidoF1;
var
  tAux, ptCod, ptDescri, ptComa, ptComa2, ptPedido, ptRD2,tDocs1,tDocs2,tMoneda,tMoneda2: string;
  i, iRow, iPos: integer;
  dPend,iDls, dCosto: Double;
begin
  if length(xceDocOrigen.Text) > 0 then
    ptComa := ','
  else
    ptComa := '';

  ptPedido := frmSelDocF2.Tipo_Docto+'-'+frmSelDocF2.NUMDOCTO;
  ptPedido := sm.Trim(ptPedido);
  if (pos(ptPedido, xceDocOrigen.Text) <= 0) and (length(ptPedido) > 0) then
    //Para no poner dos veces el pedido
    xceDocOrigen.Text := xceDocOrigen.Text + ptComa + ptPedido;

  tDocs1 := '23,232,233,28,282,283,30,302,303,107,';
  tDocs2 := '71,81,82,83,';

  tMoneda2 := Trim(frmSelDocF2.Moneda);
  tMoneda := Trim(sm.NthWord(1,cboMoneda.Text));

  //Detalle del Pedido
  iRow := GetNextRow;
  for i := 1 to frmSelDocF2.DetCount do
  begin
    F1.Row := iRow;
    ptCod := frmSelDocF2.F1Det.TextRC[i, 2];
    dPend := frmSelDocF2.F1Det.NumberRC[i, 3];
    ptDescri := frmSelDocF2.F1Det.TextRC[i, 4];
    tAux := frmSelDocF2.F1Det.TextRC[i, 1];
    if (length(tAux) > 0) and (length(ptCod) > 0) then begin
      F1.TextRC[iRow, IdCols.CodProdSer] := ptCod;
      GetProducto(ptCod);
      F1.NumberRC[iRow, IdCols.Unidades] := dPend;
      F1.TextRC[iRow, IdCols.DescripPro] := frmSelDocF2.F1Det.TextRC[i, 4];

      iPos := Pos(frmSelDocF2.Tipo_Docto+',',tDocs1);
      if (iPos > 0) then begin //Es un docto de Ventas;
        //  El precios de lista es el costo del producto, que lo pongo en "GetProducto"
        //  Y el descuento es siempre 0
        F1.NumberRC[iRow, IdCols.PorcDescAu] := 0;
      end;

      iPos := Pos(frmSelDocF2.Tipo_Docto+',',tDocs2);
      if (iPos > 0) then begin //Es un docto de Compra/Inventarios;
        F1.NumberRC[iRow, IdCols.PrecioLista] := frmSelDocF2.F1Det.NumberRC[i,7];
        F1.NumberRC[iRow, IdCols.PorcDescAu] := frmSelDocF2.F1Det.NumberRC[i,8];
      end;

      dCosto :=   F1.NumberRC[iRow, IdCols.PrecioLista];

      F1.TextRC[iRow, IdCols.DeNumTipoDoc] := frmSelDocF2.F1Det.TextRC[i, 20];
      F1.TextRC[iRow, IdCols.DeSerieDocto] := frmSelDocF2.Serie_Docto;
      F1.TextRC[iRow, IdCols.DeNumDocto] := frmSelDocF2.NumDocto;
      F1.TextRC[iRow, IdCols.DeNumMovto] := frmSelDocF2.F1Det.TextRC[i, 9];

      iDls := F1.NumberRC[iRow, IdCols.Es_Dls];
      if tMoneda = '1' then begin //Pesos en el Docto Destino
        if (tMoneda2 = '2') or ((tMoneda2='0' ) and (iDls=1)) then begin //Moneda del Docto Origen
          dCosto := dCosto * xcrTipoCambio.Value; //xcrTCInox.Value;
          F1.NumberRC[iRow, IdCols.CostoMov] := oProd.CTOREAL * xcrTipoCambio.Value; //xcrTipoCambio.value;
          F1.NumberRC[iRow, IDCols.PrecioLista] := dCosto;
//    F1.NumberRC[F1.Row, IdCols.Es_Dls] := 0;
        end;
      end;
      if tMoneda = '2' then begin //Dolares en el Docto Destino
        if (tMoneda2 = '1') or ((tMoneda2='0' ) and (iDls=0)) then begin  //Moneda del Docto Origen
          dCosto := dCosto / xcrTipoCambio.Value;
          F1.NumberRC[iRow, IdCols.CostoMov] := oProd.CTOREAL / xcrTipoCambio.value;
          F1.NumberRC[iRow, IDCols.PrecioLista] := dCosto;
//      F1.NumberRC[F1.Row, IdCols.Es_Dls] := 1;
        end;
      end;

    end;

      //Es comentario en la partida
    if (length(ptDescri) > 0) and (length(ptCod) <= 0) then begin
      F1.TextRC[iRow, IdCols.DescripPro] := frmSelDocF2.F1Det.TextRC[i, 4];
    end;

    iRow := iRow + 1;
    if iRow > F1.MaxRow then
      break;

  end;

  PonerFormulas;

end;




end.
