object frmClienteAct: TfrmClienteAct
  Left = 355
  Top = 223
  Caption = 'Actualizar Cliente'
  ClientHeight = 497
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clMenuText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object sbMain: TRzStatusBar
    Left = 0
    Top = 478
    Width = 569
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object sbMsg: TRzGlyphStatus
      Left = 0
      Top = 0
      Width = 306
      Height = 19
      Transparent = False
      Align = alLeft
      Color = clBtnFace
      ParentColor = False
    end
    object sbEstado: TRzGlyphStatus
      Left = 306
      Top = 0
      Width = 144
      Height = 19
      Transparent = False
      Align = alLeft
      Color = clBtnFace
      ParentColor = False
    end
    object RzGlyphStatus3: TRzGlyphStatus
      Left = 450
      Top = 0
      Width = 119
      Height = 19
      Transparent = False
      Align = alClient
      Color = clBtnFace
      ParentColor = False
      ExplicitWidth = 115
    end
  end
  object pgcMain: TRzPageControl
    Left = 0
    Top = 47
    Width = 569
    Height = 431
    ActivePage = tshGenerales
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    TabStyle = tsRoundCorners
    FixedDimension = 22
    object tshGenerales: TRzTabSheet
      Caption = '&1 Generales'
      object RzLabel1: TRzLabel
        Left = 3
        Top = 12
        Width = 121
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Clave Cliente'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel2: TRzLabel
        Left = 4
        Top = 55
        Width = 555
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Nombre del Cliente'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel3: TRzLabel
        Left = 4
        Top = 98
        Width = 279
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Calle / Avenida'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel4: TRzLabel
        Left = 384
        Top = 98
        Width = 175
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Colonia'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel5: TRzLabel
        Left = 5
        Top = 141
        Width = 378
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ciudad'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel7: TRzLabel
        Left = 387
        Top = 140
        Width = 172
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Codigo Postal'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel8: TRzLabel
        Left = 4
        Top = 316
        Width = 269
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Telefono 1'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel9: TRzLabel
        Left = 276
        Top = 315
        Width = 283
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Telefono 2'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel10: TRzLabel
        Left = 387
        Top = 227
        Width = 172
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'R.F.C.'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel13: TRzLabel
        Left = 286
        Top = 98
        Width = 95
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Num: Ext / Int'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel14: TRzLabel
        Left = 3
        Top = 357
        Width = 301
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Jefe de Compras'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel15: TRzLabel
        Left = 308
        Top = 357
        Width = 251
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Jefe de Pagos'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel6: TRzLabel
        Left = 3
        Top = 273
        Width = 330
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Referencia  Direcci'#243'n'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel16: TRzLabel
        Left = 338
        Top = 273
        Width = 222
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Vendedor'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel11: TRzLabel
        Left = 5
        Top = 185
        Width = 378
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Estado'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel25: TRzLabel
        Left = 5
        Top = 227
        Width = 378
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Pais'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object ebzCodCliente: TRzButtonEdit
        Left = 3
        Top = 27
        Width = 121
        Height = 24
        CharCase = ecUpperCase
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FocusColor = clBtnFace
        FrameHotTrack = True
        FrameVisible = True
        MaxLength = 20
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object ebzRazSocial: TRzButtonEdit
        Left = 4
        Top = 70
        Width = 555
        Height = 24
        CharCase = ecUpperCase
        FrameController = fcz1
        MaxLength = 100
        TabOrder = 1
        OnChange = ebzRazSocialChange
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object ebzCalle: TRzButtonEdit
        Left = 4
        Top = 113
        Width = 279
        Height = 24
        CharCase = ecUpperCase
        FrameController = fcz1
        MaxLength = 50
        TabOrder = 2
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object ebzColoniaCte: TRzButtonEdit
        Left = 384
        Top = 113
        Width = 175
        Height = 24
        CharCase = ecUpperCase
        FrameController = fcz1
        MaxLength = 50
        TabOrder = 5
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object cbzLocalidad: TRzComboBox
        Left = 5
        Top = 157
        Width = 378
        Height = 24
        Ctl3D = False
        FrameController = fcz1
        ItemHeight = 16
        MaxLength = 60
        ParentCtl3D = False
        TabOrder = 6
        Items.Strings = (
          'MONTERREY'
          'SAN PEDRO GARZA GARCIA'
          'SANTA CATARINA'
          'SAN NICOLAS DE LOS GARZA'
          'APODACA'
          'ESCOBEDO'
          'VILLA DE GARCIA'
          'SANTIAGO')
      end
      object ebzCodPostal: TRzButtonEdit
        Left = 387
        Top = 155
        Width = 172
        Height = 24
        FrameController = fcz1
        MaxLength = 10
        TabOrder = 7
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object ebzTelefono1: TRzButtonEdit
        Left = 4
        Top = 331
        Width = 269
        Height = 24
        FrameController = fcz1
        MaxLength = 35
        TabOrder = 12
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object ebzTelefono2: TRzButtonEdit
        Left = 276
        Top = 331
        Width = 283
        Height = 24
        FrameController = fcz1
        MaxLength = 35
        TabOrder = 13
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object ebzRFC: TRzButtonEdit
        Left = 387
        Top = 242
        Width = 172
        Height = 24
        CharCase = ecUpperCase
        FrameController = fcz1
        MaxLength = 18
        TabOrder = 9
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object ebzNumExt: TRzButtonEdit
        Left = 286
        Top = 113
        Width = 60
        Height = 24
        CharCase = ecUpperCase
        FrameController = fcz1
        MaxLength = 10
        TabOrder = 3
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object ebzNumInt: TRzButtonEdit
        Left = 346
        Top = 113
        Width = 35
        Height = 24
        CharCase = ecUpperCase
        FrameController = fcz1
        MaxLength = 10
        TabOrder = 4
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object ebzContacto1: TRzButtonEdit
        Left = 3
        Top = 373
        Width = 301
        Height = 24
        CharCase = ecUpperCase
        FrameController = fcz1
        MaxLength = 50
        TabOrder = 14
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object ebzContacto2: TRzButtonEdit
        Left = 308
        Top = 373
        Width = 251
        Height = 24
        CharCase = ecUpperCase
        FrameController = fcz1
        MaxLength = 50
        TabOrder = 15
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object ebzRef: TRzButtonEdit
        Left = 3
        Top = 288
        Width = 330
        Height = 24
        FrameController = fcz1
        MaxLength = 50
        TabOrder = 10
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object cbzVendedor: TRzComboBox
        Left = 338
        Top = 288
        Width = 221
        Height = 24
        Ctl3D = False
        FrameController = fcz1
        ItemHeight = 16
        MaxLength = 60
        ParentCtl3D = False
        TabOrder = 11
        Items.Strings = (
          'MONTERREY'
          'SAN PEDRO GARZA GARCIA'
          'SANTA CATARINA'
          'SAN NICOLAS DE LOS GARZA'
          'APODACA'
          'ESCOBEDO'
          'VILLA DE GARCIA'
          'SANTIAGO')
      end
      object cbzEstado: TRzComboBox
        Left = 5
        Top = 200
        Width = 377
        Height = 24
        Ctl3D = False
        FrameController = fcz1
        ItemHeight = 16
        MaxLength = 60
        ParentCtl3D = False
        TabOrder = 8
        Items.Strings = (
          'MONTERREY'
          'SAN PEDRO GARZA GARCIA'
          'SANTA CATARINA'
          'SAN NICOLAS DE LOS GARZA'
          'APODACA'
          'ESCOBEDO'
          'VILLA DE GARCIA'
          'SANTIAGO')
      end
      object cbzPais: TRzComboBox
        Left = 5
        Top = 242
        Width = 377
        Height = 24
        Ctl3D = False
        FrameController = fcz1
        ItemHeight = 16
        MaxLength = 60
        ParentCtl3D = False
        TabOrder = 16
        Items.Strings = (
          'MONTERREY'
          'SAN PEDRO GARZA GARCIA'
          'SANTA CATARINA'
          'SAN NICOLAS DE LOS GARZA'
          'APODACA'
          'ESCOBEDO'
          'VILLA DE GARCIA'
          'SANTIAGO')
      end
    end
    object tshOtros: TRzTabSheet
      Caption = '&2 Otros Datos'
      object RzLabel12: TRzLabel
        Left = 3
        Top = 3
        Width = 275
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ruta'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel17: TRzLabel
        Left = 282
        Top = 3
        Width = 275
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Transportista'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel18: TRzLabel
        Left = 3
        Top = 46
        Width = 275
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Zona'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel19: TRzLabel
        Left = 282
        Top = 46
        Width = 274
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Cuenta / Banco'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel20: TRzLabel
        Left = 282
        Top = 89
        Width = 274
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Metodo de Pago'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel21: TRzLabel
        Left = 3
        Top = 180
        Width = 274
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'CorreoE: Compras'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel22: TRzLabel
        Left = 282
        Top = 179
        Width = 275
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'CorreoE: Pagos'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel23: TRzLabel
        Left = 3
        Top = 225
        Width = 552
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'CorreoE: Envio Fac. Electr'#243'nica'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel24: TRzLabel
        Left = 282
        Top = 273
        Width = 86
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Plazo (D'#237'as)'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel26: TRzLabel
        Left = 3
        Top = 273
        Width = 269
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Limite de Credito'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblFormaPago: TRzLabel
        Left = 3
        Top = 89
        Width = 274
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Forma de Pago'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel29: TRzLabel
        Left = 3
        Top = 326
        Width = 275
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Pais de Residencia'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel30: TRzLabel
        Left = 282
        Top = 325
        Width = 185
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'No. Id Tributario'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RzLabel27: TRzLabel
        Left = 2
        Top = 134
        Width = 555
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Uso del CFDI'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object cbzRuta: TRzComboBox
        Left = 3
        Top = 18
        Width = 274
        Height = 24
        Ctl3D = False
        FrameController = fcz1
        ItemHeight = 16
        MaxLength = 60
        ParentCtl3D = False
        TabOrder = 0
        Items.Strings = (
          'MONTERREY'
          'SAN PEDRO GARZA GARCIA'
          'SANTA CATARINA'
          'SAN NICOLAS DE LOS GARZA'
          'APODACA'
          'ESCOBEDO'
          'VILLA DE GARCIA'
          'SANTIAGO')
      end
      object cbzTransp: TRzComboBox
        Left = 282
        Top = 18
        Width = 274
        Height = 24
        Ctl3D = False
        FrameController = fcz1
        ItemHeight = 16
        MaxLength = 60
        ParentCtl3D = False
        TabOrder = 1
        Items.Strings = (
          'MONTERREY'
          'SAN PEDRO GARZA GARCIA'
          'SANTA CATARINA'
          'SAN NICOLAS DE LOS GARZA'
          'APODACA'
          'ESCOBEDO'
          'VILLA DE GARCIA'
          'SANTIAGO')
      end
      object cbzZona: TRzComboBox
        Left = 3
        Top = 61
        Width = 274
        Height = 24
        Ctl3D = False
        FrameController = fcz1
        ItemHeight = 16
        MaxLength = 60
        ParentCtl3D = False
        TabOrder = 2
        Items.Strings = (
          'MONTERREY'
          'SAN PEDRO GARZA GARCIA'
          'SANTA CATARINA'
          'SAN NICOLAS DE LOS GARZA'
          'APODACA'
          'ESCOBEDO'
          'VILLA DE GARCIA'
          'SANTIAGO')
      end
      object ebzCtaBanco: TRzButtonEdit
        Left = 282
        Top = 63
        Width = 274
        Height = 24
        FrameController = fcz1
        MaxLength = 35
        TabOrder = 3
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object ebzEmailCompras: TRzButtonEdit
        Left = 3
        Top = 195
        Width = 274
        Height = 24
        FrameController = fcz1
        MaxLength = 35
        TabOrder = 4
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object ebzEmailPagos: TRzButtonEdit
        Left = 282
        Top = 195
        Width = 275
        Height = 24
        FrameController = fcz1
        MaxLength = 35
        TabOrder = 5
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object ebzEmailFactura: TRzButtonEdit
        Left = 3
        Top = 240
        Width = 552
        Height = 24
        FrameController = fcz1
        MaxLength = 35
        TabOrder = 6
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object ebzPlazo: TRzButtonEdit
        Left = 282
        Top = 289
        Width = 86
        Height = 24
        FrameController = fcz1
        MaxLength = 35
        TabOrder = 7
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object enzLimCre: TRzNumericEdit
        Left = 3
        Top = 289
        Width = 269
        Height = 24
        FrameController = fcz1
        TabOrder = 8
        DisplayFormat = ',0;(,0)'
      end
      object cbzMetodoPago: TRzComboBox
        Left = 282
        Top = 105
        Width = 273
        Height = 24
        Ctl3D = False
        FrameController = fcz1
        ItemHeight = 16
        MaxLength = 60
        ParentCtl3D = False
        TabOrder = 9
        Items.Strings = (
          'MONTERREY'
          'SAN PEDRO GARZA GARCIA'
          'SANTA CATARINA'
          'SAN NICOLAS DE LOS GARZA'
          'APODACA'
          'ESCOBEDO'
          'VILLA DE GARCIA'
          'SANTIAGO')
      end
      object cbzFormaPago: TRzComboBox
        Left = 4
        Top = 105
        Width = 273
        Height = 24
        Ctl3D = False
        FrameController = fcz1
        ItemHeight = 16
        MaxLength = 60
        ParentCtl3D = False
        TabOrder = 10
        Items.Strings = (
          'MONTERREY'
          'SAN PEDRO GARZA GARCIA'
          'SANTA CATARINA'
          'SAN NICOLAS DE LOS GARZA'
          'APODACA'
          'ESCOBEDO'
          'VILLA DE GARCIA'
          'SANTIAGO')
      end
      object cbzResidencia: TRzComboBox
        Left = 3
        Top = 341
        Width = 274
        Height = 24
        Hint = 'Solo para clientes extranjeros'
        Style = csDropDownList
        Ctl3D = False
        FrameController = fcz1
        ItemHeight = 16
        MaxLength = 60
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        Items.Strings = (
          'MONTERREY'
          'SAN PEDRO GARZA GARCIA'
          'SANTA CATARINA'
          'SAN NICOLAS DE LOS GARZA'
          'APODACA'
          'ESCOBEDO'
          'VILLA DE GARCIA'
          'SANTIAGO')
      end
      object edzIdTrib: TRzButtonEdit
        Left = 282
        Top = 341
        Width = 185
        Height = 24
        Hint = 'Solo para clientes extranjeros'
        FrameController = fcz1
        MaxLength = 35
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        ButtonVisible = False
        AltBtnWidth = 15
        ButtonWidth = 15
      end
      object cbzUsoCFDI: TRzComboBox
        Left = 3
        Top = 150
        Width = 554
        Height = 24
        Ctl3D = False
        FrameController = fcz1
        ItemHeight = 16
        MaxLength = 60
        ParentCtl3D = False
        TabOrder = 13
        Items.Strings = (
          'MONTERREY'
          'SAN PEDRO GARZA GARCIA'
          'SANTA CATARINA'
          'SAN NICOLAS DE LOS GARZA'
          'APODACA'
          'ESCOBEDO'
          'VILLA DE GARCIA'
          'SANTIAGO')
      end
    end
    object tshDescuentos: TRzTabSheet
      Caption = '&3 Descuentos'
      object TBXDock2: TTBXDock
        Left = 0
        Top = 0
        Width = 565
        Height = 47
        object TBXToolbar2: TTBXToolbar
          Left = 0
          Top = 0
          Caption = 'TBXToolbar2'
          FullSize = True
          TabOrder = 0
          object tbtLeer: TTBXItem
            Caption = '&Leer Descuentos'
            DisplayMode = nbdmImageAndText
            ImageIndex = 7
            Images = ImageList1
            Layout = tbxlGlyphTop
            OnClick = tbtLeerClick
          end
          object tbtGrabarDescto: TTBXItem
            Caption = 'Grabar Descuentos'
            DisplayMode = nbdmImageAndText
            ImageIndex = 1
            Images = ImageList1
            Layout = tbxlGlyphTop
            OnClick = tbtGrabarDesctoClick
          end
        end
      end
      object F1: TF1Book
        Left = 0
        Top = 47
        Width = 565
        Height = 355
        Align = alClient
        TabOrder = 1
        ExplicitHeight = 351
        ControlData = {
          00000100653A0000B124000060000000010001074631426F6F6B310101010101
          0101010101010101010101002905000000000900050500EE0400000000EF1400
          0000FF0000FF3F0000FFFFFFFFFFFFFFFFF3FF3D120000C1021B21CD14380000
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
          000000003E0AB6060000000000000000A0640064009926090A0000000452E30B
          918FCE119DE300AA004BB8516C740000AC020000010000006C00000000000000
          00000000FFFFFFFFFFFFFFFF0000000000000000007D0000C05D000020454D46
          00000100AC020000100000000400000000000000000000000000000000040000
          0003000040010000F000000000000000000000000000000000E2040080A90300
          1B000000100000000000000000000000520000007001000001000000F5FFFFFF
          0000000000000000000000009001000000000001000000004D00530020005300
          61006E0073002000530065007200690066000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000040000000
          00000000000000000000000000000000F0561400000014004D00530020005300
          61006E007300200053006500720069006600000000000000ACFA120000000040
          00000000000000000300000018000000A4FA120084FB1200A18AD17700000100
          0000140044FA12000000008604FC1200F088F977881CF4770000FFFF3790F477
          C88AD1770000140000000000E05F140050804100F424C0008CFC1200726DC477
          38080538284A0000BCFE1200A151C477380805385400000000000000A02DC000
          8C8D16004E460041000000008376130034750041A02DC0002C4A0000A02DC000
          F6460041307500411C000000842DC00040490041ACFB12006476000800000000
          250000000C00000001000000180000000C00000000000000260000001C000000
          0200000000000000010000000000000000000000250000000C00000002000000
          140000000C0000000D00000027000000180000000300000000000000FFFFFF00
          00000000250000000C00000003000000190000000C000000FFFFFF0012000000
          0C00000002000000250000000C00000007000080250000000C00000005000080
          250000000C0000000D0000800E00000014000000000000001000000014000000
          01}
      end
    end
    object tshDirEntrega: TRzTabSheet
      Caption = '&4 Dir. Entrega'
      object btnCopiar: TRzBitBtn
        Left = 3
        Top = 237
        Width = 121
        Caption = '&Copiar Dir. Fiscal'
        TabOrder = 0
        OnClick = btnCopiarClick
      end
      object pnlCliente: TRzPanel
        Left = 0
        Top = 0
        Width = 565
        Height = 27
        Align = alTop
        BorderOuter = fsGroove
        Caption = 'Nombre del cliente'
        TabOrder = 1
      end
      inline fraDirs_Entrega1: TfraDirs_Entrega
        Left = 0
        Top = 27
        Width = 565
        Height = 206
        Align = alTop
        TabOrder = 2
        TabStop = True
        ExplicitTop = 27
        ExplicitWidth = 565
        inherited RzPanel1: TRzPanel
          Width = 565
          ExplicitWidth = 565
          inherited cboNombreDir: TRzComboBox
            Height = 24
            ItemHeight = 16
            ExplicitHeight = 24
          end
        end
        inherited RzPanel2: TRzPanel
          Width = 565
          ExplicitWidth = 565
          inherited mmoDirEnt: TRzMemo
            Width = 561
            ExplicitWidth = 561
          end
        end
      end
    end
    object tshComentarios: TRzTabSheet
      Caption = '&5 Comentarios'
      object RzLabel28: TRzLabel
        Left = 0
        Top = 0
        Width = 565
        Height = 16
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Comentarios'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ExplicitLeft = 7
        ExplicitTop = 286
        ExplicitWidth = 555
      end
      object mmoComentarios: TRzMemo
        Left = 0
        Top = 16
        Width = 565
        Height = 113
        Align = alTop
        BevelInner = bvNone
        BevelOuter = bvRaised
        MaxLength = 253
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object TBXDock1: TTBXDock
    Left = 0
    Top = 0
    Width = 569
    Height = 47
    object ttbx1: TTBXToolbar
      Left = 0
      Top = 0
      Caption = 'ttbx1'
      FullSize = True
      TabOrder = 0
      object tbtSalir: TTBXItem
        Caption = '  &Salir  '
        DisplayMode = nbdmImageAndText
        ImageIndex = 12
        Images = MainForm.ImageList2
        Options = [tboImageAboveCaption]
        OnClick = tbtSalirClick
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object tbtGrabar: TTBXItem
        Caption = ' &Grabar '
        DisplayMode = nbdmImageAndText
        ImageIndex = 24
        Images = MainForm.ImageList2
        Options = [tboImageAboveCaption]
        OnClick = tbtGrabarClick
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object tbtAyuda: TTBXItem
        Caption = ' &Ayuda '
        DisplayMode = nbdmImageAndText
        ImageIndex = 3
        Images = ImageList1
        Options = [tboImageAboveCaption]
      end
    end
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 488
    Top = 48
    Bitmap = {
      494C010109001800280018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600ADADAD00AD9C9C00ADA59C00AD9C
      9400A5949400AD9C9C00ADADAD00C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600ADADAD00E7D6CE00F7E7DE00F7EFE700EFEFEF00EFEF
      EF00EFEFEF00EFE7E700EFDED600BDADA5009C9C9C00ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00E7D6CE00F7EFEF00EFEFEF00EFEFEF00E7DEDE00E7E7E700E7E7
      E700E7E7E700EFEFEF00EFEFEF00EFEFEF00EFE7E700B5A59C008C847B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600EFE7E700EFEFEF00EFEFEF00E7DEDE00DF885500B85C2E00B85C2E00B85C
      2E00B85C2E00B85C2E00DECEC600E7E7E700EFEFEF00F7EFEF00CEBDB5008C84
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600F7EF
      E700EFEFEF00EFEFEF00DF885500B85C2E00B85C2E00BF673800C6947B00DEBD
      A500C6947B00B96133009C4E2700B85C2E00E7D6CE00EFEFEF00F7EFEF00C6BD
      B5008C847B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DECEC600F7E7DE00F7F7
      F700EFEFEF00DF885500B85C2E00C46C3C00C46C3C00C36A3B00E7C6B500FEFB
      F900E7C6B500BD643600BA623400B85F32009C4E2700DECEC600EFEFEF00F7EF
      EF00C6BDB500A59C940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600F7F7F700EFEF
      EF00DF885500B85C2E00C76F4000C76F4000C76F4000C66E3F00DEAD9400F7F7
      F700DEAD9400BF673800BD643600BA623400B85F32009C4E2700E7DED600EFEF
      EF00F7E7DE008C847B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DECEC600F7E7E700F7F7F700E7D6
      CE00B85C2E00CB734300CB734300CB734300CB734300C9724200C9724200C972
      4200C46C3C00C36A3B00C0683900BD643600BA623400B85F3200B85C2E00EFEF
      EF00F7F7F700C6BDB5009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6CECE00F7F7F700F7F7F700D982
      5000CE774600CE774600CE774600CE774600CE774600CD754500CE846300DE94
      6B00C76F4000C56D3D00C36A3B00BF673800BD643600B96133009C4E2700E4B1
      9400F7F7F700EFDED6008C847B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DECEC600F7F7F700EFE7E700CF78
      4700D27A4900D27A4900D27A4900D27A4900D27A4900CF784700D6CECE00FEFB
      F900DE9C7B00C76F4000C46C3C00C1693A00BF673800BC633500B85F3200C76F
      4000EFEFEF00F7EFE7008C847B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DECEC600FFFFFF00E7CEC600D37B
      4A00D47D4B00D57E4C00D57E4C00D57E4C00D47D4B00D37B4A00CEC6C600FEFB
      F900EFC6AD00C9724200C66E3F00C46C3C00C0683900BD643600B96133009C4E
      2700EFEFEF00F7F7EF00A5949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DECEC600FFFFFF00E7BDAD00D57E
      4C00D7804E00D9825000D9825000D9825000D7804E00D57E4C00BD947B00EFEF
      EF00F7F7F700DEA58C00C8704100C56D3D00C1693A00BE653700BC6335009C4E
      2700F7EFEF00F7F7F700AD9C9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DECEC600FFFFFF00EFC6AD00D982
      5000DF885500E28C5800E28C5800E28C5800DF885500D9825000D57E4C00C6A5
      9400F7F7EF00F7F7F700E7A58400C66E3F00C36A3B00BF673800BC6335009C4E
      2700F7F7EF00FFF7F700ADA59C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DECEC600FFFFFF00EFD6C600DF88
      5500E58F5B00EC966100EC966100EC966100E58F5B00DF885500D7804E00D47D
      4B00D6B5A500FEFBF900F7F7EF00C76F4000C46C3C00C0683900BD6436009C4E
      2700F7F7F700FFF7F700ADA59C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DECEC600FFFFFF00FFEFE700E28C
      5800EC966100F29C6700F5A06A00F29C6700DEAD9400E28C5800D9825000D57E
      4C00D27A4900EFE7E700FEFBF900E7B59C00C46C3C00C0683900BD6436009C4E
      2700FFFFFF00FFF7EF00A59C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DECEC600FFFFF700FFFFFF00F7AD
      8400EC966100F5A06A00FFAA7300D6C6BD00FEFBF900DEA58C00D9825000D57E
      4C00D27A4900EFE7E700FEFBF900E7BDAD00C46C3C00C0683900BD643600C76F
      4000FFFFFF00F7E7E700A5A59C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DECEC600EFDED600FFFFFF00E4B1
      9400EC966100F29C6700F5A06A00D6C6BD00FEFBF900F7EFE700DE946B00D57E
      4C00DEAD9400F7F7F700FEFBF900DEA58C00C46C3C00C06839009C4E2700FFF7
      F700FFFFFF00DECEC600C6BDB500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7E7DE00FFFFFF00FFFF
      FF00E4B19400EC966100EC966100DE9C7B00E7E7E700FEFBF900FEFBF900FEFB
      F900FFFFFF00FFFFFF00E7DED600EF8C6300C46C3C00C0683900C76F4000FFFF
      FF00FFF7EF00C6BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DECEC600EFDED600FFFF
      FF00FFFFF700E4B19400E28C5800E28C5800E7B59C00E7DED600E7DEDE00E7DE
      DE00E7E7E700EFDED600F7AD8400C66E3F00C36A3B009C4E2700FFFFFF00FFFF
      FF00E7D6CE009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DECEC600EFDE
      D600FFFFFF00FFFFFF00E4B19400D9825000D7804E00D57E4C00D47D4B00D079
      4800CE774600CB734300C87041009C4E2700B85C2E00FFFFFF00FFFFFF00F7E7
      DE00ADADAD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DECE
      C600EFDED600FFFFFF00FFFFFF00FFFFF700E4B19400D9825000D0794800CE77
      4600CC744400C9724200D9825000FFCEAD00FFFFFF00FFFFFF00F7EFE700ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DECEC600EFDED600FFFFFF00FFFFFF00FFFFFF00FFF7EB00FFF3E100FFF3
      E100FFF3E100FFF3E100FFF7EB00FFFFFF00FFF7F700EFDED600ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DECEC600EFDED600F7EFEF00FFF7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700F7EFE700DECEC600C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7D6CE00DECEC600DECEC600DECE
      C600DECEC600DECEC600DECEC600E7D6CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031B5630031B5630031B5
      6B0029AD6B0029AD6B0029AD6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000359600003596000035
      9600003596000035960000359600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000039C631004AC64A0031B5630031B5630031B5
      6B0029AD730029AD730029AD6B0029AD630029AD630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000005CED000052DC000048CC000044BF000045
      B8000041B000003AA40000359600002E7B0000235B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010BD100021BD210031C6310042C6420031B55A0084CE9C009CD6
      AD00B5DEC600C6E7CE0029AD6B0021AD630029AD6B0031B5730039B573000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063FC00005CF600005AEF00166EE7004C93E60078B0EB008CBB
      ED008BBAED0072AAE6004186D7000D58BF0000399F00002E7F00002662000000
      0000000000000000000000000000000000000000000021A5D60021A5D60021A5
      D6005AC6E70042BDE70029ADD60021A5D60018A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000298CBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010BD100010BD100021C6180031CE2100EFF7FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEEFE700D6E7DE0029AD730031B5730039B5
      6B00000000000000000000000000000000000000000000000000000000000000
      00000062FF00005DFF001F7FFC0095C6FB00F0F7FE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E3EFFC007AADE7001159BC00003391000025
      6000000000000000000000000000000000000000000018A5D600ADDEF700B5FF
      FF009CFFFF0094F7FF008CEFFF007BE7F7006BD6F70052C6E70042B5DE0029AD
      D60021A5D60018A5D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000298CBD0084BDD60000000000000000000000
      00000000000000000000000000000000000000000000000000000000000010BD
      180010BD180021C61800EFF7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF7
      FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFE700D6E7DE0029AD
      630031B563000000000000000000000000000000000000000000000000000065
      FF000368FF0075B5FF00F2F8FF00FFFFFF00FFFFFF00CCE1FA00CCE1FA00B1D1
      F800C0D9F800CCE0FA00CCE0FA00FFFFFF00FFFFFF00E0EDFB00518FD700003A
      9D00002664000000000000000000000000000000000010A5D60063BDE700CEFF
      FF008CF7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CEF
      FF0073DEF7005ACEEF004AC6E70031B5DE0021A5D60018A5D60018A5D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000298CBD000873B5009CADC60000000000000000000000
      000000000000000000000000000000000000000000000000000018BD210010BD
      180021C61800FFFFFF00FFFFFF00FFFFFF00DEEFFF0084CE9C0042BD520042BD
      52004AC652005AC66300CEE7D600D6E7DE00FFFFFF00FFFFFF00FFFFFF00D6E7
      DE0029AD630031B55A0000000000000000000000000000000000036AFF00036A
      FF0090C5FF00FFFFFF00FFFFFF00D8E7FC009CC6F800095CE5000352E1000251
      E000014FE000014EDE000B5BE100B1D1F800FFFFFF00FFFFFF00FFFFFF005792
      D800003596000027640000000000000000000000000021A5D60042B5DE00BDEF
      F7009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF0094F7FF0094F7FF008CEFFF008CEFFF0084E7FF0063D6EF0031ADDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084BDD600298CBD0084BDD60084BDD60000000000000000000000
      000000000000000000000000000000000000000000000000000018BD210021BD
      2100FFFFFF00FFFFFF00FFFFFF0094D6A50010A5520010A5520029B54A009CDE
      AD0042BD520052C6630063C6630063CE6B00CEE7DE00FFFFFF00FFFFFF00EFF7
      F70021AD630021AD6300000000000000000000000000000000000166FF0062AB
      FF00FFFFFF00FFFFFF00D9E9FC00408EF400065AE6000557E5000455E300085A
      E3000352E1000251E000014FE000014FDE005396EE00D7E6FB00FFFFFF00EFF6
      FB001B63BD0000348F0000000000000000000000000029ADD6005AC6E70094D6
      EF00B5FFFF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF7005ACEEF0021A5
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084BDD6000873B500C6E7F70084BDD60084BDD60000000000000000000000
      0000000000000000000000000000000000000000000018B5290018BD2100B5DE
      C600FFFFFF00FFFFFF00ADDEBD0010A56300109C630021AD5A00DEEFE700FFFF
      FF00BDE7C6004AC65A0052C663005AC6630063CE6300CEE7D600FFFFFF00FFFF
      FF00D6E7DE0021A5630029AD63000000000000000000066CFF001277FF00DEEF
      FF00FFFFFF00D9EAFC003889F4000A5FEA00085DE900095DE9000559E6000457
      E3000556E2000353E2000251E0000250E000014EDE00468EED00D7E6FB00FFFF
      FF00A3C5E9000040A70000399300000000000000000029ADD6007BE7F70063C6
      E700C6F7FF008CF7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF0039BD
      DE00000000000000000000000000000000000000000000000000000000000000
      0000298CBD0039A5D60039A5D60039A5D60039A5D60039A5D60039A5D60039A5
      D600298CBD0084BDD600F7FFFF0084BDD600298CBD0039A5D600000000000000
      0000000000000000000000000000000000000000000018B5290021BD2100FFFF
      FF00FFFFFF00B5DEC60010AD420010A55A0021B55A00EFF7F700FFFFFF00FFFF
      FF00E7F7EF0042BD52004AC6520052C652005AC65A0063C66300CEE7D600FFFF
      FF00FFFFFF0021A5630021A563000000000000000000036AFF005EA9FF00FFFF
      FF00FFFFFF0073B1FA000D66EF0087B8F700FCFEFF0074ACF400075CE7000659
      E6000C5FE6000C5EE50087B6F300E0EDFC000250E100014FE0008EBCF400FFFF
      FF00FCFCFC00286FC700003EAC00000000000000000029ADD60094EFF70052CE
      E700BDE7F7009CFFFF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF0063D6
      EF0018A5D600000000000000000000000000000000000000000000000000298C
      BD005AB5E700B5DEF700B5DEF700B5DEF700B5DEF700B5DEF700B5DEF700B5DE
      F700B5DEF700E7FFFF00E7FFFF00DEEFFF00B5DEF7005AB5E700298CBD000000
      00000000000000000000000000000000000010AD420018B52900A5DEBD00FFFF
      FF00FFFFFF0021BD310010AD420029B55A00F7F7FF00FFFFFF00FFFFFF00FFFF
      FF00F7FFFF0031BD420039BD42004AC64A005AC65A005AC663006BCE6B00FFFF
      FF00FFFFFF00C6E7D60021AD630021AD63000D73FF000B72FF00B5D8FF00FFFF
      FF00FEFFFF00116DF3000F6AF2003184F400BFDAFB00FFFFFF004D95F200095D
      E900075CE70095C0F600FFFFFF008AB8F4000353E2000252E1001365E500D7E6
      FB00FFFFFF0078ABE2000046C100003993000000000029ADD6009CEFFF0063DE
      EF008CCEEF00BDFFFF008CF7FF0094F7FF0094F7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF008CEF
      FF0029ADD6000000000000000000000000000000000000000000298CBD005AB5
      E700E7FFFF00E7FFFF00E7FFFF00E7FFFF00E7FFFF009CADAD00525252007B7B
      7B00E7FFFF00E7FFFF00E7FFFF00E7FFFF00E7FFFF00E7FFFF00A5C6E70039A5
      D6000000000000000000000000000000000010AD420018B52900EFF7FF00FFFF
      FF00A5DEB50018B52900D6EFDE00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7FFF70029BD420042C64A0052C65A005AC663006BCE6B00EFF7
      FF00FFFFFF00CEE7D60029AD6B0029AD63000D73FF001C7FFF00EDF6FF00FFFF
      FF00B4D8FE001470F4001570F300106CF2002077F200B5D5FB00F2F8FE004F97
      F30060A0F300FFFFFF0091BDF6000E62E6000456E5000354E3000353E200BBD8
      FA00FFFFFF00BAD5F3000155D400004ECB000000000029ADD60094EFF7008CF7
      FF004ABDDE00CEF7FF00A5FFFF0094F7FF008CF7FF008CF7FF008CF7FF008CEF
      FF008CEFFF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70084E7FF00A5F7
      FF004AC6E7000000000000000000000000000000000000000000298CBD00B5DE
      F700E7FFFF00E7FFFF00E7FFFF00E7FFFF00E7FFFF0052525200212121002121
      2100C6E7F700E7FFFF00E7FFFF00E7FFFF00E7FFFF00E7FFFF00E7FFFF00298C
      BD000000000000000000000000000000000018B5390021BD2100F7FFFF00FFFF
      FF0094D6AD0018B52900CEEFDE00FFFFFF00F7F7FF00F7FFF700089C6B00109C
      6300FFFFFF00F7FFF70029B54A0042BD520052C65A005AC65A0063CE6300D6E7
      DE00FFFFFF00CEE7D60031B56B0029AD63000E74FF003891FF00FBFCFF00FFFF
      FF0069ADFE001675F7001B78F6001370F600116DF300227AF400B2D4FB00F3F8
      FE00E7F2FE0063A1F3000C63E900075BE700065AE6000557E5000455E3007EB2
      F300FFFFFF00E3EFFC000562E6000058E7000000000029ADD60094EFF7009CFF
      FF005AD6EF0063BDE700BDE7F700BDEFF700C6F7FF00C6F7FF00BDFFFF009CF7
      FF0084EFFF008CEFFF008CEFFF008CEFFF008CEFFF0063D6F70084E7FF00A5F7
      FF00A5F7FF0021A5D600000000000000000000000000000000004A9CC600B5DE
      F700CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF0073949400212121005A5A
      5A00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00298C
      BD000000000000000000000000000000000018B5420021BD2900FFFFFF00FFFF
      FF008CD6A50018B5290021BD3100D6EFDE0029B5520010A55A0010A56300109C
      630029B56300FFFFFF0039BD5A0039BD5A004AC65A005AC6630063C66300DEEF
      E700FFFFFF00D6E7DE0031B5630031B563001378FF0055A4FF00FEFFFF00FFFF
      FF0065ABFE001878FB001676F8001E7AF7001774F600126EF4009FCAFB00FFFF
      FF00FBFEFF004A93F3000C65ED00095FEA00085CE900065AE6000558E6006FA9
      F300FFFFFF00EDF6FF000667F000005CED000000000029ADD6009CEFFF0094FF
      FF0094F7FF0063D6EF0052CEE7005AC6E70063C6E70063C6E70073C6E700BDE7
      F700B5F7FF0084EFFF008CEFFF008CEFFF008CEFFF0063D6F70084E7FF0094F7
      FF0094F7FF0042BDE7000000000000000000000000000000000039A5D600B5DE
      F700CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF0063848400CEF7
      FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF0039A5
      D6000000000000000000000000000000000018B5420021BD2100FFFFFF00FFFF
      FF0094D6A50018BD210018B5310018B5420018AD520018AD520018AD520010A5
      5A0010A56300F7FFF700F7FFF70039BD63004AC6630052C6630063CE6300DEEF
      E700FFFFFF00D6E7DE0039BD5A004AC652001A7DFF0068AFFF00FFFFFF00FFFF
      FF007BB8FF001B7BFC001979FB001877FA001C79F80070B0FB00F0F7FF00A3CC
      FB00B8D8FC00F0F7FE005097F4000E67ED000A62EB00095EEA00075CE70088BB
      F600FFFFFF00E1F0FF000568F400005DF2000000000029ADD6009CEFFF0094FF
      FF0094F7FF009CFFFF0094FFFF0094F7FF008CEFFF0084EFFF0063D6EF0042B5
      DE00ADDEF700C6F7FF0094F7FF008CEFFF008CEFFF007BDEFF0094EFFF00A5F7
      FF00A5F7FF006BD6EF0018A5D6000000000000000000000000005AB5D600B5DE
      F700CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00636363006B6B
      6B009CADAD00B5EFFF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF0039A5
      D6000000000000000000000000000000000021B5420029BD2900F7FFFF00FFFF
      FF00A5DEB50021BD290021BD290021B5390018B5420018B5420018B5420010AD
      4A0010AD520021AD5A00F7FFF70039BD630042BD630052C663005AC66300F7F7
      FF00FFFFFF00CEE7DE004AC64A0042C64A001D7FFF006CB1FF00F8FCFF00FFFF
      FF00CCE5FF001C7EFC001C7DFC002B87FC009ECBFE00FFFFFF0076B4FB001472
      F6001F79F600BCDAFC00FFFFFF0079B2F8000C65EE000B63ED000A60EB00C6DE
      FB00FFFFFF00B7DAFF000163F800005EF4000000000029ADD6009CEFFF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF007BE7
      F70042BDE7007BCEE700BDE7F700BDE7F700BDE7F700BDE7F700CEEFF700CEEF
      F700CEEFF700C6EFFF0029ADD60000000000000000000000000039A5D600B5DE
      F700B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00636363002929
      2900292929005A5A5A00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF0039A5
      D6000000000000000000000000000000000021B54A0029BD2900E7F7FF00FFFF
      FF00FFFFFF00B5DEC60021BD310021B5390021B5420018B5390018B5390018B5
      420010AD420010A5520031BD5200EFF7F70039BD5A0042BD5A00D6E7DE00FFFF
      FF00FFFFFF00CEE7D60042C64A0039BD4A003D95FF005AA7FF00E9F4FF00FFFF
      FF00FFFFFF002D8AFF001D7FFE0089C1FE00FFFFFF00A0CCFE001877FA001676
      F8001674F700237DF700C4DEFC00FFFFFF000F69F0000D67EE002A7FF300FFFF
      FF00FFFFFF0073B5FF00005BFC00005EF4000000000029ADD6009CF7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF0094F7
      FF008CEFFF005AD6EF005AD6EF005AD6EF005AD6EF0031B5DE0021A5D60029AD
      D60029ADD60029ADD60021A5D60000000000000000000000000042B5F70094F7
      FF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00B5EFFF0084BDD6006363
      6300393939003939390073949400B5EFFF00B5EFFF00B5EFFF00B5EFFF0039A5
      D600000000000000000000000000000000000000000029BD39009CD6AD00FFFF
      FF00FFFFFF00C6E7CE0029BD390021B5390021B5390021B5390018B5390018B5
      420018B5420010AD4A0018AD5200E7F7EF0031BD520039BD5200E7F7FF00FFFF
      FF00F7FFFF0052C64A0042C64A0000000000000000003E96FF00CEE6FF00FFFF
      FF00FFFFFF00B0D7FF001E80FF004298FE0086C0FF002B88FC001B7AFB001978
      FA001777FA001674F8002D84F80091C2FB00116DF300116BF300B2D4FC00FFFF
      FF00FBFEFF002283FF00005FFF00000000000000000029ADD600A5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CF7FF008CF7FF008CF7
      FF008CEFFF0094F7FF008CEFFF007BEFFF0084EFFF0039BDE700000000000000
      000000000000000000000000000000000000000000000000000042B5F70094F7
      FF00B5EFFF00B5EFFF00B5EFFF00B5EFFF00849CA50073949400B5EFFF00B5EF
      FF005A5A5A00393939004A6B6B00B5EFFF00B5EFFF00B5EFFF00B5EFFF0042B5
      F700000000000000000000000000000000000000000031BD420042CE3900FFFF
      FF00FFFFFF00FFFFFF00C6E7CE0029BD420021B5420021B5390021B5390021B5
      390018B5390018B5420018B5420018B5420031BD4200C6E7CE00FFFFFF00FFFF
      FF00CEE7DE0042C64A0042C6420000000000000000004298FF0097C9FF00FEFF
      FF00FFFFFF00FFFFFF0075B6FF001E80FF001E80FF001D7FFF001C7DFE001C7D
      FC001A79FB001878FA001676F8001673F7001673F400BBDDFF00FFFFFF00FFFF
      FF0097C9FF000065FF000065FF00000000000000000029ADD600B5F7FF0094FF
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009CEFFF009CEFFF009CEF
      FF009CEFFF009CEFFF009CEFFF009CEFFF009CF7FF0039B5DE00000000000000
      00000000000000000000000000000000000000000000000000005AC6F70094F7
      FF00B5EFFF00B5EFFF00B5EFFF0084BDD6004242420042424200849CA500B5EF
      FF004A6B6B004242420063848400B5EFFF00B5EFFF00B5EFFF00B5EFFF0042B5
      F70000000000000000000000000000000000000000000000000039C64200A5DE
      B500FFFFFF00FFFFFF00FFFFFF00C6E7CE0029BD390018B5310018B5310018B5
      310018B5310018B5310018B5310021BD3100B5DEC600FFFFFF00FFFFFF00E7F7
      FF0042C64A0042C64A000000000000000000000000000000000054A4FF00E1F0
      FF00FFFFFF00FFFFFF00FFFFFF008FC4FF001F81FF001E80FF001E80FF001D7E
      FE001C7DFE001B7AFC001879FA001B79FA00A6CFFE00FFFFFF00FFFFFF00E7F3
      FF00177BFF000065FF0000000000000000000000000018A5D6007BCEE700B5FF
      FF0094FFFF0094FFFF0094F7FF0094F7FF0084EFFF0031ADDE0031ADDE0039B5
      DE0042B5DE0042B5DE004ABDDE004ABDDE005ABDE70021A5D600000000000000
      00000000000000000000000000000000000000000000000000005AC6F70094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF00525252004A4A4A00849CA50084BD
      D6005252520052525200A5C6E70094F7FF0094F7FF0094F7FF0094F7FF0042B5
      F70000000000000000000000000000000000000000000000000042C652004AC6
      4A00F7FFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00B5DEC600ADDEBD00A5DE
      BD00A5DEB5009CD6AD009CD6AD00FFFFFF00FFFFFF00FFFFFF00F7FFFF004AC6
      4A0042C64A0039C64A00000000000000000000000000000000005CA7FF008CC2
      FF00F8FCFF00FFFFFF00FFFFFF00FFFFFF00F8FCFF0079B8FF003C95FF002D8B
      FF002D8AFE004197FE008AC1FE00FFFFFF00FFFFFF00FFFFFF00FBFEFF00499D
      FF000065FF00036AFF000000000000000000000000000000000021A5D60084D6
      EF0094E7F70094E7F7009CEFFF00A5F7FF005ACEE70010A5D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008CD6F70063DE
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF00849CA500638484007373
      7B00849CA5008CD6F70094F7FF0094F7FF0094F7FF0094F7FF0063DEFF0042B5
      F7000000000000000000000000000000000000000000000000000000000042C6
      4A0042CE4200EFF7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADDEBD0042C64A0042BD
      520042BD52000000000000000000000000000000000000000000000000005BA6
      FF009ACBFF00F2F8FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1E7FF00459AFF000268
      FF00066CFF0000000000000000000000000000000000000000000000000018A5
      D60021A5D60021A5D60029ADD60029ADD60021A5D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000063DE
      FF0063DEFF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0063DEFF0042B5F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000039BD4A0039C6420094D6A500F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7F7FF0039C6390039BD420039BD520039BD
      6300000000000000000000000000000000000000000000000000000000000000
      00005EA9FF0078B8FF00D0E7FF00F8FCFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7F3FF008AC1FF001F81FF00056BFF00096F
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009CDEF70073E7FF0073E7FF0073E7FF0073E7FF0073E7FF0073E7FF0073E7
      FF0073E7FF0073E7FF0073E7FF0073E7FF0073E7FF0073E7FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000039C64A0029BD390029BD310094D6AD009CD6B5009CD6AD009CDE
      AD009CD6AD009CD6B50031C6310029BD390029B54A0029B55A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007FBBFF005AA6FF0087C0FF00BBDDFF00DAEDFF00E7F3FF00E7F3
      FF00DEEFFF00C7E2FF0096C7FF0052A1FF001C7FFF000E74FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000031BD420029BD420029BD390029BD390029BD
      420029BD420021B5420021B54A0018AD5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007DBAFF005AA6FF005AA6FF0060AAFF0060AA
      FF0052A1FF003E96FF002C8AFF00197DFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993E3E00913233008C535400A7ADAC00C0C2C100C2BFBD00BDBFBD00B5B5
      B500915353007D2222008E353500000000000000000000000000000000000000
      0000000000000000000000000000ADADAD00A59C9C00AD9C9C00ADA59C00AD9C
      9400A594940094848400736B6B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F2B28007F2B
      28007F2B28007F2B2800A1828300A1828300A1828300A1828300A1828300A182
      8300A1828300A1828300A1828300A1828300A18283007F2B28007F2B28007F2B
      28007F2B28000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AC5B
      5500C24B4B00BB4344008E50510097787700CCAFAC00F8F0ED00FCFCFB00E5E5
      E3009E53520076111100A5383800A04141000000000000000000000000000000
      000000000000ADADAD00ADADAD00E7D6CE00F7E7DE00F7EFE700EFEFEF00EFEF
      EF00EFEFEF00EFE7E700EFDED600BDADA5007B73730073737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800B04E4C00C24A
      4A00BA4A4900B44141008B595900E2D9D900C9BDBD00C4AFAD00E2CFCC00F3EB
      E700F3EDEA00E5DEDE00DAE0DE00DAE0DE00B16564007A18170082212100A539
      3900AD4445007F2B280000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AB5B
      5400C04B4B00B84645009357570080383800963E3E00D9C7C500FFFFFF00F8F4
      F300A558570076111100A43737009F4041000000000000000000000000000000
      0000ADADAD00E7D6CE00F7EFEF00EFEFEF00EFEFEF00E7DEDE00E7E7E700E7E7
      E700E7E7E700EFEFEF00EFEFEF00EFEFEF00EFE7E700B5A59C00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000006E0000006E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000006E0000006E000000
      000000000000000000000000000000000000000000007F2B2800B4514F00C24A
      4A00C24E4E00BB4546008B3C3D00E2D9D9007916170079161700AC4E4C00F4E7
      E300FFFFFC00FAF6F200EFF6F300EFF6F300B16564007915150082202000A93A
      3A00B44848007F2B280000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AB5B
      5400C04A4B00B64444009D5F5F00863C3B0079131300A9908F00EBF6F300FFFF
      FF00AA5E5C00700E0E00A33636009F404100000000000000000000000000ADAD
      AD00EFE7E700EFEFEF00EFEFEF00E7DEDE00CEAD9C00BD846300C6735200C67B
      5200CE846300D69C8400DECEC600E7E7E700EFEFEF00F7EFEF00CEBDB5006363
      6300000000000000000000000000000000000000000000000000000000000000
      000000006E000018EB000008CA0000006E000000000000000000000000000000
      00000000000000000000000000000000000000006E000002DA000004E3000000
      6E0000000000000000000000000000000000000000007F2B2800B2504E00C24A
      4A00C04D4D00B84444008C404000E2D9D9007916170079161700B2535000E3D5
      D300FAF8F400FEF8F400FCFFFB00FCFFFF00B16564007915150082202000A73A
      3A00B24747007F2B280000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AB5B
      5400C04B4B00B6424200A5606000A36D6B008E4747008B777800BDC0BC00F0E7
      E600AC5C5C0076111100A43737009F4041000000000000000000ADADAD00F7EF
      E700EFEFEF00EFEFEF00D6B5A500C6734A00BD633100BD633100C6947B00DEBD
      A500C6734200BD633100BD633900CE8C6B00E7D6CE00EFEFEF00F7EFEF00C6BD
      B500636363000000000000000000000000000000000000000000000000000000
      6E00001EEB000019EB000018EB000007C90000006E0000000000000000000000
      000000000000000000000000000000006E000001D7000008EB000008EB000006
      E80000006E00000000000000000000000000000000007F2B2800B2504E00C24A
      4A00C04D4D00B74343008F414100E2D9D9007916170079161700B2535000CFC0
      BF00EBEAE700FAF4F200FFFFFF00FCFFFF00B16564007915150082202000A73A
      3A00B24747007F2B280000000000000000000000000000000000000000000000
      0000000000000000000000000000993E3E00913233008C535400A7ADAC00AB5B
      5500C04B4C00BC464700B74A4B00BD5D5C00B85B5B00B0515100B2515100C25E
      5E00B7484800AC393900BA4747009D3E3F0000000000ADADAD00F7E7DE00F7F7
      F700EFEFEF00D6A58C00BD633900C6633100C6633100BD734A00D6CECE00F7F7
      F700E7C6B500C6633100C6633100BD633100C6734A00DECEC600EFEFEF00F7EF
      EF00A59C94007373730000000000000000000000000000000000000000000000
      6E000014D900001EEB000019EB000019EB000008C80000006E00000000000000
      0000000000000000000000006E000002D6000008EB000006EB000008EB000000
      CC0000006E00000000000000000000000000000000007F2B2800B2504E00C24A
      4A00C04D4D00B743430091424100E2D9D9007916170079161700B2535000B0A0
      9F00D4D4D100EEE7E300FFFFFF00FCFFFF00B16564007814140083202000A73A
      3A00B24747007F2B280000000000000000000000000000000000000000000000
      00000000000000000000AC5B5500C24B4B00BB4344008E50510097787700AA59
      5300A53A3800AA4D4B00C0747300C7828200C9848300CA828100C6787700C479
      7A00C9888600CB878600C25656009C3B3C0000000000C6C6C600F7F7F700EFEF
      EF00DEAD9400BD633100C6633100C6633100C6633100C6734A00D6CECE00F7F7
      F700DEAD9400CE633100C6633100C6633100BD633100C6734A00E7DED600EFEF
      EF00F7E7DE00736B6B0000000000000000000000000000000000000000000000
      000000006E000014D700001FEB00001AEB000019EB000009CC0000006E000000
      00000000000000006E000004E0000009EB000008EB000008EB000000C8000000
      6E0000000000000000000000000000000000000000007F2B2800B2504E00C24A
      4A00C04D4D00B542420093434300E2D9D9007916170079161700B25350008C83
      8200A7AFAD00D3D4D000FCFFFF00FCFFFF00B165640074111100801E1E00A639
      3900B24747007F2B280000000000000000000000000000000000000000000000
      00000000000000000000AB5B5400C04B4B00B84645009357570080383800A552
      4B00A74C4800E5D3D000F6F0F000F4EEED00F4EFED00F4EFED00F6EFEE00F6EE
      ED00FAF8F700E3D0CF00BA5555009937390000000000F7E7E700F7F7F700E7D6
      CE00C66B3900C6633100C6633100CE633100CE633100CE633100CE846300DE9C
      7B00CE6B3900CE633100CE633100C6633100C6633100BD633100CE8C6B00EFEF
      EF00F7F7F700B5A59C009C9C9C00000000000000000000000000000000000000
      00000000000000006E000014D6000020EB00001BEB00001BEB00000ED6000000
      6E0000006E000004E2000007EB000006EB000009EB000000C90000006E000000
      000000000000000000000000000000000000000000007F2B2800B2504E00C24A
      4A00BF4C4C00B74444009C414100E2D9D900E2D9D900E2D9D900E2D9D900E2D9
      D900E2D9D900E2D9D900E2D9D900E2D9D900B1656400831C1C008C272700AB3D
      3D00B24647007F2B280000000000000000000000000000000000000000000000
      00000000000000000000AB5B5400C04A4B00B64444009D5F5F00863C3B00A551
      4A00AD545100F3EDEA00F4F2F200EDE6E500EEE7E600EEE7E600EEE7E600EDE6
      E500F4F4F300E5D0CF00B853530099373800D6CECE00F7F7F700F7F7F700D694
      7300C6633100C6633100CE6B3100CE633100CE633100CE6B3900CE846300DE94
      6B00CE734A00CE633100CE633100CE633100C6633100C6633100BD633100E7CE
      C600F7F7F700EFDED6006B6B6B00000000000000000000000000000000000000
      0000000000000000000000006E000016D7000021EB00001DEB00001CEB00000E
      DF000008E8000008EB000006EB000008EB000001D90000006E00000000000000
      000000000000000000000000000000000000000000007F2B2800B2514E00C24A
      4A00BF4B4B00BD4A4900B7464600BF5B5B00CE777700D07B7B00CC747500CE6E
      6F00CB6C6C00C7686800C4686800C05A5A00B6444300B4414100B6434300BD49
      4900B14546007F2B280000000000000000000000000000000000000000000000
      00000000000000000000AB5B5400C04B4B00B6424200A5606000A36D6B00A551
      4A00AF545100EFE6E300DCDADA00CBC7C600CECACA00CECACA00CECACA00CBC7
      C600D8DCDA00E2CCCB00BA54540099373800EFDED600F7F7F700EFE7E700C673
      4200C66B3900CE6B3900CE6B3100CE633100CE633100C66B3900D6CECE00FFF7
      F700DE9C7B00CE633100CE633100CE633100CE633100C6633100C6633100D69C
      8400EFEFEF00F7EFE7008C847B00000000000000000000000000000000000000
      000000000000000000000000000000006E000016D6000021EB000019EB000012
      EB00000FEB00000BEB00000AEB000002D70000006E0000000000000000000000
      000000000000000000000000000000000000000000007F2B2800C24A4A00C24A
      4A00B2444300B74B4900BC515100BB504F00BB4D4C00BB4D4D00BB4D4D00BB4D
      4D00BB4D4C00BB4D4C00BA4C4B00BB504F00C0585700C15B5A00C1575700C14E
      4E00B04445007F2B2800000000000000000000000000993E3E00913233008C53
      5400A7ADAC00C0C2C100AB5B5500C04B4C00BC464700B74A4B00BD5D5C00A551
      4A00AD535100F0E7E600E6E3E200D8D3D100DAD5D500DAD5D500DAD5D500D8D3
      D100E3E5E300E2CCCC00BA54530099373800EFDED600FFFFFF00E7CEC600C66B
      3900CE6B3900CE6B3900CE633100CE633100CE633100C66B3900CEC6C600FFFF
      FF00EFC6AD00CE6B3900CE633100CE633100CE6B3100CE6B3900C6633100CE7B
      5A00EFEFEF00F7F7EF00A5949400000000000000000000000000000000000000
      00000000000000000000000000000000000000006E000019DE00001AEB000016
      EB000013EB000011EB000008D70000006E000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800C24A4A00C24A
      4A00CA8C8A00CA8C8A00CB8F8C00CC908E00CC908E00CC908E00CC908E00CC90
      8E00CC908E00CC908F00CC908F00CC908F00CC908E00CC918F00CB908E00C055
      5500C24A4A007F2B28000000000000000000AC5B5500C24B4B00BB4344008E50
      510097787700CCAFAC00AA595300A53A3800AA4D4B00C0747300C7828200A551
      4A00AF545100EFE6E600E0DDDC00CFCBCA00D1CFCE00D1CFCE00D1CFCE00CFCB
      CA00DDDEDD00E3CECB00BB55540099373800EFDED600FFFFFF00E7BDAD00CE6B
      3900CE6B3900CE6B3900CE633100CE633100CE633100CE633100BD947B00EFEF
      EF00FFF7F700DEA58C00CE6B3900CE633100CE6B3100CE6B3900C66B3900C673
      4A00F7EFEF00F7F7F700AD9C9400000000000000000000000000000000000000
      00000000000000000000000000000000000000006E000020E700001FEB00001B
      EB000018EB000017EB000011D70000006E000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800C24A4A00C24A
      4A00D7B4B100FEFCFC00FEFCFC00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FFFE
      FE00FFFEFE00FFFEFE00FFFEFE00FFFEFE00FEFCFC00FCFBFB00DDB7B600B54B
      4B00C24A4A007F2B28000000000000000000AB5B5400C04B4B00B84645009357
      570080383800963E3E00A5524B00A74C4800E5D3D000F6F0F000F4EEED00A551
      4A00AD535000F2E9E900F6F2F200EEE5E300EEE7E600EEE7E600EEE7E600EEE5
      E300F6F4F200E6D0CF00BA55540099383800EFDED600FFFFFF00EFC6AD00CE73
      4200D6734200CE6B3900CE633100CE633100CE633100CE633100C66B3900C6A5
      9400F7F7EF00FFF7F700E7A58400CE633100CE6B3100CE6B3900CE6B3900CE73
      4A00F7F7EF00FFF7F700ADA59C00000000000000000000000000000000000000
      000000000000000000000000000000006E00032AE7000128EB000023EB000021
      EB000020EB00001FEB000021EB000013D60000006E0000000000000000000000
      000000000000000000000000000000000000000000007F2B2800C24A4A00C24A
      4A00D9B8B600FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00DDB7B700B449
      4800C24A4A007F2B28000000000000000000AB5B5400C04A4B00B64444009D5F
      5F00863C3B0079131300A5514A00AD545100F3EDEA00F4F2F200EDE6E500EEE7
      E6009D4B4800C7C1C000CFCFCF00CCC6C600CCC7C700CCC7C700CCC7C700CCC6
      C600CFCFCF00C7B7B6009A48480000000000EFDED600FFFFFF00EFD6C600D673
      4200D6734200CE6B3900CE6B3100CE633100CE633100CE633100CE633100C66B
      3900D6B5A500F7F7F700F7F7EF00D6845200CE6B3900CE6B3900CE6B3900D67B
      5200F7F7F700FFF7F700ADA59C00000000000000000000000000000000000000
      0000000000000000000000006E000428DC000831EB00042CEB00022CEB00001A
      D9000019D9000026EB000021EB000021EB000014D70000006E00000000000000
      000000000000000000000000000000000000000000007F2B2800C24A4A00C24A
      4A00D9B6B400FEFEFE00FEFEFE00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00FEFEFE00FEFEFE00DDB7B600B449
      4800C24A4A007F2B28000000000000000000AB5B5400C04B4B00B6424200A560
      6000A36D6B008E474700A5514A00AF545100EFE6E300DCDADA00CBC7C600CECA
      CA00CECACA00CECACA00CBC7C600D8DCDA00E2CCCB00BA545400993738000000
      000000000000000000000000000000000000EFDED600FFFFFF00FFEFE700E784
      5200DE7B4A00D6734200CE6B3900CE734200CE734A00CE6B3900CE633100CE63
      3100C6734200EFE7E700FFFFFF00E7B59C00CE6B3900D6734200D6734200DE9C
      7B00FFFFFF00FFF7EF00A59C9C00000000000000000000000000000000000000
      00000000000000006E00092FE0000C37EB000A32EB000A36EB000121D7000000
      6E0000006E00001AD6000028EB000023EB000023EB000014D60000006E000000
      000000000000000000000000000000000000000000007F2B2800C24A4A00C24A
      4A00D9B6B400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00DDB7B600B449
      4800C24A4A007F2B28000000000000000000AB5B5500C04B4C00BC464700B74A
      4B00BD5D5C00B85B5B00A5514A00AD535100F0E7E600E6E3E200D8D3D100DAD5
      D500DAD5D500DAD5D500D8D3D100E3E5E300E2CCCC00BA545300993738000000
      000000000000000000000000000000000000F7E7DE00FFFFF700FFFFFF00F7AD
      8400EF8C5200DE7B4A00D67B4A00D6C6BD00F7E7DE00DEA58C00CE633100CE63
      3100CE6B4200EFE7E700FFFFFF00E7BDAD00D6734200D6734200D6734200EFD6
      C600FFFFFF00F7E7E700A5A59C00000000000000000000000000000000000000
      000000006E000E36E000113EEB000E38EB000E3AEB000220CC0000006E000000
      00000000000000006E000015CC000129EB000024EB000024EB000016D7000000
      6E0000000000000000000000000000000000000000007F2B2800C24A4A00C24A
      4A00D9B6B400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00DDB7B600B449
      4800C24A4A007F2B28000000000000000000AA595300A53A3800AA4D4B00C074
      7300C7828200C9848300A5514A00AF545100EFE6E600E0DDDC00CFCBCA00D1CF
      CE00D1CFCE00D1CFCE00CFCBCA00DDDEDD00E3CECB00BB555400993738000000
      000000000000000000000000000000000000F7EFE700EFDED600FFFFFF00FFE7
      D600FF9C6300EF8C5A00DE7B4A00D6C6BD00FFFFFF00F7EFE700DE946B00D67B
      4A00DEAD9400F7F7F700F7F7F700DEA58C00DE7B4A00DE7B4A00E7946B00FFF7
      F700FFFFFF00DECEC600C6BDB500000000000000000000000000000000000000
      6E00143FE6001543EB00133EEB001340EB00031FC80000006E00000000000000
      0000000000000000000000006E000014C800022BEB000024EB000025EB000019
      DB0000006E00000000000000000000000000000000007F2B2800C24A4A00C24A
      4A00D9B6B400FEFEFE00FEFEFE00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00FEFEFE00FEFEFE00DDB7B600B449
      4800C24A4A007F2B28000000000000000000A5524B00A74C4800E5D3D000F6F0
      F000F4EEED00F4EFED00A5514A00AD535000F2E9E900F6F2F200EEE5E300EEE7
      E600EEE7E600EEE7E600EEE5E300F6F4F200E6D0CF00BA555400993838000000
      00000000000000000000000000000000000000000000F7E7DE00FFFFFF00FFFF
      FF00FFCEAD00FFA57300FF9C6300DE9C7B00E7E7E700FFFFFF00FFF7F700F7EF
      E700FFFFFF00FFFFFF00E7DED600EF8C6300EF8C5A00EF8C5A00FFE7D600FFFF
      FF00FFF7EF00C6BDB50000000000000000000000000000000000000000000000
      6E001947E8001947EB001846EB000623C90000006E0000000000000000000000
      000000000000000000000000000000006E000015C900022CEB00012AEB00001B
      DB0000006E00000000000000000000000000000000007F2B2800C24A4A00C24A
      4A00D9B6B400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00DDB7B600B449
      4800C24A4A007F2B28000000000000000000A5514A00AD545100F3EDEA00F4F2
      F200EDE6E500EEE7E600EEE7E6009D4B4800C7C1C000CFCFCF00CCC6C600CCC7
      C700CCC7C700CCC7C700CCC6C600CFCFCF00C7B7B6009A484800000000000000
      00000000000000000000000000000000000000000000FFF7EF00EFDED600FFFF
      FF00FFFFF700FFD6B500FFBD8C00FFAD7B00E7B59C00E7DED600E7DEDE00E7DE
      DE00E7E7E700EFDED600F7AD8400FF9C6B00FF9C6B00FFD6BD00FFFFFF00FFFF
      FF00E7D6CE009C9C9C0000000000000000000000000000000000000000000000
      000000006E001842E2000A28C90000006E000000000000000000000000000000
      00000000000000000000000000000000000000006E000018CD000020D9000000
      6E0000000000000000000000000000000000000000007F2B2800C24A4A00C24A
      4A00D9B6B400FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00DDB7B600B449
      4800C24A4A007F2B28000000000000000000A5514A00AF545100EFE6E300DCDA
      DA00CBC7C600CECACA00CECACA00CECACA00CBC7C600D8DCDA00E2CCCB00BA54
      5400993738000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7EFE700EFDE
      D600FFFFFF00FFFFFF00FFEFD600FFE7B500FFD6A500F7C69C00F7C69C00F7BD
      9C00F7BD9C00FFBD8C00FFBD8400FFBD9400FFE7D600FFFFFF00FFFFFF00F7E7
      DE00ADADAD000000000000000000000000000000000000000000000000000000
      00000000000000006E0000006E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000006E0000006E000000
      000000000000000000000000000000000000000000007F2B2800C24A4A00C24A
      4A00D9B7B500FEFEFE00FEFEFE00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00FEFEFE00FEFEFE00DDB7B600B54A
      4A00C24A4A007F2B28000000000000000000A5514A00AD535100F0E7E600E6E3
      E200D8D3D100DAD5D500DAD5D500DAD5D500D8D3D100E3E5E300E2CCCC00BA54
      5300993738000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7E7
      DE00EFDED600FFFFFF00FFFFFF00FFFFF700FFFFE700FFF7D600FFEFBD00FFE7
      B500FFE7B500FFE7BD00FFE7D600FFFFF700FFFFFF00FFFFFF00F7EFE700ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F2B2800C24A4A00C24A
      4A00D3B1AF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00DDB8B600C24A
      4A00C24A4A007F2B28000000000000000000A5514A00AF545100EFE6E600E0DD
      DC00CFCBCA00D1CFCE00D1CFCE00D1CFCE00CFCBCA00DDDEDD00E3CECB00BB55
      5400993738000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7EFE700EFDED600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700EFDED600ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F2B28007F2B
      2800C1A09E00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00E0BAB7007F2B
      28007F2B2800000000000000000000000000A5514A00AD535000F2E9E900F6F2
      F200EEE5E300EEE7E600EEE7E600EEE7E600EEE5E300F6F4F200E6D0CF00BA55
      5400993838000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7EFE700EFDED600F7EFEF00FFF7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700F7EFE700EFDED600ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009D4B4800C7C1C000CFCF
      CF00CCC6C600CCC7C700CCC7C700CCC7C700CCC6C600CFCFCF00C7B7B6009A48
      4800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7EFE700EFDED600EFDED600EFDED600EFDED600EFDE
      D600EFDED600EFDED600EFDED600EFDED600F7EFE70000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF00FE00FF000000000000000000F8003F00
      0000000000000000F0001F000000000000000000E0000F000000000000000000
      C000070000000000000000008000030000000000000000008000030000000000
      0000000000000100000000000000000000000100000000000000000000000100
      0000000000000000000001000000000000000000000001000000000000000000
      0000010000000000000000000000010000000000000000000000010000000000
      0000000000000100000000000000000000000100000000000000000080000300
      0000000000000000800003000000000000000000C00007000000000000000000
      E0000F000000000000000000F0001F000000000000000000F8003F0000000000
      00000000FF00FF000000000000000000FFFFFFFF81FFFF81FFFFFFFFFFFFFFFE
      007FFE007FFFFFFFFFFFFFF8001FF8001F807FFFFFFF7FF0000FF0000F8003FF
      FFFE7FE00007E0000780001FFFFC7FC00003C0000380001FFFF87FC00003C000
      0380000FFFF07F80000180000180000FF0003F800001800001800007E0001F00
      0000000000800007C0000F000000000000800007C0000F000000000000800003
      C0000F000000000000800003C0000F000000000000800001C0000F0000000000
      00800001C0000F000000000000800001C0000F80000180000180003FC0000F80
      000180000180003FC0000FC00003C0000380003FC0000FC00003C00003C03FFF
      C0000FE00007E00007E07FFFE0001FF0000FF0000FFFFFFFF0003FF8003FF800
      3FFFFFFFFFFFFFFE00FFFE00FFFFFFFFFFFFFFFFFFFFFFF001FE00FFFFFFFFC0
      0007FFE000F8003FFFFFFF800003FFE000F0001FF9FF9F800003FFE000E0000F
      F0FF0F800003FFE000C00007E07E07800003FE0000800003E03C07800003FC00
      00800003F0180F800003FC0000800001F8001F800003FC0000000001FC003F80
      0003FC0000000001FE007F800003800000000001FF00FF800003000000000001
      FF00FF800003000000000001FE007F800003000001000001FC003F8000030000
      1F000001F8001F80000300001F000001F0180F80000300001F000001E03C0780
      000300001F800003E07E0780000300003F800003F0FF0F8000030007FFC00007
      F9FF9F8000030007FFE0000FFFFFFF8000030007FFF0001FFFFFFFC000070007
      FFF8003FFFFFFFFFFFFF800FFFFC007F00000000000000000000000000000000
      000000000000}
  end
  object isql1: TIB_DSQL
    DatabaseName = 'CLIS'
    SQL.Strings = (
      '  INSERT INTO CCCLIENTES ('
      '    IDCLIENTE,'
      '    CODCLIENTE,'
      '    IDGRUPO,'
      '    IDLISTAPRECIO,'
      '    IDTIPOCTE,'
      '    IDCONDPAGO,'
      '    IDCLIENTEMS,'
      '    RAZSOCIAL,'
      '    DOMICILIO,'
      '    NUM_EXTERIOR,'
      '    NUM_INTERIOR,'
      '    DOMICILIO2,'
      '    COLONIACTE,'
      '    COLONIACTE2,'
      '    CODPOSTAL,'
      '    LOCALIDAD,'
      '    ESTADO,'
      '    LADA,'
      '    TELEFONO1,'
      '    TELEFONO2,'
      '    TELEFONO3,'
      '    EMAIL,'
      '    PAGINAWEB,'
      '    RFC,'
      '    CURP,'
      '    REPRESCTE,'
      '    CONTACTO1,'
      '    CONTACTO2,'
      '    JEFEPAGOS,'
      '    JEFECOMPRAS,'
      '    IDSUCURSAL,'
      '    IDMONEDA,'
      '    IDRUTA,'
      '    IDZONA,'
      '    IDVENDEDOR,'
      '    FULTPAGCTE,'
      '    FECULTVTA,'
      '    FECHAALTA,'
      '    FECBAJACTE,'
      '    LIMCREDCTE,'
      '    SDOACTUAL,'
      '    DIASCREDIT,'
      '    DIASPPAGO,'
      '    PDESCPPAGO,'
      '    NOTASREVIFAC,'
      '    NOTASPAGOFAC,'
      '    COMENTARIOS,'
      '    STATUSCTE,'
      '    ESPERMORAL,'
      '    USERACT,'
      '    FECHAACT)'
      '  VALUES ('
      '    ?IDCLIENTE,'
      '    ?CODCLIENTE,'
      '    ?IDGRUPO,'
      '    ?IDLISTAPRECIO,'
      '    ?IDTIPOCTE,'
      '    ?IDCONDPAGO,'
      '    ?IDCLIENTEMS,'
      '    ?RAZSOCIAL,'
      '    ?DOMICILIO,'
      '    ?DOMICILIO2,'
      '    ?NUM_EXTERIOR,'
      '    ?NUM_INTERIOR,'
      '    ?COLONIACTE,'
      '    ?COLONIACTE2,'
      '    ?CODPOSTAL,'
      '    ?LOCALIDAD,'
      '    ?ESTADO,'
      '    ?LADA,'
      '    ?TELEFONO1,'
      '    ?TELEFONO2,'
      '    ?TELEFONO3,'
      '    ?EMAIL,'
      '    ?PAGINAWEB,'
      '    ?RFC,'
      '    ?CURP,'
      '    ?REPRESCTE,'
      '    ?CONTACTO1,'
      '    ?CONTACTO2,'
      '    ?JEFEPAGOS,'
      '    ?JEFECOMPRAS,'
      '    ?IDSUCURSAL,'
      '    ?IDMONEDA,'
      '    ?IDRUTA,'
      '    ?IDZONA,'
      '    ?IDVENDEDOR,'
      '    ?FULTPAGCTE,'
      '    ?FECULTVTA,'
      '    ?FECHAALTA,'
      '    ?FECBAJACTE,'
      '    ?LIMCREDCTE,'
      '    ?SDOACTUAL,'
      '    ?DIASCREDIT,'
      '    ?DIASPPAGO,'
      '    ?PDESCPPAGO,'
      '    ?NOTASREVIFAC,'
      '    ?NOTASPAGOFAC,'
      '    ?COMENTARIOS,'
      '    ?STATUSCTE,'
      '    ?ESPERMORAL,'
      '    ?USERACT,'
      '    ?FECHAACT);')
    Left = 464
    Top = 8
  end
  object fcz1: TRzFrameController
    FocusColor = clInfoBk
    FrameHotTrack = True
    FrameVisible = True
    Left = 369
    Top = 26
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 536
    Top = 8
  end
end
