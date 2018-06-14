object frmAgentes: TfrmAgentes
  Left = 1
  Top = 104
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Agentes de Venta - Actualizaci'#243'n'
  ClientHeight = 463
  ClientWidth = 677
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcMain: TPageControl
    Left = 0
    Top = 34
    Width = 677
    Height = 408
    ActivePage = tshListado
    Align = alClient
    Images = ImageList1
    TabOrder = 0
    object tshListado: TTabSheet
      Caption = '&1 Listado'
      ImageIndex = 16
      OnShow = tshListadoShow
      object pnlGrupos: TPanel
        Left = 0
        Top = 0
        Width = 669
        Height = 97
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 328
          Height = 97
          Align = alLeft
          Caption = ' Busqueda '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object cboBuscar: TComboBox
            Left = 8
            Top = 34
            Width = 217
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 2
            OnChange = cboBuscarChange
            OnKeyPress = cboBuscarKeyPress
          end
          object bbtBuscar: TBitBtn
            Left = 232
            Top = 32
            Width = 78
            Height = 25
            Caption = '&Buscar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = bbtBuscarClick
          end
          object chkTecla: TCheckBox
            Left = 8
            Top = 58
            Width = 225
            Height = 17
            Caption = 'Buscar en cada tecla'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            State = cbChecked
            TabOrder = 4
          end
          object rbtCodigo: TRadioButton
            Left = 7
            Top = 17
            Width = 98
            Height = 17
            Caption = 'Por &C'#243'digo'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            OnClick = rbtCodigoClick
          end
          object rbtDescri: TRadioButton
            Left = 112
            Top = 17
            Width = 116
            Height = 17
            Caption = 'Por &Descripci'#243'n'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = rbtDescriClick
          end
        end
        object gpoFiltro: TGroupBox
          Left = 328
          Top = 0
          Width = 341
          Height = 97
          Align = alClient
          Caption = ' Filtros '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object RxLabel1: TRxLabel
            Left = 8
            Top = 18
            Width = 103
            Height = 16
            AutoSize = False
            Caption = 'Campo'
            Color = clBtnShadow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ShadowColor = clHighlightText
            ShadowSize = 0
            ShadowPos = spRightTop
          end
          object RxLabel2: TRxLabel
            Left = 113
            Top = 18
            Width = 105
            Height = 16
            AutoSize = False
            Caption = 'Operador'
            Color = clBtnShadow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ShadowColor = clHighlightText
            ShadowSize = 0
            ShadowPos = spRightTop
          end
          object RxLabel3: TRxLabel
            Left = 221
            Top = 18
            Width = 72
            Height = 16
            AutoSize = False
            Caption = 'Valor'
            Color = clBtnShadow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ShadowColor = clHighlightText
            ShadowSize = 0
            ShadowPos = spRightTop
          end
          object sbxFiltrado: TRxSpeedButton
            Left = 8
            Top = 64
            Width = 145
            Height = 25
            AllowAllUp = True
            GroupIndex = 1
            Caption = '&Filtrado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            OnClick = sbxFiltradoClick
          end
          object cboCampo: TComboBox
            Left = 8
            Top = 34
            Width = 103
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 0
            OnChange = cboBuscarChange
            OnKeyPress = cboBuscarKeyPress
            Items.Strings = (
              'NUMAGENTE'
              'NOMBAGEN')
          end
          object cboOperador: TComboBox
            Left = 113
            Top = 34
            Width = 106
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 1
            OnChange = cboBuscarChange
            OnKeyPress = cboBuscarKeyPress
            Items.Strings = (
              '='
              '>'
              '<'
              '>='
              '<='
              '<>'
              'STARTING'
              'CONTAINING')
          end
          object cboValor: TComboBox
            Left = 221
            Top = 34
            Width = 74
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 2
            OnChange = cboBuscarChange
            OnKeyPress = cboBuscarKeyPress
          end
        end
      end
      object igdProd: TIB_Grid
        Left = 0
        Top = 97
        Width = 669
        Height = 282
        CustomGlyphs = ImageList1
        CustomGlyphsSupplied = []
        DataSource = idsCtas
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        RowSelect = True
        DrawFocusSelected = True
        EditLinks.Strings = (
          'CLIENTES.DIRECCION')
        EditLinksAuto = True
        CurrentRowColor = clInfoBk
        CurrentRowFont.Charset = DEFAULT_CHARSET
        CurrentRowFont.Color = clWindowText
        CurrentRowFont.Height = -12
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
        TabMovesOut = True
      end
    end
    object tshGenerales: TTabSheet
      Caption = '&2 Generales'
      ImageIndex = 40
      object grpGral: TGroupBox
        Left = 0
        Top = 0
        Width = 669
        Height = 257
        Align = alTop
        TabOrder = 0
        DesignSize = (
          669
          257)
        object iedCodigo: TIB_Edit
          Left = 93
          Top = 10
          Width = 124
          Height = 21
          AutoLabel.Caption = 'Numero:'
          AutoLabel.Font.Charset = DEFAULT_CHARSET
          AutoLabel.Font.Color = clWindowText
          AutoLabel.Font.Height = -11
          AutoLabel.Font.Name = 'MS Sans Serif'
          AutoLabel.Font.Style = []
          AutoLabel.Kind = albLeft
          DataField = 'NUMAGENTE'
          DataSource = idsCtas
          TabOrder = 0
        end
        object iedDescri: TIB_Edit
          Left = 93
          Top = 34
          Width = 576
          Height = 21
          AutoLabel.Caption = 'Nombre:'
          AutoLabel.Font.Charset = DEFAULT_CHARSET
          AutoLabel.Font.Color = clWindowText
          AutoLabel.Font.Height = -11
          AutoLabel.Font.Name = 'MS Sans Serif'
          AutoLabel.Font.Style = []
          AutoLabel.Kind = albLeft
          DataField = 'NOMBAGEN'
          DataSource = idsCtas
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          OnChange = iedDescriChange
        end
        object iedRuta: TIB_Edit
          Left = 93
          Top = 58
          Width = 86
          Height = 21
          AutoLabel.Caption = 'Ruta:'
          AutoLabel.Font.Charset = DEFAULT_CHARSET
          AutoLabel.Font.Color = clWindowText
          AutoLabel.Font.Height = -11
          AutoLabel.Font.Name = 'MS Sans Serif'
          AutoLabel.Font.Style = []
          AutoLabel.Kind = albLeft
          DataField = 'RUTAAGEN'
          DataSource = idsCtas
          Color = clMoneyGreen
          TabOrder = 2
          OnKeyDown = iedRutaKeyDown
          ButtonStyle = ebsEllipsis
          AlwaysShowButton = True
          OnButtonClick = iedRutaButtonClick
          OnChange = iedRutaChange
        end
        object xceRuta: TComboEdit
          Left = 183
          Top = 58
          Width = 305
          Height = 21
          Color = clMenu
          ButtonWidth = -1
          NumGlyphs = 1
          TabOrder = 3
        end
        object IB_ComboBox1: TIB_ComboBox
          Left = 94
          Top = 108
          Width = 145
          Height = 21
          AutoLabel.Caption = 'Clase Agente:'
          AutoLabel.Font.Charset = DEFAULT_CHARSET
          AutoLabel.Font.Color = clWindowText
          AutoLabel.Font.Height = -11
          AutoLabel.Font.Name = 'MS Sans Serif'
          AutoLabel.Font.Style = []
          AutoLabel.Kind = albLeft
          DataField = 'CLASEAGENT'
          DataSource = idsCtas
          TabOrder = 4
          Style = csDropDownList
          ItemHeight = 13
          Items.Strings = (
            'Venta'
            'Cobranza'
            'Ambos')
          ItemValues.Strings = (
            '1'
            '2'
            '3')
        end
        object icrComCob: TIB_Currency
          Left = 95
          Top = 133
          Width = 66
          Height = 21
          AutoLabel.Caption = '% Com. Cobranza:'
          AutoLabel.Font.Charset = DEFAULT_CHARSET
          AutoLabel.Font.Color = clWindowText
          AutoLabel.Font.Height = -11
          AutoLabel.Font.Name = 'MS Sans Serif'
          AutoLabel.Font.Style = []
          AutoLabel.Kind = albLeft
          DataField = 'PORCCOMCOB'
          DataSource = idsCtas
          TabOrder = 5
          AlwaysShowButton = True
          CalculatorKind = cucDropDown
          DisplayFormat = '##0.00'
        end
        object icrComVta: TIB_Currency
          Left = 95
          Top = 157
          Width = 66
          Height = 21
          AutoLabel.Caption = '% Com. Venta:'
          AutoLabel.Font.Charset = DEFAULT_CHARSET
          AutoLabel.Font.Color = clWindowText
          AutoLabel.Font.Height = -11
          AutoLabel.Font.Name = 'MS Sans Serif'
          AutoLabel.Font.Style = []
          AutoLabel.Kind = albLeft
          DataField = 'PORCCOMVTA'
          DataSource = idsCtas
          TabOrder = 6
          AlwaysShowButton = True
          CalculatorKind = cucDropDown
          DisplayFormat = '##0.00'
        end
        object IB_Date1: TIB_Date
          Left = 94
          Top = 82
          Width = 144
          Height = 21
          AutoLabel.Caption = 'Fecha de Alta:'
          AutoLabel.Font.Charset = DEFAULT_CHARSET
          AutoLabel.Font.Color = clWindowText
          AutoLabel.Font.Height = -11
          AutoLabel.Font.Name = 'MS Sans Serif'
          AutoLabel.Font.Style = []
          AutoLabel.Kind = albLeft
          DataField = 'FECALTAGEN'
          DataSource = idsCtas
          TabOrder = 7
          IncCellHeight = 1
          IncCellWidth = 2
          DrawYearArrow = False
        end
        object iedSucursal: TIB_Edit
          Left = 93
          Top = 181
          Width = 86
          Height = 21
          AutoLabel.Caption = 'Sucursal:'
          AutoLabel.Font.Charset = DEFAULT_CHARSET
          AutoLabel.Font.Color = clWindowText
          AutoLabel.Font.Height = -11
          AutoLabel.Font.Name = 'MS Sans Serif'
          AutoLabel.Font.Style = []
          AutoLabel.Kind = albLeft
          DataField = 'IDSUCURSAL'
          DataSource = idsCtas
          Color = clMoneyGreen
          TabOrder = 8
          OnKeyDown = iedSucursalKeyDown
          ButtonStyle = ebsEllipsis
          AlwaysShowButton = True
          OnButtonClick = iedSucursalButtonClick
          OnChange = iedSucursalChange
        end
        object xceSucursal: TComboEdit
          Left = 183
          Top = 181
          Width = 305
          Height = 21
          Color = clMenu
          ButtonWidth = -1
          NumGlyphs = 1
          TabOrder = 9
        end
        object IB_Currency1: TIB_Currency
          Left = 135
          Top = 216
          Width = 66
          Height = 21
          AutoLabel.Caption = 'Esquema Comision:'
          AutoLabel.Font.Charset = DEFAULT_CHARSET
          AutoLabel.Font.Color = clWindowText
          AutoLabel.Font.Height = -11
          AutoLabel.Font.Name = 'MS Sans Serif'
          AutoLabel.Font.Style = []
          AutoLabel.Kind = albLeft
          DataField = 'ESQUEMA'
          DataSource = idsCtas
          TabOrder = 10
          AlwaysShowButton = True
          CalculatorKind = cucDropDown
          DisplayFormat = '##0'
        end
      end
      object grpPrecios: TGroupBox
        Left = 0
        Top = 257
        Width = 669
        Height = 140
        Align = alTop
        Caption = '  &Estadisticas  '
        TabOrder = 1
        object IB_Edit4: TIB_Edit
          Left = 5
          Top = 32
          Width = 99
          Height = 21
          AutoLabel.Caption = 'Ventas del Periodo:'
          AutoLabel.Font.Charset = DEFAULT_CHARSET
          AutoLabel.Font.Color = clWindowText
          AutoLabel.Font.Height = -11
          AutoLabel.Font.Name = 'MS Sans Serif'
          AutoLabel.Font.Style = []
          AutoLabel.Kind = albTop
          DataField = 'IMPVTAPER'
          DataSource = idsCtas
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object tshOtros: TTabSheet
      Caption = '&3 Otros Datos'
      ImageIndex = 45
      DesignSize = (
        669
        379)
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 669
        Height = 33
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Caption = 'Panel1'
        TabOrder = 0
        object xlbDescri1: TRxLabel
          Left = 2
          Top = 2
          Width = 665
          Height = 29
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          ExplicitWidth = 7
          ExplicitHeight = 13
        end
      end
      object iedEmail1: TIB_Edit
        Left = 99
        Top = 39
        Width = 531
        Height = 21
        AutoLabel.Caption = 'Correo Principal'
        AutoLabel.Font.Charset = DEFAULT_CHARSET
        AutoLabel.Font.Color = clWindowText
        AutoLabel.Font.Height = -11
        AutoLabel.Font.Name = 'MS Sans Serif'
        AutoLabel.Font.Style = []
        AutoLabel.Kind = albLeft
        DataField = 'EMAIL1'
        DataSource = idsCtas
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
        OnChange = iedDescriChange
      end
      object IB_Edit1: TIB_Edit
        Left = 99
        Top = 66
        Width = 531
        Height = 21
        AutoLabel.Caption = 'Correo Secundario:'
        AutoLabel.Font.Charset = DEFAULT_CHARSET
        AutoLabel.Font.Color = clWindowText
        AutoLabel.Font.Height = -11
        AutoLabel.Font.Name = 'MS Sans Serif'
        AutoLabel.Font.Style = []
        AutoLabel.Kind = albLeft
        DataField = 'EMAIL2'
        DataSource = idsCtas
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        OnChange = iedDescriChange
      end
    end
  end
  object dfsStatusBar1: TTBXStatusBar
    Left = 0
    Top = 442
    Width = 677
    Height = 21
    Panels = <
      item
        StretchPriority = 1
        Tag = 0
      end>
    UseSystemFont = False
  end
  object TBXDock1: TTBXDock
    Left = 0
    Top = 0
    Width = 677
    Height = 34
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      Caption = 'TBXToolbar1'
      DockPos = 0
      FullSize = True
      Images = ImageList1
      TabOrder = 0
      object TBControlItem1: TTBControlItem
        Control = IB_UpdateBar2
      end
      object TBControlItem2: TTBControlItem
        Control = IB_NavigationBar1
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object tbtSalir: TTBXItem
        ImageIndex = 81
        OnClick = SalirExecute
      end
      object IB_UpdateBar2: TIB_UpdateBar
        Left = 0
        Top = 0
        Width = 162
        Height = 30
        CustomGlyphs = ImageList1
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        DataSource = idsCtas
        ReceiveFocus = False
        CustomGlyphsSupplied = []
        VisibleButtons = [ubEdit, ubInsert, ubDelete, ubPost, ubCancel, ubRefreshAll]
      end
      object IB_NavigationBar1: TIB_NavigationBar
        Left = 162
        Top = 0
        Width = 120
        Height = 30
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        DataSource = idsCtas
        ReceiveFocus = False
        CustomGlyphsSupplied = []
      end
    end
  end
  object iqrCtas: TIB_Query
    DatabaseName = 'MBA'
    IB_Connection = DM1.cnMBA
    SQL.Strings = (
      'SELECT NUMAGENTE'
      '     , NOMBAGEN'
      '     , RUTAAGEN'
      '     , FECALTAGEN'
      '     , CLASEAGENT'
      '     , PORCCOMCOB'
      '     , PORCCOMVTA'
      '     , AGRUPAAGEN'
      '     , COMCOBEJER'
      '     , COMCOBPER'
      '     , COMVTAEJER'
      '     , COMVTAPER'
      '     , FECIMPAGEN'
      '     , FECULTREL'
      '     , IMPVTAEJER'
      '     , IMPVTAPER'
      '     , NUMULTREL'
      '     , PAGOEJER'
      '     , PAGOPER'
      '     , PUNTOVTA'
      '     , IDSUCURSAL'
      '     , ESQUEMA'
      '     , EMAIL1'
      '     , EMAIL2'
      'FROM MBA10001'
      'FOR UPDATE')
    KeyLinks.Strings = (
      'MBA10001.NUMAGENTE')
    OrderingItems.Strings = (
      'NUMAGENTE=NUMAGENTE;NUMAGENTE DESC'
      'NOMBAGEN=NOMBAGEN;NOMBAGEN DESC')
    OrderingLinks.Strings = (
      'NUMAGENTE=ITEM=1'
      'NOMBAGEN=2')
    RefreshAction = raOpen
    RequestLive = True
    AfterInsert = iqrCtasAfterInsert
    AfterPost = iqrCtasAfterPost
    Left = 640
  end
  object idsCtas: TIB_DataSource
    OnPrepareSQL = idsCtasPrepareSQL
    AutoEdit = False
    AutoInsert = False
    Dataset = iqrCtas
    Left = 640
    Top = 26
  end
  object ImageList1: TImageList
    Left = 504
    Top = 65530
    Bitmap = {
      494C01015E006300100010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008001000001002000000000000080
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000C6C6C600C6C6
      C600C6C6C6000000000000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      000084848400009C9C00009C9C00009C9C0000848400008484009C9C63000000
      000000000000C6C6C600C6C6C600000000000000000000000000C6C6C6000000
      0000848484003131630031006300003131003100630042424200848484000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600CECECE00009C
      9C00009C9C0000FFCE0000CECE0000CECE0000FFCE00009C9C00009C9C00009C
      9C00CECECE00C6DEC600C6C6C6000000000000000000C6C6C600000000003131
      6300000031000000630000006300000084000000630000006300000031003131
      630000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600009C9C0000CE
      CE0000FFCE0000CECE0000CECE0000FFCE0000CECE0000CECE0000CECE0000CE
      CE00009C9C00CECECE0000000000000000000000000000000000003163000000
      840000009C0000009C0000008400000084000000840000008400000063000000
      63003131630000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600009C9C0031FFCE0000FF
      FF0000FFCE0000CECE0000CECE0000FFCE0000CECE0000CECE0000FFCE0000FF
      CE0000CECE00009C9C00CECECE0000000000CECECE003131630000009C000031
      9C002100A50000009C000000CE0000319C000000840000008400000084000000
      63000000630031316300CECECE00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009494940031FFFF0031FFFF0031FF
      CE0031FFFF0031FFFF0000CECE0031FFFF0000CECE0000CECE0000CECE0000CE
      CE0000CECE00009C9C009C9C63000000000063639C0000009C003100CE000000
      CE002100A5000031CE002100A5002100A5000000CE0000009C0000319C000000
      6300000063000000310084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFCE0031FFFF0000CECE0031FF
      FF0031FFFF0031FFCE0031FFFF0031FFFF0031FFFF0031FFCE0000CECE0000CE
      CE0000CECE00009C9C00008484000000000031319C003131CE000000CE003131
      CE003131CE000000CE003131CE000000CE0031319C000000CE0000009C002100
      A500000084000000630031316300C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000CECE0031FFFF0031FFCE0031FF
      FF0031FFCE0063FFFF0031FFCE0031FFFF0031FFCE0031FFFF0031FFFF0000CE
      CE0000FFCE0000CECE00009C9C000000000031319C000000CE003131CE003131
      FF003131CE005252FF003131CE003131CE000000CE003131CE0000009C000000
      9C0000009C000000840031316300C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFCE0031FFFF0031FFCE0063FF
      FF0063FFFF0063FFFF0063FFFF009CFFCE0031FFFF0031FFFF0031FFCE0031FF
      FF0000CECE0000CECE00009C6300000000002100A5000031FF003131CE003131
      FF003131CE005252FF003131CE005252FF003131CE003131CE000000CE002100
      A50000319C000000840000003100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031FFFF0031FFFF0063FFFF0063FF
      FF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0031FFFF0031FFCE0031FF
      FF0031FFFF0000CECE00009C9C00000000003131CE003131FF003131CE005252
      FF005252FF005252FF005252FF003131CE005252FF003131CE003131CE000000
      CE002100A50000319C0031006300C6DEC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031FFFF0000FFCE0063FFFF009CFF
      FF0063FFCE009CFFFF009CFFFF0063FFCE0063FFFF0063FFCE0031FFFF0031FF
      FF0031FFCE0000FFFF0000848400000000005252FF003131FF005252FF005252
      FF00847BFF00847BFF006363FF006363FF005252FF003131CE003131FF003131
      CE000000CE000000840031316300CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFCE0000CECE0063FFFF0063FF
      FF009CFFFF009CFFFF009CFFFF0063FFFF0063FFFF009CFFFF0031FFFF0031FF
      CE0031FFFF00008484009C9C6300000000006363CE003131FF005252FF006363
      FF009C9CFF009C9CFF009C9CFF006363FF006363FF005252FF003131CE000031
      CE003100CE000000840084848400C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063FFFF0063FFFF0063FF
      FF009CFFFF009CFFCE009CFFFF009CFFFF0063FFFF0063FFFF0031FFCE0031FF
      FF0031FFFF00009C9C00C6C6C60000000000000000005252FF005252FF006363
      FF009C9CFF009C9CFF009C9CFF00847BFF005252FF005252FF003131CE003131
      CE000000CE003131630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000063FFFF0063FF
      CE0063FFFF009CFFFF009CFFFF009CFFCE0063FFFF0063FFFF0031FFFF0031FF
      CE0031FFFF00C6C6C600000000000000000000000000000000003131FF006363
      FF006363FF00847BFF00847BFF006363FF006363FF005252FF003131CE003131
      FF002100A500C6C6C60000000000C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C6000000000063FF
      FF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0000FFCE0031FFFF0000CE
      CE00CECECE0000000000C6C6C6000000000000000000C6C6C600000000005252
      FF005252FF006363FF006363FF006363FF005252FF003131CE003131FF003131
      9C000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000CECE0063FFFF0063FFFF0000FFCE0000CECE0000FFCE0000FFFF00C6C6
      C600C6C6C600C6C6C6000000000000000000000000000000000000000000C6C6
      C600847BFF005252FF005252FF003131FF003131FF005252FF006363CE000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C6008484840084848400CECECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400FFFFFF00000000000000000000000000C6C6C6000000
      000084848400316331002929290000310000316331003163310084848400CECE
      CE0000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500C6C6C600737373000000000000000000CECECE0000000000008400000084
      00008484840000FF00008484840000FF00000000000000000000000000000000
      0000B5B5B500C6C6C60000000000848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000CECECE003163
      3100003100000063000000630000006300000084000000310000003100003163
      31000000000000000000C6C6C600000000000000000000000000000000008484
      8400848484008484840000000000848484008484840000000000848484008484
      84008484840000000000848484008484840000000000C6C6C600C6C6C6007373
      730063636300CECECE00A5A5A500A5A5A500CECECE0000000000000000000000
      00008484840000FF00008484840000FF00000000000000000000C6C6C600C6C6
      C600737373006363630000000000FFFFFF0084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400FFFFFF000000000000000000C6C6C600006300000084
      0000319C3100009C000000840000008400000063000000630000008400000031
      000031633100C6C6C600000000000000000000000000000000000000000000FF
      000000840000848484000084000000FF0000848484000000000000FF00000084
      0000848484000084000000FF000084848400848484007373730073737300CECE
      CE00CECECE00C6C6C600A5A5A500A5A5A500CECECE0000000000008400000000
      00008400000000FF00008400000000FF00000000000084848400737373007373
      7300CECECE00CECECE0000000000848484008484840084848400848484008484
      8400848484008484840084848400000000000000000031633100009C0000009C
      0000009C0000009C0000319C3100009C0000009C000031633100008400000063
      0000006300004242420000000000000000000000000000000000FF0000000000
      000000840000848484000084000000FF0000848484000000000000FF00000084
      0000848484000084000000FF00008484840073737300CECECE00CECECE00CECE
      CE00C6C6C600C6C6C600A5A5A500A5A5A500CECECE0000000000008400000084
      0000840000008400000084848400FF0000000000000073737300CECECE00CECE
      CE00CECECE00C6C6C60000000000840000008400000084000000840000008400
      00008400000084000000840000008400000094949400009C000031CE310000CE
      000000CE000031CE3100009C000031CE3100009C0000009C0000008400000063
      000000840000003100009494940000000000000000000000000000000000FF00
      000000000000840000000000000000FF0000848484000000000000FF00000084
      0000848484000084000000FF000084848400FFFFFF00CECECE00CECECE00C6C6
      C600C6C6C600FFFFFF00A5A5A500A5A5A500CECECE000000000000840000CECE
      CE00CECECE0000FF000084848400CECECE0000000000FFFFFF00CECECE00CECE
      CE00C6C6C600C6C6C600FFFFFF00A5A5A500A5A5A50094949400848484008484
      840073737300848484007373730000000000319C310000CE000000CE000031CE
      310031CE310031CE310031CE310000CE000031CE3100009C0000009C0000319C
      3100006300000063000042424200000000000000000000000000000000000084
      0000FF00000084000000FF00000000000000848484000000000000FF00000084
      0000848484000084000000FF000084848400FFFFFF00C6C6C600C6C6C600FFFF
      FF00FFFFFF00CECECE00CECECE00D6D6D600CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE0000000000FFFFFF00C6C6C600C6C6
      C600FFFFFF00FFFFFF00CECECE00CECECE00D6D6D60094949400848484008484
      840084848400737373006363630000000000319C310031CE310031FF310031CE
      310031FF310031CE310031CE310031CE310031CE310000CE000031CE3100009C
      00000084000000840000316331000000000000000000000000000000000000FF
      0000008400008484840000000000FF000000840000000000000000FF00000084
      0000840000000000000000FF000084848400FFFFFF00FFFFFF00FFFFFF00CECE
      CE00CECECE000000FF003100CE00CECECE00CECECE00C6C6C600848484008484
      84008484840073737300000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00CECECE00CECECE000000FF003100CE00CECECE00CECECE00C6C6C6008484
      84008484840084848400737373000000000000CE000031CE310031FF310031CE
      310063FF630031CE310063FF630031FF310063CE630031CE310031CE3100009C
      0000009C000000840000003100000000000000000000000000000000000000FF
      000000840000848484000084000000840000FF00000000000000008400008400
      000084000000FF0000000000000084848400FFFFFF00000000000000000000FF
      0000009C6300CECECE00CECECE00CECECE00737373008484840000000000C6C6
      C6006363630073737300000000000000000000000000FFFFFF00000000000000
      000000FF0000009C6300CECECE00CECECE00CECECE0073737300848484000000
      0000C6C6C60063636300737373000000000031CE310031FF310031FF310063FF
      630031FF310063FF630063FF630031CE310031FF310031CE310031CE310031CE
      3100009C0000319C3100006300000000000000000000000000000000000000FF
      000000840000848484000084000000FF000084000000FF000000840000008400
      00008484840000000000FF000000840000008484840084848400FFFFFF000000
      0000CECECE00CECECE008484840073737300C6C6C600C6C6C60000000000C6C6
      C60073737300636363000000000000000000000000008484840084848400FFFF
      FF0000000000CECECE00CECECE008484840073737300C6C6C600C6C6C6000000
      0000C6C6C60073737300636363000000000031FF310031FF310063FF630063FF
      630063FF63009CFF9C0063FF630063FF630063CE630031FF310031CE310031CE
      3100009C000000840000316331000000000000000000000000000000000000FF
      0000008400008484840000000000008400000000000000000000840000000084
      0000848484000000000000000000840000000000000000000000848484008484
      8400FFFFFF0073737300C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840084848400FFFFFF0073737300C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000009CCE9C0031FF310031FF310063FF
      63009CFF9C009CFF9C009CFF9C0063FF630063FF630031CE310031FF310031CE
      310000CE000000630000848484000000000000000000000000000000000000FF
      000000840000848484000000000000000000000000000000000000FF00000084
      0000848484000000000000000000000000000000000000000000000000000000
      00008484840084848400CECECE0000000000F7F7F700F7F7F700F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400CECECE0000000000F7F7F700F7F7F700F7F7
      F700000000000000000000000000000000000000000031CE310063FF630063FF
      63009CFF9C009CFF9C009CFF9C009CFF9C0063FF630031FF310031CE310031FF
      3100319C3100319C3100C6C6C600000000000000000000000000000000000084
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840000000000F7F7F700F7F7F700FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008484840000000000F7F7F700F7F7F700FFFF
      FF00FFFFFF00000000000000000000000000000000000000000031FF310063FF
      630063FF63009CFF9C0063FF630063FF630063FF630031FF310031FF310031CE
      3100009C00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400F7F7F700F7F7F700FFFFFF008484
      8400848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400F7F7F700F7F7F700FFFF
      FF008484840084848400000000000000000000000000C6C6C6000000000031FF
      310063FF630063FF630063FF630063FF630063FF630031FF310031CE310031CE
      3100C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      840000000000000000000000000000000000000000000000000000000000C6C6
      C6009CCE9C0031FF310031FF310031FF310031FF310031CE31009CCE9C00C6C6
      C6000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000000000000000
      0000C6C6C60000000000C6C6C600000000000000000000000000C6C6C6000000
      0000C6C6C6000000000000000000848484008484840084848400848484000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      000000000000B5B5B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      000000000000C6C6C60000000000000000000000000000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000848484000000
      000000000000C6C6C60000000000C6C6C60000000000C6C6C60000000000C6C6
      C600000000008484840000008400000084000000840000008400848484008484
      84008484840000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF000000
      0000FFFFFF0000FFFF0000000000000000008484000000000000848400008484
      0000848400000000000084840000848400000000000084000000840000008400
      0000840000000000000000000000FF00000000000000C6C6C60000000000C6C6
      C60000000000000000000000000000000000FFFFFF0000000000848484000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      840000008400000084000000FF000000FF000000FF000000FF00000084000000
      8400848484008484840000000000C6C6C6000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000008484000084840000000000008484
      0000848400008484000000000000848400008484000000000000840000008400
      0000840000008400000000000000000000000000000000000000C6C6C6000000
      000000000000000000000000000000000000FFFFFF0000000000848484008484
      8400848484000000000000000000C6C6C60000000000C6C6C600000084000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000084008484840084848400000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000084840000FFFF0000FFFF000084000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000C6C6C600000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600FFFFFF000000
      0000000000008484840000000000000000000000000000000000000084000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00FFFFFF000000
      FF000000FF000000840084848400848484000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      00008484000084840000FFFF00008484000084000000FF000000FF0000008400
      0000FF00000084000000FF000000FF000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000848484000000000000000000000084000000FF000000
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFF
      FF000000FF000000FF0000008400848484000000000084000000840000008400
      000084000000840000008400000000000000FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF0000FFFF00FFFFFF00000000000000000000000000848400008484
      0000FFFF0000848400000000000084840000FF000000FF000000840000008400
      0000840000000000000084000000840000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000008484840000000000000084000000FF00FFFF
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF000000
      FF000000FF000000FF0000008400848484000000000084000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000FFFF00FFFFFF0000FFFF000000
      000000FFFF00FFFFFF0000FFFF000000000000000000C6C6C600000000000000
      0000FFFF000000000000000000000000000000000000FF000000FF000000CECE
      CE00CECECE0084000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000084848400000084000000FF000000FF000000
      FF000000FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF000000FF0000008400000000008400000000000000FFFF
      FF0000008400FFFFFF0000008400000084000000000000FFFF00FFFFFF000000
      0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000C6C6C6000000000000000000FFFFFF00FFFFFF00CECECE00FFFF
      FF00FFFFFF000000000000000000C6C6C60084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000084000000FF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF000000FF00000084000000000084000000FFFFFF000000
      000000008400000000000000840000000000FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      0000CECECE0000000000C6C6C60000000000FFFFFF0000000000CECECE00FFFF
      FF00FFFFFF0000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000084000000FF000000FF000000
      FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000
      FF000000FF000000FF000000FF00000084000000000084000000000000000000
      840000008400FFFFFF0000000000000084000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000C6C6C6000000000000FFFF0000848400FFFF
      FF00FFFFFF00CECECE00000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FF000000FFFFFF00FF000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000084000000FF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF000000
      FF000000FF000000FF000000FF00000084000000000084000000FFFFFF000000
      000000008400000000000000840000008400FFFFFF0084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000000000FFFF
      FF00CECECE0084848400CECECE000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FFFFFF00FF000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000FF000000FF000000
      FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFF
      FF00FFFFFF000000FF000000840000000000000000008400000000000000FFFF
      FF0000000000FFFFFF00B5B5B500FFFFFF000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484000000000000FFFF0000000000FFFF
      FF00FFFFFF008484840000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FF000000FF000000FFFFFF00FF000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000000084000000FF000000
      FF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000FF00FFFF
      FF000000FF000000FF0084848400000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000000000000000
      00000000000000000000B5B5B500000000000000000000000000000000000000
      0000000000000000000000000000848484000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000000000000000000084848400FFFF
      FF00FFFFFF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000000000000000FF000000
      FF000000FF00FFFFFF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000840000000000000000000000000084000000FF0000008400
      0000FF000000FF000000FF00000084000000FF00000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000000000000000000000000000C6C6C600000000008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
      84000000000000000000C6C6C6000000000000000000C6C6C600000000000000
      84000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      8400000084000000000000000000C6C6C6000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      00000000000000000000000000000000000000000000C6C6C600000000000000
      00000000000000000000C6C6C60000000000000000000000000000000000C6C6
      C600000000008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000C6C6C600000000000000000000000000C6C6
      C600000084000000840000008400000084000000840000008400000084000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600000000000000000000000000C6C6C600000000000000000000000000C6C6
      C600000000000000000000000000C6C6C6000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000848484000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000848484000000
      0000C6C6C6000000000000000000C6C6C6000000000000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484000084840000848400000000
      00000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C60000000000000000000000000000000000FFFFFF0000000000848484000000
      0000C6C6C60000000000C6C6C600000000000084840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000848484000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400000000000000
      0000FFFFFF0000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000848484008484000084840000848400008484
      0000848400000000000000000000000000000000000000000000C6C6C6000000
      0000C6C6C600848484000000000000000000FFFFFF0000000000848484008484
      840000000000C6C6C60000000000000000000084840000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000848484000000000000000000000000000000
      000084848400848484008484840084848400848484000000000000000000FFFF
      FF0000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484000084840000848400008484
      00008484000084840000000000000000000000000000C6C6C600000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000848484008484840000000000C6C6C6000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0084848400000000000000000000000000000000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000848484008484000084840000848400008484
      0000848400008484000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000848484008484840000000000000000000084840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000084848400000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484000084840000848400008484
      0000848400008484000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000C6C6C600FFFFFF00FFFF
      FF00FFFFFF00000000008484840084848400000000000084840000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF008484840000000000C6C6C600000000000000000000000000C6C6
      C600848400008484000000000000848400008484000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000084008484840084848400848484008484000000000000848400008484
      0000848400008484000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000008484840000000000000000000084840000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000000084848400000000000000000000000000FFFFFF00000000000000
      0000848400008484000000000000848400008484000084840000000000000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      00000000FF0000008400848484008484840084840000FFFFFF00848400008484
      00008484000084840000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000C6C6C6000084840000FF
      FF0000FFFF0000FFFF0000848400000000000084840000FFFF0000FFFF0000FF
      FF008484840000000000C6C6C6000000000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000C6C6C600000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000008400848484008484000084840000848400008484
      00008484000084840000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000C6C6C6000084
      840000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF000000
      00008484840000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00848400008484000000000000848400008484000084840000000000008484
      84008484840084848400848484000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00848484008484000084840000848400008484
      00008484000084840000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000C6C6C600000000000084
      840000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF008484
      840000000000C6C6C60000000000C6C6C60000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0084848400848484008484000084840000848400008484
      00008484000084840000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C6C6C6000000
      00000084840000FFFF0000000000000000000000000000FFFF00000000008484
      84000000000000000000C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000C6C6C6000000000000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF008484840084848400848484008484000084840000848400008484
      0000848400008484000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000C6C6C600000000000000
      00000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00848484000000
      0000C6C6C60000000000C6C6C600000000008484840000000000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000C6C6C60000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400848484008484840084848400FFFF0000848400008484
      0000848400008484000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000C6C6C600C6C6
      C600000000000084840000FFFF0000FFFF0000FFFF0000000000848484000000
      000000000000C6C6C6000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848484008484840084848400848484008484840084848400FFFF
      00008484000084840000000000000000000000000000C6C6C600000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000C6C6C6000000000000000000C6C6C600000000000000
      0000C6C6C6000084840000FFFF0000FFFF0000FFFF008484840000000000C6C6
      C60000000000C6C6C60000000000C6C6C6000000000000000000848484000000
      000084848400FFFFFF0084848400000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484008484
      840084848400FFFF00000000000000000000000000000000000000000000C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600000000000000000000000000C6C6
      C60000000000000000000084840000FFFF000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FF00000000000000FF000000840000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848400000000
      0000848400000000000000000000000000000000000084848400FF000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF0000000000000084000000000000008400000000000000C6C6
      C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FF000000840000000000000084000000C6C6C600FFFF
      FF00FFFFFF008484840084848400848484008484840084848400848484000000
      00000000000000000000000000000000000000000000C6C6C60000000000C6C6
      C600C6C6C60000000000C6C6C600C6C6C60000000000C6C6C600C6C6C6000000
      0000C6C6C600C6C6C60084848400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008400000000000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000084848400000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000084848400FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000084000000848484008484
      8400848484008484840000008400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000084848400000000000000000084848400FFFFFF008400
      000084000000840000008400000000000000FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000084848400FFFFFF0084848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000000000
      0000C6C6C600000084000000840084848400FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000084848400000000000000000084848400FFFFFF00FFFF
      FF00FF000000FF000000FF000000FFFFFF0000000000FFFFFF00000000000000
      00008484840084848400000000000000000084848400FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF0000008400C6C6C600FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000084848400FFFFFF00FFFF
      FF00FF000000FF000000FF000000000000000084840000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF0084848400FFFFFF00FFFFFF00CECECE0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008400FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000084848400000000000000000084848400FFFFFF00FF00
      0000FF000000FF000000FF0000000084840000FFFF0000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084848400FFFFFF000084840000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF000000
      0000848484008484840084848400000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000084848400000000000000000084848400FFFFFF00FF00
      0000FF000000FFFFFF00FFFFFF00FFFFFF000000000000848400000000000000
      00000000000000000000000000000000000000000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400FFFFFF000084840000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00CECECE00840000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084840000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000FF000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084840000FFFF000000
      0000FFFFFF00CECECE0000000000840000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000C6C6C600000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFF
      FF000000000000000000848484000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000008400000000
      000000000000000000000000000000000000000000008484840000000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084840000FF
      FF0000000000FFFF0000FFFF0000840000000000000000000000000000008484
      840084848400FFFFFF008484840084848400848484000000000084848400C6C6
      C600C6C6C600C6C6C60000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484000084
      840000FFFF000000000084848400848484000000000000000000000000000000
      0000000000008484840000000000000000008484840000000000000000000000
      000000000000C6C6C60000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      000000000000000000000000000000000000CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00000084000000FF00CECECE00CECECE000000000000000000000000000000
      0000000000000000000000000000C6C6C6000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE000000000000000000000000000000
      00000000000000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF0000FFFF0000FFFF008484840084848400000000000000FF000000FF000000
      FF000000FF000000000000000000848484000000000000000000000000000000
      0000000000000000000000000000FF9C3100FFFFCE0000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF008400000000FFFF008484840084848400848484000000FF000000FF008400
      00000000FF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000FF9C3100FFFFCE00FF633100FF6331000000
      000000000000000000000000000000000000000000000000FF00000000000000
      00000000FF000000FF000000FF000000FF000000FF0000000000848400000000
      0000848400000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0084848400848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF008400000000FFFF000000000084848400848484000000FF000000FF008400
      00000000FF0000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FF633100FFCE3100FFCE3100FFCE3100000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      00000000FF000000FF000000FF000000FF000000FF000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF008484840084848400000000008484840084848400848484000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF008400000000FFFF000000000000000000000000000000FF000000FF008400
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF633100FFCE310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000FFFFFF0000FF
      FF008400000000FFFF000000000000000000000000000000FF000000FF008400
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000FFFFFF0000FF
      FF008400000000FFFF000000000000000000000000000000FF000000FF008400
      00000000FF000000000000000000000000000000000000000000000000000000
      0000CECECE00CECECE00CECECE00009CCE0000639C00CECECE00CECECE00CECE
      CE00000000000000000000000000000000000000000084848400FFFFFF008400
      000084000000840000008400000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000008400000084
      0000008400000084000000840000008400000084000000840000000000008484
      840084848400000000000000000000FF00000000000000000000FFFFFF0000FF
      FF008400000000FFFF000000000000000000000000000000FF000000FF008400
      00000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF009CFFFF009CFFFF0000CEFF00009CCE009CFFFF009CFFFF00CECE
      CE00000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FF000000FF000000FF000000FFFFFF0000000000FFFFFF00000000000000
      0000848484008484840000000000000000000000000000000000008400000000
      00000000000000FF000000FF000000FF00000000000000000000FFFFFF008484
      84008484840000000000FFFFFF0000FF00000000000000000000FFFFFF0000FF
      FF008400000000FFFF000000000000000000000000000000FF000000FF008400
      00000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF009CFFFF009CFFFF009CFFFF0000CEFF009CFFFF009CFFFF00CECE
      CE00000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FF000000FF000000FF000000000000000084840000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000084
      00000000000000FF00000000000000FF00000000000084848400FFFFFF000000
      000000000000848484000084000000FF00000000000000000000FFFFFF0000FF
      FF008400000000FFFF0000000000000000000000000000000000000000008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00CECE
      CE00000000000000000000000000000000000000000084848400FFFFFF00FF00
      0000FF000000FF000000FF0000000084840000FFFF0000000000000000000000
      0000000000000000000000000000000000000084000000000000008400000084
      00000084000000FF00000000000000FF0000000000000000000000FF000000FF
      000000FF000000FF000000000000008400000000000000000000FFFFFF000000
      0000000000008484840000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF009CFFFF009CFFFF009CFFFF009CFFFF000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FF00
      0000FF000000FFFFFF00FFFFFF00FFFFFF000000000000848400000000000000
      0000000000000000000000000000000000000084000000840000008400000000
      00000000000000FF00000000000000000000000000000000000000FF000000FF
      000000FF000000840000FFFFFF00008400000000000000000000FFFFFF000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      00009CFFFF0000000000FFFFFF00FFFFFF009CFFFF009CFFFF000000000000CE
      FF00000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084840000FFFF00000000000000
      00000000000000000000000000000000000000840000008400000084000000FF
      000000FF00000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000008400000000000000000000848484008484
      8400000000008484840000000000000000000000000084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000009CFFFF0000000000FFFFFF00FFFFFF000000000000CEFF000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000008400000000
      00000000000000000000000000000000000000840000000000000000000000FF
      000000FF000000FF0000000000000000000000FF000000FF000000FF000000FF
      000000FF000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009CFFFF00000000000000000000CEFF006300FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400000084000000
      0000000000000000000000000000000000000084000000FF000000FF00000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009CFFFF0000CEFF00000000006300FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000009C000000
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
      FF000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000848484008484
      8400848484008484840084848400848484008484840084848400000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000084000000C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6
      C600840000000000000000000000000000000000000000000000000000000000
      00000000000084000000CECECE00CECECE00C6C6C600CECECE00C6C6C600CECE
      CE00CECECE00C6C6C600840000000000000000000000FFFF0000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      FF00000000000000FF0000000000000000000000FF00000000000000FF000000
      00000000FF000000000000000000000000000000000000000000000000000000
      00008400000084848400C6C6C60084848400C6C6C60084848400C6C6C6008484
      8400840000000000000000000000000000000000000000000000000000000000
      00000000000084000000CECECE00C6C6C600CECECE00C6C6C600CECECE00C6C6
      C600CECECE00C6C6C60084000000000000000000000000000000FFFF00000000
      0000000000000000000000000000848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000C6C6C60084848400C6C6C60084848400C6C6C60084848400C6C6
      C600840000000000000000000000000000000000000000000000000000000000
      00000000000084000000CECECE00CECECE00C6C6C600CECECE00CECECE00CECE
      CE00C6C6C600CECECE0084000000000000000000000000000000FFFF0000FFFF
      0000000000000000000084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000FF000000FF00
      00008400000084848400C6C6C60084848400C6C6C60084848400C6C6C6008484
      8400840000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000009C00000084000000840000008400
      0000840000009C000000840000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF00008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000000084000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000000000000000000000000000FF000000C6C6
      C600840000008484840084000000840000008400000084000000840000008400
      000084000000000000000000000000000000000000000000000084000000CECE
      CE00C6C6C60084000000CECECE008400000084000000840000009C0000008400
      0000840000008400000084000000000000000000000000000000FFFF0000FFFF
      0000FFFF00008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000000084000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000000000000000000000000000FF000000C6C6
      C600840000008400000084000000840000008400000084000000840000008400
      000084000000000000000000000000000000000000000000000084000000CECE
      CE00CECECE0084000000840000000000FF000000FF0084000000840000008400
      000084000000840000000000FF000000FF000000000000000000FFFF0000FFFF
      0000FFFF00000000000084848400000000000000000000000000000000000000
      0000000000008484000084840000000000000000000000000000000000000000
      00000000000084000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000000000000000000000000000FF000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FF0000000000
      000000000000000000000000000000000000000000000000000084000000CECE
      CE00C6C6C600CECECE00CECECE000000FF000000FF000000FF00CECECE008400
      0000000000000000FF000000FF000000FF0000000000FFFF0000FFFF0000FFFF
      0000FFFF000000000000FF00FF00000000000000000000000000000000000000
      0000000000000000000084840000848400000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000008400000084000000FF000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FF0000000000
      0000000000000000000000000000000000008400000084000000840000008400
      00009C0000008400000084000000840000000000FF000000FF000000FF008400
      00000000FF000000FF000000FF00000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000848400000000000084000000C6C6C600C6C6
      C600C6C6C60084000000C6C6C600840000008400000084000000840000008400
      0000840000008400000084000000000000008400000084848400FF0000008484
      8400FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00008400000084000000840000008400000084000000CECECE0084000000CECE
      CE0084000000840000009C0000008400000084000000840000000000FF000000
      FF000000FF000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000000000000000000000000000FF00FF000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000848400000000000084000000C6C6C600C6C6
      C600C6C6C6008400000084000000840000008400000084000000840000008400
      00008400000084000000840000000000000084000000C6C6C600FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00008400000084000000840000000000000084000000CECECE00840000008400
      00008400000084000000840000008400000084000000840000000000FF000000
      FF000000FF000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF000000000000000000000000000000000000FF00FF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600840000000000
      0000000000000000000000000000000000008400000084848400C6C6C6008484
      8400C6C6C60084848400C6C6C600848484008400000000000000000000000000
      00008400000084000000840000008484840084000000CECECE00CECECE00CECE
      CE00C6C6C600CECECE00CECECE00C6C6C600CECECE000000FF000000FF000000
      00000000FF000000FF000000FF0000000000000000000000000000000000FFFF
      0000FFFF000000000000000000000000000000000000FFFFFF00FF00FF000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000000000
      00000000000000000000000000000000000084000000C6C6C60084848400C6C6
      C60084848400C6C6C60084848400C6C6C6008400000000000000000000000000
      0000840000000000000000000000840000008400000084000000840000008400
      00009C00000084000000840000009C0000000000FF000000FF000000FF000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000FFFF0000000000000000000000000000000000000000000000000000FF00
      FF00000000000000000000000000000000000000000084000000C6C6C6008400
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000008400000084848400840000008400
      0000840000008400000084000000840000008400000000000000000000000000
      00000000000000000000848484008400000084000000CECECE00840000008400
      0000840000008400000084000000840000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00FF000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000000000000000000000000
      0000000000000000000084000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF0000000000000000000000000000000000000000000000
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
      0000000000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      00000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60084000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6008400000000000000000000000000000000000000000000000000
      00000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60084000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60084000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C60084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60084000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60084000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C6008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60084000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60084000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C60084000000C6C6C600840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60084000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60084000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C6008400000084000000840000008400000084000000840000008400
      00008400000084000000840000000000000000000000C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600C6C6C600C6C6C600000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60084000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60084000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6000000FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60000000000000000000000000000000000C6C6C600848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008484840084848400C6C6C600000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60084000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60084000000000000000000000000000000C6C6C600C6C6C6000000
      FF00C6C6C6000000FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60084000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60084000000000000000000000000000000C6C6C600C6C6C6000000
      FF000000FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60000000000000000000000000000000000C6C6C600848484008484
      8400848484008484840084848400C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60084848400848484008484
      84008484840084848400C6C6C600000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60084000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60084000000000000000000000000000000C6C6C600C6C6C6000000
      FF000000FF000000FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C60000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000084000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000084000000C6C6C6008400
      000084000000840000008400000084000000C6C6C60084000000840000008400
      0000840000008400000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      00008400000084000000000000000000000084000000C6C6C600840000008400
      0000840000008400000084000000840000008400000084000000C6C6C6008400
      0000C6C6C6008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
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
      0000000000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600840000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      00000000000084000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600840000000000000000000000FFFF0000FFFF0000000000000000
      0000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF00000000000000000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600840000000000000000000000FFFF0000FFFF000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000084000000C6C6
      C600C6C6C60084000000C6C6C600840000008400000084000000840000008400
      0000840000008400000084000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000FFFF0000FFFF0000FFFF00000000
      0000C6C6C600FFFFFF00FF0000008484840000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000084000000C6C6
      C600C6C6C6008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000084000000C6C6C6008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      000000000000FF000000FF000000848484008484840000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000084000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF000000000000FF00000084848400008400008484840000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600840000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000FFFFFF00FFFFFF0000840000848484000000
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      000000000000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000084000000C6C6C60084000000C6C6
      C600840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600840000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000FFFFFF00FFFFFF00008400008484
      840000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      00000000000000000000FFFF00000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000084000000C6C6C600840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000084000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600840000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FFFFFF00FFFFFF000000
      0000FF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000084000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF
      FF00FF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000084000000C6C6C6008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000084000000C6C6C600840000008400
      0000840000008400000084000000840000008400000084000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000000000000000
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
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031639C0000000000000000000000
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
      00000000000000000000000000000000000031639C0000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000319C9C000000000031639C0000000000319C9C000000000031639C000000
      0000319C9C000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031639C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000319C9C0000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
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
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
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
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
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
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000000000
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
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000840000000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000848484000000FF000000FF000000FF000000FF000000
      FF00000084000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000FF00FFFFFF000000
      840000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      00008400000084000000848484000000FF000000FF000000FF000000FF000000
      FF00000084000000840000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF00FFFFFF00000084000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000840000008400000084848400000000000000FF000000FF000000FF008484
      8400848484000000840000008400000000000000000000000000FFFFFF000000
      000084848400C6C6C6008484840084848400000000000000840000000000C6C6
      C600C6C6C600FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000008400000084000000000000008400
      0000FF00000084000000848484000000000000008400C6C6C600FFFFFF00C6C6
      C600848484008484840000008400000000000000000000000000000000008484
      8400C6C6C6000000000084848400FFFFFF008484840000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF008400000084000000FFFFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000084000000840000008484
      840084000000FF0000008484840000000000C6C6C60000008400C6C6C600FFFF
      FF00C6C6C600848484008484840000000000000000000000000000000000C6C6
      C60000000000C6C6C60084848400C6C6C600FFFFFF0000000000C6C6C600C6C6
      C600C6C6C600C6C6C600FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FF0000008484
      8400FF000000840000008484840000000000008484000000000000008400C6C6
      C600FFFFFF00C6C6C60084848400000000000000000000000000000000000000
      0000FFFFFF00000000008484840000000000C6C6C60000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF008400000084848400FFFFFF00FFFFFF0000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000848484000000000000FFFF0000FFFF00008484000000
      8400000084000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF0084848400C6C6C6008484840000000000C6C6C600C6C6
      C600C6C6C600C6C6C600FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF008484840084000000C6C6C600FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000848484000000000000FFFF0000FFFF00008484000084
      8400008484000000000000000000000000000000000000000000FFFFFF000000
      00008484840000000000848484008484840000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF0084848400840000008484840000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000848400FF000000848484000000000000FFFF0000FFFF00008484000084
      8400008484000000000000000000000000000000000000000000FFFFFF00C6C6
      C60000000000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF008400000084848400FFFFFF00FFFFFF008400000084000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000084840000FFFF00C6C6C6000000000000FFFF0000FFFF00008484000084
      8400008484000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF00840000008400000000FFFF00C6C6C600840000008400000000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000084
      8400008484000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00C6C6C60084000000840000008400000084000000C6C6C600FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000084
      8400008484000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600008484000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006331CE000000
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
      0000848400008484000084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400000000008484
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF0000000000000000008484000000000000848400000000
      0000FFFFFF000000000084840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF0000000000000000008484000000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00848484000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000084848400848484008484
      8400848484008484840084848400000000008484000000000000FFFFFF000000
      0000000000008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00C6C6C6000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00000000008484000000000000FFFFFF00000000008484
      00008484840000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF008484
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF008484
      8400FFFFFF00000000008484000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00C6C6
      C600000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000084848400848484008484
      8400848484000000000000000000000000000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF008484840000000000000000000000000000000000FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF008484
      8400FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000840000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
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
      00000000000084000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      000084000000FFFFFF008400000084000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000FFFFFF0000000000000000008400000084000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0084848400FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084000000FFFF
      FF000000000000000000000000000000000084000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0084848400FFFFFF00C6C6C6008484840000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400840000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000000000000000000000000000FF000000FF00
      0000FF000000008400000000000000000000FF00000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0084848400FFFFFF00C6C6C6008484840000FFFF00FFFFFF0000FFFF008484
      8400000000000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000000000000000000084000000FF000000FF00
      0000FF00000000840000008400000000000000840000FF000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF008484
      8400FFFFFF00C6C6C6008484840000FFFF00FFFFFF0000FFFF0084848400C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      00008400000084000000840000000000000000000000FF000000FF000000FF00
      0000FF0000000084000000840000008400000084000084840000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00C6C6C6008484840000FFFF00FFFFFF0000FFFF0084848400C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000008400
      00000000000084000000840000000000000000000000FF000000FF0000000084
      0000008400000084000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF0084848400C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000008484
      8400840000000000000000000000000000000000000084000000840000000000
      00000000000000000000840000000000000000000000FF000000008400000084
      0000008400000084000000840000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000FFFF0084848400C6C6C600C6C6C600C6C6C6008484
      8400840000000000000000000000000000000000000000000000000000000000
      0000848484008400000084000000840000008400000000000000000000000000
      00000000000000000000000000000000000000000000FF000000C6C6C6000084
      0000008400008400000000840000008400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600000000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FFFF
      FF00C6C6C600FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C6C6
      C600FFFFFF000084000000840000008400000084000000840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084840000C6C6C60000840000008400000084000000000000000000000000
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
      8400000084000000630000006300000063000000630000003100000031000000
      3100080808000000310008080800101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      840000008400000063000000630031319C003131630000006300313163000000
      3100000031000000310008080800080808000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      84000000840031319C00F7F7F700FFFFFF00FFFFFF00E7E7E700C6C6C6000000
      3100000031000000310008080800080808000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084009C9CCE00F7F7F70031319C0094ADAD00FFFFFF0063639C000000
      3100000031000000310008080800080808000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      840000008400D6D6D600C6C6C6000000630031316300FFFFFF00313163000000
      3100000031000000310010101000080808000000000000FFFF00000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400000084009C9CCE00F7F7F7003131630031316300FFFFFF00313163000000
      31000000310008080800101010000808080000000000FFFFFF0000FFFF000000
      0000008484000084840000848400008484000084840000848400008484000084
      84000084840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C600000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      84000000630031316300F7F7F700F7F7F700CECECE00FFFFFF00313163000000
      3100000031000808080010101000080808000000000000FFFF00FFFFFF0000FF
      FF00000000000084840000848400008484000084840000848400008484000084
      84000084840000848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      84000000840000008400313163009C9CCE00CECECE00639CCE00003163000000
      31000000310008080800101010000808080000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000C6C6C60000000000C6C6C600C6C6C6008484
      8400C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      84000063CE00009CFF00000063000000630000CEFF0000CEFF0000CEFF000063
      CE00000031001010100008080800080808000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000848484000000000000000000C6C6C6008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      8400009CFF0000CEFF0000319C000000630000CEFF00003163000031630000CE
      FF000000310008080800080808001010100000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000084848400C6C6C600C6C6C6008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000084000031
      9C00009CFF0000639C00009CCE000000310000CEFF00003163000000310000CE
      FF00003163000808080010101000101010000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000084000000840000008400009C
      CE000063CE000000840000CEFF000031630000CEFF00009CCE00009CCE00009C
      FF00000031000808080008080800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000084000000840000008400009C
      CE00000084000000630000639C0000319C0000CEFF000063CE00009CCE000031
      3100000031000808080010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000084000000
      84000000630000003100000063000000310000CEFF0000316300000031000000
      3100080808001010100008080800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000084000000
      630000006300000063000000630000003100009CCE0000316300000031000000
      3100080808001010100010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000084000000
      6300000063000000630000006300000031000000310000003100000031000000
      3100080808001010100008080800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000630063000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000636300003131000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063006300630063009C00CE008400840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063630000313100000000000000000000636300000000000000
      00000000000000636300009C9C00000000000000000000000000000000000031
      3100003131000031310000313100003131000031310000313100003131000031
      3100003131000031310000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000000000000000000000006300
      6300630063009400D600CE63CE00C6D6EF00C6C6C60084008400000000000000
      000000000000000000000000000000000000000000005A5A5A005A5A5A005A5A
      5A00006363000063630000313100006363000063630000636300000000000000
      31000063630000636300009C9C00000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C00003131000000000084848400C6C6C600C6C6C600C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6
      C600848484007373730000000000000000000000000063006300630063009C00
      CE00CE63CE00D6D6D600D6E7E700D6D6D600C6C6C600C6C6C600840084000000
      00000000000000000000000000000000000000000000A5A5A500F7FFFF00EFEF
      EF0000636300F7F7F700009C9C000063630000003100FFFFFF0063CECE000000
      310000636300009C9C00F7FFFF00000000000000000000000000009C9C009CCE
      FF009CFFFF009CCEFF00CEFFFF009CCEFF009CFFFF009CCEFF009CFFFF009CCE
      FF009CCEFF00009C9C00003131000000000084848400C6C6C600848484008484
      840000000000000000000000000000000000848484008484840084848400C6C6
      C60084848400737373000000000000000000840084009400D600CE63CE00D6E7
      E700D6E7E700C6C6C600C6C6C60084008400A5A5A50094ADAD00C6C6C6008400
      84000000000000000000000000000000000000000000A5A5A500F7FFFF00D6E7
      E7000063630000636300F7F7F700009C9C009CFFFF00F7FFFF009CFFFF0063CE
      CE00009C9C00F7FFFF00000000000063630000000000009C9C009CFFFF009CCE
      FF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CFFFF009CCEFF00CEFF
      FF009CCEFF00009C9C00003131000000000084848400C6C6C600C6C6C600C6C6
      C60084848400848484008484840084848400C6C6C600C6C6C600C6C6C600C6C6
      C6008484840063636300000000000000000084008400A5A5A500D6E7E700C6C6
      C60094ADAD00840084009C009C009C009C000808080084848400A5A5A500C6C6
      C6008400840000000000000000000000000000000000A5A5A500F7FFFF00D6E7
      E7000063630000313100006363009CFFFF0063CECE00006363000063630063CE
      CE009CFFFF00009C9C00006363000063630000000000009C9C009CFFFF009CFF
      FF00CEFFFF009CFFFF009CFFFF009CCEFF00CEFFFF009CCEFF009CFFFF009CCE
      FF009CCEFF00009C9C00003131000000000084848400C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000FF00C6C6
      C6008484840073737300000000000000000084008400A5A5A500C6C6C6008400
      840084008400CE00CE00CE00CE00CE00CE009C009C00080808005A5A5A00A5A5
      A50094ADAD0084008400000000000000000000000000A5A5A500F7FFFF00C6D6
      EF00003131009CFFFF009CFFFF009CFFFF000063630063CECE00009C9C000063
      63009CFFFF009CFFFF00F7FFFF000063630000000000009C9C009CFFFF009CFF
      FF009CFFFF009CCEFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF0063CECE00009C9C00003131000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000840084008400840084008400CE00
      CE00CE00CE009C009C009C009C00CE00CE00CE00CE009C009C00080808005A5A
      5A00A5A5A50084848400840084000000000000000000A5A5A500F7FFFF00D6E7
      E700C6DEC60000636300009C9C0000636300006363009CFFFF00009C9C000063
      630000636300009C9C000063630000000000009C9C00FFFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCE
      FF00009C9C00D6E7E70000313100000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60073737300CECECE00737373000000
      000073737300FFFFFF00B5B5B5000000000084008400FF9CFF00CE00CE00CE00
      CE00CE00CE0000FFFF0031CEFF0031639C009C009C00840084009C009C000000
      00005A5A5A00A5A5A500840084000000000000000000A5A5A500F7FFFF00D6E7
      E700D6E7E70000636300F7F7F700009C9C00006363009CFFFF00009C9C000063
      6300009C9C00F7FFFF000063630000000000009C9C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009CCEFF0063CE
      CE00009C9C00D6E7E700D6E7E7004A4A4A000000000000000000848484008484
      84008484840084848400848484008484840073737300C6C6C600848484008484
      84008484840084848400C6C6C600000000000000000084008400FF9CFF00CE00
      CE00CE00CE00CE00CE00CE00CE0000FFFF0000FFFF0031CEFF0031639C008400
      8400000000005A5A5A00840084000000000000000000A5A5A500F7FFFF00C6C6
      C60094ADAD00003131000031310094ADAD00006363009CFFFF00009C9C000063
      630000000000009C9C00009C9C0000000000009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C
      9C00D6E7E700D6D6D6004A4A4A00000000000000000000000000000000000000
      00000000000000000000000000000000000063636300CECECE00C6C6C600CECE
      CE00B5B5B500C6C6C600B5B5B50000000000000000000000000084008400FF9C
      FF00CE00CE00CE00CE00CE00CE00CE00CE00CE00CE0031CEFF0000FFFF006300
      63008400840000000000840084000000000000000000A5A5A500F7FFFF00C6C6
      C60018181800A5A5A5009C9C9C009C9C9C0000636300FFFFFF00F7FFFF000063
      6300000000000000000000000000000000000000000000000000009C9C008484
      8400C6D6EF00D6E7E700D6E7E7009C310000D6D6D6009C310000D6E7E700D6D6
      D600D6E7E7004A4A4A0000848400000000000000000000000000000000000000
      00000000000000000000000000000000000073737300FFFFCE00FFFFCE00FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00000000000000000000000000000000008400
      8400FF9CFF00CE00CE00CE00CE0000FFFF0000FFFF0000FFFF00319CCE006300
      63008400840084008400000000000000000000000000A5A5A500F7FFFF00C6C6
      C60018181800F7FFFF00F7FFFF009C9C9C00D6E7E70000636300006363004A4A
      4A00000000000000000000000000000000000000000000000000009C9C0063CE
      CE0084848400F7FFFF00FFFFFF00FFFFFF009C310000F7FFFF00F7F7F700D6E7
      E7004A4A4A000084840000848400000000000000000000000000000000000000
      00000000000000000000000000000000000073737300FFFFFF00FFFFFF00FFFF
      FF00FFFFCE00FFFFCE00FFFFCE00000000000000000000000000000000000000
      000084008400FF9CFF00CE00CE00CE00CE0031639C0031639C00630063008400
      84008400840063006300000000000000000000000000A5A5A500F7FFFF00C6C6
      C60018181800F7FFFF00F7FFFF00A5A5A500D6E7E700D6E7E700C6DEC6005252
      5200000000000000000000000000000000000000000000000000009C9C0063CE
      CE0063CECE0084848400FFFFFF00FFFFFF00F7F7F700FFFFFF00F7F7F7004A4A
      4A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000063636300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000084008400FF9CFF00CE00CE00CE00CE00CE00CE009C009C006300
      63000000000000000000000000000000000000000000A5A5A500F7FFFF00C6C6
      C60018181800181818001818180094ADAD00D6D6D600EFEFEF00D6E7E7004A4A
      4A0000000000000000000000000000000000000000000000000000000000009C
      9C00009C9C00009C9C0084848400FFFFFF00F7FFFF00D6E7E7004A4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073737300FFFF9C00FFFF9C00FFFF
      9C00FFFF9C00FFFF9C00FFFF9C00000000000000000000000000000000000000
      0000000000000000000084008400FF9CFF00CE00CE0063006300000000000000
      00000000000000000000000000000000000000000000A5A5A500F7FFFF00D6E7
      E700D6D6D600C6D6EF00D6D6D600D6E7E700D6D6D600C6D6EF00D6D6D6004A4A
      4A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084848400F7F7F7004A4A4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000840084000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
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
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000848400008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000848400FFFF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00008484000000000000000000000000000000000000848400FFFFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000848400FFFF
      FF0000848400008484000084840000848400008484000084840000848400C6C6
      C600008484000000000000000000000000000000000000848400FFFFFF000084
      8400008484000084840000848400008484000084840000848400C6C6C6000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840084000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000848400FFFF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00008484000000000000000000000000000000000000848400FFFFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000008400840084008400840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840084000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000848400FFFF
      FF0000848400008484000084840000848400008484000084840000848400C6C6
      C600008484000000000000000000000000000000000000848400FFFFFF000084
      8400008484000084840000848400008484000084840000848400C6C6C6000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000840084008400840084008400840084008400840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000840084008400840084008400840084008400840084008400840084000000
      000000000000000000000000000000000000000000000000000000848400FFFF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00008484000000000000000000000000000000000000848400FFFFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000008400
      8400840084008400840084008400840084008400840084008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400840084008400840084008400840084008400000000000000
      000000000000000000000000000000000000000000000000000000848400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00008484000000000000000000000000000000000000848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084008400840084008400840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008484000000000000848400008484000084840000848400008484000000
      0000008484000000000000000000000000000000000000000000000000000084
      8400000000000084840000848400008484000084840000848400000000000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000000000000000000000
      0000000000000000000000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      8400000000000000000000000000000000000000000000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084840000000000000000000000
      0000000000000000000000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      8400000000000000000000000000000000000000000000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000848400C6C6C600000000000000
      0000000000000084840000848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      8400C6C6C6000000000000000000000000000084840000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400C6C6C6000000
      0000000000000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000848400C6C6C60000000000000000000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000848400008484000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF633100CE003100840000009C003100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF633100FF9C6300FF9C6300FF6331009C003100FF6363000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000840000000000
      0000FF633100FFCE6300FF9C6300CE00310000000000FF9C63009C0031000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5B500C6C6C60073737300000000000000000084848400737373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400C6C6C600C6C6C6000000000084848400C6C6
      C600000000000000000000000000000000005A5A5A005A5A5A00840000008400
      0000FFFF6300FFCE6300CE0031005A5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C6007373730063636300CECECE00A5A5A500A5A5A50000000000000000008484
      8400737373000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000008484
      840084848400C6C6C6008484840084848400FFFFFF00FFFFFF00000000008484
      8400C6C6C6000000000000000000000000005A5A5A00CEFFFF0084000000FFFF
      6300FFFF6300CE003100CEFFFF00CEFFFF00CEFFFF00F7FFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00000000000000000084848400737373007373
      7300CECECE00CECECE00C6C6C600A5A5A500A5A5A50094949400848484000000
      0000000000007373730000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600848484000000000000000000000000008484840084848400C6C6
      C600C6C6C60084848400FFFFFF0000FFFF00C6C6C60084848400FFFFFF000000
      000084848400C6C6C60000000000000000005A5A5A00FFFFFF0084000000FFFF
      6300FFFF6300CE003100CEFFFF00CEFFFF009C6300009C6300009C6300009C63
      0000CE6300009C630000CEFFFF00000000000000000073737300CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600A5A5A500A5A5A50084848400949494008484
      840084848400000000000000000000000000000000008484840000848400C6C6
      C600C6C6C600C6C6C600008484000084840000848400C6C6C600C6C6C600C6C6
      C6000084840084848400000000000000000000000000C6C6C600C6C6C600FFFF
      FF00C6C6C60000FFFF00FFFFFF000000000084848400FFFFFF0000FFFF00C6C6
      C6000000000084848400C6C6C600000000005A5A5A00FFFFFF0084000000FF63
      3100FF633100FF633100CE003100CEFFFF00CECECE00D6D6D600CECECE00CECE
      CE00CECECE00D6D6D600F7FFFF000000000000000000FFFFFF00CECECE00CECE
      CE00C6C6C600C6C6C600FFFFFF00A5A5A500A5A5A50094949400848484008484
      840073737300848484007373730000000000000000008484840000FFFF000084
      8400C6C6C6000084840000000000000000000000000000848400C6C6C6000084
      8400C6C6C60084848400000000000000000084848400C6C6C60000FFFF000000
      00000000000084848400C6C6C60000FFFF00FFFFFF008484840000000000FFFF
      FF00FFFFFF000000000084848400848484005A5A5A00FFFFFF00FFFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00F7FFFF009C6300009C6300009C6300009C63
      00009C6300009C630000CEFFFF000000000000000000FFFFFF00C6C6C600C6C6
      C600FFFFFF00FFFFFF00CECECE00CECECE00D6D6D60094949400848484008484
      8400848484007373730063636300000000000000000084848400FFFFFF00FFFF
      FF000084840000000000FFFFFF00FFFFFF0000FFFF000000000000848400C6C6
      C600C6C6C60084848400000000000000000084848400FFFFFF00000000008484
      840084848400C6C6C60084848400FFFFFF0000000000FFFFFF0000FFFF00FFFF
      FF00FFFFFF0000FFFF0000000000000000005A5A5A00FFFFFF00FFFFFF00FFFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00CECECE00CECECE000000FF003100CE00CECECE00CECECE00C6C6C6008484
      840084848400848484007373730000000000000000008484840000FFFF00C6C6
      C60000000000FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00000000000084
      8400C6C6C600848484000000000000000000000000008484840000FFFF000000
      0000FFFFFF0000FFFF0000000000C6C6C60000FFFF00FFFFFF00FFFFFF000000
      840084848400FFFFFF00FFFFFF00000000005A5A5A00FFFFFF009CCEFF009CCE
      FF009CCEFF009CCEFF00CEFFFF00840000008400000084000000840000008400
      0000CEFFFF000000CE0000009C000000000000000000FFFFFF00000000000000
      000000FF0000009C6300CECECE00CECECE00CECECE0073737300848484000000
      0000C6C6C6006363630073737300000000000000000084848400C6C6C6000000
      000000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF000000
      000000848400848484000000000000000000000000000000000084848400FFFF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF000000840000008400C6C6
      C60000FFFF00FFFFFF0084848400848484005A5A5A00FFFFFF0000639C000063
      9C0000639C0000639C00CEFFFF00CEFFFF0084000000CE9C0000FF633100CE00
      3100CEFFFF006300FF000000CE0000000000000000008484840084848400FFFF
      FF0000000000CECECE00CECECE008484840073737300C6C6C600C6C6C6000000
      0000C6C6C600737373006363630000000000000000008484840000000000FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00000000000084840000000000000000000000000000000000000000008484
      8400FFFFFF0000FFFF00FFFFFF000000840000008400C6C6C600FFFFFF00FFFF
      FF00848484008484840000000000000000005A5A5A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CEFFFF00CEFFFF00CE003100CE9C0000CE9C0000CE00
      3100CEFFFF00CEFFFF00CEFFFF00000000000000000000000000000000008484
      840084848400FFFFFF0073737300C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000084848400FFFFFF0084848400C6C6C600FFFFFF0000FFFF00848484008484
      8400000000000000000000000000000000005A5A5A005A5A5A005A5A5A005A5A
      5A005A5A5A005A5A5A005A5A5A00CE003100FFCE6300CE9C000084000000CE00
      31005A5A5A005A5A5A005A5A5A00000000000000000000000000000000000000
      0000000000008484840084848400CECECE0000000000F7F7F700F7F7F700F7F7
      F700000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000008484840000FFFF00FFFFFF008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000009C00
      3100FF9C630000000000FF633100FFFF6300FFCE6300FF63310000000000CE00
      3100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008484840000000000F7F7F700F7F7F700FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF9C
      63009C003100FF633100FFFF6300FFCE6300FF9C630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400F7F7F700F7F7F700FFFF
      FF00848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF6300FFFF6300FFCE6300FF9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000808080000000000080808000808080008080800080808000808
      0800080808000808080000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C0008080800000000000000000084000000FFFFFF008400
      0000000000000000000000000000000000000000000084000000FFFFFF008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000084000000840000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000009C9C00FFFF
      FF009CCEFF00CEFFFF009CCEFF009CFFFF009CCEFF009CCEFF009CCEFF00C6D6
      EF0063CECE00009C9C0008080800000000000000000084000000840000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000084000000840000008400000084000000840000FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000009C9C00FFFFFF009CFF
      FF009CFFFF009CCEFF009CFFFF009CCEFF00CEFFFF009CCEFF009CCEFF009CCE
      FF0063CECE0008080800009C9C00080808000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000084000000840000FFFFFF00FFFFFF0000840000FFFF
      FF00FFFFFF0000000000000000000000000000000000009C9C00FFFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF00009C9C0008080800009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF0000840000FFFF
      FF00FFFFFF00000000000000000000000000009C9C00FFFFFF009CFFFF009CFF
      FF009CFFFF00CEFFFF009CCEFF009CFFFF009CFFFF009CCEFF009CFFFF0063CE
      CE000000000063CECE0063CECE00080808000000000084000000840000008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000840000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000840000FFFF
      FF00FFFFFF00000000000000000000000000009C9C00FFFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF00CEFFFF009CCEFF0063CE
      CE000808080063CECE0063CECE00000000000000000084000000FFFFFF008400
      0000000000000000000000000000000000000000000084000000FFFFFF008400
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000840000FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C
      9C0063CECE009CFFFF0063CECE00000000000000000084000000840000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000840000FFFFFF00FFFFFF000084000000840000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000009C9C00FFFFFF009CFF
      FF009CFFFF00CEFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000084000000840000008400000084000000840000FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000009C9C00FFFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000084000000840000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000009C9C00FFFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF00FFFFFF00009C9C00009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000084000000840000008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000009C9C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00009C9C0000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF008400
      0000000000000000000000000000000000000000000084000000FFFFFF008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000009C
      9C00009C9C00009C9C00009C9C00009C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
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
      00000000000000000000212121005A5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080808000000
      0000080808000000000000000000000000000000000000000000000000000000
      0000000000001818180084848400525252005A5A5A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0008080800000000000000000000000000000000000000
      0000181818008484840063633100CECE3100525252005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009C9C00CEFFFF009CCEFF009CFF
      FF009CCEFF009CFFFF009CCEFF009CFFFF009CCEFF009CFFFF009CCEFF009CCE
      FF009CCEFF0063CECE0008080800000000000000000000000000000000001818
      18008484840063633100FFFF6300FFFF9C00CECE3100525252005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084000000FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CCEFF00CEFFFF009CCEFF009CFFFF009CCEFF009CFFFF009CCE
      FF009CCEFF0063CECE0000000000000000000000000000000000181818008484
      840063633100FFFF63003131000000000000CECE3100CECE3100525252005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009C9C00CEFFFF009CFFFF00CEFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF00CEFFFF009CCEFF009CFF
      FF009CCEFF0063CECE0000000000000000000000000021212100848484006363
      3100FFFF6300CECE9C00949494005A5A5A0031313100FFFF9C00CECE31005252
      52005A5A5A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084000000FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CCEFF009CFFFF009CCEFF009CFFFF009CCE
      FF009CFFFF0063CECE000000000000000000000000000000000063633100FFFF
      6300FFFF9C00A5A5A500848484005A5A5A005A5A5A0063633100FFFF9C00CECE
      3100212121000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084000000FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF00CEFFFF009CFFFF009CFFFF00CEFFFF009CFFFF009CFFFF009CCEFF009CFF
      FF009CCEFF0063CECE0000000000000000000000000000000000CECE6300FFFF
      6300FFFF9C00292929000084840000CECE00003131009C9C3100FFFF9C00FFFF
      6300313100000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084000000FFFF
      FF00840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000000000000000
      000000000000000000000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CCEFF00CEFFFF009CCE
      FF009CFFFF0063CECE000000000000000000000000000000000021212100CECE
      63009C9C310000CECE0031FFFF0031FFFF0031FFFF0000313100FFFF9C003131
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF0084000000000000000000
      000000000000000000000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CCEFF0063CECE0000000000000000000000000000000000000000001818
      18000084840063FFFF00009C9C002929290063FFFF0031CECE00181818000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000000000000000000000000
      000000000000000000000000000000000000009C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE0000000000000000000000000000000000000000000063
      630031FFFF0031FFFF009CCECE00639C9C0063FFFF0031FFFF00008484000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C00000000000000000000000000000000000000000031CE
      CE0031FFFF00CEFFFF00CEFFFF00319C63009CFFFF0063FFFF0000CECE000000
      000000000000000000000000000000000000000000000000000084000000FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000009C9C00FFFFFF00CEFF
      FF00CEFFFF009CFFFF009CFFFF00009C9C000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000CE
      CE00FFFFFF00FFFFFF00A5A5A5001818180063FFFF009CFFFF0000CECE000000
      000000000000000000000000000000000000000000000000000084000000FFFF
      FF00FFFFFF008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      3100CEFFFF00F7FFFF0084848400000000009CFFFF0063FFFF00008484000000
      000000000000000000000000000000000000000000000000000084000000FFFF
      FF00840000008400000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084000000FFFFFF00840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000848400CEFFFF009CCECE00639C9C0063FFFF0000CECE00080808000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031310000CECE0000CECE000084840010101000000000000000
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
      000000000000C6C6C600FFFFFF00C6C6C600FFFFFF0000000000FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000000000000000
      000000000000000084000000FF00000000000000000008080800000000000000
      0000000000000000000000000000000000000000000008080800000000000808
      0800080808000000000000000000000000000000000000000000000000000808
      0800000000000000000000000000000000000000000000000000000000000000
      0000080808000000000000000000000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C60000000000000000000000000084000000FF00
      0000FF0000008400000084000000FF00000084000000FF000000840000008400
      000000008400FF00FF000000FF0000008400009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0000313100000000000000000000000000000000000000
      0000FFFFFF00000000008484840000000000C6C6C600C6C6C600C6C6C6000000
      00008484840000000000FFFFFF00000000000000000084000000FF000000FF00
      0000FF000000FF000000FF00000000840000FF00000084000000848400000000
      8400FF00FF000000FF000000840000000000009C9C00CEFFFF009CCEFF009CFF
      FF009CCEFF009CFFFF009CCEFF009CFFFF009CCEFF009CFFFF009CCEFF00CECE
      FF009CCEFF0063CECE000808080000000000009C9C00CEFFFF009CCEFF009CCE
      FF009CCEFF00313131003131310031313100313131009CCEFF009CCEFF009CCE
      FF009CCEFF0063CECE0000313100000000000000000000000000000000000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C6000000000000000000FF00000000840000FF00
      0000FF000000FF0000000084000084848400000000000000000084848400FFFF
      FF000000FF00000084000000000000000000009C9C00CEFFFF009CFFFF00CEFF
      FF009CFFFF009CCEFF00FF0000009CCEFF00FF0000009CCEFF009CFFFF009CCE
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF0052525200F7F7F7004A4A4A00F7F7F700C6C6C600313131009CFFFF009CCE
      FF009CCEFF0063CECE0000313100000000000000000000000000000000008400
      000000000000C6C6C600FFFFFF00C6C6C600FFFFFF0000000000FFFFFF00C6C6
      C600FFFFFF00C6C6C60000000000000000008484840000840000FF000000FF00
      0000FF000000C6C6C60084848400C6C6C60000000000C6C6C600000000008484
      840084848400840000000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF00840000009CCEFF009CFFFF009CCEFF009CFF
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF008484
      8400CEFFFF00FFFFFF00F7F7F700C6C6C600319CCE00319CCE00313131009CFF
      FF009CCEFF0063CECE0000313100000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000084000000000000000000
      0000000000000000000000000000000000008484840084840000C6C6C600FF00
      00008484000084848400C6C6C60000000000C6C6C60000000000C6C6C6000000
      0000FF000000840000000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF00FF000000FF000000FF000000FF000000FF0000009CFFFF009CCE
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009494
      940073737300CEFFFF00FFFFFF004242420031639C00319CCE00313131009CCE
      FF00CEFFFF0063CECE0000313100000000008484840084000000FF000000FF00
      0000FF00000000840000008400000084000000840000FF000000840000008484
      8400000000000000000000000000000000008484840084840000C6C6C600C6C6
      C600C6C6C6008484840000000000C6C6C60000000000C6C6C600000000000000
      000084000000840000000000000000000000009C9C00CEFFFF009CFFFF00CEFF
      FF009CFFFF009CFFFF009CFFFF00840000009CFFFF009CFFFF009CCEFF00CEFF
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009494
      9400CEFFFF00FFFFFF00CEFFFF004A4A4A004242420031639C00313131009CFF
      FF009CCEFF0063CECE00003131000000000084848400FF000000FF000000FF00
      0000FF0000000084000000840000008400000084000084840000FF0000000000
      00000000000000000000000000000000000084848400C6C6C600FFFFFF00C6C6
      C600C6C6C60084848400FFFFFF0000000000C6C6C60000000000C6C6C6000000
      0000FF000000840000000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF00FF0000009CFFFF00FF0000009CCEFF009CFFFF009CCE
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF0094949400CEFFFF0073737300FFFFFF004A4A4A00424242009CFFFF009CCE
      FF009CFFFF0063CECE00003131000000000084848400FF000000FF0000000084
      00000084000000840000008400000084000000840000FF000000FF0000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FF0000000084000084848400FFFFFF0000000000C6C6C60000000000FF00
      0000FF000000848400000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CCEFF0063CECE000000000000000000009C9C00CEFFFF009CFFFF009CFF
      FF009CFFFF009494940084848400949494009CFFFF004A4A4A009CFFFF009CFF
      FF009CCEFF0063CECE00003131000000000084848400FF000000008400000084
      0000008400000084000000840000840000008484000084000000008400000000
      00000000000000000000000000000000000084848400C6C6C600FFFFFF00C6C6
      C600FFFFFF00FF000000FF000000848484008484840000000000848400000000
      000000000000FF0000000000000000000000009C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE000000000000000000009C9C00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF009CFFFF0063CECE00003131000000000084848400FF000000C6C6C6000084
      000000840000840000000084000000840000FF00000000840000008400000000
      0000000000000000000000000000000000000000000084848400C6C6C600FFFF
      FF000000000000000000FF000000FF000000FF00000000000000848400000000
      000000000000000000000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C000000000000000000009C9C0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE00009C9C00009C9C00009C9C00009C
      9C00009C9C00009C9C0000000000000000008484840084848400FF000000FFFF
      FF00C6C6C600FF000000FF000000FF000000FF00000000840000008400008484
      8400000000000000000000000000000000000000000084848400FFFFFF00C6C6
      C600848400000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000009C9C00F7F7F700CEFF
      FF00CEFFFF009CFFFF009CFFFF00009C9C000000000000000000000000000000
      00000000000000000000000000000000000000000000009C9C00FFFFFF00CEFF
      FF00CEFFFF009CFFFF009CFFFF00009C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00C6C6
      C600FFFFFF000084000000840000008400000084000000840000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00FF000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009C9C00009C
      9C00009C9C00009C9C00009C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      840084840000C6C6C60000840000008400000084000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840084848400C6C6C600FFFFFF00FF0000008484000084840000848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400000000000000
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
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000000000000000000084000000000000000000000084000000840000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008400
      0000000000000000000084000000000000008400000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000008484008484
      840000848400848484000084840084000000FFFFFF0084000000840000008400
      00008400000084000000FFFFFF00840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008400
      0000000000000000000000000000000000000000000000000000000000008400
      0000000000000000000084000000000000008400000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00840000000000000000000000848484000084
      840084848400008484008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000000000008400000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000008484008484
      840000848400848484000084840084000000FFFFFF0084000000840000008400
      0000FFFFFF008400000084000000840000000000000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000008400000084000000840000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00840000000000000000000000848484000084
      840084848400008484008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0084000000FFFFFF00840000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000008400000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000008484008484
      840000848400848484000084840084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008400000084000000000000000000000084000000840000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF000000000000000000FFFF
      FF00840000008400000084000000840000000000000000000000848484000084
      8400848484000084840084848400840000008400000084000000840000008400
      0000840000008400000000000000000000000000000084000000000000000000
      0000000000008400000084000000000000000000000000000000000000008400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FFFFFF0084000000000000000000000000000000008484008484
      8400008484008484840000848400848484000084840084848400008484008484
      8400008484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000000000000000000000000000000000000848484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000848484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF000000
      000000000000FFFFFF0000000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000008484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000008484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000084
      8400848484000000000000FFFF00000000000000000000FFFF00000000000084
      8400848484000084840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000DEDEDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000DEDEDE00DEDE
      DE000000000000848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000DEDEDE00DEDE
      DE000000000000848400000000000000000084848400FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000DEDEDE00DEDE
      DE000000000000848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000848400000000000000000084848400FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      84000084840000848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000084840000848400000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE000000000000848400000000000000000084848400FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000C6C6C60000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE000000000000848400000000000000000084848400FFFFFF0000000000C6C6
      C60000000000FFFFFF0000000000C6C6C60000000000C6C6C600000000000000
      0000000000000000000084000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE000000000000848400000000000000000084848400FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C60000000000C6C6C60000000000C6C6C600C6C6
      C600C6C6C6000000000084000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00000000000084840000000000000000008484840084848400848484008484
      840000000000C6C6C60000000000C6C6C60000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000000000000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE0000000000DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6000000000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000800100000100010000000000000C00000000000000000000
      000000000000000000000000FFFFFF00FFFFAAC600000000D019D01D00000000
      8001A00B000000008003C0050000000000010000000000000001000100000000
      0001000000000000000100000000000000010001000000000001000000000000
      000100000000000000010000000000008001800300000000C003C00200000000
      A005A00D00000000E003E01B00000000FFFFF800FC00FFFFEEDDE000F000D00B
      80008000C000C00D000000008000800380000000000080038000000000000001
      8000000000000001000000000000000180000001000000018000600130000001
      00001003880100018004C0EFE07700018387F117F88B8001838FFD09FE84C007
      3FFFFE07FF03A005FFFFFF1FFF8FE00FAAF5D615FB83FFBBD51AA805FF010000
      AE1DE002FE000000D1068001FE000000A883C000C0000000C041800080000000
      804080009400860081000000A001E802000000009503840301000000A29FC601
      04000000941F8F2180018001A89F802180018001801D8201C003C003801FC003
      A005A006803FA085E81EE01DFFFFEEEEF003FFFFAB95E001F007FE3FD4168000
      F00BFE0FAE150000F015FE03D00B0100F00BFE01B0428281E615F801C0018101
      C01BF80181808002A237F0018040C0033215F00100408005201BC0010040C007
      2201C0010040A00A065FF0010180D28D059FF0018041B015071FF8018043C81B
      803FF8018005B02AC07FF801E00EEC77FFFFF800FFFFFFFFFFFFC004A07FFFFF
      FFC78002803FC000FFC1C000800FA490FFA78000800F8000BFA50000800F8004
      803D0000E00F800480210000E00F8000817F0000E00F8004803F0000E0018004
      80BF8000E00F8000801FC002E00D800C805FA000E0038000FF8FF800FB7B8000
      FFDF0000FEFDFFFFFFFF0000FDFFFFFFFFFFC3C3FFFFFFFFFCFF8080FE7F887F
      FB7F8000F81FB047FF1F8200FC3FB041F11F8382FE7FFFA7F1E38387FFFFBFA5
      C0208387F00F803DC0208387F00F802100008387F00F817F001883E7F00F803F
      00C09BF7E00780BF000083F7F00F801F00008103F81F805F00038103FC1FFF8F
      000383FFFE5FFFDFFFFF83FFFFDFFFFFFFFFFFFFFFFFFFFFEFDFF007F801003F
      C78FF007F801803FAB57F007F8011E3FEFDFF007F8010C3FE801C007C001803F
      E801C007C00101BFE801C007C00001B8F801C01FC00884748001001F00010600
      80010010000707208001001100078083801F00700011E70F801F00760018F7EF
      801F007C003CFFF7801F007D003FFFFBFFFFFFFFFFFFFFFFFFFFF801FFDFFBFF
      8003F801FFCFF3FF80030001FFD7EBFF80030001F01BD80F80030001F7FDBFEF
      8003000107FE7FE08003000107FDBFE080030003001BD800800300030057EA00
      80030003004FF20080030003005FFA0080030003007FFE0080030003007FFE00
      80030003FFFFFFFFFFFF0003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF801FFFF
      FFFFFFFFF8018003FFFFFFFFF801800300000000F80180030000F1F8C0018003
      00002060C001800300003060C0018003000010C0C00F800300001FC0000F8003
      00000980000F800300000D80000F800300000700003F800300000700003F8003
      00000200003F800300000200003FFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF7FFFFF
      8FFFFFFFFFFFC0018C01C27FE13FDFFD8FFFFFFFFFFFDF7DFFFFC200E1005FFD
      FFFFFFFFFFFFDF7D8FFFDE07EF03DFFD8C019E07E703D5558FFF07FF83FFDFFD
      FFFF9E00E7005F7DFFFFDE00EF005FFD8FFFFFFFFFFFDF7D8C01C200E1005FFD
      8FFFFFFFFFFFC001FFFFFEFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFF
      FFFFFFFFFFFFEFFFE007F8018001DC01FFFFFFFFFFFF8FFF800180018001FFFF
      FFFFFFFFFFFF8FFFE007F8018001DFFFFFFFFFFFFFFFEC018001800180019FFF
      FFFFFFFFFFFFFFFFE007F80180018FFFFFFFFFFFFFFFDFFF8001800180019C01
      FFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFC01FFFFFFFFFFFFFFFFF801F807FC0FFF07FFFFFC63FF3FFE73F8001
      C63FF9FFE73FFFFFC63FF9FFE73F801FC07FFCFFE73FFFFFC63FFCFFE73F8001
      C63FFE7FE73FFFFFC63FFE7FE73F801F807FFC1FC21FFFFFFFFFFFFFFFFF8001
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FFFE7FFFFFFEFFC078000FFFFFF9F
      F8038000FDBFFF1FE0018000FDBF800FB0008000FDBF000720008400FDBF0007
      80008800FDBF0007C0009500F1BF0007E0058000E1BF0007F0078400C1BF0007
      F0038000C1BF0007F0038000C1BF0007F0038000E1BF0007F0038000F00F0007
      F8038000FFFF0007FC03FFDFFFFF800FFFFFFFFFFFF0FFFF8000FFFFF800FFFF
      BF7E00000008C081BF3E00000110FFFFBF1E00000020C081BF0E00000040FFFF
      BF0E00000080C081BF060000011CFFFF800000000000C081BF4200000000FFFF
      BF4200000000C081BF6000000000FFFFBF6200000000C081BF7E00000000FFFF
      BF7E00000000FFFF8000FFFFFFFFFFFFFFFFFFFFFFFFFEFFF9FF07FFFFFFFCFF
      F0FFF9FFFFFFFA0FE0FFFC7FFFFFF7EFC07FF83FFFFFF7EF863FF01FF3FFC20F
      CF3FE00FE7C1801FFF9FC007EFE18017FFCF8003EFF18013FFE70003EFE98005
      A9C3E007E79D807EAAB9F803F07F807E89BDFC01FFFFC005AABFFE20FFFFC013
      D9CFFFF0FFFFF037FFFFFFF9FFFFFFFFFFFFE000FFFFFFFFFFFFC000FFFF000C
      FFFF8000001F0008FFFF8000000F0009FDFF800000070007F8FF800000030023
      F07F800000010003F23F800000000083F71F8000001F00C3FF8F8000001F0007
      FFCF0000001F000FFFEF00008FF1000FFFFF0000FFF9000FFFFF0000FF75001F
      FFFF0000FF8F003FFFFF0000FFFF007FFFFFFE7FFF9FFFFF8007F83FF999E003
      0003E01F8001C0010001800F8000C00100010007800080010001000380008001
      000100018000800100010000800100018000000080010000C000800180090001
      FF00C001800FC001FF00E000800FC001FF00F001800FC00FFF00F807800FE01F
      FF00FC1F800FFE3FFF81FE7F800FFF7FFFFFFFFFFFFFFFFFC007800FFFFFFFFF
      C0038007FFFFFFFFC0038007FDFFFC7FC0038007F8FFFC7FC0038007F07FE00F
      C0038007E03FE00FC0038007C01FF01FC0038007C01FF83FE003C007F8FFFC7F
      F007E00FF8FFFEFF3CFFE79FFFFFFFFF3CFFE79FFFFFFFFF18FFE31FFFFFFFFF
      81FFF03FFFFFFFFFC3FFF87FFFFFFFFFFFFFFC3FFC7FFFFFFE1FF81FF01FFFFF
      F80FD09FC0078001E00700008001800180030000000180010001000000018001
      0000000000008001000000000000800100010000000080018000000030008001
      C000000088018001E0030000E0778001F00F0000F88B8001F83FE42FFE84FFFF
      FCFFE07FFF03FFFFFFFFF0FFFF8FFFFFFFFFFFFF8003FFFFFFFFFFFF8003E000
      8F8FB0888003C0008888FFFF8003C0009F9FB08880038000FFFFFFFF80038000
      FFFFB088800300008F8FFFFF800300008888B088800300009F9FFFFF80038000
      FFFFB08880038000FFFFFFFF800380018F8F80008003C07F8888FFFF8007E0FF
      9F9FF088800FFFFFFFFFFFFF801FFFFFFFFFFCFFFFFFFFFF8001F87FFFFFFFFF
      0001F03FFF81C7FF0001E01FFFFFC47F0001C00FFFC3CFFF00018007FFC3FFFF
      0001C007FFC3FFFF00018007FFC3FE3F0001C00F81C7FE230001E01FFFFFFE7F
      0001E00FC3FFFFFF0003E00FC3FFFFFF807FE00FC3FF1FFFC0FFE01FC3FF11FF
      FFFFF01FC7FF3FFFFFFFF83FFFFFFFFFF843F83CFFFFFFFFF001E00800018001
      E000C00000010001E000800100010001E000800300010001C001008100010001
      8003014100010001000F02A100010001000F014100010001000F008100010001
      000F000100010001000F800300030003000F800380FF807F801FC007C1FFC0FF
      C03FE00FFFFFFFFFE07FF83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFE00
      FFFFED9FFE00C000FFFFED6FFE008000FFCFED6FFE00800083E7F16F80008000
      87F7FD1F800080008FF7FC7F8000800197F7FEFF80008001B9E7FC7F80018001
      FE0FFD7F80038001FFFFF93F800787E1FFFFFBBF807F8001FFFFFBBF80FFC003
      FFFFFBBF81FFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE003BFF78001000F
      E0031FFF8001000FE0030FEF8001000FE0038FDF8001000FE003C79F8001000F
      E003E33F8001000FE003F07F8001000FE003F8FF8001000FE003F07F80010005
      E003E33F80010001E007879F80010001E00F0FCF8001F801E01F1FF78001FC01
      FFFFFFFF8001FE05FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 472
    object Nuevo: TAction
      Category = 'Archivo'
      Caption = 'Nuevo'
      ImageIndex = 1
      OnExecute = NuevoExecute
    end
    object Grabar: TAction
      Category = 'Archivo'
      Caption = 'Grabar'
      ImageIndex = 0
    end
    object ToolBar: TAction
      Category = 'Ver'
      Caption = 'ToolBar'
      ImageIndex = 3
    end
    object LetreroBtn: TAction
      Category = 'Ver'
      Caption = 'LetreroBtn'
      ImageIndex = 15
    end
    object Listado: TAction
      Category = 'Ver'
      Caption = 'Listado'
      ImageIndex = 17
    end
    object Eliminar: TAction
      Category = 'Archivo'
      Caption = 'Eliminar'
      ImageIndex = 2
    end
    object Salir: TAction
      Category = 'Archivo'
      Caption = 'Salir'
      ImageIndex = 81
      OnExecute = SalirExecute
    end
    object axnBuscar: TAction
      Category = 'Varios'
      Caption = 'BuscarNombre'
      ImageIndex = 35
      OnExecute = axnBuscarExecute
    end
    object axnFiltrar: TAction
      Category = 'Varios'
      Caption = 'Filtrar Clientes'
      ImageIndex = 15
      OnExecute = axnFiltrarExecute
    end
  end
  object FormStorage1: TFormStorage
    IniFileName = 'TReporter.cfg'
    IniSection = 'Clientes'
    MinMaxInfo.MinTrackHeight = 466
    MinMaxInfo.MinTrackWidth = 604
    Options = [fpState, fpPosition, fpActiveControl]
    UseRegistry = False
    StoredProps.Strings = (
      'pgcMain.ActivePage'
      'pgcMain.Width')
    StoredValues = <>
    Left = 560
  end
end
