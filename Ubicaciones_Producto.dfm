object frmUbicaciones_Producto: TfrmUbicaciones_Producto
  Left = 330
  Top = 217
  Caption = 'Ubicaciones de Productos'
  ClientHeight = 455
  ClientWidth = 1065
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
    Width = 1065
    Height = 39
    object tlbMain: TTBXToolbar
      Left = 0
      Top = 0
      DockPos = 0
      FullSize = True
      Images = MainForm.ImageList1
      ParentShowHint = False
      ShowHint = True
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
      object tbtAsignar: TTBXItem
        Caption = '&Asignar'
        DisplayMode = nbdmImageAndText
        Hint = 'Asignar producto a una Ubicacion'
        ImageIndex = 10
        Images = MainForm.ImageList1
        Options = [tboImageAboveCaption]
        OnClick = tbtAsignarClick
      end
      object itmAsignar2: TTBXItem
        Caption = '&Asignar Multiple'
        DisplayMode = nbdmImageAndText
        Hint = 'Asignar VARIOS productos a Ubicaciones'
        ImageIndex = 10
        Images = MainForm.ImageList1
        Options = [tboImageAboveCaption]
        OnClick = itmAsignar2Click
      end
      object tbtModificar: TTBXItem
        Caption = '&Grabar Datos'
        DisplayMode = nbdmImageAndText
        Hint = 'Graba los datos directo desde el listado'
        ImageIndex = 137
        Images = MainForm.ImageList1
        Options = [tboImageAboveCaption]
        OnClick = tbtModificarClick
      end
      object tbtEliminar: TTBXItem
        Caption = '&Eliminar'
        DisplayMode = nbdmImageAndText
        Hint = 'Eliminar el producto de una ubicaci'#243'n'
        ImageIndex = 5
        Images = MainForm.ImageList1
        Options = [tboImageAboveCaption]
        OnClick = tbtEliminarClick
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object TBXSubmenuItem1: TTBXSubmenuItem
        Caption = '&Acciones'
        DisplayMode = nbdmImageAndText
        ImageIndex = 170
        Options = [tboDropdownArrow, tboImageAboveCaption]
        object itmShowR: TTBXItem
          Caption = '&Mostrar Renglones'
          ImageIndex = 167
          OnClick = itmShowRClick
        end
        object itmHideR: TTBXItem
          Caption = '&Esconder Renglones'
          ImageIndex = 183
          OnClick = itmHideRClick
        end
        object TBXSeparatorItem5: TTBXSeparatorItem
        end
        object itmSelProd: TTBXItem
          Caption = 'Selecciona Producto (Codigo)'
          ImageIndex = 21
          OnClick = itmSelProdClick
        end
        object itmClonar: TTBXItem
          Caption = '&Clonar Ubicacion'
          ShortCut = 16429
          OnClick = itmClonarClick
        end
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
    Width = 1065
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
        Width = 633
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
        object Label1: TLabel
          Left = 5
          Top = 52
          Width = 75
          Height = 16
          Caption = 'Ubicacion:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
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
          TabOrder = 0
          OnChange = cboCodigoChange
          OnSelect = cboCodigoSelect
        end
        object btnListarProducto: TRzBitBtn
          Left = 359
          Top = 5
          Width = 170
          Height = 46
          Caption = '&Listar x  Producto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 1
          OnClick = btnListarProductoClick
          ImageIndex = 30
          Images = MainForm.ImageList2
        end
        object btnListarUbicacion: TRzBitBtn
          Left = 359
          Top = 53
          Width = 170
          Height = 46
          Caption = '&Listar x  Ubicaci'#243'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 2
          OnClick = btnListarUbicacionClick
          ImageIndex = 93
          Images = MainForm.ImageList2
        end
        object cboUbicacion: TComboBox
          Left = 5
          Top = 67
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
          TabOrder = 3
          OnSelect = cboUbicacionSelect
        end
        object chkEsconder: TRzCheckBox
          Left = 359
          Top = 98
          Width = 193
          Height = 17
          Caption = 'Esconder Ubicaciones SIN Producto'
          State = cbUnchecked
          TabOrder = 4
        end
      end
      object RzPanel1: TRzPanel
        Left = 633
        Top = 0
        Width = 424
        Height = 133
        Align = alClient
        BorderOuter = fsGroove
        TabOrder = 1
        object Label2: TLabel
          Left = 5
          Top = 97
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
        object Label3: TLabel
          Left = 6
          Top = 6
          Width = 53
          Height = 13
          Caption = 'Almacen:'
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
          OnClick = rbtCodigoClick
        end
        object rbtDescripcion: TRzRadioButton
          Left = 129
          Top = 109
          Width = 96
          Height = 17
          Caption = 'Descripci'#243'n'
          TabOrder = 1
          OnClick = rbtCodigoClick
        end
        object rbtUbicacion: TRzRadioButton
          Left = 227
          Top = 109
          Width = 81
          Height = 17
          Caption = 'Ubicaci'#243'n'
          TabOrder = 2
          OnClick = rbtCodigoClick
        end
        object cboNumAlmac: TComboBox
          Left = 6
          Top = 25
          Width = 259
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 3
        end
        object rbtTarima: TRzRadioButton
          Left = 318
          Top = 108
          Width = 81
          Height = 17
          Caption = 'Tarima'
          TabOrder = 4
          OnClick = rbtCodigoClick
        end
      end
    end
    object tshList: TTabSheet
      Caption = '&Opciones'
      ImageIndex = 176
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
            'Codigo Producto'
            'Descripcion'
            'Ubicacion')
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
      object RzGroupBox1: TRzGroupBox
        Left = 321
        Top = 0
        Width = 264
        Height = 133
        Align = alLeft
        Caption = '  Existencias Almacen  '
        TabOrder = 1
        object chkAfectarExistencias: TRzCheckBox
          Left = 8
          Top = 24
          Width = 241
          Height = 32
          Caption = 'Establecer Conteo como Existencia Inicial al Grabar'
          State = cbUnchecked
          TabOrder = 0
        end
        object chkConfirmar: TRzCheckBox
          Left = 24
          Top = 62
          Width = 73
          Height = 19
          Caption = 'Confirmar'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
      end
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 436
    Width = 1065
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
      Width = 1065
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
      ExplicitWidth = 1066
    end
  end
  object F1: TF1Book
    Left = 0
    Top = 201
    Width = 1065
    Height = 235
    Align = alClient
    TabOrder = 3
    OnKeyDown = F1KeyDown
    OnSelChange = F1SelChange
    OnStartEdit = F1StartEdit
    OnEndEdit = F1EndEdit
    ExplicitTop = 203
    ControlData = {
      00000100126E00004A18000060000000010001074631426F6F6B310101010101
      0101010101010101010101006905000000000900050500EE0400000000EF1400
      0000FF0000FF3F0400FFFFFFFFFFFFFFFFF3FF3D120000C70B673EC50D380000
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
      002A00002B0100250000FF008C0100340081C105140302264115080750616765
      202650830000840000264C2693C96432D93F274C2693C96432D93F284C2693C9
      6432D93F294C2693C96432D93FA1220100640001000100640000002C012C014C
      2693C96432D93F4C2693C96432D93F01000000000000000000000000F7189200
      FF0CFFFFFF00C0C0C000FF00FF3F0000000000000000F2100000000000000000
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
  object icuProd: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = DM1.cnMBA
    Left = 672
    Top = 24
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer2Timer
    Left = 736
    Top = 26
  end
  object isql1: TIB_DSQL
    DatabaseName = 'MBA'
    IB_Connection = DM1.cnMBA
    SQL.Strings = (
      'UPDATE MBA10016 SET'
      '  EXISINIPER = ?EXISINIPER,'
      '  ENTPEREXIS = 0,'
      '  SALPEREXIS = 0,'
      '  CONTEOFISI = ?CONTEOFISI,'
      '  FECCONTEO  = ?FECCONTEO'
      'WHERE'
      '  (NUMALMAC   = ?NUMALMAC) AND'
      '  (CODPRODSER = ?CODPRODSER);')
    Left = 600
    Top = 32
  end
end
