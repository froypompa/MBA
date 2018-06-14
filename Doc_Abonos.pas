unit Doc_Abonos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ShellAPI,
  TB2Dock, TB2Toolbar, ComCtrls, TB2ExtItems, TBXExtItems, TBX, AxCtrls, OleCtrls,
  StdCtrls, Mask, RxToolEdit, Menus, VCIF1Lib_TLB,IniFiles, LibApp, RxPlacemnt,
  RXCtrls, ExtCtrls, RXSpin, Constants_App,
  ESBDates, NumWords, StringLib,
  ClsPrintTxt,
  ClsCliente,
  ClsTablas,
  ClsMoneda,
  ClsParam,
  ClsDoc, ClsMailer,
  ClsAsociaDoc, ImgList, IB_Components, rxCurrEdit, TB2Item, RzEdit, RzPanel,
  RzLabel, ExtDlgs, TBXStatusBars;

//type TDocState = (edInsert, edBrowse, edCancel);
type
  TfrmDocAbo = class(TForm)
    dckSincro: TTBXDock;
    tlbMain: TTBXToolbar;
    tbtSalir: TTBXItem;
    pgcMain: TPageControl;
    tshDatosRecibo: TTabSheet;
    ToolbarSep972: TTBXSeparatorItem;
    tbtAsignar: TTBXItem;
    tbtGrabar: TTBXItem;
    PopupMenu1: TPopupMenu;
    Fonts1: TMenuItem;
    Numeros1: TMenuItem;
    Bordes1: TMenuItem;
    Alineacion1: TMenuItem;
    Rellenos1: TMenuItem;
    ToolbarSep977: TTBXSeparatorItem;
    tbtVer: TTBXItem;
    N1: TMenuItem;
    Preferencias1: TMenuItem;
    FormStorage1: TFormStorage;
    pnlDatos1: TPanel;
    pnlFolio: TPanel;
    xceFolio: TComboEdit;
    dteFecha: TDateEdit;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    pgcDoc: TPageControl;
    tshDetalle: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    xcrTotalSaldo: TCurrencyEdit;
    RxLabel3: TRxLabel;
    F1: TF1Book;
    tshDatosPago: TTabSheet;
    grpCheque: TGroupBox;
    Label9: TLabel;
    edtNumCheque: TEdit;
    tbrLimpiar: TTBXItem;
    Label16: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    xcrMonto: TCurrencyEdit;
    xceCodCteProv: TComboEdit;
    xceNombreCte: TComboEdit;
    Label2: TLabel;
    xceNumTipoDoc: TComboEdit;
    Label3: TLabel;
    xceNombreTipo: TComboEdit;
    RxLabel4: TRxLabel;
    xcrAsignado: TCurrencyEdit;
    tshAdicionales: TTabSheet;
    Panel3: TPanel;
    Label6: TLabel;
    cboMoneda: TComboBox;
    ImageList2: TImageList;
    tshNotaDev: TTabSheet;
    grpNotaDev: TGroupBox;
    Panel4: TPanel;
    Dock972: TTBXDock;
    Toolbar972: TTBXToolbar;
    tbtNinguno: TTBXItem;
    tbtInvertir: TTBXItem;
    tbtSel: TTBXItem;
    tbtTodos: TTBXItem;
    tbtRefrescarDet: TTBXItem;
    F1Det: TF1Book;
    Panel6: TPanel;
    RxLabel5: TRxLabel;
    xcrMontoDev: TCurrencyEdit;
    icuDet: TIB_Cursor;
    pnlConcepto: TPanel;
    RxLabel6: TRxLabel;
    mmoConcepto: TMemo;
    Label4: TLabel;
    xcrTotalDev: TCurrencyEdit;
    Label5: TLabel;
    xcrTotalAbo: TCurrencyEdit;
    Label7: TLabel;
    Label8: TLabel;
    tbtImprimir: TTBXItem;
    mmoDir: TMemo;
    RxLabel7: TRxLabel;
    xcrSubTotal: TCurrencyEdit;
    xcrIVA: TCurrencyEdit;
    RxLabel8: TRxLabel;
    RxLabel9: TRxLabel;
    xcrTotal: TCurrencyEdit;
    xlbCancelado: TRxLabel;
    tbtCancelar: TTBXItem;
    xcrTipoCambio: TCurrencyEdit;
    Label12: TLabel;
    xdeFecDepo: TDateEdit;
    Label10: TLabel;
    xcrPIVA: TCurrencyEdit;
    Label11: TLabel;
    TabSheet1: TTabSheet;
    RzPanel1: TRzPanel;
    mmzNC: TRzMemo;
    otf: TOpenTextFileDialog;
    TabSheet2: TTabSheet;
    RzPanel2: TRzPanel;
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
    TBXSeparatorItem1: TTBXSeparatorItem;
    tbtNE: TTBXItem;
    TabSheet3: TTabSheet;
    F2: TF1Book;
    tbtImprimirXLS: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    cboConcepto: TComboBox;
    Label15: TLabel;
    dfsStatusBar1: TTBXStatusBar;
    lblStatusBar1: TRzLabel;
    lblStatusBar2: TRzLabel;
    TBXSeparatorItem4: TTBXSeparatorItem;
    tbtChecarXML: TTBXItem;
    tbtVerPDF: TTBXItem;
    tbtVerCFDI: TTBXItem;
    procedure xcrPIVAExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbtVerClick(Sender: TObject);
    procedure Preferencias1Click(Sender: TObject);
    procedure F1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure axnLimpiar;
    procedure axnPrever;
    procedure axnImprimir;
    procedure tbtPreverClick(Sender: TObject);
    procedure tbtAsignarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SetUp;
    procedure Cancelar;
    procedure Grabar;
    procedure Leer;
    procedure SelectDocs;
    procedure tbtGrabarClick(Sender: TObject);
    procedure tbtSeleccionarClick(Sender: TObject);
    procedure F1EndRecalc(Sender: TObject);
    procedure xceOperadoraButtonClick(Sender: TObject);
    procedure Select(ptTabla:String;piOpcion: Integer;ptKey:String);
    function GetNextRow:Integer;
    procedure DisplayFolio;
    procedure SaveFolio;
    procedure DeleteRowsDetalle;
    procedure xceCodOpeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure xceCodigo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SelectCliente(piOpcion: Integer;ptKey:String);
    procedure xceCodCteProvButtonClick(Sender: TObject);
    procedure xceNombreCteButtonClick(Sender: TObject);
    procedure xceNumTipoDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure xceNumTipoDocButtonClick(Sender: TObject);
    procedure SelectTipoDoc(piOpcion: Integer;ptKey:String);
    procedure BuscaTipoDoc;
    procedure ListarDocs;
    procedure ListarAsoc;
    procedure xceCodCteProvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscaCliente;
    procedure AsignarPago;
    procedure F1StartEdit(Sender: TObject; var EditString: WideString;
      var Cancel: Smallint);
    procedure tbtListarClick(Sender: TObject);
    procedure xcrMontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure OpenDetalle;
    procedure Todo;
    procedure Nada;
    procedure Seleccion;
    procedure Invertir;
    procedure tbtTodosClick(Sender: TObject);
    procedure tbtNingunoClick(Sender: TObject);
    procedure tbtSelClick(Sender: TObject);
    procedure tbtInvertirClick(Sender: TObject);
    procedure tbtRefrescarDetClick(Sender: TObject);
    procedure F1DetKeyPress(Sender: TObject; var Key: Char);
    procedure F1DetStartEdit(Sender: TObject; var EditString: WideString;
      var Cancel: Smallint);
    procedure F1DetDblClick(Sender: TObject; nRow, nCol: Integer);
    procedure Calcula;
    procedure xsbSumarClick(Sender: TObject);
    procedure xcrMontoDevChange(Sender: TObject);
    procedure xcrMontoChange(Sender: TObject);
    procedure xcrTotalDevChange(Sender: TObject);
    procedure CalculaTotalAbo;
    procedure xcrAsignadoChange(Sender: TObject);
    procedure tbtImprimirClick(Sender: TObject);
    procedure xcrTotalAboChange(Sender: TObject);
    procedure xcrTotalChange(Sender: TObject);
    procedure F1DblClick(Sender: TObject; nRow, nCol: Integer);
    procedure tbrLimpiarClick(Sender: TObject);
    procedure xceFolioButtonClick(Sender: TObject);
    procedure xceFolioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbtCancelarClick(Sender: TObject);
    procedure cboMonedaClick(Sender: TObject);
    procedure GetTipoCambio;
    procedure GenerarNCElectronica;
    procedure tbtLigarClick(Sender: TObject);
    procedure Generar_CancelNotaCredito(var AErr:integer);
    procedure pgcMainChange(Sender: TObject);
    procedure tbtNEClick(Sender: TObject);
    procedure SetUpF1;
    procedure FillXls;
    procedure tbtImprimirXLSClick(Sender: TObject);
    procedure cboConceptoSelect(Sender: TObject);
    procedure GetClaveSAT(var ACodigo:String; var AClaveSAT:String; var AClaveUM:String);
    procedure UpdateControls;
    procedure SetMsg(AMsg: string; ABlink: Boolean  = False);
    procedure SetMsg2(AMsg: string; ABlink: Boolean  = False);
    procedure tbtChecarXMLClick(Sender: TObject);
    function VerificarXML:Integer;
    procedure tbtVerPDFClick(Sender: TObject);
    procedure GenerarPagoElectronico;
    procedure tbtVerCFDIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Tipo_Doctox:String;
    Serie_Docto:String;
    NumDocto:String;
    DetCount:integer;
  end;

const
    TABLA_CD  : String = '7';
    TABLA_EDO : String = '4';
    TABLA_AGE : String = '12';
    TABLA_TRA : String = '10';

var
  oDocAbono: TDoc;
  oDocCargo: TDoc;
  oDocDev: TDoc;
  oAso: TAsocia;
  oCte:TCliente;
  oTabla:TTabla;
  oMon:TMoneda;
  Tipo_Docto:Integer;
  edEstado:TDocState;
  frmDocAbo: TfrmDocAbo;
  iType:SmallInt;
  mfLook,mfShowMsg:Boolean;
  ColSet: set of 1..200;
  miRowIni:Integer = 3;
  miRowEnd,miRow,miFolio:Integer;
  mtOk:String = 'l';
  miRenIni:Integer = 1;
  mtLugarExp:String;
  mdIVA,mdIVA16:Double;
  mxFechaIVA:TDateTime;
  mtFechaIva:String;
  oMailer: TMailer;
  miType:smallint;

implementation

uses Main, StrMan, DM_MBA, OpcionesF1, SelDoc, SelCodDes, SelTabla,MsgError,FE332;

Const
    FMTFOLIO:String = '0000';
    MODULO:String = 'CAJA';

//Columnas del detalle del recibo
    cdNumTipoDoc:Integer = 10;
    cdSerieDocto:Integer = 2;
    cdNumDocto:Integer = 3;
    cdFecDocto:Integer = 4;
    cdMonto:Integer = 5;
    cdPendiente:Integer = 6;
    cdAsignado:Integer = 7;
    cdSaldo:Integer = 8;

var WCols: array[1..100] of integer;
    mrRes:Integer;

{$R *.DFM}

procedure TfrmDocAbo.FormCreate(Sender: TObject);
var tFile:String;
begin
//   tFile := LibApp.GetIniFile;
    oDocAbono := TDoc.Create;
    tFile := GetIniFile;
    oDocCargo := TDoc.Create;
    oDocDev := TDoc.Create;
    oAso := TAsocia.Create;
    oCte := TCliente.Create;
    oMon    := TMoneda.Create;
    oTabla  := TTabla.Create;
    oMailer := TMailer.Create;

  frmFE332 := TfrmFE332.Create(Application);
  frmFE332.Inicializar;
  frmFE332.CarpetaFormatos := oIni.ReadString('Directorios', 'Formatos','C:\@MBA\Fmt\');
  frmFE332.CarpetaCFDI     := oIni.ReadString('Directorios', 'CFDI','C:\@MBA\Fmt\');
  frmFE332.CarpetaCFDI2017 := oIni.ReadString('Directorios', 'CFDI2017','C:\@MBA\Fmt\');


    SetUp;
end;

procedure TfrmDocAbo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    FreeAndNil(oDocAbono);
    FreeAndNil(oDocCargo);
    FreeAndNil(oDocDev);
    FreeAndNil(oAso);
    FreeAndNil(oCte);
    FreeAndNil(oMon);
    FreeAndNil(oTabla);
    FreeAndNil(oMailer);

    FreeAndNil(frmFE332);

    frmDocAbo := nil;
    Action := caFree;
end;

procedure TfrmDocAbo.SetUp;
begin

    Tipo_Doctox:='71'; // Nota de Devolucion de Mercancia sobre venta
    Serie_Docto:='*';

    frmMsg.ClearAll;
    dteFecha.Date := Date;
    xceFolio.Text := '';

    pgcMain.ActivePageIndex := 0;

    oParam.CODPAR := 'LUGAREXP';
    mtLugarExp := oParam.VALORTXT;

{    oParam.CODPAR := 'FECHAIVA16';
    mtFechaIva := oParam.VALORTXT;
    mxFechaIva := ESBDates.Str2Date(mtFechaIva);

    oParam.CODPAR := 'IVA16';
    mdIVA16 := oParam.VALORNUM;
}
    oParam.CODPAR := 'IVA';
    mdIVA := oParam.VALORNUM;
    xcrPIVA.Value := mdIVA;

    pgcDoc.ActivePageIndex := 0;

//Encabezados de F1Det
    F1Det.ColText[1] := '*';
    F1Det.ColText[2] := 'Folio';
    F1Det.ColText[3] := 'Fecha';
    F1Det.ColText[4] := 'Referencia';
    F1Det.ColText[5] := 'Monto';

    F1Det.ShowTabs := 0;

   icuDet.SQL.Clear;
   icuDet.SQl.add ('Select * from mba10008_s14(?p_CodCteProv,?p_NumTipoDoc);');
   icuDet.Prepare;

   oMon.FillMoneda (cboMoneda);
   oMon.Fecha := dteFecha.Date;
   oMon.MONEDA := Trim(sm.NthWord (1,cboMoneda.Text));
   oDocAbono.MONEDADOCT := oMon.MONEDA;

    dteFecha.Date := Date;

    SetUpF1;
    UpdateControls;

end;

procedure TfrmDocAbo.SetUpF1;
var i,iMaxRows:Integer;
    tRow:String;
    tFile,tDir,tSel:String;
    Enca:TStringList;
begin

  tSel := F2.Selection;

    F1.Sheet := 1;
    F1.RowMode := True;
    F1.ShowSelections := F1On;
    if F1.NumSheets > 1 then begin
      F1.Sheet := 2;
      F1.RowMode := True;
      F1.ShowSelections := F1On;
      F1.Sheet := 1;
    end;

//======================================================
// Configurar Hoja F2....
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'Fmt_Abonos.xls';
    tFile := tDir+'\'+tFile;

    if not FileExists(tFile) then begin
        tFile := 'Rep_Vacio.xls';
        tFile := tDir+'\'+tFile;
    end;


    F2.Read (tFile,miType);

    F2.EnterMovesDown := False;
    F2.AllowDelete := False;
    F2.AllowTabs := False;
    F2.ShowEditBar := true;
end;

procedure TfrmDocAbo.UpdateControls;
begin
  tbtCancelar.Enabled := (oUser.UID > 0);
end;

procedure TfrmDocAbo.tbtSalirClick(Sender: TObject);
begin
    close;
end;

procedure TfrmDocAbo.tbtVerCFDIClick(Sender: TObject);
begin
  frmFE332.ShowModal;
end;

procedure TfrmDocAbo.tbtVerClick(Sender: TObject);
begin
    pgcMain.Visible := tbtVer.Checked;
end;

procedure TfrmDocAbo.tbtVerPDFClick(Sender: TObject);
var
  tFile:PAnsiChar;
begin
  tFile := PAnsiChar(frmFE332.CarpetaDataOut + frmFE332.ArchivoPDF);
  ShellExecute(Handle, 'open', tFile, nil, nil, SW_SHOWNORMAL);

end;

procedure TfrmDocAbo.Preferencias1Click(Sender: TObject);
var iRes :Integer;
begin
    frmOpcF1 := TFrmOpcF1.Create (Application);
    frmOpcF1.F1 := F1;
    iRes := frmOpcF1.showmodal;

end;

procedure TfrmDocAbo.F1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_DELETE:
        if ssCtrl in Shift then
            DeleteRowsDetalle
        else
            F1.ClearRange(F1.SelStartRow, F1.SelStartCol, F1.SelEndRow, F1.SelEndCol, F1ClearValues); //	Delete key
    end;

end;

procedure TfrmDocAbo.DeleteRowsDetalle;
var iRowsDel,iRow:Integer;
begin
    iRowsDel := F1.SelEndRow - F1.SelStartRow +1;
    F1.DeleteRange(F1.SelStartRow,1,F1.SelEndRow,F1.MaxCol,F1ShiftRows);
    iRow := GetNextRow;
    if iRow = 3 then begin
        F1.ClearRange(3,1,3,F1.MaxCol,F1ClearValues);
        iRow := 4;
    end;
    F1.InsertRange (iRow,1,iRow + iRowsDel - 1,F1.MaxCol,F1ShiftRows);
end;

procedure TfrmDocAbo.tbtPreverClick(Sender: TObject);
begin
    axnPrever;
end;

procedure TfrmDocAbo.tbtAsignarClick(Sender: TObject);
begin
    AsignarPago;
end;

procedure TfrmDocAbo.axnLimpiar;
begin
    F1.Sheet := 2;
    F1.ClearRange (miROWINI,1,499,F1.MaxCol,f1ClearValues);

    F1.Sheet := 1;
    F1.ClearRange (miROWINI,1,499,F1.MaxCol,f1ClearValues);
    F1.Row := miROWINI;
    F1.Col := 1;
    F1.TopRow := 1;
    F1.LeftCol := 1;

    F1Det.ClearRange (miRenIni,1,F1Det.MaxRow,F1.MaxCol,f1ClearValues);
    F1Det.Row := miRenIni;
    F1Det.Col := 1;
    F1Det.TopRow := 1;
    F1Det.LeftCol := 1;

    oDocAbono.Clear;
    oDocCargo.Clear;

    xceNumTipoDoc.Text := '';
    xceNombreTipo.Text := '';
    xceCodCteProv.Text := '';
    xceNombreCte.Text  := '';
    xcrMonto.Value := 0;
    xcrMontoDev.Value := 0;
    xceFolio.Text := '';
    dteFecha.Date := Date;

    xlbCancelado.visible := False;

    edtNumCheque.Text := '';
    xdeFecDepo.Text := '';
    mmoDir.Lines.Clear;
    mmoConcepto.Lines.Clear;


    oParam.CODPAR := 'IVA';
    mdIVA := oParam.VALORNUM;
    xcrPIVA.Value := mdIVA;

    edzSerie.Text := '';
    edzFolio.Text := '';
    edzFecha.Text := '';
    edzTotal.Text := '';
    edzemRFC.Text := '';
    edzreRFC.Text := '';
    edzUUID.Text  := '';

    mmzNC.Lines.Clear;

    pgcMain.ActivePageIndex := 0;
    xceNumTipoDoc.SetFocus;

    edEstado := edInsert;

    SetMsg('Listo!',False);
    SetMsg2('Listo!',False);

    SetUpF1;
    UpdateControls;

end;
procedure TfrmDocAbo.axnPrever;
begin
    try
        F1.FilePrintPreview;
    except
        MessageDlg('Imposible hacer la presentacion preliminar!', mtWarning,[mbOk], 0);

    end;

end;

procedure TfrmDocAbo.axnImprimir;
begin
    try
        F1.FilePrint(True);
    except
        MessageDlg('No es posible imprimir!', mtWarning,[mbOk], 0);
    end;

end;

procedure TfrmDocAbo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_DELETE:
        begin
            F1.ClearRange(F1.SelStartRow, F1.SelStartCol, F1.SelEndRow, F1.SelEndCol, F1ClearValues); //	Delete key
        end;

    VK_F5:
        begin
            AsignarPago;
        end;
    VK_F6:
        begin
            Grabar;
        end;
    VK_F7:
        begin
            //ImprimirDoc;
        end;

    else
    end;

end;

procedure TfrmDocAbo.DisplayFolio;
begin
//
end;

procedure TfrmDocAbo.SaveFolio;
begin
//    DM1.SetFolio (MODULO,oOpe.COD_OPE,miFolio);
end;

procedure TfrmDocAbo.ListarDocs;
begin
    oDocAbono.FillDocSaldo (F1);

end;
procedure TfrmDocAbo.ListarAsoc;
begin
    oDocAbono.FillDocAsoc (F1);

end;

procedure TfrmDocAbo.Leer;
var
    tTD:String;
begin
//    oDoc.FECDOCTO := xdeFecha.Date;

//    axnLimpiar;
    oDocAbono.NUMTIPODOC := Trim(xceNumTipoDoc.Text);
    oDocAbono.SERIEDOCTO  := '*';
    oDocAbono.NUMDOCTO := Trim(xceFolio.Text);

//    oDoc.Detalle := F1;

    oDocAbono.Retrieve;

    dteFecha.Date := oDocAbono.FECDOCTO;
    xdeFecDepo.date := oDocAbono.FECPOSPAGO;

    xceCodCteProv.Text := oDocAbono.CODCTEPROV;

    mdIVA := oDocAbono.PORCIVADOC;

    F1.Sheet := 1;
    BuscaCliente;
    F1.Recalc;
    F1.Sheet := 2;

    ListarAsoc;

    edtNumCheque.Text := oDocAbono.REFERDOCTO;
    mmoConcepto.Text := oDocAbono.OBSERVA;

    xcrMonto.Value := oDocAbono.IMPTOTALDO;

    F1.Sheet := 2;

    edEstado := edBrowse;

    // Cambio: 28/Jul/2003 Nueva Linea
    oDocAbono.Status := edEstado;

    xlbCancelado.Visible  := (oDocAbono.CANCELA  = '1');

    edzSerie.Text := oDocAbono.FESerie;
    edzFolio.Text := oDocAbono.FEFolio;
    edzFecha.Text := oDocAbono.FEFEcha;
    edzTotal.Text := oDocAbono.FETotal;
    edzemRFC.Text := oDocAbono.FEEMRFC;
    edzreRFC.Text := oDocAbono.FERERFC;
    edzUUID.Text  := oDocAbono.FEUUID;

  case Tipo_Docto of
    102..106: frmFE332.TipoDocto := 'PAG';
    13      : frmFE332.TipoDocto := 'NCR';
  else
    frmFE332.TipoDocto := 'XXX';
  end;

  frmFE332.Serie := 'A';
  frmFE332.Folio := xceFolio.Text;


end;

procedure TfrmDocAbo.Cancelar;
var wmr:Word;
    iErr:integer;
begin
    wmr := MessageDlg( 'Deseas cancelar el documento?',
                                  mtConfirmation,
                                  [mbYes, mbNo],
                                  0 );
    if (wmr = mrNo) then exit;

    if edEstado = edBrowse then begin

      if xceNumTipoDoc.Text = '13' then begin // Notas de Credito...
          Generar_CancelNotaCredito(iErr);
          if iErr > 0  then begin
            ShowMessage('La Cancelación de la Nota de Credito NO se aplicó debido al error en el Timbrado!!!');
            exit;
          end;
      end;
{      if xceNumTipoDoc.Text = 'xx' then begin // Pagos...
          Generar_CancelPagos(iErr);
          if iErr > 0  then exit;

      end;
}
        oDocAbono.NUMTIPODOC := Trim(xceNumTipoDoc.Text);
        oDocAbono.SERIEDOCTO  := '*';
        oDocAbono.NUMDOCTO := xceFolio.Text;

        oDocAbono.Cancel;

        xlbCancelado.Visible  := (oDocAbono.CANCELA  = '1');



    end;

    axnLimpiar;

end;

procedure TfrmDocAbo.Grabar;
var r:Integer;
    tNTD,tSD,tND,tNTDx,tOk:String;
    dAsignado:Double;
begin

    if (edEstado = edBrowse) and (not oDocAbono.Modificar)   then begin
        // NUNCA modificar una factura....
        frmMsg.ClearAll;
        frmMsg.AddError (1,'Este tipo de documentos NO se puede modificar',
                           'Verica con el supervisor si es posible modificar este tipo de documentos.',
                           '');
        frmMsg.ShowModal;
        exit;
    end;

    oDocAbono.Error := 0;
    oDocAbono.NUMTIPODOC := xceNumTipoDoc.Text;
    oDocAbono.SERIEDOCTO  := '*';
    oDocAbono.NUMDOCTO := xceFolio.Text;
    oDocAbono.FECDOCTO := dteFecha.Date + Time;
    oDocAbono.FECPOSPAGO := xdeFecDepo.date;
    oDocAbono.CODCTEPROV := xceCodCteProv.Text;
    oDocAbono.VIATRANS := '0';
    oDocAbono.NUMAGENTE := oCte.NUMAGENTE;
    oDocAbono.IMPNETODOC := xcrSubTotal.Value;
    oDocAbono.IMPIVADOCT := xcrIVA.Value;
    oDocAbono.PORCIVADOC := mdIVA;
    oDocAbono.IMPTOTALDO := xcrTotal.Value;
    oDocAbono.IMPPENDDOC := 0;
    oDocAbono.MONEDADOCT := Trim(sm.NthWord (1,cboMoneda.Text,['|']));
    oDocAbono.REFERDOCTO := edtNumCheque.Text;
    oDocAbono.OBSERVA := mmoConcepto.Text;

{ Asi estaba en forma erronea... 21/Feb/2003
    oDocAbono.IMPNETODOC := xcrTotal.Value;
    oDocAbono.IMPIVADOCT := xcrSubTotal.Value;;
    oDocAbono.PORCIVADOC := xcrIVA.Value;;
    oDocAbono.IMPTOTALDO := xcrTotal.Value;
... hay que hacer una rutina para cambiar el subtotal, iva, total...
}
    oDocAbono.Save;
    oDocAbono.Error := 0;

    if oDocAbono.Error > 0 then begin
        frmMsg.Messages := oDocAbono.Msg;
        frmMsg.Showmodal;
        exit;
    end;
//    frmMsg.AddMsg ('El Documento "' + oDocAbono.NUMDOCTO + '" actualizó correctamente!');

    // ===== Asociación de Documentos  ====
    tNTDx := '';
    for r := 3 to F1.LastRow do begin
        tNTD := Trim(F1.TextRC [r,cdNumTipoDoc]);
        dAsignado := F1.NumberRC [r,cdAsignado];

        //Salgo a la primera celda en blanco
        if (length(tNTD) <= 0) then break;
        if (dAsignado > 0) then begin

            tNTD := F1.TextRC [r,cdNumTipoDoc];
            tSD  := F1.TextRC [r,cdSerieDocto];
            tND  := F1.TextRC [r,cdNumDocto];
            if tNTD <> tNTDx then begin
                oDocCargo.NUMTIPODOC := tNTD;
                tNTDx := tNTD;
            end;

            //Para asociar, uso la cantidad que se abono a ese documento específico
            oDocAbono.IMPTOTALDO := dAsignado;

            oDocCargo.SERIEDOCTO := tSD;
            oDocCargo.NUMDOCTO   := tND;
            oDocCargo.FECDOCTO   := F1.numberRC [r,cdFecDocto];

            oAso.DocAbono := oDocAbono;
            oAso.DocCargo := oDocCargo;
            oAso.Asociar;
            oAso.error := 0;
            if oAso.Error <> 0 then begin
                frmMsg.AddError (2,'Error al asociar Docto # ' + oDocAbono.NumDocto,'','');
            end;

        end;

    end;

// ===== Marcar las Notas de Devolución como ya asignadas a una Nota de Credito  ====
    for r := 1 to DetCount do begin
        tOk := Trim(F1Det.TextRC [r,1]);

        if (tOk = mtOk) then begin

            tND  := F1Det.TextRC [r,2];
            oDocDev.NUMTIPODOC := Tipo_Doctox;
            oDocDev.SERIEDOCTO := '*';
            oDocDev.NUMDOCTO   := tND;
            oDocDev.updateClaseDoc(1,oDocAbono.NumDocto); //Marcar como asignado
        end;
    end;

// =====
//    frmMsg.ShowModal;
//    frmMsg.ClearAll;

// ====
  if xceNumTipoDoc.text = '13' then GenerarNCElectronica;
  if xceNumTipoDoc.text = '102' then GenerarPagoElectronico;
  if xceNumTipoDoc.text = '103' then GenerarPagoElectronico;
  if xceNumTipoDoc.text = '104' then GenerarPagoElectronico;
  if xceNumTipoDoc.text = '105' then GenerarPagoElectronico;
  if xceNumTipoDoc.text = '106' then GenerarPagoElectronico;


  axnLimpiar;

end;

procedure TfrmDocAbo.SelectDocs;
begin
    if not Assigned(frmSelDoc) then
        frmSelDoc := TfrmSelDoc.Create (Application);
    mrRes := frmSelDoc.ShowModal;
    if mrRes = mrOk then begin
    end;

    frmSelDoc.Hide;

end;

// Acciones Toolbar ------------------------------------
procedure TfrmDocAbo.tbrLimpiarClick(Sender: TObject);
begin
    axnLimpiar;
    edEstado := edInsert;
    //Cambio: 28/Jul/2003 Nueva linea
    oDocAbono.Clear;
    oDocAbono.Status := edEstado;
end;

procedure TfrmDocAbo.tbtCancelarClick(Sender: TObject);
begin
    Cancelar;
end;

procedure TfrmDocAbo.tbtChecarXMLClick(Sender: TObject);
begin
  VerificarXML;
  UpdateControls;


end;

procedure TfrmDocAbo.tbtGrabarClick(Sender: TObject);
begin
    Grabar;
end;
procedure TfrmDocAbo.tbtImprimirClick(Sender: TObject);
begin
    if (oDocAbono.PuedoModificar = 1) then
        Grabar;
    //ImprimirDoc;
    axnLimpiar;
end;


procedure TfrmDocAbo.tbtImprimirXLSClick(Sender: TObject);
begin
  F2.FilePrint(True);
end;

procedure TfrmDocAbo.tbtSeleccionarClick(Sender: TObject);
begin
    SelectDocs;
end;

procedure TfrmDocAbo.F1EndRecalc(Sender: TObject);
begin
    xcrTotalSaldo.Value := F1.NumberSRC[1,500,cdSaldo];
    xcrAsignado.Value := F1.NumberSRC[1,500,cdAsignado];

    FillXls;

end;

procedure TfrmDocAbo.xceOperadoraButtonClick(Sender: TObject);
begin
//    SelectOperadora(1,xceOperadora.Text);
end;

procedure TfrmDocAbo.Select(ptTabla:String;piOpcion: Integer;ptKey:String);
begin
    if not Assigned(frmSelTabla) then
        frmSelTabla := TfrmSelTabla.Create (Application);
    frmSelTabla.Tabla := ptTabla;
    frmSelTabla.Campo := piOpcion;

    frmSelTabla.Param1 := '';
    frmSelTabla.Param2 := '';

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

function TfrmDocAbo.GetNextRow:Integer;
var i,iMaxRows:Integer;
    tCon:String;
begin
    Result := -1;
    iMaxRows := F1.MaxRow;
    for i:= 3 to iMaxRows do begin
        tCon := F1.TextRC[i,1];
        tCon := sm.Strip (tCon);
        if length(tCon) <= 0 then begin
            Result := i;
            break;
        end;
    end;
end;

procedure TfrmDocAbo.xceCodOpeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_RETURN:
        begin
        end;
    end;
end;

procedure TfrmDocAbo.xceCodigo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_RETURN:
        begin
            SelectDocs;

        end;
    end;

end;

procedure TfrmDocAbo.SelectCliente(piOpcion: Integer;ptKey:String);
begin
    Select('MBA10002',piOpcion,ptKey);
    if mrRes = mrOk then begin
        xceCodCteProv.Text := frmSelTabla.Valores[1];
        BuscaCliente;
    end;


end;

procedure TfrmDocAbo.SelectTipoDoc(piOpcion: Integer;ptKey:String);
begin
    Select('MBA10006',piOpcion,ptKey);
    if mrRes = mrOk then begin
        xceNumTipoDoc.Text := frmSelTabla.Valores[1];
        xceNombreTipo.Text  := frmSelTabla.Valores[2];
        BuscaTipoDoc;
    end;


end;

procedure TfrmDocAbo.BuscaTipoDoc;
begin
    oDocAbono.Clear;
    oDocAbono.NUMTIPODOC := xceNumTipoDoc.Text;
    xceNombreTipo.Text := oDocAbono.NombreTipo;
    xceFolio.Text := oDocAbono.GetNextFolio;
    xlbCancelado.Visible := (oDocAbono.CANCELA = '1');
    Tipo_Docto := StrToInt(xceNumTipoDoc.Text);
    if Tipo_Docto = 13 then begin  // Las Notas de Credito llevan IVA
        oParam.CODPAR := 'IVA';
        mdIVA := oParam.VALORNUM;
//        if (mxFechaIva < Date) then  mdIVA := mdIVA16;
    end else begin
        mdIVA := 0;
    end;

  xceCodCteProv.SetFocus;  


end;

procedure TfrmDocAbo.BuscaCliente;
begin
    oCte.CODCTEPROV  := xceCodCteProv.Text;
    oCte.Retrieve;

    if Error <> 0 then exit;

    xceNombreCte.Text := oCte.RAZSOCIAL;
    oDocAbono.CODCTEPROV := oCte.CODCTEPROV;
    mmoDir.Lines := oCte.GetDireccion;

    ListarDocs;
    OpenDetalle;

end;

procedure TfrmDocAbo.AsignarPago;
var PorAsignar,ePend,eAsignado:Extended;
    r,iRenIni,iRenFin:integer;
begin



    PorAsignar := xcrTotalAbo.Value - xcrAsignado.Value;

    if PorAsignar <= 0 then begin
       frmMsg.AddError (1,'El Monto se ha asignado completamente!','','');
       frmMsg.ShowModal;
       frmMsg.ClearAll;
       exit;
    end;

    iRenIni := F1.SelStartRow;
    iRenFin := F1.SelEndRow;

    for r:= iRenIni to iRenFin do begin
        ePend := F1.NumberRC [r,cdPendiente];
        if PorAsignar >= ePend then
            eAsignado := ePend
        else
            eAsignado := PorAsignar;

        F1.NumberRC [r,cdAsignado] := eAsignado;
        PorAsignar := PorAsignar - eAsignado;

        if PorAsignar <= 0 then break;
    end;

    F1.SetFocus;

end;


procedure TfrmDocAbo.xceCodCteProvButtonClick(Sender: TObject);
begin
    SelectCliente(1,xceCodCteProv.Text);
end;

procedure TfrmDocAbo.xceNombreCteButtonClick(Sender: TObject);
begin
    SelectCliente(2,xceNombreCte.Text);
end;

procedure TfrmDocAbo.xceNumTipoDocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_F3: begin
               SelectTipoDoc(1,xceNumTipoDoc.Text);
            end;
    VK_F4:  begin
                SelectTipoDoc(2,xceNombreTipo.Text);
            end;
    VK_RETURN: BuscaTipoDoc;
    end;


end;

procedure TfrmDocAbo.xceNumTipoDocButtonClick(Sender: TObject);
begin
    SelectTipoDoc(1,xceNumTipoDoc.Text);

end;

procedure TfrmDocAbo.xceCodCteProvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_F3: begin
               SelectTipoDoc(1,xceNumTipoDoc.Text);
            end;
    VK_F4:  begin
                SelectTipoDoc(2,xceNombreTipo.Text);
            end;
    VK_RETURN: BuscaCliente;
    end;

end;

procedure TfrmDocAbo.F1StartEdit(Sender: TObject; var EditString: WideString;
  var Cancel: Smallint);
begin
    If F1.Col <> cdAsignado then Cancel := 1;
end;

procedure TfrmDocAbo.tbtLigarClick(Sender: TObject);
var
  fRes:Boolean;
begin
  fRes := otf.Execute;
  if fRes then begin
    frmFE332.LoadXMLFile(otf.FileName);
    frmFE332.GetInfo;
//    ShowMessage(frmFE.feDatos.Serie+#10+#13+frmFE.feDatos.Folio+#10+#13+frmFE.feDatos.Total);
    edzSerie.Text := frmFE332.Serie;
    edzFolio.Text := frmFE332.Folio;
    edzFecha.Text := ESBDates.Date2Str(frmFE332.Fecha);
    edzTotal.Text := sm.StrFloat(frmFE332.Total,'0');
    edzUUID.Text  := frmFE332.UUID;
    edzemRFC.Text := frmFE332.emRFC;
    edzreRFC.Text := frmFE332.reRFC;

    if oDocAbono.Docto_ID <= 0 then begin
      ShowMessage('Hay que grabar el documento antes de hacer la liga!');
      exit;

    end;
    oDocAbono.SaveFE(oDocAbono.DOCTO_ID,edzSerie.Text,edzFolio.Text,edzFecha.Text,edzTotal.Text,edzemRFC.Text,edzreRFC.Text,edzUUID.Text);

  end;

end;

procedure TfrmDocAbo.tbtListarClick(Sender: TObject);
begin
    ListarDocs;
end;

procedure TfrmDocAbo.xcrMontoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_RETURN: AsignarPago;
    end;

end;

procedure TfrmDocAbo.xcrPIVAExit(Sender: TObject);
begin
  mdIVA := xcrPIVA.Value;
  xcrTotalChange(nil);  
end;

procedure TfrmDocAbo.FormShow(Sender: TObject);
begin
    xceNumTipoDoc.SetFocus;

end;

{========================
  Rutinas del detalle de Notas de devoluciones
=========================}

procedure TfrmDocAbo.OpenDetalle;
var iRen:integer;
begin

   icuDet.ParamByName('p_CodCteProv').AsString := xceCodCteProv.Text;
   icuDet.ParamByName('P_NumTipoDoc').AsString := Tipo_Doctox;
   icuDet.Open;

   F1Det.ClearRange(1,1,F1Det.MaxRow,F1Det.MaxCol,F1ClearValues); //Datos Documentos

   DetCount := 0;
   iRen := 1;
    while not icuDet.Eof do begin
        F1Det.TextRC[iRen,2] := icuDet.FieldByName('NumDocto').AsString;
        F1Det.numberRC[iRen,3] := icuDet.FieldByName('FecDocto').AsDateTime;
        F1Det.TextRC[iRen,4] := icuDet.FieldByName('ReferDocto').AsString;
        F1Det.NumberRC[iRen,5] := icuDet.FieldByName('ImpTotalDo').AsDouble;

        iRen := iRen + 1;

        icuDet.Next;
    end;

    DetCount := iRen - 1;

    icuDet.Close;

    Calcula;

end;

procedure TfrmDocAbo.pgcMainChange(Sender: TObject);
begin

end;

//=====================================================

procedure TfrmDocAbo.Calcula;
var i:Integer;
    dMonto:Double;
begin
    dMonto := 0;
    for i:= miRenIni to DetCount do begin
        if F1Det.TextRC[i,1] = mtOk then
            dMonto := dMonto + F1Det.NumberRC[i,5];
    end;

    xcrMontoDev.Value := dMonto;

end;

procedure TfrmDocAbo.Todo;
var i:Integer;
begin
    for i:= miRenIni to DetCount do begin
        F1Det.TextRC[i,1] := mtOk;
    end;
    Calcula;
end;

procedure TfrmDocAbo.Nada;
var i:Integer;
begin
    for i:= miRenIni to DetCount do begin
        F1Det.TextRC[i,1] := '';
    end;
    Calcula;
end;

procedure TfrmDocAbo.Seleccion;
var i:Integer;
    iIni,iFin:Integer;
begin
    iIni := F1Det.SelStartRow;
    iFin := F1Det.SelEndRow;
    if iIni > DetCount then exit;
    if iFin > DetCount then iFin := DetCount;
    for i:= iIni to iFin do begin
        if F1Det.TextRC[i,1] = mtOk then
            F1Det.TextRC[i,1] := ''
        else
            F1Det.TextRC[i,1] := mtOk;
    end;
    Calcula;
end;

procedure TfrmDocAbo.Invertir;
var i:Integer;
begin
    for i:= miRenIni to DetCount do begin
        if F1Det.TextRC[i,1] = mtOk then
            F1Det.TextRC[i,1] := ''
        else
            F1Det.TextRC[i,1] := mtOk;
    end;
    Calcula;
end;

procedure TfrmDocAbo.tbtTodosClick(Sender: TObject);
begin
    Todo;
end;

procedure TfrmDocAbo.tbtNEClick(Sender: TObject);
begin
  if xceNumTipoDoc.text = '13' then GenerarNCElectronica;
  if xceNumTipoDoc.text = '102' then GenerarPagoElectronico;
  if xceNumTipoDoc.text = '103' then GenerarPagoElectronico;
  if xceNumTipoDoc.text = '104' then GenerarPagoElectronico;
  if xceNumTipoDoc.text = '105' then GenerarPagoElectronico;
  if xceNumTipoDoc.text = '106' then GenerarPagoElectronico;
end;

procedure TfrmDocAbo.tbtNingunoClick(Sender: TObject);
begin
    Nada;
end;

procedure TfrmDocAbo.tbtSelClick(Sender: TObject);
begin
    Seleccion;
end;

procedure TfrmDocAbo.tbtInvertirClick(Sender: TObject);
begin
    Invertir;
end;

procedure TfrmDocAbo.F1DetKeyPress(Sender: TObject; var Key: Char);
begin
    if F1Det.Col = 1 then begin
        if F1Det.TextRC[F1Det.Row,1] = mtOk then
            F1Det.TextRC[F1Det.Row,1] := ''
        else
            F1Det.TextRC[F1Det.Row,1] := mtOk;
        Key := #0;
    end;
    Calcula;
end;

procedure TfrmDocAbo.F1DetStartEdit(Sender: TObject;
  var EditString: WideString; var Cancel: Smallint);
begin
    if F1Det.Col <> 3 then Cancel := 1;
end;

procedure TfrmDocAbo.tbtRefrescarDetClick(Sender: TObject);
begin
    OpenDetalle;
end;

procedure TfrmDocAbo.F1DetDblClick(Sender: TObject; nRow, nCol: Integer);
begin
    Seleccion;
end;

procedure TfrmDocAbo.xsbSumarClick(Sender: TObject);
begin
    xcrMonto.value := xcrMonto.Value + xcrMontoDev.Value;
end;

procedure TfrmDocAbo.CalculaTotalAbo;
begin
    xcrTotalAbo.Value := xcrMonto.Value + xcrTotalDev.Value;
end;

procedure TfrmDocAbo.xcrMontoDevChange(Sender: TObject);
begin
    xcrTotalDev.Value := xcrMontoDev.Value;
end;

procedure TfrmDocAbo.xcrMontoChange(Sender: TObject);
begin
    CalculaTotalAbo;
end;

procedure TfrmDocAbo.xcrTotalDevChange(Sender: TObject);
begin
    CalculaTotalAbo;

end;

procedure TfrmDocAbo.xcrAsignadoChange(Sender: TObject);
begin
    if xcrAsignado.Value > xcrTotalAbo.Value then begin
       frmMsg.AddError (1,'El Monto Asignado NO puede ser MAYOR al Total del Abono!','','');
       frmMsg.ShowModal;
       frmMsg.ClearAll;
    end;
end;

procedure TfrmDocAbo.xcrTotalAboChange(Sender: TObject);
begin
    xcrTotal.Value := xcrTotalAbo.Value;
end;

procedure TfrmDocAbo.xcrTotalChange(Sender: TObject);
begin
    xcrSubTotal.Value := xcrTotal.Value / (1 + (mdIVA / 100));
    xcrIVA.Value := xcrTotal.VAlue - xcrSubTotal.Value;
end;

procedure TfrmDocAbo.F1DblClick(Sender: TObject; nRow, nCol: Integer);
begin
    AsignarPago;
end;

procedure TfrmDocAbo.xceFolioButtonClick(Sender: TObject);
begin
    Leer;
end;

procedure TfrmDocAbo.xceFolioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_RETURN: Leer;
    end;

end;

procedure TfrmDocAbo.cboConceptoSelect(Sender: TObject);
Var
  t:String;
begin
  t := sm.Purge(cboConcepto.Text,['|']);
  mmoConcepto.Text := mmoConcepto.Text + t;
end;

procedure TfrmDocAbo.cboMonedaClick(Sender: TObject);
begin
    GetTipoCambio;
//    oParam.CODPAR := 'IVA';
//    mdIVA := oParam.VALORNUM;
    //Usar IVa=16 despues de la fecha del iva (10/Ene/2010)
//    if (mxFechaIva < Date) then  mdIVA := mdIVA16;

// Lo quite a peticion de Juani --- 27/Jun/2012
{    if oDocAbono.MONEDADOCT <> '1' then begin
        mdIVA := 0
    end;
}
end;
procedure TfrmDocAbo.GetTipoCambio;
begin

    oMon.MONEDA := Trim(sm.NthWord (1,cboMoneda.Text));
    oMon.Fecha := dteFecha.Date;
    xcrTipoCambio.Value := oMon.GetTipoCambio;
    if (xcrTipoCambio.Value) <= 0 then xcrTipoCambio.Value := 1;
    oDocAbono.MONEDADOCT := oMon.MONEDA;
//    edtMoneda.Text := sm.NthWord (2,cboMoneda.Text,['|']);

end;

procedure TfrmDocAbo.GenerarNCElectronica;
var
  t,tAux,tCodPS,tNumMovto,tLetra,tSerie,tFile,tCodigo,tClaveSAT,tClaveUM:String;
  iRen,iMaxRow,iVacios,iNumMovto,iDias,AErr:Integer;
  dPrecioLista,dPrecioNeto,dCantidad,dTotal,dImpNetoDoc:Double;
  bFirst:Boolean;
begin

  frmFE332.Inicializar;
  frmFE332.Formato_NotaCredito := 'NCR33_BASE.xls';

  if length(mmoConcepto.Text) <= 0 then begin
    ShowMessage('El Concepto de la Nota de Credito esta vacío!!');
    exit;
  end;

  if frmFE332.DataOutExists > 0 then begin
    ShowMessage('La carpeta de la Factura Electrónica 2018 ('+frmFE332.CarpetaDataOut+') NO existe!'+#10+#13+
    'No es posible generar el documento'+#10+#13+
    'Avisale al encargado de Sistemas');
    exit;
  end;

  if frmFE332.DataOut2017Exists > 0 then begin
    ShowMessage('La carpeta de la Factura Electrónica 2017 ('+frmFE332.CarpetaCFDI2017+') NO existe!'+#10+#13+
    'No es posible generar el documento'+#10+#13+
    'Avisale al encargado de Sistemas');
    exit;
  end;
//-----------------------------------------------------------------------
//--- Obtener los datos del XML de la factura
//-----------------------------------------------------------------------
  AErr := 0;
    tSerie := 'A';
//    tAux := sm.PadLeft(oDocCargo.NUMDOCTO,9,'0');
    tAux := sm.PadLeft(F1.TextRC[F1.Row,3],9,'0');
    tFile:= 'FAC-'+tSerie+tAux+'.XML';
    AErr := frmFE332.LoadXMLFile(tFile);
    if AErr > 0 then begin
      ShowMessage('El archivo "'+tFile+'" NO existe en carpeta!!'+#10+#13+
      'No es posible generar la Nota de Credito.'+#10+#13+
      'Avisale al encargado de Sistemas');
      exit;
    end;

  frmFE332.GetInfo;
//-----------------------------------------------------------------------

    frmFE332.TipoDocto := 'NCR';
    frmFE332.Serie := 'A';
    frmFE332.Folio := xceFolio.Text;

    frmFE332.Preparar(2); //Hoja: Enca01
    frmFE332.SetVariable('vNombreCfdi',frmFE332.NombreCFDI);
    t := sm.StrFloat(oDocAbono.DOCTO_ID,'0');
    frmFE332.SetVariable('vRefId',t);
    frmFE332.SetVariable('vSerie','A');
    frmFE332.SetVariable('vFolio',xceFolio.Text);
    t := esbDates.Date2ISOEnhStr(dteFecha.Date)+ 'T' +ESBDates.Time2Str2(Time);
    frmFE332.SetVariable('vFecha',t);
    frmFE332.SetVariable('vSello','Sin Sello');
    frmFE332.SetVariable('vFormaPago','01');
    frmFE332.SetVariable('vNoCertificado','00001000000409196182');
    frmFE332.SetVariable('vCertificado','Sin certificado');
    frmFE332.SetVariable('vCondicionesDePago','CONTADO');

    t := sm.StrFloat(xcrSubTotal.Value,'0.00');
    frmFE332.SetVariable('vSubTotal',t);
    frmFE332.SetVariable('vDescuentoT','0.00');
    tAux := sm.Between('(',')',cboMoneda.Text);
    frmFE332.SetVariable('vMoneda',tAux);
    if tAux = 'MXN' then
      frmFE332.SetVariable('vTipoCambio','1')
    else begin
      t := sm.StrFloat(xcrTipoCambio.value,'0.000000');
      frmFE332.SetVariable('vTipoCambio',t);
    end;
    t := sm.StrFloat(xcrTotal.Value,'0.00');
    frmFE332.SetVariable('vTotal',t);
    frmFE332.SetVariable('vTipoDeComprobante','E');
    frmFE332.SetVariable('vMetodoPago','PUE');
    t := oemp.CODPOSTAL;
    frmFE332.SetVariable('vLugarExpedicion',t);
    frmFE332.Generar;

    frmFE332.Preparar(3); //Hoja: Enca02
    frmFE332.SetVariable('vTipoRelacion','01');
    frmFE332.SetVariable('vUUID',frmFE332.UUID);
    frmFE332.Generar;

    frmFE332.Preparar(4); //Hoja: Enca03
    t := oEmp.RFC;
    frmFE332.SetVariable('vEmiRFC',t);
    t := oEmp.RAZSOCIAL;
    frmFE332.SetVariable('vEmiNombre',t);
    t := oEmp.Regimen_Fiscal;
    frmFE332.SetVariable('vEmiRegimenFiscal',t);
    frmFE332.SetVariable('vRecRFC',oCte.RFC);
    frmFE332.SetVariable('vRecNombre',oCte.RAZSOCIAL);
//    frmFE332.SetVariable('vRecResidenciaFiscal',oCte.RESIDENCIA);
//    frmFE332.SetVariable('vRecNumRegIdTrib',oCte.IDTRIBUTARIO);
    frmFE332.SetVariable('vRecUsoCFDI','G02');
    frmFE332.Generar;
//Generar los Datos de Conceptos

    GetClaveSAT(tCodigo,tClaveSAT,tClaveUM);
    frmFE332.Partida.ClaveProdServ    := tClaveSAT;
    frmFE332.Partida.NoIdentificacion := tCodigo;
    frmFE332.Partida.Cantidad         := 1;
    frmFE332.Partida.ClaveUnidad      := tClaveUM;
    frmFE332.Partida.Unidad           := tClaveUM;
    frmFE332.Partida.Descripcion      := mmoConcepto.Text;
    frmFE332.Partida.ValorUnitario    := xcrSubTotal.Value;
    frmFE332.Partida.Importe          := xcrSubTotal.Value;
    frmFE332.Partida.PorcIVA          := xcrPIVA.Value;
    frmFE332.Partida.PorcIEPS         := 0;
    frmFE332.Partida.PorcRetIVA       := 0;
    frmFE332.Partida.IVA              := xcrIVA.Value;
    frmFE332.Partida.IEPS             := 0;
    frmFE332.Partida.RetIVA           := 0;
    frmFE332.Partida.NumeroPedimento  := '';
    frmFE332.InsertPartida;

//----------------------------------------------
// Final del documento: Impuestos, leyendas, etc.
//----------------------------------------------
// Datos adcionales del documento
    frmFE332.Preparar(7); //Hoja: Pie01
    t := sm.StrFloat(xcrIVA.Value,'0.00');
    frmFE332.SetVariable('vTotalImpuestosTrasladados',t);
    frmFE332.SetVariable('vTotTrasladosImpuesto','002');
    frmFE332.SetVariable('vTotTrasladosTipoFactor','Tasa');
    tAux := sm.StrFloat(xcrPIVA.Value/100,'0.000000');
    frmFE332.SetVariable('vTotTrasladosTasaOCuota',tAux);
    t := sm.StrFloat(xcrIVA.Value,'0.00');
    frmFE332.SetVariable('vTotTrasladosImporte',t);
    frmFE332.Generar;

    SetMsg2('Timbrando la Factura... (Se haran 3 intentos de 5 segundos cada uno)',True);

    frmFE332.Grabar_NotaCredito;

    if frmFE332.XMLOk then begin
      SetMsg2('Nota de Credito Timbrada!!! XML Generado!!!', False);
//    Clipboard.AsText := frmFE332.CarpetaDataOut + frmFE332.ArchivoPDF;
    //Mover el PDF generado por Mercurio. Para almacenar el original en carpeta Data\Pdf
    end else begin
      SetMsg2('Hubo ERROR al timbrar!!! Checa carpeta de diagnóstico!!!', False);
    end;

  UpdateControls;

  //frmFE332.ShowModal;

end;

procedure TfrmDocAbo.Generar_CancelNotaCredito(var AErr:integer);
var
  tAux,tCodPS,tNumMovto,tLetra,tFile,tSerie:String;
  iRen,iMaxRow,iVacios,iNumMovto,iDias,iErr:Integer;
  dPrecioLista,dPrecioNeto,dCantidad,dTotal,dImpNetoDoc:Double;
  bFirst:Boolean;
begin
  SetMsg2('Timbrando Nota de Credito...', True);

  if frmFE332.DataOutExists > 0 then begin
    ShowMessage('La carpeta de la Factura Electrónica NO existe!'+#10+#13+
    'Avisale al encargado de Sistemas');
    AErr :=1;
    SetMsg2('ERROR al Timbrar la cancelación de la Nota de Credito...', False);
    exit;
  end;

  frmFE332.Inicializar;
  frmFE332.Formato_CancelaNotaCredito := 'CNC33_BASE.xls';


  AErr := 0;
  tSerie := 'A'; //frmFE332.GetSerie(ATipo_Docto);
  tAux := sm.PadLeft(xceFolio.Text,9,'0');
  tFile:= 'NCR-'+tSerie+tAux+'.XML';
  AErr := frmFE332.LoadXMLFile(tFile);
  if AErr > 0 then begin
    ShowMessage('La Nota de Credito (XML) NO existe!' + #10 + #13+'Archivo: '+tFile);
    SetMsg2('ERROR al Timbrar Nota de Credito...', False);
    exit;
  end;
  frmFE332.GetInfo;

  frmFE332.TipoDocto := 'CNC';
  frmFE332.Serie := 'A';
  frmFE332.Folio := xceFolio.Text;

  frmFE332.Preparar(2); //Hoja: Enca01
  frmFE332.SetVariable('vUUID',frmFE332.UUID);
  frmFE332.SetVariable('vEmiRFC',frmFE332.emRFC);
  frmFE332.Generar;

  SetMsg2('Cancelando la Nota de Credito... (Se haran 3 intentos de 5 segundos cada uno)', True);
  AErr := frmFE332.Grabar_Cancelacion;

  if frmFE332.XMLOk then
  begin
    AErr := 0;
    SetMsg2('Nota de Credito Cancelada!!! XML de Cancelación Generado!!!', False);
  end
  else
  begin
    AErr := 1;
    SetMsg2('Hubo ERROR al CANCELAR la Nota de Credito!!! Checa carpeta de diagnóstico!!!', False);
  end;


//  frmFE332.ShowModal;

end;


procedure TfrmDocAbo.GenerarPagoElectronico;
var
  t,tAux,tCodPS,tNumMovto,tLetra,tSerie,tFile,tCodigo,tClaveSAT,tClaveUM:String;
  iRen,iMaxRow,iVacios,iNumMovto,iDias,AErr:Integer;
  dPrecioLista,dPrecioNeto,dCantidad,dTotal,dImpNetoDoc:Double;
  bFirst:Boolean;
begin

  // No implementado aun......
  exit;


  frmFE332.Inicializar;
  frmFE332.Formato_Pago := 'PAG33_BASE.xls';

  if length(mmoConcepto.Text) <= 0 then begin
    ShowMessage('El Concepto del Pago esta vacío!!');
    exit;
  end;

  if frmFE332.DataOutExists > 0 then begin
    ShowMessage('La carpeta de la Factura Electrónica 2018 NO existe!'+#10+#13+
    'No es posible generar el documento'+#10+#13+
    'Avisale al encargado de Sistemas');
    exit;
  end;

  if frmFE332.DataOut2017Exists > 0 then begin
    ShowMessage('La carpeta de la Factura Electrónica 2017 NO existe!'+#10+#13+
    'No es posible generar el documento'+#10+#13+
    'Avisale al encargado de Sistemas');
    exit;
  end;
//-----------------------------------------------------------------------
//--- Obtener los datos del XML de la factura
//-----------------------------------------------------------------------
  AErr := 0;
    tSerie := 'A';
//    tAux := sm.PadLeft(oDocCargo.NUMDOCTO,9,'0');
    tAux := sm.PadLeft(F1.TextRC[F1.Row,3],9,'0');
    tFile:= 'FAC-'+tSerie+tAux+'.XML';
    AErr := frmFE332.LoadXMLFile(tFile);
    if AErr > 0 then begin
      ShowMessage('El archivo "'+tFile+'" NO existe en carpeta!!'+#10+#13+
      'No es posible generar la Nota de Credito.'+#10+#13+
      'Avisale al encargado de Sistemas');
      exit;
    end;

  frmFE332.GetInfo;
//-----------------------------------------------------------------------

    frmFE332.TipoDocto := 'PAG';
    frmFE332.Serie := 'A';
    frmFE332.Folio := xceFolio.Text;

    frmFE332.Preparar(2); //Hoja: Enca01
    frmFE332.SetVariable('vNombreCfdi',frmFE332.NombreCFDI);
    t := sm.StrFloat(oDocAbono.DOCTO_ID,'0');
    frmFE332.SetVariable('vRefId',t);
    frmFE332.SetVariable('vSerie','A');
    frmFE332.SetVariable('vFolio',xceFolio.Text);
    t := esbDates.Date2ISOEnhStr(dteFecha.Date)+ 'T' +ESBDates.Time2Str2(Time);
    frmFE332.SetVariable('vFecha',t);
    frmFE332.SetVariable('vSello','Sin Sello');
    frmFE332.SetVariable('vFormaPago','01');
    frmFE332.SetVariable('vNoCertificado','00001000000405614757');
    frmFE332.SetVariable('vCertificado','Sin certificado');
    frmFE332.SetVariable('vCondicionesDePago','CONTADO');

    t := sm.StrFloat(xcrSubTotal.Value,'0.00');
    frmFE332.SetVariable('vSubTotal',t);
    frmFE332.SetVariable('vDescuentoT','0.00');
    tAux := sm.Between('(',')',cboMoneda.Text);
    frmFE332.SetVariable('vMoneda',tAux);
    if tAux = 'MXN' then
      frmFE332.SetVariable('vTipoCambio','1')
    else begin
      t := sm.StrFloat(xcrTipoCambio.value,'0.000000');
      frmFE332.SetVariable('vTipoCambio',t);
    end;
    t := sm.StrFloat(xcrTotal.Value,'0.00');
    frmFE332.SetVariable('vTotal',t);
    frmFE332.SetVariable('vTipoDeComprobante','E');
    frmFE332.SetVariable('vMetodoPago','PUE');
    t := oemp.CODPOSTAL;
    frmFE332.SetVariable('vLugarExpedicion',t);
    frmFE332.Generar;

    frmFE332.Preparar(3); //Hoja: Enca02
    frmFE332.SetVariable('vTipoRelacion','01');
    frmFE332.SetVariable('vUUID',frmFE332.UUID);
    frmFE332.Generar;

    frmFE332.Preparar(4); //Hoja: Enca03
    t := oEmp.RFC;
    frmFE332.SetVariable('vEmiRFC',t);
    t := oEmp.RAZSOCIAL;
    frmFE332.SetVariable('vEmiNombre',t);
    t := oEmp.Regimen_Fiscal;
    frmFE332.SetVariable('vEmiRegimenFiscal',t);
    frmFE332.SetVariable('vRecRFC',oCte.RFC);
    frmFE332.SetVariable('vRecNombre',oCte.RAZSOCIAL);
//    frmFE332.SetVariable('vRecResidenciaFiscal',oCte.RESIDENCIA);
//    frmFE332.SetVariable('vRecNumRegIdTrib',oCte.IDTRIBUTARIO);
    frmFE332.SetVariable('vRecUsoCFDI','G02');
    frmFE332.Generar;
//Generar los Datos de Conceptos

    GetClaveSAT(tCodigo,tClaveSAT,tClaveUM);
    frmFE332.Partida.ClaveProdServ    := tClaveSAT;
    frmFE332.Partida.NoIdentificacion := tCodigo;
    frmFE332.Partida.Cantidad         := 1;
    frmFE332.Partida.ClaveUnidad      := tClaveUM;
    frmFE332.Partida.Unidad           := tClaveUM;
    frmFE332.Partida.Descripcion      := mmoConcepto.Text;
    frmFE332.Partida.ValorUnitario    := xcrSubTotal.Value;
    frmFE332.Partida.Importe          := xcrSubTotal.Value;
    frmFE332.Partida.PorcIVA          := xcrPIVA.Value;
    frmFE332.Partida.PorcIEPS         := 0;
    frmFE332.Partida.PorcRetIVA       := 0;
    frmFE332.Partida.IVA              := xcrIVA.Value;
    frmFE332.Partida.IEPS             := 0;
    frmFE332.Partida.RetIVA           := 0;
    frmFE332.Partida.NumeroPedimento  := '';
    frmFE332.InsertPartida;

//----------------------------------------------
// Final del documento: Impuestos, leyendas, etc.
//----------------------------------------------
// Datos adcionales del documento
    frmFE332.Preparar(7); //Hoja: Pie01
    t := sm.StrFloat(xcrIVA.Value,'0.00');
    frmFE332.SetVariable('vTotalImpuestosTrasladados',t);
    frmFE332.SetVariable('vTotTrasladosImpuesto','002');
    frmFE332.SetVariable('vTotTrasladosTipoFactor','Tasa');
    tAux := sm.StrFloat(xcrPIVA.Value/100,'0.000000');
    frmFE332.SetVariable('vTotTrasladosTasaOCuota',tAux);
    t := sm.StrFloat(xcrIVA.Value,'0.00');
    frmFE332.SetVariable('vTotTrasladosImporte',t);
    frmFE332.Generar;

    SetMsg2('Timbrando el Recibo de Pago... (Se haran 3 intentos de 5 segundos cada uno)',True);

    frmFE332.Grabar_NotaCredito;

    if frmFE332.XMLOk then begin
      SetMsg2('Recibo de Pago Timbrado!!! XML Generado!!!', False);
//    Clipboard.AsText := frmFE332.CarpetaDataOut + frmFE332.ArchivoPDF;
    //Mover el PDF generado por Mercurio. Para almacenar el original en carpeta Data\Pdf
    end else begin
      SetMsg2('Hubo ERROR al timbrar!!! Checa carpeta de diagnóstico!!!', False);
    end;

  UpdateControls;




  //frmFE332.ShowModal;

end;

{$REGION 'Rutinas de Generacion Anteriores'}
{procedure TfrmDocAbo.GenerarNCElectronica_Old;
var
  tAux,tCodPS,tNumMovto,tLetra:String;
  iRen,iMaxRow,iVacios,iNumMovto,iDias:Integer;
  dPrecioLista,dPrecioNeto,dCantidad,dTotal,dImpNetoDoc:Double;
  bFirst:Boolean;
begin

  if frmFE.DataInExists > 0 then begin
    ShowMessage('La carpeta de la Factura Electrónica NO existe!'+#10+#13+
    'No es posible generar el documento'+#10+#13+
    'Avisale al encargado de Sistemas');
    exit;
  end;


  frmFE.ClearAll;
  frmFE.LoadNCFiles;

  bFirst := True;
//Datos Generales
  frmFE.AsignarEnca('folio',xceFolio.Text);
//Datos del Emisor
  frmFE.AsignarEnca('emRfc','ARO03042381A');
  frmFE.AsignarEnca('emNombre','ACEROS ROSCADOS, SA DE CV');
  frmFE.AsignarEnca('emCalle','ZAPOTLAN');
  frmFE.AsignarEnca('emNoExterior','306');
  frmFE.AsignarEnca('emColonia','Fracc. Gonzalitos');
  frmFE.AsignarEnca('emLocalidad','Monterrey');
  frmFE.AsignarEnca('emMunicipio','Monterrey');
  frmFE.AsignarEnca('emEstado','Nuevo Leon');
  frmFE.AsignarEnca('emPais','Mexico');
  frmFE.AsignarEnca('emCodigoPostal','64020');
  frmFE.AsignarEnca('emProveedor','');
  frmFE.AsignarEnca('emGLN','');
//  frmFE.AsignarPie('montoTotal','25500.00');
//Datos del Receptor
  frmFE.AsignarEnca('reRfc',oCte.RFC);
  frmFE.AsignarEnca('reNombre',oCte.RAZSOCIAL);
  frmFE.AsignarEnca('reCalle',oCte.CALLE);
  frmFE.AsignarEnca('reNoExterior',oCte.NUM_EXTERIOR);
  frmFE.AsignarEnca('reNoInterior',oCte.NUM_INTERIOR);

  tAux := oTabla.GetDescri (TABLA_CD,oCte.POBLACTE);
  frmFE.AsignarEnca('reLocalidad',tAux);
  frmFE.AsignarEnca('reMunicipio',tAux);

  tAux := oTabla.GetDescri (TABLA_EDO,oCte.ESTADOCTE);
  frmFE.AsignarEnca('reEstado',tAux);

//  tAux := oTabla.GetDescri (TABLA_PAIS,oCte.PAISCTE);
  tAux := 'MEXICO';
  frmFE.AsignarEnca('rePais',tAux);
  frmFE.AsignarEnca('reCodigoPostal',oCte.CODPOSTAL);
  frmFE.AsignarEnca('reNoCliente',oCte.CODCTEPROV);
  frmFE.AsignarEnca('reEMail',oCte.EMAIL);

//Generar los Datos de Conceptos
  frmFE.AsignarEnca('cantidad','1');
// NMo asigno unidad para que tome la que viene en el formato
//  frmFE.AsignarEnca('unidad','');
  frmFE.AsignarEnca('numIdentificacion','1');
  tAux := Trim(mmoConcepto.Text);
  if length(tAux) > 0 then
    frmFE.AsignarEnca('descripcion',mmoConcepto.Text);
  frmFE.AsignarEnca('valorUnitario',sm.StrFloat(xcrSubTotal.Value,'#.00'));
  frmFE.AsignarEnca('importe',sm.StrFloat(xcrSubTotal.Value,'#.00'));

// Generar el pie del documento
//Datos Complementarios
  tAux := sm.StrFloat(xcrSubTotal.Value,'0.00');
  frmFE.AsignarEnca('subtotalConceptos',tAux);
  tAux := sm.StrFloat(xcrSubTotal.Value,'0.00');
  frmFE.AsignarEnca('totalConceptos',tAux);
  frmFE.AsignarEnca('pagoForma','PAGO EN UNA SOLA EXHIBICION');

  frmFE.AsignarEnca('refID',sm.StrFloat(oDocAbono.DOCTO_ID,'#'));
  frmFE.AsignarEnca('tipoDocumento','Nota de Credito');
  frmFE.AsignarEnca('ordenCompra',edtNumCheque.Text);
  frmFE.AsignarEnca('agente',oDocAbono.NUMAGENTE);
  frmFE.AsignarEnca('observaciones',mmoConcepto.Text);

  tAux := cboMoneda.Text;
  tAux := sm.NthWord(2,tAux,['|']);
  frmFE.AsignarEnca('nombreMoneda',tAux);
  tAux := sm.StrFloat(xcrTipoCambio.Value,'0.00');
  frmFE.AsignarEnca('tipoCambio',tAux);


  frmFE.AsignarEnca('trasladadoImpuesto','IVA');
  tAux := sm.StrFloat(xcrIVA.Value,'0.00');
  frmFE.AsignarEnca('trasladadoImporte',tAux);
  tAux := sm.StrFloat(mdIVA,'0.00');
  frmFE.AsignarEnca('trasladadoTasa',tAux);
  tAux := sm.StrFloat(xcrIVA.Value,'0.00');
  frmFE.AsignarEnca('subtotalTrasladados',tAux);

  // Impuestos Locales
  tAux := sm.StrFloat(0,'0.00');
  frmFE.AsignarEnca('totalTraslados',tAux);
  tAux := sm.StrFloat(0,'0.00');
  frmFE.AsignarEnca('totalRetenciones',tAux);


  tAux := sm.StrFloat(xcrTotal.Value,'0.00');
  frmFE.AsignarEnca('montoTotal',tAux);

  if oDocAbono.MONEDADOCT = '1' then begin
      InWords.SelectLocale (CTRY_MEXICO,LANG_SPANISH);
      tLetra := InWords.Money (xcrTotal.Value,noEuro);
  end else begin
      InWords.SelectLocale (CTRY_UNITED_STATES,LANG_ENGLISH);
      tLetra := InWords.Money (xcrTotal.Value,noEuro);
  end;

  tLetra := upperCase(tLetra);
  tLetra := '**('+tLetra+')**';
  frmFE.AsignarEnca('montoTotalTexto',tLetra);

  frmFE.AddEnca;


  mmzNC.Lines := frmFE.mmzDoc.Lines;

  tAux := sm.PadLeft(xceFolio.Text,9,'0');
  frmFE.SaveFile('NCR-'+tAux+'.TXT');

// Insertarlo en la lista de correo

  oMailer.REFID    := oDocAbono.Docto_Id;
  oMailer.ESTATUS  := 0; // No enviado
  oMailer.ARCHIVO  := 'NCR-'+tAux;
  oMailer.FECHA    := dteFecha.Date;
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
{
procedure TfrmDocAbo.GenerarCancelElectronica(var AErr:integer);
var
  tAux,tCodPS,tNumMovto,tLetra,tSerie,tFile:String;
  iRen,iMaxRow,iVacios,iNumMovto,iDias,ATipo_Docto:Integer;
  dPrecioLista,dPrecioNeto,dCantidad,dTotal,dImpNetoDoc:Double;
  bFirst:Boolean;
begin
  AErr := 0;
  tAux := sm.PadLeft(xceFolio.Text,9,'0');
  tFile:= 'NCR-'+tAux+'.XML';
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
  frmFE.AsignarEnca('refID',sm.StrFloat(oDocAbono.Docto_Id,'#'));

  frmFE.AddEnca;

  mmzNC.Lines := frmFE.mmzDoc.Lines;

  tAux := sm.PadLeft(xceFolio.Text,9,'0');
  frmFE.SaveFile('cancelada_NCR-'+tAux+'.TXT');


end;
}
{$ENDREGION}
procedure TfrmDocAbo.FillXls;
var
  tFile,tDoc:String;
  r,r1:Integer;
  dAsigna:Double;
begin
  F2.TextRC[3,7] := xceFolio.Text;
  F2.NumberRC[4,7] := dteFecha.Date;

  F2.TextRC[6,4] := xceNombreTipo.Text;
  F2.TextRC[7,3] := xceCodCteProv.Text + ' ' + xceNombreCte.Text;
  F2.NumberRC[7,7] := xcrTotalAbo.Value;

  r1 := 10;
  for r := 3 to 1000 do begin
    tDoc := F1.TextRC[r,3];
    tDoc := Trim(tDoc);
    if length(tDoc) <=0 then break;
    dAsigna := F1.NumberRC[r,7];
    if dAsigna > 0 then  begin
      F2.TextRC[r1,2] := tDoc; //Tipo Docto
      F2.NumberRC[r1,3] := F1.NumberRC[r,4]; //Fecha
      F2.NumberRC[r1,4] := F1.NumberRC[r,5]; //Monto Docto
      F2.NumberRC[r1,5] := F1.NumberRC[r,6]; //Monto Pendiente
      F2.NumberRC[r1,6] := F1.NumberRC[r,7]; //Asignado
      F2.NumberRC[r1,7] := F1.NumberRC[r,8]; //Saldo
      r1 := r1 + 1;
    end;

  end;





end;

procedure TfrmDocAbo.GetClaveSAT(var ACodigo:String; var AClaveSAT:String; var AClaveUM:String);
var
  t,tCS:String;
  iPos:Integer;
begin
  ACodigo := '';
  AClaveSAT := '';
  t := mmoConcepto.Text;
  iPos := sm.Pos('NCR01',t);
  if iPos >  0 then begin
    ACodigo := 'NCR01';
    ACLaveSAT := '31162800';
    AClaveUM := 'H87';
    exit;
  end;
  iPos := sm.Pos('NCR03',t);
  if iPos >  0 then begin
    ACodigo := 'NCR03';
    ACLaveSAT := '78101802';
    AClaveUM := 'ACT';
    exit;
    end;
  iPos := sm.Pos('NCR02',t);
  if iPos >  0 then begin
    ACodigo := 'NCR02';
    ACLaveSAT := '84111506';
    AClaveUM := 'ACT';
    exit;
  end;

// Si no hay ninguna clave en la descipcion de la NCR
  if (iPos <= 0) and (length(ACodigo) = 0) then begin
    ACodigo := 'NCR02';
    ACLaveSAT := '84111506';
    AClaveUM := 'ACT';
  end;

end;
procedure TfrmDocAbo.SetMsg(AMsg: string; ABlink: Boolean = False);
begin
  lblStatusBar1.Caption := AMsg;
  lblStatusBar1.Blinking := ABlink;
end;
procedure TfrmDocAbo.SetMsg2(AMsg: string; ABlink: Boolean  = False);
begin
  lblStatusBar2.Caption := AMsg;
  lblStatusBar2.Blinking := ABlink;
end;

function TfrmDocAbo.VerificarXML:Integer;
var
  tSerie: string;
  tAux, tFile: string;
  AErr: Integer;
begin
  Result := 1;
  AErr := frmFE332.CheckXMLFile;
  if AErr = 0 then begin
    SetMsg2('Documento CFDI Timbrado!!! XML Generado!!!', False);
    Result := 0;
  end else begin
    ShowMessage('El archivo "' + frmFE332.CarpetaDataOut + frmFE332.ArchivoXML +
      '" NO Existe!!'#10 + #13 +
      'Espera unos 5 segundos y vuelve a intentar');
    Result := 1; //Error
  end;

end;



end.
