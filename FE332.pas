unit FE332;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzEdit, ExtCtrls, RzPanel, RzLabel,IniFiles,
  LibApp, xmldom, XMLIntf, msxmldom, XMLDoc, SynEdit, RzTabs, StringLib,
  SynEditHighlighter, SynHighlighterPython, RzButton, OleCtrls, VCIF1Lib_TLB,
  StrMan, FileOp, SynHighlighterMsg, SynHighlighterXML, RzRadChk, FileCtrl,
  RzFilSys, RzStatus, ImgList, ComCtrls, RzListVw, RzShellCtrls;

type
  TPartida = Record
    ClaveProdServ    : String;
    NoIdentificacion : String;
    Cantidad         : Double;
    ClaveUnidad      : String;
    Unidad           : String;
    Descripcion      : String;
    ValorUnitario    : Double;
    Importe          : Double;
    PorcIVA          : Double;
    PorcIEPS         : Double;
    PorcRetIVA       : Double;
    IVA              : Double;
    IEPS             : Double;
    RetIVA           : Double;
    NumeroPedimento  : String;
    FechaPedimento   : TDatetime;
    Aduana           : String;
end;

type
  TTipoDocs = (tdFactura,tdNotaCredito,tdPago,tdCancFactura,tdCancNotaCredito,tdCancPago);

type
  TfrmFE332 = class(TForm)
    XMLDoc: TXMLDocument;
    RzPageControl1: TRzPageControl;
    tshYAML: TRzTabSheet;
    tshFormato: TRzTabSheet;
    SynPythonSyn1: TSynPythonSyn;
    RzPanel2: TRzPanel;
    lblDocumento: TRzLabel;
    F1: TF1Book;
    Timer1: TTimer;
    fo1: TFileOperation;
    tshDiagnostic: TRzTabSheet;
    tshXML: TRzTabSheet;
    tshStatus: TRzTabSheet;
    Syn2: TSynEdit;
    SynXMLSyn1: TSynXMLSyn;
    SynMsgSyn1: TSynMsgSyn;
    Syn1: TSynEdit;
    lblArchivoYAML: TRzLabel;
    RzGroupBox1: TRzGroupBox;
    chkWordWrap1: TRzCheckBox;
    lblArchivoXML: TRzLabel;
    RzGroupBox2: TRzGroupBox;
    chkWordWrap2: TRzCheckBox;
    Syn3: TSynEdit;
    lblArchivoTXT: TRzLabel;
    RzGroupBox3: TRzGroupBox;
    chkWordWrap3: TRzCheckBox;
    RzPanel1: TRzPanel;
    ImageList2: TImageList;
    grpYaml: TRzGroupBox;
    staYaml: TRzGlyphStatus;
    grpXML: TRzGroupBox;
    staXML: TRzGlyphStatus;
    grpError: TRzGroupBox;
    staError: TRzGlyphStatus;
    grpProcessing: TRzGroupBox;
    staProcessing: TRzGlyphStatus;
    grpPDF: TRzGroupBox;
    staPDF: TRzGlyphStatus;
    flb2: TRzShellList;
    btnRefresh: TRzBitBtn;
    flb1: TRzShellList;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GuardarFormato(AFileName:String);
    procedure GetInfo;
    procedure EsperarXML;
    function  LoadXMLFile(AFileName:String = ''):Integer;
    function  CheckXMLFile:Integer;
    function  CheckCancelFile(AFileName:String):Integer;
    function  GetUUIDFromCancelFile(AFileName:String):String;
    procedure ProcessNode(Node:IXMLNode);
    function GetSerie(ATipo_Docto:Integer):String;
    function GetAttributeName(ATexto:String):String;
    function DataInExists:Integer;
    function CargarFormato(AFormato:String):Integer;
    function InsertPartida:Integer;
    function IsComment(ATexto:String):Integer;
    function IsAttribute(ATexto:String):Integer;
    function HasComment(ATexto:String):Integer;
    function Genera_NotaCredito: Integer;
    function Genera_CancelaFactura: Integer;
    function Genera_CancelaNotaCredito: Integer;
    procedure btnHideClick(Sender: TObject);
    procedure LoadXLS(AFile:String);
    function Inicializar: Integer;
    function Grabar_Factura: Integer;
    function Grabar_NotaCredito:Integer;
    function Grabar_Cancelacion:Integer;
    function Verificar_Factura: Integer;
    function Preparar(ASheet:Integer;ALimpiar:Boolean = True): Integer;
    function Generar(ASheet:Integer = 1;AAgregarLinea:Boolean = True): Integer;
    function Copiar_ElementoLista(ASheet:Integer): Integer;
    procedure Limpiar_AreaProceso;
    function GrabarIn:Integer;
    function MoverPDF:Integer;
    procedure ClearAll;
    procedure Timer1Timer(Sender: TObject);
    function DataOutExists:Integer;
    function DataOut2017Exists:Integer;
    procedure FormDestroy(Sender: TObject);
    procedure LoadFiles;
    procedure ActualizarStatus;
    procedure btnLeerClick(Sender: TObject);
    procedure chkWordWrap1Click(Sender: TObject);
    procedure chkWordWrap2Click(Sender: TObject);
    procedure chkWordWrap3Click(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FErrorMsg: TStringList;
    FError: Integer;
    FLineSelected:String;
    FPartidasCount: Integer;
    FGenerando: Boolean;
    FEstado: String;
    FTipoDocto: String;
    FSerie: String;
    FFolio: String;
    FNombreCFDI: String;
    FFecha: TDateTime;
    FFechaStr: String;
    FSubTotal: Double;
    FIVA: Double;
    FTotal: Double;
    FCodCte: String;
    FDir: String;
    FArchivoXML: String;
    FArchivoPDF: String;
    FArchivoYAML: String;
    FArchivoTXT: String;
    FemRFC: String;
    FreRFC: String;
    FTipoRelacion: String;
    FUUID: String;
    FRelUUID: String;
    FDocumentoNombre: String;
    FFormato_Factura: String;
    FFormato_NotaCredito: String;
    FFormato_Pago: String;
    FFormato_CancFactura: String;
    FFormato_CancNotaCredito: String;
    FFormato_CancPago: String;
    FDocumento : TTipoDocs;
    FDirFmt:String;
    FDirCFDI:String;
    FDirCFDI2017:String;
    FDirDataYaml:String;
    FDirDataIn:String;
    FDirDataOut:String;
    FDirDataOut2017:String;
    FDirDataPDF:String;
    FDirDataDiagnostic:String;
    FDirDataProcessing:String;
    FXMLOk: Boolean;
    FVersion:String;
    FFechaTimbrado:String;
    FSelloCFD:String;
    FSelloSAT:String;
    FNoCertificado:String;
    FNoCertificadoSAT:String;
    FCadenaOriginalTimbre:String;
    FEnca:String;
    FDet:String;
    FPie:String;
    FCancel:String;
    FNCrEnca:String;
    FNCrDet:String;
    FNCrPie:String;
    iNode : IXMLNode;
    miType:SmallInt;
    miIntentos:Integer;
    procedure SetTipoDocto(ATipoDocto:String);
    procedure SetDirCFDI(ADirCFDI:String);
    procedure SetDirCFDI2017(ADirCFDI2017:String);
    procedure SetDirFmt(ADirFmt:String);
    procedure SetSerie(ASerie:String);
    procedure SetFolio(AFolio:String);
    procedure SetFormato_Factura(AFormato:String);
    procedure SetFormato_NotaCredito(AFormato:String);
    procedure SetFormato_Pago(AFormato:String);
    procedure SetFormato_CancFactura(AFormato:String);
    procedure SetFormato_CancNotaCredito(AFormato:String);
    procedure SetFormato_CancPago(AFormato:String);
  public
    { Public declarations }
    Partida:TPartida;
//    feDatos: TRecDatos;
    procedure SetVariable(AVariable:String; AValor:String);

    property Formato_Factura: String read FFormato_Factura write SetFormato_Factura;
    property Formato_NotaCredito: String read FFormato_NotaCredito write SetFormato_NotaCredito;
    property Formato_Pago: String read FFormato_Pago write SetFormato_Pago;
    property Formato_CancelaFactura: String read FFormato_CancFactura write SetFormato_CancFactura;
    property Formato_CancelaNotaCredito: String read FFormato_CancNotaCredito write SetFormato_CancNotaCredito;
    property Formato_CancelaPago: String read FFormato_CancPago write SetFormato_CancPago;
    property CarpetaFormatos: String read FDirFmt write SetDirFmt;
    property CarpetaCFDI: String read FDirCFDI write SetDirCFDI;
    property CarpetaDataYaml: String read FDirDataYaml;
    property CarpetaDataIn: String read FDirDataIn;
    property CarpetaDataOut: String read FDirDataOut;
    property CarpetaDataDiagnostic: String read FDirDataDiagnostic;
    property CarpetaDataProcessing: String read FDirDataProcessing;
    property CarpetaCFDI2017: String read FDirDataOut2017 write SetDirCFDI2017;
    property CarpetaDataPDF: String read FDirDataPDF;
    property TipoDocto: String read FTipoDocto write SetTipoDocto;
    property Serie: String read FSerie write SetSerie;
    property Folio: String read FFolio write SetFolio;
    property ArchivoXML:String  read FArchivoXML;
    property ArchivoPDF:String  read FArchivoPDF;
    property ArchivoYAML:String  read FArchivoYAML;
    property ArchivoTXT:String  read FArchivoTXT;
    property NombreCFDI: String read FNombreCFDI;
    property Fecha: TDateTime read FFecha write FFecha;
    property Total: Double read FTotal write FTotal;
    property UUID: String read FUUID write FUUID;
    property emRFC: String read FemRFC write FemRFC;
    property reRFC: String read FreRFC write FreRFC;
    property Generando: Boolean read FGenerando;
    property Estado: String read FEstado;
    property DocumentoNombre: String read FDocumentoNombre;
    property Error: Integer read FError;
    property ErrorMsg:TStringList read FErrorMsg;
    property XMLOk: Boolean read FXMLOk;
    property Version:String  read FVersion;
    property FechaTimbrado:String  read FFechaTimbrado;
    property SelloCFD:String  read FSelloCFD;
    property SelloSAT:String  read FSelloSAT;
    property NoCertificado:String  read FNoCertificado;
    property NoCertificadoSAT:String  read FNoCertificadoSAT;
    property CadenaOriginalTimbre:String  read FCadenaOriginalTimbre;

{    property ClaveProdServ:String read FClaveProdServ write FClaveProdServ;
    property NoIdentificacion:String read FNoIdentificacion write FNoIdentificacion;
    property Cantidad:Double read FCantidad write FCantidad;
    property ClaveUnidad:String read FClaveUnidad write FClaveUnidad;
    property Unidad:String read FUnidad write FUnidad;
    property Descripcion:String read FDescripcion write FDescripcion;
    property ValorUnitario:Double read FValorUnitario write FValorUnitario;
    property Importe:Double read FImporte write FImporte;
    property Descuento:Double read FDescuento write FDescuento;
    property Pedimento:String read FPedimento write FPedimento;
    property FechaPedimento:TDateTime read FFechaPedimento write FFechaPedimento;
    property Aduana:String read FAduana write FAduana;
    }
  end;

const
  mtEndOfFile:String = '---';

var
  frmFE332: TfrmFE332;

implementation

{$R *.dfm}


{$REGION '  Eventos Principales Unit '}
//------------------------------------------------------------------------------
//  Procedures interfase usuario y controles VCL
//------------------------------------------------------------------------------
// Form
procedure TfrmFE332.FormCreate(Sender: TObject);
var tFile,tDir:String;
begin
//
  FErrorMsg := TStringList.Create;
  FError := 0;

  FPartidasCount := 0;
  miIntentos := 0;
end;

procedure TfrmFE332.FormDestroy(Sender: TObject);
begin
  FreeandNil(FErrorMsg);

end;

procedure TfrmFE332.FormShow(Sender: TObject);
begin
  LoadFiles;
end;

procedure TfrmFE332.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action := caHide;

end;
{$ENDREGION}

{$REGION '  Procesos Principales... '}
//------------------------------------------------------------------------------
//  Procedures procesos principales
//------------------------------------------------------------------------------

procedure TfrmFE332.LoadXLS(AFile:String);
var tFile,tDir:String;
    i:Integer;
begin
    F1.Read (AFile,miType);

    for i:= 1 to 2 do begin
      F1.Sheet :=i;
      F1.AllowDelete := False;
      F1.ShowEditBar := True;
      F1.Modified := False;
      F1.ShowZeroValues := True;
    end;

    F1.Sheet := 1;
    F1.ShowTabs := F1TabsTop;
end;

procedure TfrmFE332.btnHideClick(Sender: TObject);
begin
//
end;

procedure TfrmFE332.btnLeerClick(Sender: TObject);
begin
  LoadFiles;
end;

procedure TfrmFE332.btnRefreshClick(Sender: TObject);
begin
  ActualizarStatus;
end;

function TfrmFE332.CargarFormato(AFormato:String):Integer;
var
  t,t1,t2,AFormato2:String;
  iPos:Integer;
begin
  if not FileExists(AFormato) then begin
    FError := 1;
    FErrorMsg.Add('No existe el archivo de formato: ' + AFormato);
    FErrorMsg.Add('Favor de avisar al area de Soporte de Sistemas');
    exit;
  end;

  LoadXls(AFormato);

  t := UpperCase(AFormato);
  iPos := Pos('XLS',t);
  if iPos > 0 then begin
    AFormato2 := Copy(t,1,iPos-1)+'YAML';
  end else begin
    AFormato2 := AFormato;
  end;

  Syn1.Lines.LoadFromFile(AFormato2);

  tshFormato.Caption := AFormato;

end;

function TfrmFE332.CheckCancelFile(AFileName:String):Integer;
var
  iLine,iCount,i,iPos:Integer;
begin
  Result := 0;
  if FileExists(AFileName) then begin
    Result := 0;
  end else begin
    Result := 1;
  end;
end;

function TfrmFE332.CheckXMLFile:Integer;
var
  iLine,iCount,i,iPos:Integer;
begin
  Result := 0;
  if FileExists(FDirDataOut+FArchivoXML) then begin
    Result := 0;
    FXMLOk := True;
  end else begin
    Result := 1;
    FXMLOk := False;
  end;
end;

function TfrmFE332.DataInExists:Integer;
var
  iLine,iCount,i,iPos:Integer;
begin
  Result := 0;
  if DirectoryExists(FDirDataIn) then begin
    Result :=0;
  end else begin
    Result :=1;
  end;
end;

function TfrmFE332.DataOutExists:Integer;
var
  iLine,iCount,i,iPos:Integer;
begin
  Result := 0;
  if DirectoryExists(FDirDataOut) then begin
    Result :=0;
  end else begin
    Result :=1;
  end;
end;

function TfrmFE332.DataOut2017Exists:Integer;
var
  iLine,iCount,i,iPos:Integer;
begin
  Result := 0;
  if DirectoryExists(FDirDataOut2017) then begin
    Result :=0;
  end else begin
    Result :=1;
  end;
end;

function TfrmFE332.GrabarIn:Integer;
var
  iLine,iCount,i,iPos:Integer;
  tName,tFile,tFile2,tFolio:String;
begin
  Result := 0;
  FError := 0;
  if DataInExists = 1 then begin
    FErrorMsg.Add('No existe la Carpeta "In" del conector!!');
    FError := 1;
    Result := FError;
    exit;
  end;

  tFolio := sm.PadLeft(FFolio,9,'0');
  tFolio := sm.Last(tFolio,9);
//  tName := FTipoDocto + '_' + FSerie + tFolio;
  tName := FTipoDocto + '-' + FSerie + tFolio;
  FArchivoXML := tName + '.xml';
  FArchivoPDF := tName + '.pdf';
  FArchivoYAML := tName + '.yaml';
  FArchivoTXT := tName + '.txt';

  tFile := sm.EnsureLast('\',FDirDataIn) + FArchivoYAML;
  tFile2:= sm.EnsureLast('\',FDirDataYaml) + FArchivoYAML;
//  Syn1.Text := UTF8Encode(Syn1.Text);
// Lo grabo en el In para ser procesado por mercurio
  Syn1.Lines.SaveToFile(tFile);

// Lo grabo en el Yaml para tener una copia ORIGINAL del archivo generado por el MBA
// El mercurio lo transforma a XML y pierde el original yaml
  Syn1.Lines.SaveToFile(tFile2);

//--- Quitar el comentario de abajo... es para pruebas y no tener que esperar...
  EsperarXML;

  LoadFiles;

end;


procedure TfrmFE332.EsperarXML;
var
  iSt,iCount:Integer;
  tLine:String;
begin

  FXMLOk := False;
  Timer1.Enabled := True;  //Cada 5 segundos incremento los intentos

  miIntentos := 0;
  while True do begin
    iSt := CheckXMLFile;
    if iSt = 0 then begin
      FXMLOk := True;
      break;
    end;
    // En el evento timer incremento los intentos
    Application.ProcessMessages;
    if miIntentos > 3 then break;
  end;

end;

{$ENDREGION}

{$REGION '  Facturas ....  '}
function TfrmFE332.Inicializar: Integer;
begin
  FErrorMsg.Clear;
  FError := 0;
  FGenerando := True;
  FEstado := 'Iniciando...';
  FXMLOk := False;

  FPartidasCount := 0;

  Syn1.Lines.Clear;


end;

function TfrmFE332.Grabar_Factura:Integer;
begin

  GrabarIn;

  Result := FError;

end;

function TfrmFE332.Grabar_NotaCredito:Integer;
begin

  GrabarIn;

  Result := FError;

end;

function TfrmFE332.Grabar_Cancelacion:Integer;
begin

  GrabarIn;

  Result := FError;

end;

function TfrmFE332.Verificar_Factura:Integer;
begin

  GrabarIn;

  Result := FError;

end;

function TfrmFE332.MoverPDF:Integer;
begin
  FError := 0;

  if not DirectoryExists(FDirDataOut) then begin
    FError := 1;
    exit;
  end;
  if not DirectoryExists(FDirDataPdf) then begin
    FError := 2;
    exit;
  end;
  fo1.FilesFrom := FDirDataOut+ArchivoPDF;
  fo1.FilesTo   := FDirDataPdf+ArchivoPDF;
  fo1.Operation := foMove;
  fo1.Execute;


  Result := FError;

end;

function TfrmFE332.Preparar(ASheet:Integer;ALimpiar:Boolean = True): Integer;
var
  iRow,iCount,iSht:Integer;
  tLine:String;
begin
  iSht := ASheet;
  if ALimpiar then
    Limpiar_AreaProceso;

  for iRow:= 1 to F1.MaxRow do begin
    tLine := F1.TextSRC[iSht,iRow,2];
    F1.TextSRC[1,iRow,2] := tLine;
    if (sm.IsEmpty(F1.TextSRC[iSht,iRow+1,2]) and
       sm.IsEmpty(F1.TextSRC[iSht,iRow+2,2])) then break;
  end;

end;

function TfrmFE332.Copiar_ElementoLista(ASheet:Integer): Integer;
var
  iRow,iRx,iPos,iSht:Integer;
  tLine:String;
begin
  iSht := ASheet;

  Limpiar_AreaProceso;

//Localizar el marcador de inicio de elemento de lista: el guion (-)
  iRx := 0;
  for iRow:= 1 to F1.MaxRow do begin
    tLine := F1.TextSRC[iSht,iRow,2];
    iPos := sm.Pos('-',tLine);
    if iPos > 0  then begin
      iRx := iRow;
      break;
    end;
    if (sm.IsEmpty(F1.TextSRC[iSht,iRow+1,2]) and
       sm.IsEmpty(F1.TextSRC[iSht,iRow+2,2])) then break;
  end;

  if iRx = 0 then begin
    // No encontre el indicador de elemento lista
    Result := 1;
    exit;
  end;

  for iRow:= 1 to F1.MaxRow do begin
    tLine := F1.TextSRC[iSht,iRx,2];
    F1.TextSRC[1,iRow,2] := tLine;
    if sm.IsEmpty(F1.TextSRC[iSht,iRx+1,2]) then break;
    iRx := iRx + 1;
  end;

end;

function TfrmFE332.Generar(ASheet:Integer = 1;AAgregarLinea:Boolean = True): Integer;
var
  iRow,iCount,iSht:Integer;
  tLine:String;
begin
  Screen.Cursor := crHourglass;
  iSht := ASheet;
  iCount := 0;

  for iRow:= 1 to F1.MaxRow do begin
    tLine := F1.TextSRC[iSht,iRow,2];
    tLine := UTF8Encode(tLine);
    Syn1.Lines.Add(tLine);
    iCount := iCount + 1;

    if (sm.IsEmpty(F1.TextSRC[iSht,iRow+1,2]) and
       sm.IsEmpty(F1.TextSRC[iSht,iRow+2,2])) then break;
  end;
  //Agregar una linea al final de cada seccion
  if AAgregarLinea then
    Syn1.Lines.Add('');

//  ShowMessage('Se on ' + IntToStr(iCount) + ' articulos!');
  Screen.Cursor := crDefault;

end;

function TfrmFE332.InsertPartida:Integer;
var
  i,iErr,ip,iCount:Integer;
  t,tAux,tValor:String;
// Objetivo: Determinar si la linea es un comentario
// Result: Regresa la posicion del inicio del comentario. 0=La linea NO esta comentada
begin
  iErr := 0;
  if sm.IsEmpty(Partida.ClaveProdServ)    then iErr := iErr + 1;
  if sm.IsEmpty(Partida.NoIdentificacion) then iErr := iErr + 1;
  if sm.IsEmpty(Partida.ClaveUnidad)      then iErr := iErr + 1;
  if sm.IsEmpty(Partida.Unidad)           then iErr := iErr + 1;
  if sm.IsEmpty(Partida.Descripcion)      then iErr := iErr + 1;
  if (Partida.Cantidad) <= 0      then iErr := iErr + 1;
  if (Partida.ValorUnitario) <= 0 then iErr := iErr + 1;
  if (Partida.Importe) <= 0       then iErr := iErr + 1;

  if FPartidasCount = 0 then
    Preparar(5) //Hoja: Deta01
  else
    Copiar_ElementoLista(5); //Hoja: Deta02

    SetVariable('vClaveProdServ',Partida.ClaveProdServ);
    SetVariable('vNoIdentificacion',Partida.NoIdentificacion);
    t := sm.StrFloat(Partida.Cantidad,'0.00');
    SetVariable('vCantidad',t);
    SetVariable('vClaveUnidad',Partida.ClaveUnidad);
    SetVariable('vUnidad',Partida.Unidad);
//    tAux := sm.ReplaceIC('"',#39+#39,Partida.Descripcion);
    tAux := sm.purge(Partida.Descripcion,['"']);
    SetVariable('vDescripcion',tAux);
//    SetVariable('vDescripcion',Partida.Descripcion);
    t := sm.StrFloat(Partida.ValorUnitario,'0.00');
    SetVariable('vValorUnitario',t);
    t := sm.StrFloat(Partida.Importe,'0.00');
    SetVariable('vImporte',t);
    Generar;

    if Partida.IVA > 0 then begin
      Preparar(6); //Hoja: Deta02
      t := sm.StrFloat(Partida.Importe,'0.00');
      SetVariable('vTrasladoBase',t);
      SetVariable('vTrasladoImpuesto','002');
      SetVariable('vTrasladoTipoFactor','Tasa');
      tAux := sm.StrFloat(Partida.PorcIVA/100,'0.000000');
      SetVariable('vTrasladoTasaOCuota',tAux);
      t := sm.StrFloat(Partida.IVA,'0.00');
      SetVariable('vTrasladoImporte',t);
      Generar;
    end;
    if Partida.IEPS > 0 then begin
      Copiar_ElementoLista(6); //Hoja: Deta02
      t := sm.StrFloat(Partida.Importe,'0.00');
      SetVariable('vTrasladoBase',t);
      SetVariable('vTrasladoImpuesto','003');
      SetVariable('vTrasladoTipoFactor','Tasa');
      tAux := sm.StrFloat(Partida.PorcIEPS/100,'0.000000');
      SetVariable('vTrasladoTasaOCuota',tAux);
      t := sm.StrFloat(Partida.IEPS,'0.00');
      SetVariable('vTrasladoImporte',t);
      Generar;
    end;
    if Partida.RetIVA > 0 then begin
      Preparar(7); //Hoja: Deta02
      t := sm.StrFloat(Partida.Importe,'0.00');
      SetVariable('vRetencionBase',t);
      SetVariable('vRetencionImpuesto','002');
      SetVariable('vRetencionTipoFactor','Tasa');
      tAux := sm.StrFloat(Partida.PorcRetIVA/100,'0.000000');
      SetVariable('vRetencionTasaOCuota',tAux);
      t := sm.StrFloat(Partida.RetIVA,'0.00');
      SetVariable('vRetencionImporte',t);
      Generar;
    end;
    if length(Partida.NumeroPedimento) > 0 then begin
      Preparar(8); //Hoja: Deta02
      SetVariable('vNumeroPedimento',Partida.NumeroPedimento);
      Generar;
    end;


  FPartidasCount := FPartidasCount + 1;
end;


function TfrmFE332.Genera_CancelaFactura: Integer;
begin
  FErrorMsg.Clear;
  FError := 0;
  FGenerando := True;
  FDocumento := tdCancFactura;
  FEstado := 'Iniciando...';

  if sm.IsEmpty(FFormato_CancFactura) then begin
    FErrorMsg.Add('No esta inicializado el formato de la Cancelacion de Factura');
    FError := 1;
    Result := FError;
    exit;
  end;

  CargarFormato(FFormato_CancFactura);


end;

function TfrmFE332.Genera_CancelaNotaCredito: Integer;
begin
  FErrorMsg.Clear;
  FError := 0;
  FGenerando := True;
  FDocumento := tdCancNotaCredito;
  FEstado := 'Iniciando...';

  if sm.IsEmpty(FFormato_CancNotaCredito) then begin
    FErrorMsg.Add('No esta inicializado el formato de la Cancelacion de Nota de Credito');
    FError := 1;
    Result := FError;
    exit;
  end;

  CargarFormato(FFormato_CancNotaCredito);
end;


{$ENDREGION}

{$REGION '  Nota de Credito ....  '}

function TfrmFE332.Genera_NotaCredito: Integer;
begin
  FErrorMsg.Clear;
  FError := 0;
  FGenerando := True;
  FDocumentoNombre := 'Nota de Credito';
  FDocumento := tdNotaCredito;
  FEstado := 'Iniciando...';

  if sm.IsEmpty(FFormato_NotaCredito) then begin
    FErrorMsg.Add('No esta inicializado el formato de la Nota de Credito');
    FError := 1;
    Result := FError;
    exit;
  end;

  CargarFormato(FFormato_NotaCredito);
end;
{$ENDREGION}

{$REGION '  Rutinas de Soporte'}
procedure TfrmFE332.ClearAll;
begin
  Limpiar_AreaProceso;
  Syn1.Lines.Clear;
end;
procedure TfrmFE332.Limpiar_AreaProceso;
var
  iSht:Integer;
begin
  iSht := F1.Sheet;
  F1.Sheet := 1;

  F1.ClearRange(1,1,F1.MaxRow,10,F1ClearValues);

  F1.Sheet := iSht;

end;

function TfrmFE332.GetAttributeName(ATexto:String):String;
begin
//
end;


function TfrmFE332.GetSerie(ATipo_Docto:Integer):String;
var
  tSerie:String;
begin
  tSerie := '';
  if ATipo_Docto = 1   then tSerie := 'A';
  if ATipo_Docto = 107 then tSerie := 'A';

  Result := tSerie;

end;

function TfrmFE332.GetUUIDFromCancelFile(AFileName:String):String;
var
  iLine,iCount,i,iPos:Integer;
  AVar,tLine:string;
  cSep:Char;
begin
  Result := '';
  if Not FileExists(AFileName) then begin
    Result := '';
    exit;
  end;

  cSep := '|';
  AVar := 'uuid';
  syn1.Lines.LoadFromFile(AFileName);
  iCount := syn1.Lines.Count;
  for i := 0 to iCount - 1 do begin
    iPos := POS(AVar,syn1.Lines.Strings[i]);
    if (iPos > 0) then begin
      Result := sm.NthWord(2,syn1.Lines.Strings[i],[cSep]);
      break;
    end;

  end;
  syn1.Lines.Clear;

end;

procedure TfrmFE332.GuardarFormato(AFileName:String);
var
  iLine,iCount,i,iPos:Integer;
begin
  if FileExists(FDirDataOut+AFileName) then begin
    ShowMessage('El archivo '+ FDirDataOut+AFileName + ' ya existe!'+#10+#13+'El documento electrónico YA fue generado previamente.');
    exit;
  end;

  syn1.Lines.SaveToFile(FDirDataIn+AFileName);

end;

function TfrmFE332.HasComment(ATexto:String):Integer;
// Objetivo: Determinar si la linea tien un comentario en alguna parte
// Result: Regresa la posicion del inicio del comentario. 0=La linea NO tiene ningun comentario
begin
  Result := sm.Pos('#',ATexto,1);
end;

function TfrmFE332.IsAttribute(ATexto:String):Integer;
var
  p1,p2:Integer;
// Objetivo: Determinar si la linea es un comentario
// Result: Regresa la posicion del inicio del comentario. 0=La linea NO esta comentada
begin
  p1 := sm.PosBefore(['$'..'~'],ATexto,['#']);
  p2 := sm.PosBefore([':'],ATexto,['#','"']);
  if (p1>0) and (p2>0) then
    Result := p1
  else
    Result :=0;
end;

function TfrmFE332.IsComment(ATexto:String):Integer;
// Objetivo: Determinar si la linea es un comentario
// Result: Regresa la posicion del inicio del comentario. 0=La linea NO esta comentada
begin
  Result := sm.PosBefore(['#'],ATexto,['$'..'~']);
end;

function TfrmFE332.LoadXMLFile(AFileName:String = ''):Integer;
var
  iLine,iCount,i,iPos:Integer;
begin
  Result := 0;
  if length(AFileName) <= 0 then AFileName := FArchivoXML;

  //Checa en la carpeta OUT actual (mercurio): CFDI v3.3 o mayor
  if FileExists(FDirDataOut+AFileName) then begin
    xmlDoc.FileName := FDirDataOut+AFileName;
    xmlDoc.Active := true;
    Result := 0;
    Syn2.Lines.LoadFromFile(FDirDataOut+AFileName);
    exit;
  end;

  //Checa en la carpeta OUT del 2017: CFDI v3.2 o menor
  if FileExists(FDirDataOut2017+AFileName) then begin
    xmlDoc.FileName := FDirDataOut2017+AFileName;
    xmlDoc.Active := true;
    Result := 0;
    Syn2.Lines.LoadFromFile(FDirDataOut2017+AFileName);
    exit;
  end;

  //ShowMessage('No existe el archivo "'+FDirDataOut+AFileName+'"');
  Result := 1;
end;

procedure TfrmFE332.ProcessNode(Node:IXMLNode);
var
    v: System.OleVariant;
    iNode2 : IXMLNode;
begin
  if Node = nil then exit;
//  syn1.Lines.add(Node.NodeName);
  if Node.NodeName = 'cfdi:Emisor' then begin
    v := Node.Attributes['Rfc'];
    if not VarIsNull(v) then
      FemRFC := v
    else
      FemRFC := Node.Attributes['rfc'];
  end;
  if Node.NodeName = 'cfdi:Receptor' then begin
    v := Node.Attributes['Rfc'];
    if not VarIsNull(v) then
      FreRFC := v
    else
      FreRFC := Node.Attributes['rfc'];
  end;
  if Node.NodeName = 'tfd:TimbreFiscalDigital' then begin
    v := Node.Attributes['Version'];
    if not VarIsNull(v) then
      FVersion := v
    else
      FVersion := Node.Attributes['version'];

    FUUID    := Node.Attributes['UUID'];
    FFechaTimbrado := Node.Attributes['FechaTimbrado'];

    v := Node.Attributes['SelloCFD'];
    if not VarIsNull(v) then
      FSelloCFD := v
    else
      FSelloCFD := Node.Attributes['selloCFD'];

    v := Node.Attributes['SelloSAT'];
    if not VarIsNull(v) then
      FSelloSAT := v
    else
      FSelloSAT := Node.Attributes['selloSAT'];

    v := Node.Attributes['NoCertificadoSAT'];
    if not VarIsNull(v) then
      FNoCertificadoSAT := v
    else
      FNoCertificadoSAT := Node.Attributes['noCertificadoSAT'];
  end;
{  if Node.NodeName = 'cfdi:Comprobante' then begin
    feDatos.Serie := Node.Attributes['serie'];
    feDatos.Folio := Node.Attributes['folio'];
    feDatos.SubTotal := Node.Attributes['subTotal'];
    feDatos.Total := Node.Attributes['total'];
  end;
}
  if (Node.NodeName = 'cfdi:Impuestos') and (Node.ParentNode.NodeName = 'cfdi:Comprobante') then begin
    v := Node.Attributes['TotalImpuestosTrasladados'];
    if not VarIsNull(v) then
      FIva := v
    else
      FIva := Node.Attributes['totalImpuestosTrasladados'];
  end;

{  if Node.NodeName = 'bfa2:Receptor' then begin
    FCodCte := Node.Attributes['noCliente'];
  end;
}
  iNode2 := Node.ChildNodes.First;
  while iNode2 <> nil do begin
    ProcessNode(iNode2);
    iNode2 := iNode2.NextSibling;
  end;

end;

procedure TfrmFE332.GetInfo;
var
  iLine,iCount,i,iPos:Integer;
  pNode : IXMLNode;
  v: System.OleVariant;
begin
  iNode := xmlDoc.DocumentElement.ChildNodes.First;
  pNode := iNode.ParentNode;
  if pNode.NodeName = 'cfdi:Comprobante' then begin
    v := pNode.Attributes['Serie'];
    if not VarIsNull(v) then
      FSerie := v
    else
      FSerie := pNode.Attributes['serie'];

    v := pNode.Attributes['Folio'];
    if not VarIsNull(v) then
      FFolio := v
    else
      FFolio := pNode.Attributes['folio'];

    v := pNode.Attributes['Fecha'];
    if not VarIsNull(v) then
      FFechaStr := v
    else
      FFechaStr := pNode.Attributes['fecha'];

    v := pNode.Attributes['SubTotal'];
    if not VarIsNull(v) then
      FSubTotal := v
    else
      FSubTotal := pNode.Attributes['subTotal'];


    v := pNode.Attributes['Total'];
    if not VarIsNull(v) then
      FTotal := v
    else
      FTotal := pNode.Attributes['total'];

    v := pNode.Attributes['NoCertificado'];
    if not VarIsNull(v) then
      FNoCertificado := v
    else
      FNoCertificado := pNode.Attributes['noCertificado'];

  end;

  try
    while iNode <> nil do begin
      ProcessNode(iNode);
      iNode := iNode.NextSibling;
    end;
    xmlDoc.Active := False;
  finally

  end;

  FCadenaOriginalTimbre := '||'+Fversion+'|'+FUUID+'|'+FFechaTimbrado+'|'+FSelloCFD+'|'+FNoCertificadoSAT+'||';
//    Freeandnil(xmlDoc);

end;

procedure TfrmFE332.SetVariable(AVariable:String;AValor:String);
var
  iRow,iCount,iSht,iPos:Integer;
  tLine,t1,t2:String;
begin



  //exit;


  iSht := 1;

  for iRow:= 1 to F1.MaxRow do begin

    tLine := F1.TextSRC[iSht,iRow,2];
    if IsComment(tLine) = 0 then begin
      iPos := Pos(AVariable,tLine);
      if iPos > 0 then begin
        t1 := Copy(tLine,1,iPos-1);
        t2 := Copy(tLine,iPos+length(AVariable));
        tLine := t1+AValor+t2;
      end;
//      tLine := sm.ReplaceWordIC(AVariable,AValor,tLine);
//      tLine := sm.ReplaceWord(AVariable,AValor,tLine);
      F1.TextSRC[iSht,iRow,2] := tLine;
    end;

    if (sm.IsEmpty(F1.TextSRC[iSht,iRow+1,2]) and
       sm.IsEmpty(F1.TextSRC[iSht,iRow+2,2])) then break;
  end;

end;

procedure TfrmFE332.Timer1Timer(Sender: TObject);
begin
  miIntentos := miIntentos + 1;
end;

{$ENDREGION}

{$REGION '  Sets y Gets de la clase'}
//---------------------------------------------------------
// Sets y Gets de la clase
//---------------------------------------------------------
procedure TfrmFE332.SetDirCFDI(ADirCFDI:String);
begin
  FDirCFDI := ADirCFDI;
  if DirectoryExists(FDirCFDI) then begin
    FError :=0;
  end else begin
    FError :=1;
    FErrorMsg.Add('No existe la carpeta "'+FDirCFDI+'"')
  end;

  FDirCFDI := sm.EnsureLast('\',FDirCFDI);
  FDirDataYaml        := FDirCFDI + 'yaml\';
  FDirDataPDF         := FDirCFDI + 'pdf\';
  FDirDataIn          := FDirCFDI + 'in\';
  FDirDataOut         := FDirCFDI + 'out\';
  FDirDataDiagnostic  := FDirCFDI + 'error\diagnostic\';
  FDirDataProcessing  := FDirCFDI + 'processing\';

end;

procedure TfrmFE332.SetDirCFDI2017(ADirCFDI2017:String);
begin
  FDirCFDI2017 := ADirCFDI2017;
  if DirectoryExists(FDirCFDI2017) then begin
    FError :=0;
  end else begin
    FError :=1;
    FErrorMsg.Add('No existe la carpeta "'+FDirCFDI2017+'"')
  end;

  FDirCFDI2017 := sm.EnsureLast('\',FDirCFDI2017);
  FDirDataOut2017     := FDirCFDI2017 + 'out\';

end;

procedure TfrmFE332.SetDirFmt(ADirFmt:String);
begin
  FDirFmt := ADirFmt;
  if DirectoryExists(FDirFmt) then begin
    FError :=0;
  end else begin
    FError :=1;
    FErrorMsg.Add('No existe la carpeta "'+FDirFmt+'"')
  end;

end;

procedure TfrmFE332.SetSerie(ASerie:String);
begin
  FSerie := ASerie;
end;
procedure TfrmFE332.SetTipoDocto(ATipoDocto:String);
begin
  FTipoDocto := ATipoDocto;
  if FTipoDocto = 'FAC' then FDocumento := tdFactura;
  if FTipoDocto = 'NCR' then FDocumento := tdNotaCredito;
  if FTipoDocto = 'PAG' then FDocumento := tdPago;
  if FTipoDocto = 'CFA' then FDocumento := tdCancFactura;
  if FTipoDocto = 'CNC' then FDocumento := tdCancNotaCredito;
  if FTipoDocto = 'CPA' then FDocumento := tdCancPago;

  if sm.IsEmpty(FFormato_Factura) then begin
    FErrorMsg.Add('No esta inicializado el formato de la factura');
    FError := 1;
  end;


end;

procedure TfrmFE332.SetFolio(AFolio:String);
begin
  FFolio := sm.PadLeft(AFolio,9,'0');
  FFolio := sm.Last(FFolio,9);
  if length(FTipoDocto) <=0 then begin
    FError:= 1;
    exit;
  end;
  if length(FSerie) <=0 then begin
    FError:= 1;
    exit;
  end;
  FNombreCFDI  := FTipoDocto + '-' + FSerie + FFolio;
  FArchivoXML  := FNombreCFDI + '.xml';
  FArchivoPDF  := FNombreCFDI + '.pdf';
  FArchivoYAML := FNombreCFDI + '.yaml';
  FArchivoTXT  := FNombreCFDI + '.txt';

  lblDocumento.Caption := FNombreCFDI;

end;
procedure TfrmFE332.SetFormato_Factura(AFormato:String);
begin
  FFormato_Factura := sm.EnsureLast('\',FDirFmt)+AFormato;
  CargarFormato(FFormato_Factura)
end;

procedure TfrmFE332.SetFormato_NotaCredito(AFormato:String);
begin
  FFormato_NotaCredito := sm.EnsureLast('\',FDirFmt)+AFormato;
  CargarFormato(FFormato_NotaCredito)
end;

procedure TfrmFE332.SetFormato_Pago(AFormato:String);
begin
  FFormato_Pago := sm.EnsureLast('\',FDirFmt)+AFormato;
  CargarFormato(FFormato_Pago)
end;

procedure TfrmFE332.SetFormato_CancFactura(AFormato:String);
begin
  FTipoDocto := 'CFA';
  FFormato_CancFactura := sm.EnsureLast('\',FDirFmt)+AFormato;
  CargarFormato(FFormato_CancFactura)
end;

procedure TfrmFE332.SetFormato_CancNotaCredito(AFormato:String);
begin
  FTipoDocto := 'CNC';
  FFormato_CancNotaCredito := sm.EnsureLast('\',FDirFmt)+AFormato;
  CargarFormato(FFormato_CancNotaCredito)
end;

procedure TfrmFE332.SetFormato_CancPago(AFormato:String);
begin
  FTipoDocto := 'CPA';
  FFormato_CancPago := sm.EnsureLast('\',FDirFmt)+AFormato;
  CargarFormato(FFormato_CancPago)
end;
{$ENDREGION}

procedure TfrmFE332.chkWordWrap1Click(Sender: TObject);
begin
  Syn1.WordWrap := chkWordWrap1.Checked;
end;


procedure TfrmFE332.chkWordWrap2Click(Sender: TObject);
begin
  Syn2.WordWrap := chkWordWrap2.Checked;
end;

procedure TfrmFE332.chkWordWrap3Click(Sender: TObject);
begin
  Syn3.WordWrap := chkWordWrap3.Checked;
end;

procedure TfrmFE332.LoadFiles;
var
  tFile:String;
begin
  tFile := FDirDataYaml+FArchivoYAML;
  staYaml.ImageIndex := 1;
  staYaml.Caption := 'No existe archivo: "'+tFile+'"!!';
  Syn1.Lines.Clear;
  lblArchivoYAML.Caption := tFile;
  if FileExists(tFile) then begin
    Syn1.Lines.LoadFromFile(tFile);
    staYaml.Caption := tFile;
    staYaml.ImageIndex := 0;
  end;

  tFile := FDirDataOut+FArchivoXML;
  staXml.ImageIndex := 1;
  staXml.ImageIndex := 1;
  staXml.Caption := 'No existe archivo: "'+tFile+'"!!';
  Syn2.Lines.Clear;
  if FileExists(tFile) then begin
    lblArchivoXML.Caption := tFile;
    Syn2.Lines.LoadFromFile(tFile);
    staXml.Caption := tFile;
    staXml.ImageIndex := 0;
  end;

  tFile := FDirDataOut2017+FArchivoXML;
  if FileExists(tFile) then begin
    lblArchivoXML.Caption := tFile;
    Syn2.Lines.LoadFromFile(tFile);
    staXml.Caption := tFile;
    staXml.ImageIndex := 0;
  end;

  tFile := FDirDataOut+FArchivoPDF;
  staPDF.ImageIndex := 1;
  staPDF.Caption := 'No existe archivo: "'+tFile+'"!!';
  if FileExists(tFile) then begin
    staPDF.Caption := tFile;
    staPDF.ImageIndex := 0;
  end;

  tFile := FDirDataDiagnostic+FArchivoTXT;
  staError.ImageIndex := 0;
  staError.Caption := 'No hay archivo de error en "'+FDirDataDiagnostic+'" !!';
  Syn3.Lines.Clear;
  if FileExists(tFile) then begin
    lblArchivoTXT.Caption := tFile;
    Syn3.Lines.LoadFromFile(tFile);
    staError.Caption := tFile;
    staError.ImageIndex := 1;
  end;

  tFile := FDirDataProcessing+FArchivoYAML;
  staProcessing.ImageIndex := 0;
  staProcessing.Caption := 'No hay archivo procesando en "'+FDirDataProcessing+'"!!';
  if FileExists(tFile) then begin
    staProcessing.Caption := tFile;
    staProcessing.ImageIndex := 1;
  end;


  flb2.Folder.PathName := FDirDataDiagnostic;
  flb2.Columns[2].Width := 0;
  flb2.Columns[3].Width := 200;
  flb2.Refresh;

  flb1.Folder.PathName := FDirDataProcessing;
  flb1.Columns[2].Width := 0;
  flb1.Columns[3].Width := 200;
  flb1.Refresh;

end;

procedure TfrmFE332.ActualizarStatus;
begin
  LoadFiles;
end;
end.
