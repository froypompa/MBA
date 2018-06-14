 unit Proveedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, {Grids, RXGrids,} ToolWin, Menus, ImgList, StdCtrls, {Mask,}
  RxToolEdit, ExtCtrls, RXSplit, TBXStatusBars, ActnList, DBCtrls, Db,
  DBGrids, DBTables, RxPlacemnt,
  IB_UpdateBar, IB_NavigationBar, IB_Controls, IB_Components, IB_Grid,
  {Animate, GIFCtrl,} IB_TransactionBar, Buttons, RXCtrls, Grids, Mask,
  ClsAgente,
  ClsTablas, TB2Item, TBX, TB2Dock, TB2Toolbar;

type
  TfrmProveedores = class(TForm)
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
    Label10: TLabel;
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
    IB_Edit10: TIB_Edit;
    iqrCtas: TIB_Query;
    IB_Edit5: TIB_Edit;
    tshCondiciones: TTabSheet;
    axnBuscar: TAction;
    axnFiltrar: TAction;
    IB_Edit11: TIB_Edit;
    tshEstadistica: TTabSheet;
    tshOtros: TTabSheet;
    tshListado: TTabSheet;
    xceEdo: TComboEdit;
    xceCd: TComboEdit;
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
    Label13: TLabel;
    iedWeb: TIB_Edit;
    Panel2: TPanel;
    xlbDescri1: TRxLabel;
    Panel3: TPanel;
    xlbDescri2: TRxLabel;
    Panel4: TPanel;
    xlbDescri3: TRxLabel;
    icbEdoActCte: TIB_ComboBox;
    Label14: TLabel;
    Label15: TLabel;
    IB_Edit2: TIB_Edit;
    IB_Edit12: TIB_Edit;
    Label16: TLabel;
    iedPorcIVA: TIB_Edit;
    Label17: TLabel;
    iedMoneda: TIB_Edit;
    xceDescMoneda: TComboEdit;
    Label18: TLabel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBXSeparatorItem1: TTBXSeparatorItem;
    tbtSalir: TTBXItem;
    TBControlItem1: TTBControlItem;
    IB_UpdateBar1: TIB_UpdateBar;
    TBControlItem2: TTBControlItem;
    IB_NavigationBar1: TIB_NavigationBar;
    FormStorage1: TFormStorage;
    Label19: TLabel;
    IB_Edit13: TIB_Edit;
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
    procedure IB_Edit5ButtonClick(Sender: TObject);
    procedure xceEdoButtonClick(Sender: TObject);
    procedure xceCdButtonClick(Sender: TObject);
    procedure iedRutaButtonClick(Sender: TObject);
    procedure LlenaAgente;
    procedure rbtCodigoClick(Sender: TObject);
    procedure rbtDescriClick(Sender: TObject);
    procedure iedRazSocialChange(Sender: TObject);
    procedure Clear;
    procedure iedMonedaChange(Sender: TObject);
    procedure iedMonedaButtonClick(Sender: TObject);
    procedure xceDescMonedaButtonClick(Sender: TObject);
    procedure SelectMoneda(piOpcion: Integer;ptKey:String);
    procedure cboBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GoPrior;
    procedure GoNext;
    procedure IB_Grid1GetCellProps(Sender: TObject; ACol, ARow: Integer;
      AState: TGridDrawState; var AColor: TColor; AFont: TFont);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
    TABLA_MONEDA: String = '6';
    TABLA_CD    : String = '7';
    TABLA_EDO   : String = '4';
    TABLA_RUTA  : String = '9';
    TABLA_VIA   : String = '10';

var
  frmProveedores: TfrmProveedores;
  mrRes:Integer;
  oAge:TAgente;
  oTabla:TTabla;
  mtNumTabla:String;

implementation

uses DM_MBA, SelCodDes, SelTabla, Main;

{$R *.DFM}


procedure TfrmProveedores.FormCreate(Sender: TObject);
begin
    oAge   := TAgente.Create;
    oTabla := TTabla.Create;


    iqrCtas.PreventDeleting := not (oUser.ISMASTER = 1); 
    iqrCtas.Open;

//    CargaComboEstado(DBComboBox2);
end;

procedure TfrmProveedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    iqrCtas.Unprepare;
    iqrCtas.Close;
    oAge.Free;
    oTabla.Free;
    frmProveedores := nil;
    Action := caFree;
end;

procedure TfrmProveedores.NuevoExecute(Sender: TObject);
var ID:LongInt;
begin
end;

procedure TfrmProveedores.SalirExecute(Sender: TObject);
begin
    close;
end;

procedure TfrmProveedores.ToolButton2Click(Sender: TObject);
begin
//    dsCte1.Post;
end;

procedure TfrmProveedores.FormShow(Sender: TObject);
begin
      Top :=0;
      Left :=0;
      pgcMain.ActivePageIndex := 0;
      MainForm.AplicarPerfil2(self);

//    dsCte1.FetchAll;
end;

procedure TfrmProveedores.bbtBuscarClick(Sender: TObject);
begin
    axnBuscarExecute(self);
end;

procedure TfrmProveedores.axnBuscarExecute(Sender: TObject);
var
    tCampo:String;
begin
    if rbtCodigo.Checked then
        tCampo := 'CODCTEPROV'
    else
        tCampo := 'NOMBPROVEE';



    iqrCtas.Locate (tCampo,
                      cboBuscar.Text,
                      [lopCaseInsensitive, lopPartialKey, lopFindNearest]
                      );

end;

procedure TfrmProveedores.cboBuscarChange(Sender: TObject);
begin
    if chkTecla.Checked then
        axnBuscarExecute(self);

end;

procedure TfrmProveedores.cboBuscarKeyPress(Sender: TObject; var Key: Char);
begin
    case Key of
        #13: axnBuscarExecute(self);
    end;

end;

procedure TfrmProveedores.axnFiltrarExecute(Sender: TObject);
begin
   iqrCtas.InvalidateSQL;
   iqrCtas.Refresh;
end;

procedure TfrmProveedores.idsCtasPrepareSQL(Sender: TIB_StatementLink;
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

procedure TfrmProveedores.sbxFiltradoClick(Sender: TObject);
begin
    axnFiltrarExecute(Sender);
end;

procedure TfrmProveedores.iqrCtasAfterInsert(IB_Dataset: TIB_Dataset);
begin
    Clear;
    pgcMain.ActivePage := tshGenerales;
    IB_Edit1.Setfocus;
end;

procedure TfrmProveedores.IB_Edit5Change(Sender: TObject);
begin
    xceEdo.Text := oTabla.GetDescri (TABLA_EDO,IB_Edit5.Text);
end;

procedure TfrmProveedores.IB_Edit4Change(Sender: TObject);
begin
    xceCd.Text := oTabla.GetDescri (TABLA_CD,IB_Edit4.Text);

end;

procedure TfrmProveedores.iedMonedaChange(Sender: TObject);
begin
  xceDescMoneda.Text := oTabla.GetDescri (TABLA_MONEDA,iedMoneda.Text);
end;


procedure TfrmProveedores.Select(ptTabla:String;piOpcion: Integer;ptKey:String);
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

procedure TfrmProveedores.SelectCiudad(piOpcion: Integer;ptKey:String);
begin
    mtNumTabla := TABLA_CD;
    Select('MBA10021',piOpcion,ptKey);
    if mrRes = mrOk then begin
        IB_Edit4.Text := frmSelTabla.Valores[2];
        xceCd.Text    := frmSelTabla.Valores[3];
        iqrCtas.FieldByName(IB_Edit4.DataField).AsString := IB_Edit4.Text;
    end;

end;

procedure TfrmProveedores.SelectEstado(piOpcion: Integer;ptKey:String);
begin
    mtNumTabla := TABLA_EDO;
    Select('MBA10021',piOpcion,ptKey);
    if mrRes = mrOk then begin
        IB_Edit5.Text :=  frmSelTabla.Valores[2];
        xceEdo.Text    := frmSelTabla.Valores[3];
        iqrCtas.FieldByName(IB_Edit5.DataField).AsString := IB_Edit5.Text;
    end;

end;
procedure TfrmProveedores.SelectMoneda(piOpcion: Integer;ptKey:String);
begin
    mtNumTabla := TABLA_MONEDA;
    Select('MBA10021',piOpcion,ptKey);
    if mrRes = mrOk then begin
        iedMoneda.Text := frmSelTabla.Valores[2];
        xceDescMoneda.Text    := frmSelTabla.Valores[3];
        iqrCtas.FieldByName(iedMoneda.DataField).AsString := iedMoneda.Text;
    end;

end;

procedure TfrmProveedores.IB_Edit4ButtonClick(Sender: TObject);
begin
    SelectCiudad(1,IB_Edit4.Text);

end;

procedure TfrmProveedores.IB_Edit5ButtonClick(Sender: TObject);
begin
    SelectEstado(1,IB_Edit5.Text);

end;

procedure TfrmProveedores.xceEdoButtonClick(Sender: TObject);
begin
    SelectEstado(2,xceEdo.Text);

end;

procedure TfrmProveedores.xceCdButtonClick(Sender: TObject);
begin
    SelectCiudad(2,xceCd.Text);

end;
procedure TfrmProveedores.iedMonedaButtonClick(Sender: TObject);
begin
    SelectMoneda(1,iedMoneda.Text);

end;

procedure TfrmProveedores.xceDescMonedaButtonClick(Sender: TObject);
begin
    SelectMoneda(2,xceDescMoneda.Text);

end;


//-----------------------
// Catalogo de Agentes
//-----------------------
procedure TfrmProveedores.LlenaAgente;
begin
end;

//-----------------------
// Catalogo de Rutas
//-----------------------
procedure TfrmProveedores.iedRutaButtonClick(Sender: TObject);
begin
end;

//---------------------------------
// Catalogo de Via de Transporte
//---------------------------------
procedure TfrmProveedores.rbtCodigoClick(Sender: TObject);
begin
    iqrCtas.OrderingItemNo := 1;
end;

procedure TfrmProveedores.rbtDescriClick(Sender: TObject);
begin
        iqrCtas.OrderingItemNo := 2;

end;


procedure TfrmProveedores.iedRazSocialChange(Sender: TObject);
begin
    xlbDescri1.Caption := iedRazSocial.Text;
    xlbDescri2.Caption := iedRazSocial.Text;
    xlbDescri3.Caption := iedRazSocial.Text;
end;
procedure TfrmProveedores.Clear;
begin
    xceCd.Text  := '';
    xceEdo.Text := '';
end;


procedure TfrmProveedores.cboBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of
    VK_UP:     GoPrior;
    VK_DOWN:   GoNext;
end;

end;

procedure TfrmProveedores.GoPrior;
begin
    if not (iqrCtas.bof) then iqrCtas.Prior;

end;

procedure TfrmProveedores.GoNext;
begin
    if not (iqrCtas.eof) then iqrCtas.Next;

end;

procedure TfrmProveedores.IB_Grid1GetCellProps(Sender: TObject; ACol,
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
          idat := BufferFieldByName('EDOACTPROV').AsSmallint;
          if idat = 2 then begin  //Proveedores Inactivos o Bajas
            if AColor = IB_Grid1.Color then
              AColor := clRed;
          end;

        end;

      end;
    end;
  end;

end;

end.
