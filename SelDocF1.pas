unit SelDocF1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Db, DBTables, LibApp, IniFiles,
  IB_Components, TB2Dock, TB2Toolbar, TB2ExtItems, TBXExtItems, TBX, IB_Grid, RxPlacemnt, ImgList,
  IB_NavigationBar, IB_UpdateBar, RXCtrls, RXSplit, AxCtrls, OleCtrls, StrMan,
  VCIF1Lib_TLB, TB2Item;

{****************************************************************
Definicion de Objetos que se regresaran
****************************************************************}
type
  TfrmSelDocF1 = class(TForm)
    pnlMain: TPanel;
    ImageList2: TImageList;
    pnlDet: TPanel;
    F1Doc: TF1Book;
    Dock972: TTBXDock;
    Dock971: TTBXDock;
    Toolbar971: TTBXToolbar;
    tlbRefrescarDoc: TTBXItem;
    tlbAceptar: TTBXItem;
    Toolbar972: TTBXToolbar;
    tbtNinguno: TTBXItem;
    tbtInvertir: TTBXItem;
    RxSplitter1: TRxSplitter;
    tbtSel: TTBXItem;
    tbtTodos: TTBXItem;
    icuDoc: TIB_Cursor;
    icuDet: TIB_Cursor;
    F1Det: TF1Book;
    tbtRefrescarDet: TTBXItem;
    tbtCAncelar: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBControlItem1: TTBControlItem;
    chkPendientes: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tlbRefrescarDocClick(Sender: TObject);
    procedure tlbAceptarClick(Sender: TObject);
    procedure Aceptar;
    procedure Cancelar;
    procedure FormActivate(Sender: TObject);
    procedure edtKeyChange(Sender: TObject);
    procedure UnPrepare;
    procedure SetUp;
    procedure F1DocSelChange(Sender: TObject);
    procedure OpenDetalle;
    procedure Todo;
    procedure Nada;
    procedure Seleccion;
    procedure Invertir;
    procedure tbtTodosClick(Sender: TObject);
    procedure tbtNingunoClick(Sender: TObject);
    procedure tbtSelClick(Sender: TObject);
    procedure tbtInvertirClick(Sender: TObject);
    procedure F1DetKeyPress(Sender: TObject; var Key: Char);
    procedure F1DetStartEdit(Sender: TObject; var EditString: WideString;
      var Cancel: Smallint);
    procedure tbtRefrescarDetClick(Sender: TObject);
    procedure tbtCAncelarClick(Sender: TObject);
    procedure F1DetDblClick(Sender: TObject; nRow, nCol: Integer);
    procedure chkPendientesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    fldCodigo:String;
    fldDescri:String;
    TablaAnt:String;
    Codigox:String;
    Descrix:String;
  public
    { Public declarations }
    CodCteProv:String;
    RazSocial:String;
    Tipo_Docto:String;
    Serie_Docto:String;
    NumDocto:String;
    NumAgente:String;
    ViaTrans:String;
    DetCount:integer;
    ReferDocto2:String;
    Moneda:String;
    Almacen:String;
    Observa:String;
    MetodoPago:String;
    FormaPago:String;
    UsoCFDI:String;
    IdDirEntrega:Integer;
    procedure Open;
  end;

var
  frmSelDocF1: TfrmSelDocF1;
  miRen:Integer;
  miRenIni:Integer = 1;
  mtOk:String = 'l';
  mfLoading:Boolean;

implementation

uses Main, DM_MBA;

{$R *.DFM}

procedure TfrmSelDocF1.FormCreate(Sender: TObject);
begin
//    Setup;
//    Open;

end;

procedure TfrmSelDocF1.FormActivate(Sender: TObject);
begin
    Setup;
    Open;
    F1Doc.SetFocus;
end;

procedure TfrmSelDocF1.SetUp;
begin
    frmSelDocF1.Caption := 'Documentos de ' + CodCteProv + ' ' + RazSocial;
    if (Tipo_Docto = '23') or (Tipo_Docto = '232') or (Tipo_Docto = '233') then begin
        frmSelDocF1.Caption := 'Pedidos de ' + CodCteProv + ' ' + RazSocial;
    end;
    if (Tipo_Docto = '28') or (Tipo_Docto = '282') or (Tipo_Docto = '283') then begin
        frmSelDocF1.Caption := 'Remisiones de ' + CodCteProv + ' ' + RazSocial;
    end;
    if (Tipo_Docto = '30') or (Tipo_Docto = '302') or (Tipo_Docto = '303') then begin
        frmSelDocF1.Caption := 'Cotizaciones de ' + CodCteProv + ' ' + RazSocial;
    end;

//Encabezados de F1Doc
    F1Doc.ColText[1] := 'Numero';
    F1Doc.ColText[2] := 'Fecha';
    F1Doc.ColText[3] := 'Total $';
    F1Doc.ColText[4] := 'Pendiente $';
    F1Doc.ColText[5] := 'Agente';
    F1Doc.ColText[6] := 'Transp.';
    F1Doc.ColText[7] := 'SerieDocto';
    F1Doc.ColText[8] := 'O.Compra';
    F1Doc.ColWidth[8] := Trunc(F1Doc.ColWidth[8]*1.3); //30% mas ancha de lo que esta
    F1Doc.ColText[9] := 'Tipo_Docto';
    F1Doc.ColText[10] := 'Moneda';
    F1Doc.ColText[11] := 'Almacen';
    F1Doc.ColText[12] := 'Uso CFDI';
    F1Doc.ColText[11] := 'Observa';



//Encabezados de F1Det
    F1Det.ColText[1] := 'St';
    F1Det.ColText[2] := 'Codigo';
    F1Det.ColText[3] := 'Cantidad';
    F1Det.ColText[4] := 'Descripcion';
    F1Det.ColText[5] := 'Facturadas';
    F1Det.ColText[6] := 'Pendientes';
    F1Det.ColText[7] := 'Precio';
    F1Det.ColText[8] := '% Descto';
    F1Det.ColText[9] := 'NumMovto';

    F1Doc.ShowTabs := 0;
    F1Doc.ShowSelections := 1;

    F1Det.ShowTabs := 0;

end;
procedure TfrmSelDocF1.Open;
var iRen:integer;
begin

   F1Doc.ClearRange(1,1,F1Det.MaxRow,F1Det.MaxCol,F1ClearValues); //Datos Documentos

   icuDoc.SQL.Clear;
   icuDoc.SQl.add ('Select * from mba10008_s12(?p_CodCteProv,?p_NumTipoDoc);');
   icuDoc.Prepare;
   icuDoc.ParamByName('P_CODCTEPROV').AsString := CodCteProv;
   icuDoc.ParamByName('P_NUMTIPODOC').AsString := Tipo_Docto;


   icuDet.SQL.Clear;
   icuDet.SQl.add ('Select * from mba10010_s03(?p_NumTipoDoc,?p_SerieDocto,?p_NumDocto);');
   icuDet.Prepare;

   icuDoc.Open;

   iRen := 1;
    while not icuDoc.Eof do begin
        F1Doc.TextRC[iRen,1] := icuDoc.FieldByName('NumTipoDoc').AsString + '-'+icuDoc.FieldByName('NumDocto').AsString;
        F1Doc.numberRC[iRen,2] := icuDoc.FieldByName('FecDocto').AsDateTime;
        F1Doc.NumberRC[iRen,3] := icuDoc.FieldByName('ImpTotalDo').AsDouble;
        F1Doc.NumberRC[iRen,4] := icuDoc.FieldByName('ImpPendDoc').AsDouble;
        F1Doc.TextRC[iRen,5] := icuDoc.FieldByName('NumAgente').AsString;
        F1Doc.TextRC[iRen,6] := icuDoc.FieldByName('ViaTrans').AsString;
        F1Doc.TextRC[iRen,7] := icuDoc.FieldByName('SerieDocto').AsString;
        F1Doc.TextRC[iRen,8] := icuDoc.FieldByName('ReferDocto2').AsString;
        F1Doc.TextRC[iRen,9] := icuDoc.FieldByName('NumTipoDoc').AsString;
        F1Doc.TextRC[iRen,10] := icuDoc.FieldByName('MonedaDoct').AsString;
        F1Doc.TextRC[iRen,11] := icuDoc.FieldByName('NumAlmac').AsString;
        F1Doc.TextRC[iRen,12] := icuDoc.FieldByName('Observa').AsString;
        F1Doc.TextRC[iRen,13] := icuDoc.FieldByName('MetodoPago').AsString;
        F1Doc.TextRC[iRen,14] := icuDoc.FieldByName('FormaPago').AsString;
        F1Doc.TextRC[iRen,15] := icuDoc.FieldByName('UsoCFDI').AsString;
        F1Doc.NumberRC[iRen,16] := icuDoc.FieldByName('IdDirEntrega').AsInteger;

        iRen := iRen + 1;

        icuDoc.Next;
    end;

    F1Doc.Selection := 'A1';
    OpenDetalle;

end;

procedure TfrmSelDocF1.OpenDetalle;
var iRen:integer;
    dFac,dPed,dPen:Double;
    tCancela:String;
    v:Variant;
begin
    if not icuDet.Prepared then exit;

   NumDocto := sm.NthWord(2,F1Doc.TextRC[F1Doc.Row,1],['-']);
   Serie_Docto := F1Doc.TextRC[F1Doc.Row,7];
   NumAgente:= F1Doc.TextRC[F1Doc.Row,5];
   ViaTrans := F1Doc.TextRC[F1Doc.Row,6];
   ReferDocto2 := F1Doc.TextRC[F1Doc.Row,8];
   Tipo_Docto := F1Doc.TextRC[F1Doc.Row,9];
   Moneda := F1Doc.TextRC[F1Doc.Row,10];
   Almacen := F1Doc.TextRC[F1Doc.Row,11];
   Observa := F1Doc.TextRC[F1Doc.Row,12];
   MetodoPago := F1Doc.TextRC[F1Doc.Row,13];
   FormaPago := F1Doc.TextRC[F1Doc.Row,14];
   UsoCFDI := F1Doc.TextRC[F1Doc.Row,15];
   v := F1Doc.TextRC[F1Doc.Row,16];
   IdDirEntrega := v;

   icuDet.ParamByName('P_NumTipoDoc').AsString := Tipo_Docto;
   icuDet.ParamByName('P_SerieDocto').AsString := Serie_Docto;
   icuDet.ParamByName('P_NumDocto').AsString := NumDocto;
   icuDet.Open;

   F1Det.ClearRange(1,1,F1Det.MaxRow,F1Det.MaxCol,F1ClearValues); //Datos Documentos

   DetCount := 0;
   iRen := 1;
    while not icuDet.Eof do begin
      tCancela := icuDet.FieldByName('Cancela').AsString;
      if tCancela <> '2' then begin

        dFac := icuDet.FieldByName('UniFact').AsDouble;
        dPed := icuDet.FieldByName('Unidades').AsDouble;
        dPen := dPed - dFac;
        if (dPen > 0) or (not chkPendientes.Checked) then begin
            F1Det.TextRC[iRen,2] := icuDet.FieldByName('CodProdSer').AsString;
            F1Det.numberRC[iRen,3] := dPed;
            F1Det.TextRC[iRen,4] := icuDet.FieldByName('DescripPro').AsString;
            F1Det.NumberRC[iRen,5] := dFac;
            F1Det.NumberRC[iRen,6] := dPen;
            F1Det.NumberRC[iRen,7] := icuDet.FieldByName('Precio').AsDouble;
            F1Det.NumberRC[iRen,8] := icuDet.FieldByName('PorcDescAu').AsDouble;
            F1Det.TextRC[iRen,9] := icuDet.FieldByName('NumMovto').AsString;
            F1Det.NumberRC[iRen,10] := icuDet.FieldByName('Descto1').AsDouble;
            F1Det.NumberRC[iRen,11] := icuDet.FieldByName('Descto2').AsDouble;
            F1Det.NumberRC[iRen,12] := icuDet.FieldByName('Descto3').AsDouble;
            F1Det.NumberRC[iRen,13] := icuDet.FieldByName('Descto4').AsDouble;
            F1Det.NumberRC[iRen,14] := icuDet.FieldByName('Descto5').AsDouble;
            F1Det.NumberRC[iRen,15] := icuDet.FieldByName('Descto6').AsDouble;
            F1Det.NumberRC[iRen,16] := icuDet.FieldByName('Descto7').AsDouble;
            F1Det.NumberRC[iRen,17] := icuDet.FieldByName('Descto8').AsDouble;
            F1Det.NumberRC[iRen,18] := icuDet.FieldByName('Descto9').AsDouble;
            F1Det.NumberRC[iRen,19] := icuDet.FieldByName('Descto10').AsDouble;
            F1Det.TextRC[iRen,20] := Tipo_Docto;

            iRen := iRen + 1;
        end;
      end;
      icuDet.Next;
    end;

    DetCount := iRen - 1;

    icuDet.Close;

end;

procedure TfrmSelDocF1.UnPrepare;
begin
    icuDoc.Close;
    icuDoc.unprepare;
    icuDet.Close;
    icuDet.unprepare;
end;

procedure TfrmSelDocF1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caHide;
end;

procedure TfrmSelDocF1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of
    VK_RETURN: Aceptar;
    VK_ESCAPE: Cancelar;
end;
end;

procedure TfrmSelDocF1.Aceptar;
var i:Integer;
begin
    ModalResult := mrOk;
end;
procedure TfrmSelDocF1.Cancelar;
begin
    ModalResult := mrCancel;
end;

procedure TfrmSelDocF1.tlbAceptarClick(Sender: TObject);
begin
    Aceptar;
end;

procedure TfrmSelDocF1.tbtCAncelarClick(Sender: TObject);
begin
    Cancelar;
end;

procedure TfrmSelDocF1.tlbRefrescarDocClick(Sender: TObject);
begin
    Open;
end;


procedure TfrmSelDocF1.edtKeyChange(Sender: TObject);
var Campox:String;
begin
end;

procedure TfrmSelDocF1.F1DocSelChange(Sender: TObject);
begin
    if miRen <= 0 then
        miRen := F1Doc.Row;
    if miRen <> F1Doc.Row then begin
        miRen := F1Doc.Row;
        OpenDetalle;
    end;
end;
//=====================================================
procedure TfrmSelDocF1.Todo;
var i:Integer;
begin
    for i:= miRenIni to DetCount do begin
        F1Det.TextRC[i,1] := mtOk;
    end;
end;

procedure TfrmSelDocF1.Nada;
var i:Integer;
begin
    for i:= miRenIni to DetCount do begin
        F1Det.TextRC[i,1] := '';
    end;
end;

procedure TfrmSelDocF1.Seleccion;
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
end;

procedure TfrmSelDocF1.Invertir;
var i:Integer;
begin
    for i:= miRenIni to DetCount do begin
        if F1Det.TextRC[i,1] = mtOk then
            F1Det.TextRC[i,1] := ''
        else
            F1Det.TextRC[i,1] := mtOk;
    end;
end;

procedure TfrmSelDocF1.tbtTodosClick(Sender: TObject);
begin
    Todo;
end;

procedure TfrmSelDocF1.tbtNingunoClick(Sender: TObject);
begin
    Nada;
end;

procedure TfrmSelDocF1.tbtSelClick(Sender: TObject);
begin
    Seleccion;
end;

procedure TfrmSelDocF1.tbtInvertirClick(Sender: TObject);
begin
    Invertir;
end;

procedure TfrmSelDocF1.F1DetKeyPress(Sender: TObject; var Key: Char);
begin
    if F1Det.Col = 1 then begin
        if F1Det.TextRC[F1Det.Row,1] = mtOk then
            F1Det.TextRC[F1Det.Row,1] := ''
        else
            F1Det.TextRC[F1Det.Row,1] := mtOk;
        Key := #0;
    end;
end;

procedure TfrmSelDocF1.F1DetStartEdit(Sender: TObject;
  var EditString: WideString; var Cancel: Smallint);
begin
    if F1Det.Col <> 3 then Cancel := 1;
end;

procedure TfrmSelDocF1.tbtRefrescarDetClick(Sender: TObject);
begin
    OpenDetalle;
end;

procedure TfrmSelDocF1.F1DetDblClick(Sender: TObject; nRow, nCol: Integer);
begin
    Seleccion;
end;

procedure TfrmSelDocF1.chkPendientesClick(Sender: TObject);
begin
    OpenDetalle;
end;

end.
