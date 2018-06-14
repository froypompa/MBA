unit FormFisAct;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Procesos, RXCtrls, ProductoSearch, StdCtrls, Menus,
  IB_Components, RxPlacemnt, ComCtrls, TBXStatusBars, ExtCtrls, AxCtrls,
  OleCtrls, VCIF1Lib_TLB, IB_TransactionBar, TB2Dock, TB2Toolbar, TB2ExtItems, TBXExtItems, TBX,
  StrMan, MsgError, ClsDoc, Mask, RxToolEdit, FamiliaSearch, ESBDates,
  Constants_App, ClsParam, rxCurrEdit, TB2Item, RzButton, RzRadChk ;

type
  TfrmFisAct = class(TfrmProcesos)
    xsbListar: TRxSpeedButton;
    xsbMarcar: TRxSpeedButton;
    xsbEjecutar: TRxSpeedButton;
    pgcFamPro: TPageControl;
    tshFamilia: TTabSheet;
    fraFamilia1: TfraFamilia;
    tshProducto: TTabSheet;
    RxLabel1: TRxLabel;
    fraProducto1: TfraProducto;
    Label2: TLabel;
    cboNumAlmac: TComboBox;
    xcrSubTotal: TCurrencyEdit;
    xcrIVA: TCurrencyEdit;
    xcrTotal: TCurrencyEdit;
    Toolbar971: TTBXToolbar;
    ToolbarButton975: TTBXItem;
    ToolbarSep976: TTBXSeparatorItem;
    TBControlItem2: TTBControlItem;
    ToolbarSep978: TTBXSeparatorItem;
    ToolbarButton971: TTBXItem;
    RxLabel2: TRxLabel;
    chkCaptura: TRzCheckBox;
    isql1: TIB_DSQL;
    procedure btnAfectarClick(Sender: TObject);
    procedure xsbMarcarClick(Sender: TObject);
    procedure xsbListarClick(Sender: TObject);
    procedure xsbEjecutarClick(Sender: TObject);
    procedure xsbListarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure xsbMarcarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure xsbEjecutarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FrameMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure tbtEjecutarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PonerFormulas;
    procedure VaciarModificados;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure F1EndRecalc(Sender: TObject);
    procedure F1EndEdit(Sender: TObject; var EditString: WideString;
      var Cancel: Smallint);
    procedure tbtHelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetUpForm;
    procedure SetUpF1;
    procedure Ejecutar;
    procedure Listar;
    procedure Marcar;
    procedure LimpiarDetalle;
    procedure Grabar;
    procedure GrabarConteo;
  end;

var
  frmFisAct: TfrmFisAct;
  miRenIni,miRenFin,miRenCount:Integer;
  mdIVA:Double;
  oParam:TParam;
  Tipo_Docto:Integer;
  oDoc:TDoc;
  edEstado:TDocState;

implementation
uses Main, DM_MBA, Avance, HHelp;

{$R *.DFM}


procedure TfrmFisAct.FormCreate(Sender: TObject);
begin
  inherited;

  oDoc := TDoc.Create;
  oParam  := TParam.Create;
  oParam.CODPAR := 'IVA';
  mdIVA := oParam.VALORNUM;

  Tipo_Docto := 80; // Captura Inv. Fisico

end;

procedure TfrmFisAct.FormShow(Sender: TObject);
begin
  SetUpForm;
  self.SetUpF1;
end;

procedure TfrmFisAct.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  oParam.Free;
  oDoc.Free;
  fraFamilia1.Terminate;
  fraProducto1.Terminate;

  frmFisAct := nil;
  Action := caFree;
end;

procedure TfrmFisAct.SetUpForm;
begin

//    xlbNombre.Caption := '** Pasar el Inventario Fisico como Actual **';

    fraFamilia1.Initiate;
    fraProducto1.Initiate;

    DM1.FillAlmacen (cboNumAlmac);
    if cboNumAlmac.Items.Count > 0 then begin
//        cboNumAlmac.Items.Insert (0,'0  |Todos los almacenes');
        cboNumAlmac.ItemIndex := 0;
    end;
//    cboNumAlmacClick(nil);


end;

procedure TfrmFisAct.SetUpF1;
var i,iMaxRows,iCol:Integer;
    tSel,tRow:String;
begin
//  with frmProcesos do begin

  LoadXls('FMT_FISACTUAL');

  tSel := F1.Selection;
  F1.ShowSelections := F1Off;
  F1.Sheet := 1;
  for i := 1 to ctMaxColumn do begin
    F1.SetSelection (1,i,F1.MaxRow,i);
    F1.ColText[i] := ColFac[i].Header;
    F1.SetColWidth (i,i,ColFac[i].Width,False);
    F1.NumberFormat := ColFac[i].Format;
    F1.ColHidden[i] := ColFac[i].Hidden;
  end;

  F1.MaxRow := 500;

  F1.ShowSelections := F1Auto;
  F1.EnterMovesDown := True;

  PonerFormulas;

  F1.Sheet := 3;
    tSel := F1.Selection;

    iCol := 1;
    F1.SetSelection (1,iCol,F1.MaxRow,iCol);
    F1.ColText[iCol] := 'St';
    F1.SetColWidth (iCol,iCol,1000,False);
    F1.NumberFormat := '0';
    F1.FontColor := clBlue;
    F1.FontBold := True;

    iCol := 2;
    F1.SetSelection (1,iCol,F1.MaxRow,iCol);
    F1.ColText[iCol] := 'Codigo';
    F1.SetColWidth (iCol,iCol,4000,False);
    F1.NumberFormat := '';
    F1.FontColor := clRed;
    F1.FontBold := True;

    iCol := 3;
    F1.SetSelection (1,iCol,F1.MaxRow,iCol);
    F1.ColText[iCol] := 'Descripción';
    F1.SetColWidth (iCol,iCol,15000,False);
    F1.NumberFormat := '';

    iCol := 4;
    F1.SetSelection (1,iCol,F1.MaxRow,iCol);
    F1.ColText[iCol] := 'Conteo Fisico';
    F1.SetColWidth (iCol,iCol,5000,False);
    F1.NumberFormat := '#,##0.00';
    F1.ShowSelections := F1Auto;

    iCol := 5;
    F1.SetSelection (1,iCol,F1.MaxRow,iCol);
    F1.ColText[iCol] := 'Existencia';
    F1.SetColWidth (iCol,iCol,5000,False);
    F1.NumberFormat := '#,##0.00';
    F1.ShowSelections := F1Auto;
    iCol := 6;
    F1.SetSelection (1,iCol,F1.MaxRow,iCol);
    F1.NumberFormat := '#,##0.00';
    F1.ColText[iCol] := 'Costo';
    F1.SetColWidth (iCol,iCol,3000,False);
    iCol := 7;
    F1.ColText[iCol] := 'Uni Vta';
    F1.SetColWidth (iCol,iCol,3000,False);
    iCol := 8;
    F1.ColText[iCol] := 'Cod.Fam.';
    F1.SetColWidth (iCol,iCol,3000,False);
    iCol := 9;
//    F1.SetSelection (1,iCol,F1.MaxRow,iCol);
    F1.ColText[iCol] := 'Fecha Conteo Fisico';
    F1.SetColWidth (iCol,iCol,8000,False);
//    F1.NumberFormat := '#,##0.00';

    F1.ShowSelections := F1Auto;
//Configurar F1
      F1.AllowDelete := False;
      F1.ShowEditBar :=True;
      F1.ShowZeroValues := False;
      F1.EnterMovesDown := False;
//      F1.ShowTabs := 0;
      F1.Selection:= tSel;
//      F1.ShowTabs := F1TabsOff;


//  end;

end;

procedure TfrmFisAct.Listar;
var tCod,tMask1,tMask2,tNumAlmac,tFechaConteo:String;
    iRen,iSheet,iSht,iTipo:Integer;
    xFC:TDateTime;
begin

  tNumAlmac := sm.NthWord(1,cboNumAlmac.Text,['|']);
  tNumAlmac := sm.Strip(tNumAlmac);

  SetUpF1;

// Preparar hoja de impreison
  iSht := 4;
  F1.TextSRC[iSht,1,4]  := oEmp.RAZSOCIAL;
  F1.TextSRC[iSht,3,4]  := cboNumAlmac.Text;
  F1.TextSRC[iSht,2,7]  := ESBDates.Date2Str(Date);
  F1.TextSRC[iSht,3,7]  := ESBDates.Time2Str(Time);


  F1.Sheet := 3;


  with DM1 do begin
    F1.ClearRange(1,1,F1.MaxRow,F1.MaxCol,F1CLearValues);

    icuTemp.Close;
    icuTemp.SQL.Clear;
    icuTemp.Sql.Add('select * ');
    icuTemp.Sql.Add('from   MBA10004_S07(?p_NumAlmac, ?p_Codigo, ?p_Tipo);');
    icuTemp.Prepare;

    if pgcFamPro.ActivePageIndex = 1 then begin
      tMask1 := fraProducto1.xceCodProdSer.Text;
      iTipo := 1
    end else begin
      tMask1 := fraFamilia1.xceCodFam.Text;
      iTipo := 2

    end;

    icuTemp.ParamByName('p_NumAlmac').AsString := tNumAlmac;
    icuTemp.ParamByName('p_Codigo').AsString := tMask1;
    icuTemp.ParamByName('p_Tipo').AsSmallInt := iTipo;

    icuTemp.Open;
    iRen := 1;
    miRenIni := iRen;
    mirenCount := 0;
    while not icuTemp.Eof do begin

      tCod:= icuTemp.FieldByName('CodProdSer').asString;
      F1.TextRC[iRen,1] := '';
      F1.TextRC[iRen,2] := tCod;
      F1.TextRC[iRen,3] := icuTemp.FieldByName('DescripPro').asString;
      F1.numberRC[iRen,4] := icuTemp.FieldByName('ConteoFisi').asDouble;
      F1.numberRC[iRen,5] := icuTemp.FieldByName('Existencia').asDouble;
      F1.numberRC[iRen,6] := icuTemp.FieldByName('Costo').asDouble;
      F1.TextRC[iRen,7] := icuTemp.FieldByName('DescUniVta').asString;
      F1.TextRC[iRen,8] := icuTemp.FieldByName('CodFamilia').asString;
      //if F1.numberRC[iRen,4] > 0 then begin
        xFC := icuTemp.FieldByName('FecConteo').asDateTime;
        tFechaConteo := ESBDates.Date2StrShort2(xFC);
        tFechaConteo := tFechaConteo + ' '+ESBDates.Time2Str(xFC);
        F1.TextRC[iRen,9] := tFechaConteo;

      // Listar en el formato de impresion
      F1.TextSRC[iSht,iRen+5,2]  := tCod;
      F1.TextSRC[iSht,iRen+5,3]  := icuTemp.FieldByName('DescripPro').asString;
      F1.TextSRC[iSht,iRen+5,5]  := ''; //icuTemp.FieldByName('ConteoFisi').asDouble;
      F1.NumberSRC[iSht,iRen+5,6] := icuTemp.FieldByName('Existencia').asDouble;



      //end;
      icuTemp.Next;
      iRen := iRen + 1;
      miRenCount := miRenCount + 1;
    end;

    miRenFin := iRen - 1;
    icuTemp.Close;

    F1.SetFocus;
    F1.Selection := 'A1';
    F1.TopRow := 1;
    F1.LeftCol := 1;
  end;

end;

procedure TfrmFisAct.Marcar;
var s,r,c,iR1,iR2,iC1,iC2,selCount,iSt:Integer;
    tSum:String;
begin
//    with frmProcesos do begin
    selCount := F1.SelectionCount;
    for s := 0 to selCount -1 do begin

      F1.GetSelection (s,iR1,iC1,iR2,iC2);

      for r := iR1 to iR2 do begin
        iSt := Variant(F1.NumberRC[r,1]);
        if iSt <> 1 then
          F1.NumberRC[r,1] := 1
        else
          F1.TextRC[r,1] := '';
      end;
    end;
//  end;
end;

procedure TfrmFisAct.Ejecutar;
var tCod,tCod1,tCod2,tSt,tNumAlmac:String;
    iError,iRen,iCount:Integer;
begin

    tNumAlmac := sm.NthWord(1,cboNumAlmac.Text,['|']);
    tNumAlmac := sm.Strip(tNumAlmac);


 if DM1.trMBA2.InTransaction then
    DM1.trMBA2.RollBack;

 DM1.trMBA2.StartTransaction;

 DM1.ispCambios.Unprepare;
 DM1.ispCambios.AutoDefineParams := True;
 DM1.ispCambios.StoredProcName := 'Pro_FisicoActual';
 DM1.ispCambios.Prepare;

 miRenIni := 1;
 iRen := miRenIni;
//  with frmProcesos do begin
    tCod:= F1.TextRC[iRen,2];
    frmAvance.Show;

    iCount := 0;
    iError := 0;
    while (length(tCod) > 0) do begin
      tSt := F1.TextRC[iRen,1];
      tSt := Trim(tSt);
      if length(tSt) > 0 then begin
        DM1.ispCambios.ParamByName('p_NumAlmac').AsString := tNumAlmac;
        DM1.ispCambios.ParamByName('p_CodProdSer').AsString := tCod;
        DM1.ispCambios.ParamByName('p_User').AsString := oUser.Login;
        DM1.ispCambios.ExecProc;
        iCount := iCount + 1;
      end;

      iRen := iRen + 1;
      tCod:= F1.TextRC[iRen,2];

      frmAvance.Percent := iCount / miRenCount * 100;
      if frmAvance.Canceled then begin
        iError := 2; //Proceso Cancelado
        break;
      end;
//      Sleep(100);
    end;

    if iError > 0 then begin // Hubo algun error...
      DM1.trMBA2.Rollback;
      frmAvance.xlbMsg.Caption := 'ERROR: Los cambios NO se realizaron!!!';
    end else begin
//      DM1.trMBA2.Commit;
      frmAvance.xlbMsg.Caption := 'Se cambiaron EXITOSAMENTE ' +  IntToStr(iCount) + ' Articulos. ' + #10#13 +
                                  'Debes de Confirmar o Cancelar los cambios.' ;
    end;


    DM1.ispCambios.Unprepare;

    frmAvance.Finish(iError = 0);
//  end;

end;

procedure TfrmFisAct.Grabar;
var iSheet:integer;
begin

  iSheet := F1.Sheet;
  F1.Sheet := 1;

    PonerFormulas;

    oDoc.Clear;
    oDoc.Status := edInsert;
    oDoc.Error := 0;
    oDoc.NUMTIPODOC := sm.StrFloat (Tipo_Docto,'#');
    oDoc.SERIEDOCTO  := '*';
    oDoc.NUMDOCTO := 'INVE';  //Se asigna automaticamente en oDoc.Save;
    oDoc.FECDOCTO := Date;
    oDoc.CODCTEPROV := 'INVE';
    oDoc.NUMAGENTE := '';
    oDoc.VIATRANS :=  '';
    oDoc.DIAESP := '';
    oDoc.REFERDOCTO := '';
    oDoc.IMPDESCAUT := 0;
    oDoc.IMPNETODOC := xcrSubTotal.Value;
    oDoc.IMPIVADOCT := xcrIVA.Value;
    oDoc.PORCIVADOC := mdIVA;
    oDoc.IMPTOTALDO := xcrTotal.Value;
    oDoc.IMPPENDDOC := xcrTotal.Value;
    oDoc.NUMALMAC := Trim(sm.NthWord (1,cboNumAlmac.Text,['|']));
    oDoc.MONEDADOCT := '1';
    oDoc.TIPOCAMBIO := 0;
    oDoc.FECVENCEDO := date;
    oDoc.Detalle := F1;

    oDoc.Save;

    if oDoc.Error > 0 then begin
        frmMsg.Messages := oDoc.Msg;
        frmMsg.ShowAsk := False;
        frmMsg.ShowCancel := False;
        frmMsg.ShowModal;
        exit;
    end;

  F1.Sheet := iSheet;

end;


procedure TfrmFisAct.VaciarModificados;
var tAux,ptCod,ptComa,ptPedido:String;
    i,iRow:integer;
    dPend:Double;
begin

  LimpiarDetalle;
//Detalle del Pedido
    iRow := 1;
    for i := 1 to miRenCount do begin
        F1.Row := iRow;
        ptCod := F1.TextRC[i,2];
        tAux := F1.TextRC[i,1];
        if (length(ptCod) > 0) and (length(tAux) > 0) then begin
            F1.TextSRC[1,iRow,IdCols.CodProdSer] := ptCod;
//            GetProducto(ptCod);
            F1.TextSRC[1,iRow,IdCols.DescripPro] := F1.TextRC[i,3];
            F1.NumberSRC[1,iRow,IdCols.Unidades] := F1.NumberRC[i,4] - F1.NumberRC[i,5];
            F1.NumberSRC[1,iRow,IdCols.PrecioLista] := F1.NumberRC[i,6];
            F1.NumberSRC[1,iRow,IdCols.PorcDescAu] := 0;
            F1.NumberSRC[1,iRow,IdCols.PorcIVAMov] := mdIVA;
            F1.TextSRC[1,iRow,IdCols.CodFamilia] := F1.TextRC[i,8];
            iRow := iRow+1;

            if iRow > F1.MaxRow then break;

        end;
    end;

    PonerFormulas;

end;

procedure TfrmFisAct.GrabarConteo;
var tAux,ptCod,ptComa,ptPedido,tNumAlmac:String;
    i,iRow:integer;
    dConteo:Double;
    iError:Integer;
begin

  if not chkCaptura.Checked then exit;

  iError := 0;
  tNumAlmac := sm.NthWord(1,cboNumAlmac.Text,['|']);
  tNumAlmac := sm.Strip(tNumAlmac);
  isql1.Prepare;

//Grabar la cantidad capturada
    iRow := 1;
    for i := 1 to miRenCount do begin
        F1.Row := iRow;
        ptCod := F1.TextRC[i,2];
        tAux := F1.TextRC[i,1];
        if (length(ptCod) > 0) and (length(tAux) > 0) then begin
          dConteo := F1.NumberRC[i,4];
          isql1.ParamByName('NUMALMAC').AsString := tNumAlmac;
          isql1.ParamByName('CODPRODSER').AsString := ptCod;
          isql1.ParamByName('EXISINIPER').AsDouble := dConteo;
          isql1.ParamByName('CONTEOFISI').AsDouble := dConteo;
          isql1.ParamByName('FECCONTEO').AsDateTime := Date+Time;
          try
            isql1.Execute;
          except
            iError := 1;
            ShowMessage('Hubo error al grabar!'+#10+#13+'Al Grabar el conteo fisico');
            break;
          end;

          iRow := iRow+1;

          if iRow > F1.MaxRow then break;

        end;
    end;

end;

procedure TfrmFisAct.LimpiarDetalle;
var i:Integer;
    tRow:String;
begin

    i := F1.Sheet;
    F1.Sheet := 1;
    F1.ClearRange(1, 1, F1.MaxRow,F1.MaxCol, F1ClearValues);

    PonerFormulas;

    f1.Selection := 'A1';
    F1.Sheet := i;

end;


procedure TfrmFisAct.xsbMarcarClick(Sender: TObject);
begin
  Marcar;
end;

procedure TfrmFisAct.xsbListarClick(Sender: TObject);
begin
  Listar;
end;

procedure TfrmFisAct.xsbEjecutarClick(Sender: TObject);
var iRes:Integer;
begin
//  Ejecutar;
{  frmMsg.ClearAll;
  frmMsg.Style := smDefault;
  frmMsg.AddMsg('Este proceso hace un ajuste a las existencias del inventario.');
  frmMsg.AddMsg('Si el Inv. Físico es mayor a la existencia, se hace un ajuste de entrada,');
  frmMsg.AddMsg('Si el Inv. Físico es menor a la existencia, se hace un ajuste de salida.');
  frmMsg.AddMsg('En ambos casos, queda un registro de los ajustes realizados.');
  frmMsg.Question := '¿Desea continuar con el proceso?';
  frmMsg.ShowAsk := True;
  frmMsg.ShowCancel := True;
  iRes := frmMsg.ShowModal;
  if iRes = mrOk then begin
}
//--- CAMBIO FUERTE: FROYLAN POMPA G.
//17/May/2018  14:09
// Ahora cuando se haga conteo, solo inicializo existencias iniciales periodo y ya!!!
// NO hago el documento de ajuste y todo ese rollo.
//    VaciarModificados;
//    Grabar;
    GrabarConteo;
    xsbListarClick(nil);
{  end;    }
end;

procedure TfrmFisAct.btnAfectarClick(Sender: TObject);
begin
  Grabar;

end;


procedure TfrmFisAct.xsbListarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  frmProcesos.Msg := 'Lista los articulos de acuerdo al código capturado';
end;

procedure TfrmFisAct.xsbMarcarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  frmProcesos.Msg := 'Marca o Desmarca los articulos seleccionados';

end;

procedure TfrmFisAct.xsbEjecutarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  frmProcesos.Msg := 'Pasa la captura de inv. físico a actual de los articulos seleccionados';

end;

procedure TfrmFisAct.FrameMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  frmProcesos.Msg := '';

end;

procedure TfrmFisAct.tbtEjecutarClick(Sender: TObject);
begin
  Ejecutar;
end;

procedure TfrmFisAct.PonerFormulas;
var i,iRen,iCol,iMaxRows,iMaxCols,iSheet:Integer;
    tSel,tF1,tF2,tF3,tFor,tRow,tCol:String;
begin
  iSheet := F1.Sheet;
  tSel := F1.Selection;

  F1.Sheet := 1;
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

  F1.Sheet := iSheet;
  F1.Selection := tSel;

  F1.Recalc;

end;



procedure TfrmFisAct.F1EndRecalc(Sender: TObject);
begin
  inherited;
    xcrSubTotal.Value := F1.NumberSRC[2,1,1];
    xcrIVA.Value := xcrSubTotal.Value * (mdIVA/100);
    xcrTotal.Value := xcrSubTotal.Value + xcrIVA.Value;

end;

procedure TfrmFisAct.F1EndEdit(Sender: TObject; var EditString: WideString;
  var Cancel: Smallint);
begin
  inherited;
  F1.NumberRC[F1.Row,1] := 1;
end;

procedure TfrmFisAct.tbtHelpClick(Sender: TObject);
begin
  inherited;
    ShowHelp('frmFisAct01');

end;

end.
