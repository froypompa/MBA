unit ProductoSearch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, RxToolEdit, StrMan,
  ClsProducto;

type
  TfraProducto = class(TFrame)
    Label9: TLabel;
    xceCodProdSer: TComboEdit;
    xceDescripPro: TComboEdit;
    Label4: TLabel;
    procedure Initiate;
    procedure Terminate;
    procedure xceCodProdSerButtonClick(Sender: TObject);
    procedure xceDescripProButtonClick(Sender: TObject);
    procedure xceCodProdSerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Select(ptTabla:String;piOpcion: Integer;ptKey:String);
    procedure SelectProducto(piOpcion: Integer;ptKey:String);
    procedure BuscaProducto;
  private
    { Private declarations }
  public
    { Public declarations }
    oPro:TProducto;
  end;

var
      mrRes:Integer;


implementation

uses SelTabla;

{$R *.DFM}

procedure TfraProducto.Initiate;
begin
    oPro := TProducto.Create;

end;

procedure TfraProducto.Terminate;
begin
    oPro.Free;

end;

procedure TfraProducto.Select(ptTabla:String;piOpcion: Integer;ptKey:String);
begin
    if not Assigned(frmSelTabla) then
        frmSelTabla := TfrmSelTabla.Create (Application);
    frmSelTabla.Tabla := ptTabla;
    frmSelTabla.Campo := piOpcion;

    if piOpcion = 1 then begin
        frmSelTabla.Codigo := ptKey;
        frmSelTabla.Descri := '';
    end else begin
        frmSelTabla.Codigo := '';
        frmSelTabla.Descri := ptKey;
    end;
    mrRes := frmSelTabla.ShowModal;

end;

procedure TfraProducto.SelectProducto(piOpcion: Integer;ptKey:String);
begin
    Select('MBA10004',piOpcion,ptKey);
    if mrRes = mrOk then begin
        xceCodProdSer.Text := frmSelTabla.Valores[1];
        xceDescripPro.Text  := frmSelTabla.Valores[2];
        BuscaProducto;
    end;

end;

procedure TfraProducto.xceCodProdSerButtonClick(Sender: TObject);
begin
    SelectProducto(1,xceCodProdSer.Text);

end;

procedure TfraProducto.xceDescripProButtonClick(Sender: TObject);
begin
    SelectProducto(2,xceDescripPro.Text);

end;

procedure TfraProducto.xceCodProdSerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
    VK_F3:    SelectProducto(1,xceCodProdSer.Text);
    VK_F4:    SelectProducto(2,xceDescripPro.Text);
    VK_Return: BuscaProducto;
    end;

end;

procedure TfraProducto.BuscaProducto;
var tCod,tCod2,tDias:String;
    iDias:Integer;
    iError:Integer;
begin
    tCod := sm.Strip(xceCodProdSer.Text);
    if length(tCod) <= 0 then exit;

    oPro.CODPRODSER := tCod;
    oPro.Retrieve;
    if (oPro.Error > 0) then exit;

    xceDescripPro.Text := oPro.DESCRIPPRO;

end;

end.
