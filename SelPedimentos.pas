unit SelPedimentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Db, DBTables, LibApp, IniFiles,
  IB_Components, TB2Dock, TB2Toolbar, TB2ExtItems, TBXExtItems, TBX, IB_Grid, RxPlacemnt, ImgList,
  IB_NavigationBar, IB_UpdateBar, RXCtrls, RXSplit, TB2Item;

{****************************************************************
Definicion de Objetos que se regresaran
****************************************************************}
type
  TfrmPedimentos = class(TForm)
    pnlMain: TPanel;
    idsDoc: TIB_DataSource;
    Dock971: TTBXDock;
    Toolbar971: TTBXToolbar;
    tlbAceptar: TTBXItem;
    tlbCancelar: TTBXItem;
    ImageList2: TImageList;
    IB_Grid1: TIB_Grid;
    iqrDoc: TIB_Query;
    RxSplitter1: TRxSplitter;
    xlbEncabezado: TRxLabel;
    TBControlItem1: TTBControlItem;
    IB_NavigationBar1: TIB_NavigationBar;
    TBXSeparatorItem1: TTBXSeparatorItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tlbAceptarClick(Sender: TObject);
    procedure tlbCancelarClick(Sender: TObject);
    procedure Aceptar;
    procedure Cancelar;
    procedure FormActivate(Sender: TObject);
    procedure GoPrior;
    procedure GoNext;
    procedure UnPrepare;
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
    CodFamilia:String; // Pedimentos que tengan esta familia de producto
    Valores:array[1..20] of Variant;
    CodProdSer:String;
    Tipo_Docto:String;
    Serie_Docto:String;
    Encabezado:String;
    procedure Open;
  end;

var
  frmPedimentos: TfrmPedimentos;

implementation

uses Main, DM_MBA;

{$R *.DFM}

procedure TfrmPedimentos.FormActivate(Sender: TObject);
begin
    xlbEncabezado.Caption := Encabezado;
    Open;
end;


procedure TfrmPedimentos.Open;
begin

   iqrDoc.Prepare;

   iqrDoc.ParamByName('P_CODFAMILIA').AsString := CodFamilia;

   iqrDoc.Open;

end;
procedure TfrmPedimentos.UnPrepare;
begin
    iqrDoc.Close;
    iqrDoc.unprepare;
end;

procedure TfrmPedimentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caHide;
end;

procedure TfrmPedimentos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case Key of
    VK_RETURN: Aceptar;
    VK_ESCAPE: Cancelar;
    VK_UP:     GoPrior;
    VK_DOWN:   GoNext;
end;
end;

procedure TfrmPedimentos.GoPrior;
begin
    if not (iqrDoc.bof) then iqrDoc.Prior;

end;

procedure TfrmPedimentos.GoNext;
begin
    if not (iqrDoc.eof) then iqrDoc.Next;

end;

procedure TfrmPedimentos.Aceptar;
var i:Integer;
begin
{NUMPEDIMENTO
     , FECHA
     , UNIDADES_E
     , UNIDADES_S
     , DESCRIPRO
    Valores[1] := ''; //iqrDoc.FieldByName('NumTipoDoc').AsString;
    Valores[2] := ''; //iqrDoc.FieldByName('SerieDocto').AsString;
    Valores[3] := ''; ((iqrDoc.FieldByName('NumDocto').AsString;
    Valores[4] := ''; //iqrDoc.FieldByName('NumMovto').AsString;
    Valores[5] := iqrDoc.FieldByName('Pedimento1').AsString;
    Valores[6] := iqrDoc.FieldByName('FechaEnt').AsDateTime;
    Valores[7] := iqrDoc.FieldByName('Aduana').AsString;
    Valores[8] := iqrDoc.FieldByName('Unidades').AsDouble -
                  iqrDoc.FieldByName('UniFact').AsDouble;
                  }
    Valores[1] := ''; //iqrDoc.FieldByName('NumTipoDoc').AsString;
    Valores[2] := ''; //iqrDoc.FieldByName('SerieDocto').AsString;
    Valores[3] := ''; //((iqrDoc.FieldByName('NumDocto').AsString;
    Valores[4] := ''; //iqrDoc.FieldByName('NumMovto').AsString;
    Valores[5] := iqrDoc.FieldByName('NUMPEDIMENTO').AsString;
    Valores[6] := iqrDoc.FieldByName('FECHA').AsDateTime;
    Valores[7] := ''; //iqrDoc.FieldByName('Aduana').AsString;
    Valores[8] := iqrDoc.FieldByName('UNIDADES_E').AsDouble -
                  iqrDoc.FieldByName('UNIDADES_S').AsDouble;
    ModalResult := mrOk;
end;
procedure TfrmPedimentos.Cancelar;
begin
    ModalResult := mrCancel;
end;
procedure TfrmPedimentos.tlbAceptarClick(Sender: TObject);
begin
    Aceptar;
end;

procedure TfrmPedimentos.tlbCancelarClick(Sender: TObject);
begin
    Cancelar;
end;

end.
