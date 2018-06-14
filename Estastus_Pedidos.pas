 unit Estastus_Pedidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, {Grids, RXGrids,} ToolWin, Menus, ImgList, StdCtrls, {Mask,}
  RxToolEdit, ExtCtrls, RXSplit, TBXStatusBars, ActnList, DBCtrls, Db,
  DBGrids, DBTables, RxPlacemnt, StrMan, IniFiles,
  IB_UpdateBar, IB_NavigationBar, IB_Controls, IB_Components, IB_Grid,
  IB_TransactionBar, Buttons, RXCtrls, Grids, Mask, ESBDates,
  AxCtrls, OleCtrls, VCIF1Lib_TLB, TB2Dock, TB2Toolbar, TB2ExtItems, TBXExtItems, TBX,
  IB_StoredProc, RAWPrinter, LibApp, StringLib, NumWords,
  ClsParam,
  ClsCostos,
  ClsProveedor,
  ClsProducto,
  ClsFamilia,
  ClsAgente,
  ClsTablas,
  ClsMoneda, RXSpin, ProductoSearch, FamiliaSearch, TB2Item, rxCurrEdit, RzTabs,
  RzBtnEdt, RzEdit, RzCmboBx, RzCommon, RzLabel, RzButton;

//Indicar el estado del Docto al estar editandolo
type TDocState = (edInsert, edBrowse, edCancel);
type
  TfrmEstat_Pedidos = class(TForm)
    ImageList1: TImageList;
    Dock971: TTBXDock;
    Raw1: TRAWPrinter;
    tlbMain: TTBXToolbar;
    ToolbarSep972: TTBXSeparatorItem;
    tbtImprimir: TTBXItem;
    tbtCreate: TTBXItem;
    ToolbarSep977: TTBXSeparatorItem;
    Timer1: TTimer;
    tbtCancelar: TTBXItem;
    Timer2: TTimer;
    icuRep: TIB_Cursor;
    FormStorage1: TFormStorage;
    pgcMain: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    pnlTotales: TPanel;
    RxLabel3: TRxLabel;
    xcrTotal: TCurrencyEdit;
    RzFrameController1: TRzFrameController;
    RzPageControl2: TRzPageControl;
    TabSheet5: TRzTabSheet;
    TabSheet6: TRzTabSheet;
    RzLabel17: TRzLabel;
    zfeFechaIni: TRzDateTimeEdit;
    RzLabel18: TRzLabel;
    zfeFechaFin: TRzDateTimeEdit;
    btnListar: TRzBitBtn;
    tbtSalir: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem4: TTBXItem;
    F1: TF1Book;
  private
    { Private declarations }
    FTipo_Docto:Integer;
  public
    { Public declarations }
    property Tipo_Docto:Integer read FTipo_Docto write FTipo_Docto;
  end;

var
  frmEstat_Pedidos: TfrmEstat_Pedidos;

implementation

uses Main, DM_MBA, MsgError, SelCodDes, SelDoc, SelTabla, VerImagen,
  BackOrder, Saldos, SelDocF2;

{$R *.DFM}


end.
