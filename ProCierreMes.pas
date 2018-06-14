unit ProCierreMes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, RxToolEdit, RXSpin, StdCtrls, RXCtrls, StrMan, ESBDates;

type
  TfraCierreMes = class(TFrame)
    xlbNombre: TRxLabel;
    mmoMsg: TMemo;
    xlbDias: TRxLabel;
    RxLabel1: TRxLabel;
    cboAnio: TComboBox;
    cboMes: TComboBox;
  private
    { Private declarations }
    procedure IniciarPeriodo;
  public
    { Public declarations }
    procedure SetUp;
    procedure Ejecutar;
  end;

implementation
uses Main, DM_MBA, Avance, MsgError;

{$R *.DFM}

procedure TfraCierreMes.SetUp;
var iAnio,iMes,iDia:Integer;
begin
    xlbNombre.Caption := '** Cierre de Mes **';
    mmoMsg.Lines.Clear;
    mmoMsg.Lines.Add('Este proceso acumula las ventas, devoluciones y compras del mes.');
    mmoMsg.Lines.Add('Este proceso se puede ejecutar varias veces durante el mes para ');
    mmoMsg.Lines.Add('ir acumulando los totales parciales del mes en curso.');

    oEmp.Retrieve;
    
    cboAnio.SetFocus;

    ESBDates.OptDecodeDateI(oEmp.FechaIniPeriodo,iAnio,iMes,iDia);
    cboAnio.Text := sm.StrFloat(iAnio,'####');
    cboMes.Text := sm.StrFloat(iMes,'##');

end;

procedure TfraCierreMes.Ejecutar;
var tAnio,tMes:String;
    iAnio,iMes,iRes,iError:Integer;
begin

    Screen.Cursor := crHourGlass;

    frmAvance.Show;
    frmAvance.Update;
    frmAvance.Msg := 'Acumulando Facturas y Notas de Crédito ...';

    DM1.Start;
      oEmp.ProcesandoCierre := True;
    DM1.Commit;

    DM1.Start;


// Calculo de las ventas por documentos
    DM1.ispPro.Unprepare;
    DM1.ispPro.AutoDefineParams := True;
    DM1.ispPro.StoredProcName := 'PRO_ACUMVENTAS01';
    DM1.ispPro.Prepare;

    tAnio := sm.Strip (cboAnio.Text);
    tMes  := sm.Strip (cboMes.Text);
    iAnio := sm.ToI (tAnio);
    iMes  := sm.ToI (tMes);

    DM1.ispPro.ParamByName('P_ANIO').AsSmallInt := iAnio;
    DM1.ispPro.ParamByName('P_PERIODO').AsSmallInt := iMes;

    DM1.ispPro.ExecProc;
{
// Calculo de las ventas por documentos
    DM1.ispPro.Unprepare;
    DM1.ispPro.AutoDefineParams := True;
    DM1.ispPro.StoredProcName := 'PRO_CIERREMES';
    DM1.ispPro.Prepare;

    tAnio := sm.Strip (cboAnio.Text);
    tMes  := sm.Strip (cboMes.Text);
    iAnio := sm.ToI (tAnio);
    iMes  := sm.ToI (tMes);

    DM1.ispPro.ParamByName('p_Anio').AsSmallInt := iAnio;
    DM1.ispPro.ParamByName('p_Periodo').AsSmallInt := iMes;

    DM1.ispPro.ExecProc;

    frmAvance.Percent := 30;
    frmAvance.Msg := 'Calculando Estadistica por Producto y Familia ...';
    if frmAvance.Canceled then begin
      iError := 2; //Proceso Cancelado
    end;
// Calculo de las ventas por producto
    DM1.ispPro.Unprepare;
    DM1.ispPro.AutoDefineParams := True;
    DM1.ispPro.StoredProcName := 'PRO_CIERREMESPROD';
    DM1.ispPro.Prepare;

    tAnio := sm.Strip (cboAnio.Text);
    tMes  := sm.Strip (cboMes.Text);
    iAnio := sm.ToI (tAnio);
    iMes  := sm.ToI (tMes);

    DM1.ispPro.ParamByName('p_Anio').AsSmallInt := iAnio;
    DM1.ispPro.ParamByName('p_Periodo').AsSmallInt := iMes;

    DM1.ispPro.ExecProc;

// Cierre mensual de Inventarios
    frmAvance.Percent := 50;
    frmAvance.Msg := 'Haciendo el cierre mensual de Almacenes ...';

    DM1.ispPro.Unprepare;
    DM1.ispPro.AutoDefineParams := True;
    DM1.ispPro.StoredProcName := 'MBA10017_U00';
    DM1.ispPro.Prepare;

    tAnio := sm.Strip (cboAnio.Text);
    tMes  := sm.Strip (cboMes.Text);
    iAnio := sm.ToI (tAnio);
    iMes  := sm.ToI (tMes);

    DM1.ispPro.ParamByName('Anio').AsSmallInt := iAnio;
    DM1.ispPro.ParamByName('Periodo').AsSmallInt := iMes;
    DM1.ispPro.ParamByName('FechaAct').AsDateTime := Date+Time;
    DM1.ispPro.ParamByName('UserAct').AsString := oUser.LOGIN;

    DM1.ispPro.ExecProc;
}
    frmAvance.Percent := 100;
    frmAvance.Msg := 'Terminado';
    frmAvance.Finish (True);
    frmAvance.Close;

    DM1.Commit;

    DM1.Start;
      oEmp.ProcesandoCierre := False;
    DM1.Commit;


  iRes := 0;
  if (Date > oEmp.FechaFinPeriodo) then begin
    frmMsg.ClearAll;
    frmMsg.Style := smTitle;
    frmMsg.AddMsg('El proceso de Cierre Mensual ha terminado!!!');
    frmMsg.AddMsg('');
    frmMsg.Style := smDefault;
    frmMsg.AddMsg('Al iniciar nuevo período, el sistema permitirá capturar documentos del nuevo mes que inicia.');
    frmMsg.Question := '¿Deseas Iniciar el nuevo período?';
    frmMsg.ShowAsk := True;
    frmMsg.ShowCancel := True;
    iRes := frmMsg.ShowModal;

    if iRes = mrOk then IniciarPeriodo;
  end else begin
    frmMsg.ClearAll;
    frmMsg.Style := smTitle;
    frmMsg.AddMsg('El proceso de Acumulación ha terminado!!!');
    frmMsg.AddMsg('');
    frmMsg.Style := smDefault;
    frmMsg.AddMsg('Como todavía no cambiamos de período, sólo se procesaron los acumulados.');
    frmMsg.ShowAsk := False;
    frmMsg.ShowCancel := False;
    iRes := frmMsg.ShowModal;
    Screen.Cursor := crDefault;
    exit;
  end;

    Screen.Cursor := crDefault;

  if iRes = mrOk then begin
    frmMsg.ClearAll;
    frmMsg.Style := smTitle;
    frmMsg.AddMsg('El proceso de Cierre Mensual y el inicio del período ha terminado exitosamente!!!');
    frmMsg.AddMsg('Inicio del nuevo período: ' + ESBDates.Date2Str(oEmp.FechaIniPeriodo));
    frmMsg.AddMsg('');
    frmMsg.Style := smDefault;
    frmMsg.AddMsg('Ya se puede iniciar operaciones normales del MBA');
    frmMsg.ShowAsk := False;
    frmMsg.ShowCancel := False;
    iRes := frmMsg.ShowModal;
  end else begin
    frmMsg.ClearAll;
    frmMsg.Style := smUrgent;
    frmMsg.AddMsg('Se hizo el cierre de Mes pero el inicio de periodo NO se realizó. El MBA continuará trabajando con el periodo anterior!');
    frmMsg.AddMsg('');
    frmMsg.Style := smDefault;
    frmMsg.AddMsg('El período actual inició el:  ' + ESBDates.Date2Str(oEmp.FechaIniPeriodo));
    frmMsg.AddMsg('Posteriormente se podrá realizar de nuevo el cierre del mes y el inicio del período.');
    frmMsg.AddMsg('');
    frmMsg.Style := smDefault;
    frmMsg.AddMsg('Ya se puede continuar con las operaciones normales del MBA');
    frmMsg.ShowAsk := False;
    frmMsg.ShowCancel := False;
    iRes := frmMsg.ShowModal;

  end;

end;
procedure TfraCierreMes.IniciarPeriodo;
var tAnio,tMes:String;
    iAnio,iMes,iDia,iRes,iDias:Integer;
    xFechaIni,xFechaFin:TDatetime;
begin

  oEmp.FechaIniPeriodo := oEmp.FechaFinPeriodo + 1;
  ESBDates.OptDecodeDateI(oEmp.FechaIniPeriodo,iAnio,iMes,iDia);

  oEmp.PeriodoActual := iMes;
  iDias := ESBDates.DaysInMonth(oEmp.FechaIniPeriodo);
  oEmp.FechaFinPeriodo := ESBDates.OptEncodeDateI(iAnio,iMes,iDias);

  oEmp.IniciarPeriodo;

// Calculando existencias para el nuevo periodo
{
// 10/Ene/2010
// EL nuevo calculo de existencia es Existencia Inicial Periodo +
// entradas Periodo - Salidas periodo
// Por eso cancelé este parte del cierre.
// LAs existencias iniciales SOLO se incializaran con el conteo fisico a actual

    frmAvance.Show;
    frmAvance.Update;
    frmAvance.Percent := 70;
    frmAvance.Msg := 'Inicializando existencias del periodo actual ...';

    DM1.ispPro.Unprepare;
    DM1.ispPro.AutoDefineParams := True;
    DM1.ispPro.StoredProcName := 'MBA10016_U08';
    DM1.ispPro.Prepare;

    DM1.ispPro.ParamByName('FechaAct').AsDateTime := Date+Time;
    DM1.ispPro.ParamByName('UserAct').AsString := oUser.LOGIN;

    DM1.ispPro.ExecProc;
}
    frmAvance.Percent := 100;
    frmAvance.Msg := 'Terminado';
    frmAvance.Finish (True);
    frmAvance.Close;


end;

end.
