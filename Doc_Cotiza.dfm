object frmDocsCotiza: TfrmDocsCotiza
  Left = 187
  Top = 102
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Consultas y Cotizaciones'
  ClientHeight = 571
  ClientWidth = 1292
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dfsStatusBar1: TTBXStatusBar
    Left = 0
    Top = 550
    Width = 1292
    Height = 21
    Panels = <>
    UseSystemFont = False
  end
  object Dock971: TTBXDock
    Left = 0
    Top = 0
    Width = 1292
    Height = 47
    object tlbMain: TTBXToolbar
      Left = 0
      Top = 0
      DockPos = 0
      FullSize = True
      Images = MainForm.ImageList2
      TabOrder = 0
      object tbtSalir: TTBXItem
        Action = Salir
        Caption = '  &Salir  '
        DisplayMode = nbdmImageAndText
        ImageIndex = 12
        Options = [tboImageAboveCaption]
        Left = 554
      end
      object ToolbarSep971: TTBXSeparatorItem
        Left = 452
      end
      object tbtCreate: TTBXItem
        Caption = '&Nuevo'
        DisplayMode = nbdmImageAndText
        Hint = 'Capturar nuevo documento  (F5)'
        ImageIndex = 11
        Options = [tboImageAboveCaption]
        OnClick = tbtCreateClick
      end
      object tbtImprimir: TTBXItem
        Caption = '&Imprimir'
        DisplayMode = nbdmImageAndText
        Hint = 'Imprimir y Grabar  (F7)'
        ImageIndex = 13
        Options = [tboImageAboveCaption]
        OnClick = tbtImprimirClick
        Left = 52
      end
      object tbtGrabar: TTBXItem
        Caption = ' &Grabar '
        DisplayMode = nbdmImageAndText
        Hint = 'Grabar Factura (F6)'
        ImageIndex = 24
        Options = [tboImageAboveCaption]
        OnClick = tbtGrabarClick
        Left = 23
      end
      object ToolbarSep973: TTBXSeparatorItem
        Left = 278
      end
      object tbtVer: TTBXItem
        Caption = '&Ver Panel'
        DisplayMode = nbdmImageAndText
        GroupIndex = 1
        Hint = 'Ver/Esconder Area de captura'
        ImageIndex = 18
        Options = [tboImageAboveCaption]
        OnClick = tbtVerClick
        Left = 81
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object tbtCancelar1: TTBXSubmenuItem
        Caption = '&Cancelar...'
        DisplayMode = nbdmImageAndText
        ImageIndex = 9
        Options = [tboDropdownArrow, tboImageAboveCaption]
        object tbtCancelar: TTBXItem
          Caption = 'Cancelar &Documento'
          DisplayMode = nbdmImageAndText
          ImageIndex = 111
          Images = MainForm.ImageList1
          OnClick = tbtCancelarOldClick
        end
        object tbtCancelarPartida: TTBXItem
          Caption = 'Cancelar &Partida'
          DisplayMode = nbdmImageAndText
          ImageIndex = 179
          Images = MainForm.ImageList1
          OnClick = tbtCancelarPartidaClick
        end
      end
      object tbtSaldos: TTBXItem
        Caption = '&Saldos'
        DisplayMode = nbdmImageAndText
        Hint = 'Seleccionar Pedidos'
        ImageIndex = 37
        Options = [tboImageAboveCaption]
        OnClick = tbtSaldosClick
        Left = 368
      end
      object tbtDocsF1: TTBXSubmenuItem
        Caption = 'Documentos'
        DisplayMode = nbdmImageAndText
        ImageIndex = 88
        Options = [tboDropdownArrow, tboImageAboveCaption]
        object tbtCot1: TTBXItem
          Tag = 30
          Caption = 'Cotizaciones Mty'
          DisplayMode = nbdmImageAndText
          ImageIndex = 2
          Images = MainForm.ImageList1
          OnClick = tbtCot1Click
        end
        object tbtPed1: TTBXItem
          Tag = 23
          Caption = 'Pedidos Mty'
          DisplayMode = nbdmImageAndText
          ImageIndex = 176
          Images = MainForm.ImageList1
          OnClick = tbtPed1Click
        end
        object tbtRem1: TTBXItem
          Tag = 28
          Caption = 'Remisiones Mty'
          DisplayMode = nbdmImageAndText
          ImageIndex = 178
          Images = MainForm.ImageList1
          OnClick = tbtRem1Click
        end
        object TBXSeparatorItem4: TTBXSeparatorItem
        end
        object tbtCot2: TTBXItem
          Caption = 'Cotizaciones Gdl'
          DisplayMode = nbdmImageAndText
          ImageIndex = 2
          Images = MainForm.ImageList1
          OnClick = tbtCot2Click
        end
        object tbtPed2: TTBXItem
          Caption = 'Pedidos Gdl'
          DisplayMode = nbdmImageAndText
          ImageIndex = 176
          Images = MainForm.ImageList1
          OnClick = tbtPed2Click
        end
        object tbtRem2: TTBXItem
          Caption = 'Remisiones Gdl'
          DisplayMode = nbdmImageAndText
          ImageIndex = 178
          Images = MainForm.ImageList1
          OnClick = tbtRem2Click
        end
        object TBXSeparatorItem5: TTBXSeparatorItem
        end
        object tbtCot3: TTBXItem
          Caption = 'Cotizaciones Mex'
          DisplayMode = nbdmImageAndText
          ImageIndex = 2
          Images = MainForm.ImageList1
          OnClick = tbtCot3Click
        end
        object tbtPed3: TTBXItem
          Caption = 'Pedidos Mex'
          DisplayMode = nbdmImageAndText
          ImageIndex = 176
          Images = MainForm.ImageList1
          OnClick = tbtPed3Click
        end
        object tbtRem3: TTBXItem
          Caption = 'Remisiones Mex'
          DisplayMode = nbdmImageAndText
          ImageIndex = 178
          Images = MainForm.ImageList1
          OnClick = tbtRem3Click
        end
      end
      object tbtPedimentos: TTBXItem
        Caption = '&Pedimentos'
        DisplayMode = nbdmImageAndText
        Hint = 'Seleccionar Pedidos'
        ImageIndex = 14
        Options = [tboImageAboveCaption]
        Visible = False
        OnClick = tbtPedimentosClick
        Left = 458
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object tbtFormato: TTBXSubmenuItem
        Caption = 'Formato'
        DisplayMode = nbdmImageAndText
        ImageIndex = 63
        Options = [tboDropdownArrow, tboImageAboveCaption]
        object tbtFijarLP: TTBXItem
          Caption = 'Fijar Renglones (Lista de Precios)'
          OnClick = tbtFijarLPClick
        end
        object tbtLiberarLP: TTBXItem
          Caption = 'Liberar Renglones (Lista de Precios)'
          OnClick = tbtLiberarLPClick
        end
        object TBXSeparatorItem7: TTBXSeparatorItem
        end
      end
      object TBXSeparatorItem3: TTBXSeparatorItem
      end
      object tbtAyuda: TTBXItem
        Caption = '&Ayuda'
        DisplayMode = nbdmImageAndText
        ImageIndex = 79
        Options = [tboImageAboveCaption]
        OnClick = tbtAyudaClick
      end
    end
  end
  object pgcCotiza: TRzPageControl
    Left = 0
    Top = 47
    Width = 1292
    Height = 503
    ActivePage = tshCotiza
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Images = ImageList1
    ParentFont = False
    TabIndex = 1
    TabOrder = 2
    TabStyle = tsRoundCorners
    FixedDimension = 26
    object tshConsultas: TRzTabSheet
      ImageIndex = 87
      Caption = '&1 Consultas de Clientes / Productos'
      object pnlBottom: TRzPanel
        Left = 0
        Top = 403
        Width = 1288
        Height = 67
        Align = alBottom
        BorderOuter = fsGroove
        TabOrder = 0
        object lblAlm0: TRzLabel
          Left = 192
          Top = 20
          Width = 139
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = 'Todos los Almacenes'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          BorderInner = fsFlat
          TextMargin = 2
        end
        object lblAlm1: TRzLabel
          Left = 336
          Top = 20
          Width = 139
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = 'Almacen'
          Color = clLime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          BorderInner = fsFlat
          TextMargin = 2
        end
        object lblAlmT: TRzLabel
          Left = 772
          Top = 21
          Width = 139
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = 'En Transito'
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          BorderInner = fsFlat
          TextMargin = 2
        end
        object lblAlm2: TRzLabel
          Left = 481
          Top = 22
          Width = 139
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = 'Almacen'
          Color = clLime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          BorderInner = fsFlat
          TextMargin = 2
        end
        object lblAlm3: TRzLabel
          Left = 626
          Top = 21
          Width = 139
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = 'Almacen'
          Color = clLime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          BorderInner = fsFlat
          TextMargin = 2
        end
        object lblArticulo: TRzLabel
          Left = 192
          Top = 4
          Width = 129
          Height = 13
          Caption = '*** Nombre Articulo ***'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnChecaExistencias: TRzBitBtn
          Left = 4
          Top = 20
          Width = 173
          Height = 44
          Hint = 'Listar articulos en base a la descripcion o codigo'
          Caption = '&Checar existencias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HotTrack = True
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnChecaExistenciasClick
          ImageIndex = 30
          Images = MainForm.ImageList2
        end
        object enzAlm0: TRzNumericEdit
          Left = 192
          Top = 39
          Width = 139
          Height = 24
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          FrameHotTrack = True
          FrameVisible = True
          FramingPreference = fpCustomFraming
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          DisplayFormat = '#,###'
        end
        object enzAlm1: TRzNumericEdit
          Left = 336
          Top = 39
          Width = 139
          Height = 24
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          FrameHotTrack = True
          FrameVisible = True
          FramingPreference = fpCustomFraming
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          DisplayFormat = '#,###'
        end
        object enzAlmT: TRzNumericEdit
          Left = 772
          Top = 40
          Width = 139
          Height = 24
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          FrameHotTrack = True
          FrameVisible = True
          FramingPreference = fpCustomFraming
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          DisplayFormat = '#,###'
        end
        object enzAlm2: TRzNumericEdit
          Left = 481
          Top = 39
          Width = 139
          Height = 24
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          FrameHotTrack = True
          FrameVisible = True
          FramingPreference = fpCustomFraming
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          DisplayFormat = '#,###'
        end
        object enzAlm3: TRzNumericEdit
          Left = 626
          Top = 40
          Width = 139
          Height = 24
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          FrameHotTrack = True
          FrameVisible = True
          FramingPreference = fpCustomFraming
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          DisplayFormat = '#,###'
        end
      end
      object RzSplitter1: TRzSplitter
        Left = 0
        Top = 0
        Width = 1288
        Height = 403
        MarginMax = 50
        MarginMin = 50
        Orientation = orVertical
        Position = 174
        Percent = 44
        HotSpotVisible = True
        SplitterWidth = 7
        Align = alClient
        TabOrder = 1
        BarSize = (
          0
          174
          1288
          181)
        UpperLeftControls = (
          pnlTop)
        LowerRightControls = (
          pnlMedio)
        object pnlTop: TRzPanel
          Left = 0
          Top = 0
          Width = 1288
          Height = 174
          Align = alClient
          BorderOuter = fsGroove
          TabOrder = 0
          object pnlTopLeft: TRzPanel
            Left = 449
            Top = 2
            Width = 837
            Height = 170
            Align = alClient
            BorderOuter = fsGroove
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object lblCliente2: TRzLabel
              Left = 2
              Top = 2
              Width = 833
              Height = 16
              Align = alTop
              Caption = 'Descuentos del Cliente:'
              ExplicitWidth = 141
            end
            object F21: TF1Book
              Left = 2
              Top = 18
              Width = 833
              Height = 150
              Align = alClient
              TabOrder = 0
              ExplicitLeft = 72
              ExplicitTop = 64
              ExplicitWidth = 379
              ExplicitHeight = 202
              ControlData = {
                0000010018560000810F000060000000010001074631426F6F6B310101010101
                0101010101010101010101002905000000000900050500EE0400000000EF1400
                0000FF0000FF3F0000FFFFFFFFFFFFFFFFF3FF3D121E000E01CF30CA08380000
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
                24232C2323302E30305C29ED050000000000EC03000000E01400000000F5FF20
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
                00E0140000000001002000C02000000000000000000000E01405000800F5FF20
                C8C02000000000000000000000E01405000600F5FF20C8C02000000000000000
                000000E01405000C00F5FF20C8C02000000000000000000000E01405000A00F5
                FF20C8C02000000000000000000000E01405000D00F5FF20C8C0200000000000
                0000000000E01404000000F0FF1248C020000000000000000000008509000006
                5368656574310A09000510000D01000C640011010010FCA9F1D24D62503F5F01
                002A00002B0100250000FF008C0100340081C104140302264115080750616765
                20265083000084000026000000000000E83F27000000000000E83F2800000000
                0000F03F29000000000000F03FA1220100640001000100010004002C012C0100
                0000000000E03F000000000000E03F01000000000000000000000000F7189200
                FFCCFFFFFF00ECE9D800FF00FF3F0000000000000000F2100000000000000000
                000000000300FFFFF6150015001500FF0040061D0F0300000000000001000000
                000000003E0AB6060000000000000000A0640064009926090A0000FF01}
            end
          end
          object RzPanel3: TRzPanel
            Left = 2
            Top = 2
            Width = 447
            Height = 170
            Align = alLeft
            BorderOuter = fsGroove
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object lblClientes: TRzLabel
              Left = 2
              Top = 46
              Width = 101
              Height = 16
              Caption = 'Lista de Clientes:'
            end
            object RzLabel9: TRzLabel
              Left = 2
              Top = 1
              Width = 226
              Height = 16
              Caption = 'C'#243'digo o Nombre de Cliente (Parcial):'
            end
            object lstClientes: TRzListBox
              Left = 2
              Top = 64
              Width = 443
              Height = 104
              Align = alBottom
              Anchors = [akLeft, akTop, akRight, akBottom]
              Ctl3D = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ItemHeight = 16
              Items.Strings = (
                'Teclea el codigo o palabras clave del nombre, luego Enter'
                'Hacer doble clic sobre el cliente para seleccionarlo')
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnDblClick = lstClientesDblClick
            end
            object cboCodigoCte: TRzComboBox
              Left = 2
              Top = 17
              Width = 226
              Height = 24
              Ctl3D = False
              FlatButtons = True
              FrameHotTrack = True
              FrameVisible = True
              FramingPreference = fpCustomFraming
              ItemHeight = 16
              ParentCtl3D = False
              TabOrder = 1
              OnKeyDown = cboCodigoCteKeyDown
            end
            object btnListarCtes: TRzBitBtn
              Left = 234
              Top = 1
              Width = 207
              Height = 40
              Caption = '&Listar Clientes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              HotTrack = True
              ParentFont = False
              TabOrder = 2
              OnClick = btnListarCtesClick
              ImageIndex = 52
              Images = MainForm.ImageList2
            end
          end
        end
        object pnlMedio: TRzPanel
          Left = 0
          Top = 0
          Width = 1288
          Height = 222
          Align = alClient
          BorderOuter = fsGroove
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object RzPanel4: TRzPanel
            Left = 2
            Top = 2
            Width = 1284
            Height = 63
            Align = alTop
            BorderOuter = fsGroove
            TabOrder = 0
            object RzPanel5: TRzPanel
              Left = 2
              Top = 2
              Width = 287
              Height = 59
              Align = alLeft
              BorderOuter = fsGroove
              TabOrder = 0
              object RzLabel11: TRzLabel
                Left = 2
                Top = 1
                Width = 115
                Height = 13
                Caption = 'Descripcion, Codigo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object cboCodigo2: TRzComboBox
                Left = 2
                Top = 14
                Width = 279
                Height = 24
                Ctl3D = False
                FlatButtons = True
                FrameHotTrack = True
                FrameVisible = True
                FramingPreference = fpCustomFraming
                ItemHeight = 16
                ParentCtl3D = False
                TabOrder = 0
                OnKeyDown = cboCodigo2KeyDown
              end
              object chkListarLP: TRzCheckBox
                Left = 2
                Top = 38
                Width = 239
                Height = 17
                Caption = 'Listar solamente articulos de la lista de precios'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                HotTrack = True
                ParentFont = False
                State = cbUnchecked
                TabOrder = 1
              end
            end
            object btnListarArticulos: TRzBitBtn
              Left = 289
              Top = 2
              Width = 152
              Height = 59
              Hint = 'Listar articulos en base a la descripcion o codigo'
              Align = alLeft
              Caption = '&Listar Articulos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              HotTrack = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = btnListarArticulosClick
              ImageIndex = 57
              Images = MainForm.ImageList2
            end
            object btnPasarCoti: TRzBitBtn
              Left = 441
              Top = 2
              Width = 176
              Height = 59
              Hint = 'Pasar a la cotizacion el articulo seleccionado'
              Align = alLeft
              Caption = '&Pasar a Cotizacion'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              HotTrack = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = btnPasarCotiClick
              ImageIndex = 40
              Images = MainForm.ImageList2
            end
            object btnBuscar: TRzBitBtn
              Left = 745
              Top = 2
              Width = 128
              Height = 59
              Hint = 'Buscar una palabra en el Listado General de Articulos'
              Align = alLeft
              Caption = '&Buscar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              HotTrack = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = btnBuscarClick
              ImageIndex = 20
              Images = MainForm.ImageList2
            end
            object btnSeleccionar: TRzBitBtn
              Left = 617
              Top = 2
              Width = 128
              Height = 59
              Hint = 'Pasr el articulo a la lista de seleccionados'
              Align = alLeft
              Caption = '&Seleccionar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              HotTrack = True
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = btnSeleccionarClick
              ImageIndex = 50
              Images = MainForm.ImageList2
            end
          end
          object pgcListados: TRzPageControl
            Left = 2
            Top = 65
            Width = 1284
            Height = 155
            ActivePage = TabSheet6
            Align = alClient
            TabIndex = 0
            TabOrder = 1
            TabStyle = tsRoundCorners
            OnPageChange = pgcListadosPageChange
            FixedDimension = 22
            object TabSheet6: TRzTabSheet
              Caption = '&1 Listado General de Articulos'
              object F31: TF1Book
                Left = 0
                Top = 0
                Width = 1280
                Height = 126
                Align = alClient
                TabOrder = 0
                OnDblClick = F31DblClick
                OnEndEdit = F31EndEdit
                ExplicitWidth = 1061
                ExplicitHeight = 139
                ControlData = {
                  000001004B840000060D000060000000010001074631426F6F6B310101010101
                  0101010101010101010101003809000000000900050500EE0400000000EF1400
                  0000FF0000FF3F0000FFFFFFFFFFFFFFFFF3FF3D1200000000004B6207380000
                  000000010058023114C8000000FF7F900100000000000005417269616C3114C8
                  000000FF7FBC0200000000000005417269616C3114C8000200FF7F9001000000
                  00000005417269616C3114C8000200FF7FBC0200000000000005417269616C31
                  14C8000000FF7F900100000000000005417269616C311AC8000000FF7F900100
                  00000000000B436F7572696572204E65771E16050013222422232C2323303B5C
                  2D222422232C2323301E1B060018222422232C2323303B5B5265645D5C2D2224
                  22232C2323301E1C070019222422232C2323302E30303B5C2D222422232C2323
                  302E30301E2108001E222422232C2323302E30303B5B5265645D5C2D22242223
                  2C2323302E30301E292A00262A205F2D222422232C2323303B2A205C2D222422
                  232C2323303B2A205F2D222422222D223B401E1C2900192A20232C2323303B2A
                  205C2D232C2323303B2A20222D223B401E312C002E2A205F2D222422232C2323
                  302E30303B2A205C2D222422232C2323302E30303B2A205F2D222422222D223F
                  3F3B401E242B00212A20232C2323302E30303B2A205C2D232C2323302E30303B
                  2A20222D223F3F3B401E181700155C24232C2323305F293B5C285C24232C2323
                  305C291E1D18001A5C24232C2323305F293B5B5265645D5C285C24232C232330
                  5C291E1E19001B5C24232C2323302E30305F293B5C285C24232C2323302E3030
                  5C291E231A00205C24232C2323302E30305F293B5B5265645D5C285C24232C23
                  23302E30305C291E1F40001C2224225C20232C2323303B5B5265645D5C2D2224
                  225C20232C2323301E254100222224225C20232C2323302E30303B5B5265645D
                  5C2D2224225C20232C2323302E3030ED050000000000EC03000000E014000000
                  00F5FF2000C02000000000000000000000E01401000000F5FF20C4C020000000
                  00000000000000E01401000000F5FF20C4C02000000000000000000000E01402
                  000000F5FF20C4C02000000000000000000000E01402000000F5FF20C4C02000
                  000000000000000000E01400000000F5FF20C4C02000000000000000000000E0
                  1400000000F5FF20C4C02000000000000000000000E01400000000F5FF20C4C0
                  2000000000000000000000E01400000000F5FF20C4C020000000000000000000
                  00E01400000000F5FF20C4C02000000000000000000000E01400000000F5FF20
                  C4C02000000000000000000000E01400000000F5FF20C4C02000000000000000
                  000000E01400000000F5FF20C4C02000000000000000000000E01400000000F5
                  FF20C4C02000000000000000000000E01400000000F5FF20C4C0200000000000
                  0000000000E0140000000001002000C02000000000000000000000E014050041
                  00F5FF20C8C02000000000000000000000E01405004000F5FF20C8C020000000
                  00000000000000E01405000C00F5FF20C8C02000000000000000000000E01405
                  000A00F5FF20C8C02000000000000000000000E01405000D00F5FF20C8C02000
                  000000000000000000E01404000000F0FF1248C02000000000000000000000E0
                  140600000001002008C02000000000000000000000E014060027000100200CC0
                  2000000000000000000000E0140000000001002020C020000002800000000000
                  00E014060041000100200CC020000000000000000000008506000003446F6385
                  0B000008466F726D756C61730A09000510000D01000C640011010010FCA9F1D2
                  4D62503F5F01002A00002B0100250000FF008C0100340081C104140302264115
                  08075061676520265083000084000026000000000000E83F27000000000000E8
                  3F28000000000000F03F29000000000000F03FA1220100640001000100010004
                  002C012C01000000000000E03F000000000000E03F01000018002C0000002500
                  0000F7189200FFC4FFFFFF00C0C0C0002400C7000000000000000000F2100000
                  000000000000000000000300FFFFF6150015001500FF0040067D000002002609
                  1600000000007D0300050026091700000000007D060010002609160000000000
                  7D1100110026091900000000007D1200FF002609160000000000081800000025
                  00FF800000000000010F0008190000002500FF80000000008001180008200004
                  000500FF800000000000010F0008210004000500FF800000000000010F000822
                  0004000500FF800000000000010F0008230004000500FF800000000000010F00
                  08240004000500FF800000000000010F0008250004000500FF80000000000001
                  0F0008260004000500FF800000000000010F0008270004000500FF8000000000
                  00010F0008280004000500FF800000000000010F0008290004000500FF800000
                  000000010F00082A0004000500FF800000000000010F00082B0004000500FF80
                  0000000000010F00BE5018000000160016001600170017001700160016001600
                  1600160016001600160016001600160019001600160016001600160016001600
                  1600160016001600160016001600160016001600160016002400BE5019000000
                  1600160016001700170017001600160016001600160016001600160016001600
                  1600190016001600160016001600160016001600160016001600160016001600
                  1600160016001600160024007E200004001700000008407E2100040017000000
                  10407E220004001700000014407E230004001700000014407E24000400170000
                  0014407E250004001700000014407E260004001700000014407E270004001700
                  000014407E280004001700000014407E290004001700000014407E2A00040017
                  00000014407E2B0004001700000014401D0F0300000000000001000000000000
                  003E0AB6060000000000000000A0640064009926090A09000510000D01000C64
                  0011010010FCA9F1D24D62503F5F01002A00002B0100250000FF008C01003400
                  81C10414030226411508075061676520265083000084000026000000000000E8
                  3F27000000000000E83F28000000000000F03F29000000000000F03FA1220100
                  640001000100010004002C012C01000000000000E03F000000000000E03F0100
                  0000000000000000000000F7189200FFCCFFFFFF00C0C0C00004006300000000
                  0000000000F2100000000000000000000000000300FFFFF6150015001500FF00
                  40061D0F0300000000000001000000000000003E0AB6000000000000000000A0
                  640064009926090A0000000452E30B918FCE119DE300AA004BB8516C7400006C
                  00000001000000580000000000000000000000FFFFFFFFFFFFFFFF0000000000
                  0000006C520000B83D000020454D46000001006C000000020000000100000000
                  00000000000000000000002003000058020000D30000009E0000000E00000014
                  00000000000000100000001400000001}
              end
            end
            object TabSheet7: TRzTabSheet
              Caption = '&2 Articulos Seleccionados'
              object F32: TF1Book
                Left = 0
                Top = 0
                Width = 1280
                Height = 126
                Align = alClient
                TabOrder = 0
                OnKeyDown = F32KeyDown
                OnDblClick = F3DblClick
                ExplicitWidth = 1061
                ExplicitHeight = 139
                ControlData = {
                  000001004B840000060D000060000000010001074631426F6F6B310101010101
                  0101010101010101010101003809000000000900050500EE0400000000EF1400
                  0000FF0000FF3F0000FFFFFFFFFFFFFFFFF3FF3D1200000000004B6207380000
                  000000010058023114C8000000FF7F900100000000000005417269616C3114C8
                  000000FF7FBC0200000000000005417269616C3114C8000200FF7F9001000000
                  00000005417269616C3114C8000200FF7FBC0200000000000005417269616C31
                  14C8000000FF7F900100000000000005417269616C311AC8000000FF7F900100
                  00000000000B436F7572696572204E65771E16050013222422232C2323303B5C
                  2D222422232C2323301E1B060018222422232C2323303B5B5265645D5C2D2224
                  22232C2323301E1C070019222422232C2323302E30303B5C2D222422232C2323
                  302E30301E2108001E222422232C2323302E30303B5B5265645D5C2D22242223
                  2C2323302E30301E292A00262A205F2D222422232C2323303B2A205C2D222422
                  232C2323303B2A205F2D222422222D223B401E1C2900192A20232C2323303B2A
                  205C2D232C2323303B2A20222D223B401E312C002E2A205F2D222422232C2323
                  302E30303B2A205C2D222422232C2323302E30303B2A205F2D222422222D223F
                  3F3B401E242B00212A20232C2323302E30303B2A205C2D232C2323302E30303B
                  2A20222D223F3F3B401E181700155C24232C2323305F293B5C285C24232C2323
                  305C291E1D18001A5C24232C2323305F293B5B5265645D5C285C24232C232330
                  5C291E1E19001B5C24232C2323302E30305F293B5C285C24232C2323302E3030
                  5C291E231A00205C24232C2323302E30305F293B5B5265645D5C285C24232C23
                  23302E30305C291E1F40001C2224225C20232C2323303B5B5265645D5C2D2224
                  225C20232C2323301E254100222224225C20232C2323302E30303B5B5265645D
                  5C2D2224225C20232C2323302E3030ED050000000000EC03000000E014000000
                  00F5FF2000C02000000000000000000000E01401000000F5FF20C4C020000000
                  00000000000000E01401000000F5FF20C4C02000000000000000000000E01402
                  000000F5FF20C4C02000000000000000000000E01402000000F5FF20C4C02000
                  000000000000000000E01400000000F5FF20C4C02000000000000000000000E0
                  1400000000F5FF20C4C02000000000000000000000E01400000000F5FF20C4C0
                  2000000000000000000000E01400000000F5FF20C4C020000000000000000000
                  00E01400000000F5FF20C4C02000000000000000000000E01400000000F5FF20
                  C4C02000000000000000000000E01400000000F5FF20C4C02000000000000000
                  000000E01400000000F5FF20C4C02000000000000000000000E01400000000F5
                  FF20C4C02000000000000000000000E01400000000F5FF20C4C0200000000000
                  0000000000E0140000000001002000C02000000000000000000000E014050041
                  00F5FF20C8C02000000000000000000000E01405004000F5FF20C8C020000000
                  00000000000000E01405000C00F5FF20C8C02000000000000000000000E01405
                  000A00F5FF20C8C02000000000000000000000E01405000D00F5FF20C8C02000
                  000000000000000000E01404000000F0FF1248C02000000000000000000000E0
                  140600000001002008C02000000000000000000000E014060027000100200CC0
                  2000000000000000000000E0140000000001002020C020000002800000000000
                  00E014060041000100200CC020000000000000000000008506000003446F6385
                  0B000008466F726D756C61730A09000510000D01000C640011010010FCA9F1D2
                  4D62503F5F01002A00002B0100250000FF008C0100340081C104140302264115
                  08075061676520265083000084000026000000000000E83F27000000000000E8
                  3F28000000000000F03F29000000000000F03FA1220100640001000100010004
                  002C012C01000000000000E03F000000000000E03F01000018002C0000002500
                  0000F7189200FFC4FFFFFF00C0C0C0002400C7000000000000000000F2100000
                  000000000000000000000300FFFFF6150015001500FF0040067D000002002609
                  1600000000007D0300050026091700000000007D060010002609160000000000
                  7D1100110026091900000000007D1200FF002609160000000000081800000025
                  00FF800000000000010F0008190000002500FF80000000008001180008200004
                  000500FF800000000000010F0008210004000500FF800000000000010F000822
                  0004000500FF800000000000010F0008230004000500FF800000000000010F00
                  08240004000500FF800000000000010F0008250004000500FF80000000000001
                  0F0008260004000500FF800000000000010F0008270004000500FF8000000000
                  00010F0008280004000500FF800000000000010F0008290004000500FF800000
                  000000010F00082A0004000500FF800000000000010F00082B0004000500FF80
                  0000000000010F00BE5018000000160016001600170017001700160016001600
                  1600160016001600160016001600160019001600160016001600160016001600
                  1600160016001600160016001600160016001600160016002400BE5019000000
                  1600160016001700170017001600160016001600160016001600160016001600
                  1600190016001600160016001600160016001600160016001600160016001600
                  1600160016001600160024007E200004001700000008407E2100040017000000
                  10407E220004001700000014407E230004001700000014407E24000400170000
                  0014407E250004001700000014407E260004001700000014407E270004001700
                  000014407E280004001700000014407E290004001700000014407E2A00040017
                  00000014407E2B0004001700000014401D0F0300000000000001000000000000
                  003E0AB6060000000000000000A0640064009926090A09000510000D01000C64
                  0011010010FCA9F1D24D62503F5F01002A00002B0100250000FF008C01003400
                  81C10414030226411508075061676520265083000084000026000000000000E8
                  3F27000000000000E83F28000000000000F03F29000000000000F03FA1220100
                  640001000100010004002C012C01000000000000E03F000000000000E03F0100
                  0000000000000000000000F7189200FFCCFFFFFF00C0C0C00004006300000000
                  0000000000F2100000000000000000000000000300FFFFF6150015001500FF00
                  40061D0F0300000000000001000000000000003E0AB6000000000000000000A0
                  640064009926090A0000000452E30B918FCE119DE300AA004BB8516C7400006C
                  00000001000000580000000000000000000000FFFFFFFFFFFFFFFF0000000000
                  0000006C520000B83D000020454D46000001006C000000020000000100000000
                  00000000000000000000002003000058020000D30000009E0000000E00000014
                  00000000000000100000001400000001}
              end
            end
          end
        end
      end
    end
    object tshCotiza: TRzTabSheet
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      ImageIndex = 6
      Caption = '&2 Cotizaciones'
      object pnlMain: TPanel
        Left = 0
        Top = 0
        Width = 1288
        Height = 470
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pnlFecha: TPanel
          Left = 0
          Top = 0
          Width = 1288
          Height = 73
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 1
          TabStop = True
          object xlbNombreDocto: TRxLabel
            Left = 2
            Top = 2
            Width = 1284
            Height = 20
            Align = alTop
            Alignment = taCenter
            Caption = 'Tipo del Documento'
            Color = clGreen
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ShadowSize = 0
            ExplicitLeft = 7
            ExplicitWidth = 1069
          end
          object Label7: TLabel
            Left = 258
            Top = 22
            Width = 66
            Height = 16
            AutoSize = False
            Caption = 'Fecha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 470
            Top = 22
            Width = 81
            Height = 20
            AutoSize = False
            Caption = '&Almac'#233'n:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 696
            Top = 22
            Width = 79
            Height = 17
            AutoSize = False
            Caption = '&Moneda:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object xlbCancelado: TRzLabel
            Left = 1065
            Top = 34
            Width = 205
            Height = 29
            Caption = '**  CANCELADO **'
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Blinking = True
            BlinkColor = clYellow
            BorderColor = clWhite
            BorderHighlight = clSilver
          end
          object Label12: TLabel
            Left = 901
            Top = 25
            Width = 75
            Height = 13
            AutoSize = False
            Caption = 'T. Cambio:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object pnlFolio: TPanel
            Left = 2
            Top = 22
            Width = 159
            Height = 49
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            TabStop = True
            object lblFolio: TLabel
              Left = 26
              Top = 0
              Width = 119
              Height = 21
              Alignment = taCenter
              AutoSize = False
              Caption = 'Folio'
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object xceFolio: TComboEdit
              Left = 26
              Top = 18
              Width = 121
              Height = 28
              Alignment = taCenter
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              GlyphKind = gkEllipsis
              NumGlyphs = 1
              ParentFont = False
              TabOrder = 0
              OnButtonClick = xceFolioButtonClick
              OnKeyDown = xceFolioKeyDown
            end
          end
          object xdeFecha: TDateEdit
            Left = 228
            Top = 40
            Width = 121
            Height = 28
            NumGlyphs = 2
            TabOrder = 0
          end
          object cboNumAlmac: TComboBox
            Left = 386
            Top = 41
            Width = 250
            Height = 24
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ItemHeight = 16
            ParentFont = False
            TabOrder = 2
            OnChange = cboNumAlmacChange
          end
          object cboMoneda: TComboBox
            Left = 653
            Top = 41
            Width = 247
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
            OnChange = cboMonedaClick
            OnClick = cboMonedaClick
            Items.Strings = (
              '1  | Pesos (MN)'
              '2  | Dolares')
          end
          object xcrTipoCambio: TCurrencyEdit
            Left = 901
            Top = 41
            Width = 75
            Height = 23
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
        end
        object pnlDetalle: TPanel
          Left = 0
          Top = 233
          Width = 1288
          Height = 150
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 0
          object pgcMain: TPageControl
            Left = 37
            Top = 2
            Width = 1249
            Height = 146
            ActivePage = tshCaptura
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnChange = pgcMainChange
            object tshCaptura: TTabSheet
              Caption = '&Detalle Factura'
              object F1: TF1Book
                Left = 0
                Top = 0
                Width = 1241
                Height = 115
                Align = alClient
                TabOrder = 0
                OnKeyDown = F1KeyDown
                OnSelChange = F1SelChange
                OnStartEdit = F1StartEdit
                OnEndEdit = F1EndEdit
                ExplicitTop = 2
                ExplicitWidth = 1061
                ExplicitHeight = 188
                ControlData = {
                  0000010043800000E30B000060000000010001074631426F6F6B310101010101
                  0101010101010101010101003809000000000900050500EE0400000000EF1400
                  0000FF0000FF3F0000FFFFFFFFFFFFFFFFF3FF3D1200000000B748BD06380000
                  000000010058023114C8000000FF7F900100000000000005417269616C3114C8
                  000000FF7FBC0200000000000005417269616C3114C8000200FF7F9001000000
                  00000005417269616C3114C8000200FF7FBC0200000000000005417269616C31
                  14C8000000FF7F900100000000000005417269616C311AC8000000FF7F900100
                  00000000000B436F7572696572204E65771E16050013222422232C2323303B5C
                  2D222422232C2323301E1B060018222422232C2323303B5B5265645D5C2D2224
                  22232C2323301E1C070019222422232C2323302E30303B5C2D222422232C2323
                  302E30301E2108001E222422232C2323302E30303B5B5265645D5C2D22242223
                  2C2323302E30301E292A00262A205F2D222422232C2323303B2A205C2D222422
                  232C2323303B2A205F2D222422222D223B401E1C2900192A20232C2323303B2A
                  205C2D232C2323303B2A20222D223B401E312C002E2A205F2D222422232C2323
                  302E30303B2A205C2D222422232C2323302E30303B2A205F2D222422222D223F
                  3F3B401E242B00212A20232C2323302E30303B2A205C2D232C2323302E30303B
                  2A20222D223F3F3B401E181700155C24232C2323305F293B5C285C24232C2323
                  305C291E1D18001A5C24232C2323305F293B5B5265645D5C285C24232C232330
                  5C291E1E19001B5C24232C2323302E30305F293B5C285C24232C2323302E3030
                  5C291E231A00205C24232C2323302E30305F293B5B5265645D5C285C24232C23
                  23302E30305C291E1F40001C2224225C20232C2323303B5B5265645D5C2D2224
                  225C20232C2323301E254100222224225C20232C2323302E30303B5B5265645D
                  5C2D2224225C20232C2323302E3030ED050000000000EC03000000E014000000
                  00F5FF2000C02000000000000000000000E01401000000F5FF20C4C020000000
                  00000000000000E01401000000F5FF20C4C02000000000000000000000E01402
                  000000F5FF20C4C02000000000000000000000E01402000000F5FF20C4C02000
                  000000000000000000E01400000000F5FF20C4C02000000000000000000000E0
                  1400000000F5FF20C4C02000000000000000000000E01400000000F5FF20C4C0
                  2000000000000000000000E01400000000F5FF20C4C020000000000000000000
                  00E01400000000F5FF20C4C02000000000000000000000E01400000000F5FF20
                  C4C02000000000000000000000E01400000000F5FF20C4C02000000000000000
                  000000E01400000000F5FF20C4C02000000000000000000000E01400000000F5
                  FF20C4C02000000000000000000000E01400000000F5FF20C4C0200000000000
                  0000000000E0140000000001002000C02000000000000000000000E014050041
                  00F5FF20C8C02000000000000000000000E01405004000F5FF20C8C020000000
                  00000000000000E01405000C00F5FF20C8C02000000000000000000000E01405
                  000A00F5FF20C8C02000000000000000000000E01405000D00F5FF20C8C02000
                  000000000000000000E01404000000F0FF1248C02000000000000000000000E0
                  140600000001002008C02000000000000000000000E014060027000100200CC0
                  2000000000000000000000E0140000000001002020C020000002800000000000
                  00E014060041000100200CC020000000000000000000008506000003446F6385
                  0B000008466F726D756C61730A09000510000D01000C640011010010FCA9F1D2
                  4D62503F5F01002A00002B0100250000FF008C0100340081C104140302264115
                  08075061676520265083000084000026000000000000E83F27000000000000E8
                  3F28000000000000F03F29000000000000F03FA1220100640001000100010004
                  002C012C01000000000000E03F000000000000E03F01000018002C0000002500
                  0000F7189200FFC4FFFFFF00C0C0C0002400C7000000000000000000F2100000
                  000000000000000000000300FFFFF6150015001500FF0040067D000002002609
                  1600000000007D0300050026091700000000007D060010002609160000000000
                  7D1100110026091900000000007D1200FF002609160000000000081800000025
                  00FF800000000000010F0008190000002500FF80000000008001180008200004
                  000500FF800000000000010F0008210004000500FF800000000000010F000822
                  0004000500FF800000000000010F0008230004000500FF800000000000010F00
                  08240004000500FF800000000000010F0008250004000500FF80000000000001
                  0F0008260004000500FF800000000000010F0008270004000500FF8000000000
                  00010F0008280004000500FF800000000000010F0008290004000500FF800000
                  000000010F00082A0004000500FF800000000000010F00082B0004000500FF80
                  0000000000010F00BE5018000000160016001600170017001700160016001600
                  1600160016001600160016001600160019001600160016001600160016001600
                  1600160016001600160016001600160016001600160016002400BE5019000000
                  1600160016001700170017001600160016001600160016001600160016001600
                  1600190016001600160016001600160016001600160016001600160016001600
                  1600160016001600160024007E200004001700000008407E2100040017000000
                  10407E220004001700000014407E230004001700000014407E24000400170000
                  0014407E250004001700000014407E260004001700000014407E270004001700
                  000014407E280004001700000014407E290004001700000014407E2A00040017
                  00000014407E2B0004001700000014401D0F0300000000000001000000000000
                  003E0AB6060000000000000000A0640064009926090A09000510000D01000C64
                  0011010010FCA9F1D24D62503F5F01002A00002B0100250000FF008C01003400
                  81C10414030226411508075061676520265083000084000026000000000000E8
                  3F27000000000000E83F28000000000000F03F29000000000000F03FA1220100
                  640001000100010004002C012C01000000000000E03F000000000000E03F0100
                  0000000000000000000000F7189200FFCCFFFFFF00C0C0C00004006300000000
                  0000000000F2100000000000000000000000000300FFFFF6150015001500FF00
                  40061D0F0300000000000001000000000000003E0AB6000000000000000000A0
                  640064009926090A0000000452E30B918FCE119DE300AA004BB8516C7400006C
                  00000001000000580000000000000000000000FFFFFFFFFFFFFFFF0000000000
                  0000006C520000B83D000020454D46000001006C000000020000000100000000
                  00000000000000000000002003000058020000D30000009E0000000E00000014
                  00000000000000100000001400000001}
              end
            end
            object tshImpresion: TTabSheet
              Caption = '&Impresi'#243'n'
              ImageIndex = 1
              object F11: TF1Book
                Left = 95
                Top = 0
                Width = 1146
                Height = 115
                Align = alClient
                TabOrder = 0
                OnKeyDown = F11KeyDown
                OnStartEdit = F11StartEdit
                ExplicitWidth = 958
                ExplicitHeight = 188
                ControlData = {
                  0000010071760000E30B000060000000010001074631426F6F6B310101010101
                  0101010101010101010101002905000000000900050500EE0400000000EF1400
                  0000FF0000FF3F0000FFFFFFFFFFFFFFFFF3FF3D12910500002643BD06380000
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
                  24232C2323302E30305C29ED050000000000EC03000000E01400000000F5FF20
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
                  00E0140000000001002000C02000000000000000000000E01405000800F5FF20
                  C8C02000000000000000000000E01405000600F5FF20C8C02000000000000000
                  000000E01405000C00F5FF20C8C02000000000000000000000E01405000A00F5
                  FF20C8C02000000000000000000000E01405000D00F5FF20C8C0200000000000
                  0000000000E01404000000F0FF1248C020000000000000000000008509000006
                  5368656574310A09000510000D01000C640011010010FCA9F1D24D62503F5F01
                  002A00002B0100250000FF008C0100340081C104140302264115080750616765
                  20265083000084000026000000000000E83F27000000000000E83F2800000000
                  0000F03F29000000000000F03FA1220100640001000100010004002C012C0100
                  0000000000E03F000000000000E03F01000000000000000000000000F7189200
                  FFCCFFFFFF00C0C0C000FF00FF3F0000000000000000F2100000000000000000
                  000000000300FFFFF6150015001500FF0040061D0F0300000000000001000000
                  000000003E0AB6060000000000000000A0640064009926090A0000000452E30B
                  918FCE119DE300AA004BB8516C7400006C000000010000005800000000000000
                  00000000FFFFFFFFFFFFFFFF00000000000000006C520000B83D000020454D46
                  000001006C000000020000000100000000000000000000000000000020030000
                  58020000D30000009E0000000E00000014000000000000001000000014000000
                  01}
              end
              object TBXDock1: TTBXDock
                Left = 0
                Top = 0
                Width = 95
                Height = 115
                Position = dpLeft
                object TBXToolbar1: TTBXToolbar
                  Left = 0
                  Top = 0
                  Caption = 'TBXToolbar1'
                  TabOrder = 0
                  object tbtHidePrecios: TTBXItem
                    Caption = 'Esconder Precios'
                    DisplayMode = nbdmImageAndText
                    Hint = 'Esconde los precios y totales en el formato de impresion'
                    ImageIndex = 38
                    Images = MainForm.ImageList2
                    Options = [tboNoRotation, tboSameWidth, tboShowHint]
                    OnClick = tbtHidePreciosClick
                  end
                  object TBXSeparatorItem8: TTBXSeparatorItem
                  end
                  object tbtShowPrecios: TTBXItem
                    Caption = 'Mostrar Precios  '
                    DisplayMode = nbdmImageAndText
                    Hint = 'Muestra los precios y totales en el formato de impresion'
                    ImageIndex = 39
                    Images = MainForm.ImageList2
                    Options = [tboImageAboveCaption, tboNoRotation, tboSameWidth, tboShowHint]
                    OnClick = tbtShowPreciosClick
                  end
                  object TBXSeparatorItem9: TTBXSeparatorItem
                  end
                  object tbtPrint2: TTBXItem
                    Caption = '       &Imprimir       '
                    DisplayMode = nbdmImageAndText
                    Hint = 'Imprimir el formato'
                    ImageIndex = 13
                    Images = MainForm.ImageList2
                    Layout = tbxlGlyphTop
                    Options = [tboNoRotation, tboSameWidth, tboShowHint]
                    Stretch = True
                    OnClick = tbtImprimirClick
                  end
                end
              end
            end
            object TabSheet1: TTabSheet
              Caption = '&Captura'
              ImageIndex = 2
              object F12: TF1Book
                Left = 0
                Top = 0
                Width = 1241
                Height = 115
                Align = alClient
                TabOrder = 0
                OnKeyDown = F12KeyDown
                OnDblClick = F12DblClick
                OnSelChange = F12SelChange
                OnStartEdit = F1StartEdit
                OnEndEdit = F12EndEdit
                OnEndRecalc = F1EndRecalc
                ExplicitWidth = 803
                ExplicitHeight = 190
                ControlData = {
                  0000010043800000E30B000060000000010001074631426F6F6B310101010101
                  0101010101010101010101003809000000000900050500EE0400000000EF1400
                  0000FF0000FF3F0000FFFFFFFFFFFFFFFFF3FF3D1200000000B748BD06380000
                  000000010058023114C8000000FF7F900100000000000005417269616C3114C8
                  000000FF7FBC0200000000000005417269616C3114C8000200FF7F9001000000
                  00000005417269616C3114C8000200FF7FBC0200000000000005417269616C31
                  14C8000000FF7F900100000000000005417269616C311AC8000000FF7F900100
                  00000000000B436F7572696572204E65771E16050013222422232C2323303B5C
                  2D222422232C2323301E1B060018222422232C2323303B5B5265645D5C2D2224
                  22232C2323301E1C070019222422232C2323302E30303B5C2D222422232C2323
                  302E30301E2108001E222422232C2323302E30303B5B5265645D5C2D22242223
                  2C2323302E30301E292A00262A205F2D222422232C2323303B2A205C2D222422
                  232C2323303B2A205F2D222422222D223B401E1C2900192A20232C2323303B2A
                  205C2D232C2323303B2A20222D223B401E312C002E2A205F2D222422232C2323
                  302E30303B2A205C2D222422232C2323302E30303B2A205F2D222422222D223F
                  3F3B401E242B00212A20232C2323302E30303B2A205C2D232C2323302E30303B
                  2A20222D223F3F3B401E181700155C24232C2323305F293B5C285C24232C2323
                  305C291E1D18001A5C24232C2323305F293B5B5265645D5C285C24232C232330
                  5C291E1E19001B5C24232C2323302E30305F293B5C285C24232C2323302E3030
                  5C291E231A00205C24232C2323302E30305F293B5B5265645D5C285C24232C23
                  23302E30305C291E1F40001C2224225C20232C2323303B5B5265645D5C2D2224
                  225C20232C2323301E254100222224225C20232C2323302E30303B5B5265645D
                  5C2D2224225C20232C2323302E3030ED050000000000EC03000000E014000000
                  00F5FF2000C02000000000000000000000E01401000000F5FF20C4C020000000
                  00000000000000E01401000000F5FF20C4C02000000000000000000000E01402
                  000000F5FF20C4C02000000000000000000000E01402000000F5FF20C4C02000
                  000000000000000000E01400000000F5FF20C4C02000000000000000000000E0
                  1400000000F5FF20C4C02000000000000000000000E01400000000F5FF20C4C0
                  2000000000000000000000E01400000000F5FF20C4C020000000000000000000
                  00E01400000000F5FF20C4C02000000000000000000000E01400000000F5FF20
                  C4C02000000000000000000000E01400000000F5FF20C4C02000000000000000
                  000000E01400000000F5FF20C4C02000000000000000000000E01400000000F5
                  FF20C4C02000000000000000000000E01400000000F5FF20C4C0200000000000
                  0000000000E0140000000001002000C02000000000000000000000E014050041
                  00F5FF20C8C02000000000000000000000E01405004000F5FF20C8C020000000
                  00000000000000E01405000C00F5FF20C8C02000000000000000000000E01405
                  000A00F5FF20C8C02000000000000000000000E01405000D00F5FF20C8C02000
                  000000000000000000E01404000000F0FF1248C02000000000000000000000E0
                  140600000001002008C02000000000000000000000E014060027000100200CC0
                  2000000000000000000000E0140000000001002020C020000002800000000000
                  00E014060041000100200CC020000000000000000000008506000003446F6385
                  0B000008466F726D756C61730A09000510000D01000C640011010010FCA9F1D2
                  4D62503F5F01002A00002B0100250000FF008C0100340081C104140302264115
                  08075061676520265083000084000026000000000000E83F27000000000000E8
                  3F28000000000000F03F29000000000000F03FA1220100640001000100010004
                  002C012C01000000000000E03F000000000000E03F01000018002C0000002500
                  0000F7189200FFC4FFFFFF00C0C0C000240031000000000000000000F2100000
                  000000000000000000000300FFFFF6150015001500FF0040067D000002002609
                  1600000000007D0300050026091700000000007D060010002609160000000000
                  7D1100110026091900000000007D1200FF002609160000000000081800000025
                  00FF800000000000010F0008190000002500FF80000000008001180008200004
                  000500FF800000000000010F0008210004000500FF800000000000010F000822
                  0004000500FF800000000000010F0008230004000500FF800000000000010F00
                  08240004000500FF800000000000010F0008250004000500FF80000000000001
                  0F0008260004000500FF800000000000010F0008270004000500FF8000000000
                  00010F0008280004000500FF800000000000010F0008290004000500FF800000
                  000000010F00082A0004000500FF800000000000010F00082B0004000500FF80
                  0000000000010F00BE5018000000160016001600170017001700160016001600
                  1600160016001600160016001600160019001600160016001600160016001600
                  1600160016001600160016001600160016001600160016002400BE5019000000
                  1600160016001700170017001600160016001600160016001600160016001600
                  1600190016001600160016001600160016001600160016001600160016001600
                  1600160016001600160024007E200004001700000008407E2100040017000000
                  10407E220004001700000014407E230004001700000014407E24000400170000
                  0014407E250004001700000014407E260004001700000014407E270004001700
                  000014407E280004001700000014407E290004001700000014407E2A00040017
                  00000014407E2B0004001700000014401D0F0300000000000001000000000000
                  003E0AB6060000000000000000A0640064009926090A09000510000D01000C64
                  0011010010FCA9F1D24D62503F5F01002A00002B0100250000FF008C01003400
                  81C10414030226411508075061676520265083000084000026000000000000E8
                  3F27000000000000E83F28000000000000F03F29000000000000F03FA1220100
                  640001000100010004002C012C01000000000000E03F000000000000E03F0100
                  0000000000000000000000F7189200FFCCFFFFFF00C0C0C00004006300000000
                  0000000000F2100000000000000000000000000300FFFFF6150015001500FF00
                  40061D0F0300000000000001000000000000003E0AB6000000000000000000A0
                  640064009926090A0000000452E30B918FCE119DE300AA004BB8516C7400006C
                  00000001000000580000000000000000000000FFFFFFFFFFFFFFFF0000000000
                  0000006C520000B83D000020454D46000001006C000000020000000100000000
                  00000000000000000000002003000058020000D30000009E0000000E00000014
                  00000000000000100000001400000001}
              end
            end
            object tshLP: TTabSheet
              Caption = '&Lista de Precios'
              ImageIndex = 3
              object F13: TF1Book
                Left = 0
                Top = 0
                Width = 1241
                Height = 115
                Align = alClient
                TabOrder = 0
                OnKeyDown = F13KeyDown
                OnDblClick = F13DblClick
                ExplicitWidth = 803
                ExplicitHeight = 190
                ControlData = {
                  0000010043800000E30B000060000000010001074631426F6F6B310101010101
                  0101010101010101010101003809000000000900050500EE0400000000EF1400
                  0000FF0000FF3F0000FFFFFFFFFFFFFFFFF3FF3D1200000000B748BD06380000
                  000000010058023114C8000000FF7F900100000000000005417269616C3114C8
                  000000FF7FBC0200000000000005417269616C3114C8000200FF7F9001000000
                  00000005417269616C3114C8000200FF7FBC0200000000000005417269616C31
                  14C8000000FF7F900100000000000005417269616C311AC8000000FF7F900100
                  00000000000B436F7572696572204E65771E16050013222422232C2323303B5C
                  2D222422232C2323301E1B060018222422232C2323303B5B5265645D5C2D2224
                  22232C2323301E1C070019222422232C2323302E30303B5C2D222422232C2323
                  302E30301E2108001E222422232C2323302E30303B5B5265645D5C2D22242223
                  2C2323302E30301E292A00262A205F2D222422232C2323303B2A205C2D222422
                  232C2323303B2A205F2D222422222D223B401E1C2900192A20232C2323303B2A
                  205C2D232C2323303B2A20222D223B401E312C002E2A205F2D222422232C2323
                  302E30303B2A205C2D222422232C2323302E30303B2A205F2D222422222D223F
                  3F3B401E242B00212A20232C2323302E30303B2A205C2D232C2323302E30303B
                  2A20222D223F3F3B401E181700155C24232C2323305F293B5C285C24232C2323
                  305C291E1D18001A5C24232C2323305F293B5B5265645D5C285C24232C232330
                  5C291E1E19001B5C24232C2323302E30305F293B5C285C24232C2323302E3030
                  5C291E231A00205C24232C2323302E30305F293B5B5265645D5C285C24232C23
                  23302E30305C291E1F40001C2224225C20232C2323303B5B5265645D5C2D2224
                  225C20232C2323301E254100222224225C20232C2323302E30303B5B5265645D
                  5C2D2224225C20232C2323302E3030ED050000000000EC03000000E014000000
                  00F5FF2000C02000000000000000000000E01401000000F5FF20C4C020000000
                  00000000000000E01401000000F5FF20C4C02000000000000000000000E01402
                  000000F5FF20C4C02000000000000000000000E01402000000F5FF20C4C02000
                  000000000000000000E01400000000F5FF20C4C02000000000000000000000E0
                  1400000000F5FF20C4C02000000000000000000000E01400000000F5FF20C4C0
                  2000000000000000000000E01400000000F5FF20C4C020000000000000000000
                  00E01400000000F5FF20C4C02000000000000000000000E01400000000F5FF20
                  C4C02000000000000000000000E01400000000F5FF20C4C02000000000000000
                  000000E01400000000F5FF20C4C02000000000000000000000E01400000000F5
                  FF20C4C02000000000000000000000E01400000000F5FF20C4C0200000000000
                  0000000000E0140000000001002000C02000000000000000000000E014050041
                  00F5FF20C8C02000000000000000000000E01405004000F5FF20C8C020000000
                  00000000000000E01405000C00F5FF20C8C02000000000000000000000E01405
                  000A00F5FF20C8C02000000000000000000000E01405000D00F5FF20C8C02000
                  000000000000000000E01404000000F0FF1248C02000000000000000000000E0
                  140600000001002008C02000000000000000000000E014060027000100200CC0
                  2000000000000000000000E0140000000001002020C020000002800000000000
                  00E014060041000100200CC020000000000000000000008506000003446F6385
                  0B000008466F726D756C61730A09000510000D01000C640011010010FCA9F1D2
                  4D62503F5F01002A00002B0100250000FF008C0100340081C104140302264115
                  08075061676520265083000084000026000000000000E83F27000000000000E8
                  3F28000000000000F03F29000000000000F03FA1220100640001000100010004
                  002C012C01000000000000E03F000000000000E03F01000018002C0000002500
                  0000F7189200FFC4FFFFFF00C0C0C000240031000000000000000000F2100000
                  000000000000000000000300FFFFF6150015001500FF0040067D000002002609
                  1600000000007D0300050026091700000000007D060010002609160000000000
                  7D1100110026091900000000007D1200FF002609160000000000081800000025
                  00FF800000000000010F0008190000002500FF80000000008001180008200004
                  000500FF800000000000010F0008210004000500FF800000000000010F000822
                  0004000500FF800000000000010F0008230004000500FF800000000000010F00
                  08240004000500FF800000000000010F0008250004000500FF80000000000001
                  0F0008260004000500FF800000000000010F0008270004000500FF8000000000
                  00010F0008280004000500FF800000000000010F0008290004000500FF800000
                  000000010F00082A0004000500FF800000000000010F00082B0004000500FF80
                  0000000000010F00BE5018000000160016001600170017001700160016001600
                  1600160016001600160016001600160019001600160016001600160016001600
                  1600160016001600160016001600160016001600160016002400BE5019000000
                  1600160016001700170017001600160016001600160016001600160016001600
                  1600190016001600160016001600160016001600160016001600160016001600
                  1600160016001600160024007E200004001700000008407E2100040017000000
                  10407E220004001700000014407E230004001700000014407E24000400170000
                  0014407E250004001700000014407E260004001700000014407E270004001700
                  000014407E280004001700000014407E290004001700000014407E2A00040017
                  00000014407E2B0004001700000014401D0F0300000000000001000000000000
                  003E0AB6060000000000000000A0640064009926090A09000510000D01000C64
                  0011010010FCA9F1D24D62503F5F01002A00002B0100250000FF008C01003400
                  81C10414030226411508075061676520265083000084000026000000000000E8
                  3F27000000000000E83F28000000000000F03F29000000000000F03FA1220100
                  640001000100010004002C012C01000000000000E03F000000000000E03F0100
                  0000000000000000000000F7189200FFCCFFFFFF00C0C0C00004006300000000
                  0000000000F2100000000000000000000000000300FFFFF6150015001500FF00
                  40061D0F0300000000000001000000000000003E0AB6000000000000000000A0
                  640064009926090A0000000452E30B918FCE119DE300AA004BB8516C7400006C
                  00000001000000580000000000000000000000FFFFFFFFFFFFFFFF0000000000
                  0000006C520000B83D000020454D46000001006C000000020000000100000000
                  00000000000000000000002003000058020000D30000009E0000000E00000014
                  00000000000000100000001400000001}
              end
            end
            object TabSheet5: TTabSheet
              Caption = 'Listado de Articulos'
              ImageIndex = 4
              object F3: TF1Book
                Left = 0
                Top = 49
                Width = 1061
                Height = 188
                TabOrder = 0
                OnDblClick = F3DblClick
                ControlData = {
                  00000100A86D00006E13000060000000010001074631426F6F6B310101010101
                  0101010101010101010101003809000000000900050500EE0400000000EF1400
                  0000FF0000FF3F0000FFFFFFFFFFFFFFFFF3FF3D120000DF022B3E040B380000
                  000000010058023114C8000000FF7F900100000000000005417269616C3114C8
                  000000FF7FBC0200000000000005417269616C3114C8000200FF7F9001000000
                  00000005417269616C3114C8000200FF7FBC0200000000000005417269616C31
                  14C8000000FF7F900100000000000005417269616C311AC8000000FF7F900100
                  00000000000B436F7572696572204E65771E16050013222422232C2323303B5C
                  2D222422232C2323301E1B060018222422232C2323303B5B5265645D5C2D2224
                  22232C2323301E1C070019222422232C2323302E30303B5C2D222422232C2323
                  302E30301E2108001E222422232C2323302E30303B5B5265645D5C2D22242223
                  2C2323302E30301E292A00262A205F2D222422232C2323303B2A205C2D222422
                  232C2323303B2A205F2D222422222D223B401E1C2900192A20232C2323303B2A
                  205C2D232C2323303B2A20222D223B401E312C002E2A205F2D222422232C2323
                  302E30303B2A205C2D222422232C2323302E30303B2A205F2D222422222D223F
                  3F3B401E242B00212A20232C2323302E30303B2A205C2D232C2323302E30303B
                  2A20222D223F3F3B401E181700155C24232C2323305F293B5C285C24232C2323
                  305C291E1D18001A5C24232C2323305F293B5B5265645D5C285C24232C232330
                  5C291E1E19001B5C24232C2323302E30305F293B5C285C24232C2323302E3030
                  5C291E231A00205C24232C2323302E30305F293B5B5265645D5C285C24232C23
                  23302E30305C291E1F40001C2224225C20232C2323303B5B5265645D5C2D2224
                  225C20232C2323301E254100222224225C20232C2323302E30303B5B5265645D
                  5C2D2224225C20232C2323302E3030ED050000000000EC03000000E014000000
                  00F5FF2000C02000000000000000000000E01401000000F5FF20C4C020000000
                  00000000000000E01401000000F5FF20C4C02000000000000000000000E01402
                  000000F5FF20C4C02000000000000000000000E01402000000F5FF20C4C02000
                  000000000000000000E01400000000F5FF20C4C02000000000000000000000E0
                  1400000000F5FF20C4C02000000000000000000000E01400000000F5FF20C4C0
                  2000000000000000000000E01400000000F5FF20C4C020000000000000000000
                  00E01400000000F5FF20C4C02000000000000000000000E01400000000F5FF20
                  C4C02000000000000000000000E01400000000F5FF20C4C02000000000000000
                  000000E01400000000F5FF20C4C02000000000000000000000E01400000000F5
                  FF20C4C02000000000000000000000E01400000000F5FF20C4C0200000000000
                  0000000000E0140000000001002000C02000000000000000000000E014050041
                  00F5FF20C8C02000000000000000000000E01405004000F5FF20C8C020000000
                  00000000000000E01405000C00F5FF20C8C02000000000000000000000E01405
                  000A00F5FF20C8C02000000000000000000000E01405000D00F5FF20C8C02000
                  000000000000000000E01404000000F0FF1248C02000000000000000000000E0
                  140600000001002008C02000000000000000000000E014060027000100200CC0
                  2000000000000000000000E0140000000001002020C020000002800000000000
                  00E014060041000100200CC020000000000000000000008506000003446F6385
                  0B000008466F726D756C61730A09000510000D01000C640011010010FCA9F1D2
                  4D62503F5F01002A00002B0100250000FF008C0100340081C104140302264115
                  08075061676520265083000084000026000000000000E83F27000000000000E8
                  3F28000000000000F03F29000000000000F03FA1220100640001000100010004
                  002C012C01000000000000E03F000000000000E03F01000018002C0000002500
                  0000F7189200FFC4FFFFFF00C0C0C0002400C7000000000000000000F2100000
                  000000000000000000000300FFFFF6150015001500FF0040067D000002002609
                  1600000000007D0300050026091700000000007D060010002609160000000000
                  7D1100110026091900000000007D1200FF002609160000000000081800000025
                  00FF800000000000010F0008190000002500FF80000000008001180008200004
                  000500FF800000000000010F0008210004000500FF800000000000010F000822
                  0004000500FF800000000000010F0008230004000500FF800000000000010F00
                  08240004000500FF800000000000010F0008250004000500FF80000000000001
                  0F0008260004000500FF800000000000010F0008270004000500FF8000000000
                  00010F0008280004000500FF800000000000010F0008290004000500FF800000
                  000000010F00082A0004000500FF800000000000010F00082B0004000500FF80
                  0000000000010F00BE5018000000160016001600170017001700160016001600
                  1600160016001600160016001600160019001600160016001600160016001600
                  1600160016001600160016001600160016001600160016002400BE5019000000
                  1600160016001700170017001600160016001600160016001600160016001600
                  1600190016001600160016001600160016001600160016001600160016001600
                  1600160016001600160024007E200004001700000008407E2100040017000000
                  10407E220004001700000014407E230004001700000014407E24000400170000
                  0014407E250004001700000014407E260004001700000014407E270004001700
                  000014407E280004001700000014407E290004001700000014407E2A00040017
                  00000014407E2B0004001700000014401D0F0300000000000001000000000000
                  003E0AB6060000000000000000A0640064009926090A09000510000D01000C64
                  0011010010FCA9F1D24D62503F5F01002A00002B0100250000FF008C01003400
                  81C10414030226411508075061676520265083000084000026000000000000E8
                  3F27000000000000E83F28000000000000F03F29000000000000F03FA1220100
                  640001000100010004002C012C01000000000000E03F000000000000E03F0100
                  0000000000000000000000F7189200FFCCFFFFFF00C0C0C00004006300000000
                  0000000000F2100000000000000000000000000300FFFFF6150015001500FF00
                  40061D0F0300000000000001000000000000003E0AB6000000000000000000A0
                  640064009926090A0000000452E30B918FCE119DE300AA004BB8516C7400006C
                  00000001000000580000000000000000000000FFFFFFFFFFFFFFFF0000000000
                  0000006C520000B83D000020454D46000001006C000000020000000100000000
                  00000000000000000000002003000058020000D30000009E0000000E00000014
                  00000000000000100000001400000001}
              end
              object RzPanel2: TRzPanel
                Left = 0
                Top = 0
                Width = 1241
                Height = 49
                Align = alTop
                BorderOuter = fsGroove
                TabOrder = 1
                object Label8: TLabel
                  Left = 5
                  Top = 3
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
                object xsbListar: TRxSpeedButton
                  Left = 367
                  Top = 10
                  Width = 202
                  Height = 33
                  Hint = 'Lista los productos en la hoa de B'#250'squedas'
                  Caption = '&Listar Productos'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  Glyph.Data = {
                    F6000000424DF600000000000000760000002800000010000000100000000100
                    04000000000080000000120B0000120B00001000000010000000000000000000
                    8000008000000080800080000000800080008080000080808000C0C0C0000000
                    FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
                    DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
                    0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
                    BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
                    DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
                  Layout = blGlyphLeft
                  ParentFont = False
                  Spacing = 5
                  OnClick = xsbListarClick
                end
                object xsbBuscar: TRxSpeedButton
                  Left = 809
                  Top = 10
                  Width = 172
                  Height = 33
                  Hint = 'Lista los productos en la hoa de B'#250'squedas'
                  Caption = '&Buscar en Listado'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  Glyph.Data = {
                    22040000424D2204000000000000220300002800000010000000100000000100
                    08000000000000010000120B0000120B0000BB000000BB00000000000000FFFF
                    FF00BFBDC100FF00FF00B7B4B700B1AFB100FFF8FA00F6EBED00F0E3E500C2BC
                    BD00F2E3E500E5CBCE00F0E2E300E3CFD000D1BABA00D7C1C100E2CECE00DDCB
                    CB00E2D5D500C7C1C100C9C4C40073707000F8F6F600FCFBFB00C5A09E00DECB
                    CA00D0B4B2009E7F7B00FAF3F2009F837E00B69A9500F8F3F20095777000B4A4
                    A000B7AFAD00E6E2E100A38A8300A38B8400A18C8600B8AAA60095756B008A6F
                    65008C766E00B8A49D00F3F0EF00B73B0C00BA411200BF451500BD451600BD46
                    1600BB461600BC471700BF491800BC491900BD4A1A00993C1500BF4C1C008032
                    1300AB461C0083675C00C09C8E009C847A00DCBCAF00E6C7BA00E9CBBF00A18C
                    8400E1C5BA00E9CCC100CCB5AC00F3E7E200F7EDE900F3E9E500C04D1C00BD4C
                    1C006D2D1100BF4E1E00BF4F1F00C1542500BA56270098452000C2592B00C45A
                    2C00C6704900CA754D00C276530072473300C5836500CB896B00EEC7B500D7B5
                    A50068585100E3C1B200E1BFB000D1B2A400E5C6B800E2C4B6006A5C5600D1B7
                    AB00DDC2B600CAB1A600D0B7AC00EAD4CA00BDACA400F3E6E000F4E7E100C55A
                    2600B05628005E311A00B4674200CC78500057332200D48A6600C17E5E00DC9A
                    7900D7967600CE937600DE9F8100654C3F00DDBAA900E2C1B100CEB0A100D1B4
                    A600786C6600F2E0D70087838100FEFCFB00C75E2500CB6731005F361F00D37B
                    4A0050332300DD997200DEA07F00E2A98A00E0A98C00E6B59900E5B59A00C098
                    8300EBC9B700E1C7B800EED9CE00F4E0D500F4E9E300CE6B3000C46C3800BA74
                    4800623D2600594539005F4B3F006A564A00E19E7200E3AB8400EABB9C00FCF6
                    F200E1A37700EAB89200E9BA9800DCBDA600F4D9C500F6E0CF00FEFAF7006B47
                    2A00EABB930079736E00B4AFAB00FCF7F300E3AF8000EDC29800EDC29900EFC7
                    A000E2BC9800F7E3CF00A9A49F00FCF7F200EBC09200F8E9D900FCF6EF00FFFE
                    FC00F2F2F000F3FAFF00EDF3F800E1E6ED00D5D8DD00BCBCC000FEFEFE00FAFA
                    FA00F6F6F60003030303033D616464797603030303030303035C5A3B151309B7
                    222B7603030303035BAC1B20556C52543C05215D03039559237A186E378B5831
                    34700427760394607C1D284A3A867449492F560244039519251A82394F736F36
                    4B384C631476950C100E2A2975A4684D324C3057B63E950A110F0B1E6B89BA8A
                    50353353B5629507120D24806A4E88018D512E6DB442950608269291907F6987
                    01712D72B35F951641A19DB29A8F7E830185488C2C5F9566A3AAA6B8A5989C99
                    A08184016503937847B9A7AEAFADB09F96970145650303033F4601ABA9A8A29B
                    9E018E7703030303033F671F7DB17D171C7B7B03030303030303035E5E43403F
                    3F0303030303}
                  Layout = blGlyphLeft
                  ParentFont = False
                  Spacing = 5
                  OnClick = xsbBuscarClick
                end
                object Label28: TLabel
                  Left = 581
                  Top = 3
                  Width = 216
                  Height = 13
                  AutoSize = False
                  Caption = '&Existencia Total del Almac'#233'n:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object cboCodigo: TComboBox
                  Left = 5
                  Top = 18
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
                  OnKeyDown = cboCodigoKeyDown
                end
                object cboAlmacenes1: TComboBox
                  Left = 581
                  Top = 19
                  Width = 216
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
                  OnChange = cboNumAlmacChange
                end
              end
            end
          end
          object TBXDock2: TTBXDock
            Left = 2
            Top = 2
            Width = 35
            Height = 146
            Position = dpLeft
            object TBXToolbar2: TTBXToolbar
              Left = 0
              Top = 0
              Caption = 'TBXToolbar2'
              DockMode = dmCannotFloatOrChangeDocks
              FullSize = True
              Images = MainForm.ImageList2
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              object tbtLimpiarDet: TTBXItem
                Hint = 'Limpiar Detalle del Documento'
                ImageIndex = 11
                OnClick = tbtLimpiarDetClick
              end
              object tbtPropiedades: TTBXItem
                Hint = 'Editar propiedades de la partida/producto'
                ImageIndex = 8
              end
              object TBXSeparatorItem11: TTBXSeparatorItem
              end
              object tbtChecarPartidas: TTBXItem
                Hint = 'Verificar/Checar la info de las partidas'
                ImageIndex = 38
              end
              object tbtCalculaDescto: TTBXItem
                Hint = 'Calcula Descuento de la partida'
                ImageIndex = 64
                OnClick = tbtCalculaDesctoClick
              end
            end
          end
        end
        object pnlTotales: TPanel
          Left = 0
          Top = 383
          Width = 1288
          Height = 87
          Align = alBottom
          BevelInner = bvLowered
          TabOrder = 3
          object Bevel1: TBevel
            Left = 464
            Top = 3
            Width = 3
            Height = 78
            Shape = bsRightLine
          end
          object GroupBox2: TGroupBox
            Left = 975
            Top = 2
            Width = 311
            Height = 83
            Align = alRight
            Caption = '  Existencias'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object zlbAlmacen: TRzLabel
              Left = 13
              Top = 53
              Width = 139
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = 'Almacen'
              Color = clLime
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              BorderInner = fsGroove
            end
            object zlbTodosAlm: TRzLabel
              Left = 13
              Top = 18
              Width = 139
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = 'Todos los Almacenes'
              Color = clGray
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              BorderInner = fsGroove
            end
            object xcrExisTotal2: TCurrencyEdit
              Left = 166
              Top = 10
              Width = 142
              Height = 34
              Margins.Left = 1
              Margins.Top = 1
              AutoSize = False
              Color = 16776176
              DisplayFormat = ' ,0.00;- ,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object xcrExisAlmacen: TCurrencyEdit
              Left = 166
              Top = 45
              Width = 142
              Height = 34
              Margins.Left = 1
              Margins.Top = 1
              AutoSize = False
              Color = clMoneyGreen
              DisplayFormat = ' ,0.00;- ,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
          end
          object RzGroupBox1: TRzGroupBox
            Left = 528
            Top = 2
            Width = 447
            Height = 83
            Align = alRight
            Caption = '  Importes del Documento  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object RxLabel1: TRxLabel
              Left = 5
              Top = 14
              Width = 103
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Descuento:'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object RxLabel2: TRxLabel
              Left = 114
              Top = 14
              Width = 106
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'SubTotal:'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object RxLabel5: TRxLabel
              Left = 114
              Top = 50
              Width = 105
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Retenc.  IVA:'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object RxLabel3: TRxLabel
              Left = 223
              Top = 14
              Width = 105
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'IVA:'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object RxLabel6: TRxLabel
              Left = 335
              Top = 14
              Width = 105
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Total:'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object RxLabel7: TRxLabel
              Left = 223
              Top = 50
              Width = 105
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'IEPS:'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object lblMoneda2: TRzLabel
              Left = 396
              Top = 48
              Width = 45
              Height = 25
              Caption = 'USD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object xcrDescto: TCurrencyEdit
              Left = 5
              Top = 27
              Width = 103
              Height = 18
              Margins.Left = 1
              Margins.Top = 1
              TabStop = False
              AutoSize = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object xcrSubTotal: TCurrencyEdit
              Left = 114
              Top = 27
              Width = 106
              Height = 18
              Margins.Left = 1
              Margins.Top = 1
              TabStop = False
              AutoSize = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object xcrIVARet: TCurrencyEdit
              Left = 114
              Top = 63
              Width = 105
              Height = 18
              Margins.Left = 1
              Margins.Top = 1
              TabStop = False
              AutoSize = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object xcrIVA: TCurrencyEdit
              Left = 223
              Top = 27
              Width = 105
              Height = 18
              Margins.Left = 1
              Margins.Top = 1
              TabStop = False
              AutoSize = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object xcrTotal: TCurrencyEdit
              Left = 335
              Top = 27
              Width = 105
              Height = 18
              Margins.Left = 1
              Margins.Top = 1
              TabStop = False
              AutoSelect = False
              AutoSize = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object xcrIEPS: TCurrencyEdit
              Left = 223
              Top = 63
              Width = 105
              Height = 18
              Margins.Left = 1
              Margins.Top = 1
              TabStop = False
              AutoSize = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
          end
        end
        object pgcCliente: TPageControl
          Left = 0
          Top = 73
          Width = 1288
          Height = 160
          ActivePage = tshCliente
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object tshCliente: TTabSheet
            Caption = '&1 Datos Generales'
            object Label3: TLabel
              Left = 94
              Top = 40
              Width = 297
              Height = 17
              AutoSize = False
              Caption = 'Nombre del Agente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 94
              Top = 2
              Width = 294
              Height = 15
              AutoSize = False
              Caption = 'Nombre del Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 94
              Top = 81
              Width = 296
              Height = 17
              AutoSize = False
              Caption = 'Nombre del Transportista'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblPlazo: TLabel
              Left = 414
              Top = 42
              Width = 51
              Height = 15
              AutoSize = False
              Caption = 'Plazo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 4
              Top = 3
              Width = 83
              Height = 13
              AutoSize = False
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 4
              Top = 40
              Width = 83
              Height = 16
              AutoSize = False
              Caption = 'Agente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 4
              Top = 81
              Width = 83
              Height = 17
              AutoSize = False
              Caption = 'Transportista'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblPedido: TLabel
              Left = 415
              Top = 0
              Width = 138
              Height = 13
              AutoSize = False
              Caption = 'Pedido Interno'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblFecVence: TLabel
              Left = 474
              Top = 42
              Width = 130
              Height = 15
              AutoSize = False
              Caption = 'Fecha Vencimiento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 415
              Top = 82
              Width = 83
              Height = 13
              AutoSize = False
              Caption = '# Lista Precio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 607
              Top = -2
              Width = 170
              Height = 16
              AutoSize = False
              Caption = 'Pedido/O. Compra Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 607
              Top = 41
              Width = 130
              Height = 16
              AutoSize = False
              Caption = 'Observaciones:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lblLinCol: TLabel
              Left = 1063
              Top = 113
              Width = 74
              Height = 16
              AutoSize = False
              Caption = 'Lin: 00,  Col: 00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = []
              ParentFont = False
            end
            object xceNombreAgente: TComboEdit
              Left = 94
              Top = 57
              Width = 297
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              GlyphKind = gkEllipsis
              NumGlyphs = 1
              ParentFont = False
              TabOrder = 4
              OnButtonClick = xceNombreAgenteButtonClick
              OnKeyDown = xceNumAgenteKeyDown
            end
            object xceNombreCte: TComboEdit
              Left = 94
              Top = 17
              Width = 297
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              GlyphKind = gkEllipsis
              NumGlyphs = 1
              ParentFont = False
              TabOrder = 3
              OnButtonClick = xceNombreCteButtonClick
              OnKeyDown = xceCodCteProvKeyDown
            end
            object xceNombreTransp: TComboEdit
              Left = 94
              Top = 97
              Width = 297
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              GlyphKind = gkEllipsis
              NumGlyphs = 1
              ParentFont = False
              TabOrder = 5
              OnButtonClick = xceNombreTranspButtonClick
              OnKeyDown = xceViaTransKeyDown
            end
            object edtPlazo: TEdit
              Left = 414
              Top = 55
              Width = 49
              Height = 24
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object xceCodCteProv: TComboEdit
              Left = 2
              Top = 17
              Width = 88
              Height = 24
              Color = clMoneyGreen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              GlyphKind = gkEllipsis
              NumGlyphs = 1
              ParentFont = False
              TabOrder = 0
              OnButtonClick = xceCodCteProvButtonClick
              OnKeyDown = xceCodCteProvKeyDown
            end
            object xceNumAgente: TComboEdit
              Left = 2
              Top = 57
              Width = 88
              Height = 24
              Color = clMoneyGreen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              GlyphKind = gkEllipsis
              NumGlyphs = 1
              ParentFont = False
              TabOrder = 1
              OnButtonClick = xceNumAgenteButtonClick
              OnKeyDown = xceNumAgenteKeyDown
            end
            object xceViaTrans: TComboEdit
              Left = 2
              Top = 97
              Width = 88
              Height = 24
              Color = clMoneyGreen
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              GlyphKind = gkEllipsis
              NumGlyphs = 1
              ParentFont = False
              TabOrder = 2
              OnButtonClick = xceViaTransButtonClick
              OnKeyDown = xceViaTransKeyDown
            end
            object xcePedido: TComboEdit
              Left = 414
              Top = 14
              Width = 189
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              GlyphKind = gkEllipsis
              NumGlyphs = 1
              ParentFont = False
              TabOrder = 6
            end
            object xdeFecVenceDo: TDateEdit
              Left = 473
              Top = 55
              Width = 131
              Height = 24
              TabStop = False
              NumGlyphs = 2
              TabOrder = 8
            end
            object cboPrecio: TComboBox
              Left = 416
              Top = 96
              Width = 81
              Height = 24
              ItemHeight = 16
              TabOrder = 9
              Items.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10')
            end
            object chkDescto: TCheckBox
              Left = 506
              Top = 98
              Width = 95
              Height = 17
              Caption = 'Sugerir Desctos '
              Checked = True
              State = cbChecked
              TabOrder = 10
            end
            object xceOC: TComboEdit
              Left = 609
              Top = 13
              Width = 215
              Height = 24
              Color = 10930928
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              GlyphKind = gkEllipsis
              ButtonWidth = 0
              NumGlyphs = 1
              ParentFont = False
              TabOrder = 11
            end
            object xceObservaciones: TRzMemo
              Left = 607
              Top = 57
              Width = 450
              Height = 73
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              OnLineColChange = xceObservacionesLineColChange
            end
          end
          object tshAdicionales: TTabSheet
            Caption = '&2 Adicionales'
            ImageIndex = 1
            DesignSize = (
              1280
              129)
            object Label5: TLabel
              Left = 5
              Top = 0
              Width = 313
              Height = 13
              AutoSize = False
              Caption = 'Direcci'#243'n del Cliente (Factura)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label21: TLabel
              Left = 442
              Top = -1
              Width = 176
              Height = 16
              AutoSize = False
              Caption = 'Otros Datos del Cliente:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label22: TLabel
              Left = 351
              Top = 18
              Width = 103
              Height = 19
              AutoSize = False
              Caption = 'Metodo Pago:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label23: TLabel
              Left = 351
              Top = 41
              Width = 85
              Height = 19
              AutoSize = False
              Caption = 'Cuenta/Banco:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label24: TLabel
              Left = 351
              Top = 62
              Width = 85
              Height = 19
              AutoSize = False
              Caption = 'Referencia:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label25: TLabel
              Left = 351
              Top = 84
              Width = 85
              Height = 19
              AutoSize = False
              Caption = 'Num.Proveed:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label26: TLabel
              Left = 351
              Top = 106
              Width = 85
              Height = 19
              AutoSize = False
              Caption = 'Comprador:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 830
              Top = 0
              Width = 63
              Height = 16
              Alignment = taCenter
              AutoSize = False
              Caption = '% IVA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label27: TLabel
              Left = 895
              Top = -3
              Width = 138
              Height = 15
              AutoSize = False
              Caption = '# Decimales en Precio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object btnAplicarDec: TRxSpeedButton
              Left = 933
              Top = 13
              Width = 100
              Height = 22
              Hint = 'Aplica el numero de decimales al precio'
              Caption = '&Aplicar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000230B0000230B00000001000000010000EF9C2100F7A5
                5A00636B6B00FFB56B008C8C8C009C9C9400A5A5A500ADADAD00B5B5B500527B
                C600DEDEDE00EFEFEF00F7F7F700FF00FF0039A5FF0000F7FF0094FFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000D0D0D0D0D0D
                0D0D0D0D0D0D0D0D0D0D0D02020202020202020202020202020D0D0411111111
                1111111111111111040D0D04110303030303030303030311040D0D0411031111
                0909110311110311040D0D05110311110F09090311110311050D0D0511030303
                0E0F090909030311050D0D0511011111010E100F09090111050D0D060C011109
                090909100F09090C060D0D060C00000E100F0F0F0F0F0909060D0D070B001111
                0E100F090911000B070D0D070B001111000E100F0909000B070D0D080A000000
                000E100F0F09090A080D0D080A0A0A0A0A0A0E100F0F0909080D0D0808080808
                0808080E100F0F09090D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
              Layout = blGlyphLeft
              ParentFont = False
              Spacing = 5
              OnClick = btnAplicarDecClick
            end
            object Label19: TLabel
              Left = 607
              Top = 41
              Width = 130
              Height = 16
              AutoSize = False
              Caption = 'Entreguese en:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Memo1: TMemo
              Left = 0
              Top = 15
              Width = 345
              Height = 105
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
              ScrollBars = ssBoth
              TabOrder = 0
              WordWrap = False
            end
            object edtCuentaBanco: TRzEdit
              Left = 442
              Top = 38
              Width = 156
              Height = 24
              TabOrder = 1
            end
            object edtMetodoPago: TRzEdit
              Left = 442
              Top = 15
              Width = 156
              Height = 24
              TabOrder = 2
            end
            object edtReferencia: TRzEdit
              Left = 442
              Top = 59
              Width = 156
              Height = 24
              TabOrder = 3
            end
            object edtNumProveedor: TRzEdit
              Left = 442
              Top = 81
              Width = 156
              Height = 24
              TabOrder = 4
            end
            object edtComprador: TRzEdit
              Left = 442
              Top = 103
              Width = 156
              Height = 24
              TabOrder = 5
            end
            object xcrPIva: TCurrencyEdit
              Left = 828
              Top = 13
              Width = 65
              Height = 25
              Margins.Left = 1
              Margins.Top = 1
              AutoSize = False
              Color = clYellow
              DisplayFormat = ' ,0.00;- ,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 6
            end
            object edtDec: TEdit
              Left = 897
              Top = 13
              Width = 33
              Height = 24
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              Text = '2'
            end
            object mmoEntregar: TMemo
              Left = 607
              Top = 56
              Width = 670
              Height = 64
              TabStop = False
              Anchors = [akLeft, akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
              ScrollBars = ssBoth
              TabOrder = 8
              WordWrap = False
            end
          end
          object tshFoto: TTabSheet
            Caption = '&3 Datos de Producto'
            ImageIndex = 2
            object Panel1: TPanel
              Left = 145
              Top = 0
              Width = 1135
              Height = 129
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object xsbAmpliar: TRxSpeedButton
                Left = 8
                Top = 88
                Width = 137
                Height = 33
                Caption = 'Ampliar &Foto'
                OnClick = xsbAmpliarClick
              end
              object xlbDescri: TRxLabel
                Left = 2
                Top = 2
                Width = 1131
                Height = 16
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                WordWrap = True
                ExplicitWidth = 658
              end
              object lblPedimento: TLabel
                Left = 161
                Top = 73
                Width = 101
                Height = 16
                Caption = 'Folio Pedimento:'
              end
              object xsbPedimento: TRxSpeedButton
                Left = 298
                Top = 86
                Width = 49
                Height = 27
                Caption = '&Borrar'
                OnClick = xsbPedimentoClick
              end
              object GroupBox1: TGroupBox
                Left = 965
                Top = 18
                Width = 168
                Height = 109
                Align = alRight
                Caption = '  Existencias'
                TabOrder = 0
                object Label14: TLabel
                  Left = 14
                  Top = 57
                  Width = 172
                  Height = 16
                  Caption = 'Descuento por baja rotaci'#243'n:'
                end
                object xcrExisTotal: TCurrencyEdit
                  Left = 13
                  Top = 23
                  Width = 142
                  Height = 25
                  Margins.Left = 1
                  Margins.Top = 1
                  AutoSize = False
                  Color = clMoneyGreen
                  DisplayFormat = ' ,0.00;- ,0.00'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  OnChange = xcrExisTotalChange
                end
                object xcrDescRota: TCurrencyEdit
                  Left = 13
                  Top = 71
                  Width = 142
                  Height = 25
                  Margins.Left = 1
                  Margins.Top = 1
                  AutoSize = False
                  Color = 10930928
                  DisplayFormat = ' ,0.00;- ,0.00'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
              end
              object xcePedimento: TComboEdit
                Left = 160
                Top = 86
                Width = 139
                Height = 28
                Alignment = taCenter
                Color = clInfoBk
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                GlyphKind = gkEllipsis
                ButtonWidth = -1
                NumGlyphs = 1
                ParentFont = False
                TabOrder = 1
                Visible = False
                OnButtonClick = xceFolioButtonClick
                OnKeyDown = xceFolioKeyDown
              end
            end
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 145
              Height = 129
              Align = alLeft
              BevelInner = bvLowered
              Caption = 'Foto'
              TabOrder = 1
              object imgFoto: TImage
                Left = 2
                Top = 2
                Width = 141
                Height = 125
                Align = alClient
                Stretch = True
                ExplicitHeight = 120
              end
            end
          end
          object TabSheet2: TTabSheet
            Caption = '&4 Descuentos'
            ImageIndex = 3
            object F2: TF1Book
              Left = 0
              Top = 0
              Width = 1280
              Height = 129
              Align = alClient
              TabOrder = 0
              ExplicitWidth = 807
              ExplicitHeight = 124
              ControlData = {
                000001004B840000550D000060000000010001074631426F6F6B310101010101
                0101010101010101010101002905000000000900050500EE0400000000EF1400
                0000FF0000FF3F0000FFFFFFFFFFFFFFFFF3FF3D1200000000004B8F07380000
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
                24232C2323302E30305C29ED050000000000EC03000000E01400000000F5FF20
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
                00E0140000000001002000C02000000000000000000000E01405000800F5FF20
                C8C02000000000000000000000E01405000600F5FF20C8C02000000000000000
                000000E01405000C00F5FF20C8C02000000000000000000000E01405000A00F5
                FF20C8C02000000000000000000000E01405000D00F5FF20C8C0200000000000
                0000000000E01404000000F0FF1248C020000000000000000000008509000006
                5368656574310A09000510000D01000C640011010010FCA9F1D24D62503F5F01
                002A00002B0100250000FF008C0100340081C104140302264115080750616765
                20265083000084000026000000000000E83F27000000000000E83F2800000000
                0000F03F29000000000000F03FA1220100640001000100010004002C012C0100
                0000000000E03F000000000000E03F01000000000000000000000000F7189200
                FFCCFFFFFF00C0C0C000FF00FF3F0000000000000000F2100000000000000000
                000000000300FFFFF6150015001500FF0040061D0F0300000000000001000000
                000000003E0AB6060000000000000000A0640064009926090A0000000452E30B
                918FCE119DE300AA004BB8516C7400006C000000010000005800000000000000
                00000000FFFFFFFFFFFFFFFF00000000000000006C520000B83D000020454D46
                000001006C000000020000000100000000000000000000000000000020030000
                58020000D30000009E0000000E00000014000000000000001000000014000000
                01}
            end
          end
          object TabSheet3: TTabSheet
            Caption = '&5 Leyendas Impresi'#243'n'
            ImageIndex = 4
            object Label16: TLabel
              Left = 4
              Top = 41
              Width = 101
              Height = 17
              AutoSize = False
              Caption = 'Columna Inicial:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 186
              Top = 0
              Width = 101
              Height = 17
              AutoSize = False
              Caption = 'Leyendas:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object speColIni: TRxSpinEdit
              Left = 112
              Top = 40
              Width = 57
              Height = 24
              Value = 3.000000000000000000
              TabOrder = 0
            end
            object mmoLeyendas: TMemo
              Left = 184
              Top = 15
              Width = 465
              Height = 105
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
              ScrollBars = ssBoth
              TabOrder = 1
              WordWrap = False
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Fac. Electr'#243'nica'
            ImageIndex = 5
            object mmzFac: TRzMemo
              Left = 361
              Top = 0
              Width = 919
              Height = 129
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
              ScrollBars = ssBoth
              TabOrder = 0
            end
            object RzPanel1: TRzPanel
              Left = 0
              Top = 0
              Width = 361
              Height = 129
              Align = alLeft
              BorderOuter = fsGroove
              TabOrder = 1
              object RzLabel1: TRzLabel
                Left = 2
                Top = 2
                Width = 357
                Height = 16
                Align = alTop
                Caption = 'Esta factura esta ligada a la siguiente factura electr'#243'nica:'
                Color = clActiveBorder
                ParentColor = False
                ExplicitWidth = 337
              end
              object RzLabel2: TRzLabel
                Left = 8
                Top = 19
                Width = 35
                Height = 16
                Caption = 'Serie:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object RzLabel3: TRzLabel
                Left = 9
                Top = 40
                Width = 33
                Height = 16
                Caption = 'Folio:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object RzLabel4: TRzLabel
                Left = 9
                Top = 61
                Width = 41
                Height = 16
                Caption = 'Fecha:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object RzLabel5: TRzLabel
                Left = 8
                Top = 80
                Width = 34
                Height = 16
                Caption = 'Total:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object RzLabel6: TRzLabel
                Left = 236
                Top = 18
                Width = 75
                Height = 16
                Caption = 'RFC Emisor:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object RzLabel7: TRzLabel
                Left = 236
                Top = 58
                Width = 89
                Height = 16
                Caption = 'RFC Receptor:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object RzLabel8: TRzLabel
                Left = 8
                Top = 101
                Width = 36
                Height = 16
                Caption = 'UUID:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object edzSerie: TRzEdit
                Left = 52
                Top = 17
                Width = 41
                Height = 24
                TabOrder = 0
              end
              object edzFolio: TRzEdit
                Left = 52
                Top = 37
                Width = 73
                Height = 24
                TabOrder = 1
              end
              object edzFecha: TRzEdit
                Left = 52
                Top = 58
                Width = 149
                Height = 24
                TabOrder = 2
              end
              object edzTotal: TRzEdit
                Left = 52
                Top = 79
                Width = 149
                Height = 24
                TabOrder = 3
              end
              object edzemRFC: TRzEdit
                Left = 207
                Top = 37
                Width = 149
                Height = 24
                TabOrder = 4
              end
              object edzreRFC: TRzEdit
                Left = 206
                Top = 79
                Width = 149
                Height = 24
                TabOrder = 5
              end
              object edzUUID: TRzEdit
                Left = 52
                Top = 100
                Width = 301
                Height = 24
                TabOrder = 6
              end
            end
          end
        end
      end
    end
  end
  object ImageList1: TImageList
    Left = 584
    Top = 26
    Bitmap = {
      494C01015E006300D40010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 696
    Top = 65528
    object Nuevo: TAction
      Category = 'Archivo'
      Caption = 'Nuevo'
      ImageIndex = 1
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
      ImageIndex = 81
      OnExecute = SalirExecute
    end
    object axnBuscar: TAction
      Category = 'Varios'
      Caption = 'BuscarNombre'
      ImageIndex = 35
    end
    object axnFiltrar: TAction
      Category = 'Varios'
      Caption = 'Filtrar Clientes'
      ImageIndex = 15
    end
  end
  object FormStorage1: TFormStorage
    IniFileName = 'TReporter.cfg'
    IniSection = 'Clientes'
    MinMaxInfo.MinTrackHeight = 466
    MinMaxInfo.MinTrackWidth = 604
    Options = [fpState, fpPosition, fpActiveControl]
    UseRegistry = False
    StoredValues = <>
    Left = 664
  end
  object Raw1: TRAWPrinter
    Left = 552
    Top = 24
  end
  object Timer1: TTimer
    Interval = 10
    OnTimer = Timer1Timer
    Left = 648
    Top = 26
  end
  object Timer2: TTimer
    Interval = 10
    OnTimer = Timer2Timer
    Left = 616
    Top = 26
  end
  object Otf: TOpenTextFileDialog
    Filter = 'xml|*.xml|txt|*.txt'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 584
    Top = 56
  end
end
