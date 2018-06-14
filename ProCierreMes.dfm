object fraCierreMes: TfraCierreMes
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  TabOrder = 0
  TabStop = True
  object xlbNombre: TRxLabel
    Left = 0
    Top = 0
    Width = 451
    Height = 20
    Align = alTop
    Alignment = taCenter
    Caption = 'Nombre del Proceso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 443
  end
  object xlbDias: TRxLabel
    Left = 9
    Top = 89
    Width = 87
    Height = 16
    Caption = 'A'#241'o de Cierre:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object RxLabel1: TRxLabel
    Left = 9
    Top = 115
    Width = 89
    Height = 16
    Caption = 'Mes de Cierre:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object mmoMsg: TMemo
    Left = 0
    Top = 20
    Width = 451
    Height = 61
    Align = alTop
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    Lines.Strings = (
      'mmoMsg')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object cboAnio: TComboBox
    Left = 105
    Top = 87
    Width = 81
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentFont = False
    TabOrder = 1
    Items.Strings = (
      '2002'
      '2003'
      '2004'
      '2005')
  end
  object cboMes: TComboBox
    Left = 105
    Top = 113
    Width = 81
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ItemHeight = 16
    ParentFont = False
    TabOrder = 2
    Items.Strings = (
      ' 1'
      ' 2'
      ' 3'
      ' 4'
      ' 5'
      ' 6'
      ' 7'
      ' 8'
      ' 9'
      '10'
      '11'
      '12')
  end
end
