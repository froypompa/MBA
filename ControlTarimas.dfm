object frmControlTarimas: TfrmControlTarimas
  Left = 330
  Top = 217
  Caption = 'Control de Tarimas'
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
        Caption = '&Nueva Tarima'
        DisplayMode = nbdmImageAndText
        ImageIndex = 159
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
    Height = 162
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
        Height = 133
        Align = alLeft
        BorderOuter = fsGroove
        TabOrder = 0
        object Label8: TLabel
          Left = 5
          Top = 4
          Width = 150
          Height = 16
          Caption = 'Descripci'#243'n , C'#243'digo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 5
          Top = 87
          Width = 72
          Height = 13
          Caption = 'Ordenar por:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rbtCodigo: TRzRadioButton
          Left = 8
          Top = 109
          Width = 103
          Height = 17
          Caption = 'Codigo Producto'
          Checked = True
          HotTrack = True
          TabOrder = 0
          TabStop = True
        end
        object rbtDescripcion: TRzRadioButton
          Left = 146
          Top = 109
          Width = 103
          Height = 17
          Caption = 'Descripci'#243'n'
          TabOrder = 1
        end
        object cboCodigo: TComboBox
          Left = 5
          Top = 19
          Width = 348
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ItemHeight = 18
          ParentFont = False
          Sorted = True
          TabOrder = 2
        end
        object rbtUbicacion: TRzRadioButton
          Left = 250
          Top = 109
          Width = 103
          Height = 17
          Caption = 'Ubicaci'#243'n'
          TabOrder = 3
        end
        object btnListarProd: TRzBitBtn
          Left = 359
          Top = 5
          Width = 156
          Height = 46
          Caption = '&Listar Productos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 4
          OnClick = btnListarProdClick
          ImageIndex = 30
          Images = MainForm.ImageList2
        end
      end
    end
    object tshList: TTabSheet
      Caption = '&Opciones'
      ImageIndex = 176
      object lblAlmOri: TLabel
        Left = 329
        Top = 16
        Width = 200
        Height = 16
        AutoSize = False
        Caption = '&Almac'#233'n Origen:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object grbSort: TRzGroupBox
        Left = 0
        Top = 0
        Width = 321
        Height = 133
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
          ItemHeight = 16
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
      object cboNumAlmac: TComboBox
        Left = 327
        Top = 33
        Width = 213
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 1
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
    Top = 201
    Width = 806
    Height = 235
    Align = alClient
    TabOrder = 3
    OnKeyDown = F1KeyDown
    OnDblClick = F1DblClick
    OnSelChange = F1SelChange
    OnStartEdit = F1StartEdit
    ExplicitTop = 207
    ExplicitHeight = 227
    ControlData = {
      000001004D5300004A18000060000000010001074631426F6F6B310101010101
      0101010101010101010101006905000000000900050500EE0400000000EF1400
      0000FF0000FF3F0400FFFFFFFFFFFFFFFFF3FF3D120000C70B3A2FC50D380000
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
      0000F03F29000000000000F03FA1220100640001000100010004002C012C0100
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
