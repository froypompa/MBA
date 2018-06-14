object frmDocAbo: TfrmDocAbo
  Left = 191
  Top = 102
  Caption = 'Documentos de Abono'
  ClientHeight = 512
  ClientWidth = 782
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dckSincro: TTBXDock
    Left = 0
    Top = 0
    Width = 782
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
        Options = [tboImageAboveCaption]
        OnClick = tbtSalirClick
        Left = 478
      end
      object ToolbarSep977: TTBXSeparatorItem
        Left = 443
      end
      object tbrLimpiar: TTBXItem
        Caption = '&Limpiar'
        DisplayMode = nbdmImageAndText
        Hint = 'Grabar listado'
        ImageIndex = 11
        Options = [tboImageAboveCaption]
        OnClick = tbrLimpiarClick
      end
      object tbtGrabar: TTBXItem
        Caption = 'Grabar (F6]'
        DisplayMode = nbdmImageAndText
        Hint = 'Grabar Documento (F6)'
        ImageIndex = 24
        Options = [tboImageAboveCaption]
        OnClick = tbtGrabarClick
        Left = 68
      end
      object tbtImprimir: TTBXItem
        Caption = '&Imprimir (F7)'
        DisplayMode = nbdmImageAndText
        Hint = 'Iprimir y Grabar Factura (F7)'
        ImageIndex = 13
        Options = [tboImageAboveCaption]
        OnClick = tbtImprimirClick
        Left = 181
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object tbtImprimirXLS: TTBXItem
        Caption = '&Imprimir XLS'
        DisplayMode = nbdmImageAndText
        Hint = 'Iprimir y Grabar Factura (F7)'
        ImageIndex = 80
        Options = [tboImageAboveCaption]
        OnClick = tbtImprimirXLSClick
        Left = 181
      end
      object TBXSeparatorItem3: TTBXSeparatorItem
      end
      object tbtAsignar: TTBXItem
        Caption = '&Asignar [F5]'
        DisplayMode = nbdmImageAndText
        Hint = 'Imprimir listado'
        ImageIndex = 8
        Options = [tboImageAboveCaption]
        OnClick = tbtAsignarClick
        Left = 272
      end
      object tbtCancelar: TTBXItem
        Caption = '&Cancelar'
        DisplayMode = nbdmImageAndText
        Hint = 'Cancelar Factura'
        ImageIndex = 9
        Options = [tboImageAboveCaption]
        OnClick = tbtCancelarClick
        Left = 368
      end
      object ToolbarSep972: TTBXSeparatorItem
        Left = 472
      end
      object tbtVer: TTBXItem
        Caption = 'Mostrar'
        DisplayMode = nbdmImageAndText
        GroupIndex = 1
        Hint = 'Ver/Esconder Area de captura'
        ImageIndex = 18
        Options = [tboImageAboveCaption]
        OnClick = tbtVerClick
        Left = 449
      end
      object TBXSeparatorItem4: TTBXSeparatorItem
      end
      object tbtNE: TTBXItem
        Caption = '&Generar CFDI'
        ImageIndex = 87
        Options = [tboImageAboveCaption]
        OnClick = tbtNEClick
      end
      object tbtChecarXML: TTBXItem
        Caption = '&Checar XML'
        ImageIndex = 86
        Options = [tboImageAboveCaption]
        OnClick = tbtChecarXMLClick
      end
      object tbtVerPDF: TTBXItem
        Caption = '&Ver PDF'
        ImageIndex = 81
        Options = [tboImageAboveCaption]
        OnClick = tbtVerPDFClick
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object tbtVerCFDI: TTBXItem
        Caption = 'V&er CFDI'
        ImageIndex = 72
        Options = [tboImageAboveCaption]
        OnClick = tbtVerCFDIClick
      end
    end
  end
  object pgcMain: TPageControl
    Left = 0
    Top = 47
    Width = 782
    Height = 159
    ActivePage = tshDatosRecibo
    Align = alTop
    TabOrder = 1
    OnChange = pgcMainChange
    object tshDatosRecibo: TTabSheet
      Caption = '&1 Datos del Recibo'
      object pnlDatos1: TPanel
        Left = 0
        Top = 0
        Width = 774
        Height = 131
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object Label16: TLabel
          Left = 9
          Top = 46
          Width = 78
          Height = 15
          AutoSize = False
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 105
          Top = 46
          Width = 294
          Height = 16
          AutoSize = False
          Caption = 'Nombre Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 9
          Top = 91
          Width = 88
          Height = 15
          AutoSize = False
          Caption = 'Monto Abono:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 9
          Top = 5
          Width = 78
          Height = 15
          AutoSize = False
          Caption = 'Tipo Movto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 105
          Top = 5
          Width = 294
          Height = 16
          AutoSize = False
          Caption = 'Nombre Movimiento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 178
          Top = 91
          Width = 127
          Height = 15
          AutoSize = False
          Caption = 'Monto Devoluciones:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 347
          Top = 91
          Width = 126
          Height = 15
          AutoSize = False
          Caption = 'Monto Total Abonos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 154
          Top = 101
          Width = 16
          Height = 29
          Alignment = taCenter
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 323
          Top = 101
          Width = 16
          Height = 29
          Alignment = taCenter
          Caption = '='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pnlFolio: TPanel
          Left = 620
          Top = 2
          Width = 152
          Height = 127
          Align = alRight
          BevelInner = bvLowered
          TabOrder = 7
          object RxLabel1: TRxLabel
            Left = 2
            Top = 2
            Width = 148
            Height = 20
            Alignment = taCenter
            AutoSize = False
            Caption = 'FOLIO'
            Color = clAppWorkSpace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object RxLabel2: TRxLabel
            Left = 2
            Top = 52
            Width = 146
            Height = 20
            Alignment = taCenter
            AutoSize = False
            Caption = 'Fecha'
            Color = clAppWorkSpace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object xlbCancelado: TRxLabel
            Left = 6
            Top = 99
            Width = 135
            Height = 20
            Caption = '* CANCELADO *'
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Visible = False
          end
          object xceFolio: TComboEdit
            Left = 1
            Top = 22
            Width = 149
            Height = 28
            Alignment = taCenter
            Color = clMoneyGreen
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000CE0E0000C40E00001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7777777777777777777700000777770000070F000777770F00070F000777770F
              0007000000070000000700F000000F00000700F000700F00000700F000700F00
              00077000000000000077770F00070F0007777700000700000777777000777000
              77777770F07770F0777777700077700077777777777777777777}
            NumGlyphs = 1
            ParentFont = False
            TabOrder = 0
            Text = '0001'
            OnButtonClick = xceFolioButtonClick
            OnKeyDown = xceFolioKeyDown
          end
          object dteFecha: TDateEdit
            Left = 1
            Top = 71
            Width = 146
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 1
          end
        end
        object xcrMonto: TCurrencyEdit
          Left = 8
          Top = 104
          Width = 137
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = clInfoBk
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnChange = xcrMontoChange
          OnKeyDown = xcrMontoKeyDown
        end
        object xceCodCteProv: TComboEdit
          Left = 7
          Top = 62
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
          OnButtonClick = xceCodCteProvButtonClick
          OnKeyDown = xceCodCteProvKeyDown
        end
        object xceNombreCte: TComboEdit
          Left = 104
          Top = 61
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
        end
        object xceNumTipoDoc: TComboEdit
          Left = 7
          Top = 21
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
          OnButtonClick = xceNumTipoDocButtonClick
          OnKeyDown = xceNumTipoDocKeyDown
        end
        object xceNombreTipo: TComboEdit
          Left = 104
          Top = 20
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
          TabOrder = 1
          OnButtonClick = xceNombreCteButtonClick
        end
        object xcrTotalDev: TCurrencyEdit
          Left = 177
          Top = 104
          Width = 137
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = 10930928
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          OnChange = xcrTotalDevChange
          OnKeyDown = xcrMontoKeyDown
        end
        object xcrTotalAbo: TCurrencyEdit
          Left = 346
          Top = 104
          Width = 137
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = clScrollBar
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          OnChange = xcrTotalAboChange
        end
      end
    end
    object tshAdicionales: TTabSheet
      Caption = '&2 Adicionales'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 265
        Height = 131
        Align = alLeft
        Alignment = taRightJustify
        BevelInner = bvLowered
        TabOrder = 0
        object Label6: TLabel
          Left = 8
          Top = 6
          Width = 59
          Height = 13
          AutoSize = False
          Caption = '&Moneda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 8
          Top = 36
          Width = 119
          Height = 13
          AutoSize = False
          Caption = 'Tipo de Cambio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 11
          Top = 63
          Width = 119
          Height = 13
          AutoSize = False
          Caption = 'Porcentaje de IVA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cboMoneda: TComboBox
          Left = 72
          Top = 4
          Width = 188
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 0
          Text = '1  |Pesos M.N.'
          OnClick = cboMonedaClick
        end
        object xcrTipoCambio: TCurrencyEdit
          Left = 133
          Top = 31
          Width = 126
          Height = 23
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object xcrPIVA: TCurrencyEdit
          Left = 133
          Top = 58
          Width = 126
          Height = 23
          Margins.Left = 1
          Margins.Top = 1
          TabStop = False
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnExit = xcrPIVAExit
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = '&3 Nota Cr Electr'#243'nica'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 131
        Align = alLeft
        BorderOuter = fsGroove
        TabOrder = 0
      end
      object mmzNC: TRzMemo
        Left = 185
        Top = 0
        Width = 589
        Height = 131
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Datos Doc Electronico'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object RzPanel2: TRzPanel
        Left = 0
        Top = 0
        Width = 369
        Height = 131
        Align = alLeft
        BorderOuter = fsGroove
        TabOrder = 0
        object RzLabel1: TRzLabel
          Left = 2
          Top = 2
          Width = 270
          Height = 13
          Align = alTop
          Caption = 'Esta factura esta ligada a la siguiente factura electr'#243'nica:'
          Color = clActiveBorder
          ParentColor = False
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
          Height = 21
          TabOrder = 0
        end
        object edzFolio: TRzEdit
          Left = 52
          Top = 37
          Width = 73
          Height = 21
          TabOrder = 1
        end
        object edzFecha: TRzEdit
          Left = 52
          Top = 58
          Width = 149
          Height = 21
          TabOrder = 2
        end
        object edzTotal: TRzEdit
          Left = 52
          Top = 79
          Width = 149
          Height = 21
          TabOrder = 3
        end
        object edzemRFC: TRzEdit
          Left = 207
          Top = 37
          Width = 149
          Height = 21
          TabOrder = 4
        end
        object edzreRFC: TRzEdit
          Left = 206
          Top = 79
          Width = 149
          Height = 21
          TabOrder = 5
        end
        object edzUUID: TRzEdit
          Left = 52
          Top = 100
          Width = 301
          Height = 21
          TabOrder = 6
        end
      end
    end
  end
  object pgcDoc: TPageControl
    Left = 0
    Top = 206
    Width = 782
    Height = 285
    ActivePage = tshDetalle
    Align = alClient
    TabOrder = 2
    object tshDetalle: TTabSheet
      Caption = '&3 Detalle de Documentos'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 774
        Height = 198
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object F1: TF1Book
          Left = 2
          Top = 2
          Width = 770
          Height = 194
          Align = alClient
          TabOrder = 0
          OnKeyDown = F1KeyDown
          OnDblClick = F1DblClick
          OnStartEdit = F1StartEdit
          OnEndRecalc = F1EndRecalc
          ExplicitWidth = 778
          ExplicitHeight = 213
          ControlData = {
            00000100954F00000D14000060000000010001074631426F6F6B310101010101
            010101010101010101010100690F000000000900050500EE0400000000EF1400
            0000FF0000FF3F0000FFFFFFFFFFFFFFFFF3FF3D121E001E001E2D5E0B380000
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
            24232C2323302E30305C291E31A4002E5F2D2224225C202A20232C2323303B5C
            2D2224225C202A20232C2323303B5F2D2224225C202A20222D223B5F2D401E1C
            A500192A20232C2323303B2A205C2D232C2323303B2A20222D223B401E39A600
            365F2D2224225C202A20232C2323302E30303B5C2D2224225C202A20232C2323
            302E30303B5F2D2224225C202A20222D223F3F3B5F2D401E24A700212A20232C
            2323302E30303B2A205C2D232C2323302E30303B2A20222D223F3F3B401E18A8
            00155C24232C2323305F293B5C285C24232C2323305C291E1DA9001A5C24232C
            2323305F293B5B5265645D5C285C24232C2323305C291E1EAA001B5C24232C23
            23302E30305F293B5C285C24232C2323302E30305C291E23AB00205C24232C23
            23302E30305F293B5B5265645D5C285C24232C2323302E30305C291E0DAC000A
            64642F6D6D2F797979791E0EAD000B64642F6D6D6D2F797979791E0BAE000823
            23302E303030301E1FAF001C2224225C20232C2323303B5B5265645D5C2D2224
            225C20232C2323301E20B0001D2224225C20232C2323302E30303B5C2D222422
            5C20232C2323302E30301E25B100222224225C20232C2323302E30303B5B5265
            645D5C2D2224225C20232C2323302E3030ED050000000000EC03000000E01400
            000000F5FF2000C02000000000000000000000E01401000000F5FF20C4C02000
            000000000000000000E01401000000F5FF20C4C02000000000000000000000E0
            1402000000F5FF20C4C02000000000000000000000E01402000000F5FF20C4C0
            2000000000000000000000E01400000000F5FF20C4C020000000000000000000
            00E01400000000F5FF20C4C02000000000000000000000E01400000000F5FF20
            C4C02000000000000000000000E01400000000F5FF20C4C02000000000000000
            000000E01400000000F5FF20C4C02000000000000000000000E01400000000F5
            FF20C4C02000000000000000000000E01400000000F5FF20C4C0200000000000
            0000000000E01400000000F5FF20C4C02000000000000000000000E014000000
            00F5FF20C4C02000000000000000000000E01400000000F5FF20C4C020000000
            00000000000000E0140000000001002000C02000000000000000000000E01405
            00B100F5FF20C8C02000000000000000000000E0140500AF00F5FF20C8C02000
            000000000000000000E01405000C00F5FF20C8C02000000000000000000000E0
            1405000A00F5FF20C8C02000000000000000000000E01405000D00F5FF20C8C0
            2000000000000000000000E0140100000001002118C020000000000000000000
            00E0140100000001002138C02040810000000000000000E01400000400010020
            04C02000000000000000000000E0140000B00001002314C02000000000000000
            000000E0140100B0000100227C962001003800400000000000E0140100B00001
            00227C96200100F801402000000000E0140100B0000100227C96204181380040
            0000000000E0140100B0000100227C96204181F801402000000000E0140100B0
            000100200CC02000000000000000000000E0140100AD000100200CC020000000
            00000000000000E0140100AD000100227C962001003800400000000000E01401
            00AD000100227C962041813800400000000000E0140100000001002258962001
            000000000000000000E0140100000001002278962001003800400000000000E0
            14010004000100227C962001003800400000000000E014010000000100227896
            2041810000000000000000E01401000000010022789620418138004000000000
            00E014010004000100227C962041813800400000000000E0140100B000010023
            5CC02000000000000000000000E0140100000001002258AA2001000000000000
            000000E0140100000001002278AA2001003800400000000000E0140100AD0001
            00227CAA2001003800400000000000E014010004000100227CAA200100380040
            0000000000E0140100000001002278AA2041810000000000000000E014010000
            0001002278AA2041813800400000000000E0140100AD000100227CAA20418138
            00400000000000E014010004000100227CAA2041813800400000000000E01404
            000000F0FF1248C02000000000000000000000E0140000AD0001002004C02000
            000000000000000000E0140100000001002158962001000000000000000000E0
            14010000000100217896204181000000000000000092E2380000000000FFFFFF
            00FF00000000FF00000000FF00FFFF0000FF00FF0000FFFF0080000000008000
            0000008000808000008000800000808000C0C0C000808080008080FF00802060
            00FFFFC000A0E0E00060008000FF8080000080C000C0C0FF0000008000FF00FF
            00FFFF000000FFFF008000800080000000008080000000FF0000CCFF0069FFFF
            00CCFFCC00FFFF9900A6CAF000CC9CCC00CC99FF00E3E3E3003366FF0033CCCC
            003399330099993300996633009966660066669900969696003333CC00336666
            00003300003333000066330000993366003333990042424200850D00000A5065
            6E6469656E746573850C00000941706C696361646F730A09000510000D01000C
            640011010010FCA9F1D24D62503F5F01002A00002B0100250000FF008C010034
            0081C10414030226411508075061676520265083000084000026000000000000
            E83F27000000000000E83F28000000000000F03F29000000000000F03FA12201
            00640001000100010004002C012C01000000000000E03F000000000000E03F01
            00000000F40100000B000000F7189100FFCCFFFFFF00C0C0C000FF00FF3F0000
            000000000200F2100000000000000000000000000300FFFFF6300030003000FF
            0040067D0000000000050F00000000007D01000100DB060F00000000007D0200
            0200B60A0F00000000007D03000300250D1E00000000007D04000400920C1700
            000000007D05000500920C1800000000007D06000600920C2700000000007D07
            0007006E0E1800000000007D0800FF0024090F000000000008000000000900FF
            00000000008001150008010000000B00FF000000000080011500080200070008
            00FF000000000000010F0008030007000800FF000000000000010F0008040007
            000800FF000000000000010F0008050007000800FF000000000000010F000831
            0000000000FF000000000000010F0008F30106000800FF800000000000010F00
            040C00000000210004005469706F040D00000100210005005365726965040E00
            000200220006004E756D65726F040D000003001F0005004665636861040D0000
            0400230005004D6F6E746F040D00000500190005004D6F6E746F040D00000600
            190005004D6F6E746F0409000007001A0001002001000008003200040B010000
            0024000300446F63040B0100010024000300446F63040B010002002500030044
            6F63040D010003002000050056656E632E04110100040026000900446F63756D
            656E746F0411010005001B00090050656E6469656E74650410010006001B0008
            00417369676E61646F040D010007001C00050053616C646F040E010008003300
            06004D6F6E656461BE0A01000900160016000A00061F02000700180000000000
            0000000000000000000009004402C0054402C006040409030007001800010020
            040904000700180001002004090500070018000100200621F30106001D000000
            0000000000000000000000000B002502C0F2C10606191000000621F30107001D
            0000000000000000000000000000000B002502C0F2C10707191000001D0F0300
            000000000001000000000000003E0ABE070000000000000000410A0000020002
            0000000200A0640064009924090A09000510000D01000C640011010010FCA9F1
            D24D62503F5F01002A00002B0000250000FF008C0100340081C1041400150083
            000084000026000000000000E83F27000000000000E83F28000000000000F03F
            29000000000000F03FA1220100640001000100010004002C012C010000000000
            000000000000000000000001000000000200000007000000F7189200FFCCFFFF
            FF00C0C0C000FF00FF3F0000000000000000F210000000000000000000000000
            0300FFFFF6300030003000FF0040067D0000000000050F00000000007D010001
            00DB050F00000000007D02000200B70B0F00000000007D030003006E0E310000
            0000007D04000400000E1700000000007D0500050092103100000000007D0600
            06006E0F17000000000008000000000700FF000000000000010F000801000000
            0700FF000000000000010F0008020000000000FF000000000000010F00040C00
            000000280004005469706F040D00000100280005005365726965040E00000200
            290006004E756D65726F040D000003002A0005004665636861040D000004002B
            0005004D6F6E746F040D000005002A0005004665636861040D000006002B0005
            004D6F6E746F040B010000002C000300446F63040B010001002C000300446F63
            040D010002002D000500446F63746F040D010003002E000500446F63746F040D
            010004002F000500446F63746F0412010005002E000A0041706C6963616369F3
            6E0410010006002F00080041706C696361646F1D0F0306000600000001000600
            060006063E0AB6000000000000000000A0640064009926090A0000000452E30B
            918FCE119DE300AA004BB8516C7400006C000000010000005800000000000000
            00000000FFFFFFFFFFFFFFFF00000000000000006C520000B83D000020454D46
            000001006C000000020000000100000000000000000000000000000020030000
            58020000D30000009E0000000E00000014000000000000001000000014000000
            01}
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 198
        Width = 774
        Height = 59
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 1
        object RxLabel3: TRxLabel
          Left = 289
          Top = 7
          Width = 185
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Saldo Total del Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RxLabel4: TRxLabel
          Left = 291
          Top = 33
          Width = 185
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Monto Total Aplicado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object xcrTotalSaldo: TCurrencyEdit
          Left = 489
          Top = 3
          Width = 185
          Height = 25
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object xcrAsignado: TCurrencyEdit
          Left = 489
          Top = 29
          Width = 185
          Height = 25
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnChange = xcrAsignadoChange
        end
      end
    end
    object tshDatosPago: TTabSheet
      Caption = '&4 Datos Adicionales de Pago'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object RxLabel7: TRxLabel
        Left = 472
        Top = 166
        Width = 105
        Height = 22
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'SubTotal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel8: TRxLabel
        Left = 472
        Top = 190
        Width = 105
        Height = 22
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'IVA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RxLabel9: TRxLabel
        Left = 472
        Top = 214
        Width = 105
        Height = 22
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object grpCheque: TGroupBox
        Left = 0
        Top = 0
        Width = 774
        Height = 65
        Align = alTop
        Caption = '  &Cheque  / Dep'#243'sito Referenciado  '
        TabOrder = 0
        object Label9: TLabel
          Left = 6
          Top = 23
          Width = 109
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Num. Cheque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 5
          Top = 38
          Width = 109
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'o Referencia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 343
          Top = 12
          Width = 145
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Caption = 'Fecha Dep'#243'sito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 511
          Top = 12
          Width = 500
          Height = 18
          AutoSize = False
          Caption = 'Concepto General de la Nota de Credito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtNumCheque: TEdit
          Left = 120
          Top = 27
          Width = 193
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
        end
        object xdeFecDepo: TDateEdit
          Left = 345
          Top = 29
          Width = 146
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
        end
        object cboConcepto: TComboBox
          Left = 511
          Top = 28
          Width = 500
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 2
          OnSelect = cboConceptoSelect
          Items.Strings = (
            'NCR01 | Devoluci'#243'n y/o faltantes de Mercanc'#237'a'
            'NCR02 | Descuentos generales aplicados a clientes'
            'NCR03 | Descuentos por concepto de Fletes'
            'Pagos o Abonos a Facturas:')
        end
      end
      object pnlConcepto: TPanel
        Left = 0
        Top = 65
        Width = 774
        Height = 96
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 1
        object RxLabel6: TRxLabel
          Left = 2
          Top = 2
          Width = 770
          Height = 23
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Concepto de la Nota de Cr'#233'dito'
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 778
        end
        object mmoConcepto: TMemo
          Left = 2
          Top = 25
          Width = 770
          Height = 69
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          MaxLength = 200
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object mmoDir: TMemo
        Left = 0
        Top = 168
        Width = 49
        Height = 89
        TabOrder = 2
        Visible = False
        WordWrap = False
      end
      object xcrSubTotal: TCurrencyEdit
        Left = 575
        Top = 166
        Width = 103
        Height = 25
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object xcrIVA: TCurrencyEdit
        Left = 575
        Top = 190
        Width = 103
        Height = 25
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object xcrTotal: TCurrencyEdit
        Left = 575
        Top = 214
        Width = 103
        Height = 25
        Margins.Left = 1
        Margins.Top = 1
        TabStop = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnChange = xcrTotalChange
      end
    end
    object tshNotaDev: TTabSheet
      Caption = '&5 Notas de Devoluciones'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grpNotaDev: TGroupBox
        Left = 0
        Top = 0
        Width = 774
        Height = 257
        Align = alClient
        Caption = '  &Notas de Devoluciones del Cliente   '
        TabOrder = 0
        object Panel4: TPanel
          Left = 2
          Top = 15
          Width = 495
          Height = 240
          Align = alLeft
          BevelInner = bvLowered
          TabOrder = 0
          object Dock972: TTBXDock
            Left = 2
            Top = 2
            Width = 491
            Height = 26
            object Toolbar972: TTBXToolbar
              Left = 0
              Top = 0
              Caption = 'Toolbar971'
              DockPos = 0
              TabOrder = 0
              object tbtNinguno: TTBXItem
                Caption = '&Ninguno'
                ImageIndex = 8
                Images = ImageList2
                OnClick = tbtNingunoClick
                Left = 86
              end
              object tbtInvertir: TTBXItem
                Caption = '&Invertir'
                ImageIndex = 0
                Images = ImageList2
                OnClick = tbtInvertirClick
                Left = 258
              end
              object tbtSel: TTBXItem
                Caption = '&Selecci'#243'n'
                ImageIndex = 4
                Images = ImageList2
                OnClick = tbtSelClick
                Left = 172
              end
              object tbtTodos: TTBXItem
                Caption = '&Todos'
                ImageIndex = 5
                Images = ImageList2
                OnClick = tbtTodosClick
              end
              object tbtRefrescarDet: TTBXItem
                Caption = 'Refrescar &Detalle'
                ImageIndex = 9
                Images = ImageList2
                OnClick = tbtRefrescarDetClick
                Left = 344
              end
            end
          end
          object F1Det: TF1Book
            Left = 2
            Top = 28
            Width = 491
            Height = 210
            Align = alClient
            TabOrder = 1
            OnKeyPress = F1DetKeyPress
            OnDblClick = F1DetDblClick
            OnStartEdit = F1DetStartEdit
            ExplicitHeight = 229
            ControlData = {
              00000100BF320000B41500006000000001000100010101010101010101010101
              0101010100F106000000000900050500EE0400000000EF14000000FF0000FF3F
              0000FFFFFFFFFFFFFFFFF1FF3D121E00A401C51C4E0C18000000000001005802
              311AC8000000FF7F90010000000000000B436F7572696572204E65773114C800
              0000FF7FBC0200000000000005417269616C3114C8000200FF7F900100000000
              000005417269616C3114C8000200FF7FBC0200000000000005417269616C3114
              C8000000FF7F900100000000000005417269616C3118C80000000A0090010000
              000000000957696E6764696E67731E16050013222422232C2323303B5C2D2224
              22232C2323301E1B060018222422232C2323303B5B5265645D5C2D222422232C
              2323301E1C070019222422232C2323302E30303B5C2D222422232C2323302E30
              301E2108001E222422232C2323302E30303B5B5265645D5C2D222422232C2323
              302E30301E292A00262A205F2D222422232C2323303B2A205C2D222422232C23
              23303B2A205F2D222422222D223B401E1C2900192A20232C2323303B2A205C2D
              232C2323303B2A20222D223B401E312C002E2A205F2D222422232C2323302E30
              303B2A205C2D222422232C2323302E30303B2A205F2D222422222D223F3F3B40
              1E242B00212A20232C2323302E30303B2A205C2D232C2323302E30303B2A2022
              2D223F3F3B401E181700155C24232C2323305F293B5C285C24232C2323305C29
              1E1D18001A5C24232C2323305F293B5B5265645D5C285C24232C2323305C291E
              1E19001B5C24232C2323302E30305F293B5C285C24232C2323302E30305C291E
              231A00205C24232C2323302E30305F293B5B5265645D5C285C24232C2323302E
              30305C291E0E40000B64642F6D6D6D2F797979791E1F41001C2224225C20232C
              2323303B5B5265645D5C2D2224225C20232C2323301E254200222224225C2023
              2C2323302E30303B5B5265645D5C2D2224225C20232C2323302E3030ED050000
              000000EC03000000E01400000000F5FF2000C02000000000000000000000E014
              01000000F5FF20C4C02000000000000000000000E01401000000F5FF20C4C020
              00000000000000000000E01402000000F5FF20C4C02000000000000000000000
              E01402000000F5FF20C4C02000000000000000000000E01400000000F5FF20C4
              C02000000000000000000000E01400000000F5FF20C4C0200000000000000000
              0000E01400000000F5FF20C4C02000000000000000000000E01400000000F5FF
              20C4C02000000000000000000000E01400000000F5FF20C4C020000000000000
              00000000E01400000000F5FF20C4C02000000000000000000000E01400000000
              F5FF20C4C02000000000000000000000E01400000000F5FF20C4C02000000000
              000000000000E01400000000F5FF20C4C02000000000000000000000E0140000
              0000F5FF20C4C02000000000000000000000E0140000000001002000C0200000
              0000000000000000E01405004200F5FF20C8C02000000000000000000000E014
              05004100F5FF20C8C02000000000000000000000E01405000C00F5FF20C8C020
              00000000000000000000E01405000A00F5FF20C8C02000000000000000000000
              E01405000D00F5FF20C8C02000000000000000000000E01404000000F0FF1248
              C02000000000000000000000E0140000400001002004C0200000000000000000
              0000E0140600000001002048C02000000000000000000000E014000004000100
              2004C0200000000000000000000085090000065368656574310A09000510000D
              01000C640011010010FCA9F1D24D62503F5F01002A00002B0100250000FF008C
              0100340081C10414030226411508075061676520265083000084000026000000
              000000E83F27000000000000E83F28000000000000F03F29000000000000F03F
              A1220100640001000100010006002C012C01000000000000E03F000000000000
              E03F01000001000900000001000000F7189200FFCCFFFFFF00C0C0C0000500F3
              010000000000000000F2100000000000000000000000000300FFFFF615001500
              1500FF0040067D0000000060021700000000007D01000100200A0F0000000000
              7D02000200000D1600000000007D03000300200D0F00000000007D04000400A0
              0D1800000000007D05000500000A0F000000000008010000000100F080000000
              0000010F0008020000000100F0800000000000010F0008030000000100F08000
              00000000010F0008040000000100F0800000000000010F0008050000000100F0
              800000000000010F0008060000000100F0800000000000010F00080700000001
              00F0800000000000010F0008080000000100F0800000000000010F0001010000
              0017000102000000170001030000001700010400000017000105000000170001
              06000000170001070000001700010800000017001D0F03000000000000010000
              00000000003E0AB6060000000000000000A0640064009926090A0000000452E3
              0B918FCE119DE300AA004BB8516C7400006C0000000100000058000000000000
              0000000000FFFFFFFFFFFFFFFF00000000000000006C520000B83D000020454D
              46000001006C0000000200000001000000000000000000000000000000200300
              0058020000D30000009E0000000E000000140000000000000010000000140000
              0001}
          end
        end
        object Panel6: TPanel
          Left = 497
          Top = 15
          Width = 275
          Height = 240
          Align = alClient
          BevelInner = bvLowered
          TabOrder = 1
          object RxLabel5: TRxLabel
            Left = 2
            Top = 2
            Width = 271
            Height = 23
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Total de las Devoluciones:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            ExplicitWidth = 279
          end
          object xcrMontoDev: TCurrencyEdit
            Left = 14
            Top = 47
            Width = 152
            Height = 25
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            Color = 10930928
            DisplayFormat = ',0.00;-,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            OnChange = xcrMontoDevChange
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Impresion'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object F2: TF1Book
        Left = 0
        Top = 0
        Width = 774
        Height = 257
        Align = alClient
        TabOrder = 0
        OnKeyPress = F1DetKeyPress
        OnDblClick = F1DetDblClick
        OnStartEdit = F1DetStartEdit
        ExplicitWidth = 491
        ExplicitHeight = 220
        ControlData = {
          00000100FF4F0000901A00006000000001000100010101010101010101010101
          0101010100F106000000000900050500EE0400000000EF14000000FF0000FF3F
          0000FFFFFFFFFFFFFFFFF1FF3D12000000005A2D0F0F18000000000001005802
          311AC8000000FF7F90010000000000000B436F7572696572204E65773114C800
          0000FF7FBC0200000000000005417269616C3114C8000200FF7F900100000000
          000005417269616C3114C8000200FF7FBC0200000000000005417269616C3114
          C8000000FF7F900100000000000005417269616C3118C80000000A0090010000
          000000000957696E6764696E67731E16050013222422232C2323303B5C2D2224
          22232C2323301E1B060018222422232C2323303B5B5265645D5C2D222422232C
          2323301E1C070019222422232C2323302E30303B5C2D222422232C2323302E30
          301E2108001E222422232C2323302E30303B5B5265645D5C2D222422232C2323
          302E30301E292A00262A205F2D222422232C2323303B2A205C2D222422232C23
          23303B2A205F2D222422222D223B401E1C2900192A20232C2323303B2A205C2D
          232C2323303B2A20222D223B401E312C002E2A205F2D222422232C2323302E30
          303B2A205C2D222422232C2323302E30303B2A205F2D222422222D223F3F3B40
          1E242B00212A20232C2323302E30303B2A205C2D232C2323302E30303B2A2022
          2D223F3F3B401E181700155C24232C2323305F293B5C285C24232C2323305C29
          1E1D18001A5C24232C2323305F293B5B5265645D5C285C24232C2323305C291E
          1E19001B5C24232C2323302E30305F293B5C285C24232C2323302E30305C291E
          231A00205C24232C2323302E30305F293B5B5265645D5C285C24232C2323302E
          30305C291E0E40000B64642F6D6D6D2F797979791E1F41001C2224225C20232C
          2323303B5B5265645D5C2D2224225C20232C2323301E254200222224225C2023
          2C2323302E30303B5B5265645D5C2D2224225C20232C2323302E3030ED050000
          000000EC03000000E01400000000F5FF2000C02000000000000000000000E014
          01000000F5FF20C4C02000000000000000000000E01401000000F5FF20C4C020
          00000000000000000000E01402000000F5FF20C4C02000000000000000000000
          E01402000000F5FF20C4C02000000000000000000000E01400000000F5FF20C4
          C02000000000000000000000E01400000000F5FF20C4C0200000000000000000
          0000E01400000000F5FF20C4C02000000000000000000000E01400000000F5FF
          20C4C02000000000000000000000E01400000000F5FF20C4C020000000000000
          00000000E01400000000F5FF20C4C02000000000000000000000E01400000000
          F5FF20C4C02000000000000000000000E01400000000F5FF20C4C02000000000
          000000000000E01400000000F5FF20C4C02000000000000000000000E0140000
          0000F5FF20C4C02000000000000000000000E0140000000001002000C0200000
          0000000000000000E01405004200F5FF20C8C02000000000000000000000E014
          05004100F5FF20C8C02000000000000000000000E01405000C00F5FF20C8C020
          00000000000000000000E01405000A00F5FF20C8C02000000000000000000000
          E01405000D00F5FF20C8C02000000000000000000000E01404000000F0FF1248
          C02000000000000000000000E0140000400001002004C0200000000000000000
          0000E0140600000001002048C02000000000000000000000E014000004000100
          2004C0200000000000000000000085090000065368656574310A09000510000D
          01000C640011010010FCA9F1D24D62503F5F01002A00002B0100250000FF008C
          0100340081C10414030226411508075061676520265083000084000026000000
          000000E83F27000000000000E83F28000000000000F03F29000000000000F03F
          A1220100640001000100010006002C012C01000000000000E03F000000000000
          E03F01000001000900000001000000F7189200FFCCFFFFFF00C0C0C0000500F3
          010000000000000000F2100000000000000000000000000300FFFFF615001500
          1500FF0040067D0000000060021700000000007D01000100200A0F0000000000
          7D02000200000D1600000000007D03000300200D0F00000000007D04000400A0
          0D1800000000007D05000500000A0F000000000008010000000100F080000000
          0000010F0008020000000100F0800000000000010F0008030000000100F08000
          00000000010F0008040000000100F0800000000000010F0008050000000100F0
          800000000000010F0008060000000100F0800000000000010F00080700000001
          00F0800000000000010F0008080000000100F0800000000000010F0001010000
          0017000102000000170001030000001700010400000017000105000000170001
          06000000170001070000001700010800000017001D0F03000000000000010000
          00000000003E0AB6060000000000000000A0640064009926090A0000000452E3
          0B918FCE119DE300AA004BB8516C7400006C0000000100000058000000000000
          0000000000FFFFFFFFFFFFFFFF00000000000000006C520000B83D000020454D
          46000001006C0000000200000001000000000000000000000000000000200300
          0058020000D30000009E0000000E000000140000000000000010000000140000
          0001}
      end
    end
  end
  object dfsStatusBar1: TTBXStatusBar
    Left = 0
    Top = 491
    Width = 782
    Height = 21
    Panels = <
      item
        Control = lblStatusBar1
        Size = 500
        Tag = 0
      end
      item
        Control = lblStatusBar2
        StretchPriority = 1
        Tag = 0
      end>
    UseSystemFont = False
    object lblStatusBar1: TRzLabel
      Left = 0
      Top = 4
      Width = 498
      Height = 15
      Align = alClient
      Caption = 'Listo!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      TextStyle = tsRaised
    end
    object lblStatusBar2: TRzLabel
      Left = 500
      Top = 4
      Width = 280
      Height = 15
      Align = alClient
      Caption = 'Mensajes CFDI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      TextStyle = tsRaised
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 736
    Top = 80
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
    IniFileName = 'SisCo.cfg'
    Options = [fpState, fpPosition, fpActiveControl]
    UseRegistry = False
    StoredValues = <>
    Left = 692
    Top = 2
  end
  object ImageList2: TImageList
    Left = 720
    Top = 8
    Bitmap = {
      494C01010A000E001C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00007B0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00007B0000007B0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00007B0000007B0000007B0000007B0000007B0000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B00FFFFFF000000
      0000FFFFFF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00007B0000007B0000FFFFFF00FFFFFF00007B
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000007B0000007B00FFFFFF000000
      0000FFFFFF007B7B7B007B007B0000FFFF00FFFFFF0000FFFF007B7B7B00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00007B0000FFFFFF00FFFFFF00007B
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B0000007B00FFFF
      FF0000007B0000007B0000FFFF00FFFFFF0000FFFF00FFFFFF007B7B7B00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00007B0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00007B
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000007B007B00
      7B0000007B00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00007B0000FFFFFF00FFFFFF00007B0000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B007B000000
      7B0000007B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00007B0000FFFFFF00FFFFFF00007B0000007B0000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B007B0000007B0000007B000000
      7B00FFFFFF0000007B00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00007B0000007B0000007B0000007B0000007B0000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000007B007B007B00000000000000
      0000FFFFFF00FFFFFF0000007B00FFFFFF00FFFFFF0000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00007B0000007B0000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00007B0000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000007B00FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000FFFFFF0000007B00FFFFFF0000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000007B0000007B007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF008400
      00008400000084000000FFFFFF0000000000000000000000000000007B000000
      7B0000007B00FFFFFF0000000000000000000000000000000000000000000000
      000000007B00FFFFFF00000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000007B0000007B0000007B0000007B00FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000008400000000000000000000000000
      000000000000000000000000000084848400FFFFFF0084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000007B000000
      7B0000007B00FFFFFF0000000000000000000000000000000000000000000000
      7B00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000007B0000007B0000007B007B7B7B0000007B0000007B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000008400000084000000000000000000
      000000000000000000000000000084848400FFFFFF0084848400FFFFFF008400
      00008400000084000000FFFFFF00000000000000000000000000000000000000
      7B0000007B0000007B00FFFFFF0000000000000000000000000000007B000000
      7B00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000007B007B7B7B00FFFFFF00FFFFFF0000007B007B7B7B00FFFF
      FF00FFFFFF00FFFFFF0000000000000000008400000084000000840000000000
      00000000000084848400FFFFFF0084848400FFFFFF0084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000007B0000007B0000007B00FFFFFF000000000000007B0000007B00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000000000007B000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000007B007B7B
      7B00FFFFFF00FFFFFF0000000000000000008400000084000000840000008400
      00000000000084848400FFFFFF0084848400FFFFFF0084848400FFFFFF008400
      00008400000084000000FFFFFF00000000000000000000000000000000000000
      00000000000000007B0000007B0000007B0000007B0000007B00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000007B0000007B000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      7B00FFFFFF00FFFFFF0000000000000000008400000084000000840000000000
      00000000000084848400FFFFFF0084848400FFFFFF0084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000007B0000007B0000007B00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000007B00FFFFFF0000000000000000008400000084000000000000000000
      00000000000084848400FFFFFF0084848400FFFFFF0084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      00000000000000007B0000007B0000007B0000007B0000007B00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000008400000000000000000000000000
      00000000000084848400FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000007B0000007B0000007B00FFFFFF000000000000007B00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00848484008484840084848400848484008484
      840084848400000000000000000000000000000000000000000000007B000000
      7B0000007B0000007B00FFFFFF0000000000000000000000000000007B000000
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000007B0000007B000000
      7B0000007B00FFFFFF0000000000000000000000000000000000000000000000
      7B0000007B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840084848400848484008484840084848400848484000000
      0000000000000000000000000000000000000000000000007B0000007B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000007B0000007B00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B0000007B000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B0000007B000000000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000FFFFFF00FFFF
      FF007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000FFFFFF007B00
      00007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B0000007B00
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      0000000000007B00000000000000000000000000000000000000000000000000
      0000000000007B00000000000000000000000000000000000000FFFFFF00FFFF
      FF007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B0000000000
      000000000000000000007B0000007B0000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B0000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B0000007B0000007B000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFC00100000000FFFFC00100000000
      E007C00100000000E007C00100000000E007C001000000008007C00100000000
      0007C001000000008007C00100000000C407C00100000000C007C00100000000
      0007C00100000000200FC00100000000E01FC00100000000E03FC00300000000
      FFFFC00700000000FFFFC00F00000000FFFFFFFFFFFFFFFF000FC001FFFFFFFF
      000FC001FF80FFF9000FC001FF80E7FF000FC001FE00C3F3000FC0017E00C3E7
      000FC0013800E1C7000FC0011800F08F008EC0010800F81F1144C0011800FC3F
      0AB8C0013800F81F057CC0017803F09FFAFCC001F803C1C7FDF8C003F80F83E3
      FE04C007F80F8FF1FFFFC00FFFFFFFFFFFFF8003FFFFFFFFFFFF8003BFF7FFFF
      FFFF80031FFFFFFFFFFF80030FEFFFFFFFF780038FDFFDFFC1F78003C79FF8FF
      C3FB8003E33FF07FC7FB8003F07FF23FCBFB8003F8FFF71FDCF78003F07FFF8F
      FF0F8003E33FFFCFFFFF8003879FFFEFFFFF80030FCFFFFFFFFF80171FF7FFFF
      FFFF800FFFFFFFFFFFFF801FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object icuDet: TIB_Cursor
    DatabaseName = 'MBA'
    IB_Connection = DM1.cnMBA
    Left = 696
    Top = 40
  end
  object otf: TOpenTextFileDialog
    Left = 728
    Top = 40
  end
end
