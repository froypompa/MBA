unit ClienteAct;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, RzEdit, RzLabel, RzPanel, RzStatus, ExtCtrls,
  RzCommon, RzBckgnd, ImgList, RzCmboBx, RzButton, IB_Components, Grids,
  IB_Grid, RzTabs, TB2Item, TB2Dock, TB2Toolbar, RzBtnEdt,
  MsgErrorApp,ClsCliente, ClsTablas, ClsAgente, StrMan, StringLib,
  VCIF1Lib_TLB,FormulaOneLib,TBX, OleCtrls,
  ClsCfdi33, Dirs_Entrega;


type
  TEstado = (esInsert,esUpdate,esDelete);
  TfrmClienteAct = class(TForm)
    sbMain: TRzStatusBar;
    sbMsg: TRzGlyphStatus;
    sbEstado: TRzGlyphStatus;
    RzGlyphStatus3: TRzGlyphStatus;
    ImageList1: TImageList;
    pgcMain: TRzPageControl;
    tshGenerales: TRzTabSheet;
    RzLabel1: TRzLabel;
    ebzCodCliente: TRzButtonEdit;
    RzLabel2: TRzLabel;
    ebzRazSocial: TRzButtonEdit;
    RzLabel3: TRzLabel;
    ebzCalle: TRzButtonEdit;
    RzLabel4: TRzLabel;
    ebzColoniaCte: TRzButtonEdit;
    RzLabel5: TRzLabel;
    cbzLocalidad: TRzComboBox;
    RzLabel7: TRzLabel;
    ebzCodPostal: TRzButtonEdit;
    RzLabel8: TRzLabel;
    ebzTelefono1: TRzButtonEdit;
    RzLabel9: TRzLabel;
    ebzTelefono2: TRzButtonEdit;
    RzLabel10: TRzLabel;
    ebzRFC: TRzButtonEdit;
    isql1: TIB_DSQL;
    RzLabel13: TRzLabel;
    ebzNumExt: TRzButtonEdit;
    ebzNumInt: TRzButtonEdit;
    RzLabel14: TRzLabel;
    ebzContacto1: TRzButtonEdit;
    ebzContacto2: TRzButtonEdit;
    RzLabel15: TRzLabel;
    RzLabel6: TRzLabel;
    ebzRef: TRzButtonEdit;
    RzLabel16: TRzLabel;
    cbzVendedor: TRzComboBox;
    fcz1: TRzFrameController;
    TBXDock1: TTBXDock;
    ttbx1: TTBXToolbar;
    tbtGrabar: TTBXItem;
    tbtSalir: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    cbzEstado: TRzComboBox;
    RzLabel11: TRzLabel;
    Timer1: TTimer;
    tshOtros: TRzTabSheet;
    RzLabel12: TRzLabel;
    cbzRuta: TRzComboBox;
    cbzTransp: TRzComboBox;
    RzLabel17: TRzLabel;
    RzLabel18: TRzLabel;
    cbzZona: TRzComboBox;
    RzLabel19: TRzLabel;
    ebzCtaBanco: TRzButtonEdit;
    RzLabel20: TRzLabel;
    RzLabel21: TRzLabel;
    ebzEmailCompras: TRzButtonEdit;
    ebzEmailPagos: TRzButtonEdit;
    RzLabel22: TRzLabel;
    RzLabel23: TRzLabel;
    ebzEmailFactura: TRzButtonEdit;
    ebzPlazo: TRzButtonEdit;
    RzLabel24: TRzLabel;
    tshDescuentos: TRzTabSheet;
    TBXDock2: TTBXDock;
    TBXToolbar2: TTBXToolbar;
    tbtLeer: TTBXItem;
    tbtGrabarDescto: TTBXItem;
    F1: TF1Book;
    TBXSeparatorItem2: TTBXSeparatorItem;
    tbtAyuda: TTBXItem;
    RzLabel25: TRzLabel;
    cbzPais: TRzComboBox;
    RzLabel26: TRzLabel;
    enzLimCre: TRzNumericEdit;
    tshDirEntrega: TRzTabSheet;
    btnCopiar: TRzBitBtn;
    pnlCliente: TRzPanel;
    cbzMetodoPago: TRzComboBox;
    cbzFormaPago: TRzComboBox;
    lblFormaPago: TRzLabel;
    RzLabel29: TRzLabel;
    cbzResidencia: TRzComboBox;
    RzLabel30: TRzLabel;
    edzIdTrib: TRzButtonEdit;
    fraDirs_Entrega1: TfraDirs_Entrega;
    RzLabel27: TRzLabel;
    cbzUsoCFDI: TRzComboBox;
    tshComentarios: TRzTabSheet;
    RzLabel28: TRzLabel;
    mmoComentarios: TRzMemo;
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
    procedure CargaCiudades;
    procedure CargaEstados;
    procedure CargaPaises;
    procedure CargaAgentes;
    procedure CargaRutas;
    procedure CargaTransp;
    procedure CargaZonas;
    procedure CargaCatalogosCfdi;
    procedure tbtSalirClick(Sender: TObject);
    procedure SetEstado_Insert;
    procedure SetEstado_Update;
    procedure SetEstado_Delete;
    procedure tbtGrabarClick(Sender: TObject);
    procedure Clear;
    procedure ClearDesctos;
    procedure LeerDesctos;
    procedure GrabarDesctos;
    procedure tbtLeerClick(Sender: TObject);
    procedure LoadXls;
    procedure Copiar;
    procedure tbtGrabarDesctoClick(Sender: TObject);
    procedure ebzRazSocialChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
  private
    { Private declarations }
    FoCte: TCliente;
    FIdCliente: Integer;
    FCodigo: String;
    FEstado : TEstado;
    FPerfil:SmallInt;
    procedure SetCodigo(pCodigo:String);
    procedure SetoCte(AoCte:TCliente);
    procedure SetPerfil(APerfil:SmallInt);
  public
    { Public declarations }
    property oCte: TCliente read FoCte write SetoCte;
    property IdCliente: Integer  read FIdCliente write FIdCliente;
    property Codigo   : String   read FCodigo    write SetCodigo;
    property Estado   : TEstado  read FEstado    write FEstado;
    property Perfil   : SmallInt read FPerfil    write SetPerfil;
  end;




var
  frmClienteAct: TfrmClienteAct;
  oTabla: TTabla;
  oAgen: TAgente;
  oCfdi: TCfdi;

implementation

uses Main, DM_MBA;

{$R *.DFM}
{$REGION '<<Form Events >>'}

procedure TfrmClienteAct.FormCreate(Sender: TObject);
var
  ix:Integer;
begin
  oTabla := TTabla.Create;
  oAgen := TAgente.Create;
  oCfdi := TCfdi.Create;

  fraDirs_Entrega1.Initiate;

  if FoCte = nil then begin
    FoCte := TCliente.Create;
    fraDirs_Entrega1.CODCTEPROV := '';
    FPerfil := 0;
//    SetoCte(FoCte);
  end;

  CargaCiudades;
  CargaEstados;
  CargaPaises;
  CargaAgentes;
  CargaRutas;
  CargaTransp;
  CargaZonas;
  CargaCatalogosCfdi;

  LoadXls;

//  Timer1.Enabled := True;
//  fcz1.Color := gColorStop;
end;

procedure TfrmClienteAct.FormShow(Sender: TObject);
begin
  MainForm.AplicarPerfil2(self);

  ebzCodCliente.Enabled   := (oUser.UID > 0);
  enzLimCre.Enabled       := (oUser.UID > 0);
  ebzPlazo.Enabled        := (oUser.UID > 0);
  cbzVendedor.Enabled     := (oUser.UID > 0);
//  tbtGrabarDescto.Enabled := (oUser.UID > 0);

  fraDirs_Entrega1.Llena_Dirs;

end;

procedure TfrmClienteAct.FormActivate(Sender: TObject);
begin
  pgcMain.ActivePageIndex := 0;
  ebzRazSocial.SetFocus;


end;

procedure TfrmClienteAct.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fraDirs_Entrega1.Initiate;
  FreeandNil(oTabla);
  FreeandNil(oAgen);
  FreeandNil(oCfdi);

  Action := caFree;
end;

{$ENDREGION}

{$REGION '<<Form Properties >>'}

procedure TfrmClienteAct.LoadXls;
var
  tFile : String;
begin
  F1Lib.F1 := F1;
  tFile :=     oIni.ReadString ('Directorios','Formatos','');
  tFile := tFile + 'Fmt_DesctosCte.xls';

  F1Lib.Read(tFile);
  F1.MaxCol := 8;
  F1.Selection := 'B7';
end;

procedure TfrmClienteAct.SetEstado_Insert;
begin
  FEstado := esInsert;
  sbEstado.Caption := 'INSERT';
  Clear;
  sbMsg.Caption := 'Teclea datos de cliente';
  Caption := 'Agregando Nuevo Cliente';
end;
procedure TfrmClienteAct.SetEstado_Update;
begin
  FEstado := esUpdate;
  sbEstado.Caption := 'UPDATE';
  Select;

end;
procedure TfrmClienteAct.SetEstado_Delete;
begin
  FEstado := esDelete;
  sbEstado.Caption := 'DELETE';
  Select;

end;


{$ENDREGION}

procedure TfrmClienteAct.Clear;
begin
  ebzCodCliente.TEXT     := '';
  EBZRAZSOCIAL.TEXT      := '';
  ebzCalle.Text          := '';
  EBZNUMEXT.TEXT         := '';
  EBZNUMINT.TEXT         := '';
  EBZCOLONIACTE.TEXT     := '';
  EBZCODPOSTAL.TEXT      := '';
  cbzLocalidad.ItemIndex := -1;
  cbzEstado.ItemIndex    := -1;
  cbzPais.ItemIndex      := -1;
  EBZRFC.TEXT            := '';
  ebzRef.Text            := '';
  cbzVendedor.ItemIndex  := -1;
  EBZTELEFONO1.TEXT      := '';
  EBZTELEFONO2.TEXT      := '';
  ebzContacto1.Text      := '';
  ebzContacto2.Text      := '';
  cbzRuta.ItemIndex      := -1;
  cbzTransp.ItemIndex    := -1;
  cbzZona.ItemIndex      := -1;
  ebzCtaBanco.Text       := '';
  cbzFormaPago.ItemIndex := -1;
  cbzMetodoPago.ItemIndex:= -1;
  ebzEmailCompras.Text   := '';
  ebzEmailPagos.Text     := '';
  ebzEmailFactura.Text   := '';
  enzLimCre.Text         := '';
  ebzPlazo.Text          := '';
  cbzResidencia.ItemIndex:= -1;
  edzIdTrib.Text         := '';


  Application.ProcessMessages;

end;

procedure TfrmClienteAct.Select;
var
  iCod:Integer;
begin
  sbMsg.Caption := 'Cargando Cliente...';
  Application.ProcessMessages;

  FoCte.CODCTEPROV := ebzCodCliente.TEXT;
  foCte.Retrieve;

  EBZRAZSOCIAL.TEXT      := FoCte.RAZSOCIAL;
  ebzCalle.Text          := FoCte.CALLE;
  EBZNUMEXT.TEXT         := FoCte.NUM_EXTERIOR;
  EBZNUMINT.TEXT         := FoCte.NUM_INTERIOR;
  EBZCOLONIACTE.TEXT     := FoCte.COLONIACTE;
  EBZCODPOSTAL.TEXT      := FoCte.CODPOSTAL;
  cbzLocalidad.ItemIndex := ComboSeekText(cbzLocalidad.Items,'('+FoCte.POBLACTE+')'); //FoCte.POBLACTE;
  cbzEstado.ItemIndex    := ComboSeekText(cbzEstado.Items,'('+FoCte.ESTADOCTE+')'); //FoCte.POBLACTE;
  cbzPais.ItemIndex      := ComboSeekText(cbzPais.Items,'('+FoCte.PAISCTE+')'); //FoCte.POBLACTE;
  EBZRFC.TEXT            := FoCte.RFC;
  EBZTELEFONO1.TEXT      := FoCte.TELEFONO1;
  EBZTELEFONO2.TEXT      := FoCte.TELEFONO2;
  ebzRef.Text            := FoCte.REFERENCIA;
  cbzVendedor.ItemIndex  := ComboSeekText(cbzVendedor.Items,'('+FoCte.NUMAGENTE+')'); //FoCte.POBLACTE;
  ebzContacto1.Text      := FoCte.JEFECOMPRAS;
  ebzContacto2.Text      := FoCte.JEFEPAGOS;

  cbzRuta.ItemIndex      := ComboSeekText(cbzRuta.Items,'('+FoCte.RUTA+')');
  cbzTransp.ItemIndex    := ComboSeekText(cbzTransp.Items,'('+FoCte.VIATRANS+')');
  cbzZona.ItemIndex      := ComboSeekText(cbzZona.Items,'('+FoCte.ZONA+')');
  ebzCtaBanco.Text       := FoCte.CUENTABANCO;
  cbzMetodoPago.ItemIndex:= TStringsSeek(cbzMetodoPago.Items,FoCte.METODOPAGO);
  ebzContacto2.Text      := FoCte.JEFEPAGOS;
  ebzEMailCompras.Text   := FoCte.EMAIL;
  ebzEMailPagos.Text     := FoCte.EMAILPAGOS;
  ebzEMailfactura.Text   := FoCte.EMAILFACTURA;
  ebzPlazo.Text          := sm.StrFloat(FoCte.DIASCREDIT,'0');
  enzLimCre.Value        := FoCte.LIMCREDCTE;
  mmoComentarios.Text    := FoCte.COMENTARIOS;

//  edtNombreDir.Text      := FoCte.NOMBRE_DIR;
//  mmoDirEnt.Text         := FoCte.DIR_ENTREGA;

  fraDirs_Entrega1.Leer_DirPrincipal;

  cbzFormaPago.ItemIndex := TStringsSeek(cbzFormaPago.Items,FoCte.FORMAPAGO);
  cbzUsoCFDI.ItemIndex   := TStringsSeek(cbzUsoCFDI.Items,FoCte.USOCFDI);
  cbzResidencia.ItemIndex:= TStringsSeek(cbzResidencia.Items,FoCte.RESIDENCIA);
  edzIdTrib.Text         := FoCte.IDTRIBUTARIO;


  sbMsg.Caption := 'Cargado OK!';
  Application.ProcessMessages;

  LoadXls;

end;

procedure TfrmClienteAct.Insertar;
begin
  sbMsg.Caption := 'Insertando Cliente...';
  Application.ProcessMessages;
//---------------------------------------------------------------
//  FIdCliente := DM1.GetCatalogoId;
//  isql1.ParamByName('IDCLIENTE').AsInteger := FIdCliente;
//  isql1.ParamByName('CODCLIENTE').AsString := UpperCase(EBZCODCLIENTE.TEXT);
//  isql1.ParamByName('IDGRUPO').AsInteger := 0; //IDGRUPO;
//  isql1.ParamByName('IDLISTAPRECIO').AsInteger := 0; //FIDLISTAPRECIO;
//  isql1.ParamByName('IDTIPOCTE').AsInteger := 0;
//  isql1.ParamByName('IDCONDPAGO').AsInteger := 0; // 0=CONTADO
  FoCte.Clear;
  FoCte.CODCTEPROV   := '-1';
  FoCte.RAZSOCIAL    := UpperCase(EBZRAZSOCIAL.TEXT);
  FoCte.CALLE        := ebzCalle.Text;
  FoCte.NUM_EXTERIOR := EBZNUMEXT.TEXT;
  FoCte.NUM_INTERIOR := EBZNUMINT.TEXT;
  FoCte.COLONIACTE   := EBZCOLONIACTE.TEXT;
  FoCte.CODPOSTAL    := EBZCODPOSTAL.TEXT;
  FoCte.POBLACTE     := sm.Between('(',')',cbzLocalidad.Text);
  FoCte.ESTADOCTE    := sm.Between('(',')',CBZESTADO.TEXT);
  FoCte.PAISCTE      := sm.Between('(',')',CBZPAIS.TEXT);
  FoCte.RFC          := EBZRFC.TEXT;
  FoCte.TELEFONO1    := EBZTELEFONO1.TEXT;
  FoCte.TELEFONO2    := EBZTELEFONO2.TEXT;
  FoCte.REFERENCIA   := ebzRef.Text;
  FoCte.NUMAGENTE    := sm.Between('(',')',cbzVendedor.TEXT);
  FoCte.JEFECOMPRAS  := ebzContacto1.Text;
  FoCte.JEFEPAGOS    := ebzContacto2.Text;

  FoCte.RUTA         := sm.Between('(',')',cbzRuta.Text);
  FoCte.VIATRANS     := sm.Between('(',')',cbzTransp.Text);
  FoCte.ZONA         := sm.Between('(',')',cbzZona.Text);
  FoCte.CUENTABANCO  := ebzCtaBanco.Text;
  FoCte.METODOPAGO   := cbzMetodoPago.Text;
  FoCte.JEFEPAGOS    := ebzContacto2.Text;
  FoCte.EMAIL        := ebzEMailCompras.Text;
  FoCte.EMAILPAGOS   := ebzEMailPagos.Text;
  FoCte.EMAILFACTURA := ebzEMailfactura.Text;
  FoCte.DIASCREDIT   := sm.ToI(ebzPlazo.Text);
  FoCte.LIMCREDCTE   := enzLimCre.Value;
  FoCte.COMENTARIOS  := mmoComentarios.Text;

  //FoCte.NOMBRE_DIR   := edtNombreDir.Text;
  //FoCte.DIR_ENTREGA  := mmoDirEnt.Text;


  FoCte.Save;

  if FEstado = esInsert then
    ebzCodCliente.Text := sm.StrFloat(FoCte.IDCLIENTE,'#');

  sbMsg.Caption := 'Insertado OK!';

//--- Set Estado = Update, pero sin hacer el select...
  FEstado := esUpdate;
  sbEstado.Caption := 'UPDATE';

  Application.ProcessMessages;

end;

procedure TfrmClienteAct.Modificar;
var
  ix,IdCiudad: Integer;
  iPM: smallint;
  t,tNom: String;
begin
  sbMsg.Caption := 'Modificando Cliente...';
  Application.ProcessMessages;
//---------------------------------------------------------------
  FoCte.CODCTEPROV   := ebzCodCliente.TEXT;
  FoCte.RAZSOCIAL    := UpperCase(EBZRAZSOCIAL.TEXT);
  FoCte.CALLE        := ebzCalle.Text;
  FoCte.NUM_EXTERIOR := EBZNUMEXT.TEXT;
  FoCte.NUM_INTERIOR := EBZNUMINT.TEXT;
  FoCte.COLONIACTE   := EBZCOLONIACTE.TEXT;
  FoCte.CODPOSTAL    := EBZCODPOSTAL.TEXT;
  FoCte.POBLACTE     := sm.Between('(',')',cbzLocalidad.Text);
  FoCte.ESTADOCTE    := sm.Between('(',')',CBZESTADO.TEXT);
  FoCte.PAISCTE      := sm.Between('(',')',CBZPAIS.TEXT);
  FoCte.RFC          := EBZRFC.TEXT;
  FoCte.TELEFONO1    := EBZTELEFONO1.TEXT;
  FoCte.TELEFONO2    := EBZTELEFONO2.TEXT;
  FoCte.REFERENCIA   := ebzRef.Text;
  FoCte.NUMAGENTE    := sm.Between('(',')',cbzVendedor.TEXT);
  FoCte.JEFECOMPRAS  := ebzContacto1.Text;
  FoCte.JEFEPAGOS    := ebzContacto2.Text;

  FoCte.RUTA         := sm.Between('(',')',cbzRuta.Text);
  FoCte.VIATRANS     := sm.Between('(',')',cbzTransp.Text);
  FoCte.ZONA         := sm.Between('(',')',cbzZona.Text);
  FoCte.CUENTABANCO  := ebzCtaBanco.Text;
  t := sm.NthWord(1,cbzMetodoPago.Text,[' ','|']);
  FoCte.METODOPAGO   := sm.Trim(t);
  FoCte.JEFEPAGOS    := ebzContacto2.Text;
  FoCte.EMAIL        := ebzEMailCompras.Text;
  FoCte.EMAILPAGOS   := ebzEMailPagos.Text;
  FoCte.EMAILFACTURA := ebzEMailfactura.Text;
  FoCte.DIASCREDIT   := sm.ToI(ebzPlazo.Text);
  FoCte.LIMCREDCTE   := enzLimCre.Value;
  FoCte.COMENTARIOS  := mmoComentarios.Text;
//  FoCte.NOMBRE_DIR   := edtNombreDir.Text;
//  FoCte.DIR_ENTREGA  := mmoDirEnt.Text;
  t := sm.NthWord(1,cbzFormaPago.Text,[' ','|']);
  FoCte.FORMAPAGO    := sm.Trim(t);

  t := sm.NthWord(1,cbzUsoCfdi.Text,[' ','|']);
  FoCte.USOCFDI    := sm.Trim(t);
  t := sm.NthWord(1,cbzResidencia.Text,[' ','|']);
  FoCte.RESIDENCIA   := sm.Trim(t);
  FoCte.IDTRIBUTARIO := edzIdTrib.Text;

  FoCte.Save;

  sbMsg.Caption := 'Modificado OK!';

end;

procedure TfrmClienteAct.Eliminar;
var
  ix,IdCiudad: Integer;
  iPM: smallint;
  tNom: String;
begin
//
end;

procedure TfrmClienteAct.CargaCiudades;
begin
  oTabla.FillCiudades(cbzLocalidad.Items);
end;
procedure TfrmClienteAct.CargaEstados;
begin
  oTabla.FillEstados(cbzEstado.Items);
end;
procedure TfrmClienteAct.CargaPaises;
begin
  oTabla.FillPaises(cbzPais.Items);
end;
procedure TfrmClienteAct.btnCopiarClick(Sender: TObject);
begin
  Copiar;
end;

procedure TfrmClienteAct.CargaAgentes;
begin
  oAgen.FillAgentes(cbzVendedor.Items);
end;
procedure TfrmClienteAct.CargaRutas;
begin
  oTabla.FillRutas(cbzRuta.Items);
end;
procedure TfrmClienteAct.CargaTransp;
begin
  oTabla.FillTransp(cbzTransp.Items);
end;
procedure TfrmClienteAct.CargaZonas;
begin
  oTabla.FillZonas(cbzZona.Items);
end;
procedure TfrmClienteAct.CargaCatalogosCfdi;
begin
  oCfdi.Fill_FormaPago(cbzFormaPago.Items);
  oCfdi.Fill_MetodoPago(cbzMetodoPago.Items);
  oCfdi.Fill_UsoCfdi(cbzUsoCFDI.Items);

  oCfdi.Fill_Residencia(cbzResidencia.Items);
  cbzResidencia.ItemIndex := TStringsSeek(cbzResidencia.Items,'MEX');

end;

//--------------------------------------------------------
// Propiedad de la forma
//--------------------------------------------------------
procedure TfrmClienteAct.SetoCte(AoCte:TCliente);
begin
  FoCte := AoCte;
  FCodigo := AoCte.CODCTEPROV;
  ebzCodCliente.Text := FCodigo;

  fraDirs_Entrega1.LimpiarTodo;
  fraDirs_Entrega1.CodCteProv := AoCte.CODCTEPROV;
  fraDirs_Entrega1.Llena_Dirs;
{  FCodigo := FoCte.GetNextCodigo;  }
//  ebzCodCliente.Text := FCodigo;
end;

procedure TfrmClienteAct.tbtCloseClick(Sender: TObject);
begin
  ModalResult := mrCancel;

end;

procedure TfrmClienteAct.tbtGrabarClick(Sender: TObject);
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

procedure TfrmClienteAct.tbtGrabarSalirClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmClienteAct.tbtLeerClick(Sender: TObject);
begin
  LeerDesctos;
end;

procedure TfrmClienteAct.tbtSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmClienteAct.tbtGrabarDesctoClick(Sender: TObject);
begin
  GrabarDesctos;
end;

procedure TfrmClienteAct.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;

end;

procedure TfrmClienteAct.SetCodigo(pCodigo:String);
begin
  FCodigo := pCodigo;
  ebzCodCliente.Text := FCodigo;
end;

procedure TfrmClienteAct.SetPerfil(APerfil:SmallInt);
begin
  FPerfil := APerfil;


end;

procedure TfrmClienteAct.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;

end;

procedure TfrmClienteAct.ClearDesctos;
begin
  F1.ClearRange(7,1,F1.MaxRow,F1.MaxCol,F1ClearValues);
end;

procedure TfrmClienteAct.ebzRazSocialChange(Sender: TObject);
begin
  Caption := ebzRazSocial.Text;
  pnlCliente.Caption := ebzRazSocial.Text;
end;

procedure TfrmClienteAct.LeerDesctos;
var tSql,tCte,tFam:String;
    RenIni,r:integer;
begin

  ClearDesctos;

  F1.TextRC[2,2] := oEmp.RAZSOCIAL;
  F1.TextRC[4,3] := FoCte.RAZSOCIAL;
  tCte := FoCte.CODCTEPROV;
  RenIni := 7;
  r := RenIni;

  with DM1 do begin
    tSql := '';
    tSql := tSql + 'SELECT CODFAM,DESCRIPFAM ';
    tSql := tSql + 'FROM MBA10040 ';
    tSql := tSql + 'ORDER BY CODFAM ';
    icuTemp.Unprepare;
    icuTemp.SQL.Clear;
    icuTemp.SQL.Add(tSql);
    icuTemp.prepare;
    icuTemp.Open;
    while not icuTemp.Eof do begin
      F1.TextRC[r,2] := icuTemp.FieldByName('CODFAM').AsString;
      F1.TextRC[r,3] := icuTemp.FieldByName('DESCRIPFAM').AsString;
      icuTemp.Next;
      r := r + 1;
    end;
    icuTemp.Close;

    tSql := '';
    tSql := tSql + 'SELECT CODCTEPROV,CODFAM,PCT1,PCT2,PCT3,PCT4,PCT5 ';
    tSql := tSql + 'FROM MBA10080 ';
    tSql := tSql + 'WHERE (CODCTEPROV = ?CODCTEPROV)  AND (CODFAM = ?CODFAM); ';
    icuTemp.Unprepare;
    icuTemp.SQL.Clear;
    icuTemp.SQL.Add(tSql);
    icuTemp.prepare;

    for r:= RenIni to F1.MaxRow do begin
      tFam := F1.TextRC[r,2];
      if length(tFam) <= 0 then break;

      icuTemp.ParamByName('CODCTEPROV').AsString := tCte;
      icuTemp.ParamByName('CODFAM').AsString := tFam;
      icuTemp.Open;
      if icuTemp.RecordCount > 0 then begin
        F1.NumberRC[r,4] := icuTemp.FieldByName('PCT1').AsDouble;
        F1.NumberRC[r,5] := icuTemp.FieldByName('PCT2').AsDouble;
        F1.NumberRC[r,6] := icuTemp.FieldByName('PCT3').AsDouble;
        F1.NumberRC[r,7] := icuTemp.FieldByName('PCT4').AsDouble;
        F1.NumberRC[r,8] := icuTemp.FieldByName('PCT5').AsDouble;
      end;
      icuTemp.Close;
    end;
  end;
end;

procedure TfrmClienteAct.GrabarDesctos;
var tSql,tFam,tCte:String;
    r:integer;
begin

  tCte := FoCte.CODCTEPROV;

// 1) Borrar descuentos del cliente
  tSql := '';
  tSql := tSql + 'DELETE FROM MBA10080 WHERE CODCTEPROV = ?CODCTEPROV;';
  with DM1 do begin
    isqlTemp.Unprepare;
    isqlTemp.SQL.Clear;
    isqlTemp.SQL.Add(tSql);
    isqlTemp.prepare;

    isqlTemp.ParamByName('CODCTEPROV').AsString := tCte;
    isqlTemp.ExecSQL;
// 2) Grabar descuentos del cliente
    tSql := '';
    tSql := tSql + 'INSERT INTO MBA10080 (CODCTEPROV,CODFAM,PCT1,PCT2,PCT3,PCT4,PCT5) ';
    tSql := tSql + '            VALUES   (?CODCTEPROV,?CODFAM,?PCT1,?PCT2,?PCT3,?PCT4,?PCT5);';
    isqlTemp.Unprepare;
    isqlTemp.SQL.Clear;
    isqlTemp.SQL.Add(tSql);
    isqlTemp.prepare;

    for r := 7 to F1.MaxRow do begin
      isqlTemp.ParamByName('CODCTEPROV').AsString := tCte;
      tFam := Trim(F1.TextRC[r,2]);

      if length(tFam) <= 0 then break;

      isqlTemp.ParamByName('CODFAM').AsString := tFam;
      isqlTemp.ParamByName('PCT1').AsDouble := F1.NumberRC[r,4];
      isqlTemp.ParamByName('PCT2').AsDouble := F1.NumberRC[r,5];
      isqlTemp.ParamByName('PCT3').AsDouble := F1.NumberRC[r,6];
      isqlTemp.ParamByName('PCT4').AsDouble := F1.NumberRC[r,7];
      isqlTemp.ParamByName('PCT5').AsDouble := F1.NumberRC[r,8];
      isqlTemp.ExecSQL;

    end;
    isqlTemp.Unprepare;

  end;
end;

procedure TfrmClienteAct.Copiar;
var t,tLine:String;
    mr,iPos:integer;
begin
  if not sm.IsEmpty(fraDirs_Entrega1.mmoDirEnt.Text) then begin
    mr := MessageDlg('La dirección YA contiene datos. '+#13+#10+'Deseas borrar los datos actuales?', mtWarning, [mbOK, mbCancel], 0);
    if mr <> mrOk then exit;
  end;

  fraDirs_Entrega1.cboNombreDir.Text := 'FISCAL';
  fraDirs_Entrega1.chkEsPrincipal.Checked := True;
  fraDirs_Entrega1.mmoDirEnt.Clear;
  tLine := ebzCalle.Text + ' ' + ebzNumExt.Text + ' ' + ebzNumInt.Text;
  fraDirs_Entrega1.mmoDirEnt.Lines.Add(tLine);

  tLine := ebzColoniaCte.Text;
  fraDirs_Entrega1.mmoDirEnt.Lines.Add(tLine);

  tLine := '';
  t := cbzLocalidad.Text;
  iPos := sm.Pos('(',t);
  if iPos > 0 then
    t := sm.CopyPos(t,1,iPos-1);

  tLine := tLine + t;

  t := cbzEstado.Text;
  iPos := sm.Pos('(',t);
  if iPos > 0 then
    t := sm.CopyPos(t,1,iPos-1);

  if length(t) > 0 then tLine := tLine + ', ' + t;

  t := cbzPais.Text;
  iPos := sm.Pos('(',t);
  if iPos > 0 then
    t := sm.CopyPos(t,1,iPos-1);

  if length(t) > 0 then tLine := tLine + ', ' + t;

  fraDirs_Entrega1.mmoDirEnt.Lines.Add(tLine);

  tLine := ebzCodPostal.Text;
  fraDirs_Entrega1.mmoDirEnt.Lines.Add(tLine);


end;

end.
