unit Ubicaciones_Generar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TB2Dock, TB2Toolbar, ComCtrls, TB2ExtItems, TBXExtItems, TBX, AxCtrls, OleCtrls,
  StdCtrls, Mask, RxToolEdit, Menus, VCIF1Lib_TLB,IniFiles, LibApp, RxPlacemnt,
  RXCtrls, ExtCtrls, RXSpin, ProductoSearch, FamiliaSearch, HHelp,
  rxCurrEdit, TB2Item, IB_Components, RzEdit, RzSpnEdt, RzLabel, RzPanel, RzTabs;

type
  TfrmUbicaciones_Generar = class(TForm)
    dckSincro: TTBXDock;
    tlbMain: TTBXToolbar;
    tbtSalir: TTBXItem;
    tbtImprimir: TTBXItem;
    tbtPrever: TTBXItem;
    tbtGrabar: TTBXItem;
    tbtAbrir: TTBXItem;
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
    isqlIns: TIB_DSQL;
    isqlDel: TIB_DSQL;
    itmAyuda: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    pgcSincro: TRzPageControl;
    tshCriterios: TRzTabSheet;
    tshOpciones: TRzTabSheet;
    RzPanel1: TRzPanel;
    lbzEsquema: TRzLabel;
    sedEsquema: TRzSpinEdit;
    fraFamilia1: TfraFamilia;
    pgcMain: TRzPageControl;
    tshCaptura: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    F1: TF1Book;
    TBXSeparatorItem3: TTBXSeparatorItem;
    F2: TF1Book;
    lblEsquema: TRzLabel;
    icu1: TIB_Cursor;
    tbtGenReporte: TTBXItem;
    tbtImpReporte: TTBXItem;
    tbtGrabarXls: TTBXItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtSalirClick(Sender: TObject);
    procedure LoadXLS;
    procedure LoadXLS2;
    procedure FormCreate(Sender: TObject);
    procedure Preferencias1Click(Sender: TObject);
    procedure LeerTablas;
    procedure GrabarTablas;
    procedure tbtLeerClick(Sender: TObject);
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
    procedure tbtAbrirClick(Sender: TObject);
    procedure tbtGrabarClick(Sender: TObject);
    procedure tbtPreverClick(Sender: TObject);
    procedure tbtImprimirClick(Sender: TObject);
    procedure tbtAfectarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpdateControls(Sender: TObject);
    procedure itmAyudaClick(Sender: TObject);
    procedure sedEsquemaChange(Sender: TObject);
    procedure fraFamilia1xceCodFamKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GenerarReporte;
    procedure tbtGenReporteClick(Sender: TObject);
    procedure tbtImpReporteClick(Sender: TObject);
    procedure tbtGrabarXlsClick(Sender: TObject);
    procedure axnGrabarXls;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const   UPD:Integer = 1;
        DEL:Integer = 0;

var
  frmUbicaciones_Generar: TfrmUbicaciones_Generar;
  iType:SmallInt;
  mfLook,mfShowMsg:Boolean;
  ColSet: set of 1..200;
  miRowIni:Integer = 8;
  miRowEnd:Integer;
  oIni:TIniFile;
  mrRes:Integer;
  aEsq  : array[0..3] of String;
  aTabla: array[1..3] of String;

implementation

uses Main, OpcionesF1, StrMan, SelTabla, DM_MBA, TablasComis;

var WCols: array[1..100] of integer;
{$R *.DFM}

procedure TfrmUbicaciones_Generar.FormCreate(Sender: TObject);
var tFile:String;
begin
    tFile := LibApp.GetIniFile;
    oIni := TIniFile.Create (tFile);

    LoadXLS;
//  Columnas que no se pueden modificar en el F1...
    ColSet := [1];

  fraFamilia1.Initiate;
  frafamilia1.OnRetrieve :=UpdateControls;

  icu1 := TIB_Cursor.Create(nil);
  icu1.IB_Connection := DM1.cnMBA;
  icu1.IB_Transaction := DM1.trMBA;

  isqlIns:= TIB_DSQL.Create(DM1);
  isqlIns.IB_Connection := DM1.cnMBA;
  isqlIns.IB_Transaction := DM1.trMBA;

  isqlDel:= TIB_DSQL.Create(DM1);
  isqlDel.IB_Connection := DM1.cnMBA;
  isqlDel.IB_Transaction := DM1.trMBA;

  with icu1 do begin
    SQL.Clear;
    Sql.Add ('SELECT  ');
    Sql.Add ('  A.ID, A.HOJA, A.REN, A.CODFAMILIA, B.DESCRIPFAM, A.ESQUEMA, A.LIMITEINF, A.LIMITESUP, A.PORCENTAJE, A.OBSERVACIONES, FHACT, USERACT  ');
    Sql.Add ('FROM TABLACOMIS A ');
    Sql.Add ('JOIN MBA10040 B ON (A.CODFAMILIA = B.CODFAM) ');
    Sql.Add ('WHERE  (A.ESQUEMA = ?ESQUEMA) ');
    Sql.Add ('ORDER BY A.CODFAMILIA,A.HOJA,A.LIMITEINF; ');
    Prepare;
  end;

  with isqlIns do begin
    SQL.Clear;
    Sql.Add ('INSERT INTO TABLACOMIS ');
    Sql.Add ('  ( ID, HOJA, REN, CODFAMILIA, ESQUEMA, LIMITEINF, LIMITESUP, PORCENTAJE, OBSERVACIONES, FHACT, USERACT) VALUES ');
    Sql.Add ('  (?ID, ?HOJA,?REN,?CODFAMILIA,?ESQUEMA,?LIMITEINF,?LIMITESUP,?PORCENTAJE,?OBSERVACIONES,?FHACT,?USERACT);');
    Prepare;
  end;

  with isqlDel do begin
    SQL.Clear;
    Sql.Add ('DELETE FROM TABLACOMIS ');
    Sql.Add ('  WHERE (CODFAMILIA = ?CODFAMILIA) AND (ESQUEMA = ?ESQUEMA);');
    Prepare;
  end;

  aEsq[0] := 'Vendedores Comisionistas';
  aEsq[1] := 'Vendedores Especializados';
  aEsq[2] := 'Vendedores Telemarketing';
  aEsq[3] := 'Por Definir';

  aTabla[1] := 'Tabla de Comisiones por Descuento';
  aTabla[2] := 'Tabla de Comisiones por Margen';
  aTabla[3] := 'Tabla de Comision Base por Dias Vencidos';

  sedEsquema.Value := 0;
  sedEsquemaChange(nil);

  UpdateControls(nil);

end;

procedure TfrmUbicaciones_Generar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    oIni.Free;
    frmTablasComis := nil;
    Action := caFree;
end;

procedure TfrmUbicaciones_Generar.tbtSalirClick(Sender: TObject);
begin
    close;
end;

procedure TfrmUbicaciones_Generar.tbtGrabarXlsClick(Sender: TObject);
begin
  axnGrabarXls;
end;

procedure TfrmUbicaciones_Generar.LoadXLS;
var tFile,tDir:String;
begin
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'FMT_TABLASCOMIS.xls';
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

end;

procedure TfrmUbicaciones_Generar.LoadXLS2;
var tFile,tDir:String;
begin
    tDir := oINi.ReadString ('Directorios','Formatos',''); //   ExtractFileDir(ParamStr(0));
    tFile := 'FMT_TablasComisImpre.xls';
    tFile := tDir+'\'+tFile;
    F2.Read (tFile,iType);
    F2.FixedRows := 6;
    miRowIni := F2.FixedRows + 1;
    F2.PrintTitles := 'A2:IV6';
    F2.Sheet :=1;
    F2.TextRC[2,2] := oEmp.RAZSOCIAL;
    F2.AllowDelete := False;
    F2.ShowEditBar := True;
    F2.Modified := False;

end;

procedure TfrmUbicaciones_Generar.UpdateControls(Sender: TObject);
begin
  if fraFamilia1.FOUND then begin
    LeerTablas;
  end else begin

  end;

  tbtAbrir.Enabled := fraFamilia1.FOUND;
  tbtGrabar.Enabled:= tbtAbrir.Enabled;

end;

procedure TfrmUbicaciones_Generar.Preferencias1Click(Sender: TObject);
var iRes :Integer;
begin
    frmOpcF1 := TFrmOpcF1.Create (Application);
    frmOpcF1.F1 := F1;
    iRes := frmOpcF1.showmodal;

end;

procedure TfrmUbicaciones_Generar.sedEsquemaChange(Sender: TObject);
begin
  lblEsquema.caption := aEsq[sedEsquema.IntValue];
end;

procedure TfrmUbicaciones_Generar.LeerTablas;
var i:Integer;
    iRecCount,iRec,iSheet:Integer;
    tFiltro,tKey,tTipoProd,tSel,tP1,tP2,tCodIni,tCodFin:String;
    fFound,fBorrado:Boolean;
    Row,Col:Integer;
begin
    Screen.Cursor := crHourglass;

    pgcMain.ActivePageIndex := 0;
    LoadXls;

    tSel := F1.selection;

    F1.TextSRC[1,4,2] := fraFamilia1.xceCodFam.Text + ' ' +
                         fraFamilia1.xceDescripFam.Text;
    F1.TextSRC[2,4,2] := F1.TextSRC[1,4,2];
    F1.TextSRC[3,4,2] := F1.TextSRC[1,4,2];

    DM1.iqrArt.SQL.Clear;
    DM1.iqrArt.SQL.Add ('SELECT id, hoja, ren, codfamilia, limiteinf, limitesup, porcentaje, observaciones, fhact, useract ');
    DM1.iqrArt.SQL.Add ('FROM TABLACOMIS ');
    DM1.iqrArt.SQL.Add ('WHERE (CODFAMILIA =?CODFAMILIA) AND (ESQUEMA = ?ESQUEMA);');

    DM1.iqrArt.Prepare;

    tCodIni := fraFamilia1.xceCodFam.Text;
    DM1.iqrArt.ParamByName('CODFAMILIA').AsString := tCodIni;
    DM1.iqrArt.ParamByName('ESQUEMA').AsInteger := sedEsquema.IntValue;

    DM1.iqrArt.Open;

    iRecCount := Dm1.iqrArt.RecordCount;
    iRec := 1;
    while not DM1.iqrArt.Eof do begin
      iSheet := DM1.iqrArt.fieldbyName('HOJA').AsInteger;
      Row    := DM1.iqrArt.fieldbyName('REN').AsInteger;
      F1.NumberSRC[iSheet,Row,2]  := DM1.iqrArt.fieldbyName('LIMITEINF').AsDouble;
      F1.NumberSRC[iSheet,Row,3]  := DM1.iqrArt.fieldbyName('LIMITESUP').AsDouble;
      F1.NumberSRC[iSheet,Row,4]  := DM1.iqrArt.fieldbyName('PORCENTAJE').AsDouble;
      F1.TextSRC[iSheet,Row,5]    := DM1.iqrArt.fieldbyName('OBSERVACIONES').AsString;

      DM1.iqrArt.Next;

    end;

    F1.Selection := tSel;

    Screen.Cursor := crDefault;

    DM1.iqrArt.UnPrepare;
    DM1.iqrArt.Close;

// Empezar a checar si se ha modificado el F1...
    mfLook := True

end;

procedure TfrmUbicaciones_Generar.GrabarTablas;
var i,iCount:Integer;
    iSheet,iRec,Row:Integer;
    tVal,tTP,tKey:String;
    fFound,fUpdate,fDelete:Boolean;

begin

  Screen.Cursor := crHourglass;
  iCount := 0;
// Borrar datos por familia

  isqldEL.ParamByName('CODFAMILIA').AsString := fraFamilia1.xceCodFam.Text;
  isqldEL.ParamByName('ESQUEMA').AsInteger   := sedEsquema.IntValue;
  isqlDel.ExecSQL;

//----------------------------
  for iSheet := 1 to 3 do begin
    Row := miRowIni;
    tVal := F1.TextSRC[iSheet,Row,2];
      while length(tVal) > 0 do begin

        iCount := iCount + 1;

        isqlIns.ParamByName('ID').AsInteger := DM1.GetDocID;
        isqlIns.ParamByName('HOJA').AsInteger := iSheet;
        isqlIns.ParamByName('REN').AsInteger := Row;
        isqlIns.ParamByName('CODFAMILIA').AsString := fraFamilia1.xceCodFam.Text;
        isqlIns.ParamByName('ESQUEMA').AsInteger := sedEsquema.IntValue;
        isqlIns.ParamByName('LIMITEINF').AsDouble := F1.NumberSRC[iSheet,Row,2];
        isqlIns.ParamByName('LIMITESUP').AsDouble := F1.NumberSRC[iSheet,Row,3];
        isqlIns.ParamByName('PORCENTAJE').AsDouble := F1.NumberSRC[iSheet,Row,4];
        isqlIns.ParamByName('OBSERVACIONES').AsString := F1.TextSRC[iSheet,Row,5];
        isqlIns.ParamByName('FHACT').AsDateTime := Date+Time;
        isqlIns.ParamByName('USERACT').AsString := oUSer.LOGIN;

        isqlIns.Execute;

        Row := Row + 1;

        tVal := F1.TextSRC[iSheet,Row,2];

      end;
   end;

   isqlIns.Unprepare;

   Screen.Cursor := crDefault;

   ShowMessage('Se grabaron ' + IntToStr(iCount) + ' parametros!');

end;

procedure TfrmUbicaciones_Generar.itmAyudaClick(Sender: TObject);
begin
  ShowHelp('frmTablasComis');
end;

procedure TfrmUbicaciones_Generar.tbtLeerClick(Sender: TObject);
begin
    LeerTablas;
end;

procedure TfrmUbicaciones_Generar.F1StartEdit(Sender: TObject;
  var EditString: WideString; var Cancel: Smallint);
var iCol:Integer;
begin
    iCol := F1.Col;

    if iCol in ColSet then Cancel := 1;

end;

procedure TfrmUbicaciones_Generar.F1KeyDown(Sender: TObject; var Key: Word;
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



procedure TfrmUbicaciones_Generar.tbtCreateClick(Sender: TObject);
begin
  axnLimpiar;
end;

procedure TfrmUbicaciones_Generar.tbtAbrirClick(Sender: TObject);
begin
    LeerTablas;
end;

procedure TfrmUbicaciones_Generar.tbtGenReporteClick(Sender: TObject);
begin
  GenerarReporte;
end;

procedure TfrmUbicaciones_Generar.tbtGrabarClick(Sender: TObject);
begin
  GrabarTablas;
//    axnGrabar;
end;

procedure TfrmUbicaciones_Generar.tbtPreverClick(Sender: TObject);
begin
    axnPrever;
end;

procedure TfrmUbicaciones_Generar.tbtImpReporteClick(Sender: TObject);
begin
    try
        F2.FilePrint(True);
    except
        MessageDlg('No es posible imprimir!', mtWarning,[mbOk], 0);
    end;

end;

procedure TfrmUbicaciones_Generar.tbtImprimirClick(Sender: TObject);
begin
    axnImprimir;
end;

procedure TfrmUbicaciones_Generar.axnLimpiar;
begin
//    F1.ClearRange (miRowIni,1,F1.LastRow,20,f1ClearValues);
  LoadXLS;
{  F1.Row := miROWINI;
  F1.Col := 1;
  F1.TopRow := miROWINI;
  F1.LeftCol := 1;
}
    fraFamilia1.Limpiar;

end;
procedure TfrmUbicaciones_Generar.axnLeer;
var    tBuffer:WideString;
begin

        try
            F1.OpenFileDlg('Abrir archivo Articulos',frmTablasComis.Handle,tBuffer);
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

procedure TfrmUbicaciones_Generar.axnGrabar;
var tFile:WideString;
begin
    try
        F1.SaveFileDlg ('Grabar Listado de Articulos',tFile,iType);
    except
        Exit;
    end;

    try
        F1.Write (tFile,iType);
    except;
        MessageDlg('Imposible grabar el archivo!', mtWarning,[mbOk], 0);
    end;
end;

procedure TfrmUbicaciones_Generar.axnPrever;
begin
    try
        F1.FilePrintPreview;
    except
        MessageDlg('Imposible hacer la presentacion preliminar!', mtWarning,[mbOk], 0);

    end;

end;

procedure TfrmUbicaciones_Generar.axnImprimir;
begin
    try
        F1.FilePrint(True);
    except
        MessageDlg('No es posible imprimir!', mtWarning,[mbOk], 0);
    end;

end;

procedure TfrmUbicaciones_Generar.tbtAfectarClick(Sender: TObject);
begin
    //Grabar articulos
    mfShowMsg := False;
    GrabarTablas;

end;

procedure TfrmUbicaciones_Generar.FormKeyDown(Sender: TObject; var Key: Word;
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
procedure TfrmUbicaciones_Generar.fraFamilia1xceCodFamKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  fraFamilia1.xceCodFamKeyDown(Sender, Key, Shift);
  LeerTablas;
end;

procedure TfrmUbicaciones_Generar.GenerarReporte;
var i:Integer;
    iRecCount,iRec,iTabla,iTablax:Integer;
    tKey,tSel,tFam,tFamx,tNomFam,tNomTabla:String;
    fFound,fBorrado:Boolean;
    Row,Col:Integer;
begin
    Screen.Cursor := crHourglass;

    pgcMain.ActivePageIndex := 1;

    LoadXls2;

    miRowIni := 7;

    tSel := F1.selection;

     F2.TextRC[2,2]    := oEmp.RAZSOCIAL;
     F2.TextRC[4,3]    := aEsq[sedEsquema.IntValue];

    icu1.Prepare;
    icu1.ParamByName('ESQUEMA').AsInteger := sedEsquema.IntValue;

    icu1.Open;
    icu1.First;

    tFam :=icu1.FieldByName('CODFAMILIA').AsString;
    tNomFam :=icu1.FieldByName('DESCRIPFAM').AsString;
    tFamx:=tFam;
    iTabla := icu1.FieldByName('HOJA').AsInteger;;
    iTablax := iTabla;
    iRecCount := icu1.RecordCount;
    iRec := 1;
    Row := miRowIni;

    F2.TextRC[Row,2]    := tFam + ' '+tNomFam;
    F2.TextRC[Row,5]    := aTabla[iTabla];
    Row := Row + 1;
    while not icu1.Eof do begin
      tKey := icu1.fieldbyName('ESQUEMA').AsString;
      tKey := Trim(tKey);

      if (length(tKey) > 0) then begin

          tKey := icu1.fieldbyName('ESQUEMA').AsString;
          tKey := Trim(tKey);

          if (tFam <> tFamx) or (iTabla <> iTablax) then begin
            if (iTabla <> iTablax) then begin
              F2.TextRC[Row,5]:= aTabla[iTabla];
              iTablax := iTabla;
            end;
            if (tFam <> tFamx) then begin
              F2.TextRC[Row,2]    :=     tFam + ' '+tNomFam;
              tFamx := tFam;
            end;

            Row := Row + 1;
          end;
          F2.NumberRC[Row,4]  := icu1.fieldbyName('LIMITEINF').AsDouble;
          F2.NumberRC[Row,5]  := icu1.fieldbyName('LIMITESUP').AsDouble;
          F2.NumberRC[Row,6]  := icu1.fieldbyName('PORCENTAJE').AsDouble;
          F2.TextRC[Row,7]    := icu1.FieldByName('OBSERVACIONES').AsString;

          Row := Row + 1;

      end;

      icu1.Next;
      tFam :=icu1.FieldByName('CODFAMILIA').AsString;
      tNomFam :=icu1.FieldByName('DESCRIPFAM').AsString;
      iTabla := icu1.FieldByName('HOJA').AsInteger;;

  end;

  miRowEnd := Row -1;

  F2.Selection := tSel;
  F2.MaxRow := miRowEnd;

  F2.SetSelection(2, 2, miRowEnd, 7);
  F2.SetPrintAreaFromSelection;
  F2.Selection := tSel;
  Screen.Cursor := crDefault;

  icu1.Close;

// Empezar a checar si se ha modificado el F1...
  mfLook := True

end;

procedure TfrmUbicaciones_Generar.axnGrabarXls;
  var tFile:WideString;
begin
    try
        F2.SaveFileDlg ('Grabar Tablasde Comisiones',tFile,iType);
    except
        Exit;
    end;

    try
        F2.Write (tFile,iType);
    except;
        MessageDlg('Imposible grabar el archivo!', mtWarning,[mbOk], 0);
    end;
end;


end.
