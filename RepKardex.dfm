object freKardex: TfreKardex
  Left = 0
  Top = 0
  Width = 814
  Height = 304
  Align = alClient
  TabOrder = 0
  TabStop = True
  ExplicitWidth = 451
  object Label4: TLabel
    Left = 14
    Top = 79
    Width = 138
    Height = 13
    Caption = 'Color de letra del documento'
  end
  object pgcTipoDoc: TPageControl
    Left = 0
    Top = 0
    Width = 814
    Height = 176
    ActivePage = tshCriterios
    Align = alTop
    Images = MainForm.ImageList1
    TabOrder = 0
    ExplicitWidth = 451
    object tshCriterios: TTabSheet
      Caption = '&1 Criterios'
      ImageIndex = 171
      ExplicitWidth = 443
      object pnlCriterios: TPanel
        Left = 0
        Top = 0
        Width = 208
        Height = 147
        Align = alLeft
        BevelInner = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 9
          Top = 6
          Width = 63
          Height = 13
          Caption = 'Fecha Inicial:'
        end
        object lblMes: TLabel
          Left = 6
          Top = 41
          Width = 58
          Height = 13
          Caption = 'Fecha Final:'
        end
        object Label5: TLabel
          Left = 8
          Top = 94
          Width = 59
          Height = 13
          AutoSize = False
          Caption = '&Almac'#233'n:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object xdeFechaIni: TDateEdit
          Left = 7
          Top = 18
          Width = 113
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
        object xdeFechaFin: TDateEdit
          Left = 7
          Top = 54
          Width = 113
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
        object cboNumAlmac: TComboBox
          Left = 7
          Top = 107
          Width = 194
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
          Visible = False
        end
      end
      object Panel1: TPanel
        Left = 208
        Top = 0
        Width = 598
        Height = 147
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        ExplicitWidth = 235
        object xsbMovtos: TRxSpeedButton
          Left = 210
          Top = 97
          Width = 176
          Height = 44
          Hint = 
            'Pasa la existencia capturada como existencia actual de los artic' +
            'ulos marcados en el listado'
          Caption = '&Movimientos por Producto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000130B0000130B00000001000000010000EF9C2100E7A5
            63006B6B6B008C8C8C00FFDEB500296BC600527BC600FFEFD600397BE700E7E7
            E700317BEF00FFF7EF000073F700F7F7F700FF00FF00007BFF00008CFF000094
            FF00009CFF0000A5FF0039A5FF0052A5FF005AA5FF0000ADFF0029ADFF0000B5
            FF0008BDFF0010BDFF0000C6FF0008C6FF0018CEFF0000D6FF0010D6FF0031D6
            FF0000DEFF0042DEFF0039E7FF0000EFFF0039EFFF004AEFFF0000F7FF0008F7
            FF0031F7FF0042F7FF0000FFFF0008FFFF0018FFFF0021FFFF00FFFFFF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000E0E0E0E0E0E
            0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
            0E0E0E0E0E0E0E0E0E0E0E030202020202020202020202020202020202020202
            020E0E0309030D0D0D0D0D0D030D0D0D0D0D030D0D0D0D0D020E0E0309033030
            3030300D03303030300D03303030300D020E0E03030603030303030303030303
            0303030303030303020E0E03090A06050D0D0D0D030D0D0D0D0D030D0D0D0D0D
            020E0E0309080F0C0630300D03303030300D03303030300D020E0E0303031210
            10060303030303030303030303030303020E0E0309030B1910110606030B0B0B
            0B0B030B0B0B0B0B020E0E0309030707191D1212060707070707030707070707
            020E0E030303030303191A17120603030303030303030303020E0E0309030606
            061C2D2A1B1706060707030707070707020E0E030903181C2528282C271E1306
            0707030707070707020E0E030303141C252825222C2C261D0603030303030303
            020E0E030903071D24272B2E2C2C2D2F0607030707070707020E0E0309030707
            0721292C281F19060707030707070707020E0E00000000000000002128251713
            0600000000000000000E0E000100010101010101002123201606000101010101
            000E0E000400040404040404000404211506000404040404000E0E0000000000
            00000000000000000000000000000000000E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
            0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
            0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E}
          Layout = blGlyphLeft
          ParentFont = False
          Spacing = 12
          WordWrap = True
          OnClick = xsbMovtosClick
        end
        object xsbEjecutar: TRxSpeedButton
          Left = 18
          Top = 97
          Width = 176
          Height = 44
          Hint = 
            'Pasa la existencia capturada como existencia actual de los artic' +
            'ulos marcados en el listado'
          Caption = '&Existencias por Almac'#233'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            1878EB1877E91674E11372DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF1877E31878EB1776E61573DE1370D8116ED10F6BCBFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF1574C91C7DE21877EA1675E31473DD136FD5116DCF0F
            6AC90D68C20C65BC0A63B6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF116EC51F82D32E97E23AA6EE37A3F237A3
            F22286E1106CCC0E69C60D67C00B64BA0A62B4085EAD065CA70559A0FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF197ACE2991DE37A3EB
            41B0F445B4F84CBDFE4DBFFF3AA6F22184D90F6AC10A63B70960B1075DAB065B
            A505599E035698035493FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1473C724
            8AD9339EE73EACF23BA6EF2C8EDE41ACF24CBDFF48B7FE3EA9F443B1FF2990E2
            0B64B4075DA9055AA304589C035596035493FF00FFFF00FFFF00FFFF00FFFF00
            FF0B647801500A1370CA36A0FA2F96E62483DA1B6DC44DBFFF43B1F82E95E53A
            A4F241AFFF3EAAFE38A1F639A3FF3097F3116CB8035495035493FF00FFFF00FF
            FF00FFFF00FF01500A0F6C652D659D01500A0A4BAA1978E1166AD43DAAFC43B1
            F82687DD2582D742B0FF3EAAFC3097E938A3FC37A0FF37A0FF37A0FF2386D9FF
            00FFFF00FFFF00FFFF00FF004D00096C10188940339EEB2784DD2482E601500A
            01500A1357B51B79E11160C0379FF2349AF62486DD3096ED38A1FF37A0FF37A0
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08680D20A4383CDE6745F67821
            AA41198366288BC21C6DC93092F201500A01500A165CAF176DC41C77D3349AF4
            37A0FE37A0FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF06640C1F9F353ADA
            6546F67939E5632ACF481BB82E0D9C16067B15167D733397DE267FDA2F95F428
            86E301500A2C8FEEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            1C9A3136D45E46F6793AE7652BD14A1CBA310FA41A048E070082000082000178
            030C812921959960A7D31E7AD9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FF1890290C721321AA392DD34D1EBC3310A61C059008008200
            00820001870409971518B43F1BB4450F8B26FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF004B001AA62D11A71E06
            910A00820000810001870307951313AB3218AB3E0F8B26FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF004B0023AB
            3D32DA560FA41A008001005E00005C00026B04067611015503FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            004B001A962D35DE5A13AA20018101005500FF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF004B0013842036E15E15AD23018202005500FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF08680D38E36217B128028803005500FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF02550335DA5B19B52B028904005F
            00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035C061BB82F
            038B05005E00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF0F8B19037F06005100FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Layout = blGlyphLeft
          ParentFont = False
          Spacing = 12
          WordWrap = True
          OnClick = xsbEjecutarClick
        end
        object pgcFamPro: TPageControl
          Left = 2
          Top = 2
          Width = 594
          Height = 87
          ActivePage = tshProducto
          Align = alTop
          Images = MainForm.ImageList1
          TabOrder = 0
          OnChange = pgcFamProChange
          OnChanging = pgcFamProChanging
          ExplicitWidth = 231
          object tshFamilia: TTabSheet
            Caption = '&3 Familia'
            ImageIndex = 177
            OnShow = tshFamiliaShow
            ExplicitWidth = 223
            inline fraFamilia1: TfraFamilia
              Left = 0
              Top = 0
              Width = 586
              Height = 42
              Align = alTop
              TabOrder = 0
              TabStop = True
              ExplicitWidth = 223
              inherited xceCodFam: TComboEdit
                OnChange = fraFamilia1xceCodFamChange
              end
              inherited xceDescripFam: TComboEdit
                Width = 1126
                ExplicitWidth = 763
              end
            end
          end
          object tshProducto: TTabSheet
            Caption = '&4 Producto'
            ImageIndex = 175
            OnShow = tshFamiliaShow
            ExplicitWidth = 223
            object RxLabel1: TRxLabel
              Left = 8
              Top = 40
              Width = 295
              Height = 13
              Caption = 'Se puede teclear el c'#243'digo completo o solo las primeras letras'
              ShadowSize = 0
            end
            inline fraProducto1: TfraProducto
              Left = 0
              Top = 0
              Width = 586
              Height = 42
              Align = alTop
              TabOrder = 0
              TabStop = True
              ExplicitWidth = 223
              inherited xceCodProdSer: TComboEdit
                OnChange = fraProducto1xceCodProdSerChange
              end
              inherited xceDescripPro: TComboEdit
                Width = 767
                ExplicitWidth = 404
              end
            end
          end
        end
      end
    end
    object tshOpciones: TTabSheet
      Caption = '&2 Opciones'
      ImageIndex = 176
      ExplicitWidth = 443
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 249
        Height = 147
        Align = alLeft
        Caption = '  &Ordenar Listado por  '
        TabOrder = 0
        object xsbSort: TRxSpeedButton
          Left = 30
          Top = 61
          Width = 163
          Height = 49
          Caption = '&Ordenar Listado'
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
            DADA00000000000000000FF0FEF4FEF4FEF00FF0EFE4EFE4EFE00FF044444444
            44400FF0EFE4EFE4EFE00000FEF4FEF4FEF00FF04444444444400FF0FEF4FEF4
            FEF00FF0EFE4EFE4EFE000000000000000000FF0FFFFF0FFFFF00FF0FFFFF0FF
            FFF00000000000000000DADADADADADADADAADADADADADADADAD}
          ParentFont = False
          OnClick = xsbSortClick
        end
        object cboSort: TComboBox
          Left = 7
          Top = 29
          Width = 234
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          Items.Strings = (
            'Folio'
            'Fecha, Folio'
            'Codigo'
            'Descripcion'
            '')
        end
      end
      object grpFiltro: TGroupBox
        Left = 249
        Top = 0
        Width = 216
        Height = 147
        Align = alLeft
        Caption = '  &Filltro Almac'#233'n (Hoja Existencias)  '
        TabOrder = 1
        object cboFiltroAlmac: TComboBox
          Left = 6
          Top = 18
          Width = 194
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          OnClick = cboFiltroAlmacClick
        end
      end
    end
  end
end
