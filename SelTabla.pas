unit SelTabla;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Db, DBTables, LibApp, IniFiles,
  IB_Components, TB2Dock, TB2Toolbar, TB2ExtItems, TBXExtItems, TBX, IB_Grid, RxPlacemnt, ImgList,
  IB_NavigationBar, IB_UpdateBar, TB2Item, RzButton;

{****************************************************************
Definicion de Objetos que se regresaran
****************************************************************}
type
  TfrmSelTabla = class(TForm)
    pnlMain: TPanel;
    pnlTop: TPanel;
    edtKey: TEdit;
    idsSelect: TIB_DataSource;
    Dock971: TTBXDock;
    Toolbar971: TTBXToolbar;
    tlbAceptar: TTBXItem;
    tlbCancelar: TTBXItem;
    ImageList2: TImageList;
    IB_Grid1: TIB_Grid;
    iqrSelect: TIB_Query;
    TBControlItem1: TTBControlItem;
    IB_NavigationBar1: TIB_NavigationBar;
    TBXSeparatorItem1: TTBXSeparatorItem;
    tlbCodigo: TRzBitBtn;
    tlbDescri: TRzBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tlbAceptarClick(Sender: TObject);
    procedure tlbCancelarClick(Sender: TObject);
    procedure Aceptar;
    procedure Cancelar;
    procedure PorCodigo;
    procedure PorDescri;
    procedure FormActivate(Sender: TObject);
    procedure GoPrior;
    procedure GoNext;
    procedure tlbCodigoClick(Sender: TObject);
    procedure tlbDescriClick(Sender: TObject);
    procedure edtKeyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtKeyChange(Sender: TObject);
  private
    { Private declarations }
    fldCodigo:String;
    fldDescri:String;
    TablaAnt:String;
    Codigox:String;
    Descrix:String;
  public
    { Public declarations }
    Tabla:String;  {Tabla de la base de datos}
    Campo:Integer; {1=Por Codigo, 2=Por Descripcion}
    Codigo:String; // Valor del codigo (entrada y salida)
    Descri:String; // Texto de la descripcion (entrada y salida)
    Valores:array[1..20] of Variant;
    Param1:String;
    Param2:String;
    procedure Open;
  end;

var
  frmSelTabla: TfrmSelTabla;

implementation

uses Main, DM_MBA;

{$R *.DFM}

procedure TfrmSelTabla.FormActivate(Sender: TObject);
begin
    Open;
    edtKey.SetFocus;
end;


procedure TfrmSelTabla.Open;
begin
    if  Tabla = 'MBA10001' then begin
        TablaAnt := Tabla;
        fldCodigo := 'NUMAGENTE';
        fldDescri := 'NOMBAGEN';

        iqrSelect.SQL.Clear;
        iqrSelect.sql.add ('SELECT NUMAGENTE,NOMBAGEN FROM MBA10001');
        iqrSelect.KeyLinks.Clear;
        iqrSelect.KeyLinks.Add (Tabla+'.'+fldCodigo);
        iqrSelect.OrderingItems.Clear;
        iqrSelect.OrderingItems.Add('CODIGO='+fldCodigo+';');
        iqrSelect.OrderingItems.Add('DESCRI='+fldDescri+';');
    end;
    if  Tabla = 'MBA10002' then begin
        TablaAnt := Tabla;
        fldCodigo := 'CODCTEPROV';
        fldDescri := 'RAZSOCIAL';

        iqrSelect.SQL.Clear;
        iqrSelect.sql.add ('SELECT CODCTEPROV,RAZSOCIAL,NUMAGENTE,LIMCREDCTE FROM MBA10002 WHERE EDOACTCTE <> 2');
        iqrSelect.KeyLinks.Clear;
        iqrSelect.KeyLinks.Add (Tabla+'.'+fldCodigo);
        iqrSelect.OrderingItems.Clear;
        iqrSelect.OrderingItems.Add('CODIGO='+fldCodigo+';');
        iqrSelect.OrderingItems.Add('DESCRI='+fldDescri+';');
    end;
    if  Tabla = 'MBA10004' then begin
        TablaAnt := Tabla;
        fldCodigo := 'CODPRODSER';
        fldDescri := 'DESCRIPPRO';

        iqrSelect.SQL.Clear;
        iqrSelect.sql.add ('SELECT CODPRODSER,DESCRIPPRO,PCIOVTA1,PCIOVTA2,PCIOVTA3,PCIOVTA4,PCIOVTA5,PCIOVTA6,PCIOVTA7,PCIOVTA8,PCIOVTA9,PCIOVTA10,CODFAMILIA FROM MBA10004 WHERE EDOACTPROD <> 2');
        iqrSelect.KeyLinks.Clear;
        iqrSelect.KeyLinks.Add (Tabla+'.'+fldCodigo);
        iqrSelect.OrderingItems.Clear;
        iqrSelect.OrderingItems.Add('CODIGO='+fldCodigo+';');
        iqrSelect.OrderingItems.Add('DESCRI='+fldDescri+';');
    end;
    if  Tabla = 'MBA10006' then begin
        TablaAnt := Tabla;
        fldCodigo := 'NumTipoDoc';
        fldDescri := 'NombreTipo';

        iqrSelect.SQL.Clear;
        iqrSelect.sql.add ('SELECT NumTipoDoc,NombreTipo FROM MBA10006');
        iqrSelect.KeyLinks.Clear;
        iqrSelect.KeyLinks.Add (Tabla+'.'+fldCodigo);
        iqrSelect.OrderingItems.Clear;
        iqrSelect.OrderingItems.Add('CODIGO='+fldCodigo+';');
        iqrSelect.OrderingItems.Add('DESCRI='+fldDescri+';');
    end;

    if  Tabla = 'MBA10013' then begin
        TablaAnt := Tabla;
        fldCodigo := 'CODCTEPROV';
        fldDescri := 'NOMBPROVEE';

        iqrSelect.SQL.Clear;
        iqrSelect.sql.add ('SELECT CODCTEPROV,NOMBPROVEE FROM MBA10013 WHERE EDOACTPROV <> 2');
        iqrSelect.KeyLinks.Clear;
        iqrSelect.KeyLinks.Add (Tabla+'.'+fldCodigo);
        iqrSelect.OrderingItems.Clear;
        iqrSelect.OrderingItems.Add('CODIGO='+fldCodigo+';');
        iqrSelect.OrderingItems.Add('DESCRI='+fldDescri+';');
    end;

    if  Tabla = 'MBA10021' then begin
        TablaAnt := Tabla;
        fldCodigo := 'NUMTABLA';
        fldDescri := 'DESCRIPCIO';

        iqrSelect.SQL.Clear;
        iqrSelect.sql.add ('SELECT TIPOTABLA,NUMTABLA,DESCRIPCIO FROM MBA10021 WHERE TIPOTABLA = ?PARAM01');
        iqrSelect.KeyLinks.Clear;
        iqrSelect.KeyLinks.Add (Tabla+'.TIPOTABLA');
        iqrSelect.KeyLinks.Add (Tabla+'.'+fldCodigo);
        iqrSelect.OrderingItems.Clear;
        iqrSelect.OrderingItems.Add('CODIGO='+fldCodigo+';');
        iqrSelect.OrderingItems.Add('DESCRI='+fldDescri+';');

    end;
    if  Tabla = 'MBA10040' then begin
        TablaAnt := Tabla;
        fldCodigo := 'CODFAM';
        fldDescri := 'DESCRIPFAM';

        iqrSelect.SQL.Clear;
        iqrSelect.sql.add ('SELECT CODFAM,DESCRIPFAM FROM MBA10040 WHERE EDOACTFAM <> 2'); //Solo activas
        iqrSelect.KeyLinks.Clear;
        iqrSelect.KeyLinks.Add (Tabla+'.'+fldCodigo);
        iqrSelect.OrderingItems.Clear;
        iqrSelect.OrderingItems.Add('CODIGO='+fldCodigo+';');
        iqrSelect.OrderingItems.Add('DESCRI='+fldDescri+';');
    end;
    if  Tabla = 'MBA10050' then begin
        TablaAnt := Tabla;
        fldCodigo := 'IDSUCURSAL';
        fldDescri := 'NOMBRE';

        iqrSelect.SQL.Clear;
        iqrSelect.sql.add ('SELECT IDSUCURSAL,NOMBRE FROM MBA10050 '); //Solo activas
        iqrSelect.KeyLinks.Clear;
        iqrSelect.KeyLinks.Add (Tabla+'.'+fldCodigo);
        iqrSelect.OrderingItems.Clear;
        iqrSelect.OrderingItems.Add('IDSUCURSAL='+fldCodigo+';');
        iqrSelect.OrderingItems.Add('NOMBRE='+fldDescri+';');
    end;


   iqrSelect.OrderingLinks.Clear;
   iqrSelect.OrderingLinks.Add('IDSUCURSAL=1');
   iqrSelect.OrderingLinks.Add('NOMBRE=2');
   iqrSelect.OrderingItemNo := Campo;
   case Campo of
   1: tlbCodigo.Down := True;
   2: tlbDescri.down := True;
   end;

   Caption := 'Selección de Datos [' + Tabla +']';

   iqrSelect.Prepare;
   if length(Param1) > 0 then begin
       iqrSelect.ParamByName('PARAM01').AsString := Param1;
   end;

   iqrSelect.Open;

   case Campo of
   1: edtKey.Text := Codigo;
   2: edtKey.Text := Descri;
   end;


end;

procedure TfrmSelTabla.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    iqrSelect.Close;
end;

procedure TfrmSelTabla.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of
    VK_RETURN: Aceptar;
    VK_ESCAPE: Cancelar;
    VK_F3:     PorCodigo;
    VK_F4:     PorDescri;
    VK_UP:     GoPrior;
    VK_DOWN:   GoNext;
end;
end;

procedure TfrmSelTabla.GoPrior;
begin
    if not (iqrSelect.bof) then iqrSelect.Prior;

end;

procedure TfrmSelTabla.GoNext;
begin
    if not (iqrSelect.eof) then iqrSelect.Next;

end;

procedure TfrmSelTabla.Aceptar;
var i:Integer;
begin
    if iqrSelect.State in [dssInsert,dssEdit] then iqrSelect.Post;
    Codigo := iqrSelect.fieldbyname(fldCodigo).AsString;
    Descri := iqrSelect.fieldbyname(fldDescri).AsString;

    for i:= 0 to iqrSelect.FieldCount - 1 do begin
        Valores [i+1] := iqrSelect.Fields[i].AsVariant;
    end;

    ModalResult := mrOk;
end;
procedure TfrmSelTabla.Cancelar;
begin
    Codigo := '';
    Descri := '';
    ModalResult := mrCancel;
end;
procedure TfrmSelTabla.PorCodigo;
begin
    if tlbCodigo.Down then  begin
        iqrSelect.OrderingItemNo := 1;
        Campo := 1;
    end;
end;
procedure TfrmSelTabla.PorDescri;
begin
    if tlbDescri.Down then begin
        iqrSelect.OrderingItemNo := 2;
        Campo := 2;
    end;
end;
procedure TfrmSelTabla.tlbAceptarClick(Sender: TObject);
begin
    Aceptar;
end;

procedure TfrmSelTabla.tlbCancelarClick(Sender: TObject);
begin
    Cancelar;
end;

procedure TfrmSelTabla.tlbCodigoClick(Sender: TObject);
begin
    Campo := 1;
    PorCodigo;
end;

procedure TfrmSelTabla.tlbDescriClick(Sender: TObject);
begin
    PorDescri;
end;

procedure TfrmSelTabla.edtKeyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of
    VK_F3:     PorCodigo;
    VK_F4:     PorDescri;
end;


end;

procedure TfrmSelTabla.edtKeyChange(Sender: TObject);
var Campox:String;
begin
   case Campo of
   1: Campox := fldCodigo;
   2: Campox := fldDescri;
   end;
    iqrSelect.Locate (Campox,
                      edtKey.Text,
                      [lopCaseInsensitive, lopPartialKey, lopFindNearest]
                      );

end;

end.
