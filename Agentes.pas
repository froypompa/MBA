 unit Agentes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, {Grids, RXGrids,} ToolWin, Menus, ImgList, StdCtrls, {Mask,}
  RxToolEdit, ExtCtrls, RXSplit, TBXStatusBars, ActnList, DBCtrls, Db,
  DBGrids, DBTables, RxPlacemnt, StrMan,
  IB_UpdateBar, IB_NavigationBar, IB_Controls, IB_Components, IB_Grid,
  {Animate, GIFCtrl,} IB_TransactionBar, Buttons, RXCtrls, Grids, Mask,IniFiles, LibApp,
  Main, ClsSucursal,
  ClsTablas, TBX, TB2Item, TB2Dock, TB2Toolbar;

type
  TfrmAgentes = class(TForm)
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
    idsCtas: TIB_DataSource;
    FormStorage1: TFormStorage;
    tshOtros: TTabSheet;
    axnBuscar: TAction;
    axnFiltrar: TAction;
    tshListado: TTabSheet;
    grpGral: TGroupBox;
    iedCodigo: TIB_Edit;
    iedDescri: TIB_Edit;
    grpPrecios: TGroupBox;
    IB_Edit4: TIB_Edit;
    iqrCtas: TIB_Query;
    Panel1: TPanel;
    xlbDescri1: TRxLabel;
    pnlGrupos: TPanel;
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
    igdProd: TIB_Grid;
    iedRuta: TIB_Edit;
    xceRuta: TComboEdit;
    IB_ComboBox1: TIB_ComboBox;
    icrComCob: TIB_Currency;
    icrComVta: TIB_Currency;
    IB_Date1: TIB_Date;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBControlItem1: TTBControlItem;
    IB_UpdateBar2: TIB_UpdateBar;
    TBControlItem2: TTBControlItem;
    IB_NavigationBar1: TIB_NavigationBar;
    TBXSeparatorItem1: TTBXSeparatorItem;
    tbtSalir: TTBXItem;
    iedSucursal: TIB_Edit;
    xceSucursal: TComboEdit;
    IB_Currency1: TIB_Currency;
    iedEmail1: TIB_Edit;
    IB_Edit1: TIB_Edit;
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
    procedure iedDescriChange(Sender: TObject);
    procedure Select(ptTabla:String;piOpcion: Integer;ptKey:String);
    procedure LlenaRuta;
    procedure LlenaSucursal;
    procedure SelectRuta(piOpcion:Integer;ptKey:String);
    procedure SelectSucursal(piOpcion:Integer;ptKey:String);
    procedure tshListadoShow(Sender: TObject);
    procedure rbtCodigoClick(Sender: TObject);
    procedure rbtDescriClick(Sender: TObject);
    procedure iedRutaButtonClick(Sender: TObject);
    procedure iedRutaChange(Sender: TObject);
    procedure iedRutaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure iedSucursalButtonClick(Sender: TObject);
    procedure iedSucursalChange(Sender: TObject);
    procedure iedSucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure iqrCtasAfterPost(IB_Dataset: TIB_Dataset);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgentes: TfrmAgentes;
  Ini:TIniFile;
  mtPath:String;
  oTabla: TTabla;
  mrRes:Integer;
  mtNumTabla:String;
  mdTipoCambio:Double;
  oSuc:TSucursal;

implementation

uses DM_MBA, SelTabla;

{$R *.DFM}

const
    TABLA_RUTA  : String = '9';


procedure TfrmAgentes.FormCreate(Sender: TObject);
var tFileName:String;
begin
    oTabla := TTabla.create;
    oSuc   := TSucursal.create;

    iqrCtas.PreventDeleting := not (oUser.ISMASTER = 1);
    iqrCtas.Open;

end;

procedure TfrmAgentes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Ini.Free;
    iqrCtas.Close;
    iqrCtas.Unprepare;
    frmAgentes := nil;
    oTabla.Free;
    oSuc.Free;
    Action := caFree;
end;

procedure TfrmAgentes.NuevoExecute(Sender: TObject);
var ID:LongInt;
begin
end;

procedure TfrmAgentes.SalirExecute(Sender: TObject);
begin
    close;
end;

procedure TfrmAgentes.ToolButton2Click(Sender: TObject);
begin
//    dsCte1.Post;
end;

procedure TfrmAgentes.FormShow(Sender: TObject);
begin
      Top :=0;
      Left :=0;
      pgcMain.ActivePageIndex := 0;
      MainForm.AplicarPerfil2(self);
end;

procedure TfrmAgentes.bbtBuscarClick(Sender: TObject);
begin
    axnBuscarExecute(self);
end;

procedure TfrmAgentes.axnBuscarExecute(Sender: TObject);
var tCampo:String;
begin
    if rbtCodigo.Checked then
        tCampo := 'NUMAGENTE'
    else
        tCampo := 'NOMBAGEN';



    iqrCtas.Locate (tCampo,
                      cboBuscar.Text,
                      [lopCaseInsensitive, lopPartialKey, lopFindNearest]
                      );

end;

procedure TfrmAgentes.cboBuscarChange(Sender: TObject);
begin
    if chkTecla.Checked then
        axnBuscarExecute(self);

end;

procedure TfrmAgentes.cboBuscarKeyPress(Sender: TObject; var Key: Char);
begin
    case Key of
        #13: axnBuscarExecute(self);
    end;

end;

procedure TfrmAgentes.axnFiltrarExecute(Sender: TObject);
begin
   iqrCtas.InvalidateSQL;
   iqrCtas.Refresh;
end;

procedure TfrmAgentes.idsCtasPrepareSQL(Sender: TIB_StatementLink;
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

procedure TfrmAgentes.sbxFiltradoClick(Sender: TObject);
begin
    axnFiltrarExecute(Sender);
end;

procedure TfrmAgentes.iqrCtasAfterInsert(IB_Dataset: TIB_Dataset);
begin
    pgcMain.ActivePage := tshGenerales;
    iedCodigo.Setfocus;
end;

procedure TfrmAgentes.iqrCtasAfterPost(IB_Dataset: TIB_Dataset);
begin
  if iedSucursal.Text = '' then begin
    ShowMessage('Falta capturar el numero de la sucursal!!');
    iqrCtas.Edit;
  end;

end;

procedure TfrmAgentes.iedDescriChange(Sender: TObject);
begin
    xlbDescri1.Caption := iedCodigo.Text + ' ' + iedDescri.Text;

end;


procedure TfrmAgentes.Select(ptTabla:String;piOpcion: Integer;ptKey:String);
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


procedure TfrmAgentes.LlenaRuta;
begin
    if oTabla = nil then exit;
    xceRuta.Text := oTabla.GetDescri (TABLA_RUTA,iedRuta.Text);
end;

procedure TfrmAgentes.LlenaSucursal;
begin
    if oTabla = nil then exit;
    oSuc.IDSUCURSAL := sm.ToI(iedSucursal.Text);
    oSuc.Retrieve; //Pendiente
    xceSucursal.Text := oSuc.NOMBRE;
end;

procedure TfrmAgentes.SelectRuta(piOpcion:Integer;ptKey:String);
begin
    mtNumTabla := TABLA_RUTA;
    Select('MBA10021',piOpcion,ptKey);
    if mrRes = mrOk then begin
        iedRuta.Text := frmSelTabla.Valores[2];
        xceRuta.Text  := frmSelTabla.Valores[3];
        iqrCtas.FieldByName(iedRuta.DataField).AsString := iedRuta.Text;
    end;
end;

procedure TfrmAgentes.SelectSucursal(piOpcion:Integer;ptKey:String);
begin
    mtNumTabla := TABLA_RUTA;
    Select('MBA10050',piOpcion,ptKey);
    if mrRes = mrOk then begin
        iedSucursal.Text := frmSelTabla.Valores[1];
        xceSucursal.Text  := frmSelTabla.Valores[2];
        iqrCtas.FieldByName(iedRuta.DataField).AsString := iedSucursal.Text;
    end;
end;
procedure TfrmAgentes.iedRutaButtonClick(Sender: TObject);
begin
    SelectRuta(1,iedRuta.Text);
end;

procedure TfrmAgentes.iedRutaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_Return: LlenaRuta;
    end;

end;
procedure TfrmAgentes.iedSucursalButtonClick(Sender: TObject);
begin
    SelectSucursal(1,iedSucursal.Text);
end;

procedure TfrmAgentes.iedSucursalChange(Sender: TObject);
begin
    if iqrCtas.State in [dssBrowse] then begin
        LlenaSucursal;
    end;

end;

procedure TfrmAgentes.iedSucursalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_Return: LlenaSucursal;
    end;

end;

procedure TfrmAgentes.iedRutaChange(Sender: TObject);
begin
    if iqrCtas.State in [dssBrowse] then begin
        LlenaRuta;
    end;

end;

procedure TfrmAgentes.tshListadoShow(Sender: TObject);
begin
    cboBuscar.SetFocus;
    cboBuscar.SelectAll;
end;



procedure TfrmAgentes.rbtCodigoClick(Sender: TObject);
begin
    iqrCtas.OrderingItemNo := 1;
end;

procedure TfrmAgentes.rbtDescriClick(Sender: TObject);
begin
    iqrCtas.OrderingItemNo := 2;

end;

end.
