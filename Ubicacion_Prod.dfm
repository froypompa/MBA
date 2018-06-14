object frmUbicacion_Prod: TfrmUbicacion_Prod
  Left = 414
  Top = 190
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'MBA - Cat'#225'logos'
  ClientHeight = 467
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgcMain: TPageControl
    Left = 0
    Top = 81
    Width = 745
    Height = 364
    ActivePage = tshGenerales
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 747
    ExplicitHeight = 374
    object tshGenerales: TTabSheet
      Caption = '&1 Generales'
      ImageIndex = 2
      ExplicitWidth = 739
      ExplicitHeight = 346
      object acgUbicaciones: TAdvColumnGrid
        Left = 0
        Top = 0
        Width = 193
        Height = 336
        Cursor = crDefault
        Align = alLeft
        ColCount = 2
        DefaultRowHeight = 21
        FixedCols = 0
        RowCount = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        OnMouseMove = acgUbicacionesMouseMove
        OnSelectionChanged = acgUbicacionesSelectionChanged
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        Bands.Active = True
        ColumnHeaders.Strings = (
          'Grupos Usuarios')
        ColumnSize.Stretch = True
        ColumnSize.StretchColumn = 0
        Filter = <>
        FixedColWidth = 124
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'MS Sans Serif'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        SearchFooter.FindNextCaption = 'Find next'
        SearchFooter.FindPrevCaption = 'Find previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'MS Sans Serif'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurence'
        SearchFooter.HintFindPrev = 'Find previous occurence'
        SearchFooter.HintHighlight = 'Highlight occurences'
        SearchFooter.MatchCaseCaption = 'Match case'
        Version = '3.1.0.1'
        Columns = <
          item
            AutoMinSize = 0
            AutoMaxSize = 0
            Alignment = taLeftJustify
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
            EditLength = 0
            Editor = edNone
            FilterCaseSensitive = False
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header = 'Grupos Usuarios'
            HeaderAlignment = taCenter
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -13
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = [fsBold]
            MinSize = 0
            MaxSize = 0
            Password = False
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintColor = clWhite
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'MS Sans Serif'
            PrintFont.Style = []
            ReadOnly = True
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 124
          end
          item
            AutoMinSize = 0
            AutoMaxSize = 0
            Alignment = taLeftJustify
            Borders = []
            BorderPen.Color = clSilver
            CheckFalse = 'N'
            CheckTrue = 'Y'
            Color = clWindow
            ColumnPopupType = cpFixedCellsRClick
            DropDownCount = 8
            EditLength = 0
            Editor = edNormal
            FilterCaseSensitive = False
            Fixed = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HeaderAlignment = taLeftJustify
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'Tahoma'
            HeaderFont.Style = []
            MinSize = 0
            MaxSize = 0
            Password = False
            PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
            PrintColor = clWhite
            PrintFont.Charset = DEFAULT_CHARSET
            PrintFont.Color = clWindowText
            PrintFont.Height = -11
            PrintFont.Name = 'Tahoma'
            PrintFont.Style = []
            ReadOnly = False
            ShowBands = False
            SortStyle = ssAutomatic
            SpinMax = 0
            SpinMin = 0
            SpinStep = 1
            Tag = 0
            Width = 64
          end>
        FilterDropDown.Color = clWindow
        FilterDropDown.ColumnWidth = False
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'MS Sans Serif'
        FilterDropDown.Font.Style = []
        FilterDropDown.Height = 200
        FilterDropDown.Width = 200
        ExplicitHeight = 344
        ColWidths = (
          124
          64)
      end
      object RzPanel1: TRzPanel
        Left = 193
        Top = 0
        Width = 264
        Height = 336
        Align = alLeft
        BorderOuter = fsGroove
        TabOrder = 1
        ExplicitHeight = 346
        object zmoGR: TRzMemo
          Left = 2
          Top = 2
          Width = 260
          Height = 61
          Align = alTop
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HideSelection = False
          Lines.Strings = (
            'Productos asignados a la ubicacion')
          ParentFont = False
          TabOrder = 0
          FrameVisible = True
        end
        object acgUbicacion_Prod: TAdvColumnGrid
          Left = 2
          Top = 63
          Width = 260
          Height = 271
          Cursor = crDefault
          Align = alClient
          ColCount = 2
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSelect]
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 1
          OnMouseMove = acgUbicacionesMouseMove
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ColumnHeaders.Strings = (
            'Nombre del Recurso')
          ColumnSize.Stretch = True
          ColumnSize.StretchColumn = 0
          Filter = <>
          FixedColWidth = 191
          FixedRowAlways = True
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'MS Sans Serif'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'MS Sans Serif'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'MS Sans Serif'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'MS Sans Serif'
          PrintSettings.FooterFont.Style = []
          PrintSettings.PageNumSep = '/'
          SearchFooter.FindNextCaption = 'Find next'
          SearchFooter.FindPrevCaption = 'Find previous'
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'MS Sans Serif'
          SearchFooter.Font.Style = []
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurence'
          SearchFooter.HintFindPrev = 'Find previous occurence'
          SearchFooter.HintHighlight = 'Highlight occurences'
          SearchFooter.MatchCaseCaption = 'Match case'
          Version = '3.1.0.1'
          Columns = <
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNone
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Header = 'Nombre del Recurso'
              HeaderAlignment = taCenter
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -13
              HeaderFont.Name = 'MS Sans Serif'
              HeaderFont.Style = [fsBold]
              MinSize = 0
              MaxSize = 0
              Password = False
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'MS Sans Serif'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 191
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Password = False
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = False
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 64
            end>
          FilterDropDown.Color = clWindow
          FilterDropDown.ColumnWidth = False
          FilterDropDown.Font.Charset = DEFAULT_CHARSET
          FilterDropDown.Font.Color = clWindowText
          FilterDropDown.Font.Height = -11
          FilterDropDown.Font.Name = 'MS Sans Serif'
          FilterDropDown.Font.Style = []
          FilterDropDown.Height = 200
          FilterDropDown.Width = 200
          ExplicitHeight = 279
          ColWidths = (
            191
            64)
        end
      end
      object RzPanel2: TRzPanel
        Left = 457
        Top = 0
        Width = 65
        Height = 336
        Align = alLeft
        BorderOuter = fsBump
        TabOrder = 2
        ExplicitHeight = 346
        object btnLeft: TRzBitBtn
          Left = 14
          Top = 72
          Width = 39
          Height = 36
          HotTrack = True
          TabOrder = 0
          OnClick = btnLeftClick
          ImageIndex = 10
          Images = iml24
        end
        object btnRight: TRzBitBtn
          Left = 14
          Top = 112
          Width = 39
          Height = 36
          HotTrack = True
          TabOrder = 1
          OnClick = btnRightClick
          ImageIndex = 11
          Images = iml24
        end
        object btnMoveAllToLeft: TRzBitBtn
          Left = 14
          Top = 152
          Width = 39
          Height = 36
          HotTrack = True
          TabOrder = 2
          OnClick = btnMoveAllToLeftClick
          ImageIndex = 9
          Images = iml24
        end
        object btnMoveAllToRight: TRzBitBtn
          Left = 14
          Top = 192
          Width = 39
          Height = 36
          HotTrack = True
          TabOrder = 3
          OnClick = btnMoveAllToRightClick
          ImageIndex = 12
          Images = iml24
        end
      end
      object RzPanel3: TRzPanel
        Left = 522
        Top = 0
        Width = 215
        Height = 336
        Align = alClient
        BorderOuter = fsBump
        TabOrder = 3
        ExplicitWidth = 217
        ExplicitHeight = 346
        object acgProductos: TAdvColumnGrid
          Left = 2
          Top = 2
          Width = 211
          Height = 332
          Cursor = crDefault
          Align = alClient
          ColCount = 2
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSelect]
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 0
          OnMouseMove = acgUbicacionesMouseMove
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ColumnHeaders.Strings = (
            'Nombre del Recurso')
          ColumnSize.Stretch = True
          ColumnSize.StretchColumn = 0
          Filter = <>
          FixedColWidth = 142
          FixedRowAlways = True
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = DEFAULT_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'MS Sans Serif'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'MS Sans Serif'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'MS Sans Serif'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'MS Sans Serif'
          PrintSettings.FooterFont.Style = []
          PrintSettings.PageNumSep = '/'
          SearchFooter.FindNextCaption = 'Find next'
          SearchFooter.FindPrevCaption = 'Find previous'
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'MS Sans Serif'
          SearchFooter.Font.Style = []
          SearchFooter.HighLightCaption = 'Highlight'
          SearchFooter.HintClose = 'Close'
          SearchFooter.HintFindNext = 'Find next occurence'
          SearchFooter.HintFindPrev = 'Find previous occurence'
          SearchFooter.HintHighlight = 'Highlight occurences'
          SearchFooter.MatchCaseCaption = 'Match case'
          Version = '3.1.0.1'
          Columns = <
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNone
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Header = 'Nombre del Recurso'
              HeaderAlignment = taCenter
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -13
              HeaderFont.Name = 'MS Sans Serif'
              HeaderFont.Style = [fsBold]
              MinSize = 0
              MaxSize = 0
              Password = False
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'MS Sans Serif'
              PrintFont.Style = []
              ReadOnly = True
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 142
            end
            item
              AutoMinSize = 0
              AutoMaxSize = 0
              Alignment = taLeftJustify
              Borders = []
              BorderPen.Color = clSilver
              CheckFalse = 'N'
              CheckTrue = 'Y'
              Color = clWindow
              ColumnPopupType = cpFixedCellsRClick
              DropDownCount = 8
              EditLength = 0
              Editor = edNormal
              FilterCaseSensitive = False
              Fixed = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              HeaderAlignment = taLeftJustify
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'Tahoma'
              HeaderFont.Style = []
              MinSize = 0
              MaxSize = 0
              Password = False
              PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
              PrintColor = clWhite
              PrintFont.Charset = DEFAULT_CHARSET
              PrintFont.Color = clWindowText
              PrintFont.Height = -11
              PrintFont.Name = 'Tahoma'
              PrintFont.Style = []
              ReadOnly = False
              ShowBands = False
              SortStyle = ssAutomatic
              SpinMax = 0
              SpinMin = 0
              SpinStep = 1
              Tag = 0
              Width = 64
            end>
          FilterDropDown.Color = clWindow
          FilterDropDown.ColumnWidth = False
          FilterDropDown.Font.Charset = DEFAULT_CHARSET
          FilterDropDown.Font.Color = clWindowText
          FilterDropDown.Font.Height = -11
          FilterDropDown.Font.Name = 'MS Sans Serif'
          FilterDropDown.Font.Style = []
          FilterDropDown.Height = 200
          FilterDropDown.Width = 200
          ExplicitWidth = 213
          ExplicitHeight = 340
          ColWidths = (
            142
            64)
        end
      end
    end
  end
  object TBDock1: TTBXDock
    Left = 0
    Top = 0
    Width = 745
    Height = 81
    ExplicitWidth = 747
    object TBToolbar2: TTBXToolbar
      Left = 0
      Top = 34
      Align = alTop
      Caption = 'TBToolbar2'
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = 0
      DockRow = 1
      Images = iml24
      Options = [tboImageAboveCaption, tboShowHint, tboToolbarStyle, tboToolbarSize]
      ParentShowHint = False
      ShowHint = True
      Stretch = True
      TabOrder = 0
      object tbtPost: TTBXItem
        Tag = 4
        Caption = '&Grabar'
        ImageIndex = 7
        OnClick = tbtPostClick
      end
    end
    object TBToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      Align = alTop
      Caption = 'TBToolbar2'
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = 120
      FullSize = True
      Images = iml24
      TabOrder = 1
      object tbtSalir: TTBXItem
        Tag = 20
        Caption = '&Cerrar'
        Hint = 'Cerrar la ventana'
        ImageIndex = 14
        OnClick = tbtSalirClick
      end
      object TBSeparatorItem2: TTBXSeparatorItem
      end
      object TBControlItem1: TTBControlItem
        Control = RzLabel1
      end
      object TBSeparatorItem3: TTBXSeparatorItem
      end
      object tbtAyuda: TTBXItem
        Tag = 21
        Caption = '&Ayuda'
        ImageIndex = 1
      end
      object RzLabel1: TRzLabel
        Left = 37
        Top = 3
        Width = 384
        Height = 24
        Caption = '  Actualizaci'#243'n de Ubicaciones de Productos  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ShadowDepth = 1
        TextStyle = tsRaised
      end
    end
  end
  object sbxMain: TTBXStatusBar
    Left = 0
    Top = 445
    Width = 745
    Panels = <
      item
        StretchPriority = 1
        Tag = 0
      end>
    UseSystemFont = False
    ExplicitTop = 455
    ExplicitWidth = 747
  end
  object isql1: TIB_DSQL
    DatabaseName = 'GruasMx'
    Left = 600
    Top = 40
  end
  object iml16: TImageList
    Left = 432
    Top = 10
    Bitmap = {
      494C010115001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000001
      8B0000018B0000018B0000018B0000018B0000018B0000018B0000018B000001
      8B0000018B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000018B003F69
      FF000014FF00001CFF00001CFA00001BEE00001BE200001AD800001CCC00001C
      C200001FBC0000018B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000018B0096B1
      FF004966FF004B6EFF004B6EFF004B6DF8004C6DF2004C6DEB003D5EE2003455
      DC003459D90000018B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000001
      8B0000018B0000018B0000018B0000018B0000018B0000018B0000018B000001
      8B0000018B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B58C8C008C5A5A008C5A5A008C5A5A008C5A5A008C5A5A008C5A
      5A008C5A5A008C5A5A008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000821F0100801C0000000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700F7EFDE00F7EFDE00F7EFDE00F7EFDE00F7EF
      DE00F7EFDE00F7E7CE008C5A5A000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE63000000000000E9E9E900DDDDDD00D5D5
      D500CDCDCD00CACACA00C9C9C900C5C5C500C3C3C300C4C4C400C4C4C400C7C7
      C70000000000FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000801C000095360F00801C0000000000000000000000000000000000000000
      000000000000B58C8C00F7EFDE00F7DECE00F7DEC600F7DEC600F7DEC600F7DE
      C600EFDECE00EFDECE008C5A5A000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFEFD600FFE7C600526B7B00D6CEAD00F7D6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE63000000000000EBEBEB00DEDEDE00CCCC
      CC00B8B8B800B2B2B200BABABA00BEBEBE00BFBFBF00C1C1C100C2C2C200C6C6
      C60000000000FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007D1E
      0100AF5E3000BD642E00801C0000000000000000000000000000000000000000
      000000000000B58C8C00FFF7E700FFD6A500FFD6A500FFD6A500FFD6A500FFD6
      A500FFD6A500EFDECE008C5A5A000000000000000000CE630000FFFFFF00BDC6
      C600BDC6C600BDC6C600BDC6C600BDC6C600526B7B0000000000ADC6CE00BDC6
      C600BDC6C600BDC6C600FFD6AD00CE63000095959500F0F0F000E5E5E5006565
      6500585858007777770098989800A4A4A400AEAEAE00BBBBBB00C1C1C100C6C6
      C60000000000FF00FF00FF00FF00FF00FF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E200200AC66
      3900EA9F5A00801C0000000000000000000000000000B58C8C008C5A5A008C5A
      5A008C5A5A00B58C8C00FFF7EF00F7DEC600F7DEC600F7DEC600F7DEC600F7DE
      BD00F7E7CE00EFDECE009C6B63000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7E700526B7B000000000000000000FFD6
      AD00F7D6AD00FFD6AD00FFD6AD00CE63000095959500F5F5F500E9E9E900A4A4
      A4006A6A6A0076767600616161007E7E7E0090909000A5A5A500B4B4B400C1C1
      C10000000000FF00FF00FF00FF00FF00FF001043000010430000104300001043
      000010430000104300001043000010430000144100007B1F000089452300E79C
      5400912D03002F2D00000C3000000B2D000000000000B58C8C00FFF7E700F7EF
      DE00F7EFDE00B58C8C00FFF7EF00F7E7CE00F7DEC600F7DEC600F7DEC600F7DE
      C600F7E7D600EFDECE009C6B6B000000000000000000CE630000FFFFFF00BDC6
      C600BDC6C600BDC6C600BDC6C600BDC6C600526B7B00FFEFDE00DE8C39000000
      0000B5C6C600BDC6C600FFD6AD00CE6300009F9F9F00F9F9F900EFEFEF00E4E4
      E4007D7D7D007F7F7F00828282008181810066666600888888009D9D9D00B2B2
      B20099999900FF00FF00FF00FF00FF00FF001043000022C6560021C4550020C1
      510020C1490022C447006CD78F00FFFFFF007F22030089452300EB9E5900CF6A
      1A0092401B009F999700999999000B2D000000000000B58C8C00F7EFDE00F7DE
      CE00F7DEC600B58C8C00FFFFF700FFD6A500FFD6A500FFD6A5004C804C004C80
      4C004C804C004C804C00A57B73000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B9CA500FFEFDE00DE8C39000000
      0000FFD6AD00FFD6AD00FFD6AD00CE6300009F9F9F00FEFEFE00F3F3F300EEEE
      EE00ACACAC0094949400C4C4C400ADADAD008B8B8B0063636300808080009393
      93008F8F8F00FF00FF00FF00FF00FF00FF00104300000DA1230011A72C001CBA
      47001FBD4E001EBC4C00ADEAC100D0A3920089452300EA9E5800D36C19008623
      01008E827D0092929200AAAAAA000D38000000000000B58C8C00FFF7E700FFD6
      A500FFD6A500B58C8C00FFFFF700FFE7D600FFE7D600F7E7D6004C804C0052AE
      570052AE57004C804C00A57B73000000000000000000CE630000FFFFFF00BDC6
      C600BDC6C600BDC6C600BDC6C600BDC6C600BDC6C600526B7B00FFEFDE00DE8C
      390000000000ADB5BD00FFD6AD00CE630000A6A6A600FFFFFF00F9F9F900F3F3
      F300E9E9E9007E7E7E00D1D1D100C0C0C000A8A8A80086868600616161007F7F
      7F0083838300FF00FF00FF00FF00FF00FF0010430000007F0000007E0000048F
      0B001DBA49005ED38400FCFEFC00892B0B00E9975000D36C1A00932B00008656
      43008F8F8F00A6A6A600D0D0D0000F41000000000000B58C8C00FFF7EF00F7DE
      C600F7DEC600B58C8C00FFFFFF00FFFFFF004C804C004C804C004C804C0052AE
      570052AE57004C804C004C804C004C804C0000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B9CA500FFEFDE00DE8C
      390000000000FFD6AD00FFD6AD00CE630000A6A6A600FFFFFF00FEFEFE00F8F8
      F800F3F3F300E4E4E4008D8D8D00CFCFCF00BFBFBF00A9A9A900858585006464
      64007B7B7B00FF00FF00FF00FF00FF00FF00104300000082000000810000007E
      000076D18A00EEF4F70091A1A9006F453200C95F16007E230600875B4A009393
      9300ACACAC00D3D3D300F3F3F3001043000000000000B58C8C00FFF7EF00F7E7
      CE00F7DEC600B58C8C00FFFFFF00FFFFFF004C804C0052AE570052AE570052AE
      570052AE570052AE570052AE57004C804C0000000000CE630000FFFFFF00BDC6
      C600BDC6C600BDC6C600BDC6C600BDC6C600BDC6C600BDC6C600526B7B00FFEF
      DE00DE8C390000000000FFD6AD00CE630000B1B1B100FFFFFF00FFFFFF00FEFE
      FE00F9F9F900F3F3F300DBDBDB0088888800CECECE00BEBEBE00A7A7A7008484
      840069696900FF00FF00FF00FF00FF00FF001043000000820000007F0000239A
      2C002D77A4000C5E9C004B424000A3A199004B42400097847D00A4A4A400BBBB
      BB00DCDCDC00F4F4F400FFFFFF001043000000000000B58C8C00FFFFF700FFD6
      A500FFD6A500B58C8C00FFFFFF00FFFFFF004C804C0069CA800069CA800069CA
      800052AE570052AE570052AE57004C804C0000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B9CA500FFEF
      DE00DE8C390000101800FFD6AD00CE630000B1B1B100FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00F8F8F800F3F3F300D2D2D2008B8B8B00D2D2D200BCBCBC00AAAA
      AA00797979005C5C5C00FF00FF00FF00FF001043000000800000008606001675
      9200187BBA0034A0FC003378CA002F5B7D0090969700C0C0C000D8D8D800EBEB
      EB00FBFBFB00FEFEFE00FFFFFF001043000000000000B58C8C00FFFFF700FFE7
      D600FFE7D600B58C8C00B58C8C00B58C8C004C804C004C804C004C804C0069CA
      800052AE57004C804C004C804C004C804C0000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00526B
      7B00000000002163DE0000000000CE630000B8B8B800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00F8F8F800F4F4F400CBCBCB0096969600D7D7D7009595
      9500919191009090900090909000FF00FF0010430000138C0C009DC46E001873
      A30037A6E70039A7FF000D66A40041749200C7C7C700EDEDED00FAFAFA00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF001043000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700EFDEDE00D6C6C600BDADAD004C804C0069CA
      800052AE57004C804C00000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000A56B
      29002163DE002163DE0039082100CE630000B8B8B800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFDFD00FCFCFC00D6D6D6008D8D8D00929292009E9E
      9E009F9F9F0091919100747474006A6A6A0010430000F4DA9D00FFDDAB002372
      9C002993D3000D66A4003C739300C0C1C100EBEBEB00FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF001043000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700B58C8C00B58C8C00B58C8C004C804C004C80
      4C004C804C004C804C0000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      000000089C0000089C00E739630000000000BFBFBF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DBDBDB0099999900A3A3A3008D8D
      8D00928F920087878700848484007676760010430000FCDEA900FBD89F00B2B4
      9600136699000D66A40081989A00E9E9E900FBFBFB00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF001043000000000000B58C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B58C8C00EFB56B00C68C7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF00F8F8F800F7F7F700F7F7
      F700F7F7F700F6F6F600F6F6F600F6F6F600D7D7D70099999900AAAAAA00FF00
      FF0088888800BABABA00000000007575750010430000FCEEAB00FCE1A500FBE0
      A400EED39C00DEC48F00EAE3CB00FBFBFB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF001043000000000000B58C8C00B58C8C00B58C
      8C00B58C8C00B58C8C00B58C8C00B58C8C00BD84840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF00B1B1B100B1B1B100B1B1
      B100B1B1B100B1B1B100B1B1B100B1B1B100B1B1B10099999900FF00FF00FF00
      FF00FF00FF00AAAAAA008C8C8C00FF00FF001043000010430000104300001043
      0000104300001042000010420000104300001043000010430000104300001043
      0000104300001043000010430000104300000000000000000000000000000000
      0000000000000024000000240000002100000019000000160000001600000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE000000000000000000A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000004D
      0100004D01001F6422005384540068956B00608A600035623600062D06000016
      000000160000000000000000000000000000000000000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE00000000000000000000000000A5636B00FFEF
      C600C6CE9400D6CE9400EFCE9C00E7CE9400EFC68400EFBD8400EFBD7B00EFBD
      8400EFBD8400EFC68400A5636B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000005F02001875
      1D00A4CBA700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9E5D9004B75
      4D00001C0000001801000000000000000000000000000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE0000000000000000000000000000000000A5636B00FFEF
      CE009CBD7300299C21006BAD4A0021941000219410005AA53900CEB57300EFBD
      7B00EFBD7B00EFC68400A5636B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000006C030025882B00E2F0
      E300FFFFFF00E5EFE6008CB28E006490650072977200BDCFBD00FFFFFF00FFFF
      FF006A8F6A00001D0000001A000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000031
      DE000031DE000000000000000000000000000000000000000000A5635A00FFEF
      DE00BDCE9C00108C08000084000000840000008400000084000029941800DEBD
      7B00EFBD7B00EFC68400A5636B00000000000000000000000000000000000000
      00000000000000000000BA8C2300947D4F004F42000000000000000000000000
      000000000000000000000000000000000000000000000C821300D8EED900FFFF
      FF0082B6860008500A000239030002310200002C0100022D02003C6A3C00EFF4
      EF00FFFFFF004B754C00001A00000000000000000000000000000031EF000031
      DE000031DE000031DE00000000000000000000000000000000000031DE000031
      DE00000000000000000000000000000000000000000000000000A5635A00FFF7
      E700BDCE9C00189410000084000018941000ADBD730073AD4A000084000073AD
      4A00EFBD8400EFC68400A5636B000000000000000000BA8C2300947D4F004F42
      000000000000BA8C23004F420000E6A800007D4F00004F420000008CBA00009B
      D100009BD1000000000000000000000000000083040072C27700FFFFFF009CCC
      9E00065D0900074C090078A37A000A430A0003350300012F0200002801003D6C
      3E00FFFFFF00DCE6DC0006320600002800000000000000000000000000000000
      00000031DE000031DE000031DE00000000000031DE000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000A5736B00FFF7
      EF00BDD6A500088C0800008400000084000084B55A00EFCEA500A5B56B006BAD
      4A00EFC68C00EFC68400A5636B0000000000BA8C23004F4200006C4200007542
      00004F4200006C4F2300E6A80000E18C00008C6300006C4200004F420000009B
      D100009BD100008CBA000000000000000000078E0F00C9EACA00FFFFFF00208A
      27000C660F000A5C0D00FFFFFF00AAC7AB00114F1200033A040003340300002F
      0100BFD1C000FFFFFF00366B3800002800000000000000000000000000000000
      0000000000000031DE000031E7000031E7000031E7000031DE00000000000000
      0000000000000000000000000000000000000000000000000000A5736B00FFFF
      FF00E7E7D600A5CE94009CC6840094BD73009CBD7300EFD6AD00EFCEA5009CC6
      7B00EFC69400EFC68C00A5636B00000000009B8C75004F420000E18C0000BA4F
      00006C4200004F420000422300006C4200006C4200008C6300007D7D7D0000E1
      FF0000C0F00000C0F000008CBA000000000018982000EEF8EF00D5EFD8001082
      16000F7513000E6C1100EEF6EF00FFFFFF00C4DAC50029692B00044105000337
      030073997500FFFFFF0063966500003600000000000000000000000000000000
      000000000000000000000031E7000031E7000031EF0000000000000000000000
      0000000000000000000000000000000000000000000000000000BD846B00FFFF
      FF00A5DEA500FFEFE700F7EFD6009CC6840094BD730094BD73009CBD7300EFCE
      A500EFCE9C00F7CE9400A5636B00000000007D75420042230000BA4F0000BA4F
      00006C4200007D6300004F4200009B7500008C6300008C6300004294BA0000E1
      FF0000CCFF0000D1FF0023AFE100008CBA0031A63800FFFFFF00BFE6C200148B
      190013841800117B1600EEF6EE00FFFFFF00FFFFFF00B4D1B500074E09000646
      070062916400FFFFFF006DA37000004100000000000000000000000000000000
      0000000000000031DE000031EF000031E7000031EF000031F700000000000000
      0000000000000000000000000000000000000000000000000000BD846B00FFFF
      FF0073C67300ADD6A500FFEFE70084C673000084000000840000088C0800EFD6
      AD00EFCEA500F7D6A500A5636B0000000000000000008C4F4F00A87D0000946C
      00007D4F0000636C63007DA8A100A87D0000A87D00009B946C0000E1FF008CE1
      FF0042D6FF0042D6FF0000D1FF00009BD1003DAD4500FFFFFE00E9F7EA001796
      1D0016911C0014891A00EFF7EF00FFFFFF00B6D8B700247A28000A5E0D000652
      08008CB68F00FFFFFF0057985A00004500000000000000000000000000000000
      00000031F7000031EF000031E70000000000000000000031F7000031F7000000
      0000000000000000000000000000000000000000000000000000D6946B00FFFF
      FF0084CE8400008400007BC67300ADD6A5001894180000840000108C0800F7D6
      B500F7D6AD00EFCEA500A5636B000000000000000000000000008C4F4F007D63
      00007D63230063CCE60000BAF00000CCFF0063CCE60042D6FF0000E1FF008CE1
      FF00AFE6FF0042D6FF0042D6FF00009BD1002EA63600EBF7ED00FFFFFF003BAC
      410018981E0016951C00FBFEFC009ED3A10018841D00107714000E6E12000D66
      1000E5EFE500FFFFFF0023792700004500000000000000000000000000000031
      FF000031EF000031F700000000000000000000000000000000000031FF000031
      F700000000000000000000000000000000000000000000000000D6946B00FFFF
      FF00F7F7EF0029A5290000840000008400000084000000840000108C0800FFEF
      CE00DECEB500B5AD9400A5636B0000000000000000000000000023AFE10000CC
      FF0000E1FF0042D6FF0000CCFF0000C0F00000CCFF0000CCFF0042D6FF0000E1
      FF008CE1FF008CE1FF0042D6FF00009BD10000000000B6E2BA00FFFFFF00CCEB
      CE001D9C240018981E0077C77D0019951E00168C1B00138718000C780F0086BF
      8900FFFFFF00ABD4AF00015E03000000000000000000000000000031F7000031
      F7000031FF000000000000000000000000000000000000000000000000000031
      F7000031F7000000000000000000000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00DEF7DE0063BD6300219C2100219C210073BD6B00299C2100946B
      5200A56B5A00A56B5A00A5636B000000000000000000000000000000000023AF
      E10000CCFF0000E1FF0042D6FF0000CCFF0000BAF00000CCFF0000BAE10042D6
      FF0000E1FF008CE1FF00BAEBFF0023AFE1000000000050B65600F8FCF800FFFF
      FF00CEEBCF003AAC410018981E0017981D0013951A00249C2B009CD3A000FFFF
      FF00E5F3E5001A842000015E030000000000000000000031F7000031F7000031
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000031F70000000000000000000000000000000000DE9C7300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEF7DE00DEF7DE00FFFFF700ADB594008C6B
      5200E79C5200E78C3100B56B4A00000000000000000000000000000000000000
      000023AFE10000CCFF00BAEBFF0000E1FF0000CCFF0023AFE1000000000000C0
      F00000BAE10000BAE10023AFE10000000000000000000000000083CC8900FCFE
      FC00FFFFFF00FFFFFF00E6F6E700BCE5C000CFEDD300FFFFFF00FFFFFF00D5ED
      D70027982E00006F020000000000000000000031F7000031F7000031F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C600A56B
      5A00FFB55A00BD7B5A0000000000000000000000000000000000000000000000
      00000000000000C0F00000BAE10000BAE10023AFE10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006FC5
      7600D5EFD800FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3FAF30096D59C001597
      1D00006F02000000000000000000000000000031F7000031F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00F7F7
      EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00DEC6C600A56B
      5A00BD846B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005BBC620068C26E008CD0920096D5990077C77D003FAD47000B9213000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7AD7B00D694
      6B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00D6946B00A56B
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF005BD7DF0016696E00186F
      7400186F7400186F740019757B0019757B00186F7400186F740016696E001669
      6E0015626700145C600053D5DD00FFFFFF00FFFFFF00E3995700703F14007743
      150077431500774315007E4716007E4716007743150077431500703F1400703F
      1400693B130062381200E1944F00FFFFFF00FFFFFF0084B58400107310001873
      18001873180018731800187B1800187B1800107B1000107B1000087B0800087B
      0800007B0000007300007BB57B00FFFFFF00FFFFFF006C71FF003134B5003134
      BD003134BD003134BD003134C5003134C5003134BD003134BD003134B5003134
      B5003134AD003134A5006267FF00FFFFFF00FFFFFF0019757B001D8A91002097
      9E00219DA500219DA50020979E00219DA50020979E0020979E0020979E001F90
      97001D8A910019757B0012565A00FFFFFF00FFFFFF007E47160094531A00A25B
      1C00A85F1E00A85F1E00A25B1C00A85F1E00A25B1C00A25B1C00A25B1C009B57
      1B0094531A007E4716005C341000FFFFFF00FFFFFF0010841000218C21002994
      2900319431003194310029942900299C2900219C210018A5180018A5180010A5
      100008A5080000940000006B0000FFFFFF00FFFFFF003134C5003135DF003135
      EF003136F7003136F7003135EF003136F7003135EF003135EF003135EF003135
      E7003135DF003134C50031349D00FFFFFF00FFFFFF001C82880020979E0024AA
      B20024AAB20024ACB40025B0B90028BFC80028BFC80028BFC80028BFC80024AA
      B2001F949B001A7C820015626700FFFFFF00FFFFFF008B4F1900A25B1C00B667
      2000B6672000B8682000BD6A2100CC732400CC732400CC732400CC732400B667
      20009E591C00854B1700693B1300FFFFFF00FFFFFF00188C180029942900399C
      39003A9C3A003A9D3A0039A539004AA54A004AA54A004AA54A004AA54A002FA6
      2F0015A51500009C0000007B0000FFFFFF00FFFFFF003135D5003135EF003136
      FF003136FF003136FF003136FF003137FF003137FF003137FF003137FF003136
      FF003135EB003135CD003134AD00FFFFFF00FFFFFF001F90970024AAB20027B8
      C10027B8C10027B8C10028BFC80028BFC80028BFC80028BFC80028BFC80026B1
      BA00219DA5001D8A910016696E00FFFFFF00FFFFFF009B571B00B6672000C56F
      2300C56F2300C56F2300CC732400CC732400CC732400CC732400CC732400BF6B
      2100A85F1E0094531A00703F1400FFFFFF00FFFFFF0021942100399C390042A5
      420045A3450044A344004AA54A004AA54A004AA54A004AA54A004AA54A0038A7
      38001EA71E0008A50800087B0800FFFFFF00FFFFFF003135E7003136FF003136
      FF003136FF003136FF003137FF003137FF003137FF003137FF003137FF003136
      FF003136F7003135DF003134B500FFFFFF00FFFFFF0020979E0025B0B90028BF
      C8002AC4CE0028BFC80028BFC80028BFC80028BFC80028BFC80028BFC80026B1
      BA0022A0A8001F909700186F7400FFFFFF00FFFFFF00A25B1C00BD6A2100CC73
      2400D3772500CC732400CC732400CC732400CC732400CC732400CC732400BF6B
      2100AC611E009B571B0077431500FFFFFF00FFFFFF0029942900429C42004AA5
      4A0052A552004AA54A004AA54A004AA54A004AA54A004AA54A004AA54A0039A6
      390022A7220010A5100008840800FFFFFF00FFFFFF003135EF003136FF003137
      FF003137FF003137FF003137FF003137FF003137FF003137FF003137FF003136
      FF003136FB003135E7003134BD00FFFFFF00FFFFFF0023A3AB0028BFC8002AC4
      CE0028BFC80028BFC80028BFC80028BFC80028BFC80028BFC80028BFC80025B0
      B90022A0A80020979E0019757B00FFFFFF00FFFFFF00AF631F00CC732400D377
      2500CC732400CC732400CC732400CC732400CC732400CC732400CC732400BD6A
      2100AC611E00A25B1C007E471600FFFFFF00FFFFFF00319C31004AA54A0052A5
      52004AA54A004AA54A004AA54A004AA54A004AA54A004AA54A004AA54A0038A5
      380024A5240018A5180010841000FFFFFF00FFFFFF003136FF003137FF003137
      FF003137FF003137FF003137FF003137FF003137FF003137FF003137FF003136
      FF003136FB003135EF003134C500FFFFFF00FFFFFF0025B0B9002AC4CE0028BF
      C80028BFC80028BFC80028BFC80028BFC80028BFC80028BFC80027B6BF0024A8
      B000219BA30020979E001A7C8200FFFFFF00FFFFFF00BD6A2100D3772500CC73
      2400CC732400CC732400CC732400CC732400CC732400CC732400C46E2200B466
      2000A75E1D00A25B1C00854B1700FFFFFF00FFFFFF00429C420052A552004AA5
      4A004AA54A004AA54A004AA54A004AA54A004AA54A004AA54A0042A3420033A1
      330024A02400219C210018841800FFFFFF00FFFFFF003136FF003137FF003137
      FF003137FF003137FF003137FF003137FF003137FF003137FF003136FF003136
      FF003136F5003135EF003135CD00FFFFFF00FFFFFF0027B8C1002AC8D2002AC4
      CE0028BFC80028BFC80028BFC80028BFC80028BFC80027B8C10025B0B900229E
      A60020979E0020979E001A7C8200FFFFFF00FFFFFF00C56F2300D6792600D377
      2500CC732400CC732400CC732400CC732400CC732400C56F2300BD6A2100AA60
      1E00A25B1C00A25B1C00854B1700FFFFFF00FFFFFF0042A5420053A8530051A7
      51004AA54A004AA54A004AA54A004AA54A004AA54A0046A246003DA03D002C9C
      2C00219C2100219C2100217B2100FFFFFF00FFFFFF003136FF003137FF003137
      FF003137FF003137FF003137FF003137FF003137FF003136FF003136FF003136
      F9003135EF003135EF003135CD00FFFFFF00FFFFFF002AC4CE0033CDD70032CC
      D6002AC6D00029C3CD0028BFC80027BAC30026B5BE0026B3BC0024AAB200219D
      A50020979E0020979E001A7C8200FFFFFF00FFFFFF00D3772500DC802E00DB7F
      2D00D5782500D1762500CC732400C7702300C26D2200C06C2200B6672000A85F
      1E00A25B1C00A25B1C00854B1700FFFFFF00FFFFFF0052A552005DAC5D005CAC
      5C0052A852004EA74E004BA54B0048A24800459F4500439E43003A9C3A002E98
      2E002994290029942900217B2100FFFFFF00FFFFFF003137FF003C42FF003A40
      FF003137FF003137FF003137FF003137FF003136FF003136FF003136FF003136
      F7003135EF003135EF003135CD00FFFFFF00FFFFFF002AC4CE0046D1DA0046D1
      DA0033CDD7002BCBD5002AC6D00029C0C90027B6BF0025B0B90024A8B000229E
      A60020979E0020979E001A7C8200FFFFFF00FFFFFF00D3772500DF8B4100DF8B
      4100DC802E00DA7B2600D5782500CE742400C46E2200BD6A2100B4662000AA60
      1E00A25B1C00A25B1C00854B1700FFFFFF00FFFFFF0052A552006BB56B006BB5
      6B005CAD5C0056AA560052A752004DA44D00469F4600429C4200389B38003098
      30002994290029942900217B2100FFFFFF00FFFFFF003137FF005257FF005257
      FF003C42FF003238FF003137FF003137FF003136FF003136FF003136FF003136
      F9003135EF003135EF003135CD00FFFFFF00FFFFFF0032CCD6005AD6DE0053D5
      DD0038CFD80032CCD60030CCD6002BC9D30028BDC60026B5BE0025AEB70024A8
      B000219DA500219DA5001A7C8200FFFFFF00FFFFFF00DB7F2D00E2985600E194
      4F00DC833400DB7F2D00DB7E2B00D87A2600CB722300C26D2200BB6A2100B466
      2000A85F1E00A85F1E00854B1700FFFFFF00FFFFFF005AAD5A007BBD7B0073BD
      730063AD63005AAD5A005AAB5A0055A855004CA24C00449F44003E9E3E00379C
      37003194310031943100217B2100FFFFFF00FFFFFF003A40FF006A6FFF006267
      FF004248FF003A40FF00383EFF003137FF003137FF003136FF003136FF003136
      FF003136F7003136F7003135CD00FFFFFF00FFFFFF0046D1DA006FDCE3005AD6
      DE0046D1DA003FD0D90038CFD80038CFD8002DCBD50029C3CD0028BBC40026B5
      BE0024AAB200219DA5001A7C8200FFFFFF00FFFFFF00DF8B4100E6A56C00E298
      5600DF8B4100DE873A00DC833400DC833400DA7C2800D1762500C9712300C26D
      2200B6672000A85F1E00854B1700FFFFFF00FFFFFF006BB56B008CC68C007BBD
      7B006BB56B0063B5630063AD630063AD630059A959004FA64F0047A5470041A2
      4100399C390031943100217B2100FFFFFF00FFFFFF005257FF008488FF006A6F
      FF005257FF004A4FFF004248FF004248FF00343AFF003137FF003137FF003136
      FF003136FF003136F7003135CD00FFFFFF00FFFFFF0053D5DD0083E1E7006FDC
      E3005AD6DE0053D5DD0046D1DA003FD0D90038CFD80032CCD6002BCBD50028BF
      C80027B8C100219DA500186F7400FFFFFF00FFFFFF00E1944F00EAB28000E6A5
      6C00E2985600E1944F00DF8B4100DE873A00DC833400DB7F2D00DA7B2600CC73
      2400C56F2300A85F1E0077431500FFFFFF00FFFFFF0073BD73009CCE9C008CC6
      8C007BBD7B0073BD73006BB56B0063B5630063AD63005AAD5A0052AD52004AA5
      4A0042A542003194310018731800FFFFFF00FFFFFF006267FF009C9FFF008488
      FF006A6FFF006267FF005257FF004A4FFF004248FF003A40FF003238FF003137
      FF003136FF003136F7003134BD00FFFFFF00FFFFFF00A6EAEE0053D5DD003FD0
      D90032CCD6002AC4CE002AC4CE0028BFC80028BFC80027B8C10025B0B90024AA
      B200219DA5001D8A910069DAE100FFFFFF00FFFFFF00F0C8A400E1944F00DE87
      3A00DB7F2D00D3772500D3772500CC732400CC732400C56F2300BD6A2100B667
      2000A85F1E0094531A00E5A16500FFFFFF00FFFFFF00B5DEB50073BD730063B5
      63005AAD5A0052A5520052A552004AA54A004AA54A0042A54200429C4200399C
      390031943100218C21008CBD8C00FFFFFF00FFFFFF00C6C8FF006267FF004A4F
      FF003A40FF003137FF003137FF003137FF003137FF003136FF003136FF003136
      FF003136F7003135DF007C80FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000008F7A66008F7A
      66008F7A66000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010188C001010
      9C000000000031313100424242006B6363006B63630000000000000000000000
      0000000000000000000000000000000000000000000000000000B5848400B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B590E00BBB59500D0C1B800D0C2
      B400EED5BC008F7A66008F7A66008F7A66008F7A660000000000000000000000
      000000000000000000000000000000000000000000006B5A52004242AD001010
      9C004A4239008C8C8C00FFF7EF00DED6D600C6C6BD00847B7B006B6363005A5A
      5200424242000000000000000000000000000000000000000000C6A59C00FFEF
      D600F7E7C600F7DEBD00F7DEB500F7D6AD00F7D6A500EFCE9C00EFCE9400EFCE
      9400EFCE9400F7D69C00B5848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000009701900BBCFA900D3C4BD00C5C1
      BD00FFEED700FFEBCF00FFE5C200FFE1B600FFDEAC008F7A66008F7A66008F7A
      66000000000000000000000000000000000000000000947B6300635AB5001010
      9C00A57B5A008C8C8C00FFFFFF00FFFFFF00FFFFFF00C6C6BD00BDADA500F7E7
      D600E7D6C6008C847B00524A4A00000000000000000000000000C6A59C00FFEF
      D600C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A5
      9C00C6A59C00EFCE9C00B5848400000000000000000000000000000000000000
      00000000000000000000104AFF00104AFF00BD847300104AFF00000000000000
      00000000000000000000000000000000000000560500A9C9A000CBBDBC00C5C1
      BD00EDE0CF00554D4400554D4400C5A68F00D9B69500DDB68C00FFD39A008F7A
      66000000000000000000000000000000000000000000947B63005A5AB5001010
      9C00A58463008C8C8C00FFFFFF00FFFFFF008C8C8C005A525200181821006363
      5A00FFEFDE00FFEFDE006B6B6B00000000000000000000000000C6ADA500FFEF
      E700F7E7D600F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6AD00EFCE9C00EFCE
      9C00EFCE9400EFCE9C00B5848400000000000000000000000000638CC600104A
      FF00104AFF00104AFF003184FF00EFBD9C00BD847300C6B5B5003184FF00104A
      FF00000000000000000000000000000000000054010080A77D00CEC1C500C5C1
      BD00E2DACF00C7BAAB00C2BA9E00554D4400554D4400554D4400F7C59A008F7A
      66000000000000000000000000000000000000000000947B6B005A5AB5001010
      9C00A58C73008C8C8C00FFFFFF00FFFFFF00BDBDBD005A524200F7E7D600F7E7
      D600F7E7D600F7E7D6006B6B6B00000000000000000000000000C6ADA500FFF7
      E700F7E7D600F7E7CE00F7E7C600F7DEC600F7DEB500F7D6B500F7D6AD00EFCE
      9C00EFCE9C00EFCE9400B58484000000000000000000000000003184FF00DEBD
      AD00FFDEAD00FFDEBD00FFE7C600FFEFD600DE9C7300FFDEBD00F7EFE7007BA5
      FF005A8CCE00000000000000000000000000004D000068936600C9C0C400C5C1
      BD00E3DED900554D440024651F0006450600064106000D4C0B00064206000643
      06000644060000000000000000000000000000000000947B73005A5ABD001010
      9C00AD947B008C8C8C00FFFFFF00FFFFFF009C9CA5004A4A4A0000000000C6C6
      C600F7EFE700FFEFDE006B6B6B00000000000000000000000000CEB5AD00FFFF
      F700C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A5
      9C00C6A59C00EFCE9C00B584840000000000000000005A8CCE004284F700FFDE
      BD00FFDEBD00FFEFCE00FFF7E700EFC6AD00F7CE9C00FFDEBD00FFF7EF00FFFF
      FF007BA5FF005A8CCE000000000000000000004700004E844F00C6C1C500C5C1
      BD00CEC9CA00738A6B00044E050003620300007F000001730100026002000355
      0300044B0400064406000643060003460300000000007B6B6B005A5ABD001010
      9C00AD9C8C008C8C8C00FFFFFF00FFFFFF00848484005A524A00000000000000
      0000FFFFFF00F7EFE7006B6B6B00000000000000000000000000D6B5AD00FFFF
      FF00FFF7EF00FFEFE700F7E7D600F7E7CE00F7E7C600F7DEC600F7DEBD00F7D6
      AD00F7D6A500F7D6A500B58484000000000000000000429CFF00429CFF00FFEF
      D600FFEFDE00FFFFF700FFFFFF00DE9C7300FFDEAD00FFEFD600FFF7EF00FFFF
      FF00FFFFFF004A9CFF005A8CCE0000000000000000002D692E00C5C1BD00C5C1
      BD00CBCAC900135E160005520700038B09000186030000810000008200000083
      00000086000000860000005F00000048000000000000736B6B005A63C6001010
      9C00AD9C94008C8C8C00FFFFFF00FFFFFF00ADADAD005A524A0000FFFF0000C6
      C60000000000D6C6BD00B5848400000000000000000000000000D6BDB500FFFF
      FF00FFF7F700FFF7EF00FFEFDE00F7E7D600F7E7CE00F7E7C600F7DEC600F7DE
      BD00F7D6B500F7D6AD00B584840000000000000000003994FF00F7DECE00FFEF
      DE00FFFFF700FFFFFF00F7DECE00F7CE9C00FFE7CE00FFFFF700FFFFFF00FFFF
      FF00EFF7FF002994FF005A8CCE0000000000000000001C5A1C00C5C1BD00FFFA
      FF0050804F00064607000C971D000897160005900D0002890500008301000081
      000000840000006B0000004A00000000000000000000737373005A63CE001010
      9C009C9CA5008C8C8C00FFFFFF00DEDEDE00DED6D6007373730018F7F70000C6
      C60000000000D6C6BD00BD949400000000000000000000000000D6BDB500FFFF
      FF00C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00C6A5
      9C00C6A59C00F7DEB500B584840000000000639CD600429CFF00FFF7EF00FFFF
      F700FFF7EF00FFFFF700DE9C7300FFDEAD00FFF7E700FFFFFF00FFFFFF00FFFF
      FF008CC6FF005AADFF005A8CCE00000000000000000005430500C5C1BD00E5EE
      E200094B0A001089260013AA2F000EA324000A9C1B0007951100048C0900018A
      030000700000004B000000000000000000000000000073737B005A63D6001010
      9C009C9CA5008C8C8C00FFFFFF008C8C8C00A5A5A500F7E7D6005A52520000FF
      FF0000C6C60000000000C6ADAD00000000000000000000000000DEBDB500FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00F7E7D600F7E7CE00F7DE
      C600F7DEC600F7D6B500B584840000000000429CFF00E7CEB500FFF7E700FFF7
      E700FFFFF700F7EFE700EFCEA500FFE7C600FFF7E700FFFFF700FFFFFF00FFFF
      FF00399CFF005A8CCE0000000000000000000000000001420100A6A0A5002769
      2800096214001EBF4D0019B5410015AD350011A629000C9F1F00099C18000483
      0A00004D00000000000000000000000000000000000073737B005A63D6001010
      9C009C9CA5008C8C8C00FFFFFF00A5A5A5009C9CA50094949C009C94840021FF
      FF0000C6C60000000000C6B5B500000000000000000000000000DEC6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFEFE700FFEFDE00FFEFDE00FFEF
      D600E7DEC600C6BDAD00B584840000000000429CFF00FFEFDE00FFFFFF00FFFF
      FF00CEDEFF009CBDFF00B5BDDE00FFEFDE00FFFFFF00FFFFFF00FFFFFF00A5D6
      FF0052ADFF005A8CCE0000000000000000000000000001490100375835000949
      0A001BB747001EBC4C001DC14D001BBD470017BA3D0014AD33000D971F000154
      02000000000000000000000000000000000000000000737B7B00636BDE001010
      9C00A5A5A5008C8C8C00FFFFFF005A5A5A00DED6D600FFFFFF00E7E7E7004A39
      390000FFFF0000C6C60000000000000000000000000000000000E7C6B500FFFF
      FF00C6A59C00C6A59C00C6A59C00C6A59C00C6A59C00FFF7EF00F7E7D600C6A5
      9400B5948C00B58C8400B584840000000000429CFF007BC6FF00429CFF00429C
      FF00000000000000000000000000C6DEFF00C6DEFF00FFFFFF00FFFFFF0052AD
      FF005A8CCE00000000000000000000000000000000000000000009520D001757
      230024894500237F40002382400021954500218B410018B53F00035D06000000
      000000000000000000000000000000000000000000006B6B73004A4AC6000810
      A50052527B0084849C00ADA5AD0063635A0073736B00E7E7D600DEDEDE007352
      4A0021F7EF0000C6C60000000000000000000000000000000000E7C6B500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700E7CECE00BD8C
      7300EFB57300EFA54A00C6846B00000000000000000000000000000000000000
      000000000000000000000000000000000000429CFF00ADD6FF007BC6FF0063C6
      FF005A8CCE0000000000000000000000000000000000000000002D312B00283D
      2A0019401C001B471F001E4523001D58290021502B0007681000000000000000
      000000000000000000000000000000000000000000000000000029294A001818
      630018186B0029297B0021217B0029297B002929420039398400524A7B00C694
      7B005A4A29000000000000840000000000000000000000000000EFCEBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00C694
      7B00FFC67300CE94730000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007BC6FF005A8C
      CE00000000000000000000000000000000000000000000000000000000002D31
      2B002D312B002D312B002B362D002B372D00223C230000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000313131000000000021214A003131310021214A0000000000C694
      7B0073524A000084000000840000210021000000000000000000E7C6B500FFF7
      F700FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF00E7CECE00C694
      7B00CE9C84000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031313100313131000000000000000000313131003131
      3100000000006300630063006300000000000000000000000000E7C6B500EFCE
      B500EFCEB500EFCEB500EFCEB500E7C6B500E7C6B500EFCEB500D6BDB500BD84
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000141B8C000E10
      A1000000000032323200414141006D6760006D67600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B846300319C
      3100319C3100319C3100319C310052634200636B4A00948C8400000000000000
      00000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE6300000000000000000000685C54004446AA001114
      9E004B453F008C8C8E00F8F8F800DAD7D100C4C0BA00827F7D00686664005D59
      560042403E0000000000000000000000000000000000C64A2900C6421800CE4A
      2100CE4A2900C64A2900C64A290084736B000000000000000000000000000000
      0000000000000000000000000000000000000000000073AD73001084100021A5
      210039AD390039AD390039AD3900319C310031942900218421005A5242000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFF7
      EF00FFF7E700FFEFDE00FFEFD600FFE7CE00FFE7C600FFDEBD00FFDEB500FFD6
      AD00FFD6AD00FFD6A500CE6300000000000000000000927A6700605AB4001013
      9E00A77F5A008C8C8E00FFFFFF00FFFFFF00FFFFFC00CAC2BB00B8AFA500F3E5
      D300E7D7C4008F837800504D49000000000000000000F7634A00F7634A00FF7B
      6300FF8C6B00EFC69400D66B4200F7634A00D64A290042AD4200218421009CDE
      8C009CDE8C005AD65A0042CE420000000000000000003994390029AD29004ABD
      4A005AC65A0052B5520073B56B004AA54200B5E7A50042BD4200299C29000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF0018181800DECECE000842FF00394AAD00FFE7C600FFE7C600FFDE
      B500FFDEB500FFD6AD00CE6300000000000000000000927A67005D58B2001013
      9E00A68364008C8C8E00FEFFFF00FFFFFF0088888900585656001F1F21006460
      5B00FFF2E000FFEED8006D6C6B000000000000000000F7634A00FF7B6300FF8C
      6B00DE6B4200FFDEAD00DE7B4A00FF8C6B00E75A390052B5520084BD7300B5E7
      A5009CDE8C005AD65A005AD65A0000000000000000008CBD8C00299C29005AC6
      5A006BCE6B0063A56300F7FFEF0084BD7B00B5E7A50052C6520031A531000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00292929007384D600A5ADE7001039E700FFEFD600FFE7CE00FFDE
      BD00FFDEB500FFD6AD00CE6300000000000000000000927B69005D58B5001013
      9F00A78A70008C8C8E00FEFFFF00FFFFFF00BBBBBD00F2EFEE00FFFCF7001F1F
      2100EFE3D700FCEBD9006D6C6B000000000000000000D66B4A00EF7B5A00D66B
      4200DE9C8400FFBD8C00E78C5A00FF8C6B00B56B31005AAD5A00EFF7E700A5CE
      A5005AB55A009CDE8C009CDE8C000000000000000000000000000000000052B5
      52004A9C4200BDC6C600BDC6C60094B57B007BCE7B0052B55200399439000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF0042424200424242004242390042424A00738CEF00FFEFDE00FFE7
      CE00FFE7C600FFDEB500CE6300000000000000000000927F72005D5BBB001013
      9E00A9927E008C8C8E00FEFFFF00FFFFFF009F9FA000686869008B8A8B001F1F
      2100F6EEE500FCEEE2006D6C6B00000000000000000000000000A56342004221
      5A002929940042317300A5524A009463210073D673005AA55A00FFF7E700F7EF
      DE007BAD63009CDE8C005AA55A00000000000000000000000000000000004A8C
      420018734A00217BBD00217BBD004284630063BD630039943900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00F7F7F700F7EFEF00F7EFE700F7E7DE00426BF7004A6BEF00FFEF
      D600FFEFCE00FFE7C600CE6300000000000000000000786F6A005C5EC1001013
      9E00AA9889008C8C8E00FEFFFF00FFFFFF00828283001F1F210062626400BDBD
      BC00FFFEFA00FBF3EA006D6C6B00000000000000000031313100080808001039
      94001842AD001842AD0010399C000000000000000000187B7B002184D600218C
      DE002184D6005A7373000000000000000000000000000000000000000000217B
      BD002994EF003194FF003194FF002994EF00216B9C0000000000000000003994
      390094DE8C0039943900000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF0084848400848484008484840084848400FFFFFF00FFFFF700FFF7
      E700FFEFD600FFE7C600CE6300000000000000000000756E6E005D60C7001013
      9D00AB9E93008C8C8E00FEFEFF00FFFFFF00AAAAAB001F1F21001F1F21001F1F
      2100FFFEFC00FBF7F2006D6C6B00000000000000000018181800081018001852
      BD00185ABD00185ABD001852BD00737B8C0000000000298CE7003194F7003194
      F7003194F7002173A50000000000000000000000000000000000000000002994
      EF00399CFF00399CFF00399CFF00399CFF00298CE70000000000000000003994
      390094DE8C0039943900000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00080808008C8C8C00848CAD005A637B00FFFFFF00FFFFF700FFF7
      EF00FFF7E700FFEFD600CE6300000000000000000000757375005D64CF001013
      9D00A09FA6008C8C8E00FEFEFE00E2E2E200D9D9D900AAAAAA008B8B8C00D5D5
      D700FFFFFF00FBFAFA006D6C6B0000000000000000003131310021212100297B
      DE00297BE700297BE700297BDE004A5A84000000000042A5FF0042ADFF0042AD
      FF0042A5FF0039A5FF002973A50000000000000000000000000063849C0042A5
      FF004AADFF006BBDFF006BBDFF004AADFF0042A5F700399439005AC65A005AC6
      5A005AC65A005AC65A005AC65A003994390000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00292929007B94DE00849CFF001039E700FFFFFF00FFFFF700FFFF
      FF00FFF7EF00FFEFD600CE630000000000000000000075767B005D66D4001012
      9D00A09FA6008C8C8E00FFFFFF008F8F8F00A9A9A90088888900B6B6B700B5B5
      B600D9D9DA00FEFEFE006D6C6B0000000000000000003939390029292900298C
      F7005AADFF00429CFF00298CF700526B8C00000000004AADFF006BBDFF006BBD
      FF006BBDFF0042A5FF00529CC6000000000000000000000000006BA5C6004AAD
      FF004AB5FF0052B5FF006BBDFF006BBDFF004AADFF003994390094DE8C0094DE
      8C0094DE8C0094DE8C0094DE8C003994390000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00181818009CA5C600FFFFFF004A6BE700FFFFFF00FFFFF700FFF7
      EF00FFF7EF00FFEFD600CE630000000000000000000075767D005D66D5001012
      9D00A09FA6008C8C8E00FFFFFF00A6A6A6009F9FA0009797980092929300A6A6
      A700D7D7D800FFFFFF006D6C6B0000000000000000004A4A4A004A4A4A005252
      520031314200292994002929940000000000000000006BBDFF0042A5DE004AB5
      F7006BBDFF004AADF7002184BD0000000000000000000000000063A5C600298C
      CE003194DE002184C600298CC6002984C6002994CE0000000000000000003994
      390094DE8C0039943900000000000000000000000000D66B0000FFFFFF00FFFF
      FF00FFFFFF00EFEFEF00EFEFEF00EFEFEF00EFEFEF003163FF006B8CFF00FFF7
      EF00FFF7E700FFF7EF00CE630000000000000000000077787F006069D9001012
      9C00A3A1A3008C8C8E00FFFFFF005E5E5E00D8D9D900FAFAFB00E7E7E700A6A6
      A600D0D0D100FFFFFF006D6C6B000000000000000000393939005A5A5A009C9C
      9C00A5A5A5004A4A4A00313131000000000000000000187BB5003994C600429C
      CE003194CE002984BD00106B9C0000000000000000000000000063849C00428C
      C6004A94C6007BBDEF0063ADF700398CCE00216BA50000000000000000003994
      390094DE8C0039943900000000000000000000000000D6730000DE7B0000DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000EFEFFF006B8CFF00DE7B
      0000DE7B0000DE7B0000CE6300000000000000000000696A7000494FC5000E12
      A7005456780087869A00A9A6AA006563580074736E00E7E3D700E0E0DA00494A
      470077777700FFFFFF006D6C6B00000000000000000000000000000000004A4A
      4A00424242007B7B7B000000000000000000000000008CBDD6005AA5D60094C6
      E7007BBDE700529CC6000000000000000000000000000000000000000000428C
      B5004294C6009CCEE7008CBDE700106B9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6731000D673
      1000D6731000D6731000D6731000D6731000D6731000D6731000D6731000D673
      1000D6731000D67B210000000000000000000000000000000000292948001A1C
      63001C1F6900282B7A0023267B00282A7E002C2C45003C3B8100524D7A005853
      6E00434146007874700046464600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CC6DE0094C6
      DE0084B5D6000000000000000000000000000000000000000000000000000000
      00006BA5BD00529CBD004A8CAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003232320000000000242647003232320021214A00000000001E1E
      690022224A0009095C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000032323200323232000000000000000000323235003333
      330000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000000000
      E007000000000000C003000000000000C003000000000000E007000000000000
      FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000F801FFFFFFF8FFF9F80180008008FFF1
      F80180008008FFE1F80180000008FFC380018000000800008001800000000000
      8001800000000000800180000000000080008000000000008000800000000000
      8000800000000000800080000000000080038000000000008003C00100000000
      803FFFFF00020000807FFFFF00000000F81FFFFCC001FFFFE0079FF9C001FFFF
      C0038FF3C001FFFF800187E7C001FC7F8001C3CFC00188070000F11FC0010003
      0000F83FC00100010000FC7FC00100000000F83FC00180000000F19FC001C000
      0000E3CFC001C0008001C7E7C001E00080018FFBC001F021C0031FFFC003F87F
      E0073FFFC007FFFFF01FFFFFC00FFFFF80018001800180010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008001800180018001C7FFC87FC001FFFF007F8007C001FFFF
      000F8001C001FC3F000F8001C001C00F000F8001C001C00700078001C0018003
      00008001C001800180008001C001800180018001C001000180038001C0010003
      80078001C0010003800F8001C0010E07C01F8001C001FF07C03FC000C003FFCF
      E07FFA20C007FFFFFFFFFCC9C00FFFFFFFFFFFFFFFFFC87FFFFFC03F80018007
      80FF801F800180018001801F800180018001801F800180018001E01F80018001
      C001E03F800180018183E063800180018083E063800180018081C00080018001
      8081C000800180018181C063800180018181C06380018001E383E0FFC003C001
      FFC7F1FFFFFFFA23FFFFFFFFFFFFFCCF00000000000000000000000000000000
      000000000000}
  end
  object iml24: TImageList
    Height = 24
    Width = 24
    Left = 464
    Top = 10
    Bitmap = {
      494C01010F001300040018001800FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000087230000892500008723
      0000832000008723000087230000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B73008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000902B00008C24000088210000892300008923
      0000841F00007E1800007D1700007F1B0000811E000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300EFDECE00F7EFDE00F7E7
      D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7EFD600EFDECE008C5A5A00000000000000000000000000000000000000
      0000001890000018900000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000001890000018
      9000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000098330000922A00009C3B0800B66D4000CF9C7B00DDB7A100E0BF
      AB00DDBBA600CC9C8100B26C4A008F320E007B1600007F1B00007F1B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300EFDECE00F7EFDE00EFE7
      D600EFE7D600EFE7D600EFE7D600EFDECE00EFDECE00EFDECE00EFDECE00EFDE
      CE00EFE7D600EFDECE008C5A5A00000000000000000000000000000000000018
      9000001CC800001CC80000189000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000189000001CC800001C
      C800001890000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A3500009D3A0300C98C6300F3E5DC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7EFEB00C6917800882909007D170000811F
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300EFDED600F7EFE700EFE7
      DE00EFE7DE00EFE7D600EFE7D600EFE7D600EFE7D600EFDECE00EFDECE00EFDE
      CE00EFE7D600EFDECE008C5A5A0000000000000000000000000000189000001C
      C800092EEB00092EEB00001CC800001890000000000000000000000000000000
      00000000000000000000000000000000000000189000001CC800092EEB00092E
      EB00001CC8000018900000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009F38
      0000AA4C0F00E7CBB200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDD9CB00963C1C007B16
      0000811F00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5847300EFDED600F7EFE700F7DE
      C600FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00F7DE
      BD00EFE7D600EFDECE008C5A5A00000000000000000000189000001CC800092E
      EB00143CFC00143EFF00092EEB00001CC8000018900000000000000000000000
      000000000000000000000000000000189000001CC800092EEB000432FF000331
      FC00092EEB00001CC80000189000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A53F0000AD50
      0D00F2E0CC00FFFFFF00FFFFFF00FFFFFF00EDD9CB00C7917400AA5D3B009F4C
      2C00A4553600C0846B00E3CABC00FFFFFF00FFFFFF00FFFFFF00F3E5DC00963C
      1C007D1700007D17000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5847300EFDED600F7EFE700FFE7
      CE00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DE
      C600EFE7D600EFDECE008C5A5A000000000000000000001890007D8FFF005F76
      FF001640FF00153FFF00143EFE00092EEB00001CC80000189000000000000000
      0000000000000000000000189000001CC800092EEB000634FE000533FF000432
      FF005F76FF007D8FFF0000189000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AA440100E7CB
      AB00FFFFFF00FFFFFF00FCFAF700C6885C00912D030087220100831F0100811B
      00007E1800007B1600007E180000AC634500F7EEE900FFFFFF00FFFFFF00EDD9
      CF00892809007F1B0000000000000000000000000000A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300B5847300EFE7DE00FFF7EF00F7EF
      DE00F7E7DE00F7E7DE00F7E7D600F7E7D600F7E7D600F7E7D600EFE7D600EFE7
      D600F7E7D600EFDECE009C6B6300000000000000000000000000001890007D8F
      FF005F76FF001841FF00163FFF00143EFF00092EEB00001CC800001890000000
      00000000000000189000001CC800092EEB000936FF000836FF000836FF005F76
      FF007D8FFF000018900000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AB420000CF8F5000FFFF
      FF00FFFFFF00FCFAF800BB6E3200952D0200912D03008E2802008A240200861F
      0100821C01007F1900007D17000078110000933A1900F6EDE900FFFFFF00FFFF
      FF00C9957A007D170000811E00000000000000000000A57B7300EFDECE00F7EF
      DE00F7E7D600F7E7D600F7E7D600F7E7D600BD8C8400EFE7DE00FFF7EF00F7DE
      BD00FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500F7DE
      BD00F7E7DE00EFDECE009C6B6300000000000000000000000000000000000018
      90007D8FFF005F76FF001740FF00163FFF00143EFF00092EEB00001CC8000018
      900000189000001CC800092EEB000C38FF000A37FF000936FF005F76FF007D8F
      FF00001890000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B4510300F3E3D000FFFF
      FF00FFFFFF00D59F6800A34003009D3A050098350400932F04008F2A03008B25
      020087220100841E0100801B01007D180000821F0400AA5E3D00FFFFFE00FFFF
      FF00FAF3EE0090320D007F1B00000000000000000000A57B7300EFDECE00F7EF
      DE00EFE7D600EFE7D600EFE7D600EFE7D600BD8C8400EFE7DE00FFF7F700F7EF
      E700F7EFDE00F7E7DE00F7E7DE00F7E7D600F7E7D600F7E7D600F7E7D600F7E7
      D600F7E7DE00EFDECE009C6B6300000000000000000000000000000000000000
      0000001890007D8FFF005F76FF001740FF00163FFF00143EFF00092EEB00001C
      C800001CC800092EEB000F3AFF000D39FF000C38FF005F76FF007D8FFF000018
      9000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B44E0000C6762600FFFFFF00FFFF
      FF00F8EDE200B4540700AA470800E0B89A00B4622C009A37050096310400912C
      03008C27030089230200D0A18E00FCF8F7007F1A00007B160000E5CCC000FFFF
      FF00FFFFFF00B56E4A007F1800008B28000000000000A57B7300EFDED600F7EF
      E700EFE7DE00EFE7DE00EFE7D600EFE7D600CE9C8400EFE7E700FFFFF700F7EF
      DE00F7E7D600F7E7D600F7E7D600F7E7D600F7E7D600FFE7CE00F7DEC600F7E7
      D600F7EFDE00EFDED600A57B7300000000000000000000000000000000000000
      000000000000001890007D8FFF005F76FF001740FF00163FFF00143EFF00092E
      EB00092EEB00113CFF00103BFF000F3AFF005F76FF007D8FFF00001890000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B54E0000D79D5A00FFFFFF00FFFF
      FF00E7BF8B00B5520600B1500A00FFFFFF00FAF3EE00D39E7800AA501B009834
      0400932E03008F2A0300D5AA9500FFFFFF00831D01007D160000C0846900FFFF
      FF00FFFFFF00CE9F8400801900008B28000000000000B5847300EFDED600F7EF
      E700F7DEC600FFD6AD00FFD6AD00FFD6AD00CE9C8400F7EFE700FFFFFF00FFDE
      C600FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500FFD6A500F7DE
      C600F7EFE700EFE7D600A57B7300000000000000000000000000000000000000
      00000000000000000000001890007D8FFF005F76FF001740FF00163FFF00143E
      FF00133DFF00123CFF00113CFF005F76FF007D8FFF0000189000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BC580600E5BD8B00FFFFFF00FFFF
      FF00D7903800BC5D0A00B7580B00FAF2EA00FFFFFF00FFFFFF00EFDDCE00C788
      5C009F3E0C0095300400D7AB9200FFFFFF0088230200841D0100A6563400FFFF
      FF00FFFFFF00DDBBA600872300008723000000000000B5847300EFDED600F7EF
      E700FFE7CE00F7DEBD00F7DEBD00F7DEBD00DEAD8400F7EFEF00FFFFFF00FFF7
      F700FFF7EF00FFF7EF00F7EFEF00F7EFE700F7EFE700F7EFE700F7EFE700F7EF
      E700F7EFE700DED6CE00A57B7300000000000000000000000000000000000000
      000000000000000000000000000000189000001CC8000F35F5001740FF00163F
      FF00143EFF00133DFF00092EEB00001CC8000018900000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C66B1800EED0AB00FFFFFF00FFFF
      FF00D7892800C2650D00BD600C00FBF3ED00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EBD4C200B05D2B00D5A78A00FFFEFE008F2903008A240200A4512800FFFF
      FF00FFFFFF00E1C1AD008B2600008825000000000000B5847300EFE7DE00FFF7
      EF00F7EFDE00F7E7DE00F7E7DE00F7E7D600DEAD8400F7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7EF00FFF7F700EFE7
      E700D6D6D600BDBDBD00B5847300000000000000000000000000000000000000
      000000000000000000000000000000189000001CC8001036F5001841FF001741
      FF001640FF00153FFF00092EEB00001CC8000018900000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC7B2900F3DDC000FFFFFF00FFFF
      FF00DD9A4100C76A0C00C4670E00FBF4ED00FFFFFF00FFFFFF00FFFFFF00FCFA
      F700EBD3BD00B45F2600D8AC8C00FFFEFE00953004008F280300B1653900FFFF
      FF00FFFFFF00DEBAA3008B2600008B28000000000000BD8C8400EFE7DE00FFF7
      EF00F7DEBD00FFD6A500FFD6A500FFD6A500E7B58C00F7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7F700FFF7F700FFF7F700F7EFE700B5847300B584
      7300B5847300B5847300B5847300000000000000000000000000000000000000
      0000000000000000000000189000001CC800092EEB001A43FF001942FF001841
      FF001740FF001640FF00153FFF00092EEB00001CC80000189000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0812B00F3DDC000FFFFFF00FFFF
      FF00EECB9900CA6A0900C96D0F00FBF4EB00FFFFFF00FFFFFF00EED5BB00CE8C
      5000B1530E00AA490800DEB59500FFFFFF009A370500932D0200CE987200FFFF
      FF00FFFFFF00D1A07F008A2200008B28000000000000BD8C8400EFE7DE00FFF7
      F700F7EFE700F7EFDE00F7E7DE00F7E7DE00E7B58C00F7EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFFF00EFE7DE00B5847300E7AD
      7300EFAD5A00E79C4200BD848400000000000000000000000000000000000000
      00000000000000189000001CC800092EEB001D44FF001B43FF001A43FF005F76
      FF005F76FF001740FF001640FF00153FFF00092EEB00001CC800001890000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D07B1D00F0D7B200FFFFFF00FFFF
      FF00FBF4EA00CF750D00CE731000FFFFFF00FAF0E500E1AF7500C46C1900BB5C
      0C00B5570A00B1500A00E3BF9E00FFFFFF00A34007009C360100EDD9CB00FFFF
      FF00FFFFFF00BA7041008E2700000000000000000000CE9C8400EFE7E700FFFF
      F700F7EFDE00F7E7D600F7E7D600F7E7D600EFBD9400FFF7EF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B5847300F7C6
      7B00EFAD5A00BD84840000000000000000000000000000000000000000000000
      000000189000001CC800092EEB001F46FF001E45FF001D44FF005F76FF007D8F
      FF007D8FFF005F76FF001740FF001640FF00153FFF00092EEB00001CC8000018
      9000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9BD8600FEFBF700FFFF
      FF00FFFFFF00EAC18400CB6D0700EBC59000D5893200C96D0F00C4690E00C164
      0D00BC5F0C00B7590B00DEB28800F6E9DD00AA480700CC8F5800FFFFFF00FFFF
      FF00F8EDE2009E3E0700932D00000000000000000000CE9C8400F7EFE700FFFF
      FF00FFDEC600FFD6A500FFD6A500FFD6A500EFBD9400FFF7EF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B5847300E7B5
      7B00BD8484000000000000000000000000000000000000000000000000000018
      9000001CC800092EEB002247FF002147FF002046FF005F76FF007D8FFF000018
      9000001890007D8FFF005F76FF001740FF001640FF00153FFF00092EEB00001C
      C800001890000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DA964200FAEFDE00FFFF
      FF00FFFFFF00FFFFFF00E1A34F00CA690700CF761100CC731000CA6F0F00C76B
      0F00C2670D00BF600D00BA5C0C00B24D0500C4763000FEFAF700FFFFFF00FFFF
      FF00CB906200952E0000000000000000000000000000DEAD8400F7EFEF00FFFF
      FF00FFF7F700FFF7EF00FFF7EF00F7EFEF00EFBD9400DEAD8400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B5847300BD84
      840000000000000000000000000000000000000000000000000000189000001C
      C800092EEB002449FE002348FF002247FF005F76FF007D8FFF00001890000000
      000000000000001890007D8FFF005F76FF001741FF001640FF00153EFE00092E
      EB00001CC8000018900000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EAC28C00FEFB
      F700FFFFFF00FFFFFF00FFFFFF00EAC18400CF761100CC6D0900CC700D00CB72
      0F00C76A0C00C2630700C1650B00DDA66A00FEFCFA00FFFFFF00FFFFFF00EACE
      B600A03C03009D370000000000000000000000000000DEAD8400F7EFEF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7EF00FFF7
      F700EFE7E700D6D6D600BDBDBD00B58473000000000000000000000000000000
      0000000000000000000000000000000000000000000000189000001CC800092E
      EB00274BFF00264AFF00264AFF005F76FF007D8FFF0000189000000000000000
      00000000000000000000001890007D8FFF005F76FF001942FF001740FF00153F
      FF00092EEB00001CC80000189000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7892900F3D9
      B600FFFEFB00FFFFFF00FFFFFF00FFFFFF00FBF6EA00EECB9900DD9A4300D78A
      2B00DC963C00EAC48E00FAEFDE00FFFFFF00FFFFFF00FFFFFF00F2E0CC00AC50
      0F009F38000000000000000000000000000000000000E7B58C00F7EFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7F700FFF7F700FFF7F700F7EFE700B584
      7300B5847300B5847300B5847300B58473000000000000000000000000000000
      00000000000000000000000000000000000000000000001890007D8FFF005F76
      FF002C4FFF00274BFF005F76FF007D8FFF000018900000000000000000000000
      0000000000000000000000000000001890007D8FFF005F76FF001841FF001C44
      FF005F76FF007D8FFF0000189000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D991
      3500F3D9B600FEFCFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7CBAB00B0530D00A33C
      00000000000000000000000000000000000000000000E7B58C00F7EFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFFF00EFE7DE00B584
      7300E7AD7300EFAD5A00E79C4200BD8484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000001890007D8F
      FF005F76FF005F76FF007D8FFF00001890000000000000000000000000000000
      000000000000000000000000000000000000001890007D8FFF005F76FF005F76
      FF007D8FFF000018900000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D7892900EAC28C00FBF2E500FFFEFB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7EBDE00D79F6700AF4A0200A94200000000
      00000000000000000000000000000000000000000000EFBD9400FFF7EF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B584
      7300F7C67B00EFAD5A00BD848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000018
      90007D8FFF007D8FFF0000189000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000001890007D8FFF007D8F
      FF00001890000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D17D1600DC964200EAC18800F4E1C500FAF0E200FBF4EA00FBF4
      EA00F8EDDD00EFD7B700DDAB7000C26E1D00B14B0300B04A0000000000000000
      00000000000000000000000000000000000000000000EFBD9400FFF7EF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700B584
      7300E7B57B00BD84840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000001890000018900000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000001890000018
      9000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0760D00D07D1C00D4842D00D3883600D082
      3400C9742300C0640F00BA560300B75200000000000000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B584
      7300BD8484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000359600003596000035
      9600003596000035960000359600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000087230000892500008723
      0000832000008723000087230000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001290200012902000024
      0100001F0100001A0100001A0100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001290200012902000024
      0100001F0100001A0100001A0100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000005CED000052DC000048CC000044BF000045
      B8000041B000003AA40000359600002E7B0000235B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000902B00008C24000088210000892300008923
      0000841F00007E1800007D1700007F1B0000811E000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000460300003A000000320000003201000030
      0200002C010000230000001E0000001C00000018010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000460300003A000000320000003201000030
      0200002C010000230000001E0000001C00000018010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063FC00005CF600005AEF00166EE7004C93E60078B0EB008CBB
      ED008BBAED0072AAE6004186D7000D58BF0000399F00002E7F00002662000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000098330000922A00009C3B0800B66D4000CF9C7B00DDB7A100E0BF
      AB00DDBBA600CC9C8100B26C4A008F320E007B1600007F1B00007F1B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001580500004E00000A590E004080430079A47B009EBFA000A9C5
      AA00A3C0A4007EA37F00467648000D3D0F0000200000001B0000001601000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001580500004E00000A590E004080430079A47B009EBFA000A9C5
      AA00A3C0A4007EA37F00467648000D3D0F0000200000001B0000001601000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000062FF00005DFF001F7FFC0095C6FB00F0F7FE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E3EFFC007AADE7001159BC00003391000025
      6000000000000000000000000000000000000000000000000000000000000000
      00009A3500009D3A0300C98C6300F3E5DC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7EFEB00C6917800882909007D170000811F
      0000000000000000000000000000000000000000000000000000000000000367
      0800005E03000562090065A46900DDEBDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EAF0EA007499760008350900001C0000001A
      0100000000000000000000000000000000000000000000000000000000000367
      0800005E03000562090065A46900DDEBDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EAF0EA007499760008350900001C0000001A
      0100000000000000000000000000000000000000000000000000000000000065
      FF000368FF0075B5FF00F2F8FF00FFFFFF00FFFFFF00CCE1FA00CCE1FA00B1D1
      F800C0D9F800CCE0FA00CCE0FA00FFFFFF00FFFFFF00E0EDFB00518FD700003A
      9D00002664000000000000000000000000000000000000000000000000009F38
      0000AA4C0F00E7CBB200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDD9CB00963C1C007B16
      0000811F00000000000000000000000000000000000000000000046F09000066
      030013751800B6D7B800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CAD9CB0019481A00001E
      0000001A01000000000000000000000000000000000000000000046F09000066
      030013751800B6D7B800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CAD9CB0019481A00001E
      0000001A01000000000000000000000000000000000000000000036AFF00036A
      FF0090C5FF00FFFFFF00FFFFFF00D8E7FC009CC6F800095CE5000352E1000251
      E000014FE000014EDE000B5BE100B1D1F800FFFFFF00FFFFFF00FFFFFF005792
      D800003596000027640000000000000000000000000000000000A53F0000AD50
      0D00F2E0CC00FFFFFF00FFFFFF00FFFFFF00EDD9CB00C7917400AA5D3B009F4C
      2C00A4553600C0846B00E3CABC00FFFFFF00FFFFFF00FFFFFF00F3E5DC00963C
      1C007D1700007D17000000000000000000000000000000000000016F0600117B
      1700CFE7D000FFFFFF00FFFFFF00FFFFFF00CBE0CC0075A477003C763F002D64
      2E00376B39006D956E00C0D3C000FFFFFF00FFFFFF00FFFFFF00D8E3D8001949
      1A00001E00000018010000000000000000000000000000000000016F0600117B
      1700CFE7D000FFFFFF00FFFFFF00FFFFFF00CBE0CC0075A477003C763F002D64
      2E00376B39006D956E00C0D3C000FFFFFF00FFFFFF00FFFFFF00D8E3D8001949
      1A00001E000000180100000000000000000000000000000000000166FF0062AB
      FF00FFFFFF00FFFFFF00D9E9FC00408EF400065AE6000557E5000455E300085A
      E3000352E1000251E000014FE000014FDE005396EE00D7E6FB00FFFFFF00EFF6
      FB001B63BD0000348F0000000000000000000000000000000000AA440100E7CB
      AB00FFFFFF00FFFFFF00FCFAF700C6885C009530030088210000841F0000801B
      00007D1700007A150000801B0000AC634500F7EEE900FFFFFF00FFFFFF00EDD9
      CF00892809007F1B0000000000000000000000000000037B090004780900B0DC
      B200FFFFFF00FFFFFF00F8FBF80060A365000455070000430000003E00000037
      0000002E0000002900000134010046764800EAF0EA00FFFFFF00FFFFFF00CCDA
      CE0008350900001E0000000000000000000000000000037B090004780900B0DC
      B200FFFFFF00FFFFFF00F8FBF80060A36500034F050000400100003901000034
      010000300000002C00000031010046764800EAF0EA00FFFFFF00FFFFFF00CCDA
      CE0008350900001E0000000000000000000000000000066CFF001277FF00DEEF
      FF00FFFFFF00D9EAFC003889F4000A5FEA00085DE9005497F200C5DDFA00F0F6
      FE00EFF6FE00C0D9FA004C8FEB000250E000014EDE00468EED00D7E6FB00FFFF
      FF00A3C5E9000040A700003993000000000000000000AB420000CF8F5000FFFF
      FF00FFFFFF00FCFAF800BF74370093280000952E000096320000902C00008B28
      000087230000821F0000801C0000750E0000963E1D00F6EDE900FFFFFF00FFFF
      FF00C9957A007D170000811E00000000000000000000007B040058B15F00FFFF
      FF00FFFFFF00F8FBF8003E994400005A0000015A050003550600034E05000041
      00000D4E10004578470000350100002C000021572200E9EFE900FFFFFF00FFFF
      FF007499760000230000002001000000000000000000007B040058B15F00FFFF
      FF00FFFFFF00F8FBF80037933E0001550200014A030080AB810006460700003A
      01000035010000320000002E0000002C00001D531E00E9EFE900FFFFFF00FFFF
      FF007499760000230000002001000000000000000000036AFF005EA9FF00FFFF
      FF00FFFFFF0073B1FA000D66EF000D66EE009CC6F800FFFFFF008EBCF600468C
      EE004C91EE008EBBF400FFFFFF008AB7F3000251E100014FE0008EBCF400FFFF
      FF00FCFCFC00286FC700003EAC000000000000000000B4510300F3E3D000FFFF
      FF00FFFFFF00D59F6800A53F0000D4A07300C27E49009831000096320000912D
      00008C280000841F0000801B0000A65634008B2C0D00AA5E3D00FFFFFE00FFFF
      FF00FAF3EE0090320D007F1B000000000000048A0B00098A0F00D3EED500FFFF
      FF00FFFFFF0070BD7700006B0100036C080003650700035D0700004F01001A66
      1E00CBE0CC00A3C0A4000035000001360200002C000045784700FFFFFF00FFFF
      FF00EBF0ED000D410F000028000000000000048A0B00098A0F00D3EED500FFFF
      FF00FFFFFF0070BD7700016503000258050002520400FCFEFC00ADCBAF001052
      1100013C01000036010000330000002E0000002C000045784700FFFFFF00FFFF
      FF00EBF0ED000D410F0000280000000000000D73FF000B72FF00B5D8FF00FFFF
      FF00FEFFFF00116DF3000F6AF20063A5F700FFFFFF00428EF0000960EB00095D
      E900075BE700075BE6003C86EB00FFFFFF004C8FED000252E1001365E500D7E6
      FB00FFFFFF0078ABE2000046C10000399300B44E0000C6762600FFFFFF00FFFF
      FF00F8EDE200B7580600B2500300FFFEFB00E3BF9F009C3400009D3700009831
      00008C2400009F451900D7AD9800FFFFFF00A04E2B007A150000E5CCC000FFFF
      FF00FFFFFF00B56E4A007F1800008B2800000189070030A63900FFFFFF00FFFF
      FF00E2F4E5000E8E1600027A070004750A00036C0800005E010032863700E7F2
      E900FFFFFF0093BA9600003D0000013A02000035010001340100C0D3C000FFFF
      FF00FFFFFF00477A4900002C0000002C00000189070030A63900FFFFFF00FFFF
      FF00E2F4E5000A8311000368070003620600025A0500EBF4ED00FFFFFF00CBDE
      CB002F6F3200003D010000370100003401000030000000310100C0D3C000FFFF
      FF00FFFFFF00477A4900002C0000002C00000D73FF001C7FFF00EDF6FF00FFFF
      FF00B4D8FE001470F4001570F300CAE2FC0095C2FA000D66EE00277BF200126A
      EE00095FEA000A5EEA00065AE70091BDF600C5DDFA000354E3000353E200BBD8
      FA00FFFFFF00BAD5F3000155D400004ECB00B54E0000D79D5A00FFFFFF00FFFF
      FF00E7BF8B00B54C0000B8590600FBF4EB00E2BB9500A13900009D3500009E3B
      0300C2825600F8EFE900FFFFFF00FFFFFF00A14F290076100000C0846900FFFF
      FF00FFFFFF00CE9F8400801900008B2800000087060060BD6800FFFFFF00FFFF
      FF0091D497000086060005860C00037A090001700500469C4C00EFF7F000FFFF
      FF00FFFFFF0093BA96000044010001400300013A0300002E00006C956D00FFFF
      FF00FFFFFF0082AA840000350000003500000087060060BD6800FFFFFF00FFFF
      FF0091D49700027B080003700900036A070003630600EBF4ED00FFFFFF00FFFF
      FF00F7FAF7004D874F00013E02000139010000350100003000006C956D00FFFF
      FF00FFFFFF0082AA840000350000003500000E74FF003891FF00FBFCFF00FFFF
      FF0069ADFE001675F7001B78F600F0F7FF004C98F7001772F3000E68F0000D66
      EE000B63ED000A60EA00085EE900458EEF00E5F0FC000557E5000455E3007EB2
      F300FFFFFF00E3EFFC000562E6000058E700BC580600E5BD8B00FFFFFF00FFFF
      FF00D7903800BC550000BF5F0600FBF4EB00E2BB9500AA430300C2783B00EED8
      C400FFFFFF00FFFFFF00FFFFFF00FFFFFF00A65429007B160000A6563400FFFF
      FF00FFFFFF00DDBBA6008723000087230000018806008CD09300FFFFFF00FFFF
      FF0041AF490001880600048B0C000D8C16008BCA9000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0093BF9700004C0200024804000141030000330000356A3800FFFF
      FF00FFFFFF00A7C5A9000042020001410300018806008CD09300FFFFFF00FFFF
      FF0041AF4900047F0A000478090003720900036C0700EDF4ED00FFFFFF00FFFF
      FF00FFFFFF00FBFCFB005A925C0001400200003A010000350100356A3800FFFF
      FF00FFFFFF00A7C5A90000420200014103001378FF0055A4FF00FEFFFF00FFFF
      FF0065ABFE001878FB001676F800F4FAFF00509CF800126EF4002980F3000E69
      F3000D67EF000D66EE000C65ED000F65EB002374ED00065AE6000558E6006FA9
      F300FFFFFF00EDF6FF000667F000005CED00C66B1800EED0AB00FFFFFF00FFFF
      FF00D7892800C45C0000C5660600FBF4EB00E3BB8C00C16D2100FBF6EE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AB592900831C0000A4512800FFFF
      FF00FFFFFF00E1C1AD008B260000882500000A8E1000A9DDAD00FFFFFF00FFFF
      FF0030A63900018807000189070051B75900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0096C59800005403000250050002490400003A00002C662E00FFFF
      FF00FFFFFF00B0CEB100014A0400014703000A8E1000A9DDAD00FFFFFF00FFFF
      FF0030A6390005840C00057F0B0004790A0004740900EDF6ED00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F4F8F4000147030001410200013C01002C662E00FFFF
      FF00FFFFFF00B0CEB100014A0400014703001A7DFF0068AFFF00FFFFFF00FFFF
      FF007BB8FF001B7BFC001979FB00D5E9FE0088BDFC001573F700C7E1FC0093C4
      FB002279F3000F68EF000D66EF000B64ED000A62EB00095EEA00075CE70088BB
      F600FFFFFF00E1F0FF000568F400005DF200CC7B2900F3DDC000FFFFFF00FFFF
      FF00DD9A4100C75F0000CA6D0600FCF6EB00EAC59500B44A0000BD651500E2B8
      8E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B05E29008A210000B1653900FFFF
      FF00FFFFFF00DEBAA3008B2600008B28000013961A00B7E3BB00FFFFFF00FFFF
      FF0049B4520001880700058C0C00048A0B0057BA5F00F2FAF300FFFFFF00FFFF
      FF00FFFFFF0096C59800005C04000258060002500500004100003C793F00FFFF
      FF00FFFFFF00A5CAA700004D0200024D040013961A00B7E3BB00FFFFFF00FFFF
      FF0049B4520004890C0005860C0005800B00047B0A00EDF6ED00FFFFFF00FFFF
      FF00FFFFFF00E9F3EA0041894400014E030001480300014202003C793F00FFFF
      FF00FFFFFF00A5CAA700004D0200024D04001D7FFF006CB1FF00F8FCFF00FFFF
      FF00CCE5FF001C7EFC001C7DFC0074B4FE00F6FBFF004193FB00CAE2FE00FFFF
      FF00DCEDFE005FA3F800156EF0000F69F0000C65EE000B63ED000A60EB00C6DE
      FB00FFFFFF00B7DAFF000163F800005EF400D0812B00F3DDC000FFFFFF00FFFF
      FF00EECB9900C75F0000CC6F0600FCF6EB00EAC59500BC540000B7520000B14A
      0000C4752C00F3E3D000FFFFFF00FFFFFF00B46429008F240000CE987200FFFF
      FF00FFFFFF00D1A07F008A2200008B28000015981E00B7E3BB00FFFFFF00FFFF
      FF009ED9A30000870600058C0D00058C0C0000870600239F2C00DDF2DE00FFFF
      FF00FFFFFF0096CA99000165050003600700035906000047000076A77800FFFF
      FF00FFFFFF0082B58600004C0000004C000015981E00B7E3BB00FFFFFF00FFFF
      FF009ED9A300038A0A00058B0C0005870C0004820B00EDF7ED00FFFFFF00FFFF
      FF00E3F0E500348C3900035D060002570500025004000149020076A77800FFFF
      FF00FFFFFF0082B58600004C0000004C00003D95FF005AA7FF00E9F4FF00FFFF
      FF00FFFFFF002D8AFF001D7FFE002282FC00BBDCFE00F6FAFF00EDF6FF00FFFF
      FF00FFFFFF00FFFFFF00C6E0FE004592F7000F69F0000D67EE002A7FF300FFFF
      FF00FFFFFF0073B5FF00005BFC00005EF400D07B1D00F0D7B200FFFFFF00FFFF
      FF00FBF4EA00CF740B00CB6C0300FFFFFE00EECFA000C15A0000BF5B0000BA56
      0000B14A0000B6570A00D49A6400FAF3EE00BA692C009A350000EDD9CB00FFFF
      FF00FFFFFF00BA7041008E2700000000000012961A00A3DAA600FFFFFF00FFFF
      FF00EAF7EB0016981E0002890900058C0D00058C0D00018807001C9D2500C6E9
      C900FFFFFF0097CC9A00016C060003670800025D050004590700CCE1CE00FFFF
      FF00FFFFFF0046924B00005201000000000012961A00A3DAA600FFFFFF00FFFF
      FF00EAF7EB0010951800058C0D00058C0D0005880C00EFF8EF00FFFFFF00B0DA
      B4001F8A2600036C080003660700035F06000258050003570600CCE1CE00FFFF
      FF00FFFFFF0046924B000052010000000000000000003E96FF00CEE6FF00FFFF
      FF00FFFFFF00B0D7FF001E80FF001D80FE002686FE008FC4FE00FAFCFF00FFFF
      FF00FFFFFF00F7FBFF0090C1FC002E84F700116DF300116BF300B2D4FC00FFFF
      FF00FBFEFF002283FF00005FFF000000000000000000E9BD8600FEFBF700FFFF
      FF00FFFFFF00EAC18400C7640000E1A45300DA933500C7640000C5640000C15D
      0000BB580000B5500000AF460000B8601300AB490500CC8F5800FFFFFF00FFFF
      FF00F8EDE2009E3E0700932D0000000000000C91130072C67900F7FBF700FFFF
      FF00FFFFFF008ED1930000870600048B0C00058C0D00058C0D00018907000A91
      1200A3DAA600A3D5A60002750700036F0900005E010063A66700FFFFFF00FFFF
      FF00E5F0E5000C6B1100015B0500000000000C91130072C67900F7FBF700FFFF
      FF00FFFFFF008ED19300038A0A00058C0D00058C0D00F8FCFA008FCF93000A84
      1100047A0A0004750900036E080003680700015F030063A66700FFFFFF00FFFF
      FF00E5F0E5000C6B1100015B050000000000000000004298FF0097C9FF00FEFF
      FF00FFFFFF00FFFFFF0075B6FF001E80FF001E80FF001D7FFF00DCEDFF00FFFF
      FF00B1D5FE003C91FB001676F8001673F7001673F400BBDDFF00FFFFFF00FFFF
      FF0097C9FF000065FF000065FF000000000000000000DA964200FAEFDE00FFFF
      FF00FFFFFF00FFFFFF00E2A75600C55A0000C75F0000CA680000CA680000C764
      0000C15F0000BC590000B7520000AD420000C67A3500FEFAF700FFFFFF00FFFF
      FF00CB906200952E000000000000000000000000000035A93E00DDF2DE00FFFF
      FF00FFFFFF00FFFFFF0060BD68000086060002890900058C0D00058C0D00038A
      0A00078F0F002EA43700037F0900007002003E994400F7FBF700FFFFFF00FFFF
      FF0068B06D000060020000000000000000000000000035A93E00DDF2DE00FFFF
      FF00FFFFFF00FFFFFF0056B85E0003890A00058C0D005FBD6700058A0C000587
      0C0005810B00047D0A00047609000170050037953E00F7FBF700FFFFFF00FFFF
      FF0068B06D00006002000000000000000000000000000000000054A4FF00E1F0
      FF00FFFFFF00FFFFFF00FFFFFF008FC4FF001F81FF002584FF00ABD3FF005FA9
      FE001C7DFE001B7AFC001879FA001B79FA00A6CFFE00FFFFFF00FFFFFF00E7F3
      FF00177BFF000065FF0000000000000000000000000000000000EAC28C00FEFB
      F700FFFFFF00FFFFFF00FFFFFF00EAC18400CF761100C75F0000C7630000C763
      0000C65F0000C15A0000C2660A00DDA66A00FEFCFA00FFFFFF00FFFFFF00EACE
      B600A03C03009D370000000000000000000000000000189A21008AD09000F7FB
      F700FFFFFF00FFFFFF00FFFFFF008AD0900015981F0000870600008706000188
      070000870600008403000F9116006EBF7500FCFEFC00FFFFFF00FFFFFF00BADE
      BC0005720A00026B0700000000000000000000000000189A21008AD09000F7FB
      F700FFFFFF00FFFFFF00FFFFFF008AD090000F951800038A0A00048B0C00058A
      0D0004870B00038307000B8B13006EBF7500FCFEFC00FFFFFF00FFFFFF00BADE
      BC0005720A00026B0700000000000000000000000000000000005CA7FF008CC2
      FF00F8FCFF00FFFFFF00FFFFFF00FFFFFF00F8FCFF0079B8FF003C95FF002D8B
      FF002D8AFE004197FE008AC1FE00FFFFFF00FFFFFF00FFFFFF00FBFEFF00499D
      FF000065FF00036AFF0000000000000000000000000000000000D7892900F3D9
      B600FFFEFB00FFFFFF00FFFFFF00FFFFFF00FBF6EA00EECB9900DD9A4300D78A
      2B00DC963C00EAC48E00FAEFDE00FFFFFF00FFFFFF00FFFFFF00F2E0CC00AC50
      0F009F380000000000000000000000000000000000000000000031A63900BDE6
      C100FCFEFC00FFFFFF00FFFFFF00FFFFFF00EAF7EB009ED9A30049B4520031A7
      390042B04B0091D49700E1F3E200FFFFFF00FFFFFF00FFFFFF00CFEBD1001386
      1B0001720600000000000000000000000000000000000000000031A63900BDE6
      C100FCFEFC00FFFFFF00FFFFFF00FFFFFF00EAF7EB009ED9A30049B4520031A7
      390042B04B0091D49700E1F3E200FFFFFF00FFFFFF00FFFFFF00CFEBD1001386
      1B00017206000000000000000000000000000000000000000000000000005BA6
      FF009ACBFF00F2F8FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1E7FF00459AFF000268
      FF00066CFF00000000000000000000000000000000000000000000000000D991
      3500F3D9B600FEFCFA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7CBAB00B0530D00A33C
      00000000000000000000000000000000000000000000000000000000000047B1
      4F00C6E9C900FCFEFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0DCB200128C1A000179
      05000000000000000000000000000000000000000000000000000000000047B1
      4F00C6E9C900FCFEFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0DCB200128C1A000179
      0500000000000000000000000000000000000000000000000000000000000000
      00005EA9FF0078B8FF00D0E7FF00F8FCFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7F3FF008AC1FF001F81FF00056BFF00096F
      FF00000000000000000000000000000000000000000000000000000000000000
      0000D7892900EAC28C00FBF2E500FFFEFB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7EBDE00D79F6700AF4A0200A94200000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042B04B00B0E1B500F0FAF200FCFEFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E1F3E20072C67900088C0F00028408000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042B04B00B0E1B500F0FAF200FCFEFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E1F3E20072C67900088C0F00028408000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007FBBFF005AA6FF0087C0FF00BBDDFF00DAEDFF00E7F3FF00E7F3
      FF00DEEFFF00C7E2FF0096C7FF0052A1FF001C7FFF000E74FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D17D1600DC964200EAC18800F4E1C500FAF0E200FBF4EA00FBF4
      EA00F8EDDD00EFD7B700DDAB7000C26E1D00B14B0300B04A0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000033A93B006EC57500BDE6C100E3F4E500F0FAF200F3FAF300F0FA
      F200E7F6EA00CFEBD10098D59D003EAF460009901100058C0D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000033A93B006EC57500BDE6C100E3F4E500F0FAF200F3FAF300F0FA
      F200E7F6EA00CFEBD10098D59D003EAF460009901100058C0D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007DBAFF005AA6FF005AA6FF0060AAFF0060AA
      FF0052A1FF003E96FF002C8AFF00197DFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0760D00D07D1C00D4842D00D3883600D082
      3400C9742300C0640F00BA560300B75200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000030A7390048B450005DBC65006DC473006DC4
      730055B85B0035A93D0018992100099011000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000030A7390048B450005DBC65006DC473006DC4
      730055B85B0035A93D0018992100099011000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000003A0000003A000000
      3A0000003A0000003A0000003A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000003A0000003A000000
      3A0000003A0000003A0000003A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000359600003596000035
      9600003596000035960000359600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031B5630031B5630031B5
      6B0029AD6B0029AD6B0029AD6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000028B000001760000006600000056000000
      4E000000470000003F0000003C00000042000000520000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000028B000001760000006600000056000000
      4E000000470000003F0000003C00000042000000520000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000005CED000052DC000048CC000044BF000045
      B8000041B000003AA40000359600002E7B0000235B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000039C631004AC64A0031B5630031B5630031B5
      6B0029AD730029AD730029AD6B0029AD630029AD630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000039F000002990000008D00010486001A2091003D42A2004D50
      A6004D50A60035368D001010690000004300000034000000440000003F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000039F000002990000008D00010486001A2091003D42A2004D50
      A6004D50A60035368D001010690000004300000034000000440000003F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063FC00005CF600005AEF00166EE7004C93E60078B0EB008CBB
      ED008BBAED0072AAE6004186D7000D58BF0000399F00002E7F00002662000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010BD100021BD210031C6310042C6420031B55A0084CE9C009CD6
      AD00B5DEC600C6E7CE0029AD6B0021AD630029AD6B0031B5730039B573000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000005AC000001A300070EAA004950C400B9BEED00FCFCFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F0F0F8009FA0CD003636860002024400000033000000
      5300000000000000000000000000000000000000000000000000000000000000
      00000005AC000001A300070EAA004950C400B9BEED00FCFCFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F0F0F8009FA0CD003636860002024400000033000000
      5300000000000000000000000000000000000000000000000000000000000000
      00000062FF00005DFF001F7FFC0095C6FB00F0F7FE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E3EFFC007AADE7001159BC00003391000025
      6000000000000000000000000000000000000000000000000000000000000000
      000010BD100010BD100021C6180031CE2100EFF7FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DEEFE700D6E7DE0029AD730031B5730039B5
      6B00000000000000000000000000000000000000000000000000000000000006
      B7000002B0002C36C000D4D7F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B1B1D400131362000000
      2F00000051000000000000000000000000000000000000000000000000000006
      B7000002B0002C36C000D4D7F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B1B1D400131362000000
      2F00000051000000000000000000000000000000000000000000000000000065
      FF000368FF0075B5FF00F2F8FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F2F8
      FF00F8FCFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0EDFB00518FD700003A
      9D000026640000000000000000000000000000000000000000000000000010BD
      180010BD180021C61800EFF7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF7
      FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEEFE700D6E7DE0029AD
      630031B5630000000000000000000000000000000000000000000008C6000003
      BA003242D100F8FAFD00FFFFFF00FFFFFF00F8FAFD008D93DB004647B0002E2F
      9C002E2F9C004E4EAD00AEB0E000FFFFFF00FFFFFF00FFFFFF00D7D7E8001616
      66000000330000004C00000000000000000000000000000000000008C6000003
      BA003242D100F8FAFD00FFFFFF00FFFFFF00F8FAFD008D93DB004546B0002A2B
      9C002A2C9E004D4DAD00AEB0E000FFFFFF00FFFFFF00FFFFFF00D7D7E8001616
      66000000330000004C0000000000000000000000000000000000036AFF00036A
      FF0090C5FF00FFFFFF00FFFFFF00FFFFFF00DAEDFF0073B1FA002E82F0002F83
      ED00237AEA003C8AED0081B7F400E9F4FF00FFFFFF00FFFFFF00FFFFFF005792
      D80000359600002764000000000000000000000000000000000018BD210010BD
      180021C61800FFFFFF00FFFFFF00FFFFFF00DEEFFF0084CE9C0042BD520042BD
      52004AC652005AC66300CEE7D600D6E7DE00FFFFFF00FFFFFF00FFFFFF00D6E7
      DE0029AD630031B55A00000000000000000000000000000000000005C7001828
      D200F2F3FF00FFFFFF00FFFFFF00BDC1ED001E23AD0000008600000076000000
      6D00000066000000660000006E0032329E00D8D8F000FFFFFF00FFFFFF00C4C4
      DB0005054B0000004200000000000000000000000000000000000005C7001828
      D200F2F3FF00FFFFFF00FFFFFF00BDC1ED001E23AD000001880004068C000303
      880003057D00030370000505780034349F00D8D8F000FFFFFF00FFFFFF00C4C4
      DB0005054B0000004200000000000000000000000000000000000166FF0062AB
      FF00FFFFFF00FFFFFF00FFFFFF008AC1FF000D6FFE000050F6001370F200B5D7
      FB001672E900004BDD000052E000166EE700A4CEFA00FFFFFF00FFFFFF00EFF6
      FB001B63BD0000348F000000000000000000000000000000000018BD210021BD
      2100FFFFFF00FFFFFF00FFFFFF0094D6A50010A5520010A5520029B54A009CDE
      AD0042BD520052C6630063C6630063CE6B00CEE7DE00FFFFFF00FFFFFF00EFF7
      F70021AD630021AD6300000000000000000000000000000AD700010CD100B1BA
      F300FFFFFF00FFFFFF00ADB3ED00060DAD000000970000019000060A94001316
      98001315910003037A0000006D000000660010108400CFCFEB00FFFFFF00FFFF
      FF004E4F950000003C0000005D000000000000000000000AD700010CD100B1BA
      F300FFFFFF00FFFFFF00ADB3ED00060DAD00000098000A0FA300080FB1000506
      9B0016168F00121384000E0E820003036E0010108400CFCFEB00FFFFFF00FFFF
      FF004E4F950000003C0000005D000000000000000000066CFF001277FF00DEEF
      FF00FFFFFF00FFFFFF007DBAFF000065FF00005AFF002686FF00DDEEFF00FFFF
      FF005EA5F6000052E3000058E1000052E0000359E20098C6F800FFFFFF00FFFF
      FF00A3C5E9000040A70000399300000000000000000018B5290018BD2100B5DE
      C600FFFFFF00FFFFFF00ADDEBD0010A56300109C630021AD5A00DEEFE700FFFF
      FF00BDE7C6004AC65A0052C663005AC6630063CE6300CEE7D600FFFFFF00FFFF
      FF00D6E7DE0021A5630029AD630000000000000000000007DB002036DD00FFFF
      FF00FFFFFF00E2E5F7000B18C4000002AE000005A900000097004F57C600F8F8
      FD00F8F8FD002B30A90000006D0000006E00000066001D1D9100F7F7FC00FFFF
      FF00CFCFE0000404540000005B0000000000000000000007DB002036DD00FFFF
      FF00FFFFFF00E2E5F7000B18C4000002AE000107AC000407A4000206A6000508
      9E000B0D890008097E000606780003037600000066001D1D9100F7F7FC00FFFF
      FF00CFCFE0000404540000005B000000000000000000036AFF005EA9FF00FFFF
      FF00FFFFFF00B7DAFF00066DFF000062FF003992FF00E9F4FF00FFFFFF00FFFF
      FF00BBDDFF00015EEE000058E5000058E1000052E0000963E500D1E7FC00FFFF
      FF00FCFCFC00286FC700003EAC00000000000000000018B5290021BD2100FFFF
      FF00FFFFFF00B5DEC60010AD420010A55A0021B55A00EFF7F700FFFFFF00FFFF
      FF00E7F7EF0042BD52004AC6520052C652005AC65A0063C66300CEE7D600FFFF
      FF00FFFFFF0021A5630021A5630000000000000DEA000008E3006278F200FFFF
      FF00FFFFFF004C60E6000003C6000006BD000005B4000000A300505BCF00FFFF
      FF00FFFFFF002B30A900000076000000730000006E00000068007879C100FFFF
      FF00FFFFFF003636860000005B0000005300000DEA000008E3006278F200FFFF
      FF00FFFFFF004C60E6000003C6000006BD000006B4000204A9000205A4000509
      9C00080A880007077B00030374000000750000006E00000068007879C100FFFF
      FF00FFFFFF003636860000005B00000053000D73FF000B72FF00B5D8FF00FFFF
      FF00FEFFFF004097FF000065FF004E9FFF00F4FAFF00FFFFFF00FFFFFF00FFFF
      FF00FBFEFF001F7FF7000058EE00005AE7000058E100004FDE00509AF000FFFF
      FF00FFFFFF0078ABE2000046C1000039930010AD420018B52900A5DEBD00FFFF
      FF00FFFFFF0021BD310010AD420029B55A00F7F7FF00FFFFFF00FFFFFF00FFFF
      FF00F7FFFF0031BD420039BD42004AC64A005AC65A005AC663006BCE6B00FFFF
      FF00FFFFFF00C6E7D60021AD630021AD6300000EF0000010EA00B3C0FD00FFFF
      FF00EBF0FF00071BE3000008D500010ECD00020EC4000206B6005965D800FFFF
      FF00FFFFFF00363FBB0002028B000204870001017B0000006A001B1B8F00FCFC
      FD00FFFFFF007879C10000006A0000003600000EF0000010EA00B3C0FD00FFFF
      FF00EBF0FF00071BE3000008D500010ECD00020EC4000204B4000D15AE000E12
      9B000E1089000C0D8700020283000204860001017B0000006A001B1B8F00FCFC
      FD00FFFFFF007879C10000006A00000036000D73FF001C7FFF00EDF6FF00FFFF
      FF00D5EAFF001579FF0067ADFF00FBFEFF00FFFFFF00FFFFFF007AB8FF0063AC
      FF00FFFFFF0072B4FE000059F700005DF200005BE9000055E2000D69E600EFF7
      FF00FFFFFF00BAD5F3000155D400004ECB0010AD420018B52900EFF7FF00FFFF
      FF00A5DEB50018B52900D6EFDE00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7FFF70029BD420042C64A0052C65A005AC663006BCE6B00EFF7
      FF00FFFFFF00CEE7D60029AD6B0029AD6300000EF800051AF200E2E8FF00FFFF
      FF00BBC7FF000010EF000009E2006F82F000E8EBFC00E6E6FA00F2F3FF00FFFF
      FF00FFFFFF00EFF0FA00E6E6F700E6E6F700494DB7000000700004057D00EAEA
      F700FFFFFF00A3A7DD0000017E0000004500000EF800051AF200E2E8FF00FFFF
      FF00BBC7FF000010EF000009E2006F82F000E6EAFC00D7D7F800D2D5F800C9C9
      EB00C6C6ED00CFD1F000D8D8F200E5E5F700494DB7000000700004057D00EAEA
      F700FFFFFF00A3A7DD0000017E00000045000E74FF003891FF00FBFCFF00FFFF
      FF00A5D0FF00177BFF00C0DEFF00FFFFFF00F7FBFF0062ABFF000267FF00066D
      FF00D0E7FF00DDEEFF000469FF00005EF800005DF200005AEA00015CE600C5DE
      FB00FFFFFF00E3EFFC000562E6000058E70018B5390021BD2100F7FFFF00FFFF
      FF0094D6AD0018B52900CEEFDE00FFFFFF00F7F7FF00F7FFF700089C6B00109C
      6300FFFFFF00F7FFF70029B54A0042BD520052C65A005AC65A0063CE6300D6E7
      DE00FFFFFF00CEE7D60031B56B0029AD63000013FF00132FFA00F2F3FF00FFFF
      FF00A7B9FF000011FC00000BEF008799F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00585EC40000007B0002038200E2E5
      F700FFFFFF00AEB0E00000028000000079000013FF00132FFA00F2F3FF00FFFF
      FF00A7B9FF000011FC00000BEF008799F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00585EC40000007B0002038200E2E5
      F700FFFFFF00AEB0E00000028000000079001378FF0055A4FF00FEFFFF00FFFF
      FF00A0CEFF001378FF00308CFF00B7DAFF004A9EFF00066DFF000A70FF000268
      FF004097FF00FFFFFF003D95FF00005DFF000063FA00005EF400015EED00B8D8
      FA00FFFFFF00EDF6FF000667F000005CED0018B5420021BD2900FFFFFF00FFFF
      FF008CD6A50018B5290021BD3100D6EFDE0029B5520010A55A0010A56300109C
      630029B56300FFFFFF0039BD5A0039BD5A004AC65A005AC6630063C66300DEEF
      E700FFFFFF00D6E7DE0031B5630031B563000C27FF002645FF00EFF2FF00FFFF
      FF00C3CFFF000014FF00000DFC00536EFD00ADBAFA00ADB7F800D5DBFA00FFFF
      FF00FFFFFF00C9CDF500ADB3ED00ADB4EA00363FBB0000008700060A9300EFF0
      FA00FFFFFF00A3A7DD0000028600000080000C27FF002645FF00EFF2FF00FFFF
      FF00C3CFFF000014FF00000DFC00536EFD00ADBAFA00ACB6F800C3CCF700D5DA
      F700CFD1F300A9B1EF00A6ADEB00ADB4EA00363FBB0000008700060A9300EFF0
      FA00FFFFFF00A3A7DD0000028600000080001A7DFF0068AFFF00FFFFFF00FFFF
      FF00B0D7FF001C7FFF00197DFF001A7EFF001176FF001277FF000F75FF000B72
      FF00046BFF00A1CFFF00B0D7FF000065FF000065FF000060FB000264F600CBE5
      FC00FFFFFF00E1F0FF000568F400005DF20018B5420021BD2100FFFFFF00FFFF
      FF0094D6A50018BD210018B5310018B5420018AD520018AD520018AD520010A5
      5A0010A56300F7FFF700F7FFF70039BD63004AC6630052C6630063CE6300DEEF
      E700FFFFFF00D6E7DE0039BD5A004AC652001E3CFF002E4DFF00E2E8FF00FFFF
      FF00F2F3FF000B26FF00000FFF000013FF000012F5000008E600556AEF00FFFF
      FF00FFFFFF002F41D5000003B4000006AD000005A40000009400222AB000FDFD
      FF00FFFFFF00767DD20000008700000186001E3CFF002E4DFF00E2E8FF00FFFF
      FF00F2F3FF000B26FF00000FFF000013FF000012F500010AE3000E1ACF000915
      C6000A13C400040EBD000003B3000006AD000005A40000009400222AB000FDFD
      FF00FFFFFF00767DD20000008700000186001D7FFF006CB1FF00F8FCFF00FFFF
      FF00E1EFFF002686FF001C7FFF001C7FFF001A7EFF00177BFF001378FF001176
      FF00086EFF001A7EFF00D5EAFF002686FF000065FF000062FF001578FF00F4FA
      FF00FFFFFF00B7DAFF000163F800005EF40021B5420029BD2900F7FFFF00FFFF
      FF00A5DEB50021BD290021BD290021B5390018B5420018B5420018B5420010AD
      4A0010AD520021AD5A00F7FFF70039BD630042BD630052C663005AC66300F7F7
      FF00FFFFFF00CEE7DE004AC64A0042C64A000114FF002645FF00CFD8FF00FFFF
      FF00FFFFFF00617DFF00000BFF000010FF000010FF000008F700526AF700FFFF
      FF00FFFFFF002D41DD000003C0000005B9000004AE000002A4008D93DB00FFFF
      FF00FFFFFF002C36C00000008B00000000000114FF002645FF00CFD8FF00FFFF
      FF00FFFFFF00617DFF00000BFF000010FF000010FF00010DF0000008EA000718
      E0000006CC000008C6000003BD000005B9000004AE000002A4008D93DB00FFFF
      FF00FFFFFF002C36C00000008B00000000003D95FF005AA7FF00E9F4FF00FFFF
      FF00FFFFFF005EA9FF001579FF001E80FF001E80FF001C7FFF00187AFF001378
      FF001176FF00066CFF0052A1FF0081BDFF000166FF00005FFF0068AFFF00FFFF
      FF00FFFFFF0073B5FF00005BFC00005EF40021B54A0029BD2900E7F7FF00FFFF
      FF00FFFFFF00B5DEC60021BD310021B5390021B5420018B5390018B5390018B5
      420010AD420010A5520031BD5200EFF7F70039BD5A0042BD5A00D6E7DE00FFFF
      FF00FFFFFF00CEE7D60042C64A0039BD4A00000000001E3CFF00ADBDFF00FFFF
      FF00FFFFFF00F2F3FF001735FF00000BFF000011FF00000BFF004662FF00E6EB
      FF00E6EBFF002940E6000006CF000008C6000002B9003242D100FFFFFF00FFFF
      FF00CCD1F2000208A0000001940000000000000000001E3CFF00ADBDFF00FFFF
      FF00FFFFFF00F2F3FF001735FF00000BFF000011FF000417FF00061BFD000416
      EF000006DA000310D5000007CF000008C6000002B9003242D100FFFFFF00FFFF
      FF00CCD1F2000208A0000001940000000000000000003E96FF00CEE6FF00FFFF
      FF00FFFFFF00D1E7FF002686FF00197DFF001E80FF001E80FF001C7FFF00197D
      FF001579FF001176FF000B72FF0068AFFF00197DFF00197DFF00E6F2FF00FFFF
      FF00FBFEFF002283FF00005FFF00000000000000000029BD39009CD6AD00FFFF
      FF00FFFFFF00C6E7CE0029BD390021B5390021B5390021B5390018B5390018B5
      420018B5420010AD4A0018AD5200E7F7EF0031BD520039BD5200E7F7FF00FFFF
      FF00F7FFFF0052C64A0042C64A0000000000000000003656FF006882FF00FDFD
      FF00FFFFFF00FFFFFF00CCD5FF00112DFF00000BFF00000FFF000115FF000219
      FD000217F5000010EA000009DD000005CF002036DD00E8EBFC00FFFFFF00FFFF
      FF004350CA0000019C000000000000000000000000003656FF006882FF00FDFD
      FF00FFFFFF00FFFFFF00CCD5FF00112DFF00000CFF000111FF00051BFF00061E
      FF000514E300010FDF000009DB000005CF002036DD00E8EBFC00FFFFFF00FFFF
      FF004350CA0000019C000000000000000000000000004298FF0097C9FF00FEFF
      FF00FFFFFF00FFFFFF00ABD4FF002081FF00167AFF001D7FFF001E80FF001D7F
      FF001A7DFF00167AFF000F74FF000F75FF003E96FF00BBDDFF00FFFFFF00FFFF
      FF0097C9FF000065FF000065FF00000000000000000031BD420042CE3900FFFF
      FF00FFFFFF00FFFFFF00C6E7CE0029BD420021B5420021B5390021B5390021B5
      390018B5390018B5420018B5420018B5420031BD4200C6E7CE00FFFFFF00FFFF
      FF00CEE7DE0042C64A0042C642000000000000000000000000003452FF00CFD8
      FF00FFFFFF00FFFFFF00FFFFFF00E2E8FF003B57FF000114FF00000BFF000008
      FF000008FF00000BF7000619EB00556AEF00F3F7FF00FFFFFF00FFFFFF00B9BE
      ED000209AE000003A300000000000000000000000000000000003452FF00CFD8
      FF00FFFFFF00FFFFFF00FFFFFF00E2E8FF003D58FF000318FF00000DFF000009
      FF000008FA00000AF3000619EB00556AEF00F3F7FF00FFFFFF00FFFFFF00B9BE
      ED000209AE000003A3000000000000000000000000000000000054A4FF00E1F0
      FF00FFFFFF00FFFFFF00FFFFFF00BDDDFF004097FF00197DFF001378FF00167A
      FF001579FF001176FF001579FF004399FF00CEE5FF00FFFFFF00FFFFFF00E7F3
      FF00177BFF000065FF000000000000000000000000000000000039C64200A5DE
      B500FFFFFF00FFFFFF00FFFFFF00C6E7CE0029BD390018B5310018B5310018B5
      310018B5310018B5310018B5310021BD3100B5DEC600FFFFFF00FFFFFF00E7F7
      FF0042C64A0042C64A00000000000000000000000000000000006882FF00617D
      FF00EBF0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BBC7FF006E86FF00506C
      FF00536EFD00768DFF00D7DFFF00FFFFFF00FFFFFF00FFFFFF00C3CAF5000C18
      C1000003AE0000000000000000000000000000000000000000006882FF00617D
      FF00EBF0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BBC7FF006E86FF00506C
      FF00536EFD00768DFF00D7DFFF00FFFFFF00FFFFFF00FFFFFF00C3CAF5000C18
      C1000003AE0000000000000000000000000000000000000000005CA7FF008CC2
      FF00F8FCFF00FFFFFF00FFFFFF00FFFFFF00F8FCFF00AFD5FF0076B6FF0060AA
      FF0062ABFF007DBAFF00BBDDFF00FFFFFF00FFFFFF00FFFFFF00FBFEFF00499D
      FF000065FF00036AFF000000000000000000000000000000000042C652004AC6
      4A00F7FFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00B5DEC600ADDEBD00A5DE
      BD00A5DEB5009CD6AD009CD6AD00FFFFFF00FFFFFF00FFFFFF00F7FFFF004AC6
      4A0042C64A0039C64A0000000000000000000000000000000000000000004662
      FF00768DFF00EBF0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094A2F0000916C9000003
      BA00000000000000000000000000000000000000000000000000000000004662
      FF00768DFF00EBF0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094A2F0000916C9000003
      BA00000000000000000000000000000000000000000000000000000000005BA6
      FF009ACBFF00F2F8FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1E7FF00459AFF000268
      FF00066CFF0000000000000000000000000000000000000000000000000042C6
      4A0042CE4200EFF7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADDEBD0042C64A0042BD
      520042BD52000000000000000000000000000000000000000000000000000000
      0000647EFF005570FF00B3C0FD00F2F3FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F8F8FD00ADB7F8003B52E800010DD1000006C7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000647EFF005570FF00B3C0FD00F2F3FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F8F8FD00ADB7F8003B52E800010DD1000006C7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005EA9FF0078B8FF00D0E7FF00F8FCFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7F3FF008AC1FF001F81FF00056BFF00096F
      FF00000000000000000000000000000000000000000000000000000000000000
      000039BD4A0039C6420094D6A500F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7F7FF0039C6390039BD420039BD520039BD
      6300000000000000000000000000000000000000000000000000000000000000
      000000000000000000004662FF005B75FF0095A9FF00C6D1FF00D5DDFF00D2DB
      FF00C3CFFF009CADFC004C67F8001129EA00010FDB00000AD500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004662FF005B75FF0095A9FF00C6D1FF00D5DDFF00D2DB
      FF00C3CFFF009CADFC004C67F8001129EA00010FDB00000AD500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007FBBFF005AA6FF0087C0FF00BBDDFF00DAEDFF00E7F3FF00E7F3
      FF00DEEFFF00C7E2FF0096C7FF0052A1FF001C7FFF000E74FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000039C64A0029BD390029BD310094D6AD009CD6B5009CD6AD009CDE
      AD009CD6AD009CD6B50031C6310029BD390029B54A0029B55A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000506CFF003656FF003A58FF003A58
      FF002E4DFF001732F800132CF2001129EA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000506CFF003656FF003A58FF003A58
      FF002E4DFF001732F800132CF2001129EA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007DBAFF005AA6FF005AA6FF0060AAFF0060AA
      FF0052A1FF003E96FF002C8AFF00197DFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000031BD420029BD420029BD390029BD390029BD
      420029BD420021B5420021B54A0018AD5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ADADAD00A59C9C00AD9C9C00ADA59C00AD9C
      9400A594940094848400736B6B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000359600003596000035
      9600003596000035960000359600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000003A0000003A000000
      3A0000003A0000003A0000003A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00ADADAD00E7D6CE00F7E7DE00F7EFE700EFEFEF00EFEF
      EF00EFEFEF00EFE7E700EFDED600BDADA5007B73730073737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000005CED000052DC000048CC000044BF000045
      B8000041B000003AA40000359600002E7B0000235B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000028B000001760000006600000056000000
      4E000000470000003F0000003C00000042000000520000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C63630042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00E7D6CE00F7EFEF00EFEFEF00EFEFEF00E7DEDE00E7E7E700E7E7
      E700E7E7E700EFEFEF00EFEFEF00EFEFEF00EFE7E700B5A59C00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063FC00005CF600005AEF00166EE7004C93E60078B0EB008CBB
      ED008BBAED0072AAE6004186D7000D58BF0000399F00002E7F00002662000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000039F000002990000008D00010486001A2091003D42A2004D50
      A6004D50A60035368D001010690000004300000034000000440000003F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C6363004242420042424200B55A0000B55A0000424242008C63
      63008C6363008C6363008C6363008C6363008C6363008C6363008C6363008C63
      630000000000000000000000000000000000000000000000000000000000ADAD
      AD00EFE7E700EFEFEF00EFEFEF00E7DEDE00CEAD9C00BD846300C6735200C67B
      5200CE846300D69C8400DECEC600E7E7E700EFEFEF00F7EFEF00CEBDB5006363
      6300000000000000000000000000000000000000000000000000000000000000
      00000062FF00005DFF001F7FFC0095C6FB00F0F7FE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E3EFFC007AADE7001159BC00003391000025
      6000000000000000000000000000000000000000000000000000000000000000
      00000005AC000001A300070EAA004950C400B9BEED00FCFCFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F0F0F8009FA0CD003636860002024400000033000000
      5300000000000000000000000000000000000000000000000000000000008C63
      630042424200B55A0000B55A0000A5520800B55A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840010AD840010AD840010AD84008C63
      6300000000000000000000000000000000000000000000000000ADADAD00F7EF
      E700EFEFEF00EFEFEF00D6B5A500C6734A00BD633100BD633100C6947B00DEBD
      A500C6734200BD633100BD633900CE8C6B00E7D6CE00EFEFEF00F7EFEF00C6BD
      B500636363000000000000000000000000000000000000000000000000000065
      FF000368FF0075B5FF00F2F8FF00FFFFFF00FFFFFF00CCE1FA00CCE1FA00B1D1
      F800C0D9F800CCE0FA00CCE0FA00FFFFFF00FFFFFF00E0EDFB00518FD700003A
      9D00002664000000000000000000000000000000000000000000000000000006
      B7000002B0002C36C000D4D7F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B1B1D400131362000000
      2F000000510000000000000000000000000000000000000000008C636300B55A
      0000B55A0000B55A0000C65A0000C65A0000C65A0000C65A00004242420010AD
      840010AD840010AD840010AD840010AD840018A57B0018A57B0018A57B008C63
      63000000000000000000000000000000000000000000ADADAD00F7E7DE00F7F7
      F700EFEFEF00D6A58C00BD633900C6633100C6633100BD734A00D6CECE00F7F7
      F700E7C6B500C6633100C6633100BD633100C6734A00DECEC600EFEFEF00F7EF
      EF00A59C94007373730000000000000000000000000000000000036AFF00036A
      FF0090C5FF00FFFFFF00FFFFFF00D8E7FC009CC6F800095CE5000352E1000251
      E000014FE000014EDE000B5BE100B1D1F800FFFFFF00FFFFFF00FFFFFF005792
      D8000035960000276400000000000000000000000000000000000008C6000003
      BA003242D100F8FAFD00FFFFFF00FFFFFF00AAADE0002C30A40007087D000001
      6D00000069000808760036379E00AEAEDB00FFFFFF00FFFFFF00D7D7E8001616
      66000000330000004C00000000000000000000000000000000008C636300C65A
      0000C65A0000C65A0000C65A0000C65A0000CE630000CE6300004242420010AD
      840018A57B0018A57B0018A57B00189C7B00189C730021947300398C6B008C63
      63000000000000000000000000000000000000000000C6C6C600F7F7F700EFEF
      EF00DEAD9400BD633100C6633100C6633100C6633100C6734A00D6CECE00F7F7
      F700DEAD9400CE633100C6633100C6633100BD633100C6734A00E7DED600EFEF
      EF00F7E7DE00736B6B00000000000000000000000000000000000166FF0062AB
      FF00FFFFFF00FFFFFF00D9E9FC00408EF400065AE6000557E5000455E300085A
      E3000352E1000251E000014FE000014FDE005396EE00D7E6FB00FFFFFF00EFF6
      FB001B63BD0000348F00000000000000000000000000000000000005C7001828
      D200F2F3FF00FFFFFF00FFFFFF005058C40002058C0000017E00000176000000
      720000006C00000067000000660003036E005C5CB300FFFFFF00FFFFFF00C4C4
      DB0005054B0000004200000000000000000000000000000000008C636300C65A
      0000CE630000CE630000CE630000CE630000CE630000CE630000424242002984
      630021947300219473002194730021946B00218C6B00298C6B0042846B008C63
      63000000000000000000000000000000000000000000F7E7E700F7F7F700E7D6
      CE00C66B3900C6633100C6633100CE633100CE633100CE633100CE846300DE9C
      7B00CE6B3900CE633100CE633100C6633100C6633100BD633100CE8C6B00EFEF
      EF00F7F7F700B5A59C009C9C9C000000000000000000066CFF001277FF00DEEF
      FF00FFFFFF00D9EAFC003889F4000A5FEA00085DE900095DE9000559E6000457
      E3000556E2000353E2000251E0000250E000014EDE00468EED00D7E6FB00FFFF
      FF00A3C5E9000040A700003993000000000000000000000AD700010CD100B1BA
      F300FFFFFF00FFFFFF004955CD0000049C000003910000028800000182000001
      7A000000740000006E000000690000006600000067005757B000FFFFFF00FFFF
      FF004E4F950000003C0000005D000000000000000000000000008C636300CE63
      0000CE630000CE630000CE6B0000CE6B0000CE6B0000CE630000424242002973
      5A00218C6B00298C6B00298C6300298C6B002984630029846300298C6B008C63
      630000000000000000000000000000000000D6CECE00F7F7F700F7F7F700D694
      7300C6633100C6633100CE6B3100CE633100CE633100CE6B3900CE846300DE94
      6B00CE734A00CE633100CE633100CE633100C6633100C6633100BD633100E7CE
      C600F7F7F700EFDED6006B6B6B000000000000000000036AFF005EA9FF00FFFF
      FF00FFFFFF0073B1FA000D66EF0087B8F700FCFEFF0074ACF400075CE7000659
      E6000C5FE6000C5EE50087B6F300E0EDFC000250E100014FE0008EBCF400FFFF
      FF00FCFCFC00286FC700003EAC0000000000000000000007DB002036DD00FFFF
      FF00FFFFFF009BA6EA000009B6000005AA000004A0000003970000028D000002
      860000017E00000176000000720000006C000000680001016D00A9A9D800FFFF
      FF00CFCFE0000404540000005B000000000000000000000000008C636300CE63
      0000CE6B0000CE6B0000CE6B0000CE6B0000CE6B0000D673000042424200298C
      6B002984630029845A00317B5A00317B5200317B5A0039845A00427B63008C63
      630000000000000000000000000000000000EFDED600F7F7F700EFE7E700C673
      4200C66B3900CE6B3900CE6B3100CE633100CE633100C66B3900D6CECE00FFF7
      F700DE9C7B00CE633100CE633100CE633100CE633100C6633100C6633100D69C
      8400EFEFEF00F7EFE7008C847B00000000000D73FF000B72FF00B5D8FF00FFFF
      FF00FEFFFF00116DF3000F6AF2003184F400BFDAFB00FFFFFF004D95F200095D
      E900075CE70095C0F600FFFFFF008AB8F4000353E2000252E1001365E500D7E6
      FB00FFFFFF0078ABE2000046C10000399300000DEA000008E3006278F200FFFF
      FF00FFFFFF00182CD8000008C1000007B9000006AE000005A40000039B000003
      9100000289000001800000017A000000740000006E000000690026269000FFFF
      FF00FFFFFF003636860000005B000000530000000000000000008C636300CE6B
      0000CE6B0000CE6B0000D6730000D6730000FFBD6B00D673000042424200316B
      4A00397B5200397B520031734A00397B52004A7B5A005A6B52005A6B52008C63
      630000000000000000000000000000000000EFDED600FFFFFF00E7CEC600C66B
      3900CE6B3900CE6B3900CE633100CE633100CE633100C66B3900CEC6C600FFFF
      FF00EFC6AD00CE6B3900CE633100CE633100CE6B3100CE6B3900C6633100CE7B
      5A00EFEFEF00F7F7EF00A5949400000000000D73FF001C7FFF00EDF6FF00FFFF
      FF00B4D8FE001470F4001570F300106CF2002077F200B5D5FB00F2F8FE004F97
      F30060A0F300FFFFFF0091BDF6000E62E6000456E5000354E3000353E200BBD8
      FA00FFFFFF00BAD5F3000155D400004ECB00000EF0000010EA00B3C0FD00FFFF
      FF00EBF0FF00010FDB004357E600F7F8FD00EAEDFC00E6EAFA00E6E8FA00E6E8
      F800E6E8F800E6E8F800E6E8F700FCFCFD00696DC1000000700003037400FCFC
      FD00FFFFFF007879C10000006A000000360000000000000000008C636300D673
      0000D6730000D6730000D6730000FFD6A500FFE7C600FFBD6B00424242005A6B
      52005A6B520031734A00637B5200637B520094946B00B59C7300F7B584008C63
      630000000000000000000000000000000000EFDED600FFFFFF00E7BDAD00CE6B
      3900CE6B3900CE6B3900CE633100CE633100CE633100CE633100BD947B00EFEF
      EF00FFF7F700DEA58C00CE6B3900CE633100CE6B3100CE6B3900C66B3900C673
      4A00F7EFEF00F7F7F700AD9C9400000000000E74FF003891FF00FBFCFF00FFFF
      FF0069ADFE001675F7001B78F6001370F600116DF300227AF400B2D4FB00F3F8
      FE00E7F2FE0063A1F3000C63E900075BE700065AE6000557E5000455E3007EB2
      F300FFFFFF00E3EFFC000562E6000058E700000EF800051AF200E2E8FF00FFFF
      FF00BBC7FF00000EE800000DE0007587EF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF009CA0DF000204860000017A0000017400EAEA
      F700FFFFFF00A3A7DD0000017E000000450000000000000000008C636300D673
      0000D6730000D6730000D6730000D6730000FFD6A500D673000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000EFDED600FFFFFF00EFC6AD00CE73
      4200D6734200CE6B3900CE633100CE633100CE633100CE633100C66B3900C6A5
      9400F7F7EF00FFF7F700E7A58400CE633100CE6B3100CE6B3900CE6B3900CE73
      4A00F7F7EF00FFF7F700ADA59C00000000001378FF0055A4FF00FEFFFF00FFFF
      FF0065ABFE001878FB001676F8001E7AF7001774F600126EF4009FCAFB00FFFF
      FF00FBFEFF004A93F3000C65ED00095FEA00085CE900065AE6000558E6006FA9
      F300FFFFFF00EDF6FF000667F000005CED000013FF00132FFA00F2F3FF00FFFF
      FF00A7B9FF000010F300000FEB000112E5009CAAF500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BEC3EF00070FA00000028D000002860000017E00E2E5
      F700FFFFFF00AEB0E000000280000000790000000000000000008C636300D673
      0000D6730000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      630000000000000000000000000000000000EFDED600FFFFFF00EFD6C600D673
      4200D6734200CE6B3900CE6B3100CE633100CE633100CE633100CE633100C66B
      3900D6B5A500F7F7F700F7F7EF00D6845200CE6B3900CE6B3900CE6B3900D67B
      5200F7F7F700FFF7F700ADA59C00000000001A7DFF0068AFFF00FFFFFF00FFFF
      FF007BB8FF001B7BFC001979FB001877FA001C79F80070B0FB00F0F7FF00A3CC
      FB00B8D8FC00F0F7FE005097F4000E67ED000A62EB00095EEA00075CE70088BB
      F600FFFFFF00E1F0FF000568F400005DF2000C27FF002645FF00EFF2FF00FFFF
      FF00C3CFFF000012FD000010F700000FEF000E25EB00DBE2FC00FFFFFF00FFFF
      FF00FFFFFF00F5F7FD001E2DC3000005A40000049B000003930001038C00EFF0
      FA00FFFFFF00A3A7DD00000286000000800000000000000000008C636300DE7B
      0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B0000DE7B000042424200F7B5
      8400F7B58400FFE7DE00FFE7DE00FFE7DE00FFDECE00F7B58400F7B584008C63
      630000000000000000000000000000000000EFDED600FFFFFF00FFEFE700E784
      5200DE7B4A00D6734200CE6B3900CE734200CE734A00CE6B3900CE633100CE63
      3100C6734200EFE7E700FFFFFF00E7B59C00CE6B3900D6734200D6734200DE9C
      7B00FFFFFF00FFF7EF00A59C9C00000000001D7FFF006CB1FF00F8FCFF00FFFF
      FF00CCE5FF001C7EFC001C7DFC002B87FC009ECBFE00FFFFFF0076B4FB001472
      F6001F79F600BCDAFC00FFFFFF0079B2F8000C65EE000B63ED000A60EB00C6DE
      FB00FFFFFF00B7DAFF000163F800005EF4001E3CFF002E4DFF00E2E8FF00FFFF
      FF00F2F3FF00031BFF000011FF000011FA000010F3001E38F000E3E8FD00FFFF
      FF00FAFAFF00374CDB000008BD000006B3000005A9000004A0000B12A200FDFD
      FF00FFFFFF00767DD200000087000001860000000000000000008C636300DE7B
      0000E77B0000E77B0000DE7B0000DE7B0000EF7B0000EF7B000042424200EFCE
      BD00FFE7DE00FFE7DE00FFDECE00F7D6CE00EFCEBD00FFE7DE00F7B584008C63
      630000000000000000000000000000000000F7E7DE00FFFFF700FFFFFF00F7AD
      8400EF8C5200DE7B4A00D67B4A00D6C6BD00F7E7DE00DEA58C00CE633100CE63
      3100CE6B4200EFE7E700FFFFFF00E7BDAD00D6734200D6734200D6734200EFD6
      C600FFFFFF00F7E7E700A5A59C00000000003D95FF005AA7FF00E9F4FF00FFFF
      FF00FFFFFF002D8AFF001D7FFE0089C1FE00FFFFFF00A0CCFE001877FA001676
      F8001674F700237DF700C4DEFC00FFFFFF000F69F0000D67EE002A7FF300FFFF
      FF00FFFFFF0073B5FF00005BFC00005EF4000114FF002645FF00CFD8FF00FFFF
      FF00FFFFFF004361FF000010FF000011FF000011FC000010F7002A45F300F2F3
      FF00445CED00000BD500000ACC000008C3000007B9000005AD006069CF00FFFF
      FF00FFFFFF002C36C00000008B000000000000000000000000008C636300FF84
      0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B0000EF7B000042424200F7B5
      8400F7C6A500F7CEBD00FFE7DE00F7D6CE00F7CEBD00F7C6A500F7B584008C63
      630000000000000000000000000000000000F7EFE700EFDED600FFFFFF00FFE7
      D600FF9C6300EF8C5A00DE7B4A00D6C6BD00FFFFFF00F7EFE700DE946B00D67B
      4A00DEAD9400F7F7F700F7F7F700DEA58C00DE7B4A00DE7B4A00E7946B00FFF7
      F700FFFFFF00DECEC600C6BDB50000000000000000003E96FF00CEE6FF00FFFF
      FF00FFFFFF00B0D7FF001E80FF004298FE0086C0FF002B88FC001B7AFB001978
      FA001777FA001674F8002D84F80091C2FB00116DF300116BF300B2D4FC00FFFF
      FF00FBFEFF002283FF00005FFF0000000000000000001E3CFF00ADBDFF00FFFF
      FF00FFFFFF00F2F3FF000A25FF000011FF000011FF000011FF000011FA000010
      F300000FEB00000DE300000CDA00000AD2000008C6001525C900FFFFFF00FFFF
      FF00CCD1F2000208A000000194000000000000000000000000008C636300D673
      0000FF840000FF840000F7840000F77B0000EF7B0000EF7B000042424200F7B5
      8400F7B58400F7B58400EFCEBD00EFCEBD00EFCEBD00F7B58400F7B584008C63
      63000000000000000000000000000000000000000000F7E7DE00FFFFFF00FFFF
      FF00FFCEAD00FFA57300FF9C6300DE9C7B00E7E7E700FFFFFF00FFF7F700F7EF
      E700FFFFFF00FFFFFF00E7DED600EF8C6300EF8C5A00EF8C5A00FFE7D600FFFF
      FF00FFF7EF00C6BDB5000000000000000000000000004298FF0097C9FF00FEFF
      FF00FFFFFF00FFFFFF0075B6FF001E80FF001E80FF001D7FFF001C7DFE001C7D
      FC001A79FB001878FA001676F8001673F7001673F400BBDDFF00FFFFFF00FFFF
      FF0097C9FF000065FF000065FF0000000000000000003656FF006882FF00FDFD
      FF00FFFFFF00FFFFFF00CCD5FF000720FF000010FF000011FF000011FF000011
      FC000010F700000FF000000EE800000BDB000E21DA00E8EBFC00FFFFFF00FFFF
      FF004350CA0000019C000000000000000000000000000000000000000000AD6B
      6300AD6B6300D6730000FF840000EF7B0000F7840000FF84000042424200F7B5
      8400F7B58400F7B58400F7B58400F7B58400F7B58400F7B58400F7B584008C63
      63000000000000000000000000000000000000000000FFF7EF00EFDED600FFFF
      FF00FFFFF700FFD6B500FFBD8C00FFAD7B00E7B59C00E7DED600E7DEDE00E7DE
      DE00E7E7E700EFDED600F7AD8400FF9C6B00FF9C6B00FFD6BD00FFFFFF00FFFF
      FF00E7D6CE009C9C9C000000000000000000000000000000000054A4FF00E1F0
      FF00FFFFFF00FFFFFF00FFFFFF008FC4FF001F81FF001E80FF001E80FF001D7E
      FE001C7DFE001B7AFC001879FA001B79FA00A6CFFE00FFFFFF00FFFFFF00E7F3
      FF00177BFF000065FF00000000000000000000000000000000003452FF00CFD8
      FF00FFFFFF00FFFFFF00FFFFFF00E2E8FF002846FF000013FF000010FF000011
      FF000011FF00000FFA000214F0003A52EF00F3F7FF00FFFFFF00FFFFFF00B9BE
      ED000209AE000003A30000000000000000000000000000000000000000000000
      000000000000AD6B6300AD6B6300D6730000FF840000FF840000424242008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000F7EFE700EFDE
      D600FFFFFF00FFFFFF00FFEFD600FFE7B500FFD6A500F7C69C00F7C69C00F7BD
      9C00F7BD9C00FFBD8C00FFBD8400FFBD9400FFE7D600FFFFFF00FFFFFF00F7E7
      DE00ADADAD0000000000000000000000000000000000000000005CA7FF008CC2
      FF00F8FCFF00FFFFFF00FFFFFF00FFFFFF00F8FCFF0079B8FF003C95FF002D8B
      FF002D8AFE004197FE008AC1FE00FFFFFF00FFFFFF00FFFFFF00FBFEFF00499D
      FF000065FF00036AFF00000000000000000000000000000000006882FF00617D
      FF00EBF0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BBC7FF006E86FF00506C
      FF00536EFD00768DFF00D7DFFF00FFFFFF00FFFFFF00FFFFFF00C3CAF5000C18
      C1000003AE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AD6B6300AD6B6300AD6B6300AD6B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7E7
      DE00EFDED600FFFFFF00FFFFFF00FFFFF700FFFFE700FFF7D600FFEFBD00FFE7
      B500FFE7B500FFE7BD00FFE7D600FFFFF700FFFFFF00FFFFFF00F7EFE700ADAD
      AD00000000000000000000000000000000000000000000000000000000005BA6
      FF009ACBFF00F2F8FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1E7FF00459AFF000268
      FF00066CFF000000000000000000000000000000000000000000000000004662
      FF00768DFF00EBF0FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094A2F0000916C9000003
      BA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7EFE700EFDED600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700EFDED600ADADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005EA9FF0078B8FF00D0E7FF00F8FCFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7F3FF008AC1FF001F81FF00056BFF00096F
      FF00000000000000000000000000000000000000000000000000000000000000
      0000647EFF005570FF00B3C0FD00F2F3FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F8F8FD00ADB7F8003B52E800010DD1000006C7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7EFE700EFDED600F7EFEF00FFF7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700F7EFE700EFDED600ADADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007FBBFF005AA6FF0087C0FF00BBDDFF00DAEDFF00E7F3FF00E7F3
      FF00DEEFFF00C7E2FF0096C7FF0052A1FF001C7FFF000E74FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004662FF005B75FF0095A9FF00C6D1FF00D5DDFF00D2DB
      FF00C3CFFF009CADFC004C67F8001129EA00010FDB00000AD500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7EFE700EFDED600EFDED600EFDED600EFDED600EFDE
      D600EFDED600EFDED600EFDED600EFDED600F7EFE70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007DBAFF005AA6FF005AA6FF0060AAFF0060AA
      FF0052A1FF003E96FF002C8AFF00197DFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000506CFF003656FF003A58FF003A58
      FF002E4DFF001732F800132CF2001129EA000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FF81FFFF0001FFFFFF000000FE007FFF
      0001F3FFCF000000F8001FFF0001E1FF87000000F0000FFF0001C0FF03000000
      E00007FF0001807E01000000C00003FF0001803C01000000C00003800001C018
      03000000800001800001E00007000000800001800001F0000F00000000000080
      0001F8001F000000000000800001FC003F000000000000800001FE007F000000
      000000800001FE007F000000000000800001FC003F000000000000800001F800
      1F000000000001800003F0000F000000800001800007E0000700000080000380
      000FC01803000000C000038000FF803C01000000C000078000FF807E01000000
      E0000F8000FFC0FF03000000F0001F8001FFE1FF87000000F8003F8003FFF3FF
      CF000000FE00FF8007FFFFFFFF000000FF81FFFF81FFFF81FFFF81FFFE007FFE
      007FFE007FFE007FF8001FF8001FF8001FF8001FF0000FF0000FE0000FE0000F
      E00007E00007C00007C00007C00003C00003C00003C00003C00003C000038000
      0380000380000180000180000180000180000180000100000100000100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000100000180000180000100000100000180000180
      0003800003800003C00003C00003800003800003C00003C00007C00007C00007
      E00007E0000FE0000FE0000FF0000FF0001FF0001FF0001FF8003FF8003FF800
      3FF8003FFE00FFFE00FFFE00FFFE00FFFF81FFFF81FFFF81FFFF81FFFE007FFE
      007FFE007FFE007FF8001FF8001FF8001FF8001FF0000FF0000FF0000FF0000F
      E00007E00007E00007E00007C00003C00003C00003C00003C00003C00003C000
      03C0000380000180000180000180000180000180000180000180000100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000100000100000000000080000180000180000180000180000380
      0003800001800001C00003C00003C00003C00003C00007C00007C00003C00003
      E0000FE0000FE00007E00007F0001FF0001FF0000FF0000FFC003FFC003FF800
      3FF8003FFF00FFFF00FFFE00FFFE00FFFFFFFFFE00FFFF81FFFF81FFFFFFFFF8
      003FFE007FFE007FFF1FFFF0001FF8001FF8001FF8000FE0000FF0000FF0000F
      E0000FC00007E00007E00007C0000F800003C00003C00003C0000F800003C000
      03C00003C0000F800001800001800001C0000F000001800001800001C0000F00
      0001000000000000C0000F000001000000000000C0000F000001000000000000
      C0000F000001000000000000C0000F000001000000000000C0000F0000010000
      00000000C0000F000001000000000001C0000F000001800001800001C0000F80
      0003800001800003E0000F800003C00003C00003F8000FC00007C00003C00007
      FE1FFFE0000FE00007E0000FFFFFFFF0001FF0000FF0001FFFFFFFF8003FF800
      3FFC003FFFFFFFFC007FFE00FFFF00FF}
  end
  object icu1: TIB_Cursor
    DatabaseName = 'GruasMx'
    Left = 600
    Top = 10
  end
  object isql2: TIB_DSQL
    DatabaseName = 'GruasMx'
    Left = 632
    Top = 40
  end
  object icu2: TIB_Cursor
    DatabaseName = 'GruasMx'
    Left = 632
    Top = 10
  end
  object icu3: TIB_Cursor
    DatabaseName = 'GruasMx'
    Left = 664
    Top = 10
  end
end
