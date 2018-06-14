 unit Productos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, {Grids, RXGrids,} ToolWin, Menus, ImgList, StdCtrls, {Mask,}
  RxToolEdit, ExtCtrls, RXSplit, TBXStatusBars, ActnList, DBCtrls, Db,
  DBGrids, DBTables, RxPlacemnt, StrMan,
  IB_UpdateBar, IB_NavigationBar, IB_Controls, IB_Components, IB_Grid,
  {Animate, GIFCtrl,} IB_TransactionBar, Buttons, RXCtrls, Grids, Mask,IniFiles, LibApp,
  Main,
  ClsProveedor,
  ClsTablas,
  ClsFamilia,
  ClsMoneda, RzLabel, TBX, TB2Item, TB2Dock, TB2Toolbar;

type
  TfrmProductos = class(TForm)
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
    tshCostos: TTabSheet;
    axnBuscar: TAction;
    axnFiltrar: TAction;
    tshListado: TTabSheet;
    grpGral: TGroupBox;
    iedCodigo: TIB_Edit;
    iedDescri: TIB_Edit;
    grpPrecios: TGroupBox;
    iedCodFamilia: TIB_Edit;
    IB_Edit4: TIB_Edit;
    IB_Edit5: TIB_Edit;
    IB_Edit6: TIB_Edit;
    IB_Edit7: TIB_Edit;
    IB_Edit8: TIB_Edit;
    IB_Edit9: TIB_Edit;
    IB_Edit10: TIB_Edit;
    IB_Edit11: TIB_Edit;
    IB_Edit12: TIB_Edit;
    IB_Edit13: TIB_Edit;
    iqrCtas: TIB_Query;
    grpCostos: TGroupBox;
    IB_Edit14: TIB_Edit;
    IB_Edit15: TIB_Edit;
    IB_Edit16: TIB_Edit;
    IB_Edit17: TIB_Edit;
    IB_Edit18: TIB_Edit;
    IB_Edit19: TIB_Edit;
    IB_Edit20: TIB_Edit;
    IB_Edit21: TIB_Edit;
    IB_Edit22: TIB_Edit;
    IB_Edit23: TIB_Edit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    IB_Edit34: TIB_Edit;
    IB_Edit35: TIB_Edit;
    IB_Edit36: TIB_Edit;
    tshFoto: TTabSheet;
    GroupBox3: TGroupBox;
    iedFoto: TIB_Edit;
    pnlFoto: TPanel;
    imgFoto: TImage;
    xsbCargaFoto: TRxSpeedButton;
    xfeFoto: TFilenameEdit;
    IB_Edit37: TIB_Edit;
    chkAuto: TCheckBox;
    iedCodCteProv: TIB_Edit;
    xceCodCteProv: TComboEdit;
    xceCodFamilia: TComboEdit;
    tshMargen: TTabSheet;
    IB_Edit24: TIB_Edit;
    Bevel5: TBevel;
    IB_Edit25: TIB_Edit;
    Panel1: TPanel;
    Panel3: TPanel;
    xlbDescri1: TRxLabel;
    xlbDescri2: TRxLabel;
    iedUniVta: TIB_Edit;
    xceUniVta: TComboEdit;
    grpExist: TGroupBox;
    iedExisTotal: TIB_Edit;
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
    iedPCompraDL: TIB_Edit;
    xceTipoCambio: TComboEdit;
    Label1: TLabel;
    icbEdoActProd: TIB_ComboBox;
    rbtFamDescri: TRadioButton;
    xsbTodos: TRxSpeedButton;
    xsbActivos: TRxSpeedButton;
    xsbInactivos: TRxSpeedButton;
    iedCodCteProv2: TIB_Edit;
    xceCodCteProv2: TComboEdit;
    IB_ComboBox1: TIB_ComboBox;
    IB_Edit2: TIB_Edit;
    IB_Edit1: TIB_Edit;
    GroupBox2: TGroupBox;
    imoDescripTec: TIB_Memo;
    GroupBox4: TGroupBox;
    Bevel4: TBevel;
    IB_Edit3: TIB_Edit;
    IB_Edit26: TIB_Edit;
    IB_Edit27: TIB_Edit;
    IB_Edit28: TIB_Edit;
    IB_Edit29: TIB_Edit;
    IB_Edit30: TIB_Edit;
    IB_Edit31: TIB_Edit;
    IB_Edit32: TIB_Edit;
    IB_Edit33: TIB_Edit;
    IB_Edit38: TIB_Edit;
    IB_Edit39: TIB_Edit;
    TabSheet1: TTabSheet;
    grpMargenes: TGroupBox;
    IB_Edit50: TIB_Edit;
    IB_Edit55: TIB_Edit;
    Panel2: TPanel;
    xlbDescri3: TRxLabel;
    iedPCompra: TIB_Currency;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    TBXDock1: TTBXDock;
    TBXToolbar1: TTBXToolbar;
    TBControlItem1: TTBControlItem;
    IB_UpdateBar1: TIB_UpdateBar;
    TBControlItem2: TTBControlItem;
    IB_NavigationBar1: TIB_NavigationBar;
    TBXSeparatorItem1: TTBXSeparatorItem;
    tbtSalir: TTBXItem;
    FormStorage1: TFormStorage;
    GroupBox5: TGroupBox;
    IB_Edit40: TIB_Edit;
    IB_Edit41: TIB_Edit;
    IB_Edit42: TIB_Edit;
    IB_Edit43: TIB_Edit;
    GroupBox6: TGroupBox;
    IB_Edit44: TIB_Edit;
    IB_Edit45: TIB_Edit;
    IB_Edit46: TIB_Edit;
    btnPegar: TButton;
    IB_NavigationBar2: TIB_NavigationBar;
    btnCopiar: TButton;
    IB_Edit47: TIB_Edit;
    IB_Edit48: TIB_Edit;
    iedPeso: TIB_Edit;
    IB_Edit49: TIB_Edit;
    IB_Edit51: TIB_Edit;
    IB_Edit52: TIB_Edit;
    IB_Edit53: TIB_Edit;
    TabSheet2: TTabSheet;
    IB_ComboBox2: TIB_ComboBox;
    IB_ComboBox3: TIB_ComboBox;
    IB_ComboBox4: TIB_ComboBox;
    IB_Edit54: TIB_Edit;
    IB_Edit56: TIB_Edit;
    xlbDescri4: TRxLabel;
    IB_Edit57: TIB_Edit;
    IB_Edit58: TIB_Edit;
    IB_Edit59: TIB_Edit;
    TBXSeparatorItem2: TTBXSeparatorItem;
    tbtClonar: TTBXItem;
    IB_Edit60: TIB_Edit;
    IB_Edit61: TIB_Edit;
    IB_Edit62: TIB_Edit;
    IB_Edit63: TIB_Edit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure xsbCargaFotoClick(Sender: TObject);
    procedure xfeFotoChange(Sender: TObject);
    procedure iedFotoChange(Sender: TObject);
    procedure iedDescriChange(Sender: TObject);
    procedure iedCodCteProvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure iedCodCteProvButtonClick(Sender: TObject);
    procedure Select(ptTabla:String;piOpcion: Integer;ptKey:String);
    procedure SelectProveedor(piOpcion:Integer;ptKey:String);
    procedure SelectProveedor2(piOpcion:Integer;ptKey:String);
    procedure LlenaProveedor;
    procedure LlenaProveedor2;
    procedure iedCodFamiliaButtonClick(Sender: TObject);
    procedure iedCodFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure iedUniVtaButtonClick(Sender: TObject);
    procedure iedUniVtaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LlenaFamilia;
    procedure LlenaUniVta;
    procedure SelectFamilia(piOpcion:Integer;ptKey:String);
    procedure SelectuniVta(piOpcion:Integer;ptKey:String);
    procedure iedUniVtaChange(Sender: TObject);
    procedure tshListadoShow(Sender: TObject);
    procedure iedCodFamiliaChange(Sender: TObject);
    procedure iedCodCteProvChange(Sender: TObject);
    procedure iedPCompraDLExit(Sender: TObject);
    procedure rbtCodigoClick(Sender: TObject);
    procedure rbtDescriClick(Sender: TObject);
    procedure cboBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GoPrior;
    procedure GoNext;
    procedure Clear;
    procedure rbtFamDescriClick(Sender: TObject);
    procedure igdProdGetCellProps(Sender: TObject; ACol, ARow: Integer;
      AState: TGridDrawState; var AColor: TColor; AFont: TFont);
    procedure iedCodCteProv2ButtonClick(Sender: TObject);
    procedure iedCodCteProv2Change(Sender: TObject);
    procedure iedCodCteProv2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpdateControls;
    procedure cboCampoChange(Sender: TObject);
    procedure iqrCtasAfterPost(IB_Dataset: TIB_Dataset);
    procedure btnCopiarClick(Sender: TObject);
    procedure btnPegarClick(Sender: TObject);
    procedure tbtClonarClick(Sender: TObject);
    procedure ClonarProducto;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProductos: TfrmProductos;
  Ini:TIniFile;
  mtPath:String;
  oFam:TFamilia;
  oTabla: TTabla;
  oProv:TProveedor;
  oMon:TMoneda;
  mrRes:Integer;
  mtNumTabla:String;
  mdTipoCambio:Double;
  miHoja,miRen,miCol:Integer;
  
implementation

uses DM_MBA, SelTabla;

{$R *.DFM}


procedure TfrmProductos.FormCreate(Sender: TObject);
var tFileName:String;
begin
    oProv := TProveedor.create;
    oTabla := TTabla.create;
    oFam   := TFamilia.create;
    oMon   := TMoneda.Create;

//    iqrCtas.PreventDeleting := not (oUser.ISMASTER = 1);
    iqrCtas.ReadOnly  := not (oUser.ISMASTER = 1);
    iqrCtas.Open;

    tFileName := GetIniFile;
    Ini := TIniFile.Create(tFileName);
    mtPath := Ini.ReadString ('Directorios','Graficos','c:\@Mba\Ico\');
    xfeFoto.InitialDir := mtPath;

    oMon.MONEDA := '2';
    mdTipoCambio := oMon.GetTipoCambio2;
    xceTipoCambio.Text := sm.StrFloat (mdTipoCambio,'##0.00');
end;

procedure TfrmProductos.FormShow(Sender: TObject);
begin
      Top :=0;
      Left :=0;
      pgcMain.ActivePageIndex := 0;
      MainForm.AplicarPerfil2(self);
      UpdateControls;
end;


procedure TfrmProductos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Ini.Free;
    iqrCtas.Close;
    iqrCtas.Unprepare;
    frmProductos := nil;
    oProv.Free;
    oTabla.Free;
    oFam.Free;
    oMon.Free;
    Action := caFree;
end;

procedure TfrmProductos.UpdateControls;
begin
  if (length(cboCampo.Text) <= 0) or
     (length(cboOperador.Text) <= 0) or
     (length(cboValor.Text) <= 0) then
     sbxFiltrado.Enabled := False
  else
    sbxFiltrado.Enabled := True;

end;

procedure TfrmProductos.SalirExecute(Sender: TObject);
begin
    close;
end;

procedure TfrmProductos.ToolButton2Click(Sender: TObject);
begin
//    dsCte1.Post;
end;

procedure TfrmProductos.bbtBuscarClick(Sender: TObject);
begin
    axnBuscarExecute(self);
end;

procedure TfrmProductos.axnBuscarExecute(Sender: TObject);
var tCampo:String;
begin
    if rbtCodigo.Checked then
        tCampo := 'CODPRODSER'
    else
        tCampo := 'DESCRIPPRO';



    iqrCtas.Locate (tCampo,
                      cboBuscar.Text,
                      [lopCaseInsensitive, lopPartialKey, lopFindNearest]
                      );

end;

procedure TfrmProductos.cboBuscarChange(Sender: TObject);
begin
    if chkTecla.Checked then
        axnBuscarExecute(self);

end;

procedure TfrmProductos.cboBuscarKeyPress(Sender: TObject; var Key: Char);
begin
    case Key of
        #13: axnBuscarExecute(self);
    end;

end;

procedure TfrmProductos.axnFiltrarExecute(Sender: TObject);
begin
   iqrCtas.InvalidateSQL;
   iqrCtas.Refresh;
end;

procedure TfrmProductos.idsCtasPrepareSQL(Sender: TIB_StatementLink;
  Statement: TIB_Statement);
var tWhere:String;
begin
  iqrCtas.SQLWhereItems.Clear;
  if sbxFiltrado.Down then begin
  //I assume that all fields are char type... (don't be lazy)
    tWhere := Trim(cboCampo.Text) + ' '+
              Trim(cboOperador.text) + ' ' +
              '''' + Trim(cboValor.Text)+'''';
//    qrCliente.SQLWhereItems.Add( 'NOMBRE = ''Garza''' );
    iqrCtas.SQLWhereItems.Add(tWhere);
  end;
  if xsbActivos.Down then begin
    tWhere := 'EDOACTPROD = ''1''';
    iqrCtas.SQLWhereItems.Add(tWhere);
  end;
  if xsbInActivos.Down then begin
    tWhere := 'EDOACTPROD = ''2''';
    iqrCtas.SQLWhereItems.Add(tWhere);
  end;

end;

procedure TfrmProductos.sbxFiltradoClick(Sender: TObject);
begin
    axnFiltrarExecute(Sender);
end;

procedure TfrmProductos.iqrCtasAfterInsert(IB_Dataset: TIB_Dataset);
begin
    Clear;
    pgcMain.ActivePage := tshGenerales;
    iedCodigo.Setfocus;
    iqrCtas.FieldByName('EXISTOTAL').AsDouble := 0;
    iqrCtas.FieldByName('PCIOVTA1').AsDouble := 0;
    iqrCtas.FieldByName('PCIOVTA2').AsDouble := 0;
    iqrCtas.FieldByName('PCIOVTA3').AsDouble := 0;
    iqrCtas.FieldByName('PCIOVTA4').AsDouble := 0;
    iqrCtas.FieldByName('PCIOVTA5').AsDouble := 0;
    iqrCtas.FieldByName('PCIOVTA6').AsDouble := 0;
    iqrCtas.FieldByName('PCIOVTA7').AsDouble := 0;
    iqrCtas.FieldByName('PCIOVTA8').AsDouble := 0;
    iqrCtas.FieldByName('PCIOVTA9').AsDouble := 0;
    iqrCtas.FieldByName('PCIOVTA10').AsDouble := 0;
    iqrCtas.FieldByName('PCIOCOMPRA').AsDouble := 0;
    iqrCtas.FieldByName('PCIOCOMPRADL').AsDouble := 0;
end;

procedure TfrmProductos.iqrCtasAfterPost(IB_Dataset: TIB_Dataset);
begin
    miHoja := iqrCtas.FieldByName('HOJA').AsInteger;
    miRen  := iqrCtas.FieldByName('REN').AsInteger;
    miCol  := iqrCtas.FieldByName('COL').AsInteger;
end;

procedure TfrmProductos.xsbCargaFotoClick(Sender: TObject);
var tFile:String;
begin
    tFile := mtPath+Trim(iedFoto.Text)+'.jpg';
    if FileExists(tFile) then begin
        imgFoto.Visible := True;
        imgFoto.Picture.LoadFromFile (tFile)
    end else
        imgFoto.Visible := False;

end;

procedure TfrmProductos.xfeFotoChange(Sender: TObject);
begin
    iedFoto.Text :=  ExtractFileName(xfeFoto.Text);
    iqrCtas.FieldByName('PATHFOTO').AsString := iedFoto.Text;
    xsbCargaFotoClick(Sender);
end;

procedure TfrmProductos.iedFotoChange(Sender: TObject);
var tNom:String;
begin
{
    tNom := iedFoto.Text;
    tNom := sm.Strip (tNom);
    if length(tNom) <= 0 then
        iedFoto.Text := iedCodigo.Text;
}
    if chkAuto.Checked then
        xsbCargaFotoClick(Sender);
end;

procedure TfrmProductos.iedDescriChange(Sender: TObject);
begin
    xlbDescri1.Caption := iedCodigo.Text + ' ' + iedDescri.Text;
    xlbDescri2.Caption := xlbDescri1.Caption;
    xlbDescri3.Caption := xlbDescri1.Caption;
    xlbDescri4.Caption := xlbDescri1.Caption;

end;


procedure TfrmProductos.Select(ptTabla:String;piOpcion: Integer;ptKey:String);
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


procedure TfrmProductos.iedCodCteProvKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    case Key of
    VK_Return: LlenaProveedor;
    end;
end;

procedure TfrmProductos.LlenaProveedor;
begin
    xceCodCteProv.Text := '';
    if oProv = nil then exit;
    oProv.CODCTEPROV := iedCodCteProv.Text;
    oProv.Retrieve;
    if oProv.Error = 0 then begin
        xceCodCteProv.Text := oProv.NOMBPROVEE;
    end;
end;
procedure TfrmProductos.LlenaProveedor2;
begin
    xceCodCteProv2.Text := '';
    if oProv = nil then exit;
    oProv.CODCTEPROV := iedCodCteProv2.Text;
    oProv.Retrieve;
    if oProv.Error = 0 then begin
        xceCodCteProv2.Text := oProv.NOMBPROVEE;
    end;
end;

procedure TfrmProductos.LlenaFamilia;
begin
    xceCodFamilia.Text := '';
    if (oFam = nil) then exit;
    oFam.CODFAM  := iedCodFamilia.Text;
    oFam.Retrieve;
    if oFam.Error = 0 then begin
        xceCodFamilia.Text := oFam.DESCRIPFAM;
    end;
end;

procedure TfrmProductos.LlenaUniVta;
begin
    xceUniVta.Text := '';
    if oTabla = nil then exit;
    xceUniVta.Text := oTabla.GetDescri ('11',iedUniVta.Text);
end;

procedure TfrmProductos.SelectProveedor(piOpcion:Integer;ptKey:String);
begin
    Select('MBA10013',piOpcion,ptKey);
    if mrRes = mrOk then begin
        iedCodCteProv.Text := frmSelTabla.Valores[1];
        xceCodCteProv.Text  := frmSelTabla.Valores[2];
        iqrCtas.FieldByName(iedCodCteProv.DataField).AsString := iedCodCteProv.Text;

    end;
end;

procedure TfrmProductos.SelectProveedor2(piOpcion:Integer;ptKey:String);
begin
    Select('MBA10013',piOpcion,ptKey);
    if mrRes = mrOk then begin
        iedCodCteProv2.Text := frmSelTabla.Valores[1];
        xceCodCteProv2.Text  := frmSelTabla.Valores[2];
        iqrCtas.FieldByName(iedCodCteProv2.DataField).AsString := iedCodCteProv2.Text;

    end;
end;

procedure TfrmProductos.SelectFamilia(piOpcion:Integer;ptKey:String);
begin
    Select('MBA10040',piOpcion,ptKey);
    if mrRes = mrOk then begin
        iedCodFamilia.Text := frmSelTabla.Valores[1];
        xceCodFamilia.Text  := frmSelTabla.Valores[2];
        iqrCtas.FieldByName(iedCodFamilia.DataField).AsString := iedCodFamilia.Text;

    end;
end;

procedure TfrmProductos.SelectuniVta(piOpcion:Integer;ptKey:String);
begin
    mtNumTabla := '11';
    Select('MBA10021',piOpcion,ptKey);
    if mrRes = mrOk then begin
        iedUniVta.Text := frmSelTabla.Valores[2];
        xceUniVta.Text  := frmSelTabla.Valores[3];
        iqrCtas.FieldByName(iedUniVta.DataField).AsString := ieduniVta.Text;

    end;
end;

procedure TfrmProductos.tbtClonarClick(Sender: TObject);
begin
  ClonarProducto;
end;

procedure TfrmProductos.iedCodCteProvButtonClick(Sender: TObject);
begin
    SelectProveedor(1,iedCodCteProv.Text);
end;

procedure TfrmProductos.iedCodFamiliaButtonClick(Sender: TObject);
begin
    SelectFamilia(1,iedCodFamilia.Text);

end;

procedure TfrmProductos.iedCodFamiliaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    case Key of
    VK_Return: LlenaFamilia;
    end;

end;

procedure TfrmProductos.iedUniVtaButtonClick(Sender: TObject);
begin
    SelectuniVta(1,iedUniVta.Text);
end;

procedure TfrmProductos.iedUniVtaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_Return: LlenauniVta;
    end;

end;
procedure TfrmProductos.iedCodCteProvChange(Sender: TObject);
begin
//    if iqrCtas.State in [dssEdit] then begin
        LlenaProveedor;
//    end;

end;

procedure TfrmProductos.iedUniVtaChange(Sender: TObject);
begin
//    if iqrCtas.State in [dssBrowse] then begin
        LlenaUniVta;
//    end;
end;
procedure TfrmProductos.iedCodFamiliaChange(Sender: TObject);
begin
//    if iqrCtas.State in [dssBrowse] then begin
        LlenaFamilia;
//    end;

end;

procedure TfrmProductos.tshListadoShow(Sender: TObject);
begin
    cboBuscar.SetFocus;
    cboBuscar.SelectAll;
end;



procedure TfrmProductos.iedPCompraDLExit(Sender: TObject);
var
    dDls,dMN:Double;
begin
    try
        dDls := sm.ToF (iedPCompraDL.Text);
    except
        dDls := 0;
    end;
    if (dDls <= 0) or (iqrCtas.State in [dssBrowse]) then exit;
    dMN :=  dDls * mdTipoCambio;
    iedPCompra.Text := sm.StrFloat (dMN,'##0.00');

end;

procedure TfrmProductos.rbtCodigoClick(Sender: TObject);
begin
    iqrCtas.OrderingItemNo := 1;
end;

procedure TfrmProductos.rbtDescriClick(Sender: TObject);
begin
    iqrCtas.OrderingItemNo := 2;

end;

procedure TfrmProductos.rbtFamDescriClick(Sender: TObject);
begin
    iqrCtas.OrderingItemNo := 3;

end;

procedure TfrmProductos.cboBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of
    VK_UP:     GoPrior;
    VK_DOWN:   GoNext;
end;

end;
procedure TfrmProductos.GoPrior;
begin
    if not (iqrCtas.bof) then iqrCtas.Prior;

end;

procedure TfrmProductos.GoNext;
begin
    if not (iqrCtas.eof) then iqrCtas.Next;

end;
procedure TfrmProductos.Clear;
begin
    xceCodCteProv.Text  := '';
    xceCodFamilia.Text := '';
    xceUniVta.Text := '';
end;


procedure TfrmProductos.igdProdGetCellProps(Sender: TObject; ACol,
  ARow: Integer; AState: TGridDrawState; var AColor: TColor; AFont: TFont);
var idat:smallint;
  tmpFld: TIB_Column;

begin
  if idsCtas.Active then begin
    with idsCtas.DataSet do begin
      BufferRowNum := igdProd.DataRow[ ARow ];
      if BufferRowNum > 0 then begin

// This provides an example of how colors can be customized on an
// individual cell basis.
        tmpFld := igdProd.GridFields[ igdProd.DataCol[ ACol ]];
        if Assigned( tmpFld ) and ( tmpFld.FieldName = 'CODPRODSER' ) then  begin
          idat := BufferFieldByName('EDOACTPROD').AsSmallint;
          if idat = 2 then begin  //Productos Inactivos o Bajas
            if AColor = igdProd.Color then
              AColor := clRed;
          end;

        end;

      end;
    end;
  end;

end;

procedure TfrmProductos.iedCodCteProv2ButtonClick(Sender: TObject);
begin
    SelectProveedor2(1,iedCodCteProv2.Text);
end;

procedure TfrmProductos.iedCodCteProv2Change(Sender: TObject);
begin
//    if iqrCtas.State in [dssEdit] then begin
        LlenaProveedor2;
//    end;

end;

procedure TfrmProductos.iedCodCteProv2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    case Key of
    VK_Return: LlenaProveedor2;
    end;

end;

procedure TfrmProductos.cboCampoChange(Sender: TObject);
begin
  UpdateControls;
end;

procedure TfrmProductos.btnPegarClick(Sender: TObject);
begin
  iqrCtas.FieldByName('HOJA').AsInteger := miHoja;
  iqrCtas.FieldByName('REN').AsInteger := miRen;
  iqrCtas.FieldByName('COL').AsInteger := miCol + 1;

end;

procedure TfrmProductos.btnCopiarClick(Sender: TObject);
begin
  miHoja := iqrCtas.FieldByName('HOJA').AsInteger;
  miRen  := iqrCtas.FieldByName('REN').AsInteger;
  miCol  := iqrCtas.FieldByName('COL').AsInteger;

end;

procedure TfrmProductos.ClonarProducto;
var vTemp : array[0..100] of variant;
    tKey1,Seccion,Nivel:String;
    i,iFCount:Integer;
begin
// Copiar Unidad...
    if (iqrCtas.State = dssInsert) or
       (iqrCtas.State = dssEdit) then
        iqrCtas.Post;

    iFCount := iqrCtas.Fields.ColumnCount;
    for i:= 0 to iFCount - 1 do begin
        vTemp[i] := iqrCtas.fields.Columns[i].AsVariant;
    end;

    //altero la llave para que no sea igual a la original
//    vTemp[11] := DM1.GetCatalogoId;
    tKey1 := '@'+vTemp[0];
    vTemp[0] := tKey1;

    iqrCtas.Insert;
    for i:= 0 to iFCount - 1 do begin
        iqrCtas.fields.Columns[i].AsVariant := vTemp[i];
    end;
    iqrCtas.Post;
//    iqrCtas.Last;

    exit;

    iqrCtas.Close;
    iqrCtas.Open;

    iqrCtas.Locate ('UBICACION',
                   tKey1,
                   [lopCaseInsensitive, lopPartialKey, lopFindNearest]
                    );

end;

end.
