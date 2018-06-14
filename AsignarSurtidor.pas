unit AsignarSurtidor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, RzEdit, RzLabel, RzPanel, RzStatus, ExtCtrls,
  RzCommon, RzBckgnd, ImgList, RzCmboBx, RzButton, IB_Components, Grids,
  IB_Grid, RzTabs, TB2Item, TB2Dock, TB2Toolbar, RzBtnEdt,
  StrMan, StringLib, 
  VCIF1Lib_TLB,FormulaOneLib,TBX, OleCtrls, RzLstBox;


type
  TEstado = (esInsert,esUpdate,esDelete);
  TfrmAsignarSurtidor = class(TForm)
    sbMain: TRzStatusBar;
    sbMsg: TRzGlyphStatus;
    sbEstado: TRzGlyphStatus;
    RzGlyphStatus3: TRzGlyphStatus;
    ImageList1: TImageList;
    isql1: TIB_DSQL;
    TBXDock1: TTBXDock;
    ttbx1: TTBXToolbar;
    tbtGrabar: TTBXItem;
    tbtSalir: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    tbtAyuda: TTBXItem;
    lblPedido: TRzLabel;
    RzLabel1: TRzLabel;
    lstSurtidores: TRzListBox;
    icuRep: TIB_Cursor;
    procedure tbtGrabarSalirClick(Sender: TObject);
    procedure tbtCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbtSalirClick(Sender: TObject);
    procedure Clear;
    procedure FormShow(Sender: TObject);
    procedure BuscaSurtidor(ASurtidor:String);
    procedure SetUp;
    procedure PrepareSQL;
    procedure LlenaLista;
    procedure Seleccionar;
    procedure tbtGrabarClick(Sender: TObject);
  private
    { Private declarations }
    FPedido: String;
    FOrden: String;
    FSurtidor: String;
    procedure SetPedido(APedido:String);
    procedure SetOrden(AOrden:String);
    procedure SetSurtidor(ASurtidor:String);
  public
    { Public declarations }
    property Pedido:String     read FPedido    write SetPedido;
    property Orden:String      read FOrden     write SetOrden;
    property Surtidor:String   read FSurtidor  write SetSurtidor;

  end;




var
  frmAsignarSurtidor: TfrmAsignarSurtidor;
  mtOk:String = 'l';
  DetCount:integer;
  miRenIni:Integer;

implementation

uses Main, DM_MBA;

{$R *.DFM}
{$REGION '<<Form Events >>'}

procedure TfrmAsignarSurtidor.FormCreate(Sender: TObject);
var
  ix:Integer;
begin


  SetUp;
end;

procedure TfrmAsignarSurtidor.FormShow(Sender: TObject);
begin
//
end;

procedure TfrmAsignarSurtidor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caHide;
end;

{$ENDREGION}
procedure TfrmAsignarSurtidor.SetUp;
begin
//Encabezados de Listado de Productos
  PrepareSQL;
  LLenaLista;

end;

{$REGION '<<Form Properties >>'}

{$ENDREGION}

procedure TfrmAsignarSurtidor.Clear;
begin

  Application.ProcessMessages;

end;

procedure TfrmAsignarSurtidor.LlenaLista;
var
tClave,tNombre:String;
begin
  icuRep.Close;
  icuRep.Open;

  if icuRep.Eof then begin
      exit;
  end;
  icuRep.First;
  lstSurtidores.Items.Clear;
  while not icuRep.Eof do begin
    tClave  := icuRep.FieldByName('Clave').AsString;
    tClave := sm.Pad (tClave,20);

    tNombre := icuRep.FieldByName('Nombre').AsString + ' ' +
               icuRep.FieldByName('ApPaterno').AsString;
    lstSurtidores.Items.Add (tClave + '|' + tNombre);
    icurep.Next;
  end;

    if lstSurtidores.Items.Count > 0 then
        lstSurtidores.ItemIndex := 0;

    icuRep.Close;


end;

procedure TfrmAsignarSurtidor.BuscaSurtidor(ASurtidor:String);
var
  iCod:Integer;
begin
  sbMsg.Caption := 'Cargando Ubicacion...';
  Application.ProcessMessages;

  sbMsg.Caption := 'Cargado OK!';
  Application.ProcessMessages;

end;

procedure TfrmAsignarSurtidor.PrepareSQL;
var
  i:Integer;
  td,tnum:String;
  EsCodigo:Boolean;
begin

  with icuRep do begin
    Sql.Clear;
    Sql.Add ('select clave,nombre,appaterno,apmaterno ');
    Sql.Add ('from empleados  ');
    SqL.Add ('where (departamento = ''ALMACEN'')');
    SqL.Add ('order by nombre,appaterno ');
    Prepare;
  end;

end;

procedure TfrmAsignarSurtidor.Seleccionar;
var
  tLinea:String;
begin
  tLinea := lstSurtidores.Items.Strings[lstSurtidores.ItemIndex];
  FSurtidor := sm.NthWord(1,tLinea,['|']);
  FSurtidor := Trim(FSurtidor);
  ModalResult := mrOk;
end;

//--------------------------------------------------------
// Propiedad de la forma
//--------------------------------------------------------

procedure TfrmAsignarSurtidor.tbtCloseClick(Sender: TObject);
begin
  ModalResult := mrCancel;

end;

procedure TfrmAsignarSurtidor.tbtGrabarClick(Sender: TObject);
begin
  Seleccionar;
end;

procedure TfrmAsignarSurtidor.tbtGrabarSalirClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmAsignarSurtidor.tbtSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAsignarSurtidor.SetPedido(APedido:String);
begin
  FPedido := APedido;
  lblPedido.Caption := 'Pedido: '+FPedido+' / ' + FOrden;
end;

procedure TfrmAsignarSurtidor.SetOrden(AOrden:String);
begin
  FOrden := AOrden;
  lblPedido.Caption := 'Pedido: '+FPedido+' / ' + FOrden;
end;

procedure TfrmAsignarSurtidor.SetSurtidor(ASurtidor:String);
begin
  FSurtidor := ASurtidor;
  BuscaSurtidor(FSurtidor);
end;

procedure TfrmAsignarSurtidor.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;

end;

end.
