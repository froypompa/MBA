unit CalculaDescto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzPanel, RzLabel, ExtCtrls, RzButton;

type
  TfrmCalculaDescto = class(TForm)
    grpCte: TRzGroupBox;
    lblCliente: TRzLabel;
    grpArticulo: TRzGroupBox;
    lblArticulo: TRzLabel;
    RzPanel1: TRzPanel;
    RzPanel2: TRzPanel;
    enzPrecioLista: TRzNumericEdit;
    RzLabel1: TRzLabel;
    enzPrecioFinal: TRzNumericEdit;
    RzLabel3: TRzLabel;
    enzDescuento: TRzNumericEdit;
    RzLabel2: TRzLabel;
    btnCancelar: TRzBitBtn;
    btnAceptar: TRzBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure UpdateDatos;
    procedure UpdateControls;
    procedure enzPrecioFinalChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    CodCteProv:String;
    RazSocial:String;
    CodProdSer:String;
    DescripPro:String;
    PrecioLista:Double;
    PrecioFinal:Double;
    Descuento:Double;
  end;

var
  frmCalculaDescto: TfrmCalculaDescto;

implementation

{$R *.dfm}

procedure TfrmCalculaDescto.enzPrecioFinalChange(Sender: TObject);
begin
  enzDescuento.Value := (1 - (enzPrecioFinal.Value / enzPrecioLista.Value)) * 100;
  Descuento := enzDescuento.Value;
  UpdateControls;
end;

procedure TfrmCalculaDescto.FormActivate(Sender: TObject);
begin
  UpdateDatos;
  enzPrecioFinal.SetFocus;
  UpdateControls;
end;

procedure TfrmCalculaDescto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN:
      begin
        ModalResult := mrOk;
      end;
    VK_ESCAPE:
      begin
        ModalResult := mrCancel;
      end;
  end;

end;

procedure TfrmCalculaDescto.UpdateDatos;
begin
  if (length(CodCteProv) <= 0) then
    lblCliente.Caption := '** Cliente NO Seleccionado **'
  else
    lblCliente.Caption := CodCteProv +' '+RazSocial;

  if (length(CodProdSer) <= 0) then
    lblArticulo.Caption := '** Producto NO Seleccionado **'
  else
    lblArticulo.Caption := CodProdSer +' '+DescripPro;

  enzPrecioLista.Value := PrecioLista;
  enzPrecioFinal.Value := PrecioFinal;
  enzDescuento.Value := Descuento;

end;

procedure TfrmCalculaDescto.UpdateControls;
begin
  btnAceptar.Enabled := (enzPrecioLista.Value > 0);
end;

end.
