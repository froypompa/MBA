unit UbiProdAct;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, RzEdit, RzLabel, RzPanel, RzStatus, ExtCtrls,
  RzCommon, RzBckgnd, ImgList, RzCmboBx, RzButton, IB_Components, Grids,
  IB_Grid, RzTabs, TB2Item, TB2Dock, TB2Toolbar, RzBtnEdt,
  MsgErrorApp,ClsCliente, ClsTablas, ClsAgente, StrMan, StringLib,
  VCIF1Lib_TLB,FormulaOneLib,TBX, OleCtrls,
  ClsUbicaciones, ProductoSearch;


type
  TEstado = (esInsert,esUpdate,esDelete);
  TfrmUbiProdAct = class(TForm)
    sbMain: TRzStatusBar;
    sbMsg: TRzGlyphStatus;
    sbEstado: TRzGlyphStatus;
    RzGlyphStatus3: TRzGlyphStatus;
    ImageList1: TImageList;
    pgcMain: TRzPageControl;
    isql1: TIB_DSQL;
    fcz1: TRzFrameController;
    TBXDock1: TTBXDock;
    ttbx1: TTBXToolbar;
    tbtGrabar: TTBXItem;
    tbtSalir: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    Timer1: TTimer;
    TBXSeparatorItem2: TTBXSeparatorItem;
    tbtAyuda: TTBXItem;
    tshGenerales: TRzTabSheet;
    RzLabel1: TRzLabel;
    ebzUbicacion: TRzButtonEdit;
    RzLabel3: TRzLabel;
    enzCantidad: TRzNumericEdit;
    RzLabel5: TRzLabel;
    enzTarima: TRzNumericEdit;
    ebzId: TRzButtonEdit;
    RzLabel6: TRzLabel;
    fraProducto1: TfraProducto;
    RzLabel2: TRzLabel;
    ebzComentarios: TRzButtonEdit;
    itmNuevo: TTBXItem;
    procedure tbtGrabarSalirClick(Sender: TObject);
    procedure tbtCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Select;
    procedure Insertar;
    procedure Modificar;
    procedure Eliminar;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure tbtSalirClick(Sender: TObject);
    procedure SetEstado_Insert;
    procedure SetEstado_Update;
    procedure SetEstado_Delete;
    procedure tbtGrabarClick(Sender: TObject);
    procedure Clear;
    procedure FormShow(Sender: TObject);
    procedure itmNuevoClick(Sender: TObject);
    procedure Nuevo;
  private
    { Private declarations }
    FoUP: TUbicacion;
    FIdCliente: Integer;
    FCodigo: String;
    FEstado : TEstado;
    FPerfil:SmallInt;
    procedure SetCodigo(pCodigo:String);
    procedure SetoUP(AoUP:TUbicacion);
    procedure SetPerfil(APerfil:SmallInt);
  public
    { Public declarations }
    property oUP: TUbicacion read FoUP write SetoUP;
  end;




var
  frmUbiProdAct: TfrmUbiProdAct;

implementation

uses Main, DM_MBA;

{$R *.DFM}
{$REGION '<<Form Events >>'}

procedure TfrmUbiProdAct.FormCreate(Sender: TObject);
var
  ix:Integer;
begin


  if FoUP = nil then begin
    FoUP := TUbicacion.Create;
  end;
  fraProducto1.Initiate;

end;

procedure TfrmUbiProdAct.FormShow(Sender: TObject);
begin
  MainForm.AplicarPerfil2(self);

end;

procedure TfrmUbiProdAct.FormActivate(Sender: TObject);
begin
  pgcMain.ActivePageIndex := 0;
  ebzUbicacion.SetFocus;


end;

procedure TfrmUbiProdAct.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fraProducto1.Terminate;
  Action := caFree;
end;

{$ENDREGION}

{$REGION '<<Form Properties >>'}

procedure TfrmUbiProdAct.SetEstado_Insert;
begin
  FEstado := esInsert;
  sbEstado.Caption := 'Asignando...';
  Clear;
  sbMsg.Caption := 'Teclea datos de la ubicación del producto';
  Caption := 'Asignando Producto a Ubicacion';

  ebzId.Text             := sm.StrFloat(FoUP.UbiProd_Id,'0');
  ebzUbicacion.Text      := FoUP.Ubicacion;

end;
procedure TfrmUbiProdAct.SetEstado_Update;
begin
  FEstado := esUpdate;
  sbEstado.Caption := 'UPDATE';
  Select;

end;
procedure TfrmUbiProdAct.SetEstado_Delete;
begin
  FEstado := esDelete;
  sbEstado.Caption := 'DELETE';
  Select;

end;


{$ENDREGION}

procedure TfrmUbiProdAct.Clear;
begin
  fraProducto1.xceCodProdSer.Text      := '';
  fraProducto1.xceDescripPro.Text      := '';
  enzCantidad.Value   := 0;
  enzTarima.Value     := 0;

  Application.ProcessMessages;

end;

procedure TfrmUbiProdAct.Select;
var
  iCod:Integer;
begin
  sbMsg.Caption := 'Cargando Ubicacion...';
  Application.ProcessMessages;

  foUP.SelectById;

  ebzId.Text             := sm.StrFloat(FoUP.UbiProd_Id,'0');
  ebzUbicacion.Text      := FoUP.Ubicacion;
  fraProducto1.xceCodProdSer.Text := FoUP.CODPRODSER;
  fraProducto1.BuscaProducto;
  enzCantidad.Value      := FoUP.CANTIDAD;
  enzTarima.Value        := FoUP.NUMERO_TARIMA;

  sbMsg.Caption := 'Cargado OK!';
  Application.ProcessMessages;

end;

procedure TfrmUbiProdAct.Insertar;
begin
  sbMsg.Caption := 'Insertando Ubicacion...';
  Application.ProcessMessages;
//---------------------------------------------------------------
//  FIdCliente := DM1.GetCatalogoId;
//  isql1.ParamByName('IDCLIENTE').AsInteger := FIdCliente;
//  isql1.ParamByName('CODCLIENTE').AsString := UpperCase(EBZCODCLIENTE.TEXT);
//  isql1.ParamByName('IDGRUPO').AsInteger := 0; //IDGRUPO;
//  isql1.ParamByName('IDLISTAPRECIO').AsInteger := 0; //FIDLISTAPRECIO;
//  isql1.ParamByName('IDTIPOCTE').AsInteger := 0;
//  isql1.ParamByName('IDCONDPAGO').AsInteger := 0; // 0=CONTADO
//  FoUP.Clear;
//  FoUP.UbiProd_Id   := -1;
  FoUP.UBICACION    := ebzUbicacion.Text;
  FoUP.CODPRODSER   := UpperCase(fraProducto1.xceCodProdSer.TEXT);
  FoUP.DESCRIPPRO   := UpperCase(fraProducto1.xceDescripPro.TEXT);
  FoUP.CODFAMILIA   := fraProducto1.oPro.CODFAMILIA;
  FoUP.CANTIDAD     := enzCantidad.Value;
  FoUP.NUMERO_TARIMA:= enzTarima.IntValue;
  FoUP.USERINS      := oUSer.LOGIN;
  FoUP.FHINS        := Date+Time;
  FoUP.USERACT      := oUSer.LOGIN;
  FoUP.FHACT        := Date+Time;
  FoUP.COMENTARIOS  := ebzComentarios.Text;

  FoUP.Insert;

  if FoUP.Error <= 0 then begin
    ebzId.Text := sm.StrFloat(FoUP.UBIPROD_ID,'0');
  end;

//  if FEstado = esInsert then
//    ebzCodCliente.Text := sm.StrFloat(FoCte.IDCLIENTE,'#');

  sbMsg.Caption := 'Insertado OK!';

//--- Set Estado = Update, pero sin hacer el select...
  FEstado := esUpdate;
  sbEstado.Caption := 'UPDATE';

  Application.ProcessMessages;

end;

procedure TfrmUbiProdAct.itmNuevoClick(Sender: TObject);
begin
  Nuevo;
end;

procedure TfrmUbiProdAct.Nuevo;
var
  ix,IdCiudad: Integer;
  iPM: smallint;
  t,tNom: String;
begin

  SetEstado_Insert;
//---------------------------------------------------------------
  FoUP.UBIPROD_ID    := -1;
  FoUP.Ubicacion     := '';
  FoUP.CodProdSer    := '';
  FoUP.DESCRIPPRO    := '';
  FoUP.CODFAMILIA    := '';
  FoUP.Cantidad      := 0;
  FoUP.Numero_Tarima := 0;
  FoUP.USERACT       := oUser.LOGIN;
  FoUP.FHACT         := Date+Time;

  ebzId.Text         := sm.StrFloat(FoUP.UBIPROD_ID,'0');
  ebzUbicacion.Text  := FoUP.UBICACION;

  ebzUbicacion.SetFocus;
end;

procedure TfrmUbiProdAct.Modificar;
var
  ix,IdCiudad: Integer;
  iPM: smallint;
  t,tNom: String;
begin
  sbMsg.Caption := 'Modificando Ubicacion...';
  Application.ProcessMessages;
//---------------------------------------------------------------
  FoUP.Ubicacion    := ebzUbicacion.TEXT;
  FoUP.CodProdSer    := fraProducto1.xceCodProdSer.TEXT;
  FoUP.DESCRIPPRO    := fraProducto1.xceDescripPro.Text;
  FoUP.CODFAMILIA    := fraProducto1.oPro.CODFAMILIA;
  FoUP.Cantidad      := enzCantidad.value;
  FoUP.Numero_Tarima := enzTarima.IntValue;
  FoUP.USERACT       := oUser.LOGIN;
  FoUP.FHACT         := Date+Time;

  FoUP.Update;

  sbMsg.Caption := 'Modificado OK!';

end;

procedure TfrmUbiProdAct.Eliminar;
var
  ix,IdCiudad: Integer;
  iPM: smallint;
  tNom: String;
begin
//
end;

//--------------------------------------------------------
// Propiedad de la forma
//--------------------------------------------------------
procedure TfrmUbiProdAct.SetoUP(AoUP:TUbicacion);
begin
  FoUP := AoUP;
  if FoUp.UBIPROD_ID > 0 then
    SetEstado_Update
  else
    SetEstado_Insert;


end;

procedure TfrmUbiProdAct.tbtCloseClick(Sender: TObject);
begin
  ModalResult := mrCancel;

end;

procedure TfrmUbiProdAct.tbtGrabarClick(Sender: TObject);
begin
  if FEstado = esInsert then begin
    Insertar;
    exit;
  end;
  if FEstado = esUpdate then begin
    Modificar;
    exit;
  end;
  if FEstado = esDelete then begin
    Eliminar;
    exit;
  end;

end;

procedure TfrmUbiProdAct.tbtGrabarSalirClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmUbiProdAct.tbtSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUbiProdAct.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;

end;

procedure TfrmUbiProdAct.SetCodigo(pCodigo:String);
begin
  FCodigo := pCodigo;
end;

procedure TfrmUbiProdAct.SetPerfil(APerfil:SmallInt);
begin
  FPerfil := APerfil;
end;

procedure TfrmUbiProdAct.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;

end;

end.
