object frmUbicaciones_Generar: TfrmUbicaciones_Generar
  Left = 330
  Top = 217
  Caption = 'Captura de Par'#225'metros para calculo de comisiones de venta'
  ClientHeight = 455
  ClientWidth = 790
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dckSincro: TTBXDock
    Left = 0
    Top = 0
    Width = 790
    Height = 47
    object tlbMain: TTBXToolbar
      Left = 0
      Top = 0
      DockPos = 0
      FullSize = True
      Images = MainForm.ImageList2
      TabOrder = 0
      object tbtSalir: TTBXItem
        Caption = '  &Salir  '
        DisplayMode = nbdmImageAndText
        Hint = 'Cerrar Ventana'
        ImageIndex = 12
        Layout = tbxlGlyphTop
        OnClick = tbtSalirClick
        Left = 529
      end
      object TBXSeparatorItem3: TTBXSeparatorItem
      end
      object tbtCreate: TTBXItem
        Caption = '&Limpiar'
        DisplayMode = nbdmImageAndText
        Hint = 'Limpiar Listado'
        ImageIndex = 11
        Layout = tbxlGlyphTop
        OnClick = tbtCreateClick
      end
      object tbtAbrir: TTBXItem
        Caption = '  L&eer  '
        DisplayMode = nbdmImageAndText
        Hint = 'Abrir archivo'
        ImageIndex = 25
        Layout = tbxlGlyphTop
        OnClick = tbtAbrirClick
        Left = 23
      end
      object tbtGrabar: TTBXItem
        Caption = ' &Grabar '
        DisplayMode = nbdmImageAndText
        Hint = 'Grabar listado'
        ImageIndex = 24
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
        ImageIndex = 20
        Layout = tbxlGlyphTop
        OnClick = tbtPreverClick
        Left = 75
      end
      object tbtImprimir: TTBXItem
        Caption = ' &Imprimir '
        DisplayMode = nbdmImageAndText
        Hint = 'Imprimir listado'
        ImageIndex = 13
        Layout = tbxlGlyphTop
        OnClick = tbtImprimirClick
        Left = 104
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object tbtGenReporte: TTBXItem
        Caption = '&Generar Reporte'
        DisplayMode = nbdmImageAndText
        Hint = 'Generar Reporte Global de Comisines'
        ImageIndex = 49
        Layout = tbxlGlyphTop
        OnClick = tbtGenReporteClick
        Left = 75
      end
      object tbtGrabarXls: TTBXItem
        Caption = '&Grabar Reporte XLS'
        DisplayMode = nbdmImageAndText
        Hint = 'Generar Reporte Global de Comisines'
        ImageIndex = 80
        Layout = tbxlGlyphTop
        OnClick = tbtGrabarXlsClick
        Left = 75
      end
      object tbtImpReporte: TTBXItem
        Caption = ' &Imprimir  Reporte'
        DisplayMode = nbdmImageAndText
        Hint = 'Imprimir listado'
        ImageIndex = 57
        Layout = tbxlGlyphTop
        OnClick = tbtImpReporteClick
        Left = 104
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object itmAyuda: TTBXItem
        Caption = '&Ayuda'
        DisplayMode = nbdmImageAndText
        ImageIndex = 79
        Options = [tboImageAboveCaption]
        OnClick = itmAyudaClick
      end
    end
  end
  object pgcSincro: TRzPageControl
    Left = 0
    Top = 47
    Width = 790
    Height = 150
    ActivePage = tshCriterios
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Images = MainForm.ImageList2
    ParentFont = False
    TabIndex = 0
    TabOrder = 1
    TabStyle = tsRoundCorners
    FixedDimension = 30
    object tshCriterios: TRzTabSheet
      ImageIndex = 56
      Caption = '&1 Criterios de Seleccion'
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 786
        Height = 45
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 0
        object lbzEsquema: TRzLabel
          Left = 6
          Top = 12
          Width = 154
          Height = 16
          Caption = 'Esquema de Comisiones:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblEsquema: TRzLabel
          Left = 223
          Top = 12
          Width = 177
          Height = 16
          Caption = 'Esquema de Comisiones:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object sedEsquema: TRzSpinEdit
          Left = 170
          Top = 6
          Width = 47
          Height = 28
          Max = 3.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = sedEsquemaChange
        end
      end
      inline fraFamilia1: TfraFamilia
        Left = 0
        Top = 45
        Width = 786
        Height = 42
        Align = alTop
        TabOrder = 1
        TabStop = True
        ExplicitTop = 45
        ExplicitWidth = 786
        inherited Label9: TLabel
          Top = -2
          Height = 17
          Caption = 'Codigo'
          ExplicitTop = -2
          ExplicitHeight = 17
        end
        inherited Label4: TLabel
          Top = -2
          Height = 17
          ExplicitTop = -2
          ExplicitHeight = 17
        end
        inherited xceCodFam: TComboEdit
          OnKeyDown = fraFamilia1xceCodFamKeyDown
        end
        inherited xceDescripFam: TComboEdit
          Width = 676
          ExplicitWidth = 676
        end
      end
    end
    object tshOpciones: TRzTabSheet
      ImageIndex = 53
      Caption = '&2 Opciones'
    end
  end
  object pgcMain: TRzPageControl
    Left = 0
    Top = 197
    Width = 790
    Height = 258
    ActivePage = tshCaptura
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Images = MainForm.ImageList2
    ParentFont = False
    TabIndex = 0
    TabOrder = 2
    TabStyle = tsRoundCorners
    FixedDimension = 30
    object tshCaptura: TRzTabSheet
      ImageIndex = 14
      Caption = '&Captura de Tablas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object F1: TF1Book
        Left = 0
        Top = 0
        Width = 786
        Height = 221
        Align = alClient
        TabOrder = 0
        OnKeyDown = F1KeyDown
        OnStartEdit = F1StartEdit
        ExplicitWidth = 790
        ExplicitHeight = 69
        ControlData = {
          000001003C510000D716000060000000010001074631426F6F6B310101010101
          0101010101010101010101006905000000000900050500EE0400000000EF1400
          0000FF0000FF3F0400FFFFFFFFFFFFFFFFF3FF3D12000000000E2EF30C380000
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
    end
    object TabSheet2: TRzTabSheet
      ImageIndex = 69
      Caption = 'Impresion de Tablas'
      object F2: TF1Book
        Left = 0
        Top = 0
        Width = 786
        Height = 221
        Align = alClient
        TabOrder = 0
        OnKeyDown = F1KeyDown
        OnStartEdit = F1StartEdit
        ExplicitWidth = 790
        ExplicitHeight = 69
        ControlData = {
          000001003C510000D716000060000000010001074631426F6F6B310101010101
          0101010101010101010101006905000000000900050500EE0400000000EF1400
          0000FF0000FF3F0400FFFFFFFFFFFFFFFFF3FF3D12000000000E2EF30C380000
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
    StoredValues = <>
    Left = 524
    Top = 50
  end
  object isqlIns: TIB_DSQL
    DatabaseName = 'MBA'
    IB_Connection = DM1.cnMBA
    Left = 616
  end
  object isqlDel: TIB_DSQL
    DatabaseName = 'MBA'
    IB_Connection = DM1.cnMBA
    Left = 648
  end
  object icu1: TIB_Cursor
    DatabaseName = 'MBA'
    Left = 576
  end
end
