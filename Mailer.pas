unit Mailer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, Db, Menus, Buttons,
  RXCtrls, StdCtrls, Mask, RxToolEdit, AxCtrls, OleCtrls, {VCIF1Lib_TLB,}
  ToolWin, DBTables, RxPlacemnt, RXSplit, ActnList, ESBDates, StrMan,
  TB2ExtItems, TBXExtItems, TBX, TB2Dock, TB2Toolbar, LibApp, RXSpin, {FindFile,}
  ClsCliente, IB_Components, TB2Item, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdPOP3, IdSMTPBase, IdSMTP, IdAttachment, IdAttachmentFile, IdEMailAddress, Grids, IB_Grid, RzPanel, IdMessage, RzStatus,
  RzTabs, ImgList, RzEdit, RzLabel,ShellAPI,
  ClsMailer, RzButton, RzRadChk;

type
  OLE_HANDLE = LongWord;

  TfrmMailer = class(TForm)
    Dock971: TTBXDock;
    Toolbar971: TTBXToolbar;
    tbtSalir: TTBXItem;
    ToolbarSep972: TTBXSeparatorItem;
    icuRep1: TIB_Cursor;
    icuRep2: TIB_Cursor;
    FormStorage1: TFormStorage;
    SMTP: TIdSMTP;
    ImageList2: TImageList;
    pgcMain: TRzPageControl;
    tshGeneral: TRzTabSheet;
    tshConfig: TRzTabSheet;
    RzStatusBar1: TRzStatusBar;
    sbMsg: TRzStatusPane;
    ledHost: TLabeledEdit;
    MailMessage: TIdMessage;
    ledUsuario: TLabeledEdit;
    ledPassword: TLabeledEdit;
    tbtEnviar: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    tshOpciones: TRzTabSheet;
    RzPageControl2: TRzPageControl;
    RzTabSheet1: TRzTabSheet;
    RzPanel1: TRzPanel;
    igrMain: TIB_Grid;
    RzPanel2: TRzPanel;
    iqrMain: TIB_Query;
    idsMain: TIB_DataSource;
    TabSheet1: TRzTabSheet;
    mmzMsg: TRzMemo;
    RzPanel3: TRzPanel;
    ledFrom: TLabeledEdit;
    ledTo: TLabeledEdit;
    ledSubject: TLabeledEdit;
    mmzBody: TRzMemo;
    RzLabel1: TRzLabel;
    tbtListar: TTBXItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    tbtMostrarPanel: TTBXVisibilityToggleItem;
    tbtVerPdf: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    RzLabel2: TRzLabel;
    mmzAttach: TRzMemo;
    chkTxt: TRzCheckBox;
    ledCC: TLabeledEdit;
    ledBCC: TLabeledEdit;
    tbtActualizar: TTBXItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    ledPuerto: TLabeledEdit;
    btnProbar: TRzBitBtn;
    TBXSeparatorItem5: TTBXSeparatorItem;
    tbtEnviarTodo: TTBXItem;
    procedure Salir1Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure axnSalirExecute(Sender: TObject);
    procedure tbtListarClick(Sender: TObject);
    procedure BuscaCliente;
    procedure InsertAttachments;
    procedure SendMail;
    procedure InsertMsg(AMsg:String);
    procedure SetSBMsg(AMsg:String);
    procedure FormShow(Sender: TObject);
    procedure ActualizarCorreos;
    procedure idsMainDataChange(Sender: TIB_StatementLink;
      Statement: TIB_Statement; Field: TIB_Column);
    procedure tbtVerPdfClick(Sender: TObject);
    procedure tbtEnviarClick(Sender: TObject);
    procedure SMTPStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure igrMainCellDblClick(Sender: TObject; ACol, ARow: Integer;
      AButton: TMouseButton; AShift: TShiftState);
    procedure tbtActualizarClick(Sender: TObject);
    procedure btnProbarClick(Sender: TObject);
    procedure SMTPDisconnected(Sender: TObject);
    procedure SMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Integer);
    procedure SMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure SMTPWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Integer);
    procedure SMTPFailedRecipient(Sender: TObject; const AAddress, ACode,
      AText: string; var VContinue: Boolean);
    procedure tbtEnviarTodoClick(Sender: TObject);
    procedure EnviarTodo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
    frmMailer: TfrmMailer;
    oCte:TCliente;
    oMailer:TMailer;
    mtDirOut:String;
    Attachment: TIdAttachment;
    Addressee: TIdEmailAddressItem ;
    mError: Integer;
    mfUpdating:Boolean;

implementation

uses Main, DM_MBA;

{$R *.DFM}

procedure TfrmMailer.FormCreate(Sender: TObject);
var tFile:String;
begin
    oCte := TCliente.Create;
    tFile := LibApp.GetIniFile;
    mtDirOut := oINi.ReadString ('Directorios','CFDI',''); //   ExtractFileDir(ParamStr(0));
    mtDirOut := mtDirOut + 'out\';

    oMailer := TMailer.Create;

    iqrMain.PreventDeleting := not (oUser.ISMASTER = 1);
    iqrMain.Open;

  mfUpdating := False;

end;

procedure TfrmMailer.FormShow(Sender: TObject);
begin
  pgcMain.ActivePageIndex := 0;
  mmzMsg.Lines.Clear;
//    tbtMostrarPanel.Visible := pgcMain.Visible;
end;

procedure TfrmMailer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    oCte.Free;
    oMailer.Free;
    frmMailer := nil;
    Action := caFree;

end;

procedure TfrmMailer.idsMainDataChange(Sender: TIB_StatementLink;
  Statement: TIB_Statement; Field: TIB_Column);
begin

  if mfUpdating then exit;
  

  ledTo.Text := iqrMain.FieldByName('EMAILREC').AsString;
  InsertAttachments;
end;

procedure TfrmMailer.igrMainCellDblClick(Sender: TObject; ACol, ARow: Integer;
  AButton: TMouseButton; AShift: TShiftState);
begin
  tbtEnviarClick(nil);
end;

procedure TfrmMailer.Salir1Click(Sender: TObject);
begin
    close;
end;

procedure TfrmMailer.tbtActualizarClick(Sender: TObject);
begin
  mfUpdating := True;
  ActualizarCorreos;
  mfUpdating := False;
  iqrMain.First;
end;

procedure TfrmMailer.ActualizarCorreos;
begin
  SetSBMsg('Actualizando los correos electronicos...');
  Screen.Cursor := crHourGlass;
  iqrMain.First;
  while not iqrMain.eof do begin
    BuscaCliente;
    iqrMain.fieldbyName('EMAILREC').AsString := oCte.EMAILFACTURA;
    iqrMain.Post;
    iqrMain.Next;

  end;
  Screen.Cursor := crDefault;
  SetSBMsg('Termine de Actualizar!');

end;

procedure TfrmMailer.tbtEnviarClick(Sender: TObject);
begin
  setSBMsg('Enviando  Correo...');

  Screen.Cursor := crHourGlass;

  SendMail;

  if mError = 0 then begin
    oMailer.REFID    := iqrMain.FieldByName('REFID').AsInteger;
    oMailer.ESTATUS  := 1; //enviado
    oMailer.FHENVIADO:= Date+Time;
    oMailer.OBSERVACIONES := 'Enviado por ' + oUser.LOGIN;
    oMailer.SetEnviado;
  end;

  if mError > 0 then
    setSBMsg('Hubo errores al enviar el correo. Checa la bitácora.')
  else
    setSBMsg('Correo enviado!');

  tbtListarClick(nil);

  Screen.Cursor := crDefault;

end;

procedure TfrmMailer.tbtEnviarTodoClick(Sender: TObject);
begin
  EnviarTodo;
end;

procedure TfrmMailer.EnviarTodo;
var
  i:Integer;
begin
  setSBMsg('Enviando Correos...');

  Screen.Cursor := crHourGlass;
  mError := 0;
  i := 1;
  iqrMain.First;
  while not iqrMain.Eof do begin

    SendMail;

    if mError = 0 then begin
      oMailer.REFID    := iqrMain.FieldByName('REFID').AsInteger;
      oMailer.ESTATUS  := 1; //enviado
      oMailer.FHENVIADO:= Date+Time;
      oMailer.OBSERVACIONES := 'Enviado por ' + oUser.LOGIN;
      oMailer.SetEnviado;
    end;

    if mError > 0 then
      setSBMsg('Hubo errores al enviar el correo. Checa la bitácora.')
    else
      setSBMsg('Correo enviado!');

    setSBMsg('Correo # ' + sm.StrFloat(i,'0',2,#32)+ ' enviado!');
    i := i + 1;

//    break;

    iqrMain.Next;
  end;

  tbtListarClick(nil);

  setSBMsg('Ya termine de enviar correos!!!');

  Screen.Cursor := crDefault;

end;

procedure TfrmMailer.SendMail;
var
  i:Integer;
  tFile,tFH,tArchivo,tSubject:String;
begin
  mError := 0;
  //setup SMTP
  SMTP.Host := ledHost.Text;
  SMTP.Port := sm.ToI(ledPuerto.Text);

  //Clear mail message
  MailMessage.Clear;

  tArchivo := iqrMain.FieldByName('ARCHIVO').AsString;

  InsertMsg('Procesando Factura: ' + tArchivo);
  //setup mail message

  if length(Trim(ledFrom.Text)) > 0 then begin
    MailMessage.From.Text := ledFrom.Text;
    MailMessage.From.Name := 'Facturacion Aceros Roscados';
  end else begin
    InsertMsg('Falta el correo del Emisor!!!');
    ShowMessage('Falta el correo del Emisor!!!');
    mError := 2;
    exit;
  end;
  if length(Trim(ledTo.Text)) > 0 then begin
    MailMessage.Recipients.EMailAddresses:= ledTo.Text;
    //MailMessage.Recipients.EMailAddresses:= 'facturas@ssmexico.net';
  end else begin
    InsertMsg('Falta el correo del destinatario!!!');
    ShowMessage('Falta el correo del destinatario!!!');
    mError := 3;
    exit;
  end;
  if length(Trim(ledCC.Text)) > 0 then
    MailMessage.CCList.EMailAddresses:= ledCC.Text;
  if length(Trim(ledBCC.Text)) > 0 then
    MailMessage.BCCList.EMailAddresses:= ledBCC.Text;

  tSubject := ledSubject.Text;
  tSubject := sm.Replace('$f',tArchivo,tSubject);

  MailMessage.Subject := tSubject;
  MailMessage.Body.Text := mmzBody.Text;

 // if FileExists(ledAttachment.Text) then
//    TIdAttachment.Create(MailMessage.MessageParts, ledAttachment.Text);
    for i := 0 to mmzAttach.Lines.Count - 1 do begin
      tfile := mmzAttach.Lines.Strings[i];
      Attachment := TIdAttachmentFile.Create(MailMessage.MessageParts, tFile);
    end;

  //send mail
  try
    try

      SMTP.Username := ledUsuario.Text; //'facturacion@acerosroscados.com.mx';
      SMTP.Password := ledPassword.Text; //'factura2012';
      SMTP.Connect;
      SMTP.Send(MailMessage);
    except on E:Exception do
      begin
        InsertMsg('ERROR: ' + E.Message);
        mError := 10;
      end;
    end;
  finally
    if SMTP.Connected then SMTP.Disconnect;
  end;

  InsertMsg('-------------------------------------------------------');

end;

procedure TfrmMailer.SMTPDisconnected(Sender: TObject);
begin
  InsertMsg('Desconectado!!');

end;

procedure TfrmMailer.SMTPFailedRecipient(Sender: TObject; const AAddress, ACode,
  AText: string; var VContinue: Boolean);
begin
  InsertMsg('Error al enviar!!');

  VContinue := false;

end;

procedure TfrmMailer.SMTPStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
  InsertMsg(AStatusText+'***********');

end;

procedure TfrmMailer.SMTPWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Integer);
begin
   InsertMsg('On Work...');

end;

procedure TfrmMailer.SMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Integer);
begin
   InsertMsg('Enviando...');

end;

procedure TfrmMailer.SMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
   InsertMsg('Enviada exitosamente!!');

end;

procedure TfrmMailer.InsertMsg(AMsg:String);
var
  tFH:String;
begin
  tFH := ESBDates.Date2Str(Date) + ' ' + ESBDates.Time2Str2(Time) + ' | ';
  mmzMsg.Lines.Add(tFH+AMsg);

end;

procedure TfrmMailer.SetSBMsg(AMsg:String);
begin
  sbMsg.Caption := AMsg;
  Application.ProcessMessages;
end;

procedure TfrmMailer.ToolButton13Click(Sender: TObject);
begin
    close;
end;

procedure TfrmMailer.axnSalirExecute(Sender: TObject);
begin
    close;
end;

procedure TfrmMailer.btnProbarClick(Sender: TObject);
begin
  InsertMsg('Probando conexion...');
  mError := 0;
  //setup SMTP
  SMTP.Host := ledHost.Text;
  SMTP.Port := sm.ToI(ledPuerto.Text);

  //Clear mail message
  MailMessage.Clear;

  //setup mail message

  //send mail
  try
    try

      SMTP.Username := ledUsuario.Text; //'facturacion@acerosroscados.com.mx';
      SMTP.Password := ledPassword.Text; //'factura2012';
      InsertMsg('Host: ' + SMTP.Host);
      InsertMsg('Port: ' + sm.StrFloat(SMTP.Port,'#'));
      InsertMsg('User: ' + SMTP.Username);
      InsertMsg('Password: ' + SMTP.Password);
      InsertMsg('Conectando... ');
      SMTP.Connect;
    except on E:Exception do
      begin
        InsertMsg('ERROR: ' + E.Message);
        mError := 10;
      end;
    end;
  finally
    if SMTP.Connected then SMTP.Disconnect;
  end;

  if SMTP.Connected then SMTP.Disconnect;

  InsertMsg('Desconectando...');
//  InsertMsg('Fin Mensaje!');
  InsertMsg('-------------------------------------------------------');

end;

procedure TfrmMailer.tbtListarClick(Sender: TObject);
begin

    Screen.Cursor := crHourGlass;
    iqrMain.Close;
    iqrMain.Open;
    Screen.Cursor := crDefault;
    iqrMain.First;

    pgcMain.ActivePage := tshGeneral;

end;


procedure TfrmMailer.tbtVerPdfClick(Sender: TObject);
var
  tfile:string;
begin
  tFile := iqrMain.FieldByName('ARCHIVO').AsString;
  ShellExecute(0, 'Open', PChar(mtDirOut + tFile + '.pdf'), PChar(''), PChar(''), SW_Show);
end;

procedure TfrmMailer.BuscaCliente;
var tCod,tCod2,tDias:String;
    iDias:Integer;
    iError:Integer;
begin
    tCod := sm.Strip(iqrMain.FieldByName('CODCTEPROV').AsString);
    if length(tCod) <= 0 then begin
      SetSBMsg('EL cliente no existe en la factura!');

      exit;
    end;
    oCte.CODCTEPROV := tCod;
    oCte.Retrieve;
    if (oCte.Error > 0) then begin
      SetSBMsg('EL cliente no existe en el catalogo!');
    end;

end;

{---------------------------------------------------------------
INICIO - Rutinas proceso
---------------------------------------------------------------}
procedure TfrmMailer.InsertAttachments;
var tFile,tFile1,tFile2,tFile3:String;
    iError:Integer;
begin
  tFile := iqrMain.FieldByName('ARCHIVO').AsString;
  tFile1:= tFile + '.pdf';
  tFile2:= tFile + '.xml';
  tFile3:= tFile + '.txt';

  mmzAttach.Lines.Clear;
  if fileexists(mtDirOut+tFile1) then
    mmzAttach.Lines.Add(mtDirOut+tFile1);
  if fileexists(mtDirOut+tFile2) then
  mmzAttach.Lines.Add(mtDirOut+tFile2);
  if chkTxt.Checked then
    if fileexists(mtDirOut+tFile3) then
      mmzAttach.Lines.Add(mtDirOut+tFile3);

end;


end.
