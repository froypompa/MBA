object fraProducto: TfraProducto
  Left = 0
  Top = 0
  Width = 402
  Height = 42
  TabOrder = 0
  DesignSize = (
    402
    42)
  object Label9: TLabel
    Left = 6
    Top = 0
    Width = 83
    Height = 13
    AutoSize = False
    Caption = 'Producto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 118
    Top = -1
    Width = 197
    Height = 13
    AutoSize = False
    Caption = 'Descripci'#243'n del Producto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object xceCodProdSer: TComboEdit
    Left = 4
    Top = 14
    Width = 108
    Height = 24
    CharCase = ecUpperCase
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
    OnButtonClick = xceCodProdSerButtonClick
    OnKeyDown = xceCodProdSerKeyDown
  end
  object xceDescripPro: TComboEdit
    Left = 116
    Top = 13
    Width = 274
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    GlyphKind = gkEllipsis
    Anchors = [akLeft, akTop, akRight]
    NumGlyphs = 1
    ParentFont = False
    TabOrder = 1
    OnButtonClick = xceDescripProButtonClick
  end
end
