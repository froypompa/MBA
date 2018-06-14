object frmConteoFisico: TfrmConteoFisico
  Left = 330
  Top = 217
  Caption = 'Forma para captura de Conteo Fisico'
  ClientHeight = 455
  ClientWidth = 678
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
    Width = 678
    Height = 26
    object tlbMain: TTBXToolbar
      Left = 0
      Top = 0
      DockPos = 0
      FullSize = True
      TabOrder = 0
      object tbtCreate: TTBXItem
        Hint = 'Limpiar Listado'
        ImageIndex = 6
        Images = MainForm.ImageList1
        OnClick = tbtCreateClick
      end
      object tbtAbrir: TTBXItem
        Hint = 'Abrir archivo'
        ImageIndex = 7
        Images = MainForm.ImageList1
        OnClick = tbtAbrirClick
        Left = 23
      end
      object tbtGrabar: TTBXItem
        Hint = 'Grabar listado'
        ImageIndex = 8
        Images = MainForm.ImageList1
        OnClick = tbtGrabarClick
        Left = 46
      end
      object ToolbarSep973: TTBXSeparatorItem
        Left = 226
      end
      object tbtPrever: TTBXItem
        Hint = 'Prever impresi'#243'n'
        ImageIndex = 9
        Images = MainForm.ImageList1
        OnClick = tbtPreverClick
        Left = 75
      end
      object tbtImprimir: TTBXItem
        Hint = 'Imprimir listado'
        ImageIndex = 14
        Images = MainForm.ImageList1
        OnClick = tbtImprimirClick
        Left = 104
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object tbtVer: TTBXItem
        AutoCheck = True
        Checked = True
        GroupIndex = 1
        Hint = 'Ver/Esconder Area de captura'
        ImageIndex = 81
        Images = MainForm.ImageList1
        OnClick = tbtVerClick
        Left = 133
      end
      object ToolbarSep977: TTBXSeparatorItem
        Left = 127
      end
      object tbtLeer: TTBXItem
        Caption = 'Listar'
        DisplayMode = nbdmImageAndText
        Hint = 'Leer datos de articulos'
        ImageIndex = 131
        Images = MainForm.ImageList1
        OnClick = tbtLeerClick
        Left = 162
      end
      object tbtMarcarUpd: TTBXItem
        Caption = 'Marcar '
        DisplayMode = nbdmImageAndText
        Hint = 'Marcar articulos para actualizarlos'
        ImageIndex = 150
        Images = MainForm.ImageList1
        OnClick = tbtMarcarUpdClick
        Left = 232
      end
      object tbtActualizar: TTBXItem
        Caption = 'Grabar'
        DisplayMode = nbdmImageAndText
        Hint = 'Actualizar articulos en la base de datos'
        ImageIndex = 149
        Images = MainForm.ImageList1
        OnClick = tbtActualizarClick
        Left = 298
      end
      object ToolbarSep972: TTBXSeparatorItem
        Left = 523
      end
      object tbtEliminar: TTBXItem
        Caption = 'Eliminar'
        DisplayMode = nbdmImageAndText
        Enabled = False
        Hint = 'Actualizar articulos en la base de datos'
        ImageIndex = 5
        Images = MainForm.ImageList1
        OnClick = tbtEliminarClick
        Left = 373
      end
      object tbtFonts: TTBXItem
        Caption = 'Fonts'
        DisplayMode = nbdmImageAndText
        Hint = 'Actualizar articulos en la base de datos'
        ImageIndex = 153
        Images = MainForm.ImageList1
        OnClick = tbtFontsClick
        Left = 448
      end
      object ToolbarSep975: TTBXSeparatorItem
        Left = 98
      end
      object itmPL: TTBXItem
        Caption = '&Es Precio de Lista'
        DisplayMode = nbdmImageAndText
        ImageIndex = 21
        Images = MainForm.ImageList1
        OnClick = itmPLClick
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object tbtSalir: TTBXItem
        Hint = 'Cerrar Ventana'
        ImageIndex = 99
        Images = MainForm.ImageList1
        OnClick = tbtSalirClick
        Left = 529
      end
    end
  end
  object pgcSincro: TPageControl
    Left = 0
    Top = 26
    Width = 678
    Height = 151
    ActivePage = tshAct
    Align = alTop
    Images = MainForm.ImageList1
    TabOrder = 1
    object tshAct: TTabSheet
      Caption = '&Criterios de Selecci'#243'n'
      ImageIndex = 171
      object pgcFamPro: TPageControl
        Left = 0
        Top = 0
        Width = 670
        Height = 122
        ActivePage = tshFamilia
        Align = alClient
        Images = MainForm.ImageList1
        TabOrder = 0
        object tshFamilia: TTabSheet
          Caption = '&3 Familia'
          ImageIndex = 177
          inline fraFamilia1: TfraFamilia
            Left = 0
            Top = 0
            Width = 662
            Height = 42
            Align = alTop
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 662
            inherited Label9: TLabel
              Caption = 'Cod. Inicial'
            end
            inherited xceDescripFam: TComboEdit
              Width = 560
              ExplicitWidth = 560
            end
          end
          inline fraFamilia2: TfraFamilia
            Left = 0
            Top = 42
            Width = 662
            Height = 42
            Align = alTop
            TabOrder = 1
            TabStop = True
            ExplicitTop = 42
            ExplicitWidth = 662
            inherited Label9: TLabel
              Caption = 'Cod. Final'
            end
            inherited xceDescripFam: TComboEdit
              Width = 560
              ExplicitWidth = 560
            end
          end
        end
        object tshProducto: TTabSheet
          Caption = '&4 Producto'
          ImageIndex = 175
          inline fraProducto1: TfraProducto
            Left = 0
            Top = 0
            Width = 662
            Height = 42
            Align = alTop
            TabOrder = 0
            TabStop = True
            ExplicitWidth = 662
            inherited Label9: TLabel
              Top = -1
              Height = 15
              Caption = 'C'#243'digo Inicial'
              ExplicitTop = -1
              ExplicitHeight = 15
            end
            inherited Label4: TLabel
              Left = 121
              Height = 14
              ExplicitLeft = 121
              ExplicitHeight = 14
            end
            inherited xceCodProdSer: TComboEdit
              Width = 115
              Height = 24
              OnChange = fraProducto1xceCodProdSerChange
              ExplicitWidth = 115
              ExplicitHeight = 24
            end
            inherited xceDescripPro: TComboEdit
              Left = 121
              Width = 534
              Height = 24
              ExplicitLeft = 121
              ExplicitWidth = 534
              ExplicitHeight = 24
            end
          end
          inline fraProducto2: TfraProducto
            Left = 0
            Top = 42
            Width = 662
            Height = 42
            Align = alTop
            TabOrder = 1
            TabStop = True
            ExplicitTop = 42
            ExplicitWidth = 662
            inherited Label9: TLabel
              Top = -1
              Height = 15
              Caption = 'C'#243'digo Final'
              ExplicitTop = -1
              ExplicitHeight = 15
            end
            inherited Label4: TLabel
              Left = 121
              Height = 14
              ExplicitLeft = 121
              ExplicitHeight = 14
            end
            inherited xceCodProdSer: TComboEdit
              Width = 115
              Height = 24
              ExplicitWidth = 115
              ExplicitHeight = 24
            end
            inherited xceDescripPro: TComboEdit
              Left = 121
              Width = 534
              Height = 24
              ExplicitLeft = 121
              ExplicitWidth = 534
              ExplicitHeight = 24
            end
          end
        end
      end
    end
    object tshList: TTabSheet
      Caption = '&Opciones'
      ImageIndex = 176
      object RxLabel1: TRxLabel
        Left = 581
        Top = 2
        Width = 92
        Height = 13
        Caption = 'Tipo Cambio (Lista)'
      end
      object GroupBox1: TGroupBox
        Left = 201
        Top = 0
        Width = 201
        Height = 122
        Align = alLeft
        Caption = '  &Ordenar Listado  '
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 18
          Width = 185
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Ordenar por:'
          Color = clBtnShadow
          ParentColor = False
        end
        object xsbSort: TRxSpeedButton
          Left = 8
          Top = 72
          Width = 185
          Height = 40
          Caption = '&Ordenar Listado'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAA111111DADAD0DADD11ADA1ADAD707DAAD11ADADADA000ADDAD11ADADA70
            007AADAD11ADAD00000DD1DAD11ADADA0ADAA111111DADAD0DADDADADADADADA
            0ADAA444A444ADAD0DADD74ADA47DADA0ADAAD44444DADAD0DADDA74D47ADADA
            0ADAADA444ADADAD0DADDAD747DADADA0ADAADAD4DADADAD0DAD}
          Layout = blGlyphLeft
          Spacing = 6
          OnClick = xsbSortClick
        end
        object cboSort: TComboBox
          Left = 8
          Top = 32
          Width = 185
          Height = 24
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          Items.Strings = (
            'Codigo (General)'
            'Familia y Codigo'
            'Familia y Descripci'#243'n')
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 201
        Height = 122
        Align = alLeft
        Caption = '  Copiar Datos hacia abajo  '
        TabOrder = 1
        object RxSpeedButton1: TRxSpeedButton
          Left = 8
          Top = 72
          Width = 185
          Height = 41
          Caption = '&Copiar hacia abajo'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADA00000000000DADAD0FFFFFFFFF0AD44400000000000DA44DDADADADADADA
            D4D4ADADADADADADADA4000A0000000ADAD40F0DADADADADA44D000A0000000A
            DADAADADADADADADA444DADADADADADAD44A00000000000DA4A40FFFFFFF080A
            DAD40FFFFFFF080DADA40FFFFFFF080AD44A00000000000DADAD}
          Layout = blGlyphLeft
          Spacing = 5
          OnClick = xsbCopiarClick
        end
        object rbtTodo: TRadioButton
          Left = 8
          Top = 14
          Width = 191
          Height = 17
          Caption = 'Del Primer rengl'#243'n hacia abajo'
          TabOrder = 0
        end
        object rbtRenglones: TRadioButton
          Left = 9
          Top = 31
          Width = 191
          Height = 17
          Caption = 'En renglones seleccionados'
          TabOrder = 1
        end
        object rbtRango: TRadioButton
          Left = 9
          Top = 48
          Width = 191
          Height = 17
          Caption = 'Solamente dentro de la seleccion'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
      end
      object GroupBox3: TGroupBox
        Left = 402
        Top = 0
        Width = 178
        Height = 122
        Align = alLeft
        Caption = '  &Cambios a Precios de Lista'
        TabOrder = 2
        object xsbPrecios: TRxSpeedButton
          Left = 8
          Top = 72
          Width = 161
          Height = 40
          Caption = '&Afectar Precios'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADADADADAD444444444444DADA477777777774ADAD488888888084
            DADA480080080004ADAD488888888000DADA4800800800B70DAD4888888880B8
            0ADA44444444440B70AD4F44F44F440B80DA444444444440B70DDADADADADAD0
            B70AADADADADADAD0050DADADADADADA0550ADADADADADADA00D}
          Layout = blGlyphLeft
          Spacing = 6
          OnClick = xsbPreciosClick
        end
        object Label2: TLabel
          Left = 8
          Top = 51
          Width = 109
          Height = 13
          Caption = 'Porcentaje Descuento:'
        end
        object xseDescto: TRxSpinEdit
          Left = 120
          Top = 48
          Width = 49
          Height = 21
          TabOrder = 0
        end
        object rbtPRTodo: TRadioButton
          Left = 6
          Top = 14
          Width = 158
          Height = 17
          Caption = '&Todo'
          TabOrder = 1
        end
        object rbtPRSel: TRadioButton
          Left = 6
          Top = 31
          Width = 158
          Height = 17
          Caption = '&Renglones seleccionados'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
      end
      object xceTipoCambio: TCurrencyEdit
        Left = 581
        Top = 15
        Width = 91
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
    end
  end
  object F1: TF1Book
    Left = 0
    Top = 177
    Width = 678
    Height = 278
    Align = alClient
    TabOrder = 2
    OnKeyDown = F1KeyDown
    OnStartEdit = F1StartEdit
    OnEndEdit = F1EndEdit
    ControlData = {
      0000010013460000BB1C000060000000010001074631426F6F6B310101010101
      0101010101010101010101006905000000000900050500EE0400000000EF1400
      0000FF0000FF3F0400FFFFFFFFFFFFFFFFF3FF3D1200005F0ABA274A10380000
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
      OnClick = Preferencias1Click
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
end
