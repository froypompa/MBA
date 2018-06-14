object frmClientes2: TfrmClientes2
  Left = 330
  Top = 217
  Caption = 'Datos de Clientes'
  ClientHeight = 455
  ClientWidth = 806
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
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dckSincro: TTBXDock
    Left = 0
    Top = 0
    Width = 806
    Height = 39
    object tlbMain: TTBXToolbar
      Left = 0
      Top = 0
      DockPos = 0
      FullSize = True
      Images = MainForm.ImageList1
      TabOrder = 0
      object tbtCreate: TTBXItem
        Caption = '&Limpiar'
        DisplayMode = nbdmImageAndText
        Hint = 'Limpiar Listado'
        ImageIndex = 6
        Images = MainForm.ImageList1
        Layout = tbxlGlyphTop
        OnClick = tbtCreateClick
      end
      object tbtGrabar: TTBXItem
        Caption = ' &Grabar XLS'
        DisplayMode = nbdmImageAndText
        Hint = 'Grabar listado'
        ImageIndex = 8
        Images = MainForm.ImageList1
        Layout = tbxlGlyphTop
        OnClick = tbtGrabarClick
        Left = 46
      end
      object ToolbarSep973: TTBXSeparatorItem
        Left = 226
      end
      object tbtPrever: TTBXItem
        Caption = '&Prever'
        DisplayMode = nbdmImageAndText
        Hint = 'Prever impresi'#243'n'
        ImageIndex = 9
        Images = MainForm.ImageList1
        Layout = tbxlGlyphTop
        OnClick = tbtPreverClick
        Left = 75
      end
      object tbtImprimir: TTBXItem
        Caption = ' &Imprimir '
        DisplayMode = nbdmImageAndText
        Hint = 'Imprimir listado'
        ImageIndex = 14
        Images = MainForm.ImageList1
        Layout = tbxlGlyphTop
        OnClick = tbtImprimirClick
        Left = 104
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object tbtFormato: TTBXSubmenuItem
        Caption = '&Formato'
        DisplayMode = nbdmImageAndText
        ImageIndex = 60
        Images = MainForm.ImageList1
        Layout = tbxlGlyphTop
        Options = [tboDropdownArrow]
        object itmBuscar: TTBXItem
          Caption = '&Buscar...'
          DisplayMode = nbdmImageAndText
          ImageIndex = 132
          OnClick = itmBuscarClick
        end
        object TBXSeparatorItem3: TTBXSeparatorItem
        end
        object itmFijar: TTBXItem
          Caption = '&Fijar Renglones'
          DisplayMode = nbdmImageAndText
          ImageIndex = 183
          OnClick = itmFijarClick
        end
        object itmLiberar: TTBXItem
          Caption = '&Liberar Renglones'
          DisplayMode = nbdmImageAndText
          ImageIndex = 174
          OnClick = itmLiberarClick
        end
      end
      object TBSeparatorItem1: TTBSeparatorItem
      end
      object tbtNuevo: TTBXItem
        Caption = '&Nuevo Cliente'
        DisplayMode = nbdmImageAndText
        ImageIndex = 177
        Images = MainForm.ImageList1
        Options = [tboImageAboveCaption]
        OnClick = tbtNuevoClick
      end
      object tbtModificar: TTBXItem
        Caption = '&Modificar'
        DisplayMode = nbdmImageAndText
        ImageIndex = 54
        Images = MainForm.ImageList1
        Options = [tboImageAboveCaption]
        OnClick = tbtModificarClick
      end
      object tbtEliminar: TTBXItem
        Caption = '&Eliminar'
        DisplayMode = nbdmImageAndText
        ImageIndex = 5
        Images = MainForm.ImageList1
        Options = [tboImageAboveCaption]
      end
      object TBXSeparatorItem4: TTBXSeparatorItem
      end
      object itmAyuda: TTBXItem
        Caption = '  &Ayuda  '
        DisplayMode = nbdmImageAndText
        ImageIndex = 47
        Options = [tboImageAboveCaption]
        OnClick = itmAyudaClick
      end
      object tbtSalir: TTBXItem
        Caption = '  &Salir  '
        DisplayMode = nbdmImageAndText
        Hint = 'Cerrar Ventana'
        ImageIndex = 99
        Images = MainForm.ImageList1
        Layout = tbxlGlyphTop
        OnClick = tbtSalirClick
        Left = 529
      end
    end
  end
  object pgcSincro: TPageControl
    Left = 0
    Top = 39
    Width = 806
    Height = 168
    ActivePage = tshAct
    Align = alTop
    Images = MainForm.ImageList1
    TabOrder = 1
    object tshAct: TTabSheet
      Caption = '&Criterios del Reporte'
      ImageIndex = 171
      object RzPanel3: TRzPanel
        Left = 0
        Top = 0
        Width = 537
        Height = 139
        Align = alLeft
        BorderOuter = fsGroove
        TabOrder = 0
        object RzLabel4: TRzLabel
          Left = 2
          Top = 2
          Width = 533
          Height = 13
          Align = alTop
          Caption = 'Opciones de Listado'
          ExplicitWidth = 97
        end
        object RzLabel5: TRzLabel
          Left = 13
          Top = 21
          Width = 176
          Height = 13
          Caption = 'Codigo o Nombre de Cliente: (Parcial)'
        end
        object rbtCodigo: TRzRadioButton
          Left = 2
          Top = 64
          Width = 249
          Height = 17
          Caption = 'Ordenar por Codigo de Cliente'
          Checked = True
          HotTrack = True
          TabOrder = 0
          TabStop = True
        end
        object rbtNombre: TRzRadioButton
          Left = 2
          Top = 87
          Width = 241
          Height = 17
          Caption = 'Ordenar por Raz'#243'n Social'
          TabOrder = 1
        end
        object edzCodigo: TRzEdit
          Left = 13
          Top = 37
          Width = 326
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          FrameHotTrack = True
          FrameVisible = True
          ParentFont = False
          TabOrder = 2
          OnKeyDown = edzCodigoKeyDown
        end
        object btnListarCte: TRzBitBtn
          Left = 345
          Top = 27
          Width = 180
          Height = 46
          Caption = '&Listar Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 3
          OnClick = btnListarCteClick
          ImageIndex = 52
          Images = MainForm.ImageList2
        end
        object btnLast20: TRzBitBtn
          Left = 345
          Top = 87
          Width = 180
          Height = 46
          Caption = '&Listar Ultimos 20 Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 4
          OnClick = btnLast20Click
          ImageIndex = 52
          Images = MainForm.ImageList2
        end
      end
      object btnActDescuentos: TRzBitBtn
        Left = 569
        Top = 90
        Width = 218
        Height = 46
        Caption = '&Actualizar Descuentos por Familia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HotTrack = True
        ParentFont = False
        TabOrder = 1
        OnClick = btnActDescuentosClick
        ImageIndex = 70
        Images = MainForm.ImageList2
      end
    end
    object tshDoc: TTabSheet
      Caption = '&Documentos'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblCte: TRzLabel
        Left = 0
        Top = 0
        Width = 798
        Height = 16
        Align = alTop
        Caption = 'Codigo-Nombre de Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 185
      end
      object pnzFechas: TRzPanel
        Left = 0
        Top = 16
        Width = 249
        Height = 123
        Align = alLeft
        BorderOuter = fsGroove
        TabOrder = 0
        object Label5: TLabel
          Left = 8
          Top = 40
          Width = 95
          Height = 16
          AutoSize = False
          Caption = 'Fecha Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 8
          Top = 72
          Width = 95
          Height = 16
          AutoSize = False
          Caption = 'Fecha Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RzLabel3: TRzLabel
          Left = 2
          Top = 2
          Width = 245
          Height = 13
          Align = alTop
          Caption = 'Fechas de Documentos'
          ExplicitWidth = 113
        end
        object xdeFechaFin: TDateEdit
          Left = 109
          Top = 67
          Width = 128
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
        end
        object xdeFechaIni: TDateEdit
          Left = 109
          Top = 37
          Width = 128
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
        end
      end
      object RzPanel2: TRzPanel
        Left = 249
        Top = 16
        Width = 352
        Height = 123
        Align = alLeft
        BorderOuter = fsGroove
        TabOrder = 1
        object RzLabel2: TRzLabel
          Left = 2
          Top = 2
          Width = 348
          Height = 16
          Align = alTop
          Caption = 'Documentos a Listar:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 125
        end
        object clzDoc: TRzCheckList
          Left = 2
          Top = 18
          Width = 348
          Height = 103
          Items.Strings = (
            '107 - Facturas Mty'
            '23  - Pedidos Monterrey'
            '232 - Pedidos Guadalajara'
            '233 - Pedidos Mexico'
            '28  - Remisiones Monterrey'
            '282 - Remisiones Guadalajara'
            '283 - Remisiones Mexico'
            '30  - Cotizaciones Monterrey'
            '302 - Cotizaciones Guadalajara'
            '303 - Cotizaciones Mexico')
          Items.ItemEnabled = (
            True
            True
            True
            True
            True
            True
            True
            True
            True
            True)
          Items.ItemState = (
            0
            0
            0
            0
            0
            0
            0
            0
            0
            0)
          OnChange = clzDocChange
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          FrameHotTrack = True
          FrameVisible = True
          ItemHeight = 18
          ParentFont = False
          TabOrder = 0
        end
      end
      object btnDocs: TRzBitBtn
        Left = 607
        Top = 13
        Width = 180
        Height = 46
        Caption = '&Listar Documentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HotTrack = True
        ParentFont = False
        TabOrder = 2
        OnClick = btnDocsClick
        ImageIndex = 3
        Images = MainForm.ImageList2
      end
      object btnDet: TRzBitBtn
        Left = 607
        Top = 77
        Width = 180
        Height = 46
        Caption = '&Listar Detalle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HotTrack = True
        ParentFont = False
        TabOrder = 3
        OnClick = btnDetClick
        ImageIndex = 8
        Images = MainForm.ImageList2
      end
    end
    object tshList: TTabSheet
      Caption = '&Opciones'
      ImageIndex = 176
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grbSort: TRzGroupBox
        Left = 0
        Top = 0
        Width = 321
        Height = 139
        Align = alLeft
        Caption = 'Ordenar  detalle de  facturas  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object RzLabel1: TRzLabel
          Left = 8
          Top = 16
          Width = 143
          Height = 16
          Caption = 'Ordenar por la columna:'
        end
        object cboSort: TRzComboBox
          Left = 8
          Top = 32
          Width = 305
          Height = 24
          Style = csDropDownList
          Ctl3D = False
          FrameHotTrack = True
          FrameVisible = True
          ItemHeight = 0
          ParentCtl3D = False
          TabOrder = 0
          Items.Strings = (
            'Codigo Cliente'
            'Numero (Mayor a Menor)'
            'Razon Social')
        end
        object btnSort: TRzBitBtn
          Left = 8
          Top = 62
          Width = 305
          Height = 43
          Caption = 'Ordenar Listado Detallado'
          HotTrack = True
          TabOrder = 1
          OnClick = btnSortClick
          ImageIndex = 38
          Images = MainForm.ImageList2
        end
      end
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 436
    Width = 806
    Height = 19
    AutoScalePanes = True
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 2
    object sbMsg: TRzGlyphStatus
      Left = 0
      Top = 0
      Width = 806
      Height = 19
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Caption = 'Listo!'
      ImageIndex = 125
      Images = MainForm.ImageList1
      ExplicitWidth = 813
    end
  end
  object F1: TF1Book
    Left = 0
    Top = 207
    Width = 806
    Height = 229
    Align = alClient
    TabOrder = 3
    OnKeyDown = F1KeyDown
    OnDblClick = F1DblClick
    OnSelChange = F1SelChange
    OnStartEdit = F1StartEdit
    ExplicitHeight = 227
    ControlData = {
      000001004D530000AB17000060000000010001074631426F6F6B310101010101
      0101010101010101010101006905000000000900050500EE0400000000EF1400
      0000FF0000FF3F0400FFFFFFFFFFFFFFFFF3FF3D120000210C3A2F6B0D380000
      000000010058023114C8000000FF7F900100000000000005417269616C3114C8
      000000FF7FBC0200000000000005417269616C3114C8000200FF7F9001000000
      00000005417269616C3114C8000200FF7FBC0200000000000005417269616C31
      14C8000000FF7F900100000000000005417269616C1E16050013222422232C23
      23303B5C2D222422232C2323301E1B060018222422232C2323303B5B5265645D
      5C2D222422232C2323301E1C070019222422232C2323302E30303B5C2D222422
      232C2323302E30301E2108001E222422232C2323302E30303B5B5265645D5C2D
      222422232C2323302E30301E292A00262A205F2D222422232C2323303B2A205C
      2D222422232C2323303B2A205F2D222422222D223B401E1C2900192A20232C23
      23303B2A205C2D232C2323303B2A20222D223B401E312C002E2A205F2D222422
      232C2323302E30303B2A205C2D222422232C2323302E30303B2A205F2D222422
      222D223F3F3B401E242B00212A20232C2323302E30303B2A205C2D232C232330
      2E30303B2A20222D223F3F3B401E181700155C24232C2323305F293B5C285C24
      232C2323305C291E1D18001A5C24232C2323305F293B5B5265645D5C285C2423
      2C2323305C291E1E19001B5C24232C2323302E30305F293B5C285C24232C2323
      302E30305C291E231A00205C24232C2323302E30305F293B5B5265645D5C285C
      24232C2323302E30305C291E1B400018222422232C2323303B5B5265645D5C2D
      222422232C2323301E2141001E222422232C2323302E30303B5B5265645D5C2D
      222422232C2323302E3030ED050000000000EC03000000E01400000000F5FF20
      00C02000000000000000000000E01401000000F5FF20C4C02000000000000000
      000000E01401000000F5FF20C4C02000000000000000000000E01402000000F5
      FF20C4C02000000000000000000000E01402000000F5FF20C4C0200000000000
      0000000000E01400000000F5FF20C4C02000000000000000000000E014000000
      00F5FF20C4C02000000000000000000000E01400000000F5FF20C4C020000000
      00000000000000E01400000000F5FF20C4C02000000000000000000000E01400
      000000F5FF20C4C02000000000000000000000E01400000000F5FF20C4C02000
      000000000000000000E01400000000F5FF20C4C02000000000000000000000E0
      1400000000F5FF20C4C02000000000000000000000E01400000000F5FF20C4C0
      2000000000000000000000E01400000000F5FF20C4C020000000000000000000
      00E0140000000001002000C02000000000000000000000E01405004100F5FF20
      C8C02000000000000000000000E01405004000F5FF20C8C02000000000000000
      000000E01405000C00F5FF20C8C02000000000000000000000E01405000A00F5
      FF20C8C02000000000000000000000E01405000D00F5FF20C8C0200000000000
      0000000000E01404000000F0FF1248C020000000000000000000008509000006
      5368656574310A09000510000D01000C640011010010FCA9F1D24D62503F5F01
      002A00002B0100250000FF008C0100340081C104140302264115080750616765
      20265083000084000026000000000000E83F27000000000000E83F2800000000
      0000F03F29000000000000F03FA1220100640001000100010006002C012C0100
      0000000000E03F000000000000E03F01000000000000000000000000F7189200
      FF8CFFFFFF00C0C0C000FF00FF3F0000000000000000F2100000000000000000
      000000000300FFFFF6150015001500FF0040061D0F0300000000000001000000
      000000003E0AB6060000000000000000A0640064009926090A0000000452E30B
      918FCE119DE300AA004BB8516C7400006C000000010000005800000000000000
      00000000FFFFFFFFFFFFFFFF00000000000000006C520000B83D000020454D46
      000001006C000000020000000100000000000000000000000000000020030000
      58020000D30000009E0000000E00000014000000000000001000000014000000
      01}
  end
  object PopupMenu1: TPopupMenu
    Left = 560
    Top = 32
    object Fonts1: TMenuItem
      Caption = '&Fonts...'
    end
    object Numeros1: TMenuItem
      Caption = '&Numeros...'
    end
    object Bordes1: TMenuItem
      Caption = '&Bordes...'
    end
    object Alineacion1: TMenuItem
      Caption = '&Alineaci'#243'n...'
    end
    object Rellenos1: TMenuItem
      Caption = '&Rellenos...'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Preferencias1: TMenuItem
      Caption = '&Preferencias...'
    end
  end
  object FormStorage1: TFormStorage
    UseRegistry = False
    StoredProps.Strings = (
      'pgcSincro.ActivePage')
    StoredValues = <>
    Left = 524
    Top = 50
  end
  object icuRep: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = DM1.cnMBA
    Left = 640
    Top = 24
  end
  object icuDet: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = DM1.cnMBA
    Left = 704
    Top = 24
  end
  object icuDoc: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = DM1.cnMBA
    Left = 672
    Top = 24
  end
end
