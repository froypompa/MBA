unit Dirs_Entrega;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, RxToolEdit, StrMan, StringLib,
  RzEdit, RzBtnEdt, RzLabel, ExtCtrls, RzPanel, RzRadChk, RzButton,  RzCmboBx,
  ClsDirEntrega;

type
  TfraDirs_Entrega = class(TFrame)
    RzPanel1: TRzPanel;
    RzLabel27: TRzLabel;
    RzPanel2: TRzPanel;
    mmoDirEnt: TRzMemo;
    btnLimpiar: TRzBitBtn;
    chkEsPrincipal: TRzCheckBox;
    btnEliminar: TRzBitBtn;
    btnGrabar: TRzBitBtn;
    cboNombreDir: TRzComboBox;
    procedure Initiate;
    procedure Terminate;
    procedure btnGrabarClick(Sender: TObject);
    procedure Leer_DirPrincipal;
    procedure Grabar;
    procedure Limpiar;
    procedure LimpiarTodo;
    procedure DisplayDatos;
    procedure Eliminar;
    procedure btnLimpiarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure Llena_Dirs;
    procedure cboNombreDirSelect(Sender: TObject);
  private
    { Private declarations }
    FoDirEnt:TDirEntrega;
    FIDDIRENTREGA:Integer;
    FNOMBRE_DIR: String;
    FDIR_ENTREGA: String;
    FPRIORIDAD:SmallInt;
    FDATOS_EMBARQUE: String;
    FError:Integer;

    FCODCTEPROV: String;


    FEventSelect: TNotifyEvent;
    mrRes:Integer;
    procedure SetIdDirEntrega(AIdDirEntrega:Integer);
    procedure SetCodCteProv(ACodCteProv:String);
    procedure Set_Nombre_Dir(ANombre_Dir:String);
    function Get_Nombre_Dir:String;
    procedure Set_Dir_Entrega(ADir_Entrega:String);
    function Get_Dir_Entrega:String;
    procedure Set_Datos_Embarque(ADatos_Embarque:String);
    function Get_Datos_Embarque:String;
    procedure Set_Prioridad(APrioridad:SmallInt);
    function Get_Prioridad:SmallInt;
    procedure DoEventSelect;
  public
    { Public declarations }
    property IDDirEntrega:Integer read FIDDirEntrega  write SetIdDirEntrega;
    property Nombre_Dir:String read Get_Nombre_Dir  write Set_Nombre_Dir;
    property Dir_Entrega:String read Get_Dir_Entrega  write Set_Dir_Entrega;
    property Prioridad:SmallInt read Get_Prioridad  write Set_Prioridad;
    property Datos_Embarque:String read Get_Datos_Embarque  write Set_Datos_Embarque;
    property CodCteProv:String read FCodCteProv  write SetCodCteProv;
    property EventSelect: TNotifyEvent  read FEventSelect  write FEventSelect;
  end;


implementation

uses DM_MBA, SelTabla;

{$R *.DFM}

procedure TfraDirs_Entrega.Initiate;
begin
  FError := 0;
  FoDirEnt := TDirEntrega.Create;
end;

procedure TfraDirs_Entrega.Terminate;
begin
  FreeAndNil(FoDirEnt);
end;

procedure TfraDirs_Entrega.btnEliminarClick(Sender: TObject);
begin
  Eliminar;
end;

procedure TfraDirs_Entrega.btnGrabarClick(Sender: TObject);
begin
  Grabar;
end;

procedure TfraDirs_Entrega.Leer_DirPrincipal;
var iPrioridad:smallint;
begin
  if not Assigned(FoDirEnt) then begin
    FError := 1;
    exit;
  end;
  FoDirEnt.Set_Dir_EntregaPrincipal;
  cboNombreDir.Text := FoDirEnt.NOMBRE_DIR;
  mmoDirEnt.Text := FoDirEnt.DIR_ENTREGA;
  chkEsprincipal.Checked := (FoDirEnt.PRIORIDAD = 0);
  FIDDIRENTREGA := FoDirEnt.IDDIRENTREGA;
//
end;

procedure TfraDirs_Entrega.Llena_Dirs;
var iPrioridad:smallint;
begin
  if not Assigned(FoDirEnt) then begin
    FError := 1;
    exit;
  end;
  if chkEsPrincipal.Checked then iPrioridad := 0 else iPrioridad := 1;


    FoDirEnt.Fill_Nombre_Dirs(cboNombreDir.Items);
    cboNombreDir.ItemIndex := 0;
    mmoDirEnt.Text := FoDirEnt.Get_Dir_Entrega(cboNombreDir.Text);
    FDATOS_EMBARQUE := FoDirEnt.DATOS_EMBARQUE;
    chkEsPrincipal.Checked := (FoDirEnt.PRIORIDAD = 0);
    FIDDIRENTREGA := FoDirEnt.IDDIRENTREGA;

    DoEventSelect;

end;

procedure TfraDirs_Entrega.btnLimpiarClick(Sender: TObject);
begin
  Limpiar;
end;

procedure TfraDirs_Entrega.DisplayDatos;
begin
  cboNombreDir.Text := FoDirEnt.NOMBRE_DIR;
  chkEsPrincipal.Checked := (FoDirEnt.PRIORIDAD = 0);
  mmoDirEnt.Text := FoDirEnt.DIR_ENTREGA;
  FDatos_Embarque := FoDirEnt.DATOS_EMBARQUE;
  FIDDIRENTREGA := FoDirEnt.IDDIRENTREGA;

  DoEventSelect;

end;

procedure TfraDirs_Entrega.cboNombreDirSelect(Sender: TObject);
begin
  FDIR_ENTREGA := FoDirEnt.Get_Dir_Entrega(cboNombreDir.Text);
  chkEsPrincipal.Checked := (FoDirEnt.PRIORIDAD = 0);
  mmoDirEnt.Text := FoDirEnt.DIR_ENTREGA;
  FDatos_Embarque := FoDirEnt.DATOS_EMBARQUE;
  FIDDIRENTREGA := FoDirEnt.IDDIRENTREGA;

  DoEventSelect;

end;

procedure TfraDirs_Entrega.Grabar;
var
  iPrioridad:smallint;
  tDir:String;
begin
  if not Assigned(FoDirEnt) then begin
    FError := 1;
    exit;
  end;
  if length(cboNombreDir.Text) <= 0 then begin
    ShowMessage('El nombre de la direccion NO puede estar vacío!'+#10+#13+'Captura un nombre');
    FError := 1;
    exit;
  end;

  if chkEsPrincipal.Checked then iPrioridad := 0 else iPrioridad := 1;

  FoDirEnt.CODCTEPROV     := FCODCTEPROV;
  FoDirEnt.NOMBRE_DIR     := Trim(cboNombreDir.Text);
  FoDirEnt.DIR_ENTREGA    := mmoDirEnt.Text;
  FoDirEnt.DATOS_EMBARQUE := FDATOS_EMBARQUE;
  FoDirEnt.PRIORIDAD      := iPrioridad;

  tDir :=   FoDirEnt.NOMBRE_DIR;

  FoDirEnt.Save_DirEntrega;

  FError := FoDirEnt.Error;

  LimpiarTodo;
  Llena_Dirs;

  cboNombreDir.ItemIndex:= ComboSeekText(cboNombreDir.Items,tDir);
  if cboNombreDir.ItemIndex = -1 then
    Leer_DirPrincipal
  else
    cboNombreDirSelect(nil);

end;
procedure TfraDirs_Entrega.Limpiar;
begin

  cboNombreDir.Text := '';
  chkEsPrincipal.Checked := False;
  mmoDirEnt.Text    := '';;
  FIDDIRENTREGA := -1;
  FNOMBRE_DIR:='';
  FDIR_ENTREGA:='';
  FPRIORIDAD:=0;
  FDATOS_EMBARQUE:='';

end;
procedure TfraDirs_Entrega.LimpiarTodo;
begin
  cboNombreDir.Items.Clear;
  cboNombreDir.Text := '';
  chkEsPrincipal.Checked := False;
  mmoDirEnt.Lines.Clear;
  mmoDirEnt.Text    := '';
  FIDDIRENTREGA := -1;
  FNOMBRE_DIR:='';
  FDIR_ENTREGA:='';
  FPRIORIDAD:=0;
  FDATOS_EMBARQUE:='';
end;
procedure TfraDirs_Entrega.Eliminar;
begin

  cboNombreDir.Text := '';
  chkEsPrincipal.Checked := False;
  mmoDirEnt.Text    := '';;

end;
{$REGION 'SET GET'}
procedure TfraDirs_Entrega.SetIdDirEntrega(AIdDirEntrega:Integer);
begin
  if AIdDirEntrega <= 0 then exit;

  FIdDirEntrega := AIdDirEntrega;

  FoDirEnt.SelectById(FIdDirEntrega);
  if FoDirEnt.Error = 0 then
    DisplayDatos;
end;

procedure TfraDirs_Entrega.SetCodCteProv(ACodCteProv:String);
begin
  FCODCTEPROV := ACodCteProv;
  FoDirEnt.CODCTEPROV := FCODCTEPROV;
end;

procedure TfraDirs_Entrega.Set_Nombre_Dir(ANombre_Dir:String);
begin
  FNOMBRE_DIR := ANombre_Dir;
  cboNombreDir.Text := FNOMBRE_DIR;
  if sm.IsEmpty(FNOMBRE_DIR) then
    Leer_DirPrincipal
  else begin
    FDIR_ENTREGA :=  FoDirEnt.Get_Dir_Entrega(FNOMBRE_DIR);
    mmoDirEnt.Text := FDIR_ENTREGA;
  end;

end;
function TfraDirs_Entrega.Get_Nombre_Dir:String;
begin
  Result := FNOMBRE_DIR;
end;

procedure TfraDirs_Entrega.Set_Prioridad(APrioridad:SmallInt);
begin
  FPRIORIDAD := APrioridad;
  chkEsPrincipal.Checked := (APrioridad <=  0);
end;
function TfraDirs_Entrega.Get_Prioridad:SmallInt;
begin
  Result := FPrioridad;
end;

procedure TfraDirs_Entrega.Set_Dir_Entrega(ADir_Entrega:String);
begin
  FDIR_ENTREGA := ADir_Entrega;
  mmoDirEnt.Text := FDIR_ENTREGA;
end;
function TfraDirs_Entrega.Get_Dir_Entrega:String;
begin
  Result := FDIR_ENTREGA;
end;

procedure TfraDirs_Entrega.Set_Datos_Embarque(ADatos_Embarque:String);
begin
  FDATOS_EMBARQUE := ADatos_Embarque;
end;
function TfraDirs_Entrega.Get_Datos_Embarque:String;
begin
  Result := FDATOS_EMBARQUE;
end;

procedure TfraDirs_Entrega.DoEventSelect;
begin
  if assigned(FEventSelect) then
    FEventSelect(nil);
end;

{$ENDREGION}
end.
