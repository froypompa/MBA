object frmRepComis: TfrmRepComis
  Left = 330
  Top = 217
  Caption = 'Reporte de Comisiones de Ventas'
  ClientHeight = 455
  ClientWidth = 1004
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
  PixelsPerInch = 96
  TextHeight = 13
  object dckSincro: TTBXDock
    Left = 0
    Top = 0
    Width = 1004
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
      object tbtGenerar: TTBXItem
        Caption = '  &Generar Reporte  '
        DisplayMode = nbdmImageAndText
        Hint = 'Abrir archivo'
        ImageIndex = 60
        Images = MainForm.ImageList1
        Layout = tbxlGlyphTop
        OnClick = tbtGenerarClick
        Left = 23
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
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
      object tbtEsconder: TTBXItem
        Caption = '&Esconder'
        DisplayMode = nbdmImageAndText
        ImageIndex = 86
        Images = MainForm.ImageList1
        Options = [tboImageAboveCaption]
        OnClick = tbtEsconderClick
      end
      object TBXSubmenuItem1: TTBXSubmenuItem
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
      object itmAyuda: TTBXItem
        Caption = '  &Ayuda  '
        DisplayMode = nbdmImageAndText
        ImageIndex = 47
        Options = [tboImageAboveCaption]
        OnClick = itmAyudaClick
      end
      object TBXSeparatorItem4: TTBXSeparatorItem
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
  object pgcDatos: TPageControl
    Left = 0
    Top = 39
    Width = 1004
    Height = 185
    ActivePage = tshAct
    Align = alTop
    Images = MainForm.ImageList1
    TabOrder = 1
    object tshAct: TTabSheet
      Caption = '&Criterios del Reporte'
      ImageIndex = 171
      object Label5: TLabel
        Left = 8
        Top = 6
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
        Top = 38
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
      object lblMsg: TLabel
        Left = 0
        Top = 138
        Width = 996
        Height = 18
        Align = alBottom
        AutoSize = False
        Caption = 'Capturando fechas...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitTop = 104
        ExplicitWidth = 782
      end
      object xdeFechaIni: TDateEdit
        Left = 109
        Top = 3
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
        OnDblClick = xdeFechaIniDblClick
      end
      object xdeFechaFin: TDateEdit
        Left = 109
        Top = 33
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
    object tshList: TTabSheet
      Caption = '&Opciones'
      ImageIndex = 176
      object grbSort: TRzGroupBox
        Left = 0
        Top = 0
        Width = 321
        Height = 156
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
            'Folio Factura'
            'Fecha Factura'
            'Cliente'
            'Codigo Articulo'
            'Descripcion Articulo'
            'Codigo Familia'
            'Numero de Agente')
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
        Width = 320
        Height = 156
        Align = alLeft
        Caption = ' Filtro por vendedor '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object btnFiltro: TRzBitBtn
          Left = 8
          Top = 62
          Width = 305
          Height = 43
          Hint = 'activar/Desactivar filtro por vendedor'
          AllowAllUp = True
          GroupIndex = 1
          ShowDownPattern = False
          Caption = 'Filtrar por Vendedor'
          HotTrack = True
          TabOrder = 0
          TextStyle = tsRecessed
          OnClick = btnFiltroClick
          ImageIndex = 53
          Images = MainForm.ImageList2
        end
        object cboVendedor: TRzComboBox
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
          TabOrder = 1
          Items.Strings = (
            'Folio Factura'
            'Fecha Factura'
            'Cliente'
            'Codigo Articulo'
            'Descripcion Articulo'
            'Codigo Familia'
            'Numero de Agente')
        end
      end
    end
    object tshAux: TTabSheet
      Caption = 'Ajustes a Partidas'
      ImageIndex = 21
      object RzGroupBox2: TRzGroupBox
        Left = 0
        Top = 0
        Width = 308
        Height = 156
        Align = alLeft
        Caption = '  Reemplazar Valores de las partidas  '
        TabOrder = 0
        object RzLabel3: TRzLabel
          Left = 7
          Top = 17
          Width = 85
          Height = 13
          Caption = 'Corrregir columna:'
          BorderSides = [sdBottom]
        end
        object RzLabel4: TRzLabel
          Left = 7
          Top = 40
          Width = 60
          Height = 13
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Valor Actual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          BorderColor = clBackground
          BorderHighlight = clBackground
          FlatColor = clAppWorkSpace
        end
        object RzLabel5: TRzLabel
          Left = 7
          Top = 62
          Width = 73
          Height = 13
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Valor Nuevo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          BorderColor = clBackground
          BorderHighlight = clBackground
          FlatColor = clAppWorkSpace
        end
        object RzLabel6: TRzLabel
          Left = 7
          Top = 84
          Width = 106
          Height = 13
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Renglones a afectar:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          BorderColor = clBackground
          BorderHighlight = clBackground
          FlatColor = clAppWorkSpace
        end
        object edzActual: TRzNumericEdit
          Left = 110
          Top = 37
          Width = 73
          Height = 21
          FrameHotTrack = True
          FrameVisible = True
          TabOrder = 0
          IntegersOnly = False
          DisplayFormat = ',0.00;(,0.00)'
        end
        object edzNuevo: TRzNumericEdit
          Left = 110
          Top = 59
          Width = 73
          Height = 21
          FrameHotTrack = True
          FrameVisible = True
          TabOrder = 1
          IntegersOnly = False
          DisplayFormat = ',0.00;(,0.00)'
        end
        object btnReemplazar: TRzBitBtn
          Left = 110
          Top = 110
          Width = 195
          Height = 37
          Caption = 'Realizar Ajustes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HotTrack = True
          ParentFont = False
          TabOrder = 2
          OnClick = btnReemplazarClick
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000120B0000120B0000000100000000000000000000FFFF
            FF00FF00FF00FFFEFF00A4676900A5686B00FFFEFE009365600093655E009263
            5D009566600093655F00986963009E6E64008469640080676200A37266009D70
            6500896A63009F6F6200A0706300A7756800986859009F6F6000AC796900A072
            6400B17E6B00BB846E00B6816C00CB917300C58C7000C0896F00CF8E6800D498
            7500CF967400FFFCFA00FFF8F300FFFBF800FFF4EB00FFFAF600FFEFE000FFF0
            E200FFF0E300FFF2E600FFF4EA00FFF6EE00FFF8F200FECC9900FFCE9C00FECE
            9D00FECF9F00FED1A300FFD5AA00FED4A900FED5AB00FED7AF00FFDAB500FEDA
            B500FFDDBA00FFDEBC00FEDDBB00FFE3C700FFE5CB00FFE7CF00FEE6CE00FFEB
            D800FFEEDE00FFF0E100FEEFE000FFF2E500FFF3E700FFF4E900FFF6ED00FFF7
            EF00FFFBF700D5812700FECB9600FECC9700FECC9800FECE9900FECE9A00FECE
            9C00FECF9D00FFD09F00FECF9E00FED09E00FED0A000FED3A300FFD4A500FED3
            A400FED4A500FED4A600FED4A700FED5A700FED5A900FED5AA00FED7AB00FFD8
            AD00FED7AD00FED8AD00FED8AF00FED8B000FFDAB200FED9B100FED9B200FEDA
            B200FEDAB400FFDCB700FEDCB600FFDDB800FEDCB700FEDDB800FFDEBB00FEDD
            BA00FFE0BD00FEDEBC00FEE0BF00FFE1C100FEE0C000FFE1C200FFE2C200FEE1
            C100FFE3C500FEE2C400FFE3C600FEE3C500FEE3C600FEE3C700FFE5C900FFE5
            CA00FEE5C900FFE6CB00FEE5CA00FFE6CC00FEE6CB00FEE6CC00FFE7CE00FFE9
            D100FFEAD300FFEAD400FFEBD500FEEAD400FEEBD700FFEDD900FFEDDA00FFEE
            DC00FFEFDD00FEEEDC00FFEFDE00FEEEDD00FFF0E000FEF0E100FFF3E600FEF2
            E500FEF3E700FEF4E900FFF7EE00F8CE9C00FED9AF00FEE0BC00FEE0BD00FEE1
            BF00FEE1C000FEE2C200FEE3C400FFE5C700FFE7CB00FEE6CA00FEE7CC00FEE9
            CF00FEE9D000FEE9D100FEEAD300FEEBD400FEEBD500FFEDD700FFEDD800FEED
            D900FFF0DE00FEEFDD00FFF2E200FFF3E500FFF4E700FEF3E600FFF6EB00FFF8
            F000F6D3A700F8D9B100FEEAD100FFF2E100FEF2E300FFF6EA00FFF7ED00FFF8
            EF00FEF7EE00FEF8F000FFFBF600EECE9E00F6E0C000F8E6CB00FEF6EB00FFFA
            F300FEFAF400EED9B500FFFBF400FEFAF300FFFCF700FFFEFC00F7EEDA00EFE6
            CF00FFFEFB00FFFEFA00FEFEFB00FFFFFE00AFB17400AFBA8400AFC49700648E
            43005484370064934C0054893E0064995600548F470032772500327A2900327D
            2E00008100000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000020202090404
            040404040404040404040404040404040202020202086B386764605D5A575632
            31504E4C4C4C4C1702020202020B736F386864605F5B59565452514F4D4C4C17
            02020202020B75A0716C6965635F5C5933E252304F4E4D1702020202020B7A79
            72706E6A67613635E2E2E255522F4E17020202020207817E4B4B4B4B4B4B64E2
            DFD9E2DA5451501702020202020A883EA57B769F3A6C66E2BA34D6E2E29D5217
            02020202020C8AA98582A479A0706C6A676236C5E2E2531702020202020D41AD
            AA40847E77743B6E396737603558331702020202021093B08DAB88867C7BA273
            6DE2689E605E5B170202020202159695B18C893F863DA479E2E2E26665635F13
            02020202021845B44B4B4B4B4B4B80E2E0DBE2DC3967621402020202021A472B
            294491418BABA8E2C6A3D7E2E2BB671902020202021CC02C46B444918F8CBC3F
            A73D78CBE2E26C1102020202021BC1C2C8469943428F8EACA987A57D79A03C12
            02020202021FC92E9CBFB6B7BD9490AF8BE2A8827C77A10F02020202021ECECA
            2E494847982AB293E2E2E288837F780E02020202021D23254B4B4B4B4B4BBEE2
            E1DDE2DE3F83A516020202020222CFD22527CDB92D269AE2D094D8E2E2C7A605
            02020202022103CFD325C4C92EC1B847B5B428D1E2E2AA0E0202020202210101
            06D2234ACC2E49B89B98BE9692B1AE0E020202020221010101D5D2D425CC24C3
            9C2CB69997B3900E02020202022020202020202020202020202020202020200E
            0202020202020202020202020202020202020202020202020202}
        end
        object cboCol: TRzComboBox
          Left = 110
          Top = 14
          Width = 195
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          FrameHotTrack = True
          FrameVisible = True
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 3
          Items.Strings = (
            'Porcentaje de Comisi'#243'n'
            'Base de Comisi'#243'n')
        end
        object cboRen: TRzComboBox
          Left = 110
          Top = 81
          Width = 195
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          FrameHotTrack = True
          FrameVisible = True
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 4
          Items.Strings = (
            'Misma Familia en esta factura'
            'Misma Factura'
            'Rango Seleccionado')
        end
      end
      object pnzAnalisis: TRzPanel
        Left = 308
        Top = 0
        Width = 365
        Height = 156
        Align = alLeft
        BorderOuter = fsGroove
        TabOrder = 1
        object lblStatus: TRzLabel
          Left = 2
          Top = 2
          Width = 361
          Height = 16
          Align = alTop
          Caption = 'Analisis'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 56
        end
        object lblArt: TRzLabel
          Left = 2
          Top = 57
          Width = 361
          Height = 20
          Align = alTop
          Caption = 'lblArt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 34
        end
        object RzSeparator1: TRzSeparator
          Left = 2
          Top = 18
          Width = 361
          ShowGradient = True
          Align = alTop
          Color = clBtnFace
          ExplicitLeft = 6
          ExplicitTop = 12
          ExplicitWidth = 325
        end
        object lblFam: TRzLabel
          Left = 2
          Top = 40
          Width = 361
          Height = 17
          Align = alTop
          Caption = 'lblFam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 44
        end
        object lblFac: TRzLabel
          Left = 2
          Top = 20
          Width = 361
          Height = 20
          Align = alTop
          Caption = 'lblFac'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 35
        end
        object lblPorc: TRzLabel
          Left = 2
          Top = 77
          Width = 361
          Height = 77
          Align = alClient
          Caption = 'Costos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 38
          ExplicitHeight = 20
        end
      end
      object pnzStatus: TRzPanel
        Left = 673
        Top = 0
        Width = 323
        Height = 156
        Align = alClient
        BorderOuter = fsGroove
        TabOrder = 2
        object RzLabel7: TRzLabel
          Left = 2
          Top = 2
          Width = 319
          Height = 16
          Align = alTop
          Caption = 'Status del Reporte:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 134
        end
        object RzSeparator2: TRzSeparator
          Left = 2
          Top = 18
          Width = 319
          ShowGradient = True
          Align = alTop
          Color = clBtnFace
          ExplicitLeft = 32
          ExplicitTop = 24
          ExplicitWidth = 200
        end
        object lblSt0: TRzLabel
          Left = 2
          Top = 20
          Width = 319
          Height = 16
          Align = alTop
          Caption = 'lblFam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          OnDblClick = lblSt0DblClick
          ExplicitWidth = 48
        end
        object lblSt5: TRzLabel
          Tag = 5
          Left = 2
          Top = 100
          Width = 319
          Height = 16
          Align = alTop
          Caption = 'lblFam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          OnDblClick = lblSt0DblClick
          ExplicitWidth = 48
        end
        object lblSt4: TRzLabel
          Tag = 4
          Left = 2
          Top = 84
          Width = 319
          Height = 16
          Align = alTop
          Caption = 'lblFam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          OnDblClick = lblSt0DblClick
          ExplicitWidth = 48
        end
        object lblSt3: TRzLabel
          Tag = 3
          Left = 2
          Top = 68
          Width = 319
          Height = 16
          Align = alTop
          Caption = 'lblFam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          OnDblClick = lblSt0DblClick
          ExplicitWidth = 48
        end
        object lblSt2: TRzLabel
          Tag = 2
          Left = 2
          Top = 52
          Width = 319
          Height = 16
          Align = alTop
          Caption = 'lblFam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          OnDblClick = lblSt0DblClick
          ExplicitWidth = 48
        end
        object lblSt1: TRzLabel
          Tag = 1
          Left = 2
          Top = 36
          Width = 319
          Height = 16
          Align = alTop
          Caption = 'lblFam'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          OnDblClick = lblSt0DblClick
          ExplicitWidth = 48
        end
      end
    end
  end
  object pgcReporte: TRzPageControl
    Left = 0
    Top = 224
    Width = 1004
    Height = 231
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    SoftCorners = True
    TabIndex = 0
    TabOrder = 2
    TabStyle = tsRoundCorners
    OnChange = pgcReporteChange
    FixedDimension = 26
    object TabSheet1: TRzTabSheet
      Caption = '&General'
      object F1: TF1Book
        Left = 0
        Top = 0
        Width = 1000
        Height = 198
        Align = alClient
        TabOrder = 0
        OnKeyDown = F1KeyDown
        OnDblClick = F1DblClick
        OnStartEdit = F1StartEdit
        ExplicitHeight = 196
        ControlData = {
          000001005A6700007714000060000000010001074631426F6F6B310101010101
          0101010101010101010101006905000000000900050500EE0400000000EF1400
          0000FF0000FF3F0400FFFFFFFFFFFFFFFFF3FF3D1200000000983A9A0B380000
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
          0000F03F29000000000000F03FA122010064000100010001000600C800C80000
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
    end
    object TabSheet2: TRzTabSheet
      Caption = '&Individual'
      object F2: TF1Book
        Left = 0
        Top = 47
        Width = 1000
        Height = 151
        Align = alClient
        PopupMenu = popF2
        TabOrder = 0
        OnKeyDown = F1KeyDown
        OnSelChange = F2SelChange
        OnStartEdit = F1StartEdit
        ExplicitHeight = 147
        ControlData = {
          000001005A6700009B0F000060000000010001074631426F6F6B310101010101
          0101010101010101010101006905000000000900050500EE0400000000EF1400
          0000FF0000FF3F0400FFFFFFFFFFFFFFFFF3FF3D120000C102983AD908380000
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
          0000F03F29000000000000F03FA122010064000100010001000600C800C80000
          0000000000E03F000000000000E03F01000000000000000000000000F7189100
          FF8CFFFFFF00C0C0C000FF00FF3F0000000000000000F2100000000000000000
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
        Width = 1000
        Height = 47
        object TBXToolbar1: TTBXToolbar
          Left = 0
          Top = 0
          Caption = 'TBXToolbar1'
          DockPos = 0
          FullSize = True
          Images = MainForm.ImageList2
          Stretch = True
          TabOrder = 0
          object itmRIGenerar: TTBXItem
            Caption = '&Generar Reporte Individual'
            DisplayMode = nbdmImageAndText
            ImageIndex = 67
            Options = [tboImageAboveCaption]
            OnClick = itmRIGenerarClick
          end
          object TBXSeparatorItem6: TTBXSeparatorItem
          end
          object itmRIRecalcular: TTBXItem
            Caption = 'Recalcular'
            DisplayMode = nbdmImageAndText
            ImageIndex = 75
            Options = [tboImageAboveCaption]
            OnClick = itmRIRecalcularClick
          end
          object TBXSeparatorItem7: TTBXSeparatorItem
          end
          object itmRIImprimir: TTBXItem
            Caption = 'Imprimir'
            DisplayMode = nbdmImageAndText
            ImageIndex = 13
            Options = [tboImageAboveCaption]
          end
          object TBXSeparatorItem8: TTBXSeparatorItem
          end
          object itmRILeerXLS: TTBXItem
            Caption = '&Leer XLS'
            DisplayMode = nbdmImageAndText
            ImageIndex = 25
            Options = [tboImageAboveCaption]
            OnClick = itmRILeerXLSClick
          end
          object itmRIGrabarXLS: TTBXItem
            Caption = '&Grabar XLS'
            DisplayMode = nbdmImageAndText
            ImageIndex = 24
            Options = [tboImageAboveCaption]
            OnClick = itmRIGrabarXLSClick
          end
          object TBXSeparatorItem5: TTBXSeparatorItem
          end
          object tbtIrStatus: TTBXSubmenuItem
            Caption = '&Ir a Status'
            DisplayMode = nbdmImageAndText
            ImageIndex = 50
            Images = MainForm.ImageList2
            Options = [tboDropdownArrow, tboImageAboveCaption]
            object itmInicio: TTBXItem
              Caption = 'Ir a Rengl'#243'n Inicial'
              ImageIndex = 176
              Images = MainForm.ImageList1
              OnClick = itmInicioClick
            end
            object TBXSeparatorItem14: TTBXSeparatorItem
            end
            object itmSt0: TTBXItem
              Caption = '0-Pago Normal! En base a las tablas de parametros'
              ImageIndex = 167
              Images = MainForm.ImageList1
              OnClick = itmSt0Click
            end
            object itmSt1: TTBXItem
              Tag = 1
              Caption = '1-Cuidado! No calcula porque NO hay Costo capturado.'
              FontSettings.Bold = tsTrue
              FontSettings.Color = clRed
              ImageIndex = 167
              Images = MainForm.ImageList1
              OnClick = itmSt0Click
            end
            object itmSt2: TTBXItem
              Tag = 2
              Caption = '2-No hay pago! Dias vencidos MUY altos.'
              FontSettings.Bold = tsTrue
              FontSettings.Color = clNavy
              ImageIndex = 167
              Images = MainForm.ImageList1
              OnClick = itmSt0Click
            end
            object itmSt3: TTBXItem
              Tag = 3
              Caption = '3-No hay pago! Margen MUY bajo.'
              FontSettings.Bold = tsTrue
              FontSettings.Color = clPurple
              ImageIndex = 167
              Images = MainForm.ImageList1
              OnClick = itmSt0Click
            end
            object itmSt4: TTBXItem
              Tag = 4
              Caption = '4-No hay pago! Descuento MUY alto.'
              FontSettings.Bold = tsTrue
              FontSettings.Color = clAqua
              ImageIndex = 167
              Images = MainForm.ImageList1
              OnClick = itmSt0Click
            end
            object itmSt5: TTBXItem
              Tag = 5
              Caption = '5-Pago Incompleto! Dias vencidos MUY altos.'
              FontSettings.Bold = tsTrue
              FontSettings.Color = clGreen
              ImageIndex = 167
              Images = MainForm.ImageList1
              OnClick = itmSt0Click
            end
          end
          object TBXSeparatorItem9: TTBXSeparatorItem
          end
          object tbtAuxiliar: TTBXItem
            Caption = 'Ver Ajustes'
            DisplayMode = nbdmImageAndText
            ImageIndex = 40
            Options = [tboImageAboveCaption]
            OnClick = tbtAuxiliarClick
          end
          object TBXSeparatorItem13: TTBXSeparatorItem
          end
          object lblAgente: TTBXLabelItem
            Caption = '00-Nombre del agente'
            FontSettings.Size = 150
          end
        end
      end
    end
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
      OnClick = Preferencias1Click
    end
  end
  object FormStorage1: TFormStorage
    UseRegistry = False
    StoredProps.Strings = (
      'pgcDatos.ActivePage')
    StoredValues = <>
    Left = 708
    Top = 26
  end
  object icuRep: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = DM1.cnMBA
    Left = 608
    Top = 24
  end
  object icuTablas: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = DM1.cnMBA
    Left = 640
    Top = 24
  end
  object icuAgentes: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = DM1.cnMBA
    Left = 672
    Top = 24
  end
  object popF2: TTBXPopupMenu
    Images = MainForm.ImageList1
    OnPopup = popF2Popup
    Left = 840
    Top = 8
    object itmRecalcular: TTBXItem
      Caption = '&Recalcular'
      ImageIndex = 178
      OnClick = itmRecalcularClick
    end
    object TBXSeparatorItem10: TTBXSeparatorItem
    end
    object itmCopiar: TTBXItem
      Caption = '&Copiar'
      ImageIndex = 1
      ShortCut = 116
      OnClick = itmCopiarClick
    end
    object itmCopiarA: TTBXItem
      Caption = 'Copiar &Abajo'
      ImageIndex = 182
      ShortCut = 118
      OnClick = itmCopiarAClick
    end
    object TBXSeparatorItem11: TTBXSeparatorItem
    end
    object itmPegar: TTBXItem
      Caption = '&Pegar'
      ImageIndex = 2
      ShortCut = 117
      OnClick = itmPegarClick
    end
    object itmPegarV: TTBXItem
      Caption = '&Pegar Valores'
      ImageIndex = 168
      OnClick = itmPegarVClick
    end
    object TBXSeparatorItem12: TTBXSeparatorItem
    end
  end
end
