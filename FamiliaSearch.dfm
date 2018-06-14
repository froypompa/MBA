object fraFamilia: TfraFamilia
  Left = 0
  Top = 0
  Width = 359
  Height = 42
  TabOrder = 0
  DesignSize = (
    359
    42)
  object Label9: TLabel
    Left = 6
    Top = 0
    Width = 83
    Height = 13
    AutoSize = False
    Caption = 'Familia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 108
    Top = 0
    Width = 224
    Height = 13
    AutoSize = False
    Caption = 'Descripci'#243'n de la Familia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object xceCodFam: TComboEdit
    Left = 4
    Top = 14
    Width = 88
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
    OnButtonClick = xceCodFamButtonClick
    OnKeyDown = xceCodFamKeyDown
  end
  object xceDescripFam: TComboEdit
    Left = 95
    Top = 13
    Width = 249
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
    OnButtonClick = xceDescripFamButtonClick
  end
end
