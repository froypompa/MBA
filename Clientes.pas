 unit Clientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, {Grids, RXGrids,} ToolWin, Menus, ImgList, StdCtrls, {Mask,}
  RxToolEdit, ExtCtrls, RXSplit, TBXStatusBars, ActnList, DBCtrls, Db,
  DBGrids, DBTables, RxPlacemnt,
  IB_UpdateBar, IB_NavigationBar, IB_Controls, IB_Components, IB_Grid,
  {Animate, GIFCtrl,} IB_TransactionBar, Buttons, RXCtrls, Grids, Mask,
  ClsAgente, FormulaOneLib,
  ClsTablas, TBX, TB2Item, TB2Dock, TB2Toolbar, AxCtrls, OleCtrls, VCIF1Lib_TLB,
  RzPanel;

type
  TfrmClientes = class(TForm)
    ImageList1: TImageList;
    pgcMain: TPageControl;
    tshGenerales: TTabSheet;
    dfsStatusBar1: TTBXStatusBar;
    ActionList1: TActionList;
    Nuevo: TAction;
    Grabar: TAction;
    ToolBar: TAction;
    LetreroBtn: TAction;
    Listado: TAction;
    Eliminar: TAction;
    Salir: TAction;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    idsCtas: TIB_DataSource;
    IB_Edit1: TIB_Edit;
    iedRazSocial: TIB_Edit;
    IB_Memo1: TIB_Memo;
    IB_Edit3: TIB_Edit;
    IB_Edit4: TIB_Edit;
    IB_Edit6: TIB_Edit;
    IB_Edit7: TIB_Edit;
    IB_Edit8: TIB_Edit;
    IB_Edit9: TIB_Edit;
    iqrCtas: TIB_Query;
    IB_Edit5: TIB_Edit;
    tshCondiciones: TTabSheet;
    axnBuscar: TAction;
    axnFiltrar: TAction;
    IB_Edit11: TIB_Edit;
    tshEstadistica: TTabSheet;
    tshDesctos: TTabSheet;
    tshOtros: TTabSheet;
    tshListado: TTabSheet;
    xceEdo: TComboEdit;
    xceCd: TComboEdit;
    IB_Edit12: TIB_Edit;
    Label12: TLabel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cboBuscar: TComboBox;
    bbtBuscar: TBitBtn;
    chkTecla: TCheckBox;
    rbtCodigo: TRadioButton;
    rbtDescri: TRadioButton;
    gpoFiltro: TGroupBox;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    sbxFiltrado: TRxSpeedButton;
    cboCampo: TComboBox;
    cboOperador: TComboBox;
    cboValor: TComboBox;
    IB_Grid1: TIB_Grid;
    grpTablas: TGroupBox;
    iedNumAgente: TIB_Edit;
    xceNombreAgente: TComboEdit;
    iedRuta: TIB_Edit;
    xceViaTrans: TComboEdit;
    iedViaTRans: TIB_Edit;
    xceRuta: TComboEdit;
    Label13: TLabel;
    Panel2: TPanel;
    xlbDescri1: TRxLabel;
    Panel3: TPanel;
    xlbDescri2: TRxLabel;
    Panel4: TPanel;
    xlbDescri3: TRxLabel;
    Panel5: TPanel;
    xlbDescri4: TRxLabel;
    icbEdoActCte: TIB_ComboBox;
    Label14: TLabel;
    IB_Edit2: TIB_Edit;
    Label15: TLabel;
    imoComent: TIB_Memo;
    Label16: TLabel;
    IB_Edit13: TIB_Edit;
    Label17: TLabel;
    Label18: TLabel;
    IB_Edit15: TIB_Edit;
    Label19: TLabel;
    IB_Edit14: TIB_Edit;
    Label20: TLabel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBControlItem1: TTBControlItem;
    IB_UpdateBar1: TIB_UpdateBar;
    TBControlItem2: TTBControlItem;
    IB_NavigationBar1: TIB_NavigationBar;
    TBXSeparatorItem1: TTBXSeparatorItem;
    tbtImprimir: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXItem2: TTBXItem;
    FormStorage1: TFormStorage;
    icuDescto: TIB_Cursor;
    isqlIns: TIB_DSQL;
    isqlDel: TIB_DSQL;
    F1: TF1Book;
    TBXDock2: TTBXDock;
    TBXToolbar2: TTBXToolbar;
    tbtLeer: TTBXItem;
    tbtGrabar: TTBXItem;
    Label21: TLabel;
    IB_Edit16: TIB_Edit;
    Label22: TLabel;
    IB_Edit17: TIB_Edit;
    Label23: TLabel;
    IB_Edit18: TIB_Edit;
    Label24: TLabel;
    IB_Edit19: TIB_Edit;
    grpBancos: TRzGroupBox;
    iedCtaBanco: TIB_Edit;
    Label25: TLabel;
    iedMetodo: TIB_Edit;
    Label26: TLabel;
    grpEMail: TRzGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    IB_Edit21: TIB_Edit;
    Label29: TLabel;
    IB_Edit22: TIB_Edit;
    IB_Edit10: TIB_Edit;
    Label10: TLabel;
    Label30: TLabel;
    iedReferencia: TIB_Edit;
    Label31: TLabel;
    iedNumProveedor: TIB_Edit;
    iedZona: TIB_Edit;
    xceZona: TComboEdit;
    Label32: TLabel;
    IB_Edit20: TIB_Edit;
    xcePais: TComboEdit;
    Label33: TLabel;
    iedMetodoPago: TIB_Edit;
    Label34: TLabel;
    iedUsoCFDI: TIB_Edit;
    procedure tbtGrabarClick(Sender: TObject);
    procedure tbtLeerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NuevoExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbtBuscarClick(Sender: TObject);
    procedure axnBuscarExecute(Sender: TObject);
    procedure cboBuscarChange(Sender: TObject);
    procedure cboBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure axnFiltrarExecute(Sender: TObject);
    procedure idsCtasPrepareSQL(Sender: TIB_StatementLink;
      Statement: TIB_Statement);
    procedure sbxFiltradoClick(Sender: TObject);
    procedure iqrCtasAfterInsert(IB_Dataset: TIB_Dataset);
    procedure IB_Edit5Change(Sender: TObject);
    procedure IB_Edit4Change(Sender: TObject);
    procedure IB_Edit4ButtonClick(Sender: TObject);
    procedure Select(ptTabla:String;piOpcion: Integer;ptKey:String);
    procedure SelectCiudad(piOpcion: Integer;ptKey:String);
    procedure SelectEstado(piOpcion: Integer;ptKey:String);
    procedure SelectPais(piOpcion: Integer;ptKey:String);
    procedure IB_Edit5ButtonClick(Sender: TObject);
    procedure xceEdoButtonClick(Sender: TObject);
    procedure xceCdButtonClick(Sender: TObject);
    procedure SelectAgente(piOpcion:Integer;ptKey:String);
    procedure iedRutaButtonClick(Sender: TObject);
    procedure iedRutaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure iedNumAgenteButtonClick(Sender: TObject);
    procedure iedNumAgenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure iedViaTRansButtonClick(Sender: TObject);
    procedure iedViaTRansKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LlenaAgente;
    procedure LlenaRuta;
    procedure LlenaViaTrans;
    procedure LlenaZona;
    procedure SelectRuta(piOpcion:Integer;ptKey:String);
    procedure SelectViaTrans(piOpcion:Integer;ptKey:String);
    procedure SelectZona(piOpcion:Integer;ptKey:String);
    procedure rbtCodigoClick(Sender: TObject);
    procedure rbtDescriClick(Sender: TObject);
    procedure iedNumAgenteChange(Sender: TObject);
    procedure iedRutaChange(Sender: TObject);
    procedure iedViaTRansChange(Sender: TObject);
    procedure iedRazSocialChange(Sender: TObject);
    procedure cboBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GoPrior;
    procedure GoNext;
    procedure Clear;
    procedure ClearDesctos;
    procedure LeerDesctos;
    procedure GrabarDesctos;
    procedure IB_Grid1GetCellProps(Sender: TObject; ACol, ARow: Integer;
      AState: TGridDrawState; var AColor: TColor; AFont: TFont);
    procedure IB_Edit1Change(Sender: TObject);
    procedure iedZonaButtonClick(Sender: TObject);
    procedure iedZonaChange(Sender: TObject);
    procedure iedZonaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IB_Edit20ButtonClick(Sender: TObject);
    procedure IB_Edit20Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
    TABLA_CD    : String = '7';
    TABLA_EDO   : String = '4';
    TABLA_PAIS  : String = '16';
    TABLA_RUTA  : String = '9';
    TABLA_VIA   : String = '10';
    TABLA_ZONA  : String = '20';

var
  frmClientes: TfrmClientes;
  mrRes:Integer;
  oAge:TAgente;
  oTabla:TTabla;
  mtNumTabla:String;

implementation

uses DM_MBA, SelCodDes, SelTabla, Main;

{$R *.DFM}


procedure TfrmClientes.FormCreate(Sender: TObject);
var tFile:String;
begin
    oAge   := TAgente.Create;
    oTabla := TTabla.Create;


    iqrCtas.PreventDeleting := not (oUser.ISMASTER = 1); 
    iqrCtas.Open;

//    CargaComboEstado(DBComboBox2);
    F1Lib.F1 := F1;
    tFile :=     oIni.ReadString ('Directorios','Formatos','');
    tFile := tFile + 'Fmt_DesctosCte.xls';

    F1Lib.Read(tFile);
    F1.MaxCol := 8;
//    F1.MaxRow := 15;
    F1.Selection := 'B7';

end;

procedure TfrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    iqrCtas.Unprepare;
    iqrCtas.Close;
    oAge.Free;
    oTabla.Free;
    frmClientes := nil;
    Action := caFree;
end;

procedure TfrmClientes.NuevoExecute(Sender: TObject);
var ID:LongInt;
begin
end;

procedure TfrmClientes.SalirExecute(Sender: TObject);
begin
    close;
end;

procedure TfrmClientes.ToolButton2Click(Sender: TObject);
begin
//    dsCte1.Post;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin
      Top :=0;
      Left :=0;
      pgcMain.ActivePageIndex := 0;
      MainForm.AplicarPerfil2(self);

//    dsCte1.FetchAll;
end;

procedure TfrmClientes.bbtBuscarClick(Sender: TObject);
begin
    axnBuscarExecute(self);
end;

procedure TfrmClientes.axnBuscarExecute(Sender: TObject);
var
    tCampo:String;
begin
    if rbtCodigo.Checked then
        tCampo := 'CODCTEPROV'
    else
        tCampo := 'RAZSOCIAL';



    iqrCtas.Locate (tCampo,
                      cboBuscar.Text,
                      [lopCaseInsensitive, lopPartialKey, lopFindNearest]
                      );

end;

procedure TfrmClientes.cboBuscarChange(Sender: TObject);
begin
    if chkTecla.Checked then
        axnBuscarExecute(self);

end;

procedure TfrmClientes.cboBuscarKeyPress(Sender: TObject; var Key: Char);
begin
    case Key of
        #13: axnBuscarExecute(self);
    end;

end;

procedure TfrmClientes.axnFiltrarExecute(Sender: TObject);
begin
   iqrCtas.InvalidateSQL;
   iqrCtas.Refresh;
end;

procedure TfrmClientes.idsCtasPrepareSQL(Sender: TIB_StatementLink;
  Statement: TIB_Statement);
var tWhere:String;
begin
  if sbxFiltrado.Down then begin
  //I assume that all fields are char type... (don't be lazy)
    tWhere := Trim(cboCampo.Text) + ' '+
              Trim(cboOperador.text) + ' ' +
              '''' + Trim(cboValor.Text)+'''';
//    qrCliente.SQLWhereItems.Add( 'NOMBRE = ''Garza''' );
    iqrCtas.SQLWhereItems.Add(tWhere);
  end;

end;

procedure TfrmClientes.sbxFiltradoClick(Sender: TObject);
begin
    axnFiltrarExecute(Sender);
end;

procedure TfrmClientes.iqrCtasAfterInsert(IB_Dataset: TIB_Dataset);
begin
    Clear;
    pgcMain.ActivePage := tshGenerales;
    IB_Edit1.Setfocus;
end;

procedure TfrmClientes.IB_Edit5Change(Sender: TObject);
begin
    xceEdo.Text := oTabla.GetDescri (TABLA_EDO,IB_Edit5.Text);
end;

procedure TfrmClientes.IB_Edit4Change(Sender: TObject);
begin
    xceCd.Text := oTabla.GetDescri (TABLA_CD,IB_Edit4.Text);

end;
procedure TfrmClientes.Select(ptTabla:String;piOpcion: Integer;ptKey:String);
begin
    if not Assigned(frmSelTabla) then
        frmSelTabla := TfrmSelTabla.Create (Application);
    frmSelTabla.Tabla := ptTabla;
    frmSelTabla.Campo := piOpcion;

    frmSelTabla.Param1 := '';
    frmSelTabla.Param2 := '';

    if uppercase(ptTabla) = 'MBA10021' then frmSelTabla.Param1 := mtNumTabla;

    if piOpcion = 1 then begin
        frmSelTabla.Codigo := ptKey;
        frmSelTabla.Descri := '';
    end else begin
        frmSelTabla.Codigo := '';
        frmSelTabla.Descri := ptKey;
    end;
    mrRes := frmSelTabla.ShowModal;

end;

procedure TfrmClientes.SelectCiudad(piOpcion: Integer;ptKey:String);
begin
    mtNumTabla := TABLA_CD;
    Select('MBA10021',piOpcion,ptKey);
    if mrRes = mrOk then begin
        IB_Edit4.Text := frmSelTabla.Valores[2];
        xceCd.Text    := frmSelTabla.Valores[3];
        iqrCtas.FieldByName(IB_Edit4.DataField).AsString := IB_Edit4.Text;
    end;

end;

procedure TfrmClientes.SelectEstado(piOpcion: Integer;ptKey:String);
begin
    mtNumTabla := TABLA_EDO;
    Select('MBA10021',piOpcion,ptKey);
    if mrRes = mrOk then begin
        IB_Edit5.Text :=  frmSelTabla.Valores[2];
        xceEdo.Text    := frmSelTabla.Valores[3];
        iqrCtas.FieldByName(IB_Edit5.DataField).AsString := IB_Edit5.Text;
    end;

end;

procedure TfrmClientes.SelectPais(piOpcion: Integer;ptKey:String);
begin
    mtNumTabla := TABLA_PAIS;
    Select('MBA10021',piOpcion,ptKey);
    if mrRes = mrOk then begin
        IB_Edit20.Text :=  frmSelTabla.Valores[2];
        xcePais.Text    := frmSelTabla.Valores[3];
        iqrCtas.FieldByName(IB_Edit20.DataField).AsString := IB_Edit20.Text;
    end;

end;

procedure TfrmClientes.IB_Edit4ButtonClick(Sender: TObject);
begin
    SelectCiudad(1,IB_Edit4.Text);

end;

procedure TfrmClientes.IB_Edit5ButtonClick(Sender: TObject);
begin
    SelectEstado(1,IB_Edit5.Text);

end;

procedure TfrmClientes.xceEdoButtonClick(Sender: TObject);
begin
    SelectEstado(2,xceEdo.Text);

end;

procedure TfrmClientes.xceCdButtonClick(Sender: TObject);
begin
    SelectCiudad(2,xceCd.Text);

end;

//-----------------------
// Catalogo de Agentes
//-----------------------
procedure TfrmClientes.SelectAgente(piOpcion:Integer;ptKey:String);
begin
    Select('MBA10001',piOpcion,ptKey);
    if mrRes = mrOk then begin
        iedNumAgente.Text := frmSelTabla.Valores[1];
        xceNombreAgente.Text  := frmSelTabla.Valores[2];
        iqrCtas.FieldByName(iedNumAgente.DataField).AsString := iedNumAgente.Text;

    end;
end;
procedure TfrmClientes.iedNumAgenteButtonClick(Sender: TObject);
begin
    SelectAgente(1,iedNumAgente.Text);
end;
procedure TfrmClientes.iedNumAgenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_F3: begin
                SelectAgente(1,iedNumAgente.Text);
           end;
    VK_F4:  begin
                SelectAgente(1,xceNombreAgente.Text);
            end;
    VK_Return: LlenaAgente;
    end;
end;

procedure TfrmClientes.iedNumAgenteChange(Sender: TObject);
begin
    if iqrCtas.State in [dssBrowse] then begin
        LlenaAgente;
    end;

end;


procedure TfrmClientes.LlenaAgente;
begin
    xceNombreAgente.Text := '';
    if oAge = nil then exit;
    oAge.NUMAGENTE := iedNumAgente.Text;
    oAge.Retrieve;
    if oAge.Error = 0 then
        xceNombreAgente.Text := oAge.NOMBAGEN
    else
        xceNombreAgente.Text := '';
end;

//-----------------------
// Catalogo de Rutas
//-----------------------
procedure TfrmClientes.SelectRuta(piOpcion:Integer;ptKey:String);
begin
    mtNumTabla := TABLA_RUTA;
    Select('MBA10021',piOpcion,ptKey);
    if mrRes = mrOk then begin
        iedRuta.Text := frmSelTabla.Valores[2];
        xceRuta.Text  := frmSelTabla.Valores[3];
        iqrCtas.FieldByName(iedRuta.DataField).AsString := iedRuta.Text;
    end;
end;

procedure TfrmClientes.LlenaRuta;
begin
    xceRuta.Text := '';
    xceRuta.Text := oTabla.GetDescri(TABLA_RUTA,iedRuta.Text);
end;

procedure TfrmClientes.iedRutaChange(Sender: TObject);
begin
    if iqrCtas.State in [dssBrowse] then begin
        LlenaRuta;
    end;

end;


procedure TfrmClientes.iedRutaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_F3: begin
               SelectRuta(1,iedRuta.Text);
            end;
    VK_F4:  begin
                SelectViaTrans(2,xceRuta.Text);
            end;
    VK_Return: LlenaRuta;
    end;


end;

procedure TfrmClientes.iedRutaButtonClick(Sender: TObject);
begin
    SelectRuta(1,iedRuta.Text);
end;

//---------------------------------
// Catalogo de Via de Transporte
//---------------------------------
procedure TfrmClientes.SelectViaTrans(piOpcion:Integer;ptKey:String);
begin
    mtNumTabla := TABLA_VIA;
    Select('MBA10021',piOpcion,ptKey);
    if mrRes = mrOk then begin
        iedViaTrans.Text := frmSelTabla.Valores[2];
        xceViaTrans.Text  := frmSelTabla.Valores[3];
        iqrCtas.FieldByName(iedViaTrans.DataField).AsString := iedViaTrans.Text;
    end;
end;

procedure TfrmClientes.SelectZona(piOpcion:Integer;ptKey:String);
begin
    mtNumTabla := TABLA_ZONA;
    Select('MBA10021',piOpcion,ptKey);
    if mrRes = mrOk then begin
        iedZona.Text := frmSelTabla.Valores[2];
        xceZona.Text  := frmSelTabla.Valores[3];
        iqrCtas.FieldByName(iedZona.DataField).AsString := iedZona.Text;
    end;
end;

procedure TfrmClientes.tbtGrabarClick(Sender: TObject);
begin
  GrabarDesctos;
end;

procedure TfrmClientes.tbtLeerClick(Sender: TObject);
begin
  LeerDesctos;
end;

procedure TfrmClientes.LlenaViaTrans;
begin
    xceViaTrans.Text := oTabla.GetDescri(TABLA_VIA,iedViaTRans.Text);
end;

procedure TfrmClientes.LlenaZona;
begin
    xceZona.Text := oTabla.GetDescri(TABLA_ZONA,iedZona.Text);
end;

procedure TfrmClientes.iedViaTRansKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_F3: begin
               SelectViaTrans(1,iedViaTRans.Text);
            end;
    VK_F4:  begin
                SelectViaTrans(2,xceViaTrans.Text);
            end;
    VK_Return: LlenaViaTrans;
    end;

end;

procedure TfrmClientes.iedZonaButtonClick(Sender: TObject);
begin
    SelectZona(1,iedZona.Text);

end;

procedure TfrmClientes.iedZonaChange(Sender: TObject);
begin
    if iqrCtas.State in [dssBrowse] then begin
        LlenaZona;
    end;

end;

procedure TfrmClientes.iedZonaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_F3: begin
               SelectZona(1,iedZona.Text);
            end;
    VK_F4:  begin
                SelectZona(2,xceZona.Text);
            end;
    VK_Return: LlenaZona;
    end;

end;

procedure TfrmClientes.iedViaTRansChange(Sender: TObject);
begin
    if iqrCtas.State in [dssBrowse] then begin
        LlenaViaTrans;
    end;

end;

procedure TfrmClientes.iedViaTRansButtonClick(Sender: TObject);
begin
    SelectViaTrans(1,iedViaTrans.Text);
end;

procedure TfrmClientes.rbtCodigoClick(Sender: TObject);
begin
    iqrCtas.OrderingItemNo := 1;
end;

procedure TfrmClientes.rbtDescriClick(Sender: TObject);
begin
        iqrCtas.OrderingItemNo := 2;

end;


procedure TfrmClientes.iedRazSocialChange(Sender: TObject);
begin
    xlbDescri1.Caption := iedRazSocial.Text;
    xlbDescri2.Caption := iedRazSocial.Text;
    xlbDescri3.Caption := iedRazSocial.Text;
    xlbDescri4.Caption := iedRazSocial.Text;
end;

procedure TfrmClientes.cboBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of
    VK_UP:     GoPrior;
    VK_DOWN:   GoNext;
end;

end;
procedure TfrmClientes.GoPrior;
begin
    if not (iqrCtas.bof) then iqrCtas.Prior;

end;

procedure TfrmClientes.GoNext;
begin
    if not (iqrCtas.eof) then iqrCtas.Next;

end;
procedure TfrmClientes.Clear;
begin
    xceCd.Text  := '';
    xceEdo.Text := '';
    xceNombreAgente.Text := '';
    xceRuta.Text := '';
    xceViaTRans.Text := '';
end;


procedure TfrmClientes.IB_Grid1GetCellProps(Sender: TObject; ACol,
  ARow: Integer; AState: TGridDrawState; var AColor: TColor; AFont: TFont);
var idat:smallint;
  tmpFld: TIB_Column;
begin
  if idsCtas.Active then begin
    with idsCtas.DataSet do begin
      BufferRowNum := IB_Grid1.DataRow[ ARow ];
      if BufferRowNum > 0 then begin

// This provides an example of how colors can be customized on an
// individual cell basis.
        tmpFld := IB_Grid1.GridFields[ IB_Grid1.DataCol[ ACol ]];
        if Assigned( tmpFld ) and ( tmpFld.FieldName = 'CODCTEPROV' ) then  begin
          idat := BufferFieldByName('EDOACTCTE').AsSmallint;
          if idat = 2 then begin  //Clientes Inactivos o Bajas
            if AColor = IB_Grid1.Color then
              AColor := clRed;
          end;

        end;

      end;
    end;
  end;

end;
procedure TfrmClientes.ClearDesctos;
begin
  F1.ClearRange(7,1,F1.MaxRow,F1.MaxCol,F1ClearValues);
end;

procedure TfrmClientes.LeerDesctos;
var tSql,tCte,tFam:String;
    RenIni,r:integer;
begin

  ClearDesctos;

  F1.TextRC[2,2] := oEmp.RAZSOCIAL;
  F1.TextRC[4,3] := iqrCtas.fieldbyname('RAZSOCIAL').AsString;
  tCte := iqrCtas.fieldbyname('CODCTEPROV').AsString;
  RenIni := 7;
  r := RenIni;

  with DM1 do begin
    tSql := '';
    tSql := tSql + 'SELECT CODFAM,DESCRIPFAM ';
    tSql := tSql + 'FROM MBA10040 ';
    tSql := tSql + 'ORDER BY CODFAM ';
    icuTemp.Unprepare;
    icuTemp.SQL.Clear;
    icuTemp.SQL.Add(tSql);
    icuTemp.prepare;
    icuTemp.Open;
    while not icuTemp.Eof do begin
      F1.TextRC[r,2] := icuTemp.FieldByName('CODFAM').AsString;
      F1.TextRC[r,3] := icuTemp.FieldByName('DESCRIPFAM').AsString;
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

    for r:= RenIni to F1.MaxRow do begin
      tFam := F1.TextRC[r,2];
      if length(tFam) <= 0 then break;

      icuTemp.ParamByName('CODCTEPROV').AsString := tCte;
      icuTemp.ParamByName('CODFAM').AsString := tFam;
      icuTemp.Open;
      if icuTemp.RecordCount > 0 then begin
        F1.NumberRC[r,4] := icuTemp.FieldByName('PCT1').AsDouble;
        F1.NumberRC[r,5] := icuTemp.FieldByName('PCT2').AsDouble;
        F1.NumberRC[r,6] := icuTemp.FieldByName('PCT3').AsDouble;
        F1.NumberRC[r,7] := icuTemp.FieldByName('PCT4').AsDouble;
        F1.NumberRC[r,8] := icuTemp.FieldByName('PCT5').AsDouble;
      end;
      icuTemp.Close;
    end;
  end;
end;

procedure TfrmClientes.GrabarDesctos;
var tSql,tFam,tCte:String;
    r:integer;
begin

  tCte := iqrCtas.fieldbyname('CODCTEPROV').AsString;

// 1) Borrar descuentos del cliente
  tSql := '';
  tSql := tSql + 'DELETE FROM MBA10080 WHERE CODCTEPROV = ?CODCTEPROV;';
  with DM1 do begin
    isqlTemp.Unprepare;
    isqlTemp.SQL.Clear;
    isqlTemp.SQL.Add(tSql);
    isqlTemp.prepare;

    isqlTemp.ParamByName('CODCTEPROV').AsString := tCte;
    isqlTemp.ExecSQL;
// 2) Grabar descuentos del cliente
    tSql := '';
    tSql := tSql + 'INSERT INTO MBA10080 (CODCTEPROV,CODFAM,PCT1,PCT2,PCT3,PCT4,PCT5) ';
    tSql := tSql + '            VALUES   (?CODCTEPROV,?CODFAM,?PCT1,?PCT2,?PCT3,?PCT4,?PCT5);';
    isqlTemp.Unprepare;
    isqlTemp.SQL.Clear;
    isqlTemp.SQL.Add(tSql);
    isqlTemp.prepare;

    for r := 7 to F1.MaxRow do begin
      isqlTemp.ParamByName('CODCTEPROV').AsString := tCte;
      tFam := Trim(F1.TextRC[r,2]);

      if length(tFam) <= 0 then break;

      isqlTemp.ParamByName('CODFAM').AsString := tFam;
      isqlTemp.ParamByName('PCT1').AsDouble := F1.NumberRC[r,4];
      isqlTemp.ParamByName('PCT2').AsDouble := F1.NumberRC[r,5];
      isqlTemp.ParamByName('PCT3').AsDouble := F1.NumberRC[r,6];
      isqlTemp.ParamByName('PCT4').AsDouble := F1.NumberRC[r,7];
      isqlTemp.ParamByName('PCT5').AsDouble := F1.NumberRC[r,8];
      isqlTemp.ExecSQL;

    end;
    isqlTemp.Unprepare;

  end;
end;

procedure TfrmClientes.IB_Edit1Change(Sender: TObject);
begin
  LeerDesctos;
end;


procedure TfrmClientes.IB_Edit20ButtonClick(Sender: TObject);
begin
    SelectPais(1,IB_Edit20.Text);

end;

procedure TfrmClientes.IB_Edit20Change(Sender: TObject);
begin
    xcePais.Text := oTabla.GetDescri (TABLA_PAIS,IB_Edit20.Text);

end;

end.
