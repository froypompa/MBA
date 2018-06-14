object frmEstat_Pedidos: TfrmEstat_Pedidos
  Left = 223
  Top = 113
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Ventas: Estatus de Pedidos'
  ClientHeight = 655
  ClientWidth = 1192
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Dock971: TTBXDock
    Left = 0
    Top = 0
    Width = 1192
    Height = 47
    object tlbMain: TTBXToolbar
      Left = 0
      Top = 0
      DockPos = 0
      FullSize = True
      Images = MainForm.ImageList2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object tbtSalir: TTBXItem
        Caption = '  &Salir  '
        ImageIndex = 12
        Options = [tboImageAboveCaption]
        OnClick = tbtSalirClick
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object tbtListar: TTBXItem
        Caption = ' &Listar Pendientes  [F3]'
        DisplayMode = nbdmImageAndText
        Hint = 'Listar los pedidos'
        ImageIndex = 16
        Options = [tboImageAboveCaption]
        OnClick = tbtListarClick
      end
      object tbtListarTodo: TTBXItem
        Caption = ' &Listar Todo [F4]'
        DisplayMode = nbdmImageAndText
        Hint = 'Listar los pedidos'
        ImageIndex = 35
        Options = [tboImageAboveCaption]
        OnClick = tbtListarTodoClick
      end
      object TBXSeparatorItem3: TTBXSeparatorItem
      end
      object tbtImprimir: TTBXItem
        Caption = '&Imprimir OS [F6]'
        DisplayMode = nbdmImageAndText
        Hint = 'Imprimir Pedido'
        ImageIndex = 13
        Options = [tboImageAboveCaption]
        ShortCut = 117
        OnClick = tbtImprimirClick
        Left = 23
      end
      object ToolbarSep972: TTBXSeparatorItem
        Left = 380
      end
      object tbtGrabarComent: TTBXItem
        Caption = '&Grabar Comentarios [F7]'
        DisplayMode = nbdmImageAndText
        Hint = 'Grabar los comentarios capturados'
        ImageIndex = 80
        Options = [tboImageAboveCaption]
        ShortCut = 118
        OnClick = tbtGrabarComentClick
        Left = 133
      end
      object tbtAutorizar: TTBXItem
        Caption = '&Autorizar Pedido [F8]'
        DisplayMode = nbdmImageAndText
        Hint = 'Autoriza el pedido y lo pasa a surtir a Almacen'
        ImageIndex = 97
        Options = [tboImageAboveCaption]
        ShortCut = 118
        OnClick = tbtAutorizarClick
        Left = 133
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object tbtCerrar: TTBXItem
        Caption = ' &Cerrar '
        DisplayMode = nbdmImageAndText
        Hint = 'Cierrra el pedido y lo oculta de la lista'
        ImageIndex = 99
        Options = [tboImageAboveCaption]
        ShortCut = 118
        OnClick = tbtCerrarClick
        Left = 133
      end
      object tbtCancelar: TTBXItem
        Caption = ' &Cancelar '
        DisplayMode = nbdmImageAndText
        Hint = 'Cancela el pedido de la lista (Almacen lo ve en amarillo)'
        ImageIndex = 98
        Options = [tboImageAboveCaption]
        ShortCut = 118
        OnClick = tbtCancelarClick
        Left = 133
      end
      object TBXSeparatorItem6: TTBXSeparatorItem
      end
      object tbtEliminar: TTBXItem
        Caption = ' &Eliminar '
        DisplayMode = nbdmImageAndText
        Hint = 'Elimina DEFINITIVAMENTE el pedido de la base de datos'
        ImageIndex = 9
        Options = [tboImageAboveCaption]
        ShortCut = 118
        OnClick = tbtEliminarClick
        Left = 133
      end
      object TBXSeparatorItem7: TTBXSeparatorItem
      end
      object TBXSubmenuItem1: TTBXSubmenuItem
        Caption = ' &Ordenar '
        DisplayMode = nbdmImageAndText
        Hint = 'Ordenar el Listado...'
        ImageIndex = 29
        Options = [tboDropdownArrow, tboImageAboveCaption]
        object tbtSortPedido1: TTBXItem
          Tag = 1
          Caption = 'Pedidos: Numero Pedido'
          ImageIndex = 171
          Images = MainForm.ImageList1
          OnClick = tbtSortPedido1Click
        end
        object tbtSortPedido2: TTBXItem
          Tag = 2
          Caption = 'Pedidos: Numero Orden'
          ImageIndex = 171
          Images = MainForm.ImageList1
          OnClick = tbtSortPedido1Click
        end
        object tbtSortPedido3: TTBXItem
          Tag = 3
          Caption = 'Pedidos: Nombre de Cliente'
          ImageIndex = 171
          Images = MainForm.ImageList1
          OnClick = tbtSortPedido1Click
        end
        object tbtSortPedido4: TTBXItem
          Tag = 4
          Caption = 'Pedidos: Nombre Vendedor'
          ImageIndex = 171
          Images = MainForm.ImageList1
          OnClick = tbtSortPedido1Click
        end
        object TBXSeparatorItem5: TTBXSeparatorItem
        end
        object tbtSortPartida10: TTBXItem
          Tag = 10
          Caption = 'Partidas: Numero Partida'
          ImageIndex = 171
          Images = MainForm.ImageList1
          OnClick = tbtSortPartida10Click
        end
        object tbtSortPartida11: TTBXItem
          Tag = 11
          Caption = 'Partidas: Codigo Producto'
          ImageIndex = 171
          Images = MainForm.ImageList1
          OnClick = tbtSortPartida10Click
        end
        object tbtSortPartida12: TTBXItem
          Tag = 12
          Caption = 'Partidas:Descripcion Producto'
          ImageIndex = 171
          Images = MainForm.ImageList1
          OnClick = tbtSortPartida10Click
        end
      end
      object TBXSubmenuItem2: TTBXSubmenuItem
        Caption = '  &Buscar  '
        DisplayMode = nbdmImageAndText
        Hint = 'Buscar texto en el listado'
        ImageIndex = 65
        Options = [tboDropdownArrow, tboImageAboveCaption]
        object tbtFindF1: TTBXItem
          Caption = 'En Lista de Pedidos'
          ImageIndex = 132
          Images = MainForm.ImageList1
          OnClick = tbtFindF1Click
        end
        object tbtFindF2: TTBXItem
          Caption = 'En Lista de Partidas'
          ImageIndex = 132
          Images = MainForm.ImageList1
          OnClick = tbtFindF2Click
        end
      end
      object TBXSeparatorItem4: TTBXSeparatorItem
      end
      object tbtOpciones: TTBXItem
        Caption = '&Opciones'
        DisplayMode = nbdmImageAndText
        ImageIndex = 60
        Options = [tboImageAboveCaption]
        OnClick = tbtOpcionesClick
      end
      object tbtAutoListar: TTBXItem
        Caption = '&AutoListar'
        DisplayMode = nbdmImageAndText
        ImageIndex = 1
        Images = ImageList1
        Options = [tboImageAboveCaption]
        OnClick = tbtAutoListarClick
      end
      object ToolbarSep977: TTBXSeparatorItem
        Left = 127
      end
      object TBXItem4: TTBXItem
        Caption = '&Ayuda'
        DisplayMode = nbdmImageAndText
        ImageIndex = 79
        Options = [tboImageAboveCaption]
        OnClick = TBXItem4Click
      end
    end
  end
  object dfsStatusBar1: TTBXStatusBar
    Left = 0
    Top = 629
    Width = 1192
    Height = 26
    Images = ImageList1
    Panels = <
      item
        Control = sbMsg1
        Size = 500
        Tag = 0
      end
      item
        Control = sbMsg2
        StretchPriority = 1
        Tag = 0
      end
      item
        Tag = 0
      end
      item
        Tag = 0
      end>
    UseSystemFont = False
    object sbMsg1: TRzLabel
      Left = 0
      Top = 4
      Width = 498
      Height = 20
      Caption = 'Listo!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      TextStyle = tsRaised
    end
    object sbMsg2: TRzLabel
      Left = 500
      Top = 4
      Width = 590
      Height = 20
      Caption = 'Listo!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      TextStyle = tsRaised
    end
  end
  object pgcOpciones: TRzPageControl
    Left = 0
    Top = 47
    Width = 1192
    Height = 122
    ActivePage = TabSheet5
    Align = alTop
    TabIndex = 0
    TabOrder = 2
    TabStyle = tsRoundCorners
    Visible = False
    FixedDimension = 19
    object TabSheet5: TRzTabSheet
      Caption = '&Listado'
      object RzLabel17: TRzLabel
        Left = 3
        Top = 3
        Width = 121
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Fecha Inicial'
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel18: TRzLabel
        Left = 3
        Top = 48
        Width = 121
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Fecha Final'
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object zfeFechaIni: TRzDateTimeEdit
        Left = 3
        Top = 18
        Width = 121
        Height = 21
        EditType = etDate
        FrameController = RzFrameController1
        TabOrder = 0
      end
      object zfeFechaFin: TRzDateTimeEdit
        Left = 3
        Top = 63
        Width = 121
        Height = 21
        EditType = etDate
        FrameController = RzFrameController1
        TabOrder = 1
      end
      object btnListar: TRzBitBtn
        Left = 130
        Top = 50
        Width = 119
        Height = 39
        Caption = '&Listar Documentos'
        HotTrack = True
        TabOrder = 2
        ImageIndex = 27
        Images = MainForm.ImageList2
      end
      object RzPanel1: TRzPanel
        Left = 632
        Top = 0
        Width = 556
        Height = 96
        Align = alRight
        BorderOuter = fsGroove
        TabOrder = 3
        object Label2: TLabel
          Left = 5
          Top = 54
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
          Top = 66
          Width = 103
          Height = 17
          Caption = 'Codigo Producto'
          Checked = True
          HotTrack = True
          TabOrder = 0
          TabStop = True
        end
        object rbtDescripcion: TRzRadioButton
          Left = 129
          Top = 66
          Width = 96
          Height = 17
          Caption = 'Descripci'#243'n'
          TabOrder = 1
        end
        object rbtUbicacion: TRzRadioButton
          Left = 227
          Top = 66
          Width = 81
          Height = 17
          Caption = 'Ubicaci'#243'n'
          TabOrder = 2
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
          Top = 65
          Width = 81
          Height = 17
          Caption = 'Tarima'
          TabOrder = 4
        end
      end
    end
    object TabSheet6: TRzTabSheet
      Caption = '&Opciones'
      object RzGroupBox1: TRzGroupBox
        Left = 0
        Top = 0
        Width = 225
        Height = 96
        Align = alLeft
        Caption = '  Listado Automatico  (AutoListar) '
        TabOrder = 0
        object RzLabel1: TRzLabel
          Left = 4
          Top = 20
          Width = 34
          Height = 13
          Caption = 'Cada...'
        end
        object RzLabel2: TRzLabel
          Left = 116
          Top = 20
          Width = 49
          Height = 13
          Caption = 'segundos.'
        end
        object spnIntervalo: TRzSpinner
          Left = 44
          Top = 18
          Width = 66
          Increment = 10
          Max = 600
          Value = 10
          ParentColor = False
          TabOrder = 0
        end
      end
      object RzGroupBox2: TRzGroupBox
        Left = 225
        Top = 0
        Width = 184
        Height = 96
        Align = alLeft
        Caption = '  Opciones de Impresi'#243'n  '
        TabOrder = 1
        object chkDialogoImpre: TRzCheckBox
          Left = 8
          Top = 19
          Width = 169
          Height = 30
          Caption = 'Mostrar opciones para imprimir en otra impresora'
          State = cbUnchecked
          TabOrder = 0
        end
      end
    end
  end
  object RzSplitter1: TRzSplitter
    Left = 0
    Top = 169
    Width = 1192
    Height = 460
    Position = 951
    Percent = 80
    UsePercent = True
    HotSpotVisible = True
    HotSpotDirection = hsdMax
    SplitterWidth = 7
    Align = alClient
    TabOrder = 3
    BarSize = (
      951
      0
      958
      460)
    UpperLeftControls = (
      pgcMain)
    LowerRightControls = (
      RzPageControl1)
    object pgcMain: TRzPageControl
      Left = 0
      Top = 0
      Width = 951
      Height = 460
      ActivePage = tshListado
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabIndex = 0
      TabOrder = 0
      TabStyle = tsRoundCorners
      OnChange = pgcMainChange
      FixedDimension = 26
      object tshListado: TRzTabSheet
        Caption = '&1 Listado de Pedidos/Partidas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        object RzSplitter2: TRzSplitter
          Left = 0
          Top = 0
          Width = 947
          Height = 427
          Orientation = orVertical
          Position = 212
          UsePercent = True
          HotSpotVisible = True
          HotSpotDirection = hsdBoth
          SplitterWidth = 7
          Align = alClient
          BorderOuter = fsRaised
          TabOrder = 0
          BarSize = (
            2
            214
            945
            221)
          UpperLeftControls = (
            F1)
          LowerRightControls = (
            F2)
          object F1: TF1Book
            Left = 0
            Top = 0
            Width = 943
            Height = 212
            Align = alClient
            TabOrder = 0
            OnKeyUp = F1KeyUp
            OnClick = F1Click
            OnSelChange = F1SelChange
            ExplicitWidth = 1065
            ExplicitHeight = 235
            ControlData = {
              0000010076610000E915000060000000010001074631426F6F6B310101010101
              0101010101010101010101006905000000000900050500EE0400000000EF1400
              0000FF0000FF3F0400FFFFFFFFFFFFFFFFF3FF3D120000000041376C0C380000
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
              FF1CFFFFFF00C0C0C000FF00FF3F0000000000000000F2100000000000000000
              000000000300FFFFF6150015001500FF0040061D0F0300000000000001000000
              000000FF3E0AB6060000000000000000A0640064009926090A0000000452E30B
              918FCE119DE300AA004BB8516C7400006C000000010000005800000000000000
              00000000FFFFFFFFFFFFFFFF00000000000000006C520000B83D000020454D46
              000001006C000000020000000100000000000000000000000000000020030000
              58020000D30000009E0000000E00000014000000000000001000000014000000
              01}
          end
          object F2: TF1Book
            Left = 0
            Top = 0
            Width = 943
            Height = 204
            Align = alClient
            TabOrder = 0
            OnEnter = F2Enter
            OnSelChange = F2SelChange
            ExplicitWidth = 1065
            ExplicitHeight = 235
            ControlData = {
              00000100766100001615000060000000010001074631426F6F6B310101010101
              0101010101010101010101006905000000000900050500EE0400000000EF1400
              0000FF0000FF3F0400FFFFFFFFFFFFFFFFF3FF3D12000000004137F40B380000
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
        end
      end
      object tshImpresion: TRzTabSheet
        Caption = '&2 Impresi'#243'n de Pedidos'
        object F11: TF1Book
          Left = 0
          Top = 0
          Width = 947
          Height = 427
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 1065
          ExplicitHeight = 235
          ControlData = {
            00000100E0610000222C000060000000010001074631426F6F6B310101010101
            0101010101010101010101006905000000000900050500EE0400000000EF1400
            0000FF0000FF3F0400FFFFFFFFFFFFFFFFF3FF3D12000000007D370519380000
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
      end
      object tshReportes: TRzTabSheet
        Caption = '&3 Reportes'
        object F12: TF1Book
          Left = 0
          Top = 0
          Width = 947
          Height = 427
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 1065
          ExplicitHeight = 235
          ControlData = {
            00000100E0610000222C000060000000010001074631426F6F6B310101010101
            0101010101010101010101006905000000000900050500EE0400000000EF1400
            0000FF0000FF3F0400FFFFFFFFFFFFFFFFF3FF3D12000000007D370519380000
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
      end
    end
    object RzPageControl1: TRzPageControl
      Left = 0
      Top = 0
      Width = 234
      Height = 460
      ActivePage = TabSheet3
      Align = alClient
      TabIndex = 0
      TabOrder = 0
      TabStyle = tsRoundCorners
      FixedDimension = 19
      object TabSheet3: TRzTabSheet
        Caption = 'Acciones'
        object grpPedido: TRzGroupBox
          Left = 0
          Top = 0
          Width = 230
          Height = 250
          Align = alTop
          Caption = ' Comentarios del Pedido: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object lblPedidoVentas: TRzLabel
            Left = 1
            Top = 14
            Width = 228
            Height = 17
            Align = alTop
            Alignment = taCenter
            Caption = 'De Ventas'
            Color = clMoneyGreen
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            BorderOuter = fsGroove
            ExplicitWidth = 64
          end
          object lblPedidoalmacen: TRzLabel
            Left = 1
            Top = 89
            Width = 228
            Height = 17
            Align = alTop
            Alignment = taCenter
            Caption = 'De Almacen'
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            BorderOuter = fsGroove
            ExplicitWidth = 73
          end
          object lblPedidoCxC: TRzLabel
            Left = 1
            Top = 164
            Width = 228
            Height = 17
            Align = alTop
            Alignment = taCenter
            Caption = 'De Creditos y Cobrabza'
            Color = 16776176
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            BorderOuter = fsGroove
            ExplicitWidth = 138
          end
          object mmzPedidoVentas: TRzMemo
            Left = 1
            Top = 31
            Width = 228
            Height = 58
            Align = alTop
            MaxLength = 100
            TabOrder = 0
            OnChange = mmzPedidoVentasChange
            OnEnter = mmzPedidoVentasEnter
            FrameHotTrack = True
            FrameVisible = True
          end
          object mmzPedidoAlmacen: TRzMemo
            Left = 1
            Top = 106
            Width = 228
            Height = 58
            Align = alTop
            MaxLength = 100
            TabOrder = 1
            OnChange = mmzPedidoAlmacenChange
            OnEnter = mmzPedidoVentasEnter
            FrameHotTrack = True
            FrameVisible = True
          end
          object mmzPedidoCxC: TRzMemo
            Left = 1
            Top = 181
            Width = 228
            Height = 55
            Align = alTop
            MaxLength = 100
            TabOrder = 2
            OnChange = mmzPedidoCxCChange
            OnEnter = mmzPedidoVentasEnter
            FrameHotTrack = True
            FrameVisible = True
          end
        end
        object grpPartidas: TRzGroupBox
          Left = 0
          Top = 250
          Width = 230
          Height = 184
          Align = alClient
          Caption = 'Comentarios de Partida: '
          TabOrder = 1
          object lblPartidaVentas: TRzLabel
            Left = 1
            Top = 14
            Width = 228
            Height = 17
            Align = alTop
            Alignment = taCenter
            Caption = 'De Ventas'
            Color = clMoneyGreen
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            BorderOuter = fsGroove
            ExplicitWidth = 64
          end
          object lblPartidaAlmacen: TRzLabel
            Left = 1
            Top = 89
            Width = 228
            Height = 17
            Align = alTop
            Alignment = taCenter
            Caption = 'De Almacen'
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            BorderOuter = fsGroove
            ExplicitWidth = 73
          end
          object mmzPartidaVentas: TRzMemo
            Left = 1
            Top = 31
            Width = 228
            Height = 58
            Align = alTop
            MaxLength = 100
            TabOrder = 0
            OnChange = mmzPartidaVentasChange
            OnEnter = mmzPedidoVentasEnter
            FrameHotTrack = True
            FrameVisible = True
          end
          object mmzPartidaAlmacen: TRzMemo
            Left = 1
            Top = 106
            Width = 228
            Height = 58
            Align = alTop
            MaxLength = 100
            TabOrder = 1
            OnChange = mmzPartidaAlmacenChange
            OnEnter = mmzPedidoVentasEnter
            FrameHotTrack = True
            FrameVisible = True
          end
        end
      end
      object TabSheet1: TRzTabSheet
        Caption = '&Info'
      end
      object TabSheet4: TRzTabSheet
        Caption = 'Opciones'
      end
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 752
    Top = 42
    Bitmap = {
      494C010106000900040018001800FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001002000000000000048
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EAEAEC00C5C5C500CDCD
      CD00CDCDCD00CED0CE00D1D0CF00CED0CE00D1D1D100D1D1D100D1D1D100D1D1
      D100D1D1D100D1D0CF00D1D1D100D1D1D100CED0CE00D1D1D100D1D0CF00CDCD
      D000CED0CE00CACACA00F5F5F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E100C5C5C500D1D0
      CF00C7C8C700CDCDCD00CDCDCD00D1D1D100D1D1D100D5D5D500D5D5D500D5D5
      D500F72BF700F72BF7002B2B9200F62AF600F62AF600F52AF5005B55AB00F428
      F400D1D1D100C5C5C500F0F0F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00EFEFEF00DFDFDF00DFDFDF00CFCFCF00CFCFCF00CFCF
      CF00B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000000000005F5F5F000000
      00000000000000000000000000000000000000000000E5E3E500CACACA00D8D8
      D800D1D1D100D5D5D500D5D5D500D5D5D500D8D8D800D8D8D800D8D8D800D8D8
      D800F72BF7002E2BAC002C2CA6002B2BAF00F72BF7002E35A6002B2FA5005B5B
      A500D8D8D800CACACA00EDEDED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00EFEFEF00DFDFDF00DFDFDF00CFCFCF00CFCFCF00CFCF
      CF00B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000000000005F5F5F005F5F
      5F000000000000000000000000000000000000000000E5E5E500CDCDCD00DDDD
      DD00D8D8D800DDDDDD00DDDDDD00E5E3E500E5E5E500E8E8E800E8E8E800E8E8
      E800FA2EFA00FA2EFA00443ED0003E3CC3003D3EC2003637BE004336C000F72B
      F700DDDDDD00CACACA00F0EEEE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005F5F
      5F005F5F5F0000000000000000000000000000000000E5E5E500CBCBCC00D8D8
      D800CDCDCD00D1D1D100D1D1D100D1D1D100D1D1D100D5D5D500D5D5D500D5D5
      D500F62AF600F72BF700F62AF6004B49D7004B49CC004742D100F52AF600F529
      F500D8D8D800CBCBCC00F0EEEE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00EFEFEF00EFEFEF00DFDFDF00DFDFDF00CFCFCF00CFCFCF00CFCF
      CF0000FF000000FF000000FF000000FF0000B0B0B000B0B0B000000000000000
      00005F5F5F0000000000000000000000000000000000E5E5E500CDCDCD00DEE0
      DF00E1E1E100E5E3E500E8E8E800EAECE900F0EEEE00EDEDED00EDEDED00F0EE
      EE00FC30FC00FB2FFB006F6EEA006768ED005E62E1004E4BE6006566C700F92D
      F900E0E0DF00CACACA00F3F4F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00EFEFEF00EFEFEF00DFDFDF00DFDFDF00CFCFCF00CFCF
      CF0000800000008000000080000000800000B0B0B000B0B0B000000000008080
      80000000000000000000000000000000000000000000E5E5E500CED0CE00D8D8
      D800CACACA00CDCDCD00D1D0CF00CED1D100D1D0CF00CED1D100CDCDD000D1D1
      D100F62AF5006B63DE005C5FF3007B6EEF00F62AF5005A57E6004D48E0006F6F
      B500D7DBDF00C9CDD000F0F0F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00EFEFEF00EFEFEF00DFDFDF00DFDFDF00CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00B0B0B000B0B0B000000000008080
      80008080800000000000000000000000000000000000E5E5E500CED0CE00E1E1
      E100E5E3E500EAECE900EAEAEC00F0F0F000F0F0F000F0F0F000ECEEF200EDF0
      F200FC30FC00FC30FC00676EE100FB30FC00FC30FC00FC30FC007074D700F92E
      FB00E0E2E400CBCBCC00EDEDED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000000000008080
      80008080800080808000000000000000000000000000D8D8D800D1D0CF00D5D5
      D500C7C8C700CACACA00CACACA00CDCDCD00CDCDCD00CED0CE00CED0CE00C9CD
      D000F52AF500F629F500F629F500F529F600F429F600F529F600F629F500F427
      F300E1DBD500D3CEC700F2F0EE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00EFEFEF00EFEFEF00EFEFEF00DFDFDF00DFDF
      DF00DFDFDF00CFCFCF00CFCFCF00CFCFCF00CFCFCF0000000000808080000000
      00008080800080808000000000000000000000000000E1E1E100CBCBCC00E5E5
      E500E8E8E800EDEDED00F0F0F000F5F5F400F5F5F400F6F7F300F6F7F300F5F5
      F400F3F6F800F4F3F600F6F0EB00F8F7F100F6F9F600F7F9F000F8F7E900F6F1
      E700E8E5E400C3C8D100ECEEF200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000000000008080
      80000000000080808000000000000000000000000000E5E5E500CDCDCD00D5D5
      D500BBBBBB00BEBEBE00BEBEBE00C0C0C000BFC2C100BFC2C100C6C2BD00C6C4
      C000B9BEC200D1D5D600FEF4EC00D6BD9700D1AF6900D8B36900D5B06700C6A8
      7000E2D3B900CECED500E8EBF000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000808080000000
      00008080800000000000000000000000000000000000E5E5E500CDCDCD00D8D8
      D800A3A3A300A6A6A600A6A6A600A6A6A600A4A6A900A4A6A900AEA9A500AEA9
      A5009A9FA600BDC0C400FFFFEF00C6985100D67E0000E38A0200DE890200BC79
      0B00E4C78900DFD8C700EDEDED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CFCFCF00FFFFFF00CF300000CF300000CF30
      0000CF300000CF300000CF300000CF300000FFFFFF0000000000808080008080
      80000000000080808000000000000000000000000000E5E3E500CACACA00E5E5
      E500C0C0C000B5B5B500C0C0C000C3C1BF00BFBFC100BCBEC800C7BFBE00C6C2
      BD00B2BAC200CED1D100FFFCE200D8AB5500ED970200FAA20400F49F0500D391
      1700EDCE8D00DAD7C900ECEEF200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CFCFCF00000000000000
      00000000000000000000000000000000000000000000E5E3E500C7C8C700DEE0
      DF00DBDFDC00D4D8D600D5D5D500DBDEE000DBDADF00E1DAE100E4DDE000DDDC
      E200D5D9E400E0DFE300F8EDE000C9A57900C98B4000D4963D00CF963D00B387
      4800DBCC9900D2D3C100E8EBF000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CFCFCF00FFFFFF00FF303000FF30
      3000FF303000FF303000FF303000FF303000FF303000FFFFFF00000000000000
      00000000000000000000000000000000000000000000E9E6E200D4D5CF00E3E5
      E200E3E5DF00E9EBE500EAECE900E6E5E900F0EEF300F9F3F000F3F4F000EDF0
      F200F0F5F600F3F4F000F3EEEA00FBF0E700FFEDE400FFEDD600FFEDD600F4E4
      E100EBEED800CED1D100F0ECF800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CFCFCF000000
      00000000000000000000000000000000000000000000E6E2D000B8A36B00D7BC
      7700D1B67100D1B87200D2B97500D3B67700CFB47500CBBB7400D0BF7600D1BE
      7200D1BD7100D3BB7300D2BA7600CEB87500CBB77900CEBA6F00D3B86F00D3B4
      7F00CCB77400B7A17C00F5EFF000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFCFCF00FFFFFF00FF60
      3000FF603000FF603000FF603000FF603000FF603000FF603000FFFFFF000000
      00000000000000000000000000000000000000000000E2DEC000BA971A00D7A9
      0700D4AB0D00D8AF0D00D9AF0F00DBAF1300DCB21800CDA91000D4AD1000D9AE
      0900D9A70400D4A10500CF9C0B00CA950600CD920200CC920100D08F0000D289
      0600C8900000C2952100F7F2D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFCFCF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CFCF
      CF000000000000000000000000000000000000000000E5E3BC00CFAC2500E6BA
      1100E2BA1200E8BF1400E8C01600E8C01600E9BF1B00E9BF2400E5B81B00EDB9
      1700EEB51300EAAC1200E4A61500E5A00F00EB9B0C00E29A0A00E3980700E393
      0700D79A0400C8A13000F5F1D700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E4B900DEB53300F9C1
      2000F7C32300FBC62200FAC72400FBC62600FBC52600FCC52A00F9C72E00F4BD
      2500F9BC2500FCB82100F9AE1900FBAB1400F7A31900ECA01700EF9F1300F69C
      1200E9A20B00CFA23E00F6F3DF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3E1B900CEAD3C00F1C3
      3C00EBC03A00EEC63800EFC73A00EEC53B00EEC53B00EEC63800EAC63A00E1C3
      3C00DCBC3500E7BC3300EEB92900EEB51B00EAAF1A00E0AC1B00E7AA1500EFA5
      1100E8AA0B00CBA23500F4F2DB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9E8DA00CBC08D00DDCD
      8C00D9CB8A00DACD8B00DACC8C00DACD8B00DACC8C00DBCE8C00D8CC8C00D8CC
      8C00D9CE8E00D6C48200DECC8900DACA8700DACA8700D9CB8900DBCB8800DCCB
      8600D9C78200D5C78900FAF8E400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A13B0100B1541C01A13B0154A13B
      0101A13B013BA13B0101A13B013BA13B01010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A13B0100A13B0101E39C5B3BEBA35D5BE3964CA3E08E
      414CDF8B3A8EDA84343ADB843084D47D2B30B657147DA13B0114000000000000
      0000000000000000000000000000000000000000000000000000000000007487
      41005C7E4300597B430057794300577A4200587C3C0059813600598332005A84
      3500577E38005B7D45005A774D0059763D0064813800607D3A005B763800667C
      4100768449000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CA650100CA65
      0101CA650165CA650101CA650165CA650101CA650165CA650101CA650165CA65
      0101CA650165CA650101CA650165CA650101CA650165CA650101CA650165CA65
      0101CA650165CA65010100000000000000000000000000000000000000000000
      000000000000A13F0EFFDE985D3FF3B3735DD28244B3C7824E44D3A37682073B
      FE76AE93943BD5A97C94C88652A9C0661F52D57A2066CC701D20A13D04700000
      000000000000000000000000000000000000000000000000000074853B00597D
      3C004F8248004F814A0052824C0052844C004E81450051844300518540004B81
      3C00588A4E0051814E004B794D005788500052833F00548445005C874C00547C
      45005A7A4200687B3F0000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE63000000000000000000000000000000000000CA650100FFFF
      FF01FFF7EDFFFFF4E6EDFFF0DFF4FEECD7DF41AB31ECFEE5C831FFE1C1E5FFDF
      BAC1FEDCB4DFF7D3ABB4C6A887D339872C87E4C29A87F3CEA49AFCD5AACEFED7
      ABAAFED7ABD7CA6501AB00000000000000000000000000000000000000000000
      00009D3A0900E6A36909F3B373A3BE6D3673DBB38E6DFCF9E78EFEFCF3F9073B
      FEF3B8C8F23BFEFDF5F2FFFFFAFDF5EBD9FAC37F50EBC9691250CE7017699E39
      02170000000000000000000000000000000000000000808E42005A7E3A005887
      47004F834400508241005485430053844200558244004B763F0067915D005A84
      51004C77420057854A004E8040004C874300498742004E8346004F8149005081
      4C00538046005D7D3F007B864200000000000000000000000000CE630000FFFF
      FF00FFFFF700FFF7EF00FFF7E700FFEFE700FFEFDE00FFEFD600FFEFD600FFE7
      CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6AD00FFD6
      A500FFD6A500CE63000000000000000000000000000000000000CA650100FFFF
      FF01FFFAF4FFFEF7EFF4FFF3E8F7FFF0E0E841AB31F0FEE9D131FEE6CAE9FEE2
      C2CAFFDFBBE2ECCCA9BB444547CC1D5667476E756C56AF977A6CE0BE9797F7D1
      A697FED7ABD1CA6501AB0000000000000000000000000000000000000000A13B
      01FFD68F573BF7BC8057BA6935BCE8D3B035FDF6E8D3FAE9CFE8F5D1A7E9EDC7
      9DA7EDC79DC7F6D5A89DFAEACAD5FEFDF5CAFEFDFAFDCC9772FACA670D97C463
      0F0DA13B016300000000000000000000000000000000677F3700507F3F005184
      46005482400059873F00517E34006089430050723C008BA68100E2F7E100C7DD
      C8005F7C56005D824500588734004C8735004B89430051844600507E45004E7E
      48004C8145005D884500677B3100000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFEF
      D600FFE7CE00FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6AD00FFD6
      AD00FFD6A500CE63000000000000000000000000000000000000CA650100FFFF
      FF01FFFDFAFFFFFAF5FAFFF7EFFAFEF4E8EF41AB31F4FFEDDA31FEEAD3EDFEE6
      CBD3FEE3C3E6FEDFBCC3A59F8FDF0E7AA48F4E6F867A765C5A869B826B5CD1B2
      8E6BEECAA1B2CA6501A10000000000000000000000000000000000000000B45C
      27FFFFCA915CC97B4491E3C49E7BFCF5E29EF9E4BEF5F4D0A0BEF4CD9DD0F2C5
      939DF0BC88C5EFB88388F0BE8AB8F5D5A78AFEF9EAD5FEFDF9EAC17845FDD06F
      0C45A13B016F0000000000000000000000000000000061803A004D824400578B
      5000568141005A873F005E863E0058793B00718B6300E1EEE300FBFFFF00FAFF
      FF00A1B59F0057773F00618D3700558B36004D843F0057814200598146005381
      48004A83430055873F0067803100000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7
      EF00FFEFD600FFEFD600FFE7C600FFE7C600FFDEBD00FFDEB500FFDEB500FFD6
      AD00FFD6AD00CE63000000000000000000000000000000000000CA65010051B0
      420141AB31B041AB313141AB31AB41AB313141AB31AB41AB313141AB31AB41AB
      313141AB31AB41AB31313DA333AB3F6D6733D9A09E6DC48D8D9E7A59528D3565
      2A5237842C65CA65012C00000000000000000000000000000000A13B0100E29F
      6A01ECAB739FC3835573FEFDE583FDF9D9E5FDF8D0F9FDF8D0D0FDF8D0F8FCF2
      CAD0F9E3B7F2F3CA9AB7EFB883CAEFB98483F5D2A2B9FEFCF3A2EEDDCEFCBA55
      02CEC6640955A13B01090000000000000000000000005F7F3B004D8247004B82
      4A004F7E4500578348005D844C0057774A00D0E1CE00F5FCFF00F1F5FB00F0F5
      FF00EBF9F100728E6600567F390055883C0053853F005F814100607E46005680
      46004984420051883D0065823000000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C003131
      310052636B009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C00FFD6AD00CE63000000000000000000000000000000000000CA650100FFFF
      FF01FFFFFFFFFFFFFFFFFFFDFCFFFFFBF7FC41AB31FBFFF5EB31FEF3E4F5FFEF
      DCE4FFECD5EFFFE7CDD5FFE4C6E7428644C6D8A3A186E2ACACA1BC8787AC815A
      57878E79645ACA65016400000000000000000000000000000000A3420E00FCC6
      900ECF834EC6DBB88F4EFFFEEEB8FFFFE2EEFFFFD9FFFFFFD9D9FFFFD9FFFFFF
      DED9FFFEE1FFFBEFC8E1F4CD9DEFEFB8839DF0BC88B8F9E4C388FDFAF3E4B154
      13F3CD6A0654A13B0106000000000000000000000000617E3C004F824800497E
      4900507F4A005A8454004B6F4700AEC7AD00F8FFFE00F9FFFF00CAD2D700E5F3
      F200FAFFFF00C8DDC60057784E0056844A005283400060804200627E4600567F
      47004785440049863C0062833100000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B5A
      4A003929180029637B0052636B00FFEFD600FFEFD600FFEFD600FFEFD600FFDE
      B500FFDEB500CE63000000000000000000000000000000000000CA650100FFFF
      FF01FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFF41AB31FEFEF8F231FEF6ECF8FFF2
      E5ECFFEFDEF2FEEBD6DEFFE8CEEB41AB31CEC39C8BABD4A3A38BE2ADADA3BA85
      85AD825B5785CA65015700000000000000000000000000000000B45B2800FEC9
      9328C67C4AC9FAEACA4AFFFFFCEAFFFFFAFCFFFFDDFFFFFFD9DDFFFFDBFFD6D6
      B8DBB0B09AD6F5F5D29AFBECC3F5F2C593C3EFB883C5F4D0A083FFFEEED0BA6E
      37EEC963016EA13B0101000000000000000000000000657E3B00537F47005385
      4D00548249004A70440087A38600EFFBF100FEFFFE00CDD9C80063745A00AAB9
      A000FAFFF400F6FFF60097A99C0047704700518843005F7F4400627E47005580
      48004284460047873E0063833400000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00D6D6
      D6008CB5C6008CF7FF002973F70021526B009C9C9C009C9C9C009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000CA650100FFFF
      FF01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF41AB31FFFFFCF831FFF9F3FCFFF6
      EDF3FFF3E5F6FEEFDEE5FFECD6EF41AB31D6FEE4C8ABB99687C8D6A6A696DFAA
      AAA6BF8383AA8D4E458300000000000000000000000000000000BC673400FEC7
      8F34C68052C73694F9523694F994FFFFFFF9FFFFF1FFFFFFDBF1FAFAD5FF5151
      4BD583838451B0B09A84FEFCE2B0F6D9ABE2EFB883D9073BFE83073BFE3BAC6D
      4DFECB63006DA13B0100000000000000000000000000667E3A00578048005584
      45004E78370072926500DEEED900F6FFF300E8F1DC007E8E63005C7138006E86
      4800DEE9C300FDFFF500ECF1F1006A8D7100457E3E005C8248005D7D4900527F
      4A003E834700478944005E7E3400000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006BC6FF008CF7FF002973F7002973F70008426300FFEFD600FFEFD600FFEF
      D600FFEFD600CE63000000000000000000000000000000000000CA650100DAD8
      FA019292FFD86262FFFF4444FE623F3FFCFE3247D53F8C8BFED5D8D5FA8BFFF9
      F4FAFEF6EDF9FEF3E6EDFEF0DFF341AB31DFFFEAD0ABFFE5C9D0BD9B8CE5E4AD
      AC8C9D9099AD279FBD991CAECE9F000000000000000000000000B8632F00FDC8
      912FC98556C8D8DDD556F5FBFADDFFFFFFFAFFFFFFFFFFFFEBFFFCFCDAFF8181
      73DA2A2A2B815C5C542BF0F0D15CF9E4BED1F0BC88E4E3C49E88C6CDE8C4AC69
      45E8CB630069A13B0100000000000000000000000000607F3A0057814800537D
      4300698D5100D7ECC900FAFFF500EFFFED0086A47E0054754000698A4A005879
      3700849F6D00EFFDE600FCFFFF00B9D6BF00497A44005A844700598443004D81
      4100458548004B82440063813B00000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C0010A5D60042E7F7002973F7002973F70021526B009C9C9C009C9C
      9C00FFEFD600CE63000000000000000000000000000000000000CA650100535B
      F0015858EB5B5858CAEB6B6BC358696AC2C35654C46A4444DFC44046F2443371
      85F241AB317141AB313141AB31AB41AB313141AB31AB41AB313141AB31AB6E7B
      443133A5C57B08B9F1C5003BBEB90107A0BE0000000000000000AB4E1A00FFCB
      941ACE8755CBF1DDBA55FFFFFFDDFFFFFFFFFFFFFFFFFFFFFEFFFFFFEBFFFFFF
      DBEBE0E0C3FF5C5C54C35757505CF1DDBA50F0BE8ADDF3CA9A8AFCF9E7CAB660
      23E7CB670460A13B01040000000000000000000000005B81390056824600557C
      440076955F00B1CFA300A5C49E0090B38E004E794A004D7A4100568342005B84
      4500597A4700AEC3A600FAFFFA00EDFFF20090B38E004C723A005B8844004D85
      3E004A86460051814400657F3B00000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF70010A5D60042E7F7002973F7002973F70018425A00FFEF
      D600FFEFD600CE630000000000000000000000000000000000006768FE006768
      D9FE9A98C168E6DECCC1D9D0CFDEBEBDD6CFEFE9D9BDA9A7C3D95656BFA74B4B
      F7BFA5A3FC4BFFFAF6FCFFF7EFFA41AB31EFFEF1E2ABFEEDDAE2FEE9D3EDFFE6
      CBD390C3C4E61174DAC42840DF74061FB4DF0000000000000000A13B0100EFB4
      7E01DD9B66B4DBB38E66FEFDF5B3FFFFFFF5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F3FFFFFFE6FFF4F4D4E6717166F4615C5166EAC4965CF9E4C396EFDCC1E4B450
      06C1CB690950A13B01090000000000000000000000005E813700558144005781
      47005F8148004A6B3B004D7145004D754A0057824F005786490051813C005B87
      4200587B4300647D5700DCECDB00F9FFFF00DEF2E3006B845F00587D45005686
      4600487F410055874500657F3400000000000000000000000000CE630000FFFF
      FF00DEDEDE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C0010A5D60042E7F7002973F7002973F7002152
      6B00FFEFD600CE6300000000000000000000000000006363FFFF7373E263BCBB
      CDE2FFFBD5BBFADBADD5F1C593DBEDBB8A93F9D9AFBBFFFFF0AFD5D6D6FF5756
      BDD65151FE56D9D9FCFEFFFBF5D941AB31F5FFF5EAABFFF1E3EAFEEEDCF1FEEA
      D4DCFEE7CCEA8C6781CC333BD96700000000000000000000000000000000C779
      44FFFEC78F79C985568FF6E6C985FFFFFEC9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFCFFFFFFF1FCFEFEE5FF757568E57F7B6C75FCF5E26CC38355F5C864
      0655B8560764000000000000000000000000000000005E823700538245005581
      46005E8548005D834E005F855500527C4A004E7D44005485430054873E005383
      3B0060884B00516F42008AA28400EEFBF300FDFFFF00C0CDB8005D784E004D79
      42004D8449005382420065803200000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFFFF700FFF7EF00FFF7EF0010A5D60042E7F7002973F7002973
      F70008426300CE6300000000000000000000000000007F7FF9FF9393D37FFFFF
      DFD3FFF9D0FFFCF3C9D0FBEABFF3F7D4A3BFF2C894D4F7DAAB94FFFCE3DAA29E
      BDE35150DC9E8E8EFFDCFFFDFC8E41AB31FCFFF9F1ABFFF6EBF1FFF3E3F6FEEF
      DCE3FFEBD3EFCA6501D30000000000000000000000000000000000000000A03D
      0BFFF1B57D3DE39D617DD6A47C9DFBF1DB7CFFFFFEF1FFFFFFFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFEFFFCFCE4FEEBEAD5FCDCB893D5BB580BB8D070
      110B9F3A0270000000000000000000000000000000005C813800508146005484
      48005681420057804600517C460054834C004C804100558A44004D823600598C
      4100537F3E00567B460056734C00BFCCC100FFFFFF00FCFFF50090A586004E73
      49005F92620058854D006D863E00000000000000000000000000CE630000FFFF
      FF00E7E7E700B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5AD00B5B5AD00B5ADAD0010A5D60042E7F7002973
      F7003139BD003131310000000000000000005252FF007D7CECFFD4D2DD7CFFFF
      E5DDFFFFDAFFFFFFDBDAFFFFDCFFFFFAD1DCFFE4B5FAF8C68EB5F8CB9BC6ECE3
      D49B5858BBE36461FEBBFEEDF76151B041F7FEEAF0B0FEE8EAF0FEE5E5E8FEE1
      DFE5FEDED6E1CA6501D600000000000000000000000000000000000000000000
      0000B0562200F8BE8222D98E54BED6A37954F4E2C7A3FEFCF3C7FFFFFEFC3694
      F9FED7ECF194FEFDFAF1FFFFFEFDFDFBE5FED3A479FBBA5B1379D476175BAC48
      0617000000000000000000000000000000000000000059803B004C8148004F82
      470058874500548143005381460058884C004B7F3E004A823900558C3E004F82
      360054823E005C854B005577490072836E00E4E9E400FFFFFA00DEEDD600789B
      7B006390700078A37800869D6100000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF0010A5D60042A5
      DE008C847B0084847B0031313100000000006363FF008483E8FFD9E3EB83FDFF
      FEEBFFFFE1FFFFFFDDE1C0C0A9FF555655A9555655565556555555565556D3CB
      D2556667B9CB5048E7B9D8730248D8730202D8730273D8730202D8730273D873
      0202D8740273CA65010200000000000000000000000000000000000000000000
      000000000000B75F2AFFF8BD7E5FE39C5B7ECE8B5A9CE1B9965AEFDCC1B93694
      F9C1C3D4D794F5EBD9D7E2C3A5EBBF753FA5C5651675D97E2016B14F0C7E0000
      00000000000000000000000000000000000000000000577F3D004C824A004B81
      46005585430054844400508141004F824000558A46005288400054893E004F82
      390054844200568046005A804D00546E49009EAD9400FCFFEE00FDFFF900A3C0
      AF0071998A0088AB9400A0B18600000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7EF00846B
      5A00FFFFFF00F7EFE7007363520021214A006363FF008988E9FFCADBEA88FBFE
      FFEAFFFFF8FEFFFFE1F8C5C5AEFF555655AE51524D569F977F4DE1B68897BCB8
      CE886365BEB85048E7BECA650148CA650101CA650165CA650101CA650165CA65
      0101CA6501650000000000000000000000000000000000000000000000000000
      00000000000000000000AE521E00E39D611EF1AE699DDB8E4B69D0854B8ECE89
      544BCB854F89C8783A4FCD752A78D9812A2AD2792581AB490B25000000000000
      00000000000000000000000000000000000000000000567C3D004D8148004C81
      46005484440052844400508241004E823F004E823E0050833D0050833E005585
      4300538044005781490061875600688A5C0077946700BED6AE00D7EFD4009BB6
      AB0083A2A20095AEA700B6C0A000000000000000000000000000CE630000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFF7EF00FFF7E700FFF7
      E7009C948C00E7CEB50029637B002973F7004F4FFF008887EFFFDDD5E487FFFF
      FFE4FFFFFFFFFFFFF6FFFFFFE2FFE0E0C1E2717267E0B6A98C67FFDBA8A9ECDF
      C8A85B5BC9DF4847FFC900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4592200CF7E3F22DB8E477EDC8B
      4047DB8A3E8BD682373EC86F2682A13B0126A13B013B00000000000000000000
      000000000000000000000000000000000000000000005F7F3D00548347005283
      4600528344005385460051844300508340005284420051804000517E41005480
      470057824C005E8755006A8F6100769D6B00789E6B0083A0740097AF930095AB
      A2009CB2B500B5C5C000CFD1B000000000000000000000000000D6730000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B
      0000DE7B00004A6B9C00299CEF002973F700000000008484FCFFA5A0DD84FFFF
      F7DDFFFFFFFFFFFFFFFFFFFFFCFFFFFFF3FCEDEDD4FF716F62D4CCC1A16FA6A2
      CAA15353EBA24847FFEB00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A13B01FFC373403BA13B
      0140A13B013BB751020198320051000000000000000000000000000000000000
      00000000000000000000000000000000000000000000718840005C7F3C005983
      44005381450054834500538343005482420057824500568249005A824E006389
      5900698D62006F936900789C72007CA379008FB38B00A0B89400A4B59E00B5C2
      B800B8C6C100D9DFCE00D6CFA100000000000000000000000000E7A56300CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000E7A563000010E7000010E700000000005C5CFFFF8382F15CC9C0
      DAF1FFFFF7C0FFFFFFF7FDFFFFFFFAFDFFFFFFFFFFFDFEFDDAFFBFBEC4FD5C5D
      DEC44847FF5D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A13B01FFCD82503BEFB4
      7E50CD721DB4BD55001D9A330055000000000000000000000000000000000000
      000000000000000000000000000000000000000000008A994A00668034005C81
      3F0055814A00548247005381430055804300578249005C845200658A5E006F92
      6D00789978007F9F7F0085A7850089AC910096B5A200ABBEAC00BBC7B800C9CE
      C400DEE3D500F1EFCF00C8B97B0000000000000000000000000000000000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      0800D67B210000000000000000000000000000000000000000006161FF007777
      F1FFA9A3DE77EAE5E6DEEAF2F0E5D7EAF3F0EFEEF2EAACACE1F25D5DE7AC4949
      FDE7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A13B0100A13B0101A13B013BA13B
      0101A13B013BA13B0101A13B013BA13B01010000000000000000000000000000
      00000000000000000000000000000000000000000000000000008A974300647F
      3900547D4500578044005A82430061874B00698D5700719362007A997000849F
      7D008CA7880096B19200A2BD9C00A7C1AE00B7CCC500CBD5CA00DDDFD100F4F4
      E100F3F1D400D0C6950000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004C4C
      FFFF5D5DFB4C6664EEFB7C79E8647B79E9E85F5FEE794848F9EE3D3DFF480000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A13B0100F1B88401FFE8B5B8FEC6
      85B5DD8425C6D16B0025D16C016BA84201010000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8A2
      49007E8C44007A883F007E8C430089974E008D9A550094A05D009DA76800A3AA
      7100ABB27A00B4BB8400BCC28C00C2C49100D5D09E00EADFAA00F2E1AA00ECDA
      9F00CFBA78000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003131FFFF2F2FFF312B2BFFFF2A2AFF2B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A13B0100A13B0101A13B013BA13B
      0101A13B013BA13B0101A13B013BA13B01010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF000000000000FFFFFFFF
      FFFF000000000000FFFFFF800001000000000000F8001F800001000000000000
      F8000F800001000000000000F80007800001000000000000E000038000010000
      00000000E00003800001000000000000E00003800001000000000000E0000380
      0001000000000000E00001800001000000000000E00001800001000000000000
      F00001800001000000000000FE0001800001000000000000FE00018000010000
      00000000FF0003800001000000000000FF001F800001000000000000FF800F80
      0001000000000000FF800F800001000000000000FFC007800001000000000000
      FFFFFF800001000000000000FFFFFF800001000000000000FFFFFF8000010000
      00000000FFFFFFFFFFFF000000000000FFFFFFFF00FFFFFFFFFFFFFFFFFFFFFC
      003FE00007FFFFFFC00003F8001FC00003C00003C00003F0000F800001C00003
      C00003E00007800001C00003C00003E00007800001C00003C00003C000038000
      01C00003C00003C00003800001C00003C00003C00003800001C00003C00003C0
      0003800001C00003C00001C00003800001C00003C00000C00003800001C00003
      C00000C00003800001C00003800001E00007800001C00003800003E000078000
      01C00003000003F0000F800001C00001000003F8001F800001C00000000007FC
      003F800001C000000003FFFF007F800001C000008003FFFF81FF800001C00000
      8007FFFF81FF800001E00007C00FFFFF00FFC00003FFFFFFE01FFFFF00FFE000
      07FFFFFFF87FFFFF00FFFFFFFFFFFFFF}
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 704
    Top = 74
  end
  object icuRep: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = DM1.cnMBA
    Left = 776
    Top = 8
  end
  object FormStorage1: TFormStorage
    UseRegistry = False
    StoredValues = <>
    Left = 664
    Top = 48
  end
  object RzFrameController1: TRzFrameController
    FrameHotTrack = True
    FrameVisible = True
    Left = 720
    Top = 40
  end
  object icuPed: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = DM1.cnMBA
    Left = 696
    Top = 8
  end
  object icuDet: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = DM1.cnMBA
    Left = 736
    Top = 8
  end
end
