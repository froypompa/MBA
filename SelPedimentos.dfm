object frmPedimentos: TfrmPedimentos
  Left = 1
  Top = 103
  Caption = 'Pedimentos Disponibles'
  ClientHeight = 461
  ClientWidth = 574
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 29
    Width = 574
    Height = 432
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object xlbEncabezado: TRxLabel
      Left = 2
      Top = 5
      Width = 570
      Height = 20
      Align = alTop
      Caption = 'Nombre del Producto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 578
    end
    object IB_Grid1: TIB_Grid
      Left = 2
      Top = 25
      Width = 570
      Height = 405
      CustomGlyphsSupplied = []
      DataSource = idsDoc
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      EditLinksAuto = True
      CurrentRowColor = clInfoBk
      CurrentRowFont.Charset = DEFAULT_CHARSET
      CurrentRowFont.Color = clWindowText
      CurrentRowFont.Height = -11
      CurrentRowFont.Name = 'Tahoma'
      CurrentRowFont.Style = [fsBold]
      OrderingFont.Charset = DEFAULT_CHARSET
      OrderingFont.Color = clWindowText
      OrderingFont.Height = -11
      OrderingFont.Name = 'MS Sans Serif'
      OrderingFont.Style = []
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'MS Sans Serif'
      FixedFont.Style = []
      NavigateOptions = [gnF2Edits]
    end
    object RxSplitter1: TRxSplitter
      Left = 2
      Top = 2
      Width = 570
      Height = 3
      ControlFirst = IB_Grid1
      Align = alTop
    end
  end
  object Dock971: TTBXDock
    Left = 0
    Top = 0
    Width = 574
    Height = 29
    object Toolbar971: TTBXToolbar
      Left = 0
      Top = 0
      Caption = 'Toolbar971'
      DockPos = 0
      FullSize = True
      TabOrder = 0
      object tlbAceptar: TTBXItem
        Caption = '&Aceptar'
        DisplayMode = nbdmImageAndText
        ImageIndex = 1
        Images = ImageList2
        OnClick = tlbAceptarClick
      end
      object tlbCancelar: TTBXItem
        Caption = '&Cancelar'
        DisplayMode = nbdmImageAndText
        ImageIndex = 0
        Images = ImageList2
        OnClick = tlbCancelarClick
        Left = 86
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object TBControlItem1: TTBControlItem
        Control = IB_NavigationBar1
      end
      object IB_NavigationBar1: TIB_NavigationBar
        Left = 140
        Top = 0
        Width = 120
        Height = 25
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        DataSource = idsDoc
        ReceiveFocus = False
        CustomGlyphsSupplied = []
      end
    end
  end
  object idsDoc: TIB_DataSource
    AnnounceFocus = True
    Dataset = iqrDoc
    Left = 512
    Top = 18
  end
  object ImageList2: TImageList
    Left = 448
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000BFF7FFFF00000000
      1FFFFFFF000000000FEFFFFF000000008FDFFDFF00000000C79FF8FF00000000
      E33FF07F00000000F07FF23F00000000F8FFF71F00000000F07FFF8F00000000
      E33FFFCF00000000879FFFEF000000000FCFFFFF000000001FF7FFFF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object iqrDoc: TIB_Query
    DatabaseName = 'MBA'
    FieldsDisplayFormat.Strings = (
      'IMPNETODOC=#,##0.00'
      'IMPIVADOCT=#,##0.00'
      'IMPTOTALDO=#,##0.00'
      'IMPPENDDOC=#,##0.00'
      'PEDIDA=#,###'
      'PENDIENTE=#,###'
      'FECHAPEDIDO=DD/MM/YYYY')
    FieldsDisplayLabel.Strings = (
      'IMPNETODOC=SUBTOTAL'
      'IMPIVADOCT=IVA'
      'IMPTOTALDO=TOTAL'
      'IMPPENDDOC=*PENDIENTE*')
    FieldsIndex.Strings = (
      'CONTACT.ID'
      'CONTACT.LASTNAME'
      'CONTACT.FIRSTNAME'
      'CONTACT.BDAY'
      'CONTACT.CON_TYPE'
      'CONTACT.ADDR1'
      'CONTACT.CITY'
      'CONTACT.USASTATE'
      'CONTACT.USAZIP'
      'CONTACT.USAPHONE'
      'CONTACT.EMAIL'
      'CONTACT.GENDER'
      'CONTACT.BUSNAME'
      'CONTACT.BUSADDR1'
      'CONTACT.BUSCITY'
      'CONTACT.BUSUSASTATE'
      'CONTACT.BUSUSAZIP'
      'CONTACT.BUSUSAPHONE'
      'CONTACT.PICTURE'
      'CONTACT.COMMENT'
      'CONTACT.ADDDATE'
      'CONTACT.CHGDATE'
      'STYLE'
      'FULLNAME')
    FieldsVisible.Strings = (
      'NUMTIPODOC=FALSE'
      'SERIEDOCTO=FALSE'
      'CODCTEPROV=FALSE'
      'CANCELA=FALSE'
      'DB_KEY=FALSE')
    IB_Connection = DM1.cnMBA
    SQL.Strings = (
      'SELECT'
      '       NUMPEDIMENTO'
      '     , FECHA'
      '     , UNIDADES_E'
      '     , UNIDADES_S'
      '     , DESCRIPRO'
      'FROM MBA10014'
      'WHERE UNIDADES_E > UNIDADES_S'
      '      AND DESCRIPRO CONTAINING ?P_CODFAMILIA'
      'FOR UPDATE')
    CallbackInc = 1
    ColorScheme = True
    ConfirmDeletePrompt.Strings = (
      'Deseas borrar el rengl'#243'n?')
    KeySeeking = False
    MasterSearchFlags = [msfOpenMasterOnOpen, msfSearchMasterOnSearch, msfSearchAppliesToMasterOnly]
    RequestLive = True
    BufferSynchroFlags = [bsBeforeEdit, bsAfterEdit, bsAfterInsert]
    CommitAction = caFetchAll
    FilterOptions = [fopCaseInsensitive]
    Left = 544
    Top = 16
  end
end