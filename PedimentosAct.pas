 unit PedimentosAct;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, {Grids, RXGrids,} ToolWin, Menus, ImgList, StdCtrls, {Mask,}
  RxToolEdit, ExtCtrls, RXSplit, TBXStatusBars, ActnList, DBCtrls, Db,
  DBGrids, DBTables, RxPlacemnt, StrMan,
  IB_UpdateBar, IB_NavigationBar, IB_Controls, IB_Components, IB_Grid,
  {Animate, GIFCtrl,} IB_TransactionBar, Buttons, RXCtrls, Grids, Mask,IniFiles, LibApp,
  TB2Dock, TB2Toolbar, TB2ExtItems, TBXExtItems, TBX, Main, TB2Item, RzLabel,
  RzButton, RzLstBox,
  ClsFamilia;

type
    TFormClass = class of TForm;

type
  TfrmPedimentosAct = class(TForm)
    ImageList1: TImageList;
    PageControl1: TPageControl;
    tshGenerales: TTabSheet;
    sbMain: TTBXStatusBar;
    ActionList1: TActionList;
    Nuevo: TAction;
    Grabar: TAction;
    ToolBar: TAction;
    LetreroBtn: TAction;
    Listado: TAction;
    Eliminar: TAction;
    Salir: TAction;
    idsCtas: TIB_DataSource;
    axnBuscar: TAction;
    axnFiltrar: TAction;
    tshListado: TTabSheet;
    grpGral: TGroupBox;
    iedNumPedimento: TIB_Edit;
    iedAduana: TIB_Edit;
    iqrCtas: TIB_Query;
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
    FormStorage1: TFormStorage;
    Dock971: TTBXDock;
    iml24: TImageList;
    TBXToolbar1: TTBXToolbar;
    itmExit: TTBXItem;
    itmFirst: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    itmPrev: TTBXItem;
    itmInsert: TTBXItem;
    itmDelete: TTBXItem;
    itmPost: TTBXItem;
    itmCancel: TTBXItem;
    itmRefresh: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    itmNext: TTBXItem;
    itmLast: TTBXItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    itmHelp: TTBXItem;
    iedFecha: TIB_Date;
    iedAgente: TIB_Edit;
    iedUEntrada: TIB_Currency;
    iedUSalida: TIB_Currency;
    itmEdit: TTBXItem;
    iedDescriPro: TIB_Edit;
    lstFamilias: TRzListBox;
    lblListaFamilias: TRzLabel;
    btnAgregarFam: TRzBitBtn;
    procedure idsCtasDataChange(Sender: TIB_StatementLink;
      Statement: TIB_Statement; Field: TIB_Column);
    procedure itmEditClick(Sender: TObject);
    procedure itmLastClick(Sender: TObject);
    procedure itmNextClick(Sender: TObject);
    procedure itmPrevClick(Sender: TObject);
    procedure itmFirstClick(Sender: TObject);
    procedure itmRefreshClick(Sender: TObject);
    procedure itmCancelClick(Sender: TObject);
    procedure itmPostClick(Sender: TObject);
    procedure itmDeleteClick(Sender: TObject);
    procedure itmInsertClick(Sender: TObject);
    procedure itmExitClick(Sender: TObject);
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
    procedure tshListadoShow(Sender: TObject);
    procedure tbtSalirClick(Sender: TObject);
    procedure rbtCodigoClick(Sender: TObject);
    procedure rbtDescriClick(Sender: TObject);
    procedure UpdateControls;
    procedure SelectProducto(piOpcion: Integer;ptKey:String);
    procedure btnAgregarFamClick(Sender: TObject);
    procedure AgregarFamilia;
    procedure lstFamiliasDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedimentosAct: TfrmPedimentosAct;
  oFam:TFamilia;
implementation

uses DM_MBA, SelTabla;

{$R *.DFM}


procedure TfrmPedimentosAct.FormCreate(Sender: TObject);
begin

    iqrCtas.PreventDeleting := not (oUser.ISMASTER = 1);
    iqrCtas.Open;
    oFam := TFamilia.Create;
    oFam.FillFamilias2(lstFAmilias.Items);
    UpdateControls;
end;

procedure TfrmPedimentosAct.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    iqrCtas.Close;
    iqrCtas.Unprepare;
    FreeAndNil(oFam);
    frmPedimentosAct := nil;
    Action := caFree;
end;

procedure TfrmPedimentosAct.NuevoExecute(Sender: TObject);
var ID:LongInt;
begin
end;

procedure TfrmPedimentosAct.SalirExecute(Sender: TObject);
begin
    close;
end;

procedure TfrmPedimentosAct.ToolButton2Click(Sender: TObject);
begin
//    dsCte1.Post;
end;

procedure TfrmPedimentosAct.FormShow(Sender: TObject);
begin
      Top :=0;
      Left :=0;
//    dsCte1.FetchAll;
end;

procedure TfrmPedimentosAct.UpdateControls;
begin
  if iqrCtas.State in [dssInsert,dssEdit,dssDelete] then begin
    itmPost.Enabled := True;
    itmCancel.Enabled := itmPost.Enabled;
    itmInsert.Enabled := not itmPost.Enabled;
    itmEdit.Enabled   := itmInsert.Enabled;
    itmDelete.Enabled   := itmInsert.Enabled;
    btnAgregarFam.Enabled := itmPost.Enabled;
    lstFamilias.Enabled := itmPost.Enabled;
  end else begin
    itmPost.Enabled := False;
    itmCancel.Enabled := itmPost.Enabled;
    itmInsert.Enabled := not itmPost.Enabled;
    itmEdit.Enabled   := itmInsert.Enabled;
    itmDelete.Enabled   := itmInsert.Enabled;
    btnAgregarFam.Enabled := itmPost.Enabled;
    lstFamilias.Enabled := itmPost.Enabled;
  end;

  itmFirst.Enabled := not iqrCtas.Bof;
  itmPrev.Enabled := not iqrCtas.Bof;
  itmNext.Enabled := not iqrCtas.Eof;
  itmLast.Enabled := not iqrCtas.Eof;

end;

procedure TfrmPedimentosAct.bbtBuscarClick(Sender: TObject);
begin
//    axnBuscarExecute(self);
end;

procedure TfrmPedimentosAct.btnAgregarFamClick(Sender: TObject);
begin
  AgregarFamilia;
end;

procedure TfrmPedimentosAct.axnBuscarExecute(Sender: TObject);
var tCampo:String;
begin
  exit;
    if rbtCodigo.Checked then
        tCampo := 'CODPRODSER'
    else
        tCampo := 'NUMPEDIMENTO';



    iqrCtas.Locate (tCampo,
                      cboBuscar.Text,
                      [lopCaseInsensitive, lopPartialKey, lopFindNearest]
                      );

end;

procedure TfrmPedimentosAct.cboBuscarChange(Sender: TObject);
begin
  exit;
    if chkTecla.Checked then
        axnBuscarExecute(self);

end;

procedure TfrmPedimentosAct.cboBuscarKeyPress(Sender: TObject; var Key: Char);
begin
    case Key of
        #13: axnBuscarExecute(self);
    end;

end;

procedure TfrmPedimentosAct.axnFiltrarExecute(Sender: TObject);
begin
   iqrCtas.InvalidateSQL;
   iqrCtas.Refresh;
end;

procedure TfrmPedimentosAct.idsCtasDataChange(Sender: TIB_StatementLink;
  Statement: TIB_Statement; Field: TIB_Column);
begin
  exit;

  sbMain.Panels[1].Caption := iqrCtas.FieldByName('CODPRODSER').AsString + ' ' +
                              iqrCtas.FieldByName('DESCRIPRO').AsString;
  sbMain.Panels[1].Hint := sbMain.Panels[1].Caption;

end;

procedure TfrmPedimentosAct.idsCtasPrepareSQL(Sender: TIB_StatementLink;
  Statement: TIB_Statement);
var tWhere:String;
begin

  exit;


  if sbxFiltrado.Down then begin
  //I assume that all fields are char type... (don't be lazy)
    tWhere := Trim(cboCampo.Text) + ' '+
              Trim(cboOperador.text) + ' ' +
              '''' + Trim(cboValor.Text)+'''';
//    qrCliente.SQLWhereItems.Add( 'NOMBRE = ''Garza''' );
    iqrCtas.SQLWhereItems.Add(tWhere);
  end;

end;

procedure TfrmPedimentosAct.sbxFiltradoClick(Sender: TObject);
begin
//    axnFiltrarExecute(Sender);
end;

procedure TfrmPedimentosAct.iqrCtasAfterInsert(IB_Dataset: TIB_Dataset);
begin
    PageControl1.ActivePage := tshGenerales;
    iedNumPedimento.Setfocus;
end;

procedure TfrmPedimentosAct.itmCancelClick(Sender: TObject);
begin
  iqrCtas.Cancel;
  UpdateControls;
end;

procedure TfrmPedimentosAct.itmDeleteClick(Sender: TObject);
begin
  iqrCtas.Delete;
  UpdateControls;
end;

procedure TfrmPedimentosAct.itmEditClick(Sender: TObject);
begin
  iqrCtas.Edit;
  UpdateControls;
end;

procedure TfrmPedimentosAct.itmExitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPedimentosAct.itmFirstClick(Sender: TObject);
begin
  iqrCtas.First;
  UpdateControls;
end;

procedure TfrmPedimentosAct.itmInsertClick(Sender: TObject);
begin
  iqrCtas.Insert;
  UpdateControls;
end;

procedure TfrmPedimentosAct.itmLastClick(Sender: TObject);
begin
  iqrCtas.Last;
  UpdateControls;
end;

procedure TfrmPedimentosAct.itmNextClick(Sender: TObject);
begin
  iqrCtas.Next;
  UpdateControls;
end;

procedure TfrmPedimentosAct.itmPostClick(Sender: TObject);
begin
  iqrCtas.Post;
  UpdateControls;
end;

procedure TfrmPedimentosAct.itmPrevClick(Sender: TObject);
begin
  iqrCtas.Prior;
  UpdateControls;
end;

procedure TfrmPedimentosAct.itmRefreshClick(Sender: TObject);
begin
  iqrCtas.Refresh;
  UpdateControls;
end;

procedure TfrmPedimentosAct.lstFamiliasDblClick(Sender: TObject);
begin
  AgregarFamilia;
end;

procedure TfrmPedimentosAct.tshListadoShow(Sender: TObject);
begin
    cboBuscar.SetFocus;
    cboBuscar.SelectAll;
end;

procedure TfrmPedimentosAct.tbtSalirClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmPedimentosAct.rbtCodigoClick(Sender: TObject);
begin
    iqrCtas.OrderingItemNo := 1;
end;

procedure TfrmPedimentosAct.rbtDescriClick(Sender: TObject);
begin
    iqrCtas.OrderingItemNo := 2;
end;

procedure TfrmPedimentosAct.SelectProducto(piOpcion: Integer;ptKey:String);
var
  mrRes:Integer;
begin
//    Select('MBA10004',piOpcion,ptKey);
    if not Assigned(frmSelTabla) then
        frmSelTabla := TfrmSelTabla.Create (Application);
    frmSelTabla.Tabla := 'MBA10004';
    frmSelTabla.Param1 := '';
    frmSelTabla.Param2 := '';
    frmSelTabla.Campo := piOpcion;

    if piOpcion = 1 then begin
        frmSelTabla.Codigo := ptKey;
        frmSelTabla.Descri := '';
    end else begin
        frmSelTabla.Codigo := '';
        frmSelTabla.Descri := ptKey;
    end;
    mrRes := frmSelTabla.ShowModal;

    if iqrCtas.State in [dssInsert,dssEdit] then begin

      if mrRes = mrOk then begin
//        iedCodProdSer.Text := frmSelTabla.Valores[1];
        iedDescriPro.Text  := frmSelTabla.Valores[2];
      end;
    end;
end;
procedure TfrmPedimentosAct.AgregarFamilia;
var
  tLin,tFam,tSep:String;
begin
  tLin := lstFAmilias.SelectedItem;
  tFam := sm.Copy(tLin,1,2);
  if length(iedDescriPro.Text) > 0 then tSep := ',' else tSep := '';
  iedDescriPro.Text := iedDescriPro.Text + tSep+ tFam;
end;


end.
