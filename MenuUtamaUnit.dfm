object frmMenuUtama: TfrmMenuUtama
  Left = 138
  Top = 114
  Caption = 'DCIM - Menu Utama'
  ClientHeight = 529
  ClientWidth = 929
  Color = 15790320
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object imgBg: TImage
    Left = 24
    Top = 265
    Width = 353
    Height = 96
    Align = alCustom
    Center = True
  end
  object statMain: TStatusBar
    Left = 0
    Top = 510
    Width = 929
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Panels = <
      item
        Width = 85
      end
      item
        Width = 0
      end
      item
        Width = 135
      end
      item
        Width = 65
      end
      item
        Width = 160
      end
      item
        Bevel = pbNone
        Width = 230
      end
      item
        Alignment = taRightJustify
        Bevel = pbNone
        Text = '@OPD Pusintek'
        Width = 250
      end>
    UseSystemFont = False
    OnDrawPanel = statMainDrawPanel
  end
  object pagerMenu: TAdvToolBarPager
    Left = 0
    Top = 0
    Width = 929
    Height = 129
    ActivePage = advpgLaporan
    AutoMDIButtons = True
    Caption.Visible = False
    CaptionButtons = [cbClose, cbMinimize, cbMaximize]
    Images = ilMain
    Hints.MDICloseBtnHint = 'Close'
    Hints.MDIMinimizeBtnHint = 'Minimize'
    Hints.MDIMaximizeBtnHint = 'Maximize'
    Hints.HelpBtnHint = 'Help'
    TabGroups = <>
    TabSettings.StartMargin = 4
    TabSettings.EndMargin = 0
    TabSettings.Height = 40
    Persistence.Location = plRegistry
    Persistence.Enabled = False
    ToolBarStyler = stlMenu
    ShowHelpButton = False
    PageLeftMargin = 0
    PageRightMargin = 0
    OptionPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C0000000000000000000000000100000000000000000000000080000080
      000000808000800000008000800080800000C0C0C000C0DCC000F0CAA6000020
      400000206000002080000020A0000020C0000020E00000400000004020000040
      400000406000004080000040A0000040C0000040E00000600000006020000060
      400000606000006080000060A0000060C0000060E00000800000008020000080
      400000806000008080000080A0000080C0000080E00000A0000000A0200000A0
      400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0200000C0
      400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0200000E0
      400000E0600000E0800000E0A00000E0C00000E0E00040000000400020004000
      400040006000400080004000A0004000C0004000E00040200000402020004020
      400040206000402080004020A0004020C0004020E00040400000404020004040
      400040406000404080004040A0004040C0004040E00040600000406020004060
      400040606000406080004060A0004060C0004060E00040800000408020004080
      400040806000408080004080A0004080C0004080E00040A0000040A0200040A0
      400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0200040C0
      400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0200040E0
      400040E0600040E0800040E0A00040E0C00040E0E00080000000800020008000
      400080006000800080008000A0008000C0008000E00080200000802020008020
      400080206000802080008020A0008020C0008020E00080400000804020008040
      400080406000804080008040A0008040C0008040E00080600000806020008060
      400080606000806080008060A0008060C0008060E00080800000808020008080
      400080806000808080008080A0008080C0008080E00080A0000080A0200080A0
      400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0200080C0
      400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0200080E0
      400080E0600080E0800080E0A00080E0C00080E0E000C0000000C0002000C000
      4000C0006000C0008000C000A000C000C000C000E000C0200000C0202000C020
      4000C0206000C0208000C020A000C020C000C020E000C0400000C0402000C040
      4000C0406000C0408000C040A000C040C000C040E000C0600000C0602000C060
      4000C0606000C0608000C060A000C060C000C060E000C0800000C0802000C080
      4000C0806000C0808000C080A000C080C000C080E000C0A00000C0A02000C0A0
      4000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C02000C0C0
      4000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFFFFFFFF00
      0000FDFDFDFDE3E3E3E3FF000000FDE3FFFDFDE3E3E3FF000000FDE3FFFDFDE3
      E3E3FF000000FDE3FFFDE3FFFDE3FD000000FDE3FFFDFDFDFDFDFD000000FDE3
      FFFFFFFFFFFDFD000000FDE3E3E3E3E3E3FDFD000000FDFDFDFDFDFDFDFDFD00
      0000}
    OptionDisabledPicture.Data = {
      424DA20400000000000036040000280000000900000009000000010008000000
      00006C0000000000000000000000000100000000000000000000000080000080
      000000808000800000008000800080800000C0C0C000C0DCC000F0CAA6000020
      400000206000002080000020A0000020C0000020E00000400000004020000040
      400000406000004080000040A0000040C0000040E00000600000006020000060
      400000606000006080000060A0000060C0000060E00000800000008020000080
      400000806000008080000080A0000080C0000080E00000A0000000A0200000A0
      400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0200000C0
      400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0200000E0
      400000E0600000E0800000E0A00000E0C00000E0E00040000000400020004000
      400040006000400080004000A0004000C0004000E00040200000402020004020
      400040206000402080004020A0004020C0004020E00040400000404020004040
      400040406000404080004040A0004040C0004040E00040600000406020004060
      400040606000406080004060A0004060C0004060E00040800000408020004080
      400040806000408080004080A0004080C0004080E00040A0000040A0200040A0
      400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0200040C0
      400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0200040E0
      400040E0600040E0800040E0A00040E0C00040E0E00080000000800020008000
      400080006000800080008000A0008000C0008000E00080200000802020008020
      400080206000802080008020A0008020C0008020E00080400000804020008040
      400080406000804080008040A0008040C0008040E00080600000806020008060
      400080606000806080008060A0008060C0008060E00080800000808020008080
      400080806000808080008080A0008080C0008080E00080A0000080A0200080A0
      400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0200080C0
      400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0200080E0
      400080E0600080E0800080E0A00080E0C00080E0E000C0000000C0002000C000
      4000C0006000C0008000C000A000C000C000C000E000C0200000C0202000C020
      4000C0206000C0208000C020A000C020C000C020E000C0400000C0402000C040
      4000C0406000C0408000C040A000C040C000C040E000C0600000C0602000C060
      4000C0606000C0608000C060A000C060C000C060E000C0800000C0802000C080
      4000C0806000C0808000C080A000C080C000C080E000C0A00000C0A02000C0A0
      4000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C02000C0C0
      4000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000FF0000FF
      000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFFFFFFFF00
      0000FDFDFDFD07070707FF000000FD07FFFDFD070707FF000000FD07FFFDFD07
      0707FF000000FD07FFFD07FFFD07FD000000FD07FFFDFDFDFDFDFD000000FD07
      FFFFFFFFFFFDFD000000FD070707070707FDFD000000FDFDFDFDFDFDFDFDFD00
      0000}
    TabOrder = 0
    Win7ScenicRibbon = True
    object pageFile: TAdvPage
      Left = 0
      Top = 40
      Width = 929
      Height = 88
      Caption = 'Akses Pengguna'
      ImageIndex = 0
      object tlbLogin: TAdvToolBar
        Left = 3
        Top = 3
        Width = 92
        Height = 82
        AllowFloating = True
        Caption = 'Login User'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = stlMenu
        ParentOptionPicture = True
        ToolBarIndex = 0
        object btnLogin: TAdvToolBarButton
          Left = 42
          Top = 18
          Width = 46
          Height = 78
          Action = _Logout
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          CanRotate = False
          GlyphPosition = gpTop
          DropDownSplit = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 11
          ParentFont = False
          Position = daTop
          ShowCaption = True
          OfficeHint.Title = 'Login'
          OfficeHint.Notes.Strings = (
            'Login ke aplikasi')
          Version = '6.5.3.4'
        end
        object btnLogout: TAdvToolBarButton
          Left = 88
          Top = 18
          Width = 46
          Height = 78
          Action = _Logout
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 11
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
          Visible = False
        end
        object btn: TAdvToolBarButton
          Left = 2
          Top = 18
          Width = 40
          Height = 78
          Action = _Login
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          CanRotate = False
          GlyphPosition = gpTop
          DropDownSplit = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 10
          ParentFont = False
          Position = daTop
          ShowCaption = True
          OfficeHint.Title = 'Login'
          OfficeHint.Notes.Strings = (
            'Login ke aplikasi')
          Version = '6.5.3.4'
        end
      end
      object tlbSetting: TAdvToolBar
        Left = 410
        Top = 3
        Width = 116
        Height = 82
        AllowFloating = True
        Caption = 'Pengaturan'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        ShowClose = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = stlMenu
        ParentOptionPicture = True
        ToolBarIndex = 3
        object btnSettingDB: TAdvToolBarButton
          Left = 56
          Top = 18
          Width = 56
          Height = 62
          Action = _SettingDB
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 22
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object btnSettingPerusahaan: TAdvToolBarButton
          Left = 2
          Top = 18
          Width = 54
          Height = 62
          Action = _Setting
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 21
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
      end
      object tlbKeluar: TAdvToolBar
        Left = 529
        Top = 3
        Width = 47
        Height = 82
        AllowFloating = True
        Locked = True
        Caption = ''
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        ShowClose = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = stlMenu
        ParentOptionPicture = True
        ToolBarIndex = 4
        object btnExit: TAdvToolBarButton
          Left = 2
          Top = 18
          Width = 41
          Height = 62
          Action = _Keluar
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          CanRotate = False
          GlyphPosition = gpTop
          DropDownSplit = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 12
          ParentFont = False
          Position = daTop
          ShowCaption = True
          OfficeHint.Title = 'Login'
          OfficeHint.Notes.Strings = (
            'Login ke aplikasi')
          Version = '6.5.3.4'
        end
      end
      object tlbUser: TAdvToolBar
        Left = 98
        Top = 3
        Width = 248
        Height = 82
        AllowFloating = True
        Caption = 'Data Pengguna'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = stlMenu
        ParentOptionPicture = True
        ToolBarIndex = 1
        object btnOperator: TAdvToolBarButton
          Left = 2
          Top = 18
          Width = 62
          Height = 62
          Action = _User
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 17
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object btnGantiPassword: TAdvToolBarButton
          Left = 155
          Top = 18
          Width = 89
          Height = 62
          Action = _GantiPassword
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 15
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object btnUserLevel: TAdvToolBarButton
          Left = 64
          Top = 18
          Width = 91
          Height = 62
          Action = _UserLevel
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 16
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
      end
      object AdvToolBar2: TAdvToolBar
        Left = 349
        Top = 3
        Width = 58
        Height = 82
        AllowFloating = True
        Caption = 'Pegawai'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = stlMenu
        ParentOptionPicture = True
        ToolBarIndex = 2
        object btnKaryawan: TAdvToolBarButton
          Left = 2
          Top = 18
          Width = 52
          Height = 62
          Action = _Karyawan
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 24
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
      end
    end
    object pageMaster: TAdvPage
      Left = 0
      Top = 40
      Width = 929
      Height = 88
      Caption = 'Data Master'
      ImageIndex = 1
      object AdvToolBar1: TAdvToolBar
        Left = 572
        Top = 3
        Width = 330
        Height = 82
        AllowFloating = True
        Caption = 'Unit'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = stlMenu
        ParentOptionPicture = True
        ToolBarIndex = 3
        object btnPemeliharaan: TAdvToolBarButton
          Left = 206
          Top = 18
          Width = 80
          Height = 62
          Action = _Pemeliharaan
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object btnATS: TAdvToolBarButton
          Left = 286
          Top = 18
          Width = 40
          Height = 62
          Action = _ATS
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object btnPemilikServer: TAdvToolBarButton
          Left = 63
          Top = 18
          Width = 103
          Height = 62
          Action = _PemilikServer
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object btnEos: TAdvToolBarButton
          Left = 166
          Top = 18
          Width = 40
          Height = 62
          Action = _EoS
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object btnPICServer: TAdvToolBarButton
          Left = 2
          Top = 18
          Width = 61
          Height = 62
          Action = _PICServer
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
      end
      object AdvToolBar3: TAdvToolBar
        Left = 435
        Top = 3
        Width = 134
        Height = 82
        AllowFloating = True
        Caption = 'Kelistrikan'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = stlMenu
        ParentOptionPicture = True
        ToolBarIndex = 2
        object AdvToolBarButton2: TAdvToolBarButton
          Left = 2
          Top = 18
          Width = 88
          Height = 62
          Action = _MCBLegrand
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object AdvToolBarButton9: TAdvToolBarButton
          Left = 90
          Top = 18
          Width = 40
          Height = 62
          Action = _Panel
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
      end
      object AdvToolBar4: TAdvToolBar
        Left = 3
        Top = 3
        Width = 302
        Height = 82
        AllowFloating = True
        Caption = 'Perangkat'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = stlMenu
        ParentOptionPicture = True
        ToolBarIndex = 0
        object AdvToolBarButton3: TAdvToolBarButton
          Left = 258
          Top = 18
          Width = 40
          Height = 62
          Action = _Rak
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object AdvToolBarButton4: TAdvToolBarButton
          Left = 2
          Top = 18
          Width = 88
          Height = 62
          Action = _Server
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object AdvToolBarButton5: TAdvToolBarButton
          Left = 217
          Top = 18
          Width = 41
          Height = 62
          Action = _Lokasi
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object AdvToolBarButton8: TAdvToolBarButton
          Left = 90
          Top = 18
          Width = 87
          Height = 62
          Action = _TipeServer
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object btnMerk: TAdvToolBarButton
          Left = 177
          Top = 18
          Width = 40
          Height = 62
          Action = _Merk
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
      end
      object advtlbr1: TAdvToolBar
        Left = 308
        Top = 3
        Width = 124
        Height = 82
        AllowFloating = True
        Caption = 'OS && Aplikasi'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = stlMenu
        ParentOptionPicture = True
        ToolBarIndex = 1
        object btnactCnPrefixWizard: TAdvToolBarButton
          Left = 2
          Top = 18
          Width = 74
          Height = 62
          Action = _OSServer
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object btnactCnPrefixWizard1: TAdvToolBarButton
          Left = 76
          Top = 18
          Width = 44
          Height = 62
          Action = _ListOS
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
      end
    end
    object AdvPage1: TAdvPage
      Left = 0
      Top = 40
      Width = 929
      Height = 88
      Caption = 'Server Tracking'
      ImageIndex = 3
      object AdvToolBar5: TAdvToolBar
        Left = 3
        Top = 3
        Width = 355
        Height = 82
        AllowFloating = True
        Caption = 'Server Tracking'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = stlMenu
        ParentOptionPicture = True
        ToolBarIndex = 0
        object btnDataServerTracking: TAdvToolBarButton
          Left = 2
          Top = 18
          Width = 115
          Height = 62
          Action = _DataServerTracking
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object btnServerMasuk: TAdvToolBarButton
          Left = 117
          Top = 18
          Width = 78
          Height = 62
          Action = _ServerMasuk
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object btnServerKeluar: TAdvToolBarButton
          Left = 275
          Top = 18
          Width = 76
          Height = 62
          Action = _ServerKeluar
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object btnPindahServer: TAdvToolBarButton
          Left = 195
          Top = 18
          Width = 80
          Height = 62
          Action = _PindahServer
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 25
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
      end
    end
    object advpgLaporan: TAdvPage
      Left = 0
      Top = 40
      Width = 929
      Height = 88
      Caption = 'Laporan'
      ImageIndex = 19
      object advtlbr2: TAdvToolBar
        Left = 149
        Top = 3
        Width = 57
        Height = 82
        AllowFloating = True
        Caption = 'Laporan'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = stlMenu
        ParentOptionPicture = True
        ToolBarIndex = 1
        object btnactCnPrefixWizard2: TAdvToolBarButton
          Left = 2
          Top = 18
          Width = 51
          Height = 62
          Action = _Laporan
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 19
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
      end
      object advtlbr3: TAdvToolBar
        Left = 3
        Top = 3
        Width = 143
        Height = 82
        AllowFloating = True
        Caption = 'Log'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = stlMenu
        ParentOptionPicture = True
        ToolBarIndex = 0
        object AdvToolbarDataChecklist: TAdvToolBarButton
          Left = 56
          Top = 18
          Width = 83
          Height = 62
          Action = _DataChecklistPerangkat
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 19
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object AdvToolBarButton1: TAdvToolBarButton
          Left = 2
          Top = 18
          Width = 54
          Height = 62
          Action = _DataLogUser
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 19
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
      end
    end
    object pagePanduan: TAdvPage
      Left = 0
      Top = 40
      Width = 929
      Height = 88
      Caption = 'Panduan'
      ImageIndex = 6
      object tlbPanduan: TAdvToolBar
        Left = 3
        Top = 3
        Width = 106
        Height = 82
        AllowFloating = True
        Caption = 'Panduan Aplikasi'
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        CaptionAlignment = taCenter
        CompactImageIndex = -1
        ShowCaption = True
        ShowRightHandle = False
        TextAutoOptionMenu = 'Add or Remove Buttons'
        TextOptionMenu = 'Options'
        ToolBarStyler = stlMenu
        ParentOptionPicture = True
        ToolBarIndex = 0
        object btnAbout: TAdvToolBarButton
          Left = 2
          Top = 18
          Width = 100
          Height = 62
          Action = _About
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 13
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
        object btnRegistrasi: TAdvToolBarButton
          Left = 102
          Top = 18
          Width = 58
          Height = 62
          Action = _Registrasi
          Appearance.CaptionFont.Charset = DEFAULT_CHARSET
          Appearance.CaptionFont.Color = clWindowText
          Appearance.CaptionFont.Height = -12
          Appearance.CaptionFont.Name = 'Segoe UI'
          Appearance.CaptionFont.Style = []
          GlyphPosition = gpTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 14
          ParentFont = False
          Position = daTop
          ShowCaption = True
          Version = '6.5.3.4'
        end
      end
    end
  end
  object mmoSQLCreateDatabase: TMemo
    Left = 24
    Top = 152
    Width = 113
    Height = 49
    TabStop = False
    Lines.Strings = (
      'SET FOREIGN_KEY_CHECKS=0;'
      ''
      '/*Table structure for table `applog` */'
      ''
      'DROP TABLE IF EXISTS `applog`;'
      ''
      'CREATE TABLE `applog` ('
      '  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,'
      '  `aname` varchar(20) NOT NULL DEFAULT '#39#39','
      '  `aver` varchar(10) NOT NULL DEFAULT '#39#39','
      '  `adate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,'
      '  `alog` text,'
      '  `aupdate` timestamp NULL DEFAULT NULL,'
      '  `h` char(32) DEFAULT NULL,'
      '  PRIMARY KEY (`aid`),'
      '  KEY `adate` (`adate`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_ats` */'
      ''
      'DROP TABLE IF EXISTS `dc_ats`;'
      ''
      'CREATE TABLE `dc_ats` ('
      '  `id_ats` int(11) NOT NULL AUTO_INCREMENT,'
      '  `ats_name` varchar(20) DEFAULT NULL,'
      '  `id_pemilik` int(11) DEFAULT NULL,'
      '  PRIMARY KEY (`id_ats`),'
      '  KEY `fk_ats_pemilik` (`id_pemilik`),'
      
        '  CONSTRAINT `fk_ats_pemilik` FOREIGN KEY (`id_pemilik`) REFEREN' +
        'CES `dc_pemilik` (`id_pemilik`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_bast` */'
      ''
      'DROP TABLE IF EXISTS `dc_bast`;'
      ''
      'CREATE TABLE `dc_bast` ('
      '  `id_bast` int(11) NOT NULL AUTO_INCREMENT,'
      '  `id_jenisbast` int(11) DEFAULT NULL,'
      '  `no_bast` smallint(6) DEFAULT NULL,'
      '  `tanggal` datetime DEFAULT NULL,'
      '  `nama_pembawa` varchar(50) DEFAULT NULL,'
      '  `nip_pembawa` varchar(18) DEFAULT NULL,'
      '  `jabatan_pembawa` varchar(50) DEFAULT NULL,'
      '  `unit` varchar(100) DEFAULT NULL,'
      '  `keperluan` varchar(100) DEFAULT NULL,'
      '  `keterangan` varchar(255) DEFAULT NULL,'
      '  `filepdf` varchar(255) DEFAULT NULL,'
      '  PRIMARY KEY (`id_bast`),'
      '  KEY `fk_bast_jenisbast` (`id_jenisbast`),'
      
        '  CONSTRAINT `fk_bast_jenisbast` FOREIGN KEY (`id_jenisbast`) RE' +
        'FERENCES `dc_jenisbast` (`id_jenisbast`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_eos` */'
      ''
      'DROP TABLE IF EXISTS `dc_eos`;'
      ''
      'CREATE TABLE `dc_eos` ('
      '  `id_eos` int(11) NOT NULL AUTO_INCREMENT,'
      '  `id_ats` int(11) DEFAULT NULL,'
      '  `nama` varchar(50) DEFAULT NULL,'
      '  `no_hp` varchar(15) DEFAULT NULL,'
      '  `email` varchar(50) DEFAULT NULL,'
      '  PRIMARY KEY (`id_eos`),'
      '  KEY `fk_eos_ats` (`id_ats`),'
      
        '  CONSTRAINT `fk_eos_ats` FOREIGN KEY (`id_ats`) REFERENCES `dc_' +
        'ats` (`id_ats`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_jenisbast` */'
      ''
      'DROP TABLE IF EXISTS `dc_jenisbast`;'
      ''
      'CREATE TABLE `dc_jenisbast` ('
      '  `id_jenisbast` int(11) NOT NULL AUTO_INCREMENT,'
      '  `prefix2` varchar(50) DEFAULT NULL,'
      '  PRIMARY KEY (`id_jenisbast`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_jenisperangkat` */'
      ''
      'DROP TABLE IF EXISTS `dc_jenisperangkat`;'
      ''
      'CREATE TABLE `dc_jenisperangkat` ('
      '  `id_jenisperangkat` int(11) NOT NULL AUTO_INCREMENT,'
      '  `jenisperangkat` varchar(50) DEFAULT NULL,'
      '  PRIMARY KEY (`id_jenisperangkat`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_location` */'
      ''
      'DROP TABLE IF EXISTS `dc_location`;'
      ''
      'CREATE TABLE `dc_location` ('
      '  `id_location` int(11) NOT NULL AUTO_INCREMENT,'
      '  `id_rak` int(11) DEFAULT NULL,'
      '  `id_server` int(11) DEFAULT NULL,'
      '  `u` tinyint(2) DEFAULT NULL,'
      '  `states` set('#39'fix'#39','#39'floating'#39') DEFAULT '#39'fix'#39','
      '  PRIMARY KEY (`id_location`),'
      '  UNIQUE KEY `unq_idserver` (`id_server`),'
      '  KEY `fk_location_rak` (`id_rak`),'
      '  KEY `fk_location_server` (`id_server`),'
      
        '  CONSTRAINT `fk_location_rak` FOREIGN KEY (`id_rak`) REFERENCES' +
        ' `dc_rak` (`id_rak`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `fk_location_server` FOREIGN KEY (`id_server`) REFE' +
        'RENCES `dc_server` (`id_server`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_mcb_legrand` */'
      ''
      'DROP TABLE IF EXISTS `dc_mcb_legrand`;'
      ''
      'CREATE TABLE `dc_mcb_legrand` ('
      '  `id_mcblegrand` int(11) NOT NULL AUTO_INCREMENT,'
      '  `id_panel` int(11) DEFAULT NULL,'
      '  `id_rak` int(11) DEFAULT NULL,'
      '  `mcb_name` varchar(20) DEFAULT NULL,'
      '  `legrand_name` varchar(20) DEFAULT NULL,'
      '  `beban_max` tinyint(4) DEFAULT '#39'32'#39','
      '  `jenisphase` enum('#39'1-phase'#39','#39'3-phase'#39') DEFAULT NULL,'
      '  PRIMARY KEY (`id_mcblegrand`),'
      '  KEY `fk_mcbpdu_panel` (`id_panel`),'
      '  KEY `fk_mcbpdu_rak` (`id_rak`),'
      
        '  CONSTRAINT `fk_mcbpdu_panel` FOREIGN KEY (`id_panel`) REFERENC' +
        'ES `dc_panel` (`id_panel`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `fk_mcbpdu_rak` FOREIGN KEY (`id_rak`) REFERENCES `' +
        'dc_rak` (`id_rak`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_merkserver` */'
      ''
      'DROP TABLE IF EXISTS `dc_merkserver`;'
      ''
      'CREATE TABLE `dc_merkserver` ('
      '  `id_merkserver` int(11) NOT NULL AUTO_INCREMENT,'
      '  `merkserver` varchar(50) DEFAULT NULL,'
      '  PRIMARY KEY (`id_merkserver`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_os` */'
      ''
      'DROP TABLE IF EXISTS `dc_os`;'
      ''
      'CREATE TABLE `dc_os` ('
      '  `id_os` int(11) NOT NULL AUTO_INCREMENT,'
      '  `os` varchar(50) DEFAULT NULL,'
      '  PRIMARY KEY (`id_os`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_osserver` */'
      ''
      'DROP TABLE IF EXISTS `dc_osserver`;'
      ''
      'CREATE TABLE `dc_osserver` ('
      '  `id_osserver` int(11) NOT NULL AUTO_INCREMENT,'
      '  `id_server` int(11) DEFAULT NULL,'
      '  `id_os` int(11) DEFAULT NULL,'
      '  `ip_os` varchar(15) DEFAULT NULL,'
      '  `hostname` varchar(50) DEFAULT NULL,'
      '  `sistem_terpasang` varchar(50) DEFAULT NULL,'
      '  `user` varchar(50) DEFAULT NULL,'
      '  `password` varbinary(255) DEFAULT NULL,'
      '  PRIMARY KEY (`id_osserver`),'
      '  KEY `fk_osserver_os` (`id_os`),'
      '  KEY `fk_osserver_server` (`id_server`),'
      
        '  CONSTRAINT `fk_osserver_os` FOREIGN KEY (`id_os`) REFERENCES `' +
        'dc_os` (`id_os`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `fk_osserver_server` FOREIGN KEY (`id_server`) REFE' +
        'RENCES `dc_server` (`id_server`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_panel` */'
      ''
      'DROP TABLE IF EXISTS `dc_panel`;'
      ''
      'CREATE TABLE `dc_panel` ('
      '  `id_panel` int(11) NOT NULL AUTO_INCREMENT,'
      '  `panel_name` varchar(10) DEFAULT NULL,'
      '  PRIMARY KEY (`id_panel`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_pemeliharaan` */'
      ''
      'DROP TABLE IF EXISTS `dc_pemeliharaan`;'
      ''
      'CREATE TABLE `dc_pemeliharaan` ('
      '  `id_pemeliharaan` int(11) NOT NULL AUTO_INCREMENT,'
      '  `id_server` int(11) DEFAULT NULL,'
      '  `id_ats` int(11) DEFAULT NULL,'
      '  `tahun` int(11) DEFAULT NULL,'
      '  PRIMARY KEY (`id_pemeliharaan`),'
      '  UNIQUE KEY `unq_idserver_tahun` (`id_server`,`tahun`),'
      '  KEY `fk_pemeliharaan_ats` (`id_ats`),'
      '  KEY `fk_pemeliharaan_server` (`id_server`),'
      
        '  CONSTRAINT `fk_pemeliharaan_ats` FOREIGN KEY (`id_ats`) REFERE' +
        'NCES `dc_ats` (`id_ats`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `fk_pemeliharaan_server` FOREIGN KEY (`id_server`) ' +
        'REFERENCES `dc_server` (`id_server`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_pemilik` */'
      ''
      'DROP TABLE IF EXISTS `dc_pemilik`;'
      ''
      'CREATE TABLE `dc_pemilik` ('
      '  `id_pemilik` int(11) NOT NULL AUTO_INCREMENT,'
      
        '  `uniteselon1` enum('#39'SetJen'#39','#39'ItJen'#39','#39'DJA'#39','#39'DJP'#39','#39'DJBC'#39','#39'DJPB'#39',' +
        #39'DJKN'#39','#39'DJPK'#39','#39'DJPPR'#39','#39'BKF'#39','#39'BPPK'#39','#39'Lainnya'#39') DEFAULT NULL,'
      '  `pemilik` varchar(50) DEFAULT NULL,'
      '  PRIMARY KEY (`id_pemilik`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_picserver` */'
      ''
      'DROP TABLE IF EXISTS `dc_picserver`;'
      ''
      'CREATE TABLE `dc_picserver` ('
      '  `id_picserver` int(11) NOT NULL AUTO_INCREMENT,'
      '  `namapic` varchar(50) DEFAULT NULL,'
      '  `nohp` varchar(50) DEFAULT NULL,'
      '  `telp` varchar(20) DEFAULT NULL,'
      '  PRIMARY KEY (`id_picserver`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      '/*Table structure for table `dc_rak` */'
      ''
      'DROP TABLE IF EXISTS `dc_rak`;'
      ''
      'CREATE TABLE `dc_rak` ('
      '  `id_rak` int(11) NOT NULL AUTO_INCREMENT,'
      '  `rak_name` varchar(10) DEFAULT NULL,'
      '  PRIMARY KEY (`id_rak`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_server` */'
      ''
      'DROP TABLE IF EXISTS `dc_server`;'
      ''
      'CREATE TABLE `dc_server` ('
      '  `id_server` int(11) NOT NULL AUTO_INCREMENT,'
      '  `id_servermachine` int(11) DEFAULT NULL,'
      '  `id_pemilik` int(11) DEFAULT NULL,'
      '  `id_pemeliharaan` int(11) DEFAULT NULL,'
      '  `id_picserver` int(11) DEFAULT NULL,'
      '  `ip_management` varchar(15) DEFAULT NULL,'
      '  `no_bmn` varchar(50) DEFAULT NULL,'
      '  `user` varchar(50) DEFAULT NULL,'
      '  `password` varbinary(255) DEFAULT NULL,'
      '  `tgl_endofsupport` date DEFAULT NULL,'
      '  `port_nic` varchar(5) DEFAULT NULL,'
      '  `sn` varchar(100) DEFAULT NULL,'
      '  `status_colo` set('#39'Colocation'#39','#39'Non-Colocation'#39') DEFAULT NULL,'
      '  `id_enclosure` int(11) DEFAULT NULL,'
      '  `deleted` tinyint(1) DEFAULT '#39'0'#39','
      '  PRIMARY KEY (`id_server`),'
      '  KEY `fk_server_servermachine` (`id_servermachine`),'
      '  KEY `fk_server_pemilik` (`id_pemilik`),'
      '  KEY `fk_server_picserver` (`id_picserver`),'
      
        '  CONSTRAINT `fk_server_pemilik` FOREIGN KEY (`id_pemilik`) REFE' +
        'RENCES `dc_pemilik` (`id_pemilik`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `fk_server_picserver` FOREIGN KEY (`id_picserver`) ' +
        'REFERENCES `dc_picserver` (`id_picserver`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `fk_server_servermachine` FOREIGN KEY (`id_serverma' +
        'chine`) REFERENCES `dc_servermachine` (`id_servermachine`) ON UP' +
        'DATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_servermachine` */'
      ''
      'DROP TABLE IF EXISTS `dc_servermachine`;'
      ''
      'CREATE TABLE `dc_servermachine` ('
      '  `id_servermachine` int(11) NOT NULL AUTO_INCREMENT,'
      '  `id_merkserver` int(11) DEFAULT NULL,'
      '  `id_jenisperangkat` int(11) DEFAULT NULL,'
      '  `servername` varchar(60) DEFAULT NULL,'
      '  `u_count` tinyint(2) DEFAULT NULL,'
      
        '  `jenis_factor` enum('#39'Rack Mounted'#39','#39'Tower'#39','#39'Blade Enclosure'#39','#39 +
        'Blade Server'#39') DEFAULT '#39'Rack Mounted'#39','
      '  `processor` varchar(50) DEFAULT NULL,'
      '  `memory` varchar(50) DEFAULT NULL,'
      '  `storage` varchar(50) DEFAULT NULL,'
      '  `power_supply` varchar(50) DEFAULT NULL,'
      '  PRIMARY KEY (`id_servermachine`),'
      '  KEY `fk_servermachine_merkserver` (`id_merkserver`),'
      '  KEY `fk_servermachine_tipeperangkat` (`id_jenisperangkat`),'
      
        '  CONSTRAINT `fk_servermachine_merkserver` FOREIGN KEY (`id_merk' +
        'server`) REFERENCES `dc_merkserver` (`id_merkserver`) ON UPDATE ' +
        'CASCADE,'
      
        '  CONSTRAINT `fk_servermachine_tipeperangkat` FOREIGN KEY (`id_j' +
        'enisperangkat`) REFERENCES `dc_jenisperangkat` (`id_jenisperangk' +
        'at`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_servermcb` */'
      ''
      'DROP TABLE IF EXISTS `dc_servermcb`;'
      ''
      'CREATE TABLE `dc_servermcb` ('
      '  `id_servermcb` int(11) NOT NULL AUTO_INCREMENT,'
      '  `id_server` int(11) DEFAULT NULL,'
      '  `id_mcblegrand` int(11) DEFAULT NULL,'
      
        '  `power` set('#39'primary'#39','#39'secondary'#39','#39'tertiary'#39','#39'quarternary'#39') DE' +
        'FAULT NULL,'
      '  PRIMARY KEY (`id_servermcb`),'
      '  KEY `fk_servermcb_server` (`id_server`),'
      '  KEY `fk_servermcb_mcbpdu` (`id_mcblegrand`),'
      
        '  CONSTRAINT `fk_servermcb_mcblegrand` FOREIGN KEY (`id_mcblegra' +
        'nd`) REFERENCES `dc_mcb_legrand` (`id_mcblegrand`) ON UPDATE CAS' +
        'CADE,'
      
        '  CONSTRAINT `fk_servermcb_server` FOREIGN KEY (`id_server`) REF' +
        'ERENCES `dc_server` (`id_server`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `dc_servertracking` */'
      ''
      'DROP TABLE IF EXISTS `dc_servertracking`;'
      ''
      'CREATE TABLE `dc_servertracking` ('
      '  `id_servertracking` int(11) NOT NULL AUTO_INCREMENT,'
      '  `id_server` int(11) DEFAULT NULL,'
      '  `id_bast` int(11) DEFAULT NULL,'
      '  `waktu` datetime DEFAULT NULL,'
      
        '  `jenis_pindah` set('#39'masuk'#39','#39'keluar'#39','#39'pindah'#39','#39'lainnya'#39') DEFAUL' +
        'T NULL,'
      '  `rak_lama` int(11) DEFAULT NULL,'
      '  `u_lama` tinyint(2) DEFAULT NULL,'
      '  `rak_baru` int(11) DEFAULT NULL,'
      '  `u_baru` tinyint(2) DEFAULT NULL,'
      '  `kali_perpindahan` int(11) DEFAULT NULL,'
      '  `id_user` int(11) DEFAULT NULL,'
      '  `notes` text,'
      '  `no_tiket` varchar(20) DEFAULT NULL,'
      '  PRIMARY KEY (`id_servertracking`),'
      '  KEY `fk_servertracking_server` (`id_server`),'
      '  KEY `fk_servertracking_user` (`id_user`),'
      '  KEY `fk_servertracking_location_baru` (`rak_lama`),'
      '  KEY `fk_servertracking_bast` (`id_bast`),'
      
        '  CONSTRAINT `fk_servertracking_bast` FOREIGN KEY (`id_bast`) RE' +
        'FERENCES `dc_bast` (`id_bast`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `fk_servertracking_server` FOREIGN KEY (`id_server`' +
        ') REFERENCES `dc_server` (`id_server`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `fk_servertracking_user` FOREIGN KEY (`id_user`) RE' +
        'FERENCES `user` (`iduser`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `import_mcb` */'
      ''
      'DROP TABLE IF EXISTS `import_mcb`;'
      ''
      'CREATE TABLE `import_mcb` ('
      '  `no` int(11) DEFAULT NULL,'
      '  `sn_server` varchar(100) DEFAULT NULL,'
      '  `power` varchar(50) DEFAULT NULL,'
      '  `mcb` varchar(20) DEFAULT NULL'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      '/*Table structure for table `import_os` */'
      ''
      'DROP TABLE IF EXISTS `import_os`;'
      ''
      'CREATE TABLE `import_os` ('
      '  `no` int(11) DEFAULT NULL,'
      '  `server_sn` varchar(100) DEFAULT NULL,'
      '  `os` varchar(50) DEFAULT NULL,'
      '  `ip_os` varchar(20) DEFAULT NULL,'
      '  `hostname` varchar(50) DEFAULT NULL,'
      '  `sistem_terpasang` varchar(50) DEFAULT NULL,'
      '  `user` varchar(50) DEFAULT NULL,'
      '  `password` varchar(255) DEFAULT NULL'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      '/*Table structure for table `import_panel` */'
      ''
      'DROP TABLE IF EXISTS `import_panel`;'
      ''
      'CREATE TABLE `import_panel` ('
      '  `no` int(11) DEFAULT NULL,'
      '  `panel` varchar(10) DEFAULT NULL,'
      '  `mcb` varchar(10) DEFAULT NULL,'
      '  `jenisphase` varchar(20) DEFAULT NULL'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      '/*Table structure for table `import_rak` */'
      ''
      'DROP TABLE IF EXISTS `import_rak`;'
      ''
      'CREATE TABLE `import_rak` ('
      '  `no` int(11) DEFAULT NULL,'
      '  `rak` varchar(10) DEFAULT NULL,'
      '  `mcb` varchar(10) DEFAULT NULL'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      '/*Table structure for table `import_server` */'
      ''
      'DROP TABLE IF EXISTS `import_server`;'
      ''
      'CREATE TABLE `import_server` ('
      '  `no` int(11) DEFAULT NULL,'
      '  `merk_server` varchar(50) DEFAULT NULL,'
      '  `jenis_perangkat` varchar(50) DEFAULT NULL,'
      '  `server` varchar(60) DEFAULT NULL,'
      '  `form_factor` tinyint(2) DEFAULT NULL,'
      '  `sn` varchar(100) DEFAULT NULL,'
      '  `ip_management` varchar(15) DEFAULT NULL,'
      '  `user` varchar(50) DEFAULT NULL,'
      '  `password` varchar(255) DEFAULT NULL,'
      '  `status_colo` varchar(20) DEFAULT NULL,'
      '  `tgl_end_of_support` date DEFAULT NULL,'
      '  `eselon_1` varchar(50) DEFAULT NULL,'
      '  `pemilik` varchar(50) DEFAULT NULL,'
      '  `rak` varchar(10) DEFAULT NULL,'
      '  `u_awal` tinyint(2) DEFAULT NULL'
      ') ENGINE=InnoDB DEFAULT CHARSET=latin1;'
      ''
      '/*Table structure for table `jabatan` */'
      ''
      'DROP TABLE IF EXISTS `jabatan`;'
      ''
      'CREATE TABLE `jabatan` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `nama` varchar(50) DEFAULT NULL,'
      
        '  `tgledit` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE C' +
        'URRENT_TIMESTAMP,'
      '  PRIMARY KEY (`id`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `karyawan` */'
      ''
      'DROP TABLE IF EXISTS `karyawan`;'
      ''
      'CREATE TABLE `karyawan` ('
      '  `idkaryawan` int(11) NOT NULL AUTO_INCREMENT,'
      '  `nik` varchar(20) NOT NULL,'
      '  `noktp` varchar(30) DEFAULT NULL,'
      '  `nama` varchar(40) DEFAULT NULL,'
      '  `jnskelamin` enum('#39'Laki-laki'#39','#39'Perempuan'#39') DEFAULT NULL,'
      '  `alamat` varchar(100) DEFAULT NULL,'
      '  `notelp` varchar(20) DEFAULT NULL,'
      '  `idjabatan` int(11) DEFAULT NULL,'
      
        '  `tgledit` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE C' +
        'URRENT_TIMESTAMP,'
      '  `tptlahir` varchar(30) DEFAULT '#39' '#39','
      '  `tgllahir` date DEFAULT NULL,'
      '  `goldarah` varchar(2) DEFAULT '#39' '#39','
      '  PRIMARY KEY (`idkaryawan`),'
      '  UNIQUE KEY `nik` (`nik`),'
      '  UNIQUE KEY `noktp` (`noktp`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `log_user` */'
      ''
      'DROP TABLE IF EXISTS `log_user`;'
      ''
      'CREATE TABLE `log_user` ('
      '  `id_log` int(11) NOT NULL AUTO_INCREMENT,'
      '  `id_user` int(11) DEFAULT NULL,'
      '  `time` datetime DEFAULT NULL,'
      '  `activity` varchar(255) DEFAULT NULL COMMENT '#39'C/U/D'#39','
      '  `targetmenu` varchar(50) DEFAULT NULL,'
      '  PRIMARY KEY (`id_log`),'
      '  KEY `fk_loguser_user` (`id_user`),'
      
        '  CONSTRAINT `fk_loguser_user` FOREIGN KEY (`id_user`) REFERENCE' +
        'S `user` (`iduser`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `setting` */'
      ''
      'DROP TABLE IF EXISTS `setting`;'
      ''
      'CREATE TABLE `setting` ('
      '  `nama` varchar(20) NOT NULL,'
      '  `nilai` blob,'
      '  PRIMARY KEY (`nama`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `tempnomor` */'
      ''
      'DROP TABLE IF EXISTS `tempnomor`;'
      ''
      'CREATE TABLE `tempnomor` ('
      '  `idnomor` int(11) NOT NULL AUTO_INCREMENT,'
      '  `tabel` varchar(20) DEFAULT NULL,'
      '  `noakhir` int(11) DEFAULT NULL,'
      '  `prefix` varchar(5) DEFAULT NULL,'
      '  PRIMARY KEY (`idnomor`),'
      '  UNIQUE KEY `prefix` (`prefix`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `user` */'
      ''
      'DROP TABLE IF EXISTS `user`;'
      ''
      'CREATE TABLE `user` ('
      '  `iduser` int(11) NOT NULL AUTO_INCREMENT,'
      '  `uname` varchar(20) DEFAULT NULL,'
      '  `nama` varchar(40) DEFAULT NULL,'
      '  `idkaryawan` int(11) DEFAULT NULL,'
      '  `pwd` varchar(50) DEFAULT NULL,'
      '  `idlevel` int(11) NOT NULL,'
      '  `aktif` tinyint(4) DEFAULT '#39'1'#39','
      
        '  `tgledit` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE C' +
        'URRENT_TIMESTAMP,'
      '  PRIMARY KEY (`iduser`),'
      '  UNIQUE KEY `uname` (`uname`),'
      '  KEY `idlevel` (`idlevel`),'
      
        '  CONSTRAINT `user_fk_new` FOREIGN KEY (`idlevel`) REFERENCES `u' +
        'ser_level` (`idlevel`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `user_hakakses` */'
      ''
      'DROP TABLE IF EXISTS `user_hakakses`;'
      ''
      'CREATE TABLE `user_hakakses` ('
      '  `idlevel` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `idmenu` int(11) NOT NULL,'
      '  `status` tinyint(1) DEFAULT '#39'0'#39','
      '  `tambah` tinyint(1) DEFAULT '#39'0'#39','
      '  `ubah` tinyint(1) DEFAULT '#39'0'#39','
      '  `hapus` tinyint(1) DEFAULT '#39'0'#39','
      '  `cetak` tinyint(1) DEFAULT '#39'0'#39','
      '  PRIMARY KEY (`idlevel`,`idmenu`),'
      '  KEY `idmenu` (`idmenu`),'
      '  KEY `iduser` (`idlevel`),'
      
        '  CONSTRAINT `user_hakakses_level` FOREIGN KEY (`idlevel`) REFER' +
        'ENCES `user_level` (`idlevel`) ON DELETE CASCADE ON UPDATE CASCA' +
        'DE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      '/*Table structure for table `user_level` */'
      ''
      'DROP TABLE IF EXISTS `user_level`;'
      ''
      'CREATE TABLE `user_level` ('
      '  `idlevel` int(11) NOT NULL AUTO_INCREMENT,'
      '  `namalevel` varchar(30) DEFAULT NULL,'
      '  PRIMARY KEY (`idlevel`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      ''
      'SET FOREIGN_KEY_CHECKS=1;')
    TabOrder = 2
    Visible = False
    WantReturns = False
    WordWrap = False
  end
  object mmoSQLCreateProcedure: TMemo
    Left = 24
    Top = 208
    Width = 113
    Height = 49
    TabStop = False
    Lines.Strings = (
      '/* create procedure */')
    TabOrder = 4
    Visible = False
    WantReturns = False
    WordWrap = False
  end
  object mmoSQLIsiMaster: TMemo
    Left = 144
    Top = 208
    Width = 113
    Height = 49
    TabStop = False
    Lines.Strings = (
      'SET FOREIGN_KEY_CHECKS=0;'
      ''
      '/* master */'
      ''
      ''
      'SET FOREIGN_KEY_CHECKS=1;')
    TabOrder = 5
    Visible = False
    WantReturns = False
    WordWrap = False
  end
  object mmoSQLIsiProses: TMemo
    Left = 264
    Top = 208
    Width = 113
    Height = 49
    TabStop = False
    Lines.Strings = (
      'SET FOREIGN_KEY_CHECKS=0;'
      ''
      '/*transaksi*/'
      ''
      'SET FOREIGN_KEY_CHECKS=1;')
    TabOrder = 6
    Visible = False
    WantReturns = False
    WordWrap = False
  end
  object mmoSQLKosongkan: TMemo
    Left = 144
    Top = 152
    Width = 113
    Height = 49
    TabStop = False
    Lines.Strings = (
      'SET FOREIGN_KEY_CHECKS=0;'
      ''
      '/* truncate */'
      'TRUNCATE `user` ;'
      'TRUNCATE `user_hakakses` ;'
      'TRUNCATE `user_level` ;'
      'TRUNCATE `karyawan` ;'
      'TRUNCATE `setting` ;'
      'TRUNCATE `tempnomor` ;'
      ''
      '/* begin */'
      'INSERT INTO `user_level` (`idlevel`, `namalevel`) VALUES '
      '  (1,'#39'Administrator'#39');'
      'COMMIT;'
      ''
      
        'INSERT INTO `user` (`iduser`, `uname`, `nama`, `idkaryawan`, `pw' +
        'd`, `idlevel`, `aktif`, `tgledit`) VALUES '
      
        '  (1,'#39'admin'#39','#39'Administrator'#39',NULL,md5('#39#39'),1,1,current_timestamp)' +
        ';'
      'COMMIT;'
      ''
      'SET FOREIGN_KEY_CHECKS=1;')
    TabOrder = 3
    Visible = False
    WantReturns = False
    WordWrap = False
  end
  object actlstn: TActionList
    Images = ilMain
    Left = 632
    Top = 144
    object _PemilikServer: TAction
      Category = '5. Unit'
      Caption = 'Pemilik Perangkat'
      ImageIndex = 25
      OnExecute = _PemilikServerExecute
    end
    object _ATS: TAction
      Category = '5. Unit'
      Caption = 'ATS'
      ImageIndex = 25
      OnExecute = _ATSExecute
    end
    object _DataServerTracking: TAction
      Category = '7. Data Server Tracking'
      Caption = 'Data Server Tracking'
      ImageIndex = 25
      OnExecute = _DataServerTrackingExecute
    end
    object _Jabatan: TAction
      Category = '2. Master'
      Caption = 'Jabatan'
      ImageIndex = 23
    end
    object _Karyawan: TAction
      Category = '2. Master'
      Caption = 'Pegawai'
      ImageIndex = 24
      OnExecute = _KaryawanExecute
    end
    object _Login: TAction
      Category = '1. Pengguna'
      Caption = 'Login'
      ImageIndex = 10
      OnExecute = _LoginExecute
    end
    object _Logout: TAction
      Category = '1. Pengguna'
      Caption = 'Logout'
      ImageIndex = 11
      OnExecute = _LogoutExecute
    end
    object _UserLevel: TAction
      Category = '1. Pengguna'
      Caption = 'Grup Pengguna'
      ImageIndex = 16
      OnExecute = _UserLevelExecute
    end
    object _Panel: TAction
      Category = '4. Kelistrikan'
      Caption = 'Panel'
      ImageIndex = 25
      OnExecute = _PanelExecute
    end
    object _MCBLegrand: TAction
      Category = '4. Kelistrikan'
      Caption = 'MCB - Legrand'
      ImageIndex = 25
      OnExecute = _MCBLegrandExecute
    end
    object _User: TAction
      Category = '1. Pengguna'
      Caption = 'Pengguna'
      ImageIndex = 17
      OnExecute = _UserExecute
    end
    object _GantiPassword: TAction
      Category = '1. Pengguna'
      Caption = 'Ganti Password'
      ImageIndex = 15
      OnExecute = _GantiPasswordExecute
    end
    object _About: TAction
      Category = '6. Panduan'
      Caption = 'Tentang Program'
      ImageIndex = 13
      ShortCut = 112
      OnExecute = _AboutExecute
    end
    object _Setting: TAction
      Category = '1. Pengguna'
      Caption = 'Program'
      ImageIndex = 21
      OnExecute = _SettingExecute
    end
    object _Registrasi: TAction
      Category = '6. Panduan'
      Caption = 'Registrasi'
      ImageIndex = 14
      Visible = False
    end
    object _SettingDB: TAction
      Category = '1. Pengguna'
      Caption = 'Database'
      ImageIndex = 22
      OnExecute = _SettingDBExecute
    end
    object _Keluar: TAction
      Category = '1. Pengguna'
      Caption = 'Keluar'
      ImageIndex = 12
      OnExecute = _KeluarExecute
    end
    object _Server: TAction
      Category = '3. Server'
      Caption = 'Data Perangkat'
      ImageIndex = 25
      OnExecute = _ServerExecute
    end
    object _TipeServer: TAction
      Category = '3. Server'
      Caption = 'Tipe Perangkat'
      ImageIndex = 25
      OnExecute = _TipeServerExecute
    end
    object _ListOS: TAction
      Category = '3. Server'
      Caption = 'List OS'
      ImageIndex = 25
      OnExecute = _ListOSExecute
    end
    object _OSServer: TAction
      Category = '3. Server'
      Caption = 'OS && Sistem'
      ImageIndex = 25
      OnExecute = _OSServerExecute
    end
    object _Lokasi: TAction
      Category = '3. Server'
      Caption = 'Lokasi'
      ImageIndex = 25
      OnExecute = _LokasiExecute
    end
    object _Rak: TAction
      Category = '3. Server'
      Caption = 'Rak'
      ImageIndex = 25
      OnExecute = _RakExecute
    end
    object _Pemeliharaan: TAction
      Category = '5. Unit'
      Caption = 'Pemeliharaan'
      ImageIndex = 25
      OnExecute = _PemeliharaanExecute
    end
    object _ServerMasuk: TAction
      Category = '7. Data Server Tracking'
      Caption = 'Server Masuk'
      ImageIndex = 25
      OnExecute = _ServerMasukExecute
    end
    object _PindahServer: TAction
      Category = '7. Data Server Tracking'
      Caption = 'Pindah Server'
      ImageIndex = 25
      OnExecute = _PindahServerExecute
    end
    object _ServerKeluar: TAction
      Category = '7. Data Server Tracking'
      Caption = 'Server Keluar'
      ImageIndex = 25
      OnExecute = _ServerKeluarExecute
    end
    object _Merk: TAction
      Category = '3. Server'
      Caption = 'Merk'
      ImageIndex = 25
      OnExecute = _MerkExecute
    end
    object _EoS: TAction
      Category = '5. Unit'
      Caption = 'EoS'
      ImageIndex = 25
      OnExecute = _EoSExecute
    end
    object _JenisPerangkat: TAction
      Category = '3. Server'
      Caption = 'Jenis Perangkat'
      ImageIndex = 25
    end
    object _Laporan: TAction
      Category = '8. Laporan'
      Caption = 'Laporan'
      ImageIndex = 19
      OnExecute = _LaporanExecute
    end
    object _PICServer: TAction
      Category = '3. Server'
      Caption = 'PIC Server'
      ImageIndex = 25
      OnExecute = _PICServerExecute
    end
    object _DataLogUser: TAction
      Category = '8. Laporan'
      Caption = 'Log User'
      ImageIndex = 19
      OnExecute = _DataLogUserExecute
    end
    object _DataChecklistPerangkat: TAction
      Category = '8. Laporan'
      Caption = 'Data Checklist'
      ImageIndex = 19
      OnExecute = _DataChecklistPerangkatExecute
    end
  end
  object tmrMain: TTimer
    Enabled = False
    OnTimer = tmrMainTimer
    Left = 664
    Top = 144
  end
  object stlMenu: TAdvToolBarOfficeStyler
    AppColor.AppButtonColor = 13005312
    AppColor.AppButtonHoverColor = 16755772
    AppColor.TextColor = clWhite
    AppColor.HoverColor = 16246477
    AppColor.HoverTextColor = clBlack
    AppColor.HoverBorderColor = 15187578
    AppColor.SelectedColor = 15187578
    AppColor.SelectedTextColor = clBlack
    AppColor.SelectedBorderColor = 15187578
    Style = bsWindows7
    AutoThemeAdapt = True
    BorderColor = 14404026
    BorderColorHot = 14404026
    ButtonAppearance.Color = 16575452
    ButtonAppearance.ColorTo = 16571329
    ButtonAppearance.ColorChecked = 16645114
    ButtonAppearance.ColorCheckedTo = 16643051
    ButtonAppearance.ColorDown = 16575452
    ButtonAppearance.ColorDownTo = 16571329
    ButtonAppearance.ColorHot = 16645114
    ButtonAppearance.ColorHotTo = 16643051
    ButtonAppearance.BorderDownColor = 13542013
    ButtonAppearance.BorderHotColor = 16504504
    ButtonAppearance.BorderCheckedColor = 16504504
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -12
    ButtonAppearance.CaptionFont.Name = 'Segoe UI'
    ButtonAppearance.CaptionFont.Style = []
    CaptionAppearance.CaptionColor = 16115676
    CaptionAppearance.CaptionColorTo = 16115676
    CaptionAppearance.CaptionTextColor = 10060659
    CaptionAppearance.CaptionColorHot = 16512491
    CaptionAppearance.CaptionColorHotTo = 16512491
    CaptionAppearance.CaptionTextColorHot = 10060659
    CaptionAppearance.CaptionBorderColorHot = 15921133
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Segoe UI'
    CaptionFont.Style = []
    ContainerAppearance.LineColor = clBtnShadow
    ContainerAppearance.Line3D = True
    Color.Color = 14404026
    Color.ColorTo = 14404026
    Color.Direction = gdVertical
    Color.Mirror.Color = 16776699
    Color.Mirror.ColorTo = 16379877
    Color.Mirror.ColorMirror = 16379877
    Color.Mirror.ColorMirrorTo = 16115676
    ColorHot.Color = 16776699
    ColorHot.ColorTo = 16776699
    ColorHot.Direction = gdVertical
    ColorHot.Mirror.Color = 16777213
    ColorHot.Mirror.ColorTo = 16512491
    ColorHot.Mirror.ColorMirror = 16512491
    ColorHot.Mirror.ColorMirrorTo = 16512491
    CompactGlowButtonAppearance.BorderColor = 13811376
    CompactGlowButtonAppearance.BorderColorHot = 47103
    CompactGlowButtonAppearance.BorderColorDown = 2726850
    CompactGlowButtonAppearance.BorderColorChecked = 3904194
    CompactGlowButtonAppearance.Color = 16513270
    CompactGlowButtonAppearance.ColorTo = 16117478
    CompactGlowButtonAppearance.ColorChecked = 10014198
    CompactGlowButtonAppearance.ColorCheckedTo = 9425148
    CompactGlowButtonAppearance.ColorDisabled = clNone
    CompactGlowButtonAppearance.ColorDisabledTo = clNone
    CompactGlowButtonAppearance.ColorDown = 9161198
    CompactGlowButtonAppearance.ColorDownTo = 8046581
    CompactGlowButtonAppearance.ColorHot = 14807293
    CompactGlowButtonAppearance.ColorHotTo = 6934271
    CompactGlowButtonAppearance.ColorMirror = 15853791
    CompactGlowButtonAppearance.ColorMirrorTo = 16050913
    CompactGlowButtonAppearance.ColorMirrorHot = 13369343
    CompactGlowButtonAppearance.ColorMirrorHotTo = 6934271
    CompactGlowButtonAppearance.ColorMirrorDown = 9694195
    CompactGlowButtonAppearance.ColorMirrorDownTo = 5684213
    CompactGlowButtonAppearance.ColorMirrorChecked = 6210815
    CompactGlowButtonAppearance.ColorMirrorCheckedTo = 8640511
    CompactGlowButtonAppearance.ColorMirrorDisabled = clNone
    CompactGlowButtonAppearance.ColorMirrorDisabledTo = clNone
    CompactGlowButtonAppearance.GradientHot = ggVertical
    CompactGlowButtonAppearance.GradientMirrorHot = ggVertical
    CompactGlowButtonAppearance.GradientDown = ggVertical
    CompactGlowButtonAppearance.GradientMirrorDown = ggVertical
    CompactGlowButtonAppearance.GradientChecked = ggVertical
    DockColor.Color = 14404026
    DockColor.ColorTo = 14404026
    DockColor.Direction = gdHorizontal
    DockColor.Steps = 128
    FloatingWindowBorderColor = 13542013
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    GlowButtonAppearance.BorderColor = 13811376
    GlowButtonAppearance.BorderColorHot = 47103
    GlowButtonAppearance.BorderColorDown = 2726850
    GlowButtonAppearance.BorderColorChecked = 3904194
    GlowButtonAppearance.Color = 16513270
    GlowButtonAppearance.ColorTo = 16117478
    GlowButtonAppearance.ColorChecked = 10014198
    GlowButtonAppearance.ColorCheckedTo = 9425148
    GlowButtonAppearance.ColorDisabled = clNone
    GlowButtonAppearance.ColorDisabledTo = clNone
    GlowButtonAppearance.ColorDown = 9161198
    GlowButtonAppearance.ColorDownTo = 8046581
    GlowButtonAppearance.ColorHot = 14807293
    GlowButtonAppearance.ColorHotTo = 6934271
    GlowButtonAppearance.ColorMirror = 15853791
    GlowButtonAppearance.ColorMirrorTo = 16050913
    GlowButtonAppearance.ColorMirrorHot = 13369343
    GlowButtonAppearance.ColorMirrorHotTo = 6934271
    GlowButtonAppearance.ColorMirrorDown = 9694195
    GlowButtonAppearance.ColorMirrorDownTo = 5684213
    GlowButtonAppearance.ColorMirrorChecked = 6210815
    GlowButtonAppearance.ColorMirrorCheckedTo = 8640511
    GlowButtonAppearance.ColorMirrorDisabled = clNone
    GlowButtonAppearance.ColorMirrorDisabledTo = clNone
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    GroupAppearance.Background = clInfoBk
    GroupAppearance.BorderColor = 47103
    GroupAppearance.Color = 47103
    GroupAppearance.ColorTo = 47103
    GroupAppearance.ColorMirror = 47103
    GroupAppearance.ColorMirrorTo = 47103
    GroupAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.Font.Color = clWindowText
    GroupAppearance.Font.Height = -12
    GroupAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.Font.Style = []
    GroupAppearance.Gradient = ggVertical
    GroupAppearance.GradientMirror = ggVertical
    GroupAppearance.TextColor = 5978398
    GroupAppearance.CaptionAppearance.CaptionColor = 16115676
    GroupAppearance.CaptionAppearance.CaptionColorTo = 16115676
    GroupAppearance.CaptionAppearance.CaptionTextColor = 10060659
    GroupAppearance.CaptionAppearance.CaptionColorHot = 16512491
    GroupAppearance.CaptionAppearance.CaptionColorHotTo = 16512491
    GroupAppearance.CaptionAppearance.CaptionTextColorHot = 10060659
    GroupAppearance.PageAppearance.BorderColor = 14404026
    GroupAppearance.PageAppearance.Color = 16776699
    GroupAppearance.PageAppearance.ColorTo = 16379877
    GroupAppearance.PageAppearance.ColorMirror = 16379877
    GroupAppearance.PageAppearance.ColorMirrorTo = 16115676
    GroupAppearance.PageAppearance.Gradient = ggVertical
    GroupAppearance.PageAppearance.GradientMirror = ggVertical
    GroupAppearance.PageAppearance.ShadowColor = clSilver
    GroupAppearance.PageAppearance.HighLightColor = clNone
    GroupAppearance.TabAppearance.BorderColor = 14404026
    GroupAppearance.TabAppearance.BorderColorHot = 47103
    GroupAppearance.TabAppearance.BorderColorSelected = 47103
    GroupAppearance.TabAppearance.BorderColorSelectedHot = 47103
    GroupAppearance.TabAppearance.BorderColorDisabled = clGray
    GroupAppearance.TabAppearance.BorderColorDown = 14404026
    GroupAppearance.TabAppearance.Color = clWhite
    GroupAppearance.TabAppearance.ColorTo = clWhite
    GroupAppearance.TabAppearance.ColorSelected = 16776699
    GroupAppearance.TabAppearance.ColorSelectedTo = 16776699
    GroupAppearance.TabAppearance.ColorDisabled = 16119285
    GroupAppearance.TabAppearance.ColorDisabledTo = 16119285
    GroupAppearance.TabAppearance.ColorHot = 16380138
    GroupAppearance.TabAppearance.ColorHotTo = 16380138
    GroupAppearance.TabAppearance.ColorMirror = clWhite
    GroupAppearance.TabAppearance.ColorMirrorTo = clWhite
    GroupAppearance.TabAppearance.ColorMirrorHot = 16380138
    GroupAppearance.TabAppearance.ColorMirrorHotTo = 16380138
    GroupAppearance.TabAppearance.ColorMirrorSelected = 16776699
    GroupAppearance.TabAppearance.ColorMirrorSelectedTo = 16776699
    GroupAppearance.TabAppearance.ColorMirrorDisabled = 16119285
    GroupAppearance.TabAppearance.ColorMirrorDisabledTo = 16119285
    GroupAppearance.TabAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.TabAppearance.Font.Color = clWindowText
    GroupAppearance.TabAppearance.Font.Height = -11
    GroupAppearance.TabAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.TabAppearance.Font.Style = []
    GroupAppearance.TabAppearance.Gradient = ggVertical
    GroupAppearance.TabAppearance.GradientMirror = ggVertical
    GroupAppearance.TabAppearance.GradientHot = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorHot = ggVertical
    GroupAppearance.TabAppearance.GradientSelected = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorSelected = ggVertical
    GroupAppearance.TabAppearance.GradientDisabled = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorDisabled = ggVertical
    GroupAppearance.TabAppearance.TextColor = 5978398
    GroupAppearance.TabAppearance.TextColorHot = 5978398
    GroupAppearance.TabAppearance.TextColorSelected = 9126421
    GroupAppearance.TabAppearance.TextColorDisabled = clGray
    GroupAppearance.TabAppearance.ShadowColor = 16115676
    GroupAppearance.TabAppearance.HighLightColor = clNone
    GroupAppearance.TabAppearance.HighLightColorHot = clNone
    GroupAppearance.TabAppearance.HighLightColorSelected = clNone
    GroupAppearance.TabAppearance.HighLightColorSelectedHot = clNone
    GroupAppearance.TabAppearance.HighLightColorDown = clNone
    GroupAppearance.ToolBarAppearance.BorderColor = 13811376
    GroupAppearance.ToolBarAppearance.BorderColorHot = 13811376
    GroupAppearance.ToolBarAppearance.Color.Color = 16776699
    GroupAppearance.ToolBarAppearance.Color.ColorTo = 16115676
    GroupAppearance.ToolBarAppearance.Color.Direction = gdHorizontal
    GroupAppearance.ToolBarAppearance.ColorHot.Color = 16776699
    GroupAppearance.ToolBarAppearance.ColorHot.ColorTo = 16512491
    GroupAppearance.ToolBarAppearance.ColorHot.Direction = gdHorizontal
    PageAppearance.BorderColor = 14404026
    PageAppearance.Color = 16776699
    PageAppearance.ColorTo = 16379877
    PageAppearance.ColorMirror = 16379877
    PageAppearance.ColorMirrorTo = 16115676
    PageAppearance.Gradient = ggVertical
    PageAppearance.GradientMirror = ggVertical
    PageAppearance.ShadowColor = clSilver
    PageAppearance.HighLightColor = clNone
    PagerCaption.BorderColor = 14404026
    PagerCaption.Color = 16116191
    PagerCaption.ColorTo = 16116191
    PagerCaption.ColorMirror = 16116191
    PagerCaption.ColorMirrorTo = 16116191
    PagerCaption.Gradient = ggVertical
    PagerCaption.GradientMirror = ggVertical
    PagerCaption.TextColor = clGray
    PagerCaption.TextColorExtended = clBlue
    PagerCaption.Font.Charset = DEFAULT_CHARSET
    PagerCaption.Font.Color = clWindowText
    PagerCaption.Font.Height = -13
    PagerCaption.Font.Name = 'Segoe UI'
    PagerCaption.Font.Style = [fsBold]
    QATAppearance.BorderColor = 13811634
    QATAppearance.Color = 16116191
    QATAppearance.ColorTo = 16116191
    QATAppearance.FullSizeBorderColor = 13811634
    QATAppearance.FullSizeColor = 16116191
    QATAppearance.FullSizeColorTo = 16116191
    RightHandleColor = 15512972
    RightHandleColorTo = 15512972
    RightHandleColorHot = 16645114
    RightHandleColorHotTo = 16643051
    RightHandleColorDown = 16575452
    RightHandleColorDownTo = 16571329
    TabAppearance.BorderColor = 14404026
    TabAppearance.BorderColorHot = 47103
    TabAppearance.BorderColorSelected = 14404026
    TabAppearance.BorderColorSelectedHot = 47103
    TabAppearance.BorderColorDisabled = clGray
    TabAppearance.BorderColorDown = 14404026
    TabAppearance.Color = clWhite
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = 16776699
    TabAppearance.ColorSelectedTo = 16776699
    TabAppearance.ColorDisabled = 16119285
    TabAppearance.ColorDisabledTo = 16119285
    TabAppearance.ColorHot = 16380138
    TabAppearance.ColorHotTo = 16380138
    TabAppearance.ColorMirror = clWhite
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = 16380138
    TabAppearance.ColorMirrorHotTo = 16380138
    TabAppearance.ColorMirrorSelected = 16776699
    TabAppearance.ColorMirrorSelectedTo = 16776699
    TabAppearance.ColorMirrorDisabled = 16119285
    TabAppearance.ColorMirrorDisabledTo = 16119285
    TabAppearance.Font.Charset = DEFAULT_CHARSET
    TabAppearance.Font.Color = clWindowText
    TabAppearance.Font.Height = -11
    TabAppearance.Font.Name = 'Segoe UI'
    TabAppearance.Font.Style = []
    TabAppearance.Gradient = ggVertical
    TabAppearance.GradientMirror = ggVertical
    TabAppearance.GradientHot = ggVertical
    TabAppearance.GradientMirrorHot = ggVertical
    TabAppearance.GradientSelected = ggVertical
    TabAppearance.GradientMirrorSelected = ggVertical
    TabAppearance.GradientDisabled = ggVertical
    TabAppearance.GradientMirrorDisabled = ggVertical
    TabAppearance.TextColor = 5978398
    TabAppearance.TextColorHot = 5978398
    TabAppearance.TextColorSelected = 9126421
    TabAppearance.TextColorDisabled = clGray
    TabAppearance.ShadowColor = 16115676
    TabAppearance.HighLightColor = clNone
    TabAppearance.HighLightColorHot = clNone
    TabAppearance.HighLightColorSelected = clNone
    TabAppearance.HighLightColorSelectedHot = clNone
    TabAppearance.HighLightColorDown = clNone
    TabAppearance.BackGround.Color = 16116191
    TabAppearance.BackGround.ColorTo = 16116191
    TabAppearance.BackGround.Direction = gdVertical
    Left = 600
    Top = 144
  end
  object ilStat: TImageList
    Left = 664
    Top = 176
    Bitmap = {
      494C010107000A00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CDCDCD00CBCBCB00CBCBCB00CBCBCB00CDCDCD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBCB
      CB00BA896100AD5C1800AD591200AD591200AD591200AD5C1800BA896100CBCB
      CB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0A9
      9300A6540F00A7520A00A7520A00A7520900A7520900A7520A00A7520A00A654
      0F00C0A99300000000000000000000000000DBDBDB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00DBDBDB000000000000000000C2AC9A00AD5A
      1300CA894800E0AD6E00E6B77B00E6B77A00E6B77B00E0AD6E00CA894800AD5A
      1300C2AC9A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B15F
      1600D7975A00E2A76D00E2A66C00E2A56C00E2A56C00E2A66C00E3A76D00D897
      5B00B15F1700000000000000000000000000437BB3000654A8000551A6000551
      A6000551A6000551A6000551A6000551A6000551A6000551A6000551A6000551
      A6000451A6000551A6000654A800437BB30000000000C2AC9A00B1601900DAA4
      6400E1B17200DFAC6B00DCA66300DCA56000DCA66300DFAC6C00E1B17200DAA4
      6400B1601900C2AC9A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C076
      3300E8B98D00DF9F5D00DF9C5900DF9A5500DF9A5500DF9C5900E09F5D00E8BA
      8F00B86820000000000000000000000000000858AB0018D5FE0005CBF90005CA
      F80008CBF80005CAF80005CAF80008CBF80005CAF70005CAF70008CBF80005CA
      F70002C9F70003CBF80017D5FE000758AB0000000000AE5B1400D89F5E00DFAC
      6B00DDA86600ECD0B000FFFFFF00FFFFFF00FFFFFF00DAA35E00DDA86600DFAC
      6B00D89F5E00AE5B140000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CA86
      4800EDCBAA00EAAD6B00EAAF6F00F6FAFE00ECF0F100EAB06F00EBAE6C00EFCD
      AD00C0722900000000000000000000000000085AAE0024CCF700F3FFFF00F2FF
      FF0000B9EF00F6FFFF00F6FFFF0000B9EE00F7FFFF00F7FFFF0000B9EE00F5FF
      FF00F0FFFF00F3FFFF0059DCFB00075AAE00BB8B6200C5823E00DCA76600DAA3
      6200D9A15E00D69C5500ECD0B000FFFFFF00D4954B00D79F5A00D9A26000DAA3
      6200DCA76600C5823E00BB8B6200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D395
      5900F4DFCD00F6BF7D00FFF1DF00FFFEFE00F5F4F300ECDDC800F8C27F00F5E1
      CF00CA7D3400000000000000000000000000095EB10036CCF500009DD40028A2
      D100019DD40000B2EB0000B3EB0001B4EC0000B3EB0000B3EB0003B3EA0000B2
      EA0000B1EA0000B2EA003ACCF500095EB100AE5D1A00D59C5800D9A05C00D79E
      5A00D79D5800D5984F00ECCFAF00FFFFFF00D3944900D69C5700D79E5A00D79E
      5A00D9A05C00D59C5800AE5D1A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D390
      4D00EBC49F00FFECD600B3D9EF005DA1C5003C7FA4007A9CB100FFF0D900EBC5
      A000D3924F000000000000000000000000000962B40043CAF300B6EEFD00E3FC
      FF00B9EEFD0003B0EB000083BF0000AFEC000084BF0003AFEA0007AFE90008AF
      E90006AFE90002AEE90050CEF4000B63B500AF5B1500D79F5A00D49A5500D499
      5400D4985200D1934900EBCDAC00FFFFFF00D08F4300D3975100D4995400D499
      5400D49A5500D79F5A00AF5B1500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E9B68400F0AA6300BDC3BB006099B800437A980092948B00F2AE6800E9B7
      8500000000000000000000000000000000000966B9005DCDF200E2FCFF001DB1
      E800E0FCFF001E96CB00EAFFFF000078BB00F3FFFF0000A6E50005A9E60006A9
      E60004A8E60000A7E60063CFF3000C68B900AE5B1400DAA76900D2954D00D295
      4E00D2944C00CF8E4200E9CAA800FFFFFF00CE8B3D00D1934B00D2954E00D295
      4E00D2954D00DAA76900AE5B1400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBDBDB007CADC40078BADE006AABCF006290A800000000000000
      0000000000000000000000000000000000000A6BBC0065CBF000E2FDFF000093
      DE00DFFBFF00DFFCFF00E3FEFF00E9FFFF00F0FFFF00009FE10000A1E200009F
      E100009DE100009CE10071D0F2000C6BBC00AE5A1300DEAF7800CE8E4600CF90
      4800CF8F4700CC883D00FFFFFF00FFFFFF00CB873B00CE8E4700CF904900CF90
      4800CE8E4600DEAF7800AE5A1300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000587594009AE2FF0086C7E80077B6D8006DAED00068829F000000
      0000000000000000000000000000000000000B6FBF0077CFF100E0FDFF00008B
      DA00E2FDFF0023ACE5000094DD000096DE000098DE00009ADF000099DE00F6FF
      FF00EFFFFF00ECFFFF009ADFF6000C6FBF00AD5D1800E4BE9600CC893D00CD8A
      4100CD8B4100CB873B00C77F2D00C77D2B00CA863800CD8B4100CD8C4300CD8A
      4100CC893D00E4BE9600AD5D1800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000006346500AFF7FF0096DAF80087C8E7007FC1E00005285B000000
      0000000000000000000000000000000000000D73C40093D7F300AAE6F800DEFC
      FF00A0DFF6000092DB000090DA000091DB000092DB000092DB000090DA00008D
      DA00008BD900008AD90093D8F3000E74C400CE9E7500D5A67B00D9A86F00C884
      3600C9863900C7823300E8CAA900FFFFFF00C6802F00C9863A00C9863A00C884
      3600D9A86F00D5A67B00CE9E7500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E3F6F00226190005488B2007CB3D500679BBE000E2E5E000000
      000000000000000000000000000000000000117AC800A9DFF600A0D9F3009ED8
      F300A2D9F300A9DDF500AEDFF500AFDFF600AFDFF600AFDFF600AEDFF500ACDE
      F500ABDEF500AADEF500ADE1F700127AC80000000000B15E1900E8CBAE00D7A2
      6900C57D2D00C57B2A00E7C8A700FFFFFF00C3792700C67E2F00C67E2E00D7A2
      6900E8CBAE00B15E190000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000012467500307DAF004E8EBC00517FAC002D4B7700113261000000
      0000000000000000000000000000000000005FA6DA00137ECB00107CCB000F7C
      CA00107CCB00117CCB00127DCB00127DCB00127DCB00127DCB00127DCB00127D
      CB00127DCB00127DCB00147FCC005FA6DA0000000000E7D1BE00B76C2C00E4C3
      A000E1BB9000CE924E00C2782500C0711B00C37A2A00CF935100E1BB9000E4C3
      A000B76C2C00E7D1BE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000385C84002577A9003C88BA003C7AA900224A750038567F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7D1BE00B15E
      1A00CC936000E2C09D00EACFB000EACEB000EACFB100E2C09D00CC936000B15E
      1A00E7D1BE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DDE4EA00245380001A588A0019518200264F7B00DDE4EA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9E7500AE5C1700AD581000AD580F00AD581000AE5C1700CE9E75000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCDCDC00CBCBCB00000000000000000000000000000000000000
      000000000000000000000000000000000000000000005F585700AFABAB009588
      8E00207430003CAD53003CAD51003BAB50003BA94F003BA84E003BA74E0039A6
      4D0039A54C003EB85A003FBA5C000000000000000000DBDBDB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CECECE00000000000000000000000000000000000000
      000000000000CDCDCD00CBCBCB00CBCBCB00CBCBCB00CDCDCD00000000000000
      0000000000000000000000000000000000000000000000000000D8D8D800CBCB
      CB00CBCBCB00C7C6C600888A8C00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00000000000000000000000000000000000000000066605E00AEAAAA00958A
      8E00237D36003EB85B003EB85B003DB75A0039B6570035B4530035B4530039B6
      57003DB75A003EB85B003CB95A000000000000000000959392007A7773007673
      700076736F0076736F0076736F007673700076736F0094918F00A6A4A200A4A2
      A000A3A19E00A3A19F00A6A4A20000000000000000000000000000000000CBCB
      CB00BC956300B16F1C00B26F1800B26F1800B26F1800B16F1C00BC956300CBCB
      CB000000000000000000000000000000000000000000C4C3C100B7B2A900B0AA
      9E00B0AA9C0097999B00C8C8CB00848D9700BA823E00B7824200B6834400B884
      4500CBCBCB000000000000000000000000000000000066605E00AEAAAA00978A
      8E00248137003EB95C003CB85A002BB24C007AD09300AEE1BD00AEE1BD006DCB
      87002EB34E003EB95C003CBA5B0000000000000000007C797700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C4C300C1BFBE00D4D3
      D100DFDEDE00FFFFFF00A7A5A300000000000000000000000000C4B19A00B26E
      1600C27C2B00D0863800D4893A00D4893A00D4893A00D0863800C27C2B00B26E
      1600C4B19A00000000000000000000000000BBB7B000B4AEA200C5BEB300D4CB
      C200E2D8CF00EDE3DD00959CA500B77D3500F8C07300F2BA6D00EFB66500E5B5
      6D00B7834400CBCBCB0000000000000000000000000066605E00AEAAAA00978A
      8D0024833C0038B95D00F8FBF900E6F3E9007AD0930029B24F002AB350007AD0
      930082D39A003EBA60003CBB5F0000000000000000007D797600FFFFFF00FFFF
      FF00FDFDFD00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF009F9D9A00E7E7
      E600CFCECD00E9E8E700ABA9A7000000000000000000C3B19A00B46F1800D089
      3B00DCB38000E4F4ED00EBFFFF009AABB200EBFFFF00E4F4ED00DCB38000D089
      3B00B46F1800C3B19A000000000000000000B1AB9F00C8C1B600CFC7BF00D6CC
      C500DED5CC00E8E1DE00B4792F00F3C88D00F6C07800F2BB7000EBBF8000B17D
      3F00EFB35D00B984420000000000000000000000000066605E00AEAAAA009789
      8D0023863D00DEF0E5000000000027B64F007AD0930059C6790036BA5C009DDB
      B10044C069003CBA60003CBC600000000000000000007E7C7900FFFFFF00FAFA
      FA00F9F9F900FBFBFB00FFFFFF00FFFFFF00DADADA00D2D2D200C0BEBD00EFEF
      EF00EDECEC00D6D6D300B2B0AE000000000000000000B16D1500D48D4200DECC
      AC00E2FFFF00E1FFFF00E2FFFF00E3FFFF00E2FFFF00E1FFFF00E2FFFF00DECC
      AC00D48D4200B16D15000000000000000000B0AB9E00C7C0B600CDC4BB00D3CA
      C200DBD2CA00E6E0DD00B1773000F8D09C00F8C27D00F2CB9400AF7A3A00F4B9
      6A00DEB27200BC813900CBCBCB00000000000000000066605E00AEAAAA009789
      8D001C863B00000000005FC9840000000000BBE6CB00CCEBD7000000000058C9
      8000D9EFE100C1E7CF0031B95B000000000000000000827F7D00FFFFFF00F5F6
      F600F5F5F600FCFCFC0058585800DAD9D9006A6A6A0071717100464545009F9C
      9A00A09D9B00C1C0BE00B9B7B50000000000BD976400C9843500DDB98B00DCFF
      FF00DBFBFF00DBF9FD00DCFAFD00DCF9FD00DBF8FC00DBF9FC00DBFBFF00DCFF
      FF00DDB98B00C9843500BD97640000000000B0AA9E00CAC3B900EAE5DD00F7F3
      EB00FFFCF600FFFFFF00B0762E00FFDAAC00FBD7A700AD783600F9C27900E8C1
      8800B87D3500C0C2CA00898C8F00CBCBCB000000000066605E00AEAAAA009789
      8D001A893C00000000001DB34D000000000033BC620027B75600E4F4E90068CD
      8D0022B551000000000047C57400000000000000000085827F00FFFFFF00F2F2
      F100F3F3F200FCFCFB005C5C5C00FFFFFF00FFFFFF00FFFFFF0058585800CECD
      CE00E7E6E500B2B0AE00A8A6A40000000000B16F1A00DD9A5200D9F0EC00D6FB
      FF00D6F8FB00D8F9FC00DBFDFF00DAFCFF00D8F8FB00D6F6F900D6F7FA00D6FB
      FF00D9F0EC00DD9A5200B16F1A0000000000BFBBB400F9F3ED00D8D1C900C2B8
      B000C0B7AF00C6BFBB00B1752B00FFE7BE00AD773400FFCB8800F0CC9B00B77C
      3400C4C4C1009B9EA200CDCBCA00898989000000000066605E00AEA9A9009587
      8A00198C3F00000000003DC26F0000000000AEE4C40036BF67006BD19400DAF1
      E3002FBC600000000000AEE5C600000000000000000088868200FFFFFF00EFEE
      EE00F1F0F000FBFAFA005D5D5E00FFFFFF00626262005755550060606000EDED
      EC00F5F4F500F6F5F6008785820000000000B16D1500E9A66300D3FFFF00D2F6
      FD00D2F5FA00D7FBFF0054494700B3CCCE00D6FAFF00D2F5FA00D1F3F900D2F6
      FD00D3FFFF00E9A66300B16D150000000000B9B5AD00A39A8F00BAB2A700CAC1
      B800DED5CC00E6DDD700EEE7E700AF742C00FFD69800FCDBB100B67B3200AAA5
      A000BCBAB300000000009B9C9D00D2D0CF00000000006C656400B4B0B000A59B
      9D003FA66700000000009FDFBA00000000000000000043C6770035C26D00FCFC
      FC0029BD610000000000AFE5C80000000000000000008B888600FEFEFE00EBEB
      EA00EFEFEE00DFDFDE0061606000FFFFFF003A3B3B00FFFFFF00FDFDFB00F2F2
      F100EDEDEC00FFFFFF008C88860000000000B16D1400EEAD6A007F959E00CEF6
      FC00CEF4F900D4FCFF00B5D0D4005A504E00ADC5C800CEF4F900CDF2F700CEF6
      FC007F959E00EEAD6A00B16D140000000000B1AB9F00C9C2B900CFC7BF00D5CC
      C400DCD3CA00E3DAD200EBE2DD00E8E3E100B1752B00B5782E00BCBFC6008588
      8C00B7B0A300000000000000000000000000000000008B868400C3BFC000B2A5
      A9004FB07900C4EBD700000000004CCC87009ADFBB0000000000E1F3E900EDF8
      F30085DBAE000000000046CB810000000000000000008E8B8800FEFEFD00E8E7
      E600EEECEB00595959002A2A2B00FBF9F8005E5E5D005E5E5E0058585900C7C6
      C500E9E8E700FEFEFD008E8B880000000000B16D1400F1B17300C7FAFF00C9F3
      FB00CDF6FD00AECACE005E535100AEC9CE00CCF6FC00C8F0F600C7EEF400C8F1
      F900C7F9FF00F1B17300B16D140000000000B0AB9E00C7C0B600CCC4BB00D3C9
      C100DAD0C700E1D7CF00ECE1DB00E5DCD600DED7D200D9D2CD0094979A00C9C8
      C70086878800000000000000000000000000000000008B868400C3BFC000B2A5
      A9004EB27C0057D09300DCF2E600EDF7F20069D59E004FCE8E0050CF8F0084DB
      B000F2F9F500A8E5C70060D49B000000000000000000948F8B00FFFFFE00E6E6
      E200E9E9E600F0F0EC00CCCAC600EFEEEB00F0EFEB00F0F0EC00EEEEEA00EAE9
      E600E7E6E300FFFFFE00948F8B0000000000B06F1A00EBAD6D00C8E9EB00C4F4
      FF00A9C8CC0061565200ABC9CD00C8F4FC00C4EFF600C2ECF300C2ECF400C0EF
      F900C7E8EA00EBAD6D00B06F1A0000000000AFAA9D00C8C1B700E8E3DB00F5F0
      E800FDF8F200FCF8F100FBF7F100FCF8F100FDF9F300F7F2EC00EEE6DD009395
      9600D1CFCF00000000000000000000000000000000008B868400C3BFC000B2A5
      A9004DB2800065D7A10064D6A00071D8A800CFF0E000EDF8F200EDF8F200C2ED
      D90071D8A80064D7A00064D8A2000000000000000000A39C8900FFFFFD00F2ED
      DE00F4F0E100F6F2E300F7F2E100F6F0DF00F6F0DE00F6F1E000F5F1E200F4F0
      E100F2EEDE00FFFFFD00A39C890000000000D0A97600D4934B00E4CDA900BBF5
      FF005D524F0095A8AD00C2F2FA00BEECF400BCEAF200BCE9F200BAEAF400B7EF
      FE00E4CBA800D4934B00D0A9760000000000AEA89C00FBF5EF00EEE7DE00E0D8
      CE00DDD5CC00DDD4CB00DDD4CB00DDD4CB00DDD5CC00E0D8CF00EFE8DE00FCF8
      EF00AEA89A00000000000000000000000000000000008B868400C3BFC000B2A5
      A8004DB3820063D9A30063D9A30060D8A1005BD79E0058D79C0058D79C005CD7
      9F0061D8A10063D9A30062DBA40000000000000000000020E700526FEF000016
      E500000AB100000CB3000019E9000018E3000018E2000018E600000BB100000B
      B2000016E700526FEF000020E7000000000000000000B06B1200EEB37500D9DA
      C700B6F3FF00B8EFFC00B8ECF700B8EBF600B7EAF400B4E9F500B2ECFC00D7D7
      C300EEB27400B06B12000000000000000000AFA99D00E1D8CE00E1D7CE00DFD6
      CC00DFD5CB00DFD5CB00DFD5CB00DFD5CB00DFD5CB00DFD6CC00E1D7CE00E1D8
      CE00AFA99D000000000000000000000000000000000088838100C0BCBD00AEA2
      A40047B282005DD8A5005DD8A5005DD8A5005DD8A5005DD8A5005DD8A5005DD8
      A5005DD8A5005DD8A5005EDAA70000000000000000000138F1009DB3FB0096AF
      FF00C0BAA40080714E0093A2D6009BB2FD009CB2FA0097B0FF00C1BBA4008171
      4C0098B1FF009DB4FC000138F1000000000000000000E8D6BF00B5701900F1B6
      7B00E6D3B200BCE5E900ADECFF0063808B00ADECFE00BCE4E800E5D2B100F1B6
      7A00B5701900E8D6BF000000000000000000CECBC300B6B0A400D6CFC400E6DE
      D500EFE7DD00EEE6DC00EEE6DC00EEE6DC00EFE7DD00E6DED500D6CFC400B6B0
      A400CECBC30000000000000000000000000000000000C4C0C100E8E7E600D8D2
      D100A0D8C000AFEED500AEEED500AEEDD400AEEDD400ADEDD400ADEDD400ADED
      D300ADEDD300ADEDD400B4F1DB0000000000000000005173D2000648FE000042
      FF00BCB7A500938873002154E4000447FF000748FC000043FF00BDB7A400978B
      6E000045FF000748FE005173D200000000000000000000000000E8D6BF00B06A
      1100D99C5500FAC18A00FFCE9A00FFCF9A00FFCE9A00FAC18A00D99C5500B06A
      1100E8D6BF0000000000000000000000000000000000EDECEA00C3BEB500AEA9
      9C00AEA89C00AEA89C00AEA89C00AEA89C00AEA89C00AEA99C00C3BEB500EDEC
      EA000000000000000000000000000000000000000000BCBAB800362F27001E16
      0D001E0F0A002996560029935400278F5000278C50002786460028814000277A
      370027783500287431002C803500000000000000000000000000000000000000
      0000BBB5A400A8A19500F0EEE900000000000000000000000000BDB6A200B2A6
      8F00000000000000000000000000000000000000000000000000000000000000
      0000D0A97500B06F1900B06B1100B06A1100B06B1100B06F1900D0A975000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFF83F0000F00FFFFFE00F0000
      E0070000C0070000E007000080030000E007000080030000E007000000010000
      E007000000010000E007000000010000F00F000000010000F83F000000010000
      F81F000000010000F81F000000010000F81F000080030000F81F000080030000
      F81FFFFFC0070000F81FFFFFF01F0000F9FF80018001F83FC00F80018001E00F
      800780018001C007000380018001800300038201800180030001852180010001
      0000850580010001000085058001000100048585800100010007824580010001
      0007800180010001000780018001000100078001800180030007800180018003
      000780018001C007800F8001F1CFF01F00000000000000000000000000000000
      000000000000}
  end
  object aevMain: TApplicationEvents
    OnMessage = aevMainMessage
    Left = 600
    Top = 176
  end
  object ilMain: TImageList
    Height = 32
    Width = 32
    Left = 632
    Top = 176
    Bitmap = {
      494C010121004B00040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002001000001002000000000000040
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DADADA00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCD
      CD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00D2D2D200DCDC
      DC00000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000CFCFCF00BDBDBD00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB008A7C6000A6884C00A1834A00A1834A00A1834A00A1834A00A183
      4A00A1834A00A2834A00A2844C008C806E008E8C8C0083838400848382008E8C
      8B0092908F00949292009A989700B1B1B1000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B98D5800B8854600B884
      4600B9854600B8844600B7844500B7844500B7844500B7844500B7844500B784
      4500B78445009B763300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEF8F100ECD9BF00EBD5B400EBE4DB00C3C0BB00CCCB
      CB00E0E0DF00F7F6F600F9F8F700A3A2A2000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B8844600ECB15A00EAAE
      5600B5824500EBB05A00E8AC5500E7AB5600E7AB5600E7AB5600E7AB5600E7AB
      5600E7AB5600A8813C00E9E6E100D0CFCE00D7D6D600CCCBCA00D3D1D000D7D6
      D600CDCCCB00D3D1CE00D2C9BC00BDB3A500B99E7900ECDAC000ECDDCA00C7C0
      B500C1C3C300DAD9D800E4E4E200A6A6A6000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B7834500E9B05D00E8AB
      5500B3804400E8AF5D00E4A95400E4A85400E4A85400E4A85400E4A85400E4A8
      5400E4A85400A9823F00E5E2DD00F5F4EE00FFFFFF00DDDCD800F5F3ED00FFFF
      FF00E0DEDA00F2F0EB00FFF5E300D2C5B400CDB59400DAC1A100F7EEE100EEDC
      C300CFC5B800C9C8C900DCDAD900A9A9A7000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B6834500EAB26000E7AB
      5400B27F4300E9B16000E3A85300E3A85400E3A85400E3A85400E3A85400E3A8
      5400E3A85400AA834100E4E2DD00EBEAE200F9F8F100D9D6D100EAE8E200F7F6
      F200D8D6D300EBE7E100F7ECDA00CDC0B000D2BFA500D1B79500F8F2EB00F3E7
      D700EEDCC200CFC6BC00CFCECE00AAA9A9000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B6834500EAB36400E7AB
      5400B27F4300E9B26400E3A85300E3A85400E3A85400E3A85400E3A85400E3A8
      5400E3A85400AA854400E3E1DD00C9C9C400DBD3D40079B39B0013A7730014B2
      810012A06F00BBC8BF00D3CEC600BCB3A700C1B5A700BDA37F00FDFBF800FDFA
      F500F7EDE000EDDFCB00CBC9C600AAAAAA000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B6834400EBB66800E7AB
      5400B27F4300EAB56700E3A85300E3A85400E3A85400E3A85400E3A85400E3A8
      5400E3A85400AC864800E1DEDB00F3EFE000FFFFFA0083C7A90000C28B0000DB
      A50000B07C00DBE9D700FFFFF300D8CFC100EFDECB00E4C6A200C8AB8700CFB3
      8F00D7BB9800E4CCAD00F0E8DB00ACACAC000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B6834400EBB86D00E7AA
      5300B27F4200EAB76C00E3A85200E3A85400E3A85400E3A85400E3A85400E3A8
      5400E3A85400AD884A00E0DEDA00E9E4D500F9F8EB007BC2A10000B0820000C2
      9A0000A57500D1E1CB00F9F8E800D6D2C900E7DCCD00FBF1DB00D3C8BB00E0D3
      C100ECDEC600CCB79900DCC5A700AFACA9000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B6824400EDB97000E7AA
      5300B27F4200ECB87000E3A85200E3A85400E3A85400E3A85400E3A85400E3A8
      5400E3A85400AE894D00E0DDD800C3C1BA00D6CEC8008CB4A00050AF880055B8
      93004AA98400BBC2B700D8CFCB007FB29B0016A7740017B3810014A27000B1C1
      B300D3D2CB00C2C4C400E3CAA400B0A798000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B6824400EDBC7400E7AA
      5300B27F4200ECBB7300E3A75200E3A85400E3A85400E3A85400E3A85400E3A8
      5400E3A85400AF8B5000DCDAD400F1E7D200FFFDE100DCD0C700FEEADB00FFFF
      EA00E4D4CC00F1E5D300FFFFE9008FC8A60000C08A0000DAA60000B27E00D5E1
      C600FFFFE600DBD7CC00EBDEC500B0A798000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B6824300EEBE7800E7AA
      5200B27F4100EDBD7700E3A75200E3A85400E3A85400E3A85400E3A85400E3A8
      5400E3A85400B08C5300DCDAD200E7DEC700F8F2D600CDC9BC00E6DEC900F8F2
      D600CECABD00E5DCC800F9F5DD0086C39E0000B0830000C39C0000A77800CCDA
      BD00F9F4DA00D3D0C400EADFC500B1A999000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B6824300EEBF7B00E7AA
      5200B27E4100EDBE7B00E3A75100E3A75300E3A85400E3A85400E3A85400E3A8
      5400E3A85400B18F5500DBD9D100BCB9B000C7C5B900B6B5AE00C0BDB300C7C5
      B900B6B5AF00BFBDB300CFC6BD008CAF9B004AAC820050B78D0045A67F00B1BA
      AD00CBC6BB00B6B6B300EEE2C700B1A99B000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B6824200EFC38100E6AC
      5400B27E4000EEC28000E3A95300E3AA5500E3AA5600E3AA5600E3AA5600E3AA
      5600E3AA5600B3915800D8D7CF00F0E1C400FFF8D200D0C9B800EEE1C500FFF8
      D200D1CAB900ECDFC500FFF9D200D9CCBD00F8E1CC00FFFDDA00E2CEC100ECDE
      C500FFF9D300D7D0BF00E9DFC600B2A99C000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B6824200F0C68700E8AD
      5700B27E3F00EFC58600E4AA5600E4AB5900E4AB5900E4AB5900E4AB5900E4AB
      5900E4AB5900B4925D00D5D3CB00E4D5B800F9ECC700C6BEAF00E4D5BB00F9EC
      C700C7BFB000E2D4BB00F9EDC800C8C0B000E0D3BA00F9EDC700CAC1B100DFD2
      BA00F9EDC800CCC5B500E8DEC600B2AA9D000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B6814100F1C98D00E7AF
      5900B27D3F00F0C78C00E4AC5800E4AD5A00E4AD5B00E4AD5B00E4AD5B00E4AD
      5B00E4AD5B00BD945700F0E7D100CAC1AD00D0C8B100CCC3B000CFC5B100D0C8
      B100CCC3AF00CEC5B100D0C8B200CCC3AF00CEC5B000D0C8B200CCC3AF00CEC5
      B000D0C8B200CAC3B300FFF0C600B6AA9C000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B6814100F1CC9200E7B0
      5C00B27D3E00F0CB9200E4AD5B00E4AE5D00E4AE5E00E4AE5E00E4AE5E00E4AE
      5E00E4AE5E0071878B005DB5FB005BB0FB005AAFFA005CB1FB005BB0FA005AAF
      FA005CB1FB005BB0FA005AAFFA005CB1FB005BB0FA005AAFFA005CB1FB005BB0
      FA005AAFFA005CAFFC0062B9F100A0AAB0000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B6814100F3CE9800E7B2
      5E00B27C3D00F1CD9700E4AF5D00E4B05F00E4B06000E4B06000E4B06000E4B0
      6000E4B060005C89A60074C7FF0042A8FF0048ABFF0048ABFF0048ABFF0048AB
      FF0048ABFF0048ABFF0048ABFF0048ABFF0048ABFF0048ABFF0048ABFF0048AB
      FF0048ABFF0049AAFF0076CBFF0091A7BA000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B6814000F4D29E00E8B3
      6100B17C3C00F2D19D00E5AF6000E5B16200E5B16300E5B16300E5B16300E5B1
      6300E5B163005D869F0081CEFF0075C0FF0076C1FF0076C1FF0076C1FF0076C1
      FF0076C1FF0076C1FF0076C1FF0076C1FF0076C1FF0076C1FF0076C1FF0076C1
      FF0076C1FF0079C2FF0072C9FF009DB1BF000000000000000000000000000000
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
      00000000000000000000000000000000000000000000B6803F00F4D4A300E8B5
      6300B17B3C00F2D3A200E5B16100E5B36400E5B36500E5B36500E5B36500E5B3
      6500E5B36500E5B36500E5B36500E5B36500E5B36500E5B36500E5B36500E5B3
      6500E5B36500E5B36500E5B36500E5B36400E5B16100F3D3A200B6803F000000
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
      00000000000000000000000000000000000000000000B6803F00F5D8A800E8B6
      6600B17B3B00F4D6A800E5B26400E5B46700E5B46800E5B46800E5B46800E5B4
      6800E5B46800E5B46800E5B46800E5B46800E5B46800E5B46800E5B46800E5B4
      6800E5B46800E5B46800E5B46800E5B46700E5B26400F4D7A800B6803F000000
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
      00000000000000000000000000000000000000000000B6803F00F5DAAD00E8B8
      6800B17A3A00F4D8AC00E5B46600E5B56800E5B56800E5B56800E5B56800E5B5
      6800E5B56800E5B56800E5B56800E5B56800E5B56800E5B56800E5B56800E5B5
      6800E5B56800E5B56800E5B66900E5B66900E5B46600F4D9AC00B6803F000000
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
      00000000000000000000000000000000000000000000B67F3E00F6DDB300E9B9
      6B00B17A3900F5DCB200E6B56800E6B56900E4B26400E4B16100E4B16000E4B1
      6000E4B16000E4B16000E4B16000E4B16000E4B16000E4B16000E4B16000E4B1
      6000E4B16100E4B26400E6B56A00E6B66C00E6B56900F5DDB300B67F3E000000
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
      00000000000000000000000000000000000000000000B67F3E00F7E0B800E9BB
      6D00B17A3900F6DEB600E6B76900E5B56700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E5B66700E6B86D00E6B76A00F6DFB700B67F3E000000
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
      00000000000000000000000000000000000000000000B67F3E00F7E2BC00E9BC
      7000B1793800F6E0BB00E6B86C00E4B66A00E3B05E00E1AD5800E1AD5700E1AD
      5700E1AD5700E1AD5700E1AD5700E1AD5700E1AD5700E1AD5700E1AD5700E1AD
      5700E1AD5800E3B05E00E4B66A00E6B97000E6B86E00F6E1BC00B67F3E000000
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
      00000000000000000000000000000000000000000000B57F3D00F9E5C100EABF
      7200B1793700F7E3BF00E7BA6E00E5B66900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E5B76900E7BB7100E7BA6F00F8E3C000B57F3D000000
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
      00000000000000000000000000000000000000000000B57F3D00FAE7C600EAC0
      7600B1793700F8E5C400E7BB7100E5B86C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E5B86D00E7BC7500E7BB7200F9E6C500B57F3D000000
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
      00000000000000000000000000000000000000000000B57F3C00FAE9CA00EAC2
      7800B1783600F8E7C800E7BD7400E6BD7400E5BA6E00E5B96B00E4B86B00E4B8
      6B00E4B86B00E4B86B00E4B86B00E4B86B00E4B86B00E4B86B00E4B86B00E4B8
      6B00E5B96B00E5BA6E00E6BD7500E7BE7700E7BD7400F9E8C900B57F3C000000
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
      00000000000000000000000000000000000000000000B57E3C00FBEBCE00EAC2
      7A00B0783500F9E9CC00E6BE7700E6BF7900E6BE7900E6BE7900E6BE7900E6BE
      7900E6BE7900E6BE7900E6BE7900E6BE7900E6BE7900E6BE7900E6BE7900E6BE
      7900E6BE7900E6BE7900E7BF7A00E6BF7A00E6BE7700FAEACE00B57E3C000000
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
      00000000000000000000000000000000000000000000B57F3C00FCEED200ECC5
      7D00B0773400FBECD000E8BF7800E8C07A00E8C07A00E8C07A00E8C07A00E8C0
      7A00E8C07A00E8C07A00E8C07A00E8C07A00E8C07A00E8C07A00E8C07A00E8C0
      7A00E8C07A00E8C07A00E8C07A00E8C07A00E8BF7800FCEDD100B57F3C000000
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
      00000000000000000000000000000000000000000000B7803E00FFF5D900FFF4
      D900B37A3700FEF3D700FCEFD300FBEFD300FBEFD400FBEFD400FBEFD400FBEF
      D400FBEFD400FBEFD400FBEFD400FBEFD400FBEFD400FBEFD400FBEFD400FBEF
      D400FBEFD400FBEFD400FBEFD400FBEFD300FCEFD300FFF3D800B7803E000000
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
      00000000000000000000000000000000000000000000C9A47900B7813F00B780
      3E00B8824000B6803E00B57E3C00B57E3B00B57E3B00B57E3B00B57E3B00B57E
      3B00B57E3B00B57E3B00B57E3B00B57E3B00B57E3B00B57E3B00B57E3B00B57E
      3B00B57E3B00B57E3B00B57E3B00B57E3B00B57E3C00B7803E00C9A479000000
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
      00000000000000000000000000000000000031B3FF002EAFFF00229FF9001C88
      E800CCCCCC000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000C7C7C700BCBCBC00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00C3C3C300DADADA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000035B6FF0031B4FF002AB0FF001682
      E10090909000A5A5A500ACACAC00AAAAAA00A9A9A900AAAAAA00ACACAC00B1B1
      B100B8B8B800BCBCBC00CDCDCD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0D0D000BDBDBD00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BDBDBD00D0D0D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCDCDC00C9C9C900BEBEBE00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BEBE
      BE00C9C9C900DCDCDC0000000000000000000000000000000000000000000000
      00000000000000000000B6C2C90055ADE2004DABE9004FABEA004EACEA0066B6
      E700A5D4F40079BEEF0051ABE90053AFE70096B7CE00DADADA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000038BDFF0033B9FF001090F4006C90
      B30073675800855A0500875B0500855A0500845C0C00855A0500885C05009263
      0600A26F0800B17B0E00B5852200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F82C5004B7CBE004876B8004571
      B300426BAC003F67A6003F63A1003E609D003E5D9A003D5895003D5490003C50
      8B003A4C86003748810034447D00334179000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0D0D000B49B8800A6673500A5510800A550
      0800A5500800A5500800A5500800A5500800A5500800A5500800A5500800A551
      0800A6673500B49B8700D5D5D500000000000000000000000000000000000000
      000000000000D7D7D70051B1F0007ADCF800ADF0FD007BE4FE0048A8E90076DA
      F700A9EDFD0077E0FC0049D6FE0044CEFD0051ADF100B6B6B600BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BFBFBF00D3D3D3000000000041C4FF001CA1FA004E96D800C7BB
      B100A8A4A0007B7976007F7D7B007A7875008482800077757300777573008A8A
      8800C3C3C300E2E2E200B27B0E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C9ECD007FA4D6007AA2D9005C8E
      D20075A2E10092B7F1007BA5E2006190D0004A7DC1003F76B9003371B300286A
      AC001B65A5004183B4005A83AD006A7499000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D3D3
      D300BFBFBF00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00B9B9B900AE835E00B5651F00D18C4D00E2A46700E1A4
      6700E1A36700E1A36700E1A36700E1A36700E1A36700E1A36700E1A46700E2A4
      6700D18C4D00B5672000B68C65000000000000000000CFCFCF00BDBDBD00BBBB
      BB00BBBBBB00B6B6B6004AACF300F3FFFF00FCFFFF00D1FAFF0043A6E800F1FF
      FF00FAFFFF00D0F7FF0097E9FF0062DEFF004EABF10071B184006DB08B006CAF
      8D006CAF8D006CAF8D006CAF8D006CAF8D006CAF8D006CAF8D006CAF8D006CAF
      8D006CAF8D006DB08E0086B39C00000000001480E10081A3C300FFF3EA00C9C4
      BF00BAB8B500AEACAA00BEBCBB00D4D2D200D3D1D100D4D2D100CFCDCC00A7A5
      A3007E7C7A00BFBFBF00AC7407000000000000000000CDCDCD00BCBCBC00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BCBCBC00CDCDCD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000007E9DCB008AAAD700B6CE
      ED00C3D8F500D2E3FD00C6DAF500B9CEEC00ACC5E400A6C2E100A0BFDE009BBC
      DB0096BBD9006D8DB500707AA000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B99A
      7600BA8C5900BA8C5900BA8C5900BA8C5800B8895500B5855000B4834C00B483
      4C00B4834C00B4844D00B5885400B05C1300E2AC7600E0A36700DE9B5A00DC9A
      5800DC9A5800DC9A5800DC995700DC995700DC9A5800DC9A5800DC9A5800DE9B
      5A00E0A36700E3AE7800B35F18000000000000000000639A780053946C005394
      6B0054956B0053925F004AACF50092CCF3009DCFF30073BBEE0045A7E80091CB
      F1009DCFF30072B9ED004DA7E70054B7F0004DAAF000CAF4D000C5F2D600C4F2
      D700C4F2D700C4F1D600C4F1D600C3F1D600C4F1D600C4F2D600C4F2D700C4F2
      D800C3F1D600C9F3DA006BAE8C000000000000000000987A4C00CBC5C200F0EF
      EE00C3C1BF00B7B5B300C4C2C000C8C6C400CECCCA00D5D3D200DDDBDA00E0E0
      DF00C8C6C60089878600AF760400CFCFCF00D7D7D700BA862100B67E0E00B47B
      0900B47A0700B47A0700B47A0700B47A0700B47A0700B47A0700B47A0700B47A
      0700B47B0900B67E0E00B7862200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007C9CC900426E
      B1003E69AB003B64A5003A5F9F003A5C9B00395998003754930037508E00354C
      890034488400717CA30000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BA8B
      5800BC8F5D00BA8C5900BB8D5A00BA8C5800B5855000FFF9EE00FEF2E500FDF1
      E300FDF1E300FEF2E600FFF9EF00B8671E00E8BA8E00E2A36200E2A46300E2A4
      6400E2A46300E2A26100E2A15E00E2A15E00E2A26100E2A46300E2A46400E2A4
      6300E3A46200E9BC9200B7661E00000000000000000053936B0096DDB50093DB
      B2004F90660098DDAB0048AAF30074D9F800A7ECFD0076E2FD0046A6E80073D8
      F600A7EBFC0077DFFC0048D5FE0043CDFD004EAAF0006DAE820069AD8A0069AD
      8C0069AD8B0066AB890065AA880064AA870065AA880067AB8A0066A9870066AA
      880064A78400C8F2DB0067AB87000000000000000000A771070095939000CBC9
      C800DCDAD900B8B6B400BCBAB800C3C1C000ACAAA80077757300797775007977
      75007A7876007C7A7800BA7C030071767F00C9C9C900BE820A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B67E0E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004C7BBD00394F8A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7D7D700B989
      5300BD915E00BA8B5700BB8D5900BC8D5900B4834C00FEF3E500F8E9D800F7E8
      D600F7E8D600F8E9D800FBF1E300C4783300ECC5A200E7AD6D00E7AE6F00E7AE
      7000E7AD6E00E7AA6700ECD7BE00E9D5BC00E7AA6800E7AD6E00E7AE7000E7AE
      6F00E7AE6D00EEC9A600BD6C2400000000000000000051926A0096DBB30090D7
      AE004D8D630098DCA90046A8F100F1FFFF00FBFFFF00D1FAFF0043A5E800FAFF
      FF00FDFFFF00D2F5FF0097E6FE0064DDFF004DA9F000BCEAC6007AB998006BAF
      8C0079B99800B4E7CC00B6E8CD00B4E7CC00B5E8CC00BAEBD0005C9E79005FA1
      7C005B9E7800CCF2DF0065A985000000000000000000A46F07008B898700C9C8
      C800BDBAB900B2B0AE00B8B6B400C0BFBC008E8B8A0087888B00939498008F91
      9400FFFCED00FFFFFF00BE7F03007579810072767E00BE800300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B47B0900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004D7BBD003A518B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCDCDC00C7C7C700BA86
      4B00FFDBAA00FFDCA900BB8E5A00BD8F5B00B3824B00FDF1E400F7E6D400F6E5
      D200F6E5D200F7E7D400F9EDDE00C9803E00F0D2B600EEB67600EDB77900EDB8
      7900EEB57500F1C99D00F3F9FD00ECF1F500ECC49600EFB67600EEB87A00EDB7
      7900EEB77700F1D6BB00C2742B00000000000000000051926A0099DCB5008FD7
      AD004C8C63009BDCAC0046A8F10091CBF2009DCFF30072BBEE0046A6E80098EB
      FC0056DBFA0057DAFA0059DCFC005CDEFF004DAAF10083BE940084C19F009DD4
      B60083C0A0007BBA9800B0E4CA00B0E3C900B1E4CA00B4E7CD0062A27B005193
      6A0052966E00CEF3E10063A782000000000000000000A470080084807E00EBE9
      E900A8A5A300AEABA900B4B3B100BDBBB900908D8B00E9E8D700FFFEEB00FFFC
      E900FFFAE700FFFFFF00BB7E0400B3B3B3006D727E00BB7E0300FFFFFF00FFFF
      FC008F9091009394950094949500949495009494950094949500939495008F90
      9100FFFFFC00FFFFFF00B47A0700000000000000000000000000000000000000
      0000D6D6D600C3C3C300BBBBBB00B2BABE00BBBBBB00C2C2C200D4D4D4000000
      00000000000000000000000000004D7ABC003A518B0000000000000000000000
      000000000000D6D6D600C3C3C300BBBBBB00B2BABE00BBBBBB00C2C2C200D4D4
      D400000000000000000000000000000000000000000087848500C2C3C600A9AE
      B600434B5900DCAD7500BF925C00BF925C00B3824B00FDF1E400F7E5D200F6E4
      D000F6E4D000F7E5D200F9EADA00CC833C00F4E0CB00F2CA9C00F3BF8100F4BF
      8100F7C38400FFFFFE00FBF9F700F5F3EF00ECEAE700FAC48500F5C18200F3BF
      8100F3CB9D00F6E4D200C97C3200000000000000000051926A009BDDB7008FD7
      AD004C8C62009EDEAE0046A8F10073D8F800A7ECFC0076E1FD004DADE9006FE2
      F50076EAF90077EAF90079EBFA0073E4FA004AB7FB0065A5780095CDAE0092CC
      AD0094CDAE005EA37C00AFE5CB0072B2910066A9870073B39200B0E5CC00B1E7
      CD005DA17C00D1F3E30060A57E000000000000000000A6730D0084817F00E7E6
      E500A8A5A200ABA8A600B0ADAB00B8B6B4008F8D8B00E9E8D900FFFEEE00FFFE
      ED00FFFEED00FFFFFF00B77C0600BD810A00BD810800B5790000FFFFFF00FFFE
      F500FFFFF800FFFFFC00FFFFFC00FFFFFC00FFFFFC00FFFFFC00FFFFFC00FFFF
      F800FFFEF500FFFFFF00B47A080000000000000000000000000000000000C7C7
      C7007DACCA0020A1F5001BA1F9001CA1F9001EA1F90022A2F50072ABCF00C7C7
      C7000000000000000000000000004D7ABB003B508A0000000000000000000000
      0000C7C7C7007DACCA0020A1F5001BA1F9001CA1F9001EA1F90022A1F50072AB
      CF00C7C7C700000000000000000000000000000000000000000000000000BD88
      4E00A57A4700A97B4400C3956000C2945F00B3814B00FDF1E300F6E4CF00F5E3
      CE00F5E3CE00F5E4CF00F7E7D400E3B68900E0B08000F8EBE100F7DFC200FECE
      9200CDD9DA0097C4DD0083B2CB0078A8C20076A5BE00A8B8B700FFD29600F8E0
      C300F9EFE600E4B98F00E4C9AF000000000000000000519269009FDEBA008ED6
      AD004C8C6200A1DFB10045A7F100FAFFFF00FDFFFF00D2F6FF0081D3F70053AE
      EB004FA9EC004FABF1004EABF4004FA8E30092D3D3005F9F74008CC8AA008BC6
      A9008CC7AA005C9E7700ADE3CB005C9E79005FA17C005C9D7800AAE0C800A9E0
      C700579B7500D3F4E5005EA17C000000000000000000AC78130085828000F4F3
      F300A7A4A200AAA7A500ADAAA800B3B0AE008F8D8B0094620000A06A0000A06A
      0000A06A0000A66F0200B0770600FFFFFF00FFFFFF00AF720000FFFFFF00FFFC
      ED008F9194009394980094959800949598009495980094959800939498008F91
      9400FFFCED00FFFFFF00B47A0800000000000000000000000000C7C7C7002BA2
      EF004EB7FB00A4E2FD00C5F7FF008FE7FD0098E8FF0093DBFD0054B9FB002BA2
      EF00C7C7C70000000000000000004D79BB003B4E88000000000000000000C7C7
      C7002BA2EF004EB7FB00A4E2FD00C5F7FF008FE7FD0098E8FF0093DBFD0054B9
      FB002BA2EF00C7C7C70000000000000000000000000000000000D7D7D700BA87
      5000CDA67500C2955E00C2966000C3975F00B3814B00FDF1E300F6E3CD00F5E2
      CC00F5E2CC00F5E2CC00F6E4CE00F7E7D300EAC6A000D8944F00EDCBA900FFFC
      F40071B6DB006EACCB006098B6005087A4003E7897001E5B7F00FFFFFB00EFCF
      AE00D7965300DFCDBC0000000000000000000000000051926900A1DFBC008ED6
      AD004C8C6200A4E0B30047A7F10097EBFD0056DBFB0057DBFA005ADEFD005CDF
      FF004FABF00067A16D0053925F00619F7200AAE1C5005899700085C3A50084C2
      A40085C3A50057997100A8E1C8005F9F7A0051936A005FA07A00A6DFC700A6E0
      C70054987000D7F4E9005C9F78000000000000000000B17B1200908C8900DFDF
      DD00BFBCBA00A9A6A400ACA8A600AFACAA008F8C8A00AC9A7F00B19E8200B19E
      8200B19E8200C8BBAB00A7710400D3B58C00FFFFFF00AE700000FFFFFF00FFFA
      E700FFFCE900FFFEEB00FFFEEB00FFFEEB00FFFEEB00FFFEEB00FFFEEB00FFFC
      E900FFFAE700FFFFFF00B47B09000000000000000000D2D2D2002CA1EF0067C2
      FB0086DFFF0094E8FD0098E9FD007CDEFD0061D4FD0047CCFD00B8EDFF006CC5
      FB002AA2F000D2D2D200DDDDDD004E79BA003C4B8300DDDDDD00D3D3D3002CA2
      EF0067C2FB0086DFFF0094E8FD0098E9FD007CDEFD0061D4FD0047CCFD00B8ED
      FF006CC5FB002BA1EF00D2D2D2000000000000000000DCDCDC00C7C7C700BA85
      4B00FFDBAA00FFDBA600C3975F00C5996000B2814B00FCF1E300F5E2CB00F4E1
      CA00F4E1CA00F4E1CA00F4E1CA00F4E3CC00F5E4CF00F4E0C800E8B78400E898
      490077B8DB00679DB6005888A0004A7992003B6A83001F547400EE9F5100EFC2
      9500B38550000000000000000000000000000000000050926900A3E0BE008ED6
      AD004B8C6200A6E1B7004DB0F5006EE2FA0076EAFA0077EAF90079EBFA0074E5
      FB004AB7FA00A7DDBE00A2DBC200A0DAC200A1DBC3006BAB88006CAC8A007EBE
      A2006CAC8A006BAB8800A0DBC300A0DAC300A1DBC400A3DDC50072B4920068AC
      890061A68100DDF7ED00599D76000000000000000000B57F1200C5BBAE00A19E
      9E00EAEAE900ADAAA700A9A6A400ACA9A7009E9B990081807E00817F7C007F7D
      7B00807D7B0082807E00A6700100D3B48900FFFFFF00AF720000FFFFFF00FFFE
      ED00FFFEED00FFFEEE00FFFEEE00FFFEEE00FFFEEE00FFFEEE00FFFEEE00FFFE
      ED00FFFEED00FFFFFF00B67E0E0000000000000000006CB0DC004BB6FB00ABEA
      FF004FD1FD00A3EBFD0087E2FD006CD7FD0051CFFD0041C9FD003AC7FD00DFF8
      FF004CB8FC006FB4DE00D4D4D4004E79BA003D498100D5D5D50071B2DD004BB6
      FB00ABEAFF004FD1FD00A3EBFD0087E2FD006CD7FD0051CFFD0041C9FD003AC7
      FD00DFF8FF004CB7FB006EB0DC00000000000000000087848500C2C3C600A9AE
      B500434A5800DBAD7300C69B6300C69B6300B2814B00FCF1E400F5DFC800F4DF
      C800F4DFC800F4DFC800F4DFC800F4DFC800F4E0C900F6E1CB00FAE5CE00F8E2
      CB0068A6C90079B8D90074B3D4006EAACD005F9ABD00285E7D00FFF0D400FFF8
      EB00B4844F000000000000000000000000000000000050916900A7E2C0008DD6
      AD004A8B6200A8E1BB0079C7BB0053AEEA004BA9F3004AA8F0004CAAF30051AA
      E60059A299009FDBBE009CD9BF009BD8BF009CD9C1009AD7C00060A17A005394
      6A0060A17A009AD7C0009CD9C1009BD8BF009BD9C0009EDBC2005EA07B005FA2
      7D00599E7800E2F8F100579B72000000000000000000C6A25900DCBE8900938F
      8B00AFACAB00EBEAE900BFBCBA00A7A4A200A9A6A400ABA8A600C1BFBC00EBEA
      E900E3E3E200817F7D00BE903100DAC3A900FFFFFF00B2770000B1770100AF74
      0000AF740000AF740000AF740000AF740000AF740000AF740000AF740000AF74
      0000AF740000B2780400B881140000000000000000001EA0F500BCE9FF0086DD
      FE009DE8FE00AEEEFE0096E5FE007FDDFE006DD5FE0068D3FE0062D2FE00B0E9
      FE00C6EDFF0016A6FF00D2D2D2004E79BA003C488100D2D2D20020A2F500BCE9
      FF0086DDFE009DE8FE00AEEEFE0096E5FE007FDDFE006DD5FE0068D3FE0062D2
      FE00B0E9FE00C7ECFF0019A1F90000000000000000000000000000000000BD88
      4D009E794900A87A4200C99E6500C89D6400B2814B00FDF3E500F5DEC600F4DE
      C600F4DEC600F4DEC600F4DEC600F4DEC600F4DEC600F7E0C700FFE6C90096A7
      B00084C9EB0082C2E40079B7D90072AFD00069A7CA005492B7009BADB600FFFC
      EA00B7854E000000000000000000000000000000000050916900AAE2C2008DD6
      AD004A8B6200A9E0C0008CD3A50090D6A50053936300ECFBED004A8D59004E91
      5F004C906100478B5F00458B5F00458B5F00468B6000478C61004A8E64004A8F
      65004A8E6400478C6100468B6000458B5F00458B5F00478C61004B9066004D92
      6700468D6100E7FAF50054987000000000000000000000000000CAA75E00B27D
      10008D857800A29E9E00DFDFDD00F3F3F200F2F2F100F3F3F200ECECEB00C9C7
      C60088858300B38C4400DBC5B000DCC4AD00DDC7B200B2770000F9E9D300F0D6
      B000F0D6B000F0D6B100F0D6B100F0D6B100F0D6B100F0D6B100F0D6B100F0D6
      B000F0D6B000F9EBD600B7801300000000000000000036AEFA00E7FDFF00F2FF
      FF00FFFFFF00FFFFFF00FAFFFF00F5FFFF00F3FEFF00F2FEFF00F1FEFF00EEFE
      FF00F5FFFF0033B3FF00D5D5D5004D79BA003C488100D5D5D50036AFFC00E7FD
      FF00F2FFFF00FFFFFF00FFFFFF00FAFFFF00F5FFFF00F3FEFF00F2FEFF00F1FE
      FF00EEFEFF00F6FFFF0036AEFC00000000000000000000000000D7D7D700BA87
      4F00DAB98D00CA9E6400CA9F6600CB9F6700B2814B00FDF3E500F4DDC400F3DD
      C400F3DDC400F3DDC300F3DDC300F3DCC300F4DDC300FBE2C600D3C5B6002251
      7E0096DCFB0089CBEB007FBFDF0077B6D60071AED00068A8CA0028507A00DDD9
      D600BC8850000000000000000000000000000000000050916900ABE2C2008BD4
      AA004A8B6300A9E0C00088D0A6008BD3A8004E906600E7F7F100E3F5EE00E4F5
      EF00E4F6F000E4F5F000E3F5F000E3F5F000E3F5F000E4F5F000E4F6F100E4F6
      F100E4F6F100E4F5F000E3F5F000E3F5F000E3F5F000E4F5F000E4F6F100E4F5
      F000E3F5F000E7F8F40053966D00000000000000000000000000000000000000
      0000B47C0C00C7C6C50093918F0084817F0099969400827F7D0082807E00A8A7
      A600EBEAEA00FEFEFE00FFFFFF00D7BFA100FFFFFF00AF730000F6E6CE00E3B8
      7800E2B87800E3B87800E3B87800E3B87800E3B87800E3B87800E3B87800E2B8
      7800E3B87900F8E9D400B680120000000000000000002DAAF80019A3FB0016A0
      F900149FF900149FF800159FF800169FF800169FF800169FF90016A0F90016A1
      FA0019A5FE002EB1F900DADADA004D79BA003B4A8200DADADA0030ACF90019A3
      FB0016A0F900149FF900149FF800159FF800169FF800169FF800169FF90016A0
      F90016A1FA0019A5FE002FAEFA000000000000000000DCDCDC00C7C7C700BA85
      4A00FCDAAC00FFDBA300CA9E6600CBA06700B2804B00FDF3E600F4DCC200F3DC
      C100F3DBC100F3DABF00F3DABD00F3D9BD00F5DBBD00FFE4C2005B718A00063D
      7200A5EBFF0094D7F70089CAE90080BFDF0078B7D70074B4D500001E50006584
      A400C28D52000000000000000000000000000000000050926900ACE1C30088D0
      A7004A8C6300ABDFC10085CCA40088CEA60062A67D0085C1A200AEE5CB00ADE4
      C900ADE4C900ADE4C900ADE4C900ADE4C900ADE4C900ADE4C900ADE4C900ADE4
      C900ADE4C900ADE4C900ADE4C900ADE4C900ADE4C900AEE5CA00AEE5CA00AEE5
      CA00B0E7CC0089C5A60083AF9400000000000000000000000000000000000000
      0000B47B0900FFFFFF00FFFDF400FFFCF200FFFCF400FFFFF800D6BB9C00FFFF
      F800FFFCF300FFFCF300FFFFF700D6BB9B00FFFFFF00CFA95C00DBBA7D00F6E6
      CD00F6E6CE00F6E6CE00F6E6CE00F6E6CE00F6E6CE00F6E6CE00F6E6CF00F7E7
      D000F8E8D300E0C28C00C6A25900000000000000000092A8CD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000082819F00000000004D7ABB003A4C85000000000095ABCF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000827F9E00000000000000000087848500C2C3C600A9AE
      B500434A5800D9AC6F00CEA26900CEA36900B2804A00FDF4E800F2DBC000F2DA
      BF00F2D9BD00FDF7EE00FFFFFF00FFFFFF00FFFFFF00FFFFFF001E4C7E00134C
      7D006EACD000619CBF0086C6E6008CCEEE0083C4E40082C3E30007204E002756
      8A00C7915400000000000000000000000000000000004F926900AEE0C30086CE
      A4004A8C6300ACDEC10082CAA00084CBA10086CDA40061A57B004B8C63004B8C
      63004B8D63004B8D63004B8D63004B8D63004B8D63004B8D63004B8D63004B8D
      63004B8D63004B8D63004A8C63004A8C63004A8D63004D9066004F9168004F92
      68005093690085B1950000000000000000000000000000000000000000000000
      0000B47A0800FFFFFF00FFFDF100FFFCF000FFFDF200FFFFF600D6BB9A00FFFF
      F600FFFDF200FFFDF200FFFFF600D7BB9A00FFFFFB00FFFFFF00D1AB5E00B176
      0000B2780100B2780100B2770100B2770000B1770000B2770100B47B0900B57E
      0F00B67F1100C9A65B00000000000000000000000000A7BBD800A1B1CD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000979AAF009EA1B700000000004D7BBC00394E870000000000A9BCD800A1B2
      CD00000000000000000000000000000000000000000000000000000000000000
      000000000000979AAF009CA2B80000000000000000000000000000000000BD87
      4C0097774C00A67A3E00D0A66C00CFA56B00B2804A00FFF4E800F2DABD00F2D9
      BC00F2D7B900FFFFFF007F818100B9B9BA00BBBABA00CBC7C200003069001753
      8100245B8A00295C8900234E7A00406F950067A1C2003E698C00102A5A000840
      7D00CA935600000000000000000000000000000000004F926900AFDFC30082CA
      A1004A8D6300AEDDC1007FC79D0081C79F0082C8A00083CAA10084CBA20084CB
      A30084CBA30084CBA30084CBA30084CBA30084CBA30084CBA30084CBA30084CB
      A30084CBA30084CBA30084CBA20083CBA200B2E1C60050926900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B47B0800FFFFFF00D4B79200D4B89300D5B89500D7BB9800D8BD9B00D7BB
      9800D5B89500D5B89500D7BB9800D8BD9B00D7BB9900D7BB9A00D9BFA000DBC3
      A700DCC5AA00DCC4A900DBC3A800DBC2A700DAC1A500FFFFFF00B57D0C000000
      00000000000000000000000000000000000000000000000000005782BF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004351840000000000000000004D7BBD003A508A0000000000000000005782
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000004351850000000000000000000000000000000000D7D7D700B986
      4E00E6CAA100D1A66A00D0A66C00D1A76C00B17F4A00FFF5E900F2D9BB00F2D8
      BA00F1D6B600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000306700155A
      8B003175A8004683B500598EBB00527CA800355783002845720014305F000940
      7E00CA935600000000000000000000000000000000004F926900B1DEC4007FC7
      9F004B8D6300AFDCC3007CC39B007EC49D007FC49D007FC49D0080C59E0080C5
      9E0080C59E0080C59E0080C59E0080C59E0080C59E0080C59E0080C59E0080C5
      9E0080C59E0080C59E007FC49D007DC49C00B1DEC40050926900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B47A0800FFFFFF00FFFBEA00FFFAEA00FFFBEC00FFFEF000D6BA9600FFFE
      F000FFFBEC00FFFBEC00FFFEF000D6BA9600FFFEF000FFFCED00FFFCEE00FFFF
      F200D7BB9900FFFFF300FFFDEF00FFFCEE00FFFCEE00FFFFFF00B47B09000000
      0000000000000000000000000000000000000000000000000000A5BAD6009CAF
      CB0000000000000000000000000000000000000000000000000000000000949C
      B5009DA4BD0000000000000000004D7BBD003A518B000000000000000000A5BA
      D6009CAFCB000000000000000000000000000000000000000000000000000000
      0000949CB5009DA5BD00000000000000000000000000DCDCDC00C7C7C700BA85
      4A00F5D9AF00FFDBA100D2A76D00D3A96E00B17F4A00FDF5EC00F1D8B800F1D7
      B800F0D5B400FFFFFF0080818100B9B9B900B9B8B800FFFFFF00002B6400145A
      8B002C79AD003E80B1004A87B7004A82B0003C6A9700284A7600102F5F001349
      8200C8915400000000000000000000000000000000004F926900B2DEC5007DC4
      9B004B8D6400B1DDC3007AC198007CC29A007DC29A007DC29A007DC29A007DC2
      9A007DC29A007DC29A007DC29A007DC29A007DC29A007DC29A007DC29A007DC2
      9A007DC29A007DC29A007CC29A007AC19800B2DDC4004F926900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B47A0800FFFFFF00FFF7E400FFF7E400FFF7E500FFFBEA00D6B79200FFFB
      EA00FFF7E500FFF7E500FFFBEA00D6B79200FFFBEA00FFF7E500FFF7E500FFFB
      EA00D6B79200FFFBEA00FFF7E500FFF7E400FFF7E400FFFFFF00B47A08000000
      000000000000000000000000000000000000000000000000000000000000547D
      BB00000000000000000000000000000000000000000000000000000000004457
      8D000000000000000000000000004D7BBD003A518B0000000000000000000000
      0000547DBB000000000000000000000000000000000000000000000000000000
      000044578D000000000000000000000000000000000087848500C2C3C600A9AE
      B500434A5700D8AC6D00D5AB6F00D5AC6F00B17F4900FFF7ED00F1D7B700F1D6
      B700F0D4B300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006584A700083E
      71001F74A8002F7CAE00397FB0003877A7002C62910018406E00083268006585
      A600C28D5200000000000000000000000000000000004F926900B4DDC60079C1
      99004B8D6400B3DCC50076BD960078BE970078BE970078BE960078BE960078BE
      960078BE960078BE960078BE960078BE960078BE960078BE960078BE960078BE
      960078BE960078BE970078BE970076BD9600B3DCC5004F926900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B47A0800FFFFFF00FFF8E400FFF8E400FFF9E500FFFCE900D6B89200FFFC
      E900FFF9E500FFF9E500FFFCE900D6B89200FFFCE900FFF9E500FFF9E500FFFC
      E900D6B89200FFFCE900FFF9E500FFF8E400FFF8E400FFFFFF00B47A08000000
      000000000000000000000000000000000000000000000000000000000000A5B7
      D3009BADC9000000000000000000000000000000000000000000959EB8009EA6
      BF000000000000000000000000004D7BBD003A518B0000000000000000000000
      0000A5B7D3009BADC9000000000000000000000000000000000000000000959E
      B8009EA7C000000000000000000000000000000000000000000000000000BD87
      4C0090764E00A4793B00D8AE7200D7AE7000B17F4900FFF8EE00F0D5B500F0D5
      B500EFD3B100FFFFFF007E7F8000B7B7B800FFFFFF0086858400C0BFBE000233
      69000740750016649700206A9D001D609100134E7D0006366B00063B7100FFFB
      F000BA874E00000000000000000000000000000000004F926900B5DDC60076BF
      96004B8E6400B4DCC50074BB930074BB93006FB98F006CB78D006CB78D006CB7
      8D006CB78D006CB78D006CB78D006CB78D006CB78D006CB78D006CB78D006CB7
      8D006CB78D006FB98F0074BB930074BB9300B4DDC6004F926900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B47B0800FFFFFF00D4B38A00D5B58C00D5B68E00D7B89000D8BA9300D7B8
      9000D5B68E00D5B68E00D7B89000D8BA9300D7B89000D5B68E00D5B68E00D7B8
      9000D8BA9300D7B89000D5B68E00D5B58C00D4B38A00FFFFFF00B47B08000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005279B4000000000000000000000000000000000000000000465D93000000
      00000000000000000000000000004D7ABC003A518B0000000000000000000000
      0000000000005279B4000000000000000000000000000000000000000000465D
      9300000000000000000000000000000000000000000000000000D7D7D700B986
      4D00F0D9B400D8AF7000D7AF7200D8B07200B17F4900FFF9F100F0D3B300F0D3
      B300EFD2B100FCF4EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006284A9000B3D750000316E0000346F0000306E005C728A00F6D7B500FFFF
      F500B5844C00000000000000000000000000000000004F926900B7DDC80074BB
      93004B8E6400B7DCC60071B88F006EB68D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF006EB68D0071B88F00B7DDC7004F926900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B47A0800FFFFFF00FFF6DE00FFF6DF00FFF7E100FFFAE400D5B78E00FFFA
      E400FFF7E100FFF7E100FFFAE400D5B78E00FFFAE400FFF7E100FFF7E100FFFA
      E400D5B78E00FFFAE400FFF7E100FFF6DF00FFF6DE00FFFFFF00B47A08000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A4B5D0009AABC60000000000000000000000000096A1BA009FAAC2000000
      00000000000000000000000000004D7ABC003A528C0000000000000000000000
      000000000000A4B5D0009AABC60000000000000000000000000096A1BA009FAA
      C2000000000000000000000000000000000000000000DCDCDC00C7C7C700BA84
      4900F0D7B200FFDA9E00D8B07200DAB27300B17E4900FFF9F300F0D2B000F0D3
      B200F0D2B100F0D1AF00F0D1AE00F0D0AD00F0D0AD00F0D0AD00F2D1AE00F6D5
      B100FEDBB500FFE0B800FFE1B900FFE1B900FFE0B900FEDCB600F7D6B200FFFB
      F300B4834B00000000000000000000000000000000004F926900B9DCC90071B7
      90004B8F6500B8DBC8006FB48D006CB28A0060AD81005AA97C0059A97B0059A9
      7B0059A97B0059A97B0059A97B0059A97B0059A97B0059A97B0059A97B0059A9
      7B005AA97C0060AD81006CB28A006FB48D00B8DCC9004F926900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B47A0800FFFFFF00FFF3D800FEF2D800FFF3DA00FFF7DE00D5B48A00FFF7
      DE00FFF3DA00FFF3DA00FFF7DE00D5B48A00FFF7DE00FFF3DA00FFF3DA00FFF7
      DE00D5B48A00FFF7DE00FFF3DA00FEF2D800FFF3D800FFFFFF00B47A08000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005074AE00DBDBDB0000000000DBDBDB0049609800000000000000
      00000000000000000000000000004D7ABC003A528C0000000000000000000000
      000000000000000000005074AE00DBDBDB0000000000DBDBDB00496098000000
      0000000000000000000000000000000000000000000087848400C2C3C500AAAE
      B300444A5700D7AC6B00DBB47600DBB57600B07E4800FFFBF500EFD0AE00EFD2
      B000EFD2B100F0D3B200F1D5B400F1D5B400F1D4B300F1D4B300F2D5B400F2D6
      B500F3D6B500F4D7B600F4D7B500F3D5B300F2D4B200F1D3B100F0D1AE00FFFB
      F600B4824B00000000000000000000000000000000004F926900BCDECA006EB5
      8D004B8F6500BBDDCA006BB28A0065AF8600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0065AF86006BB28A00BBDECA004F926900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B47B0900FFFFFF00FFF4D700FFF5D800FFF6DA00FFF8DD00D7B58A00FFF8
      DD00FFF6DA00FFF6DA00FFF8DD00D7B58A00FFF8DD00FFF6DA00FFF6DA00FFF8
      DD00D7B58A00FFF8DD00FFF6DA00FFF5D800FFF4D700FFFFFF00B47B09000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A2B2CC0094A1B900B7B7B700909BB200A1ABC400000000000000
      00000000000000000000000000004D7ABC003A528C0000000000000000000000
      00000000000000000000A2B2CC0094A1B900B7B7B700909BB200A1ABC4000000
      000000000000000000000000000000000000000000000000000000000000B890
      640073654D00A4793900DEB77800DEB77700B07E4800FFFCF800EFCFAC00EFD1
      AE00EFD1B000F1D4B300AB794100CFA87B00CEA67800F3D6B500AB794100CFA8
      7B00CFA77A00CEA67A00CDA57800F0D3B100EFD1AF00EFD1AE00EFCFAC00FFFD
      F800B4824B00000000000000000000000000000000004F926900BDDDCC006BB1
      8A004B8F6500BCDCCB0068AF870064AC8300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0064AC830068AF8700BDDCCB004F926900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B57B0900FFFFFF00DEB27D00E3B47F00E3B68100E1B78400E0B88800E1B7
      8400E3B68100E3B68100E1B78400E0B88800E1B78400E3B68100E3B68100E1B7
      8400E0B88800E1B78400E3B68100E3B47F00DEB27D00FFFFFF00B57B09000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7D7D7004A73B1004365A2003A538B00D7D7D700000000000000
      00000000000000000000D7D7D7004D7BBD003A518B00D7D7D700000000000000
      00000000000000000000D7D7D7004B74B3004366A3003B548D00D7D7D7000000
      0000000000000000000000000000000000000000000000000000D7D7D700BA83
      4800FAE6C500E1B77500DFB67700E0B87800B07E4800FFFEFB00EECEA900EED0
      AC00EED0AD00EFD2AF00F1D3B200F1D3B200F0D3B000F0D2B000F1D4B200F1D4
      B200F0D3B100F0D3B100F0D2B000EED1AE00EED0AD00EED0AC00EECEA900FFFF
      FB00B4824B00000000000000000000000000000000004F926800C0DFCD0068AF
      87004B8F6500BFDECC0067AD850068AD860062AA81005FA87F005EA87E005EA8
      7E005EA87E005EA87E005EA87E005EA87E005EA87E005EA87E005EA87E005EA8
      7E005FA87F0062AA810068AD860067AD8500BFDECD004F926800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B67B0800FFFFFF004FC6FF0058C9FF0059CAFF0053CBFF00ECBA800053CB
      FF0059CAFF0059CAFF0053CBFF00ECBA800053CBFF0059CAFF0059CAFF0053CB
      FF00ECBA800053CBFF0059CAFF0058C9FF004FC6FF00FFFFFF00B67B08000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCDCDC00CCCCCC004E7DC00042639F0035477E00CCCCCC00D1D1D100D1D1
      D100D1D1D100D1D1D100C7C7C7004D7CBE003A518B00C7C7C700D1D1D100D1D1
      D100D1D1D100D1D1D100CCCCCC005185C8004568A500384D8600CCCCCC00DCDC
      DC000000000000000000000000000000000000000000DCDCDC00C7C7C700BA83
      4700E9D6B400FFDA9A00DFB77900E1BA7A00B07D4800FFFFFD00EECDA700EECE
      AA00EECFAB00EECFAB00EED0AC00EED0AC00EECFAC00EECFAB00EED0AC00EED0
      AC00EED0AC00EECFAC00EECFAB00EECFAB00EECFAB00EECEAA00EECDA700FFFF
      FE00B4824B00000000000000000000000000000000004F926800C2DFCE0064AB
      84004B8F6500C1DECE0063A9830067AB860067AB860066AB850066AB850066AB
      850066AB850066AB850066AB850066AB850066AB850066AB850066AB850066AB
      850066AB850067AB860067AB860063A98300C2DECE004F926800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B67B0700FFFFFF0055C5FF0060C7FF0061C9FF0059C9FF00F1B97A0059C9
      FF0061C9FF0061C9FF0059C9FF00F1B97A0059C9FF0061C9FF0061C9FF0059C9
      FF00F1B97A0059C9FF0061C9FF0060C7FF0055C5FF00FFFFFF00B67B07000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005083C7004F7FC3004D7EC0004D7CBF004C7ABC004B75B7004971B200476F
      AF00466CAB004569A8004364A3004D7CBE003A518B00405F9C003F5B97003E58
      94003C5691003B538C00394E8800384A84003748810035477E0035447C003441
      7900000000000000000000000000000000000000000087848400C2C3C500AAAE
      B40043495600D5AC6800E3BB7B00E3BC7B00AF7D4700FFFFFF00EECBA400EECC
      A700EECDA800EECDA800EECDA800EECDA800EECDA800EECDA800EECDA800EECD
      A800EECDA800EECDA800EECDA800EECDA800EECDA800EECCA700EECBA400FFFF
      FF00B4824B00000000000000000000000000000000004F926800C4DFD10060A8
      7F004A8F6400C3DDD0005DA57D0060A77F0061A8800061A8800061A8800061A8
      800061A8800061A8800061A8800061A8800061A8800061A8800061A8800061A8
      800061A8800061A8800060A77F005DA57D00C4DED0004F926800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B67C0900FFFFFF004EC3FF0056C5FF0057C6FF0051C6FF00EAB5780051C6
      FF0057C6FF0057C6FF0051C6FF00EAB5780051C6FF0057C6FF0057C6FF0051C6
      FF00EAB5780051C6FF0057C6FF0056C5FF004EC3FF00FFFFFF00B67C09000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004D7CBE003A518B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD87
      4C0085735500A2783300E4BD7A00E4BD7A00AF7C4600FFFFFF00EDC99F00ECCA
      A100EDCAA200EDCAA200EDCAA200EDCAA200EDCAA200EDCAA200EDCAA200EDCA
      A200EDCAA200EDCAA200EDCAA200EDCAA200EDCAA200ECCAA100EDC99F00FFFF
      FF00B4824B000000000000000000000000000000000050936A00C6E1D200C7E1
      D2004B906500C5DFD100C3DECF00C4DECF00C4DFD000C4DFD000C4DFD000C4DF
      D000C4DFD000C4DFD000C4DFD000C4DFD000C4DFD000C4DFD000C4DFD000C4DF
      D000C4DFD000C4DFD000C4DECF00C3DECF00C6E0D10050936A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B67E0E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B67E0E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004D7BBD003A518B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B987
      5100FFF4D700FEEFD300FAEDD200FCEFD400B27F4800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5844E000000000000000000000000000000000083B0950051946A005194
      6A0052956B0050936A004F9268004F9268004F9268004F9268004F9268004F92
      68004F9268004F9268004F9268004F9268004F9268004F9268004F9268004F92
      68004F9268004F9268004F9268004F92680051946A0076A98A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C9A45A00B67E0E00B67C0900B67B0700B67B0700B67B0800B57B0800B67B
      0800B67B0700B67B0700B67B0800B57B0800B67B0800B67B0700B67B0700B67B
      0800B57B0800B67B0800B67B0700B67B0700B67C0900B67E0E00C9A45A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004D7ABC003A528C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C9A8
      8500B7875300B5855000B5845000B6865100B7875200B5844E00B4824B00B482
      4B00B4824B00B4824B00B4824B00B4824B00B4824B00B4824B00B4824B00B482
      4B00B4824B00B4824B00B4824B00B4824B00B4824B00B4824B00B4824B00B584
      4E00C8A885000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000CDCDCD00BCBCBC00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BCBCBC00CDCDCD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD00BCBC
      BC00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BCBCBC00CDCDCD000000000000000000CDCDCD00BCBCBC00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BCBCBC00CDCDCD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D2D2D200C3C3C300BCBCBC00BBBBBB00BBBBBB00BBBB
      BB00BCBCBC00C3C3C300D2D2D200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B564500674F3D00664F3D00664E
      3C00664E3C00664F3D00674F3D0067503E0067503E00674F3D00664F3D00664E
      3C00664E3C00664F3D00674F3D006B5645000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7862200B67E
      0E00B57C0900B57B0900B57B0900B57B0900B57B0900B57B0900B57B0900B57B
      0900B57B0900B57B0900B57B0900B57B0900B57B0900B57B0900B57B0900B57B
      0900B57B0900B57B0900B57B0900B57B0900B57B0900B57B0900B57B0900B57B
      0900B57C0900B67E0E00B78622000000000000000000B7862200B67E0E00B47B
      0900B47A0700B47A0700B47A0700B47A0700B47A0700B47A0700B47A0700B47A
      0700B47B0900B67E0E00B7862200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C9C9C90080AECE0058AAE0004CABE9004CAAE9004EABE90051AB
      E90053ACE9005BABDF0080ADCC00B9B9B900BBBBBB00B4BABE00BBBBBB00BCBC
      BC00C3C3C300D3D3D30000000000000000000000000000000000000000000000
      000000000000000000000000000000000000674F3D00887C6A00837765008377
      65008377650083776500857967007867540073604D0085796700837765008377
      65008377650083776500887C6A00674F3D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B67E0E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B67E0E000000000000000000B67E0E00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B67E0E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000051ADEA005BC4F0006CD6F7009BEAFC00ACEEFE0087E6FE0061DC
      FE0046D6FE0046CDFC0049C1F60052ADE9004EABE9004EABE90051ABE90053AC
      E9005BABDF0080AFCE00CBCBCB00000000000000000000000000000000000000
      000000000000000000000000000000000000654D3B0093877500887B6900887C
      6A00897D6B008B7E6C00897B66006F5741007B654F00867763008B7F6C00897D
      6B00887C6A00887B690093877500654D3B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B57B0900FFFF
      FF00D6BFA500D7C0A500D7C0A600D7C0A600D7C0A600D7C0A600D8C1A800D8C2
      A900D8C1A800D7C0A600D7C0A600D7C0A600D7C0A600D7C0A600D7C0A600D7C0
      A600D8C1A800D8C2A900D8C1A800D7C0A600D7C0A600D7C0A600D7C0A600D7C0
      A500D6BFA500FFFFFF00B57B09000000000000000000B47B0900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B77C07000000000000000000CDCDCD00BCBCBC00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BCBCBC00CDCDCD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004CACEC00C4F6FD00E8FDFF00F9FFFF00EFFFFF00C9F0FD00B0EE
      FF008BE6FF0067DEFF0045D8FF004EA9E800B3F2FF0088E6FE0061DCFE0046D6
      FE0046CDFC004AC1F6005AAEE500000000000000000000000000000000000000
      000000000000000000000000000000000000644C3A009F9280008F8270009083
      710092877500857562006C523A0043436A003A4074006C523A0082715E009387
      7500908472008F8270009F928000644C3A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B47A0800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D7BF
      A400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D7BFA400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B47A08000000000000000000B47A0700FFFFFF00FFFF
      FC008F9091009394950094949500949495009494950094949500939495008F90
      9100FFFFFC00FFFFFF00BB7E0400CFCFCF00D7D7D700BA862100B67E0E00B47B
      0900B47A0700B47A0700B47A0700B47A0700B47A0700B47A0700B47A0700B47A
      0700B47B0900B67E0E00B7862200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D7D7D70049ADF100B4DBF70073BDEE0086C4F0009DCFF2007DBFEF0060B0
      EB004EA7E70058B3EB004FC2F5004BA8E800F9FFFF00CAF1FE00B0EEFF008BE6
      FF0067DEFF0047D9FF0055ADE900000000000000000000000000000000000000
      000000000000000000000000000000000000634B3900AB9D8B0096897700998C
      7A007A675500664D39006E5133001535A2002B4EBE006D503300664D39007764
      520096887600968A7800AB9D8B00634B39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B47A0700FFFF
      FF00FFFFFD00FFFEFA00FFFEFA00FFFEFA00FFFEFA00FFFFFB00FFFFFF00D6BC
      A000FFFFFF00FFFFFB00FFFEFA00FFFEFA00FFFEFA00FFFEFA00FFFEFA00FFFF
      FB00FFFFFF00D6BCA000FFFFFF00FFFFFB00FFFEFA00FFFEFA00FFFEFA00FFFE
      FA00FFFFFD00FFFFFF00B47A07000000000000000000B47A0800FFFFFF00FFFE
      F500FFFFF800FFFFFC00FFFFFC00FFFFFC00FFFFFC00FFFFFC00FFFFFC00FFFF
      F800FFFEF500FFFFFF00BE7F030071767F00C9C9C900BE820A00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B67E0E000000000000000000D3D3D300BFBFBF00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00B6B6B60045AFF90054C1F10065D2F60094E7FA00A5EAFD0081E3FD005DDA
      FD0045D4FE0045CBFB0048BEF5004BA8E800A5D3F4007EC0EF0060B0EB004EA7
      E70058B3EB0050C3F60055AEEA00000000000000000000000000000000000000
      0000000000000000000000000000DADADA0061493600B7A997009D917E00A196
      8400634A3800664D390083694B000023D0000022CF008C735600664D3900634B
      3900918371009E928000B8A9970062493700DADADA0000000000000000000000
      0000000000000000000000000000000000000000000000000000B47A0700FFFF
      FF00FFFEFA00FFFDF800FFFDF800FFFDF800FFFDF800FFFEF900FFFFFE00D6BC
      9E00FFFFFE00FFFEF900FFFDF800FFFDF800FFFDF800FFFDF800FFFDF800FFFE
      F900FFFFFE00D6BC9E00FFFFFE00FFFEF900FFFDF800FFFDF800FFFDF800FFFD
      F800FFFEFA00FFFFFF00B47A07000000000000000000B47A0800FFFFFF00FFFC
      ED008F9194009394980094959800949598009495980094959800939498008F91
      9400FFFCED00FFFFFF00BE7F03007579810072767E00BE800300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B47B09000000000000000000B9944A00B67E0E00B47B
      0900B47A0700B47A0700B47A0700B47A0700B47A0800B47B0800B47A0700B67A
      0400C07900003FABF800BEF3FE00E6FAFE00FAFEFF00F2FDFF00D6F5FF00B0EB
      FD008AE2FE0066DBFE0045D6FF004BA7E800ADEFFE0083E4FE005DDBFE0045D5
      FE0045CCFB004AC0F50055AEEA000000000000000000CDCDCD00BCBCBC00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00B7B7B700715E4F00BDAF9C00AEA39100998A
      7800644C3A00634A3500B8A68D005E7FDD005B7BDA00C6B8A100634A3500644D
      3B008C7B6900AC9F8D00BFB09D00725E5000B7B7B700BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BCBCBC00CDCDCD00000000000000000000000000B47A0800FFFF
      FF00FFFFFC00FFFFFB00FFFFFB00FFFFFB00FFFFFB00FFFFFC00FFFFFF00D7BF
      A000FFFFFF00FFFFFC00FFFFFB00FFFFFB00FFFFFB00FFFFFB00FFFFFB00FFFF
      FC00FFFFFF00D7BFA000FFFFFF00FFFFFC00FFFFFB00FFFFFB00FFFFFB00FFFF
      FB00FFFFFC00FFFFFF00B47A08000000000000000000B47B0900FFFFFF00FFFA
      E700FFFCE900FFFEEB00FFFEEB00FFFEEB00FFFEEB00FFFEEB00FFFEEB00FFFC
      E900FFFAE700FFFFFF00BB7E0400B3B3B3006D727E00BB7E0300FFFFFF00FFFF
      FC008F9091009394950094949500949495009494950094949500939495008F90
      9100FFFFFC00FFFFFF00B47A07000000000000000000B67E0E00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF003AA5EE00FFFFFF0091E7FC006BDEFC004DD6FB0050D7FC0051D8
      FC005FDCFC005EDBFE004CD7FF0049A6E800F8FFFF00C9F1FE00B0EEFF008BE6
      FF0067DEFF0047D9FF0055ADE900000000000000000068686800626262006161
      610061616100606161005F5F5F007F808200B6B2B1008C77650089736100624A
      3700644C3A005F442F00FFFFF1000019C2000019C200FFFDEB005F442F00644D
      3A00644B3900745E4A008E7A6700B1AEAC00707172004C4C4C004F4F4F004F4F
      4F004F4F4F004F4F4F0055555500000000000000000000000000B47B0800FFFF
      FF00D5BA9B00D6BB9B00D6BB9C00D6BB9C00D6BB9C00D6BB9D00D8BD9F00D9C0
      A300D8BD9F00D6BB9D00D6BB9C00D6BB9C00D6BB9C00D6BB9C00D6BB9C00D6BB
      9D00D8BD9F00D9C0A300D8BD9F00D6BB9D00D6BB9C00D6BB9C00D6BB9C00D6BB
      9B00D5BA9B00FFFFFF00B47B08000000000000000000B67E0E00FFFFFF00FFFE
      ED00FFFEED00FFFEEE00FFFEEE00FFFEEE00FFFEEE00FFFEEE00FFFEEE00FFFE
      ED00FFFEED00FFFFFF00B77C0600BD810A00BD810800B5790000FFFFFF00FFFE
      F500FFFFF800FFFFFC00FFFFFC00FFFFFC00FFFFFC00FFFFFC00FFFFFC00FFFF
      F800FFFEF500FFFFFF00B47A08000000000000000000B47B0900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5BDA200FFFFFF00FFFF
      FF00FFFFFF003AA2E90078E9FC0060E1FB0063E0FA0066E0FA0067E1FA0067E1
      FA0068E1FA0069E3FB0064E4FC0048A6E800A4D3F4007EC0EF0060B0EB004EA7
      E70058B3EB0050C3F60055AEEA0000000000000000006262620095929000908D
      8B008F8D8B008F8D8B008F8D8B008D8B8900A8A8A800BCB8B70075604F006047
      33006047340089756400FFFFFF000013C0000015C200FFFFF6009A897A006249
      3500634A3600735D4D00B5B0AF0090909100484546004D4B4B004E4C4C004E4C
      4C004E4B4B005A5856004E4E4F00000000000000000000000000B47A0800FFFF
      FF00FFFFF800FFFFF700FFFFF700FFFFF700FFFFF700FFFFF800FFFFFC00D6BD
      9D00FFFFFC00FFFFF800FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
      F800FFFFFC00D6BD9D00FFFFFC00FFFFF800FFFFF700FFFFF700FFFFF700FFFF
      F700FFFFF800FFFFFF00B47A08000000000000000000B8811400B2780400AF74
      0000AF740000AF740000AF740000AF740000AF740000AF740000AF740000AF74
      0000AF740000B2770200B47A0600FFFFFF00FFFFFF00AF720000FFFFFF00FFFC
      ED008F9194009394980094959800949598009495980094959800939498008F91
      9400FFFCED00FFFFFF00B47A08000000000000000000B47A0700FFFFFF00FFFF
      FF00FFFFFC00FFFFFC00FFFFFC00FFFFFD00FFFFFF00D6BDA000FFFFFF00FFFF
      FE00FFFFFD0060B4EE0056C7F3006BDDF60077EBF80078EBF80078EBF80078EB
      F80078EBF7006EDCF4005CC8F00055B1EB00A9EDFE0082E3FD005DDBFE0045D5
      FE0045CCFB004AC0F50055AEEA000000000000000000606060009C9A98009390
      8E00938F8D0094918E00959290008F8D8C006465660091949700D9DADC00B1A9
      A1006F564300BBB8B200CDE6EE0087B6C500739FAD00A8BCC100B0AEA6006C52
      3F00998F8700BFC0C1007672750056525400524E4E0054525200545252005452
      52005351510062605E004D4D4E00000000000000000000000000B47A0800FFFF
      FF00FFFBF200FEFAF000FEFAF000FEFAF000FEFAF000FFFBF100FFFEF600D5B9
      9A00FFFEF600FFFBF100FEFAF000FEFAF000FEFAF000FEFAF000FEFAF000FFFB
      F100FFFEF600D5B99A00FFFEF600FFFBF100FEFAF000FEFAF000FEFAF000FEFA
      F000FFFBF200FFFFFF00B47A08000000000000000000B7801300F9EBD600F0D6
      B000F0D6B000F0D6B100F0D6B100F0D6B100F0D6B100F0D6B100F0D6B100F0D6
      B000F0D6B000F9E9D500B3790400D3B58C00FFFFFF00AE700000FFFFFF00FFFA
      E700FFFCE900FFFEEB00FFFEEB00FFFEEB00FFFEEB00FFFEEB00FFFEEB00FFFC
      E900FFFAE700FFFFFF00B47B09000000000000000000B47A0800FFFFFF00FFFF
      FF00FFFFFE00FFFFFE00FFFFFE00FFFFFF00FFFFFF00D7BEA200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0093B6C70068BAF30040A7F00042A7EF0043A8EF0046A8
      EE0049A8EB0071B9EE00A7D7F500F1FEFF00F0FFFF00C8F0FD00B0EEFF008BE6
      FF0067DEFF0047D9FF0055ADE90000000000000000005F5F6000A5A2A0009795
      9300989694009B999700898887006163660073624C007661460061636600A6A6
      A600DEDDDB009EB9C5006AA5C0005C92AC004C809A002E617B0066798300C1BD
      BD00878686004F4A4D002E644F00296D5300524A4D00565353005A5858005957
      5700585656006B6966004D4D4D00000000000000000000000000B47A0800FFFF
      FF00FFFAEE00FEF9ED00FEF9ED00FEF9ED00FEF9ED00FFFAEE00FFFDF300D5B8
      9800FFFDF300FFFAEE00FEF9ED00FEF9ED00FEF9ED00FEF9ED00FEF9ED00FFFA
      EE00FFFDF300D5B89800FFFDF300FFFAEE00FEF9ED00FEF9ED00FEF9ED00FEF9
      ED00FFFAEE00FFFFFF00B47A08000000000000000000B6801200F8E9D400E3B8
      7900E2B87800E3B87800E3B87800E3B87800E3B87800E3B87800E3B87800E2B8
      7800E3B87800F7E7D000B2780100D3B48900FFFFFF00AF720000FFFFFF00FFFE
      ED00FFFEED00FFFEEE00FFFEEE00FFFEEE00FFFEEE00FFFEEE00FFFEEE00FFFE
      ED00FFFEED00FFFFFF00B67E0E000000000000000000B47B0800FFFFFF00D5BB
      9C00D6BC9C00D6BC9C00D6BC9C00D6BC9D00D8BFA000D9C1A300D8BFA000D6BC
      9D00D7BD9D00DBBF9F00E2C4A200E5C4A000E6C39E00E7C39E00EAC59F00F3C9
      9E0044AAEF00B6DDF70077BFEE0088C5F0009DCFF3007DBFEF0060B0EB004EA7
      E70058B3EB0050C3F60055AEEA0000000000000000005E5F5F00AEACAA009C9A
      98009F9D9B007B7A79005F6060005E6266008D663400A27A4800595C61005D5C
      5C00CFC8C40087ABC3007DBEDF0078B9D90072B0D300619FC2005D7F9700C1BB
      B7004A4747004D4246000E8A580028A4720051474B004E4C4D00535253005E5C
      5A005D5B5A0073716F004C4C4C00000000000000000000000000B47A0800FFFF
      FF00FFFDF000FFFDEF00FFFDF000FFFDF000FFFDF000FFFDF100FFFFF500D6BB
      9900FFFFF500FFFDF100FFFDF000FFFDF000FFFDF000FFFDF000FFFDF000FFFD
      F100FFFFF500D6BB9900FFFFF500FFFDF100FFFDF000FFFDF000FFFDF000FFFD
      EF00FFFDF000FFFFFF00B47A08000000000000000000C6A25900E0C28C00F8E8
      D200F6E6CF00F6E6CD00F6E5CD00F6E5CD00F6E5CD00F6E5CD00F6E5CD00F6E5
      CD00F6E6CD00DCBD8000C3943200DAC3A900FFFFFF00B2770000B1770100AF74
      0000AF740000AF740000AF740000AF740000AF740000AF740000AF740000AF74
      0000AF740000B2780400B88114000000000000000000B47A0800FFFFFF00FFFF
      FA00FFFFF900FFFFF900FFFFF900FFFFFB00FFFFFE00D6BEA000FFFFFE00FFFF
      FB00FFFFFB00FFFFFE00D7BE9F00FFFFFE00FFFFFB00FFFFFB00FFFFFE00E9C4
      9E0040A9F00054C1F00065D2F60094E7FA00A5EAFD0081E3FD005DDAFD0045D4
      FE0045CBFB004ABFF50055ADEA0000000000000000005E5E5E00B8B5B300A3A1
      9F00A7A5A3005D5D5E006060620073777B009F6318009D6116007D808400A8A5
      A300687B94007DC2E50086C8E8007DBDDD0075B4D5006DACCE005998BE006A7D
      97009E99970064565B0000A4590000A45A0075686C004C4A4B004C4D4D005F5D
      5B00635F60007B7977004C4C4C00000000000000000000000000B47B0800FFFF
      FF00D4B79200D4B89300D5B89500D5B89500D5B89500D5B89500D7BB9800D8BD
      9B00D7BB9800D5B89500D5B89500D5B89500D5B89500D5B89500D5B89500D5B8
      9500D7BB9800D8BD9B00D7BB9800D5B89500D5B89500D5B89500D5B89500D4B8
      9300D4B79200FFFFFF00B47B0800000000000000000000000000CAA75E00B67F
      1000B47B0900B0760000AF730000AE720000AF730000AF740000B0750000AF74
      0000AE720000C0923D00DCC6B100DCC4AD00DDC7B200B2770000F9E9D300F0D6
      B000F0D6B000F0D6B100F0D6B100F0D6B100F0D6B100F0D6B100F0D6B100F0D6
      B000F0D6B000F9EBD600B78013000000000000000000B47A0800FFFFFF00FFFC
      F300FEFBF100FEFBF100FEFBF100FFFCF200FFFFF700D5BA9900FFFFF700FFFC
      F200FFFCF200FFFFF700D5BA9900FFFFF700FFFCF200FFFCF200FFFFF700E5C1
      9A003CA7F000BEF2FD00E6FAFE00FAFEFF00F2FDFF00D6F5FF00B0EBFD008AE2
      FE0066DBFE0046D7FF0054ADE900000000000000000075757500BEBCB900B2B0
      AE009C9A97005F5F60005D5E5F00A8ACB000C3A37800BE9C7200D0D3D500B1B3
      B7001D4F81009ADFFE008CCDED0082C2E2007AB9DA0074B1D2006EADCE001B45
      76009FA3AC00CCBCC0005DC49A005CC39800BBADAF00474646004C4C4C005E5C
      5B006E6C6B00817F7E0065656500000000000000000000000000B47A0800FFFF
      FF00FFFBEB00FFFAEB00FFFBEC00FFFBEC00FFFBEC00FFFBED00FFFEF100D6BA
      9600FFFEF100FFFBED00FFFBEC00FFFBEC00FFFBEC00FFFBEC00FFFBEC00FFFB
      ED00FFFEF100D6BA9600FFFEF100FFFBED00FFFBEC00FFFBEC00FFFBEC00FFFA
      EB00FFFBEB00FFFFFF00B47A0800000000000000000000000000000000000000
      0000B57D0C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D9C2AB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D7BFA100FFFFFF00AF730000F6E6CE00E3B8
      7800E2B87800E3B87800E3B87800E3B87800E3B87800E3B87800E3B87800E2B8
      7800E3B87900F8E9D400B68012000000000000000000B47A0800FFFFFF00FFFB
      F000FEFAEE00FEFAEE00FEFAEE00FFFBEF00FFFEF400D5B99900FFFEF400FFFB
      EF00FFFBEF00FFFEF400D5B99900FFFEF400FFFBEF00FFFBEF00FFFFF400E5C0
      99003BA7F000FFFFFF0091E7FC006BDEFC004DD6FB0050D7FC0051D8FC005FDC
      FC005EDBFE004ED8FF0054ACE9000000000000000000E2E2E2008C8B8B008887
      88005F5F5F006060600058595A00F8FCFF00965A100095590E00FFFFFF00516C
      8C0025609100A3E8FF0092D5F50088C9E90080BFE00079B8D90075B5D5001B43
      7100526B8B00FFFFFF0000984D0000994F00FFF3F400424041004B4B4B004D4D
      4D005958580067666500E0E0E000000000000000000000000000B47A0800FFFF
      FF00FFF7E600FEF6E500FEF6E500FEF6E500FEF6E500FFF7E600FFFAEB00D5B6
      9200FFFAEB00FFF7E600FEF6E500FEF6E500FEF6E500FEF6E500FEF6E500FFF7
      E600FFFAEB00D5B69200FFFAEB00FFF7E600FEF6E500FEF6E500FEF6E500FEF6
      E500FFF7E600FFFFFF00B47A0800000000000000000000000000000000000000
      0000B47B0900FFFFFF00FFFDF400FFFCF200FFFCF400FFFFF800D6BB9C00FFFF
      F800FFFCF300FFFCF300FFFFF700D6BB9B00FFFFFF00CFA95C00DBBA7D00F6E6
      CD00F6E6CE00F6E6CE00F6E6CE00F6E6CE00F6E6CE00F6E6CE00F6E6CF00F7E7
      D000F8E8D300E0C28C00C6A259000000000000000000B47A0800FFFFFF00FFFD
      F100FFFCF100FFFDF100FFFDF100FFFDF200FFFFF600D6BB9A00FFFFF600FFFD
      F200FFFDF200FFFFF600D6BB9A00FFFFF600FFFDF200FFFDF200FFFFF600E5C0
      98003DA7F10078EAFD0060E0FB0063E0FA0066E0FA0067E1FA0067E1FA0068E1
      FA006AE3FB0066E6FC0053ACE900000000000000000000000000E4E4E4006E6E
      6E00636363005F5F5F0085848400FFFFFF009857080099580900FFFFFF002F58
      85003676A200AFF6FF00A1E5FF0095D7F60089CAEB0080C0E1007EBFDE002144
      6F0030548100FFFFFF0000974900009A4B00FFFDFD0089868500494948004D4D
      4D005D5D5D00E2E2E20000000000000000000000000000000000B47A0800FFFF
      FF00FFF7E400FEF6E300FEF6E300FEF6E300FEF6E300FFF7E400FFFAE900D5B6
      9200FFFAE900FFF7E400FEF6E300FEF6E300FEF6E300FEF6E300FEF6E300FFF7
      E400FFFAE900D5B69200FFFAE900FFF7E400FEF6E300FEF6E300FEF6E300FEF6
      E300FFF7E400FFFFFF00B47A0800000000000000000000000000000000000000
      0000B47A0800FFFFFF00FFFDF100FFFCF000FFFDF200FFFFF600D6BB9A00FFFF
      F600FFFDF200FFFDF200FFFFF600D7BB9A00FFFFFB00FFFFFF00D1AB5E00B176
      0000B2780100B2780100B2770100B2770000B1770000B2770100B47B0900B57E
      0F00B67F1100C9A65B00000000000000000000000000B47B0800FFFFFF00D4B7
      9200D4B89300D5B89500D5B89500D5B89500D7BB9800D8BD9B00D7BB9800D5B8
      9500D5B89500D7BB9800D8BD9B00D7BB9800D5B89500D5B89500D8BB9800E2C0
      98005BAADF0056C7F3006ADCF50076EAF70077EAF80078EBF8007AEBF8007AEC
      F70072DFF40065CCF1005CB0E700000000000000000000000000000000000000
      0000C1C1C1006C6A6900BFC3C500CAE4F2007BB2CF006598B500F1F5F4000034
      6B0026608F00164876001948740044769D0084C4E5008ED1F00082C4E3000923
      4E00022E6500FFFFFF0086AECB007397B400ABBAC400AEB1B00056545300ABAB
      AB00000000000000000000000000000000000000000000000000B47A0800FFFF
      FF00FFF8E400FFF8E400FFF9E500FFF9E500FFF9E500FFF9E500FFFCE900D6B8
      9200FFFCE900FFF9E500FFF9E500FFF9E500FFF9E500FFF9E500FFF9E500FFF9
      E500FFFCE900D6B89200FFFCE900FFF9E500FFF9E500FFF9E500FFF9E500FFF8
      E400FFF8E400FFFFFF00B47A0800000000000000000000000000000000000000
      0000B47B0800FFFFFF00D4B79200D4B89300D5B89500D7BB9800D8BD9B00D7BB
      9800D5B89500D5B89500D7BB9800D8BD9B00D7BB9900D7BB9A00D9BFA000DBC3
      A700DCC5AA00DCC4A900DBC3A800DBC2A700DAC1A500FFFFFF00B57D0C000000
      00000000000000000000000000000000000000000000B47A0800FFFFFF00FFFB
      EA00FFFAEA00FFFBEB00FFFBEB00FFFBEC00FFFEF000D6BA9600FFFEF000FFFB
      EC00FFFBEC00FFFEF000D6BA9600FFFEF000FFFBEC00FFFBEC00FFFEF000DBBB
      9400FFFAEB00A6D0E90065B4EA003EA3EB0041A6EE0047AAF4004DABF00050AB
      EC0062B2E8009FCEEE0000000000000000000000000000000000000000000000
      0000000000000000000099B7C6006CA6C2005991AD00447B9800BFCDD2000437
      6C0019608F003177A7004583B20042729D00264B750038648A0028487000142F
      5D0005326600DAEDF3006093AF004B7E9B0032637E006A818C00000000000000
      0000000000000000000000000000000000000000000000000000B47B0800FFFF
      FF00D4B38A00D4B58C00D5B58D00D5B58D00D5B58D00D5B68E00D7B89000D8BA
      9300D7B89000D5B68E00D5B58D00D5B58D00D5B58D00D5B58D00D5B58D00D5B6
      8E00D7B89000D8BA9300D7B89000D5B68E00D5B58D00D5B58D00D5B58D00D4B5
      8C00D4B38A00FFFFFF00B47B0800000000000000000000000000000000000000
      0000B47A0800FFFFFF00FFFBEA00FFFAEA00FFFBEC00FFFEF000D6BA9600FFFE
      F000FFFBEC00FFFBEC00FFFEF000D6BA9600FFFEF000FFFCED00FFFCEE00FFFF
      F200D7BB9900FFFFF300FFFDEF00FFFCEE00FFFCEE00FFFFFF00B47B09000000
      00000000000000000000000000000000000000000000B47A0800FFFFFF00FFF7
      E400FEF6E300FEF6E300FEF6E300FFF7E400FFFAE900D5B69100FFFAE900FFF7
      E400FFF7E400FFFAE900D5B69100FFFAE900FFF7E400FFF7E400FFFAE900D6B7
      9100FFFBE800FFFAE300FFFAE100FFFCE200FFFFFF00C6770000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D3D3D3007DA3BC0081C1E00077B8D9006BACD000D4E7F0000435
      6A0019659700337FB000458AB9005792BF00588AB600446B97002E4F7A00162F
      5E0004306500E0F7FF0073B7D90071B0D20066A2C4005D7F9500D2D2D2000000
      0000000000000000000000000000000000000000000000000000B47A0800FFFF
      FF00FFF6DF00FFF6E000FFF7E100FFF7E100FFF7E100FFF7E200FFFAE500D7B7
      9000FFFAE500FFF7E200FFF7E100FFF7E100FFF7E100FFF7E100FFF7E100FFF7
      E200FFFAE500D7B79000FFFAE500FFF7E200FFF7E100FFF7E100FFF7E100FFF6
      E000FFF6DF00FFFFFF00B47A0800000000000000000000000000000000000000
      0000B47A0800FFFFFF00FFF7E400FFF7E400FFF7E500FFFBEA00D6B79200FFFB
      EA00FFF7E500FFF7E500FFFBEA00D6B79200FFFBEA00FFF7E500FFF7E500FFFB
      EA00D6B79200FFFBEA00FFF7E500FFF7E400FFF7E400FFFFFF00B47A08000000
      00000000000000000000000000000000000000000000B47A0800FFFFFF00FFF6
      E100FEF5E100FFF5E100FFF5E100FFF6E200FFF9E700D5B59000FFF9E700FFF6
      E200FFF6E200FFF9E700D5B59000FFF9E700FFF6E200FFF6E200FFF9E700D5B5
      9000FFF9E700FFF6E200FFF6E100FFF6E100FFFFFF00B9790000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000687B960088C9E90088C9E9007CBCDC0070B1D300D0E8F3001B46
      7700145D91002D7DAF003C85B500478AB9004783B1003B6D9A00274E79000F2A
      59001F4D7E00DDF6FF0079BCDD0075B3D50070ADCE00639EC2006B809A000000
      0000000000000000000000000000000000000000000000000000B47A0800FFFF
      FF00FEF4D900FDF2D900FDF3DA00FDF3DA00FDF3DA00FEF4DB00FFF7DF00D4B5
      8B00FFF7DF00FEF4DB00FDF3DA00FDF3DA00FDF3DA00FDF3DA00FDF3DA00FEF4
      DB00FFF7DF00D4B58B00FFF7DF00FEF4DB00FDF3DA00FDF3DA00FDF3DA00FDF2
      D900FEF4D900FFFFFF00B47A0800000000000000000000000000000000000000
      0000B47A0800FFFFFF00FFF8E400FFF8E400FFF9E500FFFCE900D6B89200FFFC
      E900FFF9E500FFF9E500FFFCE900D6B89200FFFCE900FFF9E500FFF9E500FFFC
      E900D6B89200FFFCE900FFF9E500FFF8E400FFF8E400FFFFFF00B47A08000000
      00000000000000000000000000000000000000000000B47A0800FFFFFF00FFF7
      E100FFF7E200FFF8E300FFF8E300FFF8E400FFFBE700D7B89000FFFBE700FFF8
      E400FFF8E400FFFBE700D7B89000FFFBE700FFF8E400FFF8E400FFFBE700D7B8
      9000FFFBE700FFF8E400FFF7E200FFF7E100FFFFFF00B57A0600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C7C9CB00235484009FE3FF008CCEED0081C2E20076B7D900B0D5E9006A8D
      AD00084173002075A900317FB1003982B300387AAA002C6492001A447100062B
      5E007398B700C1E8FB007FC1E20079B9DA0075B2D30072B0D0001F487600B6BC
      C300000000000000000000000000000000000000000000000000B47A0800FFFF
      FF00FEF2D700FDF1D700FDF2D800FDF2D800FDF2D800FEF3D900FFF6DD00D4B4
      8A00FFF6DD00FEF3D900FDF2D800FDF2D800FDF2D800FDF2D800FDF2D800FEF3
      D900FFF6DD00D4B48A00FFF6DD00FEF3D900FDF2D800FDF2D800FDF2D800FDF1
      D700FEF2D700FFFFFF00B47A0800000000000000000000000000000000000000
      0000B47B0800FFFFFF00D4B38A00D5B58C00D5B68E00D7B89000D8BA9300D7B8
      9000D5B68E00D5B68E00D7B89000D8BA9300D7B89000D5B68E00D5B68E00D7B8
      9000D8BA9300D7B89000D5B68E00D5B58C00D4B38A00FFFFFF00B47B08000000
      00000000000000000000000000000000000000000000B47B0900FFFFFF00D3B2
      8800D3B48A00D4B48B00D4B48B00D4B58C00D5B78E00D7B99100D5B78E00D4B5
      8C00D4B58C00D5B78E00D7B99100D5B78E00D4B58C00D4B58C00D5B78E00D7B9
      9100D5B78E00D4B58C00D3B48A00D3B28800FFFFFF00B47B0800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005872910031689600A4E9FF0092D5F50088C9E9007EBEE00080BCDB00C7DF
      EC00254F7D000B4576001C699B002671A200246897001A5683000B386A002754
      8300DAF7FF0099D9F70086C9E90080BFE00079B8D90077B6D600264B75005A76
      9300000000000000000000000000000000000000000000000000B47B0900FFFF
      FF00FFF4D700FFF5D800FFF5D900FFF5D900FFF5D900FFF6DA00FFF8DD00D7B5
      8A00FFF8DD00FFF6DA00FFF5D900FFF5D900FFF5D900FFF5D900FFF5D900FFF6
      DA00FFF8DD00D7B58A00FFF8DD00FFF6DA00FFF5D900FFF5D900FFF5D900FFF5
      D800FFF4D700FFFFFF00B47B0900000000000000000000000000000000000000
      0000B47A0800FFFFFF00FFF6DE00FFF6DF00FFF7E100FFFAE400D5B78E00FFFA
      E400FFF7E100FFF7E100FFFAE400D5B78E00FFFAE400FFF7E100FFF7E100FFFA
      E400D5B78E00FFFAE400FFF7E100FFF6DF00FFF6DE00FFFFFF00B47A08000000
      00000000000000000000000000000000000000000000B47A0800FFFFFF00FFF5
      DC00FFF5DD00FFF6DE00FFF6DE00FFF6DF00FFF9E200D5B68E00FFF9E200FFF6
      DF00FFF6DF00FFF9E200D5B68E00FFF9E200FFF6DF00FFF6DF00FFF9E200D5B6
      8E00FFF9E200FFF6DF00FFF5DD00FFF5DC00FFFFFF00B47A0800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000254C7A003E7CA600B0F7FF00A1E5FF0095D7F60088C9EA007CBEDF009CCF
      E700A9B8C600527297001744760012427400124375001945770051749900B5CE
      DF00C5FBFF009EE4FF0094D7F60089CAEB0080C0E1007FC0DF00284A7300264E
      7A00000000000000000000000000000000000000000000000000B57B0900FFFF
      FF00DEB27E00E3B48000E3B58200E3B68200E3B58200E3B68200E1B78500E0B8
      8900E1B78500E3B68200E4B58100E3B58200E3B68200E3B58200E4B58100E3B6
      8200E1B78500E0B88900E1B78500E3B68200E3B58200E3B68200E3B58200E3B4
      8000DEB27E00FFFFFF00B57B0900000000000000000000000000000000000000
      0000B47A0800FFFFFF00FFF3D800FEF2D800FFF3DA00FFF7DE00D5B48A00FFF7
      DE00FFF3DA00FFF3DA00FFF7DE00D5B48A00FFF7DE00FFF3DA00FFF3DA00FFF7
      DE00D5B48A00FFF7DE00FFF3DA00FEF2D800FFF3D800FFFFFF00B47A08000000
      00000000000000000000000000000000000000000000B47A0800FFFFFF00FEF1
      D500FDF0D500FDF1D600FDF1D600FEF2D700FFF5DB00D4B38900FFF5DB00FEF2
      D700FEF2D700FFF5DB00D4B38900FFF5DB00FEF2D700FEF2D700FFF5DB00D4B3
      8900FFF5DB00FEF2D700FDF0D500FEF1D500FFFFFF00B47A0800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000134476002A649100164976001948740044769D0084C4E5008CD0EF007DC0
      E000253B61007A90AD00000000000000000000000000000000007894B0003F74
      9C00114675001847740043769D0084C4E5008ED1F00082C4E3000E2650001640
      7200000000000000000000000000000000000000000000000000B67B0800FFFF
      FF004FC6FF0057C9FF0056CBFF0054CCFF0056CBFF0058CAFF0053CBFF00ECBA
      810053CBFF0059CAFF0059CAFF0056CBFF0054CCFF0056CBFF0059CAFF0059CA
      FF0053CBFF00ECBA810053CBFF0058CAFF0056CBFF0054CCFF0056CBFF0057C9
      FF004FC6FF00FFFFFF00B67B0800000000000000000000000000000000000000
      0000B47B0900FFFFFF00FFF4D700FFF5D800FFF6DA00FFF8DD00D7B58A00FFF8
      DD00FFF6DA00FFF6DA00FFF8DD00D7B58A00FFF8DD00FFF6DA00FFF6DA00FFF8
      DD00D7B58A00FFF8DD00FFF6DA00FFF5D800FFF4D700FFFFFF00B47B09000000
      00000000000000000000000000000000000000000000B47A0800FFFFFF00FEF0
      D200FDEFD200FDF0D300FDF0D300FEF1D400FFF4D800D4B28700FFF4D800FEF1
      D400FEF1D400FFF4D800D4B28700FFF4D800FEF1D400FEF1D400FFF4D800D4B2
      8700FFF4D800FEF1D400FDEFD200FEF0D200FFFFFF00B47A0800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000144576001C6291003177A7004583B20042729D00264B750038648A002647
      6F00132E5C00133E70000000000000000000000000000000000010417300185F
      8F002F75A7004483B20042729D00264B750038648A002848700017315F001742
      7300000000000000000000000000000000000000000000000000B67B0700FFFF
      FF0056C6FF005ECAFF0057CEFF00FAA01E0057CEFF005ECBFF005ACBFF00F2B9
      7B005BCBFF0062CAFF0060CBFF0057CEFF00FAA01E0057CEFF0060CBFF0062CA
      FF005BCBFF00F2B97B005ACBFF005ECBFF0057CEFF00FAA01E0057CEFF005ECA
      FF0056C6FF00FFFFFF00B67B0700000000000000000000000000000000000000
      0000B57B0900FFFFFF00DEB27D00E3B47F00E3B68100E1B78400E0B88800E1B7
      8400E3B68100E3B68100E1B78400E0B88800E1B78400E3B68100E3B68100E1B7
      8400E0B88800E1B78400E3B68100E3B47F00DEB27D00FFFFFF00B57B09000000
      00000000000000000000000000000000000000000000B47B0900FFFFFF00FFF2
      D200FFF2D300FFF3D500FFF3D500FFF3D500FFF6D900D7B48700FFF6D900FFF3
      D500FFF3D500FFF6D900D7B48700FFF6D900FFF3D500FFF3D500FFF6D900D7B4
      8700FFF6D900FFF3D500FFF2D300FFF2D200FFFFFF00B47B0900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000154475001D689900337FB000458AB9005792BF00588AB600446B96002E4F
      7A00193260001541720000000000000000000000000000000000144375001C68
      9900337FB000458AB9005792BF00588AB600446B97002E507A00193260001641
      7300000000000000000000000000000000000000000000000000B67B0700FFFF
      FF0054C7FF0057CEFF00F0961000E9981B00F096100057CFFF0059CCFF00F3B9
      7B005CCAFF0061CBFF0059CFFF00F0961000E9981B00F096100059CFFF0061CB
      FF005CCAFF00F3B97B0059CCFF0057CFFF00F0961000E9981B00F096100057CE
      FF0054C7FF00FFFFFF00B67B0700000000000000000000000000000000000000
      0000B67B0800FFFFFF004FC6FF0058C9FF0059CAFF0053CBFF00ECBA800053CB
      FF0059CAFF0059CAFF0053CBFF00ECBA800053CBFF0059CAFF0059CAFF0053CB
      FF00ECBA800053CBFF0059CAFF0058C9FF004FC6FF00FFFFFF00B67B08000000
      00000000000000000000000000000000000000000000B57B0900FFFFFF00DEB2
      7C00E3B47E00E4B57F00E4B57F00E3B68000E1B78300E0B88700E1B78300E3B6
      8000E3B68000E1B78300E0B88700E1B78300E3B68000E3B68000E1B78300E0B8
      8700E1B78300E3B68000E3B47E00DEB27C00FFFFFF00B57B0900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000184475001A6395002E7DAF003C85B500478AB9004783B1003B6D9A00284F
      7A0015305E001C4A7C0000000000000000000000000000000000184475001A63
      95002E7DAF003C85B500478AB9004783B1003B6D9A00284F7A0015305E001C4A
      7C00000000000000000000000000000000000000000000000000B67B0700FFFF
      FF0051C7FF00F1850000EA8A0000E68B0000EA8A0000F186000055CCFF00F1B9
      7B005AC9FF005DCBFF00F3850000EA8A0000E68B0000EA8A0000F38500005DCB
      FF005AC9FF00F1B97B0055CCFF00F1860000EA8A0000E68B0000EA8A0000F185
      000051C7FF00FFFFFF00B67B0700000000000000000000000000000000000000
      0000B67B0700FFFFFF0055C5FF0060C7FF0061C9FF0059C9FF00F1B97A0059C9
      FF0061C9FF0061C9FF0059C9FF00F1B97A0059C9FF0061C9FF0061C9FF0059C9
      FF00F1B97A0059C9FF0061C9FF0060C7FF0055C5FF00FFFFFF00B67B07000000
      00000000000000000000000000000000000000000000B67B0800FFFFFF004DC5
      FF0056C8FF0058C9FF0058C9FF0056C9FF0051CAFF00EBB97F0051CAFF0056C9
      FF0056C9FF0051CAFF00EBB97F0051CAFF0056C9FF0056C9FF0051CAFF00EBB9
      7F0051CAFF0056C9FF0056C8FF004DC5FF00FFFFFF00B67B0800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007992AB00154C7B002378AB00317FB2003982B300387AAA002D6592001D47
      7400143868007993AD00000000000000000000000000000000007992AB00154C
      7B002378AB00317FB2003982B300387AAA002D6592001D477400143868007993
      AD00000000000000000000000000000000000000000000000000B67C0900FFFF
      FF004BC4FF004EC8FF004DCBFF004CCBFF004DCBFF004FC9FF004EC7FF00E9B5
      790050C6FF0054C7FF0050C9FF004DCBFF004CCBFF004DCBFF0050C9FF0054C7
      FF0050C6FF00E9B579004EC7FF004FC9FF004DCBFF004CCBFF004DCBFF004EC8
      FF004BC4FF00FFFFFF00B67C0900000000000000000000000000000000000000
      0000B67C0900FFFFFF004EC3FF0056C5FF0057C6FF0051C6FF00EAB5780051C6
      FF0057C6FF0057C6FF0051C6FF00EAB5780051C6FF0057C6FF0057C6FF0051C6
      FF00EAB5780051C6FF0057C6FF0056C5FF004EC3FF00FFFFFF00B67C09000000
      00000000000000000000000000000000000000000000B67C0900FFFFFF004CC3
      FF0054C5FF0056C6FF0056C6FF0055C6FF004FC6FF00E9B579004FC6FF0055C6
      FF0055C6FF004FC6FF00E9B579004FC6FF0055C6FF0055C6FF004FC6FF00E9B5
      79004FC6FF0055C6FF0054C5FF004CC3FF00FFFFFF00B67C0900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000264F7C00144D7C001F6B9C002772A300246897001C5885001541
      710028518000000000000000000000000000000000000000000000000000264F
      7C00144D7C001F6B9C002772A300246897001C58850015417100285180000000
      0000000000000000000000000000000000000000000000000000B67E0E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B67E0E00000000000000000000000000000000000000
      0000B67E0E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B67E0E000000
      00000000000000000000000000000000000000000000B67E0E00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B67E0E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006C89A500133F73001344750013447500134274006C89
      A800000000000000000000000000000000000000000000000000000000000000
      00006C89A500133F73001344750013447500134274006C89A800000000000000
      0000000000000000000000000000000000000000000000000000C9A45A00B67E
      0E00B67C0900B67B0700B67B0700B67B0700B67B0700B67B0700B67B0800B57B
      0800B67B0800B67B0700B67B0700B67B0700B67B0700B67B0700B67B0700B67B
      0700B67B0800B57B0800B67B0800B67B0700B67B0700B67B0700B67B0700B67B
      0700B67C0900B67E0E00C9A45A00000000000000000000000000000000000000
      0000C9A45A00B67E0E00B67C0900B67B0700B67B0700B67B0800B57B0800B67B
      0800B67B0700B67B0700B67B0800B57B0800B67B0800B67B0700B67B0700B67B
      0800B57B0800B67B0800B67B0700B67B0700B67C0900B67E0E00C9A45A000000
      00000000000000000000000000000000000000000000C9A45A00B67E0E00B67C
      0900B67B0700B67B0700B67B0700B67B0700B67B0800B57B0800B67B0800B67B
      0700B67B0700B67B0800B57B0800B67B0800B67B0700B67B0700B67B0800B57B
      0800B67B0800B67B0700B67B0700B67C0900B67E0E00C9A45A00000000000000
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
      0000000000000000000000000000000000000000000000000000DADADA00D8D8
      D800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3D3D300BFBFBF00BFBFBF00D3D3D300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00C7C7C700DCDC
      DC000000000000000000DCDCDC00C7C7C700BBBBBB00C7C7C700DCDCDC000000
      000000000000DCDCDC00C7C7C700CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7D7D700687687008E9D
      A700C1C1C100D3D3D300DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBCB
      CB00BDBDBD00BBBBBB00C0C0C000D1D1D1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D000C2C2
      C200D0D0D0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFCF
      CF00CCCCCC00CFCFCF00858483006B6967006B69670085858200CFCFCF00CCCC
      CC00D0D0D0000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840084848400BEBE
      BE00BFBFBF00BCBCBC00B6B6B600878787008484840087878700B6B6B600BCBC
      BC00BFBFBF00BEBEBE0084848400848484000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00B9AD9600B6AD
      9700B6AD9700B6AD9700B6AD9700B6AD9700B7AC9800B6AC9B008B938D005750
      50003D576E00809AB000BAAC9600B9AC9700B7AD9700B6AD9700B6AD9700B6AD
      9700B6AD9700B6AD9700B6AD9700B6AD9700B6AD9700B6AD9700B6AD9700B9AD
      9600CCCCCC000000000000000000000000000000000000000000CBCBCB00B589
      3200B7831900B7841B00B8851C00B6965900CCCCCC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00B5924C00BE89
      1F00B5924C00CCCCCC0000000000000000000000000000000000000000000000
      0000DEDEDE00D1D1D100C7C7C700C0C0C000BDBDBD00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BCBCBC00B9B9B9008483
      810074727000B1B1B1006B696700ECEAE900ECEAE9006B696700B1B1B1007371
      6F0087848200D0D0D00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008787870051515100848484008181810084848400515151008787
      8700848484008484840084848400848484000000000000000000000000000000
      00000000000000000000000000000000000000000000B7852300B67E0E00B47B
      0900B47A0700B47A0700B47A0700B47A0700B47A0700B77B0500C17F00004960
      69005C73800069BCF200326E980080723E00C6850A00BB7F0A00B57C0800B47A
      0700B47A0700B47A0700B47A0700B47A0700B47A0700B47A0700B47B0900B67E
      0E00B78523000000000000000000000000000000000000000000B68A3200EACB
      8D00EBB25600E8AB4A00DBA03B00B9861E00B5934E00CCCCCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCCCCC00B4934F00C88F2500E7A6
      3E00C9932C00B4924D00D0D0D000000000000000000000000000D3D3D300C0C0
      C000AEADAB00A29F9A0098948B0095918900948F8500938E8400928E8400928E
      8300928D8300928D8300928D8300928E8400938F8500979287007C7976009C9A
      9A00ABA9A7006B69670095939200DEDCDB00DEDCDB008D8B8A006B696700ABA9
      A7009E9C9C008F8D8C0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDDDDD00C2C2C200AAAA
      AA0091919100868686004D4D4D00BBBBBB00B7B7B700BDBDBD004D4D4D008686
      860091919100AAAAAA00C2C2C200DDDDDD000000000000000000000000000000
      00000000000000000000000000000000000000000000B67E0E00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B7D5
      ED0067BDEB00A5E2FF007CCCFF004193D8002464A500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B67E0E000000000000000000000000000000000000000000C08E2A00FFE1
      B000E5AC4E00E5AB4C00E5AA4900DEA23D00B9861D00B5934F00CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CCCCCC00B4934F00C78E2500E4A43C00E5AA
      4700E8B25700CC9A3A00B9964F000000000000000000D0D0D000A4A19B009791
      8700A19B9100B1AAA100C5BCB400CBC3BA00E3D8D000E5DCD400EADFD700EDE2
      DC00F2E6DF00F3E7E000EEE4DD00EBE0D800E7DED600E9DDD50084807E00A7A6
      A400DDDAD900D3D1CF00DAD7D600D8D5D400D9D6D500DAD7D600D3D1CF00DEDA
      DA00ABA9A7007D7B790000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000082828200DBD9D700CAC8C600AAA7A500848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B47B0900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006CA0C400F0FEFF00A9DEFC0054B5FC000B96FF00255D9300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B47B09000000000000000000000000000000000000000000CA9B4200FFDD
      AE00E5AE5200E5AD5000E4AB4C00E5AA4900DEA23D00B9861D00B6944F00D5D5
      D500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CCCCCC00B4934F00C78E2500E4A43B00E4A94600E5AE
      5100EEBE7100FFECCB00B68216000000000000000000A3A09900A09B9100C8C1
      B700D2CAC100D3CBC200D7CEC500D9D0C800DDD3CB00DFD6CE00E3D9D100E6DC
      D500EBE0D900ECE1DA00E7DDD600E5DBD300E2D9D100E6DBD200C2BBB4006F6C
      6A00CDCBCB00D3D1D000B4B3B1008887850082807F00B6B4B200D3D1D000CECC
      CB0073706E00A9A8A800D2D2D200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000079797900CCCAC900BCBCB900A09E9B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B47A0700FFFFFF00FFFF
      FF00DCB27500C6811C00C6821F00C6821F00C6821F00C6811C00DEB37600FFFF
      FF0094AEC30075B8DA00EBFBFF005DBCFF001296FF000F96FF00285E9200C5BB
      B200B6B3B000B0AFAF00AEAEAE00AEAEAE00AEAEAE00CECDCD00FFFFFF00FFFF
      FF00B47A07000000000000000000000000000000000000000000BA861D00FFE7
      C400ECBA6B00E5AF5400E5AE5100E4AB4C00E5AA4900DEA23D00B9861E00B8A7
      8300D7D7D7000000000000000000000000000000000000000000000000000000
      000000000000CCCCCC00B4934F00C78E2500E4A43B00E4A94600E4AD5100EDBD
      6E00FFE7C400D5A75600C6A25B00000000000000000099948900C8C1B700CBC4
      BA00CEC6BD00D0C8BF00D4CBC200D7CEC600DBD1C900DED5CD00E2D8D000E5DB
      D400E9DED700EBDFD800E6DCD500E4DAD200E4DBD3009B969300726F6E008F8C
      8A00CFCDCB00B2B0AE0077747300B4ADA6008F8B820078767500B4B2B000D0CE
      CC00918E8C007A76740092908E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7D7D7006D6D6D00B9B8B500ABA9A800908E8C006F6F6F00D7D7
      D700000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B47A0700FFFFFF00FEFF
      FF00C6821D00FDD8A600F7D8A000F7D79F00F7D8A000FDD8A600C7831E00FFFF
      FF00BCB6B300196FC60077DBFF00DDF5FF0062BDFF001497FF001197FF002A60
      9400FFFFF900FEFAF600F7F6F400F6F5F400FAFAFA00AEAEAE00FFFFFF00FFFF
      FF00B47A07000000000000000000000000000000000000000000CAAB6C00E4BA
      7800FFE5C000ECBA6B00E5AF5400E5AE5100E5AB4C00E5AA4900D89E3800B784
      1B00B8A68200D8D8D80000000000000000000000000000000000000000000000
      0000CCCCCC00B4934F00C78E2500E4A43B00E4A94600E4AD5100EDBD6E00FFE7
      C300D4A65400C6A45E0000000000000000000000000099938900CAC2B900CAC3
      B900CDC5BC00D0C8BF00D4CBC200D7CEC600DBD1C900DED5CD00E2D8D000E5DB
      D400E9DED700EADFD800E6DCD500E4DAD200E6DCD40071706F00D4D2D100CDCB
      CA00C9C6C5008A888600B6B1A800D1C8BE009D968B00B8B8B7008D8B8900C9C6
      C500CDCCCB00D7D5D5007D7B7900000000000000000000000000000000000000
      000000000000D3D3D300BFBFBF00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00B6B6B60062626200A6A5A4009A99970082807F0064646400B6B6
      B600BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BFBFBF00D3D3D3000000
      00000000000000000000000000000000000000000000B47A0700FFFFFF00FCFF
      FF00C6831F00FBD7A500F4D19500F4D09400F4D19500FBD7A500C7842100FFFF
      FF00B6B4B300FFFFFA00196DC20078DBFF00DEF6FF0062BDFF001497FF001097
      FF00275E9200FFFCF300F7F3F000F1EFEF00F8F8F800AFAFAF00FEFDFF00FFFF
      FF00B47A0700000000000000000000000000000000000000000000000000C5A2
      5A00E9C18200FFE5C000ECBA6B00E5AF5400E5AE5100E5AB4C00E6AA4900D49C
      3500B7841B00BAA88300DDDDDD0000000000000000000000000000000000D0D0
      D000B4934F00C78E2400E4A33B00E4A94600E4AD5100EDBD6E00FFE7C300D4A6
      5400C6A45E00000000000000000000000000000000009A948A00C9C1B800C9C2
      B800CCC4BB00CEC6BD00D2C9C000D5CCC400D9CFC700DCD3CB00E1D6CE00E4D9
      D200E9DDD600EADED700E5DAD300E3D9D000E5DBD20074737100EBE9E900E8E6
      E600C4C2C0008C8A8800B7B2A900D0C8BE009E978C00A9A9A9008B888600C4C3
      C100E9E7E600EEECEB00807E7C00000000000000000000000000000000000000
      0000000000007979790056565600555555005353530052535300535353005353
      5300535353005353530051515100747473006F6F6F0068686700525253005454
      5400545455005455550055555500555555005656560056565600797979000000
      00000000000000000000000000000000000000000000B47A0700FFFFFF00FAFF
      FF00C7832000FBD6A400F2CC8E00F2CC8E00F2CC8E00FBD6A400C8842100FFFF
      FF00B1B2B300FFFBF900FFF5ED00196DC10078DBFF00DEF6FF0062BDFF001497
      FF000F96FF00265E9100FFF9F000F4F0ED00F9F8F800AFAFAF00FBFBFD00FFFF
      FF00B47A07000000000000000000000000000000000000000000000000000000
      0000C6A25C00E9C18200FFE5C000ECBB6B00E5AF5400E5AE5100E5AB4C00E6AA
      4900D49C3500B7841B00BEB8AC0000000000000000000000000000000000B995
      4C00C78C1F00E4A13800E3A84500E4AD5100EDBD6E00FFE7C300D4A65400C6A4
      5E0000000000000000000000000000000000000000009A958900C8C0B700C7C0
      B600D4CDC400E4DDD600F2EDE500F6F1EA00FFFCF500FFFBF400FFFBF400FEFA
      F300FDFAF300FDFAF300FEFAF300FFFBF400FFFFF900AFABA9007B7876009F9B
      9B00D1CFCF00A9A6A400827F7E00B8B1A90095908700837F7D00ABA8A600D2D0
      CF00A09D9C00817E7C00A5A4A100000000000000000000000000000000000000
      000000000000696969006969690077767500AFADA900A9A6A300A5A3A000A2A0
      9D009F9D9A009C9A97009996930094928F00918F8C008E8C89008C8A87008886
      840086848000827F7D007E7C7A007C7A78006362610069696900696969000000
      00000000000000000000000000000000000000000000B47A0700FFFFFF00F7FD
      FF00C7842000FBD7A500F1C98900F1C98900F1C98900FBD7A500C8842100FCFF
      FF00B0B1B200F9F8F800F1EDE900FDF2EA001A6DC20078DBFF00DEF6FF0062BD
      FF001497FF000F96FF00275E9100FFF7EC00FFFDFA00B1B0B000F9F9FA00FFFF
      FF00B47A07000000000000000000000000000000000000000000000000000000
      000000000000C6A35C00E3B97700FFE6C200ECBB6C00E5AF5400E5AE5100E5AB
      4C00E6AA4900D49C3500B7841B00BCB6AB00DCDCDC0000000000CBCBCB00C792
      2600FFF2CA00E9B25800E3AC4D00EDBC6D00FFE7C300D4A65400C6A45E000000
      000000000000000000000000000000000000000000009A958A00D3CCC300F6F1
      EA00EFE9E300DAD5CD00CAC2BA00BCB3AB00B4ABA100B4AAA100B6ACA200B8AE
      A600BAB0A600BBB0A800B9ADA500B7ACA400B8ADA300BDB1A900BDB4AB007F7C
      7B00B9B6B400CECCCA00A8A5A4008A8987008F8C8A00A9A6A500CECCCA00B9B6
      B400827F7D00CCCCCC0000000000000000000000000000000000000000000000
      00000000000068686800696969004F4F4F00A9A7A400A09E9B009D9B98009A98
      95009795920094928F00918F8C008E8B88008A8885008785820084827F00807E
      7C007E7C78007977750076747200767471005253530069696900686868000000
      00000000000000000000000000000000000000000000B47A0700FFFFFF00F5FA
      FF00C7842000FCD7A600F0C68200F0C68200F0C68200FCD7A600C8852100FAFF
      FF00B0B1B300F8F8F800EAE7E600EFEBE700FBF0E8001A6DC20079DBFF00DEF6
      FF0062BDFF001497FF000F96FF00275E9200FFFFFD00B7B4B200F8F7F800FFFF
      FF00B47A07000000000000000000000000000000000000000000000000000000
      00000000000000000000DBC9A400D4A55300FFE7C300EDBB6C00E5AF5400E5AE
      5100E5AB4C00E6AA4900D49C3500B8841A00B9B3A900C0C0C00080828700B490
      4700D5A64C00FFE9C000F2C67E00FFE6C200D4A65300C6A45E00000000000000
      000000000000000000000000000000000000000000009B958B00F2ECE400B8AF
      A600A59C9100ABA29800BBB2A900C5BAB100D1C8BF00D5CBC200E5DBD300E8DE
      D700ECE1DA00EEE2DB00E9DFD800E6DCD400E0D6CE00D7CDC3008D8A8800B6B5
      B300E6E5E500E4E4E300EEECEB00BBB9B700BBB9B700EEECEB00E5E4E400E7E6
      E600BAB8B600908D8B0000000000000000000000000000000000000000000000
      00000000000068686800696969004F4F4F00E9E8E700E3E2E100E5E4E300E5E4
      E400E5E5E400E6E5E400E6E5E400E6E5E400E6E5E500E6E6E500E7E6E500E7E6
      E500E7E6E500E7E6E500E6E5E400ECEBEA004F4F4F0069696900686868000000
      00000000000000000000000000000000000000000000B47A0800FFFFFF00F2F8
      FF00C7842100FCD7A600EFC37C00EFC37D00EFC37C00FCD7A600C8852200F8FC
      FF00B0B2B300F8F8F800E5E3E200E6E4E300ECE7E400F8EDE4001A6EC30079DB
      FF00DEF6FF0062BDFF001497FF001097FF002A619400C6BCB300FBF8F700FFFF
      FF00B47A08000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DBC9A300D4A65400FFE7C400EDBB6D00E5AF
      5500E5AE5100E5AB4C00E6AA4900D59C3400BC85140082828200A4A6AC00BCBE
      C600B5904800D2A34900FFECCA00D5A65400C6A45E0000000000000000000000
      00000000000000000000000000000000000000000000ACA8A100B5ACA400B5AD
      A200C9C1B800D3CBC200D6CDC400D9D0C800DDD3CB00DFD6CE00E3D9D100E6DC
      D500EADFD800ECE0D900E7DDD600E4DAD200E1D8D000E1D6CE00A5A19D00AEAC
      AB00BBBAB80083817F00A5A2A200D7D6D400D8D6D400A7A3A30086848200BFBD
      BB00B4B3B100A8A7A50000000000000000000000000000000000000000000000
      000000000000686868006969690050505000C5C3C200BBBAB9008F8D8B00918F
      8D00918F8D00918F8D00918F8D00918F8D00918F8D00918F8D00918F8D00918F
      8D00918F8D008F8D8B00BBBAB900C5C3C2005050500069696900686868000000
      00000000000000000000000000000000000000000000B47A0800FFFFFF00F0F5
      FF00C7842100FCD8A700EDBF7700EDC07800EDBF7700FCD8A700C9852200F5FA
      FF00B1B2B300F8F9F900E2E1E000E3E2E100E5E3E100EAE5E200F6EBE2001A6E
      C30079DBFF00DEF6FF0062BDFF001497FF001197FF0028609400FFFDF500FFFF
      FF00B57C09000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCCBA500CE9F4900FFE0B700EEBC
      6E00E5B05500E5AE5100E5AB4C00E6AA4900D69B3100B7892D00BCBBBE00BABC
      C100EAEFF800C4A15900C28D2400CAA55C000000000000000000000000000000
      00000000000000000000000000000000000000000000A9A69E00B7AFA400CBC5
      BA00CEC6BD00D1C9C000D4CBC200D7CEC600DBD1C900DED5CD00E2D8D000E5DB
      D400E9DED700EBDFD800E6DCD500E3D9D100DFD6CE00DED4CB00DDD4CB00A5A1
      9D0095929000D2C8BF0087848300F2F2F100F4F3F2008C898700000000009794
      9200AEACAA000000000000000000000000000000000000000000000000000000
      00000000000068686800696969005353540073717000BBBAB800999896008583
      8100868482008684820086848200868482008684820086848200868482008684
      82008583810099989600BBBAB800737170005353540069696900686868000000
      00000000000000000000000000000000000000000000B47B0800FFFFFF00EEF3
      FC00C8842100FCD8A700ECBC7000ECBC7100ECBC7000FCD8A700C9862200F3F7
      FF00B1B2B300F9F9F900E0DFDD00E1E0DE00E1E0DE00E3E1DE00E8E3DE00F4E9
      DE001B6FC30079DBFF00DEF6FF0062BDFF001397FF000C97FF00205F9B00FFFF
      FF00BA7F0B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EEE9DD00C5933400FFE0
      B800EEBC6E00E5B05500E5AE5100E5AB4C00E6AA4800D5992D00B3852900E7E9
      EB00DBDEE300A9ABB30000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0998F00CAC2B900CAC3
      B900CDC5BC00D0C8BF00D4CBC200D7CEC600DBD1C900DED5CD00E2D8D000E5DB
      D400E9DED700EADFD800E6DCD500E3D9D100DFD6CE00DCD2CA00D9D0C800D8CF
      C500D5CCC300D3CAC000A5A09C008C8A89008F8D8C00AEACAB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006868680069696900565656007E7E7E0068676600A9A7A6007573
      7100777573007775730077757300777573007775730077757300777573007775
      730075737100A9A7A600686766007E7E7E005656560069696900686868000000
      00000000000000000000000000000000000000000000B47B0800FFFFFF00EBF1
      FA00C8852100FCD9A800EAB86B00EBB96C00EAB86B00FCD9A800C9862200F0F5
      FC00B1B2B400F9F9F900DDDBDA00DEDDDC00DEDDDC00DEDDDC00DFDEDC00E4E0
      DC00F0E5DC001B6FC30079DBFF00DEF6FF005FBFFF000999FF0086796E007070
      7200C2860900DCDCDC0000000000000000000000000000000000000000000000
      0000D0D0D000C2C2C200D3D3D300000000000000000000000000EEE8DC00C694
      3400FFE1B900EEBD6F00E6B05500E5AE5100E5AB4C00E6AA4700D5992C00C696
      3600A6A7AC000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A09A8E00C9C1B800C9C2
      B800CCC4BB00CEC6BD00D2C9C000D5CCC400D9CFC700DCD3CB00E1D6CE00E4D9
      D200E9DDD600EADED700E5DAD300E2D7CF00DDD4CC00DAD0C800D6CDC500D4CA
      C100D0C8BF00CEC6BD00CCC4BB00CDC4BB00A29B8E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006868680069696900565656009C9C9C00565656005F5F5E006563
      6200656362006563620065636200656362006563620065636200656362006563
      6200656362005F5F5E00565656009C9C9C005656560069696900686868000000
      00000000000000000000000000000000000000000000B47B0800FFFFFF00E7ED
      F700C8852200FCD9A900E9B56500EAB66700E9B56500FCD9A900C9862300EDF1
      FA00B2B2B400F9FAFA00DAD9D800DCDBDA00DCDBDA00DCDBDA00DCDBDA00DDDC
      DA00E2DEDA00EEE3DA001B6FC40077DCFF00D7F9FF00AB9E93009F999600706F
      710071767500C1C1C1000000000000000000000000000000000000000000CCCC
      CC00959392008A8785009695950000000000000000000000000000000000E0DA
      D000C28D2400F8D49E00EFBD6E00E6B05500E5AE5100E6AD4D00E7A94300B37F
      1800C4C4C4000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A09A8F00C8C0B700C7C0
      B600D4CDC400E4DDD600F2EDE500F6F1EA00FFFCF500FFFBF400FFFBF400FEFA
      F300FDFAF300FDFAF300FEFAF300FEFAF400FFFBF400FFFCF500F6F0EA00F2EC
      E500E4DED500D5CEC500C8C0B700C9C1B800A09B8F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006D6D6D006767670054545400575757005D5B5B00605E5D006A68
      6700696766006967660069676600696766006967660069676600696766006967
      66006A686700605E5D005D5B5B005757570054545400676767006D6D6D000000
      00000000000000000000000000000000000000000000B47B0800FFFFFF00E6EC
      F500C8852200FCD9A900E8B25F00E8B26100E8B25F00FCD9A900C9862300EBF0
      F700B2B3B400FAFAFA00D8D7D500D9D8D600DAD9D600DAD9D600DAD9D600DAD9
      D600DBD9D700E0DCD700EAE0D7001670C900B6ABA400E8E5E200C3C2C0009B9B
      99007A8074009A69D000C7C7C700000000000000000000000000CCCCCC009695
      93009B989600B7B4B20088858300C7C7C700DBDBDB0000000000DBDBDB00C9C9
      C90083838400B98A2F00F8D29B00EFBD6F00E7B15700E9B05200C88D1E00A490
      6A0070707300BBBBBB00BEBEBE00BCBCBC00B7B7B700BBBBBB00BFBFBF00CECE
      CE000000000000000000000000000000000000000000A09A8E00D3CBC300F6F1
      EA00EFE9E300DAD5CD00CAC2BA00BCB3AB00B4ABA100B4AAA100B6ACA300B8AE
      A600BAB0A600BBB0A800B9AEA500B7ACA300B5ABA200B5AAA200BCB4AB00CAC3
      BA00DAD4CD00EEE9E200F6F0EA00D2CBC200A09A8E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BCBCBC00878787007A7A7A005454540046454600535150006D6B
      6A006C6A69006C6A69006C6A69006C6A69006C6A69006C6A69006C6A69006C6A
      69006D6B6A005351500046454600545454007A7A7A0087878700BCBCBC000000
      00000000000000000000000000000000000000000000B47B0800FFFFFF00E3E8
      F200C9862200FCD9A900E6AD5500E7AE5700E6AD5500FCD9A900CA862300E8EC
      F500B2B3B400FAFAFA00D4D3D100D4D3D200D5D4D300D5D4D300D5D4D300D5D4
      D300D5D4D300D6D4D300DAD6D300DFDAD600A29C9800D7D4D300E7E8E500868A
      8100CA8CC900C184BA00986BC8000000000000000000D0D0D00096959300A09C
      9B00C2C1BE00BCBBB9009A97950094929200ABABAB00AEACAC00ABABAB007F7F
      8200A4A5AA00BBB9BA00B6882C00F9D39D00EDBA6700D49C3200BB975000B9BB
      C200A5A4A400797775007D7B79007A7875008482800077757300777573008989
      8600C2C2C20000000000000000000000000000000000A29A8F00F1EBE400B7AF
      A600A59C9100ABA29800BBB2A900C5BAB100D1C8BF00D5CBC200E1D7CF00E8DE
      D700ECE1DA00EEE2DB00E9DFD800E6DCD400D9CEC700D2C9C000CFC5BD00BEB5
      AC00B4ABA200ABA19800B7AEA500F0EBE300A8A1960000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBCBCB00BBBBBB007878780053535300605F5E00706E
      6C006F6D6B006F6D6B006F6D6B006F6D6B006F6D6B006F6D6B006F6D6B006F6D
      6B00706E6C00605F5E005353530078787800BBBBBB00CBCBCB00000000000000
      00000000000000000000000000000000000000000000B47B0800FFFFFF00E1E5
      EE00C9852000FEDAA900FDD9A900FCD9A900FDD9A900FEDAA900CA862100E7E9
      F100B2B3B500FBFBFB00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA00FBFBFA00FDFCFC00FFFFFF00A19F9A0097999000DBA1
      DB00D099CE00C88FC2009F70CA0000000000000000009B999800ADABAA00D6D4
      D300C8C7C6009F9C9B0093908F009996940082817F0083817F0082807E00908E
      8D00C1BFBE00BBBBBD00E6E7E700C2923300B4801300B5A47F00F0F3FB00C5C4
      C500B9B8B600AEACAA00BEBCBB00D4D2D200D3D1D100D4D2D100CFCDCC00A7A5
      A3007E7C7A00BDBDBD00000000000000000000000000B0ABA400B4ACA300B5AD
      A200C9C1B800D3CBC200D6CDC400D9D0C800DDD3CB00DFD6CF00E3D9D100E6DC
      D500EADFD800ECE0D900E7DDD600E4DAD200E0D7CF00DDD3CB00DAD1C900D7CE
      C500D3CBC200D0C8BF00BFB7AF00B6AEA500B0ABA40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C4C4C400BCBCBC0078787800515252007370
      6F00726F6E00726F6E00726F6E00726F6E00726F6E00726F6E00726F6E00726F
      6E0073706F005152520078787800BCBCBC00C4C4C40000000000000000000000
      00000000000000000000000000000000000000000000B57B0800FFFFFF00DDE1
      E700D3AA6C00CA872300CA882500CA872600CA882500CA872400D3AB6E00E2E6
      EB00C5C6C800B3B4B500B2B3B500B2B3B500B2B3B500B2B3B500B2B3B500B2B3
      B500B2B3B500B2B3B500B2B3B500B3B4B500B4B5B600C8CBC900BC7FD400E4AE
      E300DAA6D800AB7BCF000000000000000000000000008A878500FFFFFF00FFFF
      FF00C0BEBD009E9C9B009E9D9C00BFBDBB00B7B5B300B1AEAD00B0ADAB00908C
      8A0092908E00F1F0F000DCDEE000AAACB30000000000A3A4AA00C6C5C800EFEF
      EF00C3C1BF00B7B5B300C4C2C000C8C6C400CECCCA00D5D3D200DDDBDA00E0E0
      DF00C8C6C60087868400000000000000000000000000AEA9A200B6AEA400CBC4
      BA00CEC6BD00D1C9C000D4CBC200D7CEC600DBD1C900DED5CD00E2D8D000E5DB
      D400E9DED700EBDFD800E6DCD500E3D9D100DFD6CE00DCD2CA00D8CFC700D5CC
      C300D1C9C000CFC7BE00CCC4BB00BCB4AB00ADA9A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000091919100BFBFC000797A7A007572
      7100757271007572710075727100757271007572710075727100757271007572
      710075727100797A7A00BFBFC000919191000000000000000000000000000000
      00000000000000000000000000000000000000000000B57B0800FFFFFF00DBDD
      E100DEE4ED00DFE8F600DFE9F900DFE9F900DFE9F900DFE9F800DFE7F400DFE5
      EE00E0E4EC00E0E5EC00E0E5ED00E0E5ED00E0E5ED00E0E5ED00E0E5ED00E0E5
      ED00E0E5ED00E0E5ED00E0E5ED00E0E5EC00E0E5EB00E0E5E600E1E7E100B97F
      D400B783DC0000000000000000000000000000000000A9A8A6009E9B9900BBB9
      B800DDDCDC00BFBDBC00CBC9C800C4C2BF00BDBBB900B7B3B100B0ADAB00ADAA
      A8008C888600A09E9D00AAA8A80000000000000000000000000092919000CBC9
      C800DCDAD900B8B6B400BCBAB800C3C1C000ACAAA80077757300797775007977
      75007A7876007C7A7800000000000000000000000000A59E9300C9C1B900CAC3
      B900CDC5BC00D0C8BF00D4CBC200D7CEC600DBD1C900DED5CD00E2D8D000E5DB
      D400E9DED700EADFD800E6DCD500E3D9D100DFD6CE00DCD2CA00D8CFC700D5CC
      C300D1C9C000CEC6BD00CBC3BA00CAC2BA00A59E930000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000505050008E8B8A00767372007875
      7400787574007875740078757400787574007875740078757400787574007875
      740078757400767372008E8B8A00505050000000000000000000000000000000
      00000000000000000000000000000000000000000000B57B0800FFFFFF00D9DC
      E200D2A76B00CA872400CA872600CA872600CA872600CA872600CA872500CA87
      2400CA872400CA872400CA872400CA872400CA872400CA872400CA872400CA87
      2400CA872400CA872400CA872400CA872400CB872200D2A86B00DBDFE200FFFF
      FF00B67E0000000000000000000000000000000000000000000000000000A5A3
      A200B3B1B000E7E6E500D0CECD00CAC8C600C3C1C000BDBBB900B6B4B200AFAC
      AA00BFBDBB007A7876000000000000000000000000000000000088878600C9C8
      C800BDBAB900B2B0AE00B8B6B400C0BFBC008E8B8A0000000000000000000000
      00000000000000000000000000000000000000000000A69F9400C8C0B800C9C2
      B800CCC3BA00CEC6BD00D2C8BF00D5CBC300D9CEC600DCD2CA00E0D6CE00E3D9
      D200E8DDD600EADED700E5DAD300E1D7CF00DDD4CC00DACFC700D6CCC400D3C9
      C000CFC7BE00CDC4BB00CAC2B900CAC1B900A69F940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000053535300ACAAA900797674007B78
      76007B7876007B7876007B7876007B7876007B7876007B7876007B7876007B78
      76007B78760079767400ACAAA900535353000000000000000000000000000000
      00000000000000000000000000000000000000000000B57B0800FFFFFF00D6DB
      E400CA862100FEDAA900F7D49900F7D49900F7D49900F7D49900F7D49900F7D4
      9900F7D49900F7D49900F7D49900F7D49900F7D49900F7D49900F7D49900F7D4
      9900F7D49900F7D49900F7D49900F7D49900FEDAA900CA862100D7DCE400FFFF
      FF00B57B06000000000000000000000000000000000000000000000000000000
      0000837F7D00FFFFFF00DEDEDD00D0D0CF00CBC9C800C5C2C200BDBBB900C4C2
      C100FFFFFF007B7977000000000000000000000000000000000083807E00EBE9
      E900A8A5A300AEABA900B4B3B100BDBBB900908D8B0000000000000000000000
      00000000000000000000000000000000000000000000A7A09300C7BEB600C6BF
      B400D2CBC200E2DBD300F0EAE200F3EEE700FDFAF300FDF9F200FDF8F200FCF8
      F100FCF8F100FCF8F100FCF8F100FDF8F200FDF9F200FDF9F300F3EEE700EFEA
      E200E2DCD300D3CCC300C7BFB600C8BFB700A7A0930000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000052525200ADABAA007A7876007D7B
      79007D7B79007D7B79007D7B79007D7B79007D7B79007D7B79007D7B79007D7B
      79007D7B79007A787600ADABAA00525252000000000000000000000000000000
      00000000000000000000000000000000000000000000B57B0800FFFFFF00D4D9
      E300CA862300FCD8A700EFC47F00EFC48000EFC48100EFC48100EFC48100EFC4
      8100EFC48100EFC48100EFC48100EFC48100EFC48100EFC48100EFC48100EFC4
      8100EFC48100EFC48100EFC48000EFC47F00FCD8A700CA862300D4D9E300FFFF
      FF00B57B08000000000000000000000000000000000000000000000000000000
      0000A5A3A200B2B0AF00FFFFFF00DFDEDD00D3D0CF00CCCAC900D0CFCD00FFFF
      FF00AEADAC009E9D9B000000000000000000000000000000000084817F00E7E6
      E500A8A5A200ABA8A600B0ADAB00B8B6B4008F8D8B0000000000000000000000
      00000000000000000000000000000000000000000000A69F9300CFC8BF00F8F4
      EC00FFFAF400F8F2EB00E9E2DA00E3DAD300D7CFC600D4CBC200D4CBC200D4CB
      C200D4CBC200D4CBC200D4CBC200D4CBC200D4CBC200D7CFC600E3DAD300E9E2
      DA00F8F2EB00FFFAF400F4F0E800CFC8BF00A69F930000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000052525200BAB9B8007D7B7900807E
      7C00807E7C00807E7C00807E7C00807E7C00807E7C00807E7C00807E7C00807E
      7C00807E7C007D7B7900BAB9B800525252000000000000000000000000000000
      00000000000000000000000000000000000000000000B57B0800FFFFFF00D2D7
      E000CA862300FCD8A700EBB86900EBB86900EBB96A00EBB96A00EBB96A00EBB9
      6A00EBB96A00EBB96A00EBB96A00EBB96A00EBB96A00EBB96A00EBB96A00EBB9
      6A00EBB96A00EBB96A00EBB86900EBB86900FCD8A700CA862300D2D7E000FFFF
      FF00B57B08000000000000000000000000000000000000000000000000000000
      000000000000A5A3A200B1AFAE00FFFFFF00E1E0DF00D3D2D100D9D8D700ACAB
      A90094939300000000000000000000000000000000000000000085828000F4F3
      F300A7A4A200AAA7A500ADAAA800B3B0AE008F8D8B00D7D7D700000000000000
      00000000000000000000000000000000000000000000A69E9300FFFCF500EAE3
      DB00D3C9C000CDC3B900CEC5BA00CEC5BB00CFC6BB00CFC6BC00CFC6BC00CFC6
      BC00CFC6BC00CFC6BC00CFC6BC00CFC6BC00CFC6BC00CFC6BB00CEC5BB00CEC5
      BA00CDC3B900D3C9C000EAE3DB00FFFCF500ABA4990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000051515100C7C5C4007F7D7B008381
      7F0083817F0083817F0083817F0083817F0083817F0083817F0083817F008381
      7F0083817F007F7D7B00C7C5C400515151000000000000000000000000000000
      00000000000000000000000000000000000000000000B57B0800FFFFFF00CFD3
      DB00CB872200FFDAA900FDD9A800FCD9A800FCD9A800FCD9A800FCD9A800FCD9
      A800FCD9A800FCD9A800FCD9A800FCD9A800FCD9A800FCD9A800FCD9A800FCD9
      A800FCD9A800FCD9A800FCD9A800FDD9A800FFDAA900CB872200CFD3DB00FFFF
      FF00B57B08000000000000000000000000000000000000000000000000000000
      00000000000000000000A4A3A200B0ADAC00FFFFFF00E3E1E000D8D7D5009A98
      960083817F00C4C4C400000000000000000000000000000000008F8C8A00DFDF
      DD00BFBCBA00A9A6A400ACA8A600AFACAA008F8C8A00B6B6B600BBBBBB00BBBB
      BB00BBBBBB00CCCCCC00000000000000000000000000A69F9300ECE5DD00D5CC
      C200D5CCC200D6CDC300D7CEC300D7CEC400D7CEC400D7CEC400D7CEC400D7CE
      C400D7CEC400D7CEC400D7CEC400D7CEC400D7CEC400D7CEC400D7CEC400D7CE
      C300D6CDC300D5CCC200D5CCC200ECE5DD00A69F930000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000050505000D8D7D600817E7D008683
      8200868382008683820086838200868382008683820086838200868382008683
      820086838200817E7D00D8D7D600505050000000000000000000000000000000
      00000000000000000000000000000000000000000000B57B0800FFFFFF00CCCF
      D400CDA36500CB872200CA872400CA872400CA872400CA872400CA872400CA87
      2400CA872400CA872400CA872400CA872400CA872400CA872400CA872400CA87
      2400CA872400CA872400CA872400CA872400CB872200CDA36500CCCFD400FFFF
      FF00B57B08000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A4A2A100AEAEAB00FFFFFF00EDECEC00DCDB
      DA009D9B99007F7D7B00BEBEBE00D3D3D3000000000000000000C6C5C400A29E
      9E00EAEAE900ADAAA700A9A6A400ACA9A7009E9B990081807E00817F7C007F7D
      7B00807D7B0082807E00000000000000000000000000A9A29600E0D6CD00E0D6
      CC00DED5CB00DDD4CA00DDD4CA00DDD4CA00DDD4CA00DDD4CA00DDD4CA00DDD4
      CA00DDD4CA00DDD4CA00DDD4CA00DDD4CA00DDD4CA00DDD4CA00DDD4CA00DDD4
      CA00DDD4CA00DED5CB00DFD6CC00E0D6CD00A9A2960000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000050505000DEDDDD0093908F008784
      8200888583008885830088858300888583008885830088858300888583008885
      83008784820093908F00DEDDDD00505050000000000000000000000000000000
      00000000000000000000000000000000000000000000B57C0900FFFFFF00C8C9
      CD00CACCD200CACED600CACFD800CACFD800CACFD800CACFD800CACFD800CACF
      D800CACFD800CACFD800CACFD800CACFD800CACFD800CACFD800CACFD800CACF
      D800CACFD800CACFD800CACFD800CACFD800CACED600CACCD200C8C9CD00FFFF
      FF00B57C09000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3A2A000AFADAC00FCFCFC00FEFE
      FD00F3F2F300B4B2B100777573009F9E9E00AEAEAC00CECECE0000000000918E
      8D00AFACAB00EBEAE900BFBCBA00A7A4A200A9A6A400ABA8A600C1BFBC00EBEA
      E900E3E3E200817F7D00000000000000000000000000BFB9B200B5ADA100DED5
      CB00E9E1D700E7DFD500E6DED400E5DDD300E5DDD300E4DCD200E4DCD200E4DC
      D200E4DCD200E4DCD200E4DCD200E4DCD200E4DCD200E5DDD300E5DDD300E6DE
      D400E7DFD500E9E1D700E2DAD000B5ADA100BFB9B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059595900BCBBBB00C1BFBE009B98
      97009C9998009C9998009C9998009C9998009C9998009C9998009C9998009C99
      98009B989700C1BFBE00BCBBBB00595959000000000000000000000000000000
      00000000000000000000000000000000000000000000B67E0E00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B67E0E000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AEADAC0082807E00D1D0
      CF00FDFDFE00FFFFFF00E5E5E400AEADAC009593910091908E00000000000000
      0000928F8E00A29E9E00DFDFDD00F3F3F200F2F2F100F3F3F200ECECEB00C9C7
      C60088858300E6E6E60000000000000000000000000000000000CEC9C400AAA3
      9600B7AEA300C8BFB400D9D1C600DDD5CA00F1E9DF00F0E8DE00F0E8DE00F0E8
      DE00F0E8DE00F0E8DE00F0E8DE00F0E8DE00F0E8DE00F1E9DF00DDD5CA00D9D1
      C600C8BFB400B7AEA300AAA29600CEC9C4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3C3C30058585800BDBCBB00E0DF
      DE00DFDEDD00DFDEDD00DFDEDD00DFDEDD00DFDEDD00DFDEDD00DFDEDD00DFDE
      DD00E0DFDE00BDBCBB0058585800C3C3C3000000000000000000000000000000
      00000000000000000000000000000000000000000000C9A45A00B67E0E00B57C
      0900B57B0800B57B0800B57B0800B57B0800B57B0800B57B0800B57B0800B57B
      0800B57B0800B57B0800B57B0800B57B0800B57B0800B57B0800B57B0800B57B
      0800B57B0800B57B0800B57B0800B57B0800B57B0800B57B0800B57C0900B67E
      0E00C9A45A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAB
      AA0083817F0099979500B3B2B100BEBDBC00C1C0BF009E9D9B00969593000000
      000000000000C5C4C300918F8D0084817F0099969400827F7D0082807E00A6A5
      A400E9E8E8000000000000000000000000000000000000000000000000000000
      0000E9E7E500CFCBC500B6B0A700B1AA9F00AAA29600AAA29600AAA29600AAA2
      9600AAA29600AAA29600AAA29600AAA29600AAA29600AAA29600B1AA9F00B6B0
      A700CFCBC500E9E7E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C7C7C7005A5A5A005050
      50004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F4F004F4F
      4F00505050005A5A5A00C7C7C700000000000000000000000000000000000000
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
      0000000000000000000000000000D9D9D900C7C7C700BDBDBD00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BDBD
      BD00C7C7C700D9D9D90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCCCCC00BBBBBB00BBBBBB00BBBB
      BB00C7C7C7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D0D000C1C1C100BCBCBC00BBBBBB00BCBCBC00C1C1C100D0D0D0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D5D5D50075A0C0001F7EC7000076D1000076D1000076
      D1000076D1000076D1000076D1000076D1000076D1000076D1000076D1000076
      D1001F7EC70075A0C000D4D4D400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D7D7D7002A78BE002D73B5002F73B3003073
      B4003077B600C7C7C70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7D7D700C0C0
      C00094939100817F7D00817E7C00817E7C00817E7C00817F7D0094939100C0C0
      C000DADADA000000000000000000000000000000000000000000000000000000
      0000CFCFCF00BDBDBD00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BCBCBC00CDCDCD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005B9AC8000078D1000B87D1000E8DD0001090D000108F
      D000108FD000108FD000108FD000108FD000108FD000108FD0001090D0000E8D
      D0000B87D1000078D1005C9AC800000000000000000000000000DADADA00C8C8
      C800BEBEBE00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00B6B6B6002378C5004CC8FF004DC3F8004DC4
      F8003887C5003378B600D7D7D700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8D8D800C1C1C100BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BABABA00A8A7A7008783
      8100AFAEAD00D1CFCF00DCDBDC00DBDBDB00DCDBDC00D1CFCF00AFAEAD008683
      8100ACABAA00DADADA0000000000000000000000000000000000000000000000
      0000B9926700BA8C5900BA8C5900BA8C5900BA8C5800B8895500B5855000B483
      4C00B4834C00B4834C00B4834C00B4834C00B4834C00B4834C00B4834C00B483
      4C00B4834C00B4834C00B4834C00B4834C00B4834C00B4834C00B4834C00B483
      4C00B5855000B58B5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000476CE001B92D4001393D300028BD1000089CF000089
      CF000089CF000089CF000088CF000089CF000089CF000089CF000089CF000089
      CF001192D3001B92D4000076D1000000000000000000D4D4D400B2927800A768
      3400A5510900A5500800A5500800A5500800A5500800A5500800A5500800A550
      0800A5500800A5500800A7500600AB4D000055677A003092D8004AC2F9004BBF
      F5004DC3F8003376B500B6B6B600C7C7C7000000000000000000000000000000
      0000000000000000000000000000000000000000000094949400656666006666
      6600666666006566660066666600666666006666660066666600666666006666
      660066666600666666006666660065656500626263006E6D6C00918E8B00C8C7
      C500C5C3C200ACA9A600A29F9C00A29E9C00A29F9C00ACA9A600C5C3C200C7C7
      C5008E8B8900B1B0AF0000000000000000000000000000000000000000000000
      0000BA8B5800BC8F5D00BA8C5900BB8D5A00BA8C5800B5855000FFF9EE00FEF2
      E500FDF1E300FDF1E300FDF1E300FDF1E300FDF1E300FDF1E300FDF1E300FDF1
      E300FDF1E300FDF1E300FDF1E300FDF1E300FDF1E300FDF1E300FDF1E300FEF2
      E500FFF9EE00B585500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7D7D7000075D20037A6DC00008FD4000090D5000090D5000090
      D500008FD500008DD400008BD400008DD400008FD5000090D5000090D5000090
      D500008FD50038A6DB000073D0000000000000000000B58A6500AE5B1500CD87
      4700DA995C00E2A36600E1A26500E1A26500E1A26500E1A26500E1A26500E1A2
      6500E1A26500E1A26500E2A36500DD985800D98337005C6B7B003392D50051C6
      FB0052C5F8002F72B0003377B500357BB900C1C1C100DCDCDC00000000000000
      00000000000000000000000000000000000000000000656565005C5A59005755
      5500575555006667670057555500585656005856560058565600585656005856
      5600585656005856560058555500565454005F605F00908D8B00C5C3C100BAB6
      B400ADABA800E7E6E700FFFFFF00FFFFFF00FFFFFF00E7E6E700ADABA800BAB6
      B400C3C1BF008F8C8A00D0D0D00000000000000000000000000000000000D7D7
      D700B98A5600BD915F00BA8B5700BB8D5900BC8D5900B4834C00FEF3E500F8E9
      D800F7E8D600F7E8D600F7E8D600F7E8D600F7E8D600F7E8D600F7E8D600F7E8
      D600F7E8D600F7E8D600F7E8D600F7E8D600F7E8D600F7E8D600F7E8D600F8E9
      D800FEF3E500B4834C00000000000000000000000000D3D3D300BFBFBF00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00B6B6B6000074D4004CB2E2000094DB000096DB000096DB000095
      DB000091DA001FA2DE00F4EFEB001EA1DB000091DB000095DB000096DB000096
      DB000094DB003AABDF000E81D4000000000000000000B15F1800DCA06800E1A5
      6900DE9C5C00DC995800DC995800DC995800DC995700DC985600DC985600DC99
      5700DC995800DC995800DC995800DF9C5B00E5A36400E79C57005D6979003A94
      D4005DCCFD005CCBFA005ECDFD003374B300357AB700B6B6B600BCBCBC00C1C1
      C100D2D2D20000000000000000000000000000000000656565006A686800605E
      5E00605E5E0065666600605E5E00615F5F00615F5F00615F5F00626161006261
      6100615F5F00615F5F00605E5E005D5B5B007F7D7C00B2AFAE00BEBBB900ACA9
      A800FFFEFE00FFFFFF00FFFFFF004C4C4C00FFFFFF00FFFFFF00FFFEFE00ACA9
      A800BEBBB900AFACAB00A7A5A400000000000000000000000000DCDCDC00C7C7
      C700BA885000FFDCAA00FFDCA900BB8E5A00BD8F5B00B3824B00FDF1E400F7E6
      D400F6E5D200F6E5D200F6E5D200F6E5D200F6E5D200F6E5D200F6E5D200F6E5
      D200F6E5D200F6E5D200F6E5D200F6E5D200F6E5D200F6E5D200F6E5D200F7E6
      D400FDF1E400B4834C0000000000000000000000000065809E003D6690003C64
      8F003C648F003C648F003C648F003C648F003C648F003C648F003C648F003C64
      8F003E648D0043648A000072D4005EBDE700009BE000009CE000009CE0000099
      DF001DA7E200FAF5F100FFF4EB00F2ECE6001AA5E000009AE000009CE000009C
      E000009BE00051B8E6001184D5000000000000000000B8682100E8B98C00E2A2
      6000E1A26100E1A26200E1A26200E1A26100E1A05F00E19F5C00E19F5C00E1A0
      5F00E1A26100E1A26200E1A26200E1A26100E3A26000EDB88700C6600700709E
      C9004397D20067D2FD0065CFFA0067D2FC0057B2E2003678B400377AB6003A7C
      B4007296B400C8C8C80000000000000000000000000063646400787675006765
      64006866650068666500686665006866650069676500696767005B5C5C005B5C
      5C006967670069676500686665006361600097949200C1BEBD00A8A5A300E3E2
      E100FEFEFD00FBFBFA00FFFFFE00FFFFFF00FFFFFE00FBFCFA00FEFEFD00E3E2
      E100A8A5A300C0BDBC009894930000000000000000000000000087868800C2C6
      CB00AAB0B800434C5900DCAD7500BF925C00BF925C00B3824B00FDF1E400F7E5
      D200F6E4D000F6E4D000F6E4D000F6E4D000F6E4D000F6E4D000F6E4D000F6E4
      D000F6E4D000F6E4D000F6E4D000F6E4D000F6E4D000F6E4D000F6E4D000F7E5
      D200FDF1E400B4834C000000000000000000000000003E66910072AFE10068A7
      DC0068A7DB0068A7DB0068A7DB0068A7DB0068A7DB0068A7DB0068A7DB0068A7
      DC006AA9DC0070AADB000070D20071C8EE0013AAE70000A1E500009FE40000A0
      E500ECF2F300FDF5F000F2EFEA00F4ECE600EEE7E10000A1E50000A0E50000A1
      E50014AAE70072C8ED00037BD4000000000000000000C7803F00EAC29D00E6AA
      6900E6AB6B00E6AB6C00E6AB6C00E6A96900E6A66200ECDAC600EAD8C300E6A6
      6300E6AA6900E6AB6C00E6AB6C00E6AB6B00E6AB6A00EDC39D00C76814000000
      00006F9DC8004999D00072D5FD005FC6F80048B2F4004EB7F7004FB9F90044AB
      F0003D8CCB004483B700D2D2D200000000000000000062636300858382006C6A
      69006E6C6B006E6C6B006E6C6B006F6D6C006B6A690066676700505050005050
      5000666767006B6A69006E6C6B0069676600A3A09E00C1BFBD00A19D9B00FFFF
      FF00FDFDFC00FCFCFB00FFFFFF0056565600FFFFFF00FEFEFD00FDFDFC00FFFF
      FF00A19E9C00C0BEBC009D9A9800000000000000000000000000000000000000
      0000B9936A00896B4700AA7B4400C3956000C2945F00B3814B00FDF1E300F6E4
      CF00F5E3CE00F5E3CE00F5E3CE00F5E3CE00F5E3CE00F5E3CE00F5E3CE00F5E3
      CE00F5E3CE00F5E3CE00F5E3CE00F5E3CE00F5E3CE00F5E3CE00F5E3CE00F6E4
      CF00FDF1E300B4834C000000000000000000000000003D66910078AFDC00629F
      D100629FD000639FD000639FD000639FD000639FD000639FD000639FD00063A0
      D200619BCC005E90BB000777CC0040A7E5007ACFF20012B0EC0000A6EA00DFF2
      F700FFFBF600F6F3F000F0EFEB00EEEBE700F3EAE100C7DADD0000A7EB0012B1
      ED007BCFF20041A8E5000870C1000000000000000000CB864600EECDAE00EAB2
      7300EAB37500EAB37600EAB27400EAAF6E00EECEAA00F0F6FB00EBF1F500E8C8
      A400EAB06F00EAB27400EAB37600EAB37500EAB27300F0CFB000C9702000D7D7
      D700D7D7D7003277B8006DD1FE0058BDF60075D5FB0079D8FC007AD9FC0077D8
      FE005DC5FC003F8FCC007C9FBC00000000000000000062626200939190007371
      70007472710075737200777473006F6E6C006364640065656500414141004141
      410065656500636464006E6D6C00716F6E00A7A4A200C0BDBB009F9C9A00FFFF
      FE004F4F4F00FEFEFC0057575700A5A5A6005A5A5A007F7F8000A7A7A800D5D4
      D400A09D9B00BFBCBA00A29E9C0000000000000000000000000000000000D7D7
      D700BA895200CEA77500C2955E00C2966000C3975F00B3814B00FDF1E300F6E3
      CD00F5E2CC00F5E2CC00F5E2CC00F5E2CC00F5E2CC00F5E2CC00F5E2CC00F5E2
      CC00F5E2CC00F5E2CC00F5E2CC00F5E2CC00F5E2CC00F5E2CC00F5E2CC00F6E3
      CD00FDF1E300B4834C000000000000000000000000003D67920081B2DA005D99
      CB005F9ACB005F9ACB005F9ACB005F9ACB005F9ACB005F9ACB005F9ACB005E9B
      CE00407198003F6D93003D6C9500006AC5002F9CE20083D3F600F4FEFF00FFFF
      FC00FFFCF700FFF9F400E4E8E700F9F2EC00F5EEE600F7E9DE00D2DEDC008DD5
      F500339DE100097DD300416992000000000000000000D08F5100F2D9C300F0BA
      7B00EFBB7E00EFBB7E00EFB97A00F2C79700F7FCFF00F1F2F200EDEEEC00E6EB
      ED00EDC39200F0BA7B00EFBC7E00EFBB7E00F0BB7B00F5DBC400D2772800B6B6
      B600B6B6B6003577BC0062CAFF0081DCFE007FDBFD0080DCFF0081DEFF0082DF
      FF0085E1FF005ABFF6003C80B900000000000000000062626200949291008886
      85007A7876007C7A7800737271006262620061616100777777006B6B6A006767
      66007575750062626200626262006E6D6C00AAA8A600CAC7C6009E9A9800FAFA
      F900F6F6F500F6F6F500FEFEFD005B5B5B00FFFFFF00F8F8F700F6F7F600FAFA
      F9009E9B9900C9C6C500A4A3A100000000000000000000000000DCDCDC00C7C7
      C700BA874F00FFDBAB00FFDBA600C3975F00C5996000B2814B00FCF1E300F5E2
      CB00F4E1CA00F4E1CA00F4E1CA00F4E1CA00F4E1CA00F4E1CA00F4E1CA00F4E1
      CA00F4E1CA00F4E1CA00F4E1CA00F4E1CA00F4E1CA00F4E1CA00F4E1CA00F5E2
      CB00FCF1E300B4834C000000000000000000000000003D6993008AB6DB005A96
      C6005D97C6005D97C6005D97C6005D97C6005D97C6005D97C6005C97C6005896
      C800BEB0A400B9AFA600BAAEA500B2AAA6003786C300006ED1006EB5E800ECF5
      F8008EBFD60062A2C4005695B8004688AB005D90AB00B6BEC00089BCDC000073
      D000167CCB0088B4D900416A92000000000000000000CD853E00F5E1CF00F4DA
      BB00F4C38800F5C18200F6C88E00FEFEFE00FDFCF900FAF6F200F6F2ED00F0EE
      EA00E7E6E300F6C68D00F6C28300F4C48800F5D9BB00FAE1CE00DF7E2F00257E
      6D00307E63003B7EC2006FD5FF007CDAFD007CDAFE0070C9F3004C96CF004C96
      D10073CEF60071D9FF003C7EB8000000000000000000CCCCCC00646565009F9D
      9D009D9C9B008684830084828100646464005C5C5C00D0D0CF008F8F8E009898
      9700C4C4C2005D5D5D0063646400807E7D00A9A7A500CFCECB00A7A4A200DAD8
      D700F2F1F000F0EFEE00F6F5F4007E7E7F00F6F5F400F1F0EF00F2F1F000DAD8
      D700A7A4A200CDCCC900A8A3A20000000000000000000000000087878900C2C7
      CE00A9B0B900434B5900DBAD7300C69B6300C69B6300B2814B00FCF1E400F5DF
      C800F4DFC800F4DFC800F4DFC800F4DFC800F4DFC800F4DFC800F4DFC800F4DF
      C800F4DFC800F4DFC800F4DFC800F4DFC800F4DFC800F4DFC800F4DFC800F5DF
      C800FCF1E500B4834C000000000000000000000000003D6A940094BBDB005691
      C1005992C2005A93C2005A93C2005A93C2005A93C2005A93C2005993C2005591
      C300A6B7C300DBD2C900D9D1C800DDD2C700E3D3C500AABDCA002588D100087F
      D50080BAD4006AA0BC005588A30042718A00325E7400006CC000057AD200438B
      C4005C93C00097BCDA003D6A94000000000000000000E4CBB100D8995B00F2DD
      CA00F9EEE300F9DBB600FFFCF400CBE3F20095C0D70083B2C90078A9C10077A3
      BB00A4BFCB00E8E0D400FCDEB900FBEEE300F8DCC800E89756007D9B660046A9
      80004DAA77003A7EC40074DAFF0077D8FC0078DAFE004A95CF00429865003381
      5A004D99D20077DFFF003D7FBA00000000000000000000000000CFCFD000605F
      5C0082828400737373006B6B6A006262620062616100FFFFFF00605F5D005D5C
      5B00FFFFF900646361006262620068686700928F8F00C6C4C300C8C6C400A4A2
      A000ECEBEA00EFEEED00F1F0EF00A3A3A300F1F0EF00EFEEED00ECEBEA00A4A2
      A000C8C6C400C3C1C100C2C1C000000000000000000000000000000000000000
      0000BD8A52009E7A4A00A87A4200C99E6500C89D6400B2814B00FDF3E500F5DE
      C600F4DEC600F4DEC600F4DEC600F4DEC600F4DEC600F4DEC600F4DEC600F4DE
      C600F4DEC600F4DEC600F4DEC600F4DEC600F4DEC600F4DEC600F4DEC600F5DE
      C600FEF3E500B4834C000000000000000000000000003D6A95009EC1DC00538D
      BC005790BE005890BE005890BE005890BE005890BE005890BE005890BE00558E
      BE00518DBE004D8BBE004C8BBE004D8BBE004F8BBD00548EBD005A91BE002456
      86007EB4CC006EA5C100639AB600578BA80038647B0013427100598FBB005B91
      BE00558EBC009EC1DC003D6A9500000000000000000000000000EBD8C400D38C
      4400E2AD7900F4DECA00FFFFFF0072B4D7006EACCA006098B6005086A4003F78
      9600205B7D00EAEBEB00FAD9BE00EEAD7600D08C43006B9A660037A179003EA1
      770040A17000377DB4006FD1FA0073D8FC0073D9FE004995D000489D820050A1
      89004D9AD30073D7FC003F82BB0000000000000000000000000000000000BF84
      0C00AAADB500545556005B5B5B005C5A5A00BAB6B400FFFFFF00575756005654
      5400F6F7F200ACA9A5005E5D5C005A5A5A0057575800B7B4B200D9D8D700BEBD
      BB00A2A09E00D5D2D200F0EFEE00CAC9C900F0EFEE00D5D2D200A2A09E00BEBD
      BB00D9D9D900AFADAB000000000000000000000000000000000000000000D7D7
      D700B9895300DABA8D00CA9E6400CA9F6600CB9F6700B2814B00FDF3E500F4DD
      C400F3DDC400F3DDC400F3DDC300F3DDC300F3DCC300F3DCC300F3DCC300F3DC
      C300F3DCC300F3DCC300F3DCC300F3DDC300F3DDC300F3DDC400F3DDC400F4DD
      C400FEF3E500B4834C000000000000000000000000003D6B9600A9C7DE004F88
      B800548BBA00558CBA00558CBA00558CBA00558CBA00548CBA00528AB9004F88
      B8004D87B8004C87B8004C87B9004C87B9004D88B900508ABA005087B6003564
      90008BCCEB007FBFE00078B6D80072AFD20069A5C60027527E005A91BF00568D
      BB005089B800A9C7DE003D6B9600000000000000000000000000000000000000
      0000ECD3B800DF9C5700F2A1540079BADC00689EB7005888A0004A7992003B69
      820023567500FEA85B00D49A5300759E670032A57D003AA67D003FA67C003EA5
      79003AA47300368D95004895D10070DAFF006FD8FD0065C6F2004A97D0004C98
      D30069CDF7004F9ED10092B4D10000000000000000000000000000000000BA7F
      0800FFFFFF00EEEEEF009796950056524F00BCDEEE0072B1D20065A4C600518E
      AF003C7B9D007A99A5005A57540098979600EEEEED00E2E0DF00B1AFAD00DEDD
      DE00D1D0D000A7A5A300979492009895920097949200A7A5A300D1D1D000E0E0
      E200B6B6B800D7D7D70000000000000000000000000000000000DCDCDC00C7C7
      C700BA874F00FCDAAD00FFDBA300CA9E6600CBA06700B2804B00FDF3E600F4DC
      C200F3DCC100F3DBC100F3DABF00F3DABD00F3D9BD00F3D9BC00F3D9BC00F2D9
      BC00F3D9BC00F3D9BC00F2D9BC00F2D9BD00F3DABE00F3DBC100F3DCC100F4DC
      C200FEF3E700B4834C000000000000000000000000003D6C9700B3CDE0004C84
      B2005288B4005389B5005389B5005389B5005289B5004F87B4004883B3009ABB
      D90097BADA0097BCDC0098BDDE0099BDDE009ABFDF00A1C3E000476E990079B7
      DA008ED1EF0083C3E3007BBADA0075B2D3006FACCD00629CBE0034619000558C
      B8004D86B300B3CDE1003D6C9700000000000000000000000000000000000000
      000000000000DEDEDE00738996007EB1CB0077B7D80072B2D3006EAACE0064A1
      C4003B708F006A90930075CDAC0036AA7E003EAB800040AB80003EA97E0035A6
      7800AED7C300ACD6BA00307EAE004795D10067CCF8006DDAFF006EDBFF0068D2
      FB004E9DD4004F8ABF000000000000000000000000000000000000000000B57B
      0800FFFFFF00F6F6F700FFFEFC00B1BFCE0047769B007BBAD9006FACCB0065A0
      C2004E85A200214A6D00A4B5CA00FFFFFD00F7F7F500F5F5F400DBDAD900B6B4
      B100D1D0CE00E9E8E800F1F1F100F2F1F200F1F1F100E9E8E700D1D1D000BABA
      BE00B98D3700000000000000000000000000000000000000000086868A00C2C7
      CE00A9B0B900434A5900D9AC6F00CEA26900CEA36900B2804A00FDF4E800F2DB
      C000F2DABF00F2D9BD00FDF7EE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF6EE00F1D9BC00F2DABF00F2DB
      C000FEF4E800B4834C000000000000000000000000003D6C9800BFD4E3004780
      AD004D84B0004F85B1004F85B1004E85B1004C84B0004480B100AFC5D400C6B4
      9700C3B39A00A5865C00926A3600936B3600996E380084684300083769008FD4
      F40091D4F40087C8E80080BFE00079B7D80072B1D20071AED0000D3567004075
      A3004A83B000C0D5E4003D6C9800000000000000000000000000000000000000
      000000000000BABFC5005293BC0086C9EC007EBDDE0077B5D60070AECF006BA8
      C90064A0C4004883AB0087CEB6003CB1800040B1820040B0820038AE7E0074C5
      A200FFF9FB00FFF3F1006FC29600379599003C81B8003D7ABF003A7ABD004788
      BE0037839400000000000000000000000000000000000000000000000000B47A
      0800FFFFFF00EFEFEF00FBF7F3008094AD005A94BE0086C9E9007CBCDD0076B3
      D4006EACCD004D88B000768BA800FCF9F500F0F0EE00EEEEED00F0F0EF00EEEF
      EE00CFCECC00BDBBB900B7B5B300B7B5B300B7B5B300BDBBB800CFCECE00FFFF
      FF00B67A03000000000000000000000000000000000000000000000000000000
      0000BD8A510097774D00A67A3E00D0A66C00CFA56B00B2804A00FFF4E800F2DA
      BD00F2D9BC00F2D7B900FFFFFF007F818100B9B9BA00B7B8B800B5B6B600FFFF
      FF007F808000B6B7B700FFFFFF00B2B3B400FFFFFF00F1D7B800F2D9BC00F2DA
      BD00FFF4E800B4834C000000000000000000000000003D6F9A00CCDBE800427A
      A700467DA900467DA900467DA900457CA900407AA900A7B7C500A6855A00E1D2
      B800E5C18C00E3BE8900FFFFF300FFFFF100FFFFF5007991A80008417600AAF0
      FF0098DCFC008ED1EF0086C6E6007EBDDD0078B6D70077B7D6000A2552002356
      8800487FAB00CCDCE9003D6F9A00000000000000000000000000000000000000
      0000DBDBDB00416D91007CBDE0008ECEEE0082C2E3007CBBDB0075B3D4006FAC
      CD006BA7C8005B93B9004379990066CDA0003CB684003AB4830040B78500FFFF
      FD00FFF9F600FCF3EF00F4ECE50041B982003BB87E003AB67C0061C89700A7E8
      C6002F887100000000000000000000000000000000000000000000000000B47B
      0800FFFFFF00EFEDED00ECE9E8002450810098DEFE008BCDED0081C1E10079B8
      D80072B0D1006AAACC0018477B00EEECEA00F0EEEC00ECEAE900ECEAE900EDEC
      EB00EEEDEC00EFEEED00EFEEED00EFEFEE00EFEEED00EEEDEC00EDEDED00FFFF
      FF00B57B0700000000000000000000000000000000000000000000000000D7D7
      D700B9885300E6CAA200D1A66A00D0A66C00D1A76C00B17F4A00FFF5E900F2D9
      BB00F2D8BA00F1D6B600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1D6B600F2D8BA00F2D9
      BB00FFF6E900B4834C0000000000000000000000000041729D009CBAD10099B8
      D20095B7D40091B4D20090B3D1008EB2D000A5BBCD00C6BEAF00D0AE7D00EFD1
      A200DEB98600FFFFF500FFF6DD00FFF8DC00FFFFE30030568000104D7F00A9EE
      FF008ACBEB009CE0FF0091D4F30087C8E8007FBFE0007FC1E1000B214C001B4A
      7B00A4C1D7009EBBD20041729D00000000000000000000000000000000000000
      000095A2B2000D3D70007EBFE10093D4F40088C9E90081C1E1007BB9DA0074B2
      D30070AECF005688AB0005265F0075ACB2008ADFBB0044BE8B00AAD7D900A0C4
      DD0084B2CB007AA8C2007FA5BE0086B4B50047C28E0087DBB900B6F1D90070BC
      A600ACCCC500000000000000000000000000000000000000000000000000B47B
      0800FFFFFF00EEECEB00ACB6C3002C6695009FE5FF0091D3F30087C8E8007EBE
      DE0078B7D60072B2D3001B487600B0BAC800F0EDEA00E9E7E600E8E7E600E8E7
      E600E8E7E600E9E7E600E9E8E700E9E8E700E9E8E700E8E7E600E7E7E800FFFF
      FF00B47B08000000000000000000000000000000000000000000DCDCDC00C7C7
      C700BA874E00F5D9B000FFDBA100D2A76D00D3A96E00B17F4A00FDF5EC00F1D8
      B800F1D7B800F0D5B400FFFFFF0080818100B9B9B900B6B6B600FFFFFF008080
      8000BABABA00B8B8B800B7B7B700B5B6B600FFFFFF00F0D5B300F1D7B800F1D8
      B800FEF6EC00B4834C00000000000000000000000000799AB6004175A0002651
      78009D713800C3B6A100BFAA8C00BDA98C00C9B59800FFECC800F0D3A600DDB8
      8200FFFEF200FFF2D500FFF0D300FFF3D400FFFFDC0000316B00185585001A4F
      7E001A4A7700174571004A7EA50082C2E2008CD0EF005B8FB1000E295400103A
      6D00355B7A004376A000799AB600000000000000000000000000000000000000
      00004C6B8C00144B7B00A5EAFF009DE0FF0093D4F40089CBEB0082C1E2007AB9
      DA0076B5D6006AA4C50008235400275F81008DD7BE00C5FFE60082B8DB0072AD
      CC006098B6005087A400427897002E5C7F00CBFFEC008AD1BE003E978600BDD6
      D10000000000000000000000000000000000000000000000000000000000B47B
      0800FFFFFF00EEECEA007C92AB003475A400ABF1FF009DE1FF0091D3F30087C7
      E7007FBEDE007ABBDB001B4671008095AE00F0EEEA00E7E6E500E5E5E400E5E5
      E400E5E5E400E5E5E400E5E5E400E5E5E400E5E5E400E5E5E400E3E4E500FFFF
      FF00B47B0800000000000000000000000000000000000000000086868A00C2C7
      CE00A9B0B900434A5800D8AC6D00D5AB6F00D5AC6F00B17F4900FFF7ED00F1D7
      B700F1D6B700F0D4B300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0D3B200F1D6B700F1D7
      B700FFF7ED00B4834C00000000000000000000000000000000007D9DBA003A74
      A800DDA76000FFFFE900FFF0C900FFEFCA00FFF0CB00F5D9AE00DBB68000FFFD
      F300FFF0CF00FFEECE00FFEECE00FFF1D000FFFFD70000356F00135280002760
      8900396993004C739C0040638C0022436D003B648B001C35600015305D00133C
      6F0040729E007F9FBB0000000000000000000000000000000000000000000000
      000019447600195581005D99C0005C97BC005E97BC0086C5E5008DCEEF0084C4
      E3007EC0DF00649ABC000B2350001341760092BDB20033947B0086BCDB006A9E
      B7005888A0004B7992003D6A83002E577500399984008EBEB400000000000000
      000000000000000000000000000000000000000000000000000000000000B47B
      0800FFFFFF00EFEBE800728FAA00276492003B729D003E729B0066A1C3008BCD
      EC008ACCED0085C8E800133B67005E7C9D00F2EDE900E5E4E200E3E2E100E3E2
      E100E3E2E100E3E2E100E3E2E100E3E2E100E3E2E100E3E2E100E1E1E100FFFF
      FF00B47B08000000000000000000000000000000000000000000000000000000
      0000BD89510090774F00A4793B00D8AE7200D7AE7000B17F4900FFF8EE00F0D5
      B500F0D5B500EFD3B100FFFFFF007E7F8000B7B7B800FFFFFF007F808100B8B9
      BA00B6B6B700FFFFFF007E7E7F00B6B7B800FFFFFF00EFD3B100F0D5B500F0D5
      B500FFF9EF00B4824C0000000000000000000000000000000000000000007499
      BB00D8A35E00FFFAE700FFE9C200FFEAC400F7DBB100DEB98400FFFDF200FFEC
      C900FFEBC900FFEBC900FFEBC900FFEECB00FFFBD10000306C0010517E002660
      8A00386C940048739C005378A0004B6F98003C5F8A0029497600142F5E00103D
      720080A1BB000000000000000000000000000000000000000000000000000000
      0000154476001C5A8600205B8A00275E8D00295B8800173F6A003F6F950077B4
      D50084C6E50026476D00112A5A0016427A00DDDDDD00D3D3D30077ADCB007BB9
      D90074B3D4006EAACD00629BBE0038648100D2D2D20000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B47B
      0800FFFFFF00EFEAE6001D4F7F002264940035729D0041749E003D658E001F45
      6F0048789C003A638800103C6E000C3E7400F3EDE700E3E1E000E0DFDE00E0DF
      DE00E0DFDE00E0DFDE00E0DFDE00E0DFDE00E0DFDE00E0DFDE00DEDDDE00FFFF
      FF00B47B0800000000000000000000000000000000000000000000000000D7D7
      D700B9885200F0D9B500D8AF7000D7AF7200D8B07200B17F4900FFF9F100F0D3
      B300F0D3B300EFD2B100FCF4EA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF4EA00EFD2B100F0D3B300F0D3
      B300FFFAF200B4824C0000000000000000000000000000000000000000000000
      0000D4A25F00FFFAE800FFE7BE00F9DDB300DEB88300FFFBF100FFE9C300FFE8
      C300FFE8C300FFE8C300FFE8C300FFEAC400FFF5C9002C537D000B487A001E5A
      86002F6690003A6C9600416E96003D689000325B8500224774000D2D5E003654
      7300000000000000000000000000000000000000000000000000000000000000
      00001542740018608F002A74A4003D83B2004C8CB9005C91BD004B75A0002A4E
      780022416A00233C6800152F5D0018477B00D0D0D000829CAE008FD0EE0083C3
      E40079B7D90072AFD0006BA7CA006098BB00819BB10000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B57B
      0800FFFFFF00EEE8E400013871002A75A3004285B000528BB400608FB6005F87
      AF004A719C00335E8B0016467A0001366E00F1EBE500E0DEDD00DDDCDB00DDDC
      DB00DDDCDB00DDDCDB00DDDCDB00DDDCDB00DDDCDB00DCDBDA00DADADB00FFFF
      FF00B57B08000000000000000000000000000000000000000000DCDCDC00C7C7
      C700BA874E00EFD7B300FFDA9E00D8B07200DAB27300B17E4900FFF9F300F0D2
      B000F0D3B200F0D2B100F0D1AF00F0D1AE00F0D0AD00F0D0AD00F0D0AD00F0D0
      AD00F0D0AD00F0D0AD00F0D0AD00F0D0AE00F0D1AF00F0D2B100F0D3B200F0D2
      B000FFFAF300B4824B0000000000000000000000000000000000000000000000
      0000CEA06200FFFAE900FEE1B400E5C18D00FFFBF100FFE5BD00FFE5BD00FFE5
      BE00FFE5BE00FFE5BE00FFE5BE00FFE6BE00FFEDC200AAAAA300003771001051
      7E00225D88002D648E0030638E002E5E890024527E00123A680003326C009186
      6F00000000000000000000000000000000000000000000000000000000000000
      000014417300185E8D002B79AB003B83B400478AB900538FBC005288B6004776
      A200355985002443700014315F0017467900BEBFC1001F4F7C009CDFFD008ACB
      EB007FBFDF0077B6D60071AFD0006EACCC00234B7500B5BAC100000000000000
      000000000000000000000000000000000000000000000000000000000000B57B
      0800FFFFFF00EBE6E000002E6800256F9E003D83AF004988B2005189B2005083
      AD004274A0002E5F8D001142760003356D00EEE8E100DEDCDA00DBDAD800DBDA
      D800DBDAD800DBDAD800DBDAD800DBDAD800DBDAD800DBD9D700D8D8D800FFFF
      FF00B57B0800000000000000000000000000000000000000000086868A00C2C7
      CE00AAB0B900434A5800D7AC6B00DBB47600DBB57600B07E4800FFFBF500EFD0
      AE00EFD2B000EFD2B100F0D3B200F1D5B400F1D5B400F1D4B300F1D4B300F2D5
      B400F2D5B400F1D5B400F1D4B400F1D4B300EFD2B100EFD2B100EFD2B000EFD0
      AE00FFFBF600B4824B0000000000000000000000000000000000000000000000
      0000CB9F6300FFFBEC00E5BF8800FFF9F000FFE3B700FFE3B700FFE3B800FFE3
      B900FFE3B900FFE3B900FFE3B900FFE3B900FFE6BA00FFF0BE0060758A000037
      71000C4C7C00185683001C57840019517E000D44730000326A006583A200DFAC
      6900000000000000000000000000000000000000000000000000000000000000
      000047688E00164D7C002478AD00327FB1003D85B4004387B6004481B0003C70
      9E002D5984001E3E6A0015376700506F92005671900014497A00A7ECFF0094D7
      F60089CAE90080BFDF0078B7D70076B6D6000E2754004C6B8E00000000000000
      000000000000000000000000000000000000000000000000000000000000B57B
      0800FFFFFF00E3DFDB00234E7B00144B7F002F7EAB003C83AF004385B000407E
      A800356F9C00205988000D3E730027517F00E6E1DB00DAD8D500D7D6D400D7D6
      D400D7D6D400D7D6D400D7D6D400D7D6D400D7D6D400D6D5D300D5D4D400FFFF
      FF00B57B08000000000000000000000000000000000000000000000000000000
      0000BD8951008A755200A2793700DEB77800DEB77700B07E4800FFFCF800EFCF
      AC00EFD1AE00EFD1B000F1D4B300AB794100CFA87B00CEA67800F3D6B500AB79
      4100CFA87B00CFA77A00CEA67A00CDA57800F0D3B100EFD1AF00EFD1AE00EFCF
      AC00FFFDF800B4824B0000000000000000000000000000000000000000000000
      0000CA9E6300FFFBEC00FFFAEE00FFDEAD00FFDFAF00FFDFB000FFDFB000FFDF
      B000FFDFB000FFDFB000FFDFB000FFDFB000FFE0B100FFE3B200FFEDB600ABA6
      99001844740000316D000034700000316D0019447300ACB7C200FFFFF300D1A3
      6500000000000000000000000000000000000000000000000000000000000000
      0000C3CCD70013417400195F8E00287CAF00317FB1003781B2003478A9002E68
      970021517D001436630015427500C7CDD100204A78001A5583006FACD000619B
      BF0086C6E6008CCEEE0083C4E40082C3E3000D244F001D487A00000000000000
      000000000000000000000000000000000000000000000000000000000000B57B
      0800FFFFFF00D7D5D300B8BDC30006386D000F467B00246697002D77A5002A70
      9F001E5B8D000D407600093B7000B9BEC400D8D6D300D2D1CF00D0D0CF00D0D0
      CF00D0D0CF00D0D0CF00D0D0CF00D0D0CF00D0D0CF00D0CFCE00CFCFCF00FFFF
      FF00B57B0800000000000000000000000000000000000000000000000000D7D7
      D700B9875100FAE6C700E1B77500DFB67700E0B87800B07E4800FFFEFB00EECE
      A900EED0AC00EED0AD00EFD2AF00F1D3B200F1D3B200F0D3B000F0D2B000F1D4
      B200F1D4B200F0D3B100F0D3B100F0D2B000EED1AE00EED0AD00EED0AC00EECE
      A900FFFFFB00B4824B0000000000000000000000000000000000000000000000
      0000CCA06600FFFEF400FFF8E100FFF8E100FFF8E300FFF8E300FFF8E300FFF8
      E300FFF8E300FFF8E300FFF8E300FFF8E300FFF8E300FFF9E300FFFBE400FFFF
      E600FFFFE800FFFFE900FFFFE900FFFFE900FFFFE700FFFFE500FFFFF600CCA1
      6600000000000000000000000000000000000000000000000000000000000000
      000000000000A2B2C40013417400185484001F6C9B00246FA000236796001C57
      86001745740015417400A5B6C60000000000164476001D598700245F8E002960
      8D00234E7B00406F950067A0C2003F698C00142C59001B497B00000000000000
      000000000000000000000000000000000000000000000000000000000000B57C
      0A00FFFFFF00FFFFFF00FFFFFF00E4EEFC005278A50000307100003474000035
      7400003172005279A700E4EFFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B57C0A000000000000000000000000000000000000000000DCDCDC00C7C7
      C700BA864E00E8D7B500FFDA9A00DFB77900E1BA7A00B07D4800FFFFFD00EECD
      A700EECEAA00EECFAB00EECFAB00EED0AC00EED0AC00EECFAC00EECFAB00EED0
      AC00EED0AC00EED0AC00EECFAC00EECFAB00EECFAB00EECFAB00EECEAA00EECD
      A700FFFFFE00B4824B0000000000000000000000000000000000000000000000
      0000D3B79200CA9E6300C79A5C00C6985A00C6985A00C6985A00C6985A00C698
      5A00C6985A00C6985A00C6985A00C6985A00C6985A00C6985A00C6985B00C799
      5B00C99A5B00C99A5B00C99A5B00C99A5B00C99A5B00C99B5D00CB9F6300D3B8
      9200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C9D1DC004C6E92001440730014447600144073001442
      75004C6E9500C9D1DC000000000000000000174274001A649200327DAE00468B
      B9005992BE00527FAA00355A84002846710017325E001B497B00000000000000
      000000000000000000000000000000000000000000000000000000000000B57E
      0F00F9E1C100E8BC7700ECC38200F2C88600F9CD8A00FFD28D00FFD38D00FFD2
      8D00FFD18C00F9CD8900F1C78400ECC28100E9C07F00E9C07E00E9BF7E00E9BF
      7E00E9BF7E00E8BF7D00E8BF7D00E8BF7C00E8BE7C00E8BE7C00E7BA7300F8E0
      BF00B57E0F00000000000000000000000000000000000000000086868A00C2C7
      CE00AAB0B80043495700D5AC6800E3BB7B00E3BC7B00AF7D4700FFFFFF00EECB
      A400EECCA700EECDA800EECDA800EECDA800EECDA800EECDA800EECDA800EECD
      A800EECDA800EECDA800EECDA800EECDA800EECDA800EECDA800EECCA700EECB
      A400FFFFFF00B4824B0000000000000000000000000000000000000000000000
      000000000000CCA16800FFFFFA00FFFFE900FFFEE900FFFEE900FFFEE900FFFE
      E900FFFEE900FFFEE900FFFEE900FFFEE900FFFEE900FFFEE900FFFEE900FFFE
      E900FFFEE900FFFEE900FFFEE900FFFEE900FFFFE900FFFFFA00CCA168000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000144173001A5F90002E7EB0003E87
      B5004A8BBA004A85B1003C6C9900284976001633600017467A00000000000000
      000000000000000000000000000000000000000000000000000000000000B680
      1200F6DEBA00CF8B1500D28F1F00D4922300D5952700D8972900D9982C00DA9A
      3000DA9B3100D99B3400D99B3500D89D3800D99D3B00DA9E3D00DAA14000DBA1
      4200DCA24500DDA54800DDA64A00DEA74E00DFA94F00DFAA5200E0AA5300F4DB
      B400B67F12000000000000000000000000000000000000000000000000000000
      0000BD89500085745600A2783300E4BD7A00E4BD7A00AF7C4600FFFFFF00EDC9
      9F00ECCAA100EDCAA200EDCAA200EDCAA200EDCAA200EDCAA200EDCAA200EDCA
      A200EDCAA200EDCAA200EDCAA200EDCAA200EDCAA200EDCAA200ECCAA100EDC9
      9F00FFFFFF00B4824B0000000000000000000000000000000000000000000000
      000000000000D2B79200CB9F6400C89B5E00C7995C00C6995B00C6995B00C699
      5B00C6995B00C6995B00C6995B00C6995B00C6995B00C6995B00C6995B00C699
      5B00C6995B00C6995B00C6995B00C7995C00C89B5E00CB9F6400D2B792000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000058779800164879002277AA00317F
      B2003983B500387AAA002D6492001C426F00173B6C0059789B00000000000000
      000000000000000000000000000000000000000000000000000000000000B681
      1500F2D7AC00C5740000C77B0000CA7E0000CB820300CC850900CF881000D08B
      1600D28E1C00D3912100D4942700D7982E00D89A3400DA9E3A00DCA04000DDA3
      4600DFA74C00E0A95200E2AD5800E3B05E00E5B36400E7B66A00E9B86F00F0D3
      A500B68114000000000000000000000000000000000000000000000000000000
      0000B9885300FFF4D700FEEFD300FAEDD200FCEFD400B27F4800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B5844E0000000000000000000000000000000000000000000000
      00000000000000000000CCA16800FFFFFB00FFFFEB00FFFFEA00FFFFEA00FFFF
      EA00FFFFEA00FFFFEA00FFFFEA00FFFFEA00FFFFEA00FFFFEA00FFFFEA00FFFF
      EA00FFFFEA00FFFFEA00FFFFEA00FFFFEB00FFFFFB00CCA16800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000012407400164B7C001D6A
      9B002470A1002266960019538000154070001444770000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B882
      1700EED09C00EDCF9B00EDD09D00EDD09D00EDCF9C00EDCF9C00ECCF9C00ECCE
      9B00ECCE9B00ECCE9A00ECCE9A00ECCD9900ECCD9900ECCD9800ECCC9700EBCC
      9700EBCC9600EBCC9600EBCC9600EBCB9500EBCB9400EBCB9400EBCB9400EECE
      9900B88217000000000000000000000000000000000000000000000000000000
      0000C4A17900B7875300B5855000B5845000B6865100B7875200B5844E00B482
      4B00B4824B00B4824B00B4824B00B4824B00B4824B00B4824B00B4824B00B482
      4B00B4824B00B4824B00B4824B00B4824B00B4824B00B4824B00B4824B00B482
      4B00B5844E00B98D5D0000000000000000000000000000000000000000000000
      00000000000000000000D7BA9300CCA16700CBA06500CB9F6500CB9F6500CB9F
      6500CB9F6500CB9F6500CB9F6500CB9F6500CB9F6500CB9F6500CB9F6500CB9F
      6500CB9F6500CB9F6500CB9F6500CBA06500CCA16700D7BA9300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005C7A9B001441
      73001741750017437500154275005D7B9E000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C9A5
      5C00B8831800B7821600B7821600B7821600B7821600B7821600B7821600B782
      1600B7811600B7811600B7811600B7811600B7811600B7811500B7811500B681
      1500B6811500B6811500B6811500B6811500B6811500B6811500B7811500B882
      1700C9A55C000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000D1D1D100BEBE
      BE00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BEBEBE00D1D1D10000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000003882B2001170
      AE00116FAD00116FAD001370AE001471AF001471AF001370AE00116FAD00106F
      AD001170AE003882B20000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000001375B30041BD
      F60045C5FF0047C6FF00129AD800149CDA00149CDB00129AD90047C6FF0044C4
      FF004CC7FD001374B20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000985D3200D7961F00DCAC5900E8CA
      9500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A9725100E0CDC2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BFBFBF00D3D3D30000000000000000000000
      00000000000000000000000000000000000000000000000000001476B6004CC2
      F5000B92D1000E94D3001299D700159DDC00159DDC00139AD8000E94D3000991
      D1005FD1FF001375B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A6683700D7971F00D2901C00D290
      1C00D2901C00D2901C00DDAD5A00EACE9C00F7EFE20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AB765700963F0000E3D2C8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D000BFBF
      BF00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BFBFBF00D0D0D0000000000000000000000000002D74B5002B71B3002B70
      B2002B70B2002C71B2002D72B3002E74B6005A8AB700DADADA00000000000000
      00000000000000000000000000000000000000000000000000001579BB0057C7
      F50042BFFB0046C2FD00139BDB0000557D0000567E000D8AC30046C3FE0040BF
      FA006FD6FF001477BB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBBDA300BEA088008B8D9400894B1900D8991F00D2901C00D290
      1C00D2901C00D2901C00D2901C00D2901C00D2901C00D2932500E3BA6D00CEA9
      8D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2795700BB5E0000B4560000E5D3C9000000000000000000000000000000
      00000000000000000000000000000000000000000000D0D0D0003D70A9000751
      A6000750A5000750A5000750A5000750A5000750A5000750A5000750A5000750
      A5000750A5000750A5000750A5000750A5000750A5000750A5000750A5000750
      A5000750A5000750A5000750A5000750A5000750A5000750A5000750A5000750
      A5000751A6003D70A900D0D0D00000000000000000003C8DC8006CDEFF0055C4
      EE005FCEF4006DDAFF0055C1EA0053BFE8002F74B500B9B9B900D3D3D3000000
      0000000000000000000000000000000000000000000000000000167DC00064CD
      F5000990D0000E94D300149DDE0000486B0000496D000E89C2000E95D500078F
      D00081DEFF00147CBF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B7794300864B1F000B101B006F370200D9991F00D2901D00D290
      1D00D2901D00D2901D00D2901D00D2901D00D2901D00D2901D00D5951D00A458
      1F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A55A
      2F00CC700200DA820600B6580200E7D6CC000000000000000000000000000000
      000000000000000000000000000000000000000000004277AE0011A4DD0012D1
      FB0012CFFA0012CEFA0012CEFA0012CEFA0012CEFA0012CEFA0012CEFA0012CE
      FA0012CEFA0012CEFA0012CEFA0012CEFA0012CEFA0012CEFA0012CEFA0012CE
      FA0012CEFA0012CEFA0012CEFA0012CEFA0012CEFA0012CEFA0012CEFA0012CF
      FA0012D1FB0011A4DD004277AE0000000000000000002D77B700B7E4F700BEF2
      FF004DBCE9005CC6EF006AD3FA0055BEE8002D6EB1003074B5005B8BB600DADA
      DA000000000000000000000000000000000000000000000000001980C4006FD0
      F5003EBEFA0044C2FD00119BDC0000355000003651000B81B90044C3FF003CBD
      FA008FE4FF00177EC30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD804D00894E20000A0F1B00743A0200DA992000D3901E00D390
      1E00D3901E00D3901E00D3901E00D3901E00D3901E00D3901E00D6941D00A75D
      2300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A04E1D00CE77
      0900D67F0A00D77F0C00B75A0500D2AD99000000000000000000000000000000
      000000000000000000000000000000000000000000000956AA001CD1FA0010C4
      F40010C2F30010C2F30010C2F30010C2F30010C2F30010C2F30010C2F30010C2
      F30010C2F30010C2F30010C2F30010C2F30010C2F30010C2F30010C2F30010C2
      F30010C2F30010C2F30010C2F30010C2F30010C2F30010C2F30010C2F30010C2
      F30010C4F4001CD1FA000956AA000000000000000000AAC4DA002773B600B2E0
      F500BDEFFF004DBBE8005CC5F0006ED6FD005CC6ED0054BFE8003175B500B9B9
      B900D3D3D30000000000000000000000000000000000000000001982C80084DC
      F700008DD000048FD1000794D600037BB500037CB500068ECF000490D200008C
      D000A0ECFF001881C80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C1844E008D512200090F1B00783D0200DB992100D4911F00D491
      1F00D4911F00D4911F00D4911F00D4911F00D4911F00D4911F00D7951E00AA61
      2500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C3977C00A3490B00A1440000A3430000A3440000A346
      0000A3450100A3460200B85B0500B85C0600B95D0700B85D0800CF770C00D886
      0F00D7841000D8871100CB740F00BE610A00A64A0600B97B5600000000000000
      000000000000000000000000000000000000000000000957AA0020CDF8000DC0
      F2000DBFF2000CC0F2000CC0F2000DC0F2000DBFF1000DBFF2000CC0F2000CC0
      F2000DC0F2000DBFF1000DBFF2000CC0F2000CC0F2000DC0F2000DBFF1000DBF
      F2000CC0F2000CC0F2000DC0F2000DBFF1000DBFF2000CC0F2000CC0F2000DC0
      F2000DC0F20020CDF8000957AA00000000000000000000000000ACC4DB002774
      B700B3E0F500BDEFFF0050BBE8005DC6F0006FD6FC005DC6ED002D6FB2003176
      B6005E8EB90000000000000000000000000000000000000000001B88CE00A8EF
      FF00B0F4FF00B1F4FF00B3F5FF00B4F7FF00B4F7FF00B3F6FF00B1F4FF00AFF4
      FF00A7EEFF001B87CD0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001513CD000000
      000000000000CD904D008D552500090F1B007B410200DB9A2300D4922000D492
      2000D4922000D4922000D4922000D4922000D4922000D4922000D7961F00AD65
      2800000000000000000000000000000000000000000000000000000000000000
      000000000000AD591B00CA6F0600DA820800D8810B00D9820A00D9830D00D983
      0C00DA870F00DC8C1100CB700900AF4D0000AF4B0000D6800F00DA881500DB87
      1500DA8A1600DA8A1900DC8D1B00DD8E1C00E0941D00D8831800AC4E08000000
      000000000000000000000000000000000000000000000A59AD0026CCF50007BB
      F0000095CF000092CD000091CA00008EC60003BAF0000095CF000092CD000091
      CA00008FC60004BBF0000095CF000092CD000091CA00008EC60003BAF0000095
      CF000092CD000091CA00008FC60005BBF0000095CF000092CD000091CA00008E
      C60008BCF00026CCF5000A59AD0000000000000000000000000000000000ACC4
      DB002875B700B4E0F500BFF0FF0050BCE8005FC7F00072D8FC005FC6EE0056C1
      E9003277B700D7D7D700000000000000000000000000000000003E9AD700158A
      D8000F88D8001288D7001789D5001A89D3001989D3001789D5001288D7000F87
      D800148AD8004EA0D70000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001513CD001B1B
      E40000000000D69D560092582600090E1B0080460600DC9B2500D6952200D594
      2300D5942300D5942300D5942300D5942300D5942300D5942300D7972200B068
      2C00000000000000000000000000000000000000000000000000000000000000
      0000BE866300D47E0C00D8840E00D6850F00D7851000D7851100D8851100D885
      1400D9861500CD720E00CD720E00FEF2DC00FEF2DC00CD720E00D7821700DD8E
      1D00DC8E1F00DD8F1F00DD8F1F00DE902000DE952000E2952200E2962300B15D
      1F0000000000000000000000000000000000000000000B5CAF002ACAF50000B5
      ED00EFFFFF00E8FDFF00E7FDFF00EFFFFF0034C5F000ECFEFF00E8FDFF00E8FD
      FF00F1FFFF0000B2ED00EDFEFF00E6FDFF00E7FDFF00EFFFFF0034C5F000ECFE
      FF00E8FDFF00E8FDFF00F1FFFF0000B2ED00EEFEFF00E8FDFF00E8FDFF00F3FF
      FF0001B6EE002BCAF5000B5CAF00000000000000000000000000000000000000
      0000ACC5DB002A75B700B5E1F600BFF0FF0051BCE90061C7F10072D9FE0061C8
      F0003175B400B6B6B600BBBBBB00BFBFBF00D0D0D00000000000000000008E7B
      6F00CCBDB4008D7A6E00000000000000000000000000000000008C7A6E00CBBD
      B3009E8A7E000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001513CD00242C
      F8001519E8007E4E6400A1621F00090E190086490A00D7911F00C4872700D796
      2300D5952500D5952500D5952500D5952500D5952500D5952500D7992400B36B
      2D00000000000000000000000000000000000000000000000000000000000000
      0000AC4E0700DC8A1400D8841400DA861500DA861600DA8A1700DB8B1800DB8B
      1B00DE921C00B8560000F8E1B100FFFFFF00FFFFFF00F8E1B100BF610600E296
      2200E0942200E0942400E1982500E1962600E1972600E2992600E59C2900C46C
      140000000000000000000000000000000000000000000B5EB1002FC9F40000B2
      EB00F2FFFF0000ACE900EFFEFF0000AEE90000AFE900F1FFFF0000ACE900EFFE
      FF0000AFE90000AFE900F0FFFF002BBFEE00EDFEFF0000AEE90000AFE900F1FF
      FF0000ACE900EFFEFF0000AFE90000AFE900F2FFFF0000ACE900EFFEFF0000AF
      E90003B3EB0031C9F4000B5EB100000000000000000000000000000000000000
      000000000000ACC5DB002B76B800B4E1F600BFF0FF0052BDE90062C9F10076DC
      FF002D6FB0003274B5003377B6003478B7005D8AB400CDCDCD00D7D7D7008E83
      7D00C3BDB8008B827D00CCCCCC000000000000000000CCCCCC008A827D00C2BC
      B80098918C000000000000000000000000000000000000000000000000000000
      00001F2CEB001F2CEB00222DEB00222CEB00212CEB00212BEB00222CEC002532
      F4002331F6001925F700362482000D110E00884B0B00EAD09500C4CBDC00C079
      1700D7992900D7972800D7972800D7972800D7972800D7972800D99B2700B770
      2F00000000000000000000000000000000000000000000000000000000000000
      0000AD520900DF8F1D00DC8F1B00DC8E1B00DC8E1F00DD8F1E00DD8F1F00DE90
      1F00E0982100BF5E0200F6EDE200FFFFFF00FFFFFF00F6EDE200BF600900E49D
      2700E2982700E39A2900E3982A00E39E2B00E29C2C00E39D2D00E5A03000C974
      180000000000000000000000000000000000000000000C60B20036C8F30003B2
      EA0000B0E90000B0E90000B0E90004B1EA0005B1EA0000B0E90000B0E90000B0
      E90004B1E90005B1E90000B0E90000AFE90000AFE90004B1E90004B1E90000B0
      E90000B0E90000B0E90004B1E90005B1E90001B0E90000B0E90000B0E90004B1
      EA0006B3EA0037C8F3000C60B200000000000000000000000000000000000000
      00000000000000000000ACC5DB002C77B800B5E2F600C0F1FF0055BDE90064CB
      F20078DDFF0064C9F00057BDE7005AC0E9004CA7D7005D8BB400C1C1C100938B
      8400C1BEBB009C989600A19F9C00B9B9B900B9B9B900A09F9C009C989600C0BE
      BC00918D8B000000000000000000000000000000000000000000000000000000
      00006D76EF00263DF4002A3FF4002A3FF4002A3EF400293DF400293CF400273A
      F3002739F3002839F500202FF8000B098F0090510600EAC87500DEC39100D494
      2500D7992C00D79A2C00D79A2C00D79A2C00D79A2C00D79A2C00DA9E2C00B974
      3100000000000000000000000000000000000000000000000000000000000000
      0000B0520900E1942000DE8F2000E0932100E0942200E0942400E1982500E196
      2600E39A2700C3660600F6EDE200FFFFFF00FFFFFF00F6EDE200C2680C00E5A1
      2F00E39D2E00E49E2E00E4A03000E4A03100E6A13200E6A13100E8A73400CC78
      190000000000000000000000000000000000000000000D63B5003DC8F30005B0
      E90008B0E90008B0E90007B0EA0007B1EB0007B1EB0007B0EB0008B0EA0008B0
      E90009B0E90009B0E90008B0E90008B0E90008B0E90009B0E90009B0E90008B0
      E90008B0E90008B0E90009B0E90009B0E90008B0E90008B0E90008B0E90008B0
      E90006B0E9003DC8F3000D63B500000000000000000000000000000000000000
      0000000000000000000000000000AEC5DB002D77B800B6E2F600C2F1FF0056BF
      EA0065CAF20078DAFE0062C5EC0055BAE4005ABEE70049A4D6007196BA00A39D
      9A00BBB6B400D0CECC00A3A09F00928F8C00928F8D00A3A09F00D1CFCC00BAB8
      B700B5B4B3000000000000000000000000000000000000000000000000000000
      00006F78EF002A44F4002D46F4002D45F4002C45F4002C44F4002C42F4002C42
      F4002B41F400293EF4002F48F6005C6FFF004F2B7D00E8B84D00DFAD4D00E0B0
      5400DDA74500D99E3200D99B2F00D99C3000D99C3100D99C3100DCA03100BC78
      3300000000000000000000000000000000000000000000000000000000000000
      0000C5721E00E5A43300E0932100E2972400E2972600E29A2900E3982A00E39E
      2B00E49E2E00CA700B00F6EDE200FFFFFF00FFFFFF00F6EDE200C9721000E8A4
      3400E6A53300E7A23400E7A73500E7A43600E8A53500E7A43200ECB34C00D288
      2B0000000000000000000000000000000000000000000E65B70043C7F20004AD
      E70007ADE70003AAE7000090D0000086C5000084C400008FCC0003AAE60007AD
      E70009ADE70009ADE70008ADE70007ADE80007ADE80007ADE80008ADE70009AD
      E70009ADE70009ADE70009ADE70009ADE70009ADE70009ADE70009ADE70008AD
      E70004ADE70043C7F2000E65B700000000000000000000000000000000000000
      000000000000000000000000000000000000AEC5DB002E78B900B8E2F700C2F2
      FF0056BFEA0066CAF20079DAFD0063C5EC0056B9E30056BDE60056ACDB00B0C9
      E3009E9D9C00BFBAB600E3E1DF00E4E1E000E9E7E600E3E2E000C1BDBA00A09B
      9800000000000000000000000000000000000000000000000000000000000000
      0000707BF2002A45F4002C48F4002C47F4002C46F4002C45F4002C46F3002F48
      F4002C45F4003852F50095A7FF001B1ACF0096581900E7BB5A00E0B25600E0B2
      5600E0B35700E1B45A00DEAC4B00D9A03600D99F3600DAA03700DCA43700C17D
      3500000000000000000000000000000000000000000000000000000000000000
      0000CF893100EFCB8200EDC06D00E7AB4300E39D2C00E29B2900E39E2D00E39F
      2F00E8A33200CF790F00F6EDE200FFFFFF00FFFFFF00F6EDE200D07B1500EAA8
      3900E8A63700E9A53600E8A53600E9AB3C00EDB65600EEC87D00F3D39400D694
      3E0000000000000000000000000000000000000000000E67B8004AC7F00002A9
      E60002A8E6000598D500AEE2F400EBFFFF00EBFFFF00AEE1F2000595D10003A9
      E70007AAE60007AAE60003AAE7000085C30000A8E7000085C30003A9E70007AA
      E60008AAE60008AAE60008AAE60008AAE60008AAE60008AAE60008AAE60007AA
      E60003A9E6004AC7F0000E67B800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AEC6DC002E79B900B7E3
      F700C3F2FF0057BFEA0068CBF2007BDAFE0063C5ED0058BBE3005EC3EC008CD9
      F900C4EAFB00B2BEC200A19B98009E9792009F979300A29B9800A9B0B600C4C4
      C400000000000000000000000000000000000000000000000000000000000000
      00007480F40084A0FA00849EF900849EF900839CF900849CF9008BA0FA002E4B
      F4003D5BF60091A7FF002620D6000B0D11009A5E1D00E8BC6500E2B45D00E2B4
      5D00E2B45D00E2B45D00E2B65E00E3B45E00DFAB4B00DDA33B00DFA73E00C480
      3600000000000000000000000000000000000000000000000000000000000000
      0000D1893200F0CC8300EEC88000EFC98200EFCC8600EEC47400ECBB5D00E9AF
      4700EAAF4800D27D0D00F6EDE200FFFFFF00FFFFFF00F6EDE200D3801100EBB1
      4900EDB65400EDC06900F1C97F00F3D19000F3D08E00F4CF8F00F5D39300D999
      3E0000000000000000000000000000000000000000000F6ABA004FC7F00001A5
      E50000A3E4008FD0EB00BAEDFC003ABBEC003ABBEC00B9EDFD008ECFE80000A4
      E60003A7E70003A7E70000A4E600F5FFFF00009FE400F5FFFF0000A3E50005A7
      E50007A7E60006A7E70005A8E70006A8E70006A7E60006A8E70005A8E70005A7
      E70002A6E6004FC7F0000F6ABA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AEC6DC002F79
      B900B8E3F700C6F4FF005CC1EB007BDAFD0070D0F40067C8EF006DCFF4006FD3
      FB007DDBFF00B0ECFF00D6F8FF00D4F8FF00D0F4FF00D0F3FF0092C5E8004583
      B900C7C7C7000000000000000000000000000000000000000000000000000000
      00003A3AED004D50EF004B4EEF004A4EEF004A4EEF004B50EF00363BEF004467
      F70094ACFE006245B700A56B2C00070C14009E652400E9C16C00E4B96500E4B9
      6500E4B96500E4B96500E4B96500E4B96500E4BA6700E4B66000DFAA4600C884
      3900000000000000000000000000000000000000000000000000000000000000
      0000D38E3500F0CE8600F0C98400F0CB8600F0CB8600F2CC8900F2CC8A00F2CD
      8D00F2CF8F00EDB65400F6EDE200FFFFFF00FFFFFF00F6EDE200EDB65400F5D2
      9400F4D19100F4D09100F3D08F00F2D09100F2D09000F3CE9000F5D69700DA9C
      430000000000000000000000000000000000000000000F6DBD0056C7F00000A3
      E300009FE100EDFFFF002DB5E800009FE100009FE1002CB5E800E9FFFF00007B
      C300007FC300007DC2000079BF00E7FFFF000072BA00E8FFFF000076B90000A3
      E30001A4E3000080C400007EC100007CBD0000A3E4000080C400007EC100007C
      BD0000A3E30055C7F0000F6DBD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AEC6
      DC00307ABA00BDE5F70079DCFF006CCEF4006DCCF30078D8FB0076D7FD00CBF0
      FE00C8F1FE00C9F0FF0071D6FD0070D4FD006DD3FC006BD1FA0061C9F4004FAA
      DB004482B600D2D2D20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292BEF008DA1
      F9002527FA00E7B66000AB713200060B1600A46A2700ECC47500E6BC6D00E6BC
      6D00E6BC6D00E6BC6D00E6BC6D00E6BC6D00E6BC6D00E6BC6F00E8C07100CA89
      3700000000000000000000000000000000000000000000000000000000000000
      0000D6933C00F3CF8F00F1CB8800F1CC8800F1CC8900F1CC8900F2CD8A00F2CD
      8900F3CF8B00EDB65400F8E1B100FDFFFF00FBF3EC00F8E1B100EDB65400F2D0
      9100F3D29100F3D29100F5D39200F5D39200F5D39300F5D49300F7D89900DEA1
      45000000000000000000000000000000000000000000106FBF005CC7EF00009F
      E100009BE000EDFFFF000091D80000A0E20000A0E2000090D600E5FEFF00E8FF
      FF00EEFFFF00EFFFFF00EBFFFF00E6FFFF00E6FFFF00E7FFFF00F4FFFF00009F
      E200009EE200F6FFFF00EFFFFF00F2FFFF0030B5E900F2FFFF00EFFFFF00F5FF
      FF00009DE1005AC7EF00106FBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AAC2D600347AB90068C4ED006ECEF40079D9FC0076D7FC00CDF0FE0077D7
      FC0077D8FD0077D8FD004DB0DE0074D5FB0070D2F9006FD0FA006ED2FA0063CA
      F4004593CA007D9FBD0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002B27F1001B17
      F10000000000E3AF5B00AB753600060A1600AA6F2B00EDC97B00E8C27400E8C2
      7400E8C27400E8C27400E8C27400E8C27400E8C27400E8C27400EAC67900CD8C
      3B00000000000000000000000000000000000000000000000000000000000000
      0000D8983D00F4D19000F2CE8900F3CE8D00F3CF8D00F3CF8D00F3CF8E00F2D0
      9100F2D09100EDB65400D69E5300D69E5300CC904900CC904900EBC07500F5D4
      9300F5D49300F5D49600F5D49600F6D59600F6D59700F6D59700F8DA9F00E1A6
      480000000000000000000000000000000000000000001171C00062C7EF00009C
      E0000098DF00EEFFFF00299FD6000090D7000090D500299DD300E9FFFF000094
      DE000097DF000098DF000098DF000098DF000098E0000099E100009BE100009D
      E300009DE20033B4E8002EB2E8002FB3E90002A0E2002FB3E9002DB2E90032B4
      E900009AE00060C7EF001171C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004882B5005AB3E0007ADAFC0076D7FC00CDF0FD0078D8FC007BD8
      FD007BDAFD0050B2DE0077D6FD0072D4FA006ED0F9006CCFF80069CEF80068CF
      F90056B8E7004080B80000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001812F1000000
      000000000000DEAB6500AF783800050A1500AF752E00EFCD8400EAC67D00EAC6
      7D00EAC67D00EAC67D00EAC67D00EAC67D00EAC67D00EAC67D00EDCA8300D090
      3C00000000000000000000000000000000000000000000000000000000000000
      0000DA9A4100F5D49400F2D09000F1D09000F3D29100F3D29100F3D39200F5D3
      9200F5D39300F3CC8600F8E1B100FEF2DC00FEF2DC00F8E1B100F1C97F00F7D5
      9800F6D69700F6D69800F6D69800F6D89A00F6D89A00F6D99B00F8DEA300D991
      2D0000000000000000000000000000000000000000001174C20068C8EF000099
      DE000096DD008ED9F400B9E7F600369ED200369ED100B9E6F6008DD8F4000096
      DD00009ADE00019BDF00009ADF00009ADF000078C1000076BF000075BE000074
      BB000073B8000098DF000077C1000075C0000075BD000073BC000072B9000071
      B7000098DF0066C7EF001174C200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003579B60078D9FC0079D9FE00CCF1FD0077D7FC007AD8FD007BD8
      FD0051B3DF0078D9FF0076D8FE0071D5FD006ED1FB006ACEF80067CBF70065CC
      F80060CBF7003D7FB90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFAE6800B17B3A00040A1500B27A3200F1D18F00EDCA8600EDCA
      8600EDCA8600EDCA8600EDCA8600EDCA8600EDCA8600EDCA8600EFCE8D00D394
      3D00000000000000000000000000000000000000000000000000000000000000
      0000DD9E4200F7D79700F5D39300F5D49300F5D49300F5D49600F5D49600F6D5
      9600F7D69800F1C97F00FEF2DC00FFFFFF00FFFFFF00FEF2DC00E3B97400F8DA
      9E00F6D99B00F7D99B00F7D99D00F7DA9D00F7DA9D00F7DAA000F9DFA800D999
      3A0000000000000000000000000000000000000000001276C5006FC9EF000096
      DD000096DD000199DD00AEE6F900EBFFFF00EBFFFF00AEE6F9000199DD000097
      DD000299DE000399DE000198DE000095DD00FAFFFF00F2FFFF00F0FFFF00F2FF
      FF00F8FFFF000092DC00F8FFFF00F1FFFF00F0FFFF00F0FFFF00F1FFFF00F8FF
      FF000093DC006EC8EF001276C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003478B6007CDDFF0078D9FD00CCF1FE0077D8FD007AD8FD0051B3
      DF0079DAFF0063BDE8004691C7004691C8005DB8E70068D0FB0064CBF70061C9
      F6005DCAF8003C7FB80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1B26A00B37E3B0004091400B8803700F4D79700EFD08F00EFD0
      8F00EFD08F00EFD08F00EFD08F00EFD08F00EFD08F00EFD08F00F1D49600D699
      3F00000000000000000000000000000000000000000000000000000000000000
      0000E3B06800F8D89900F6D59700F6D59700F6D69700F6D69800F6D69800F6D8
      9A00F7D99C00ECC27300FEF2DC00FFFFFF00FFFFFF00FFFFFF00CB924B00FADE
      A500F7DAA100F7DAA000F8DBA000F8DBA100F8DBA100F8DCA000FBE4B100DE9C
      3B0000000000000000000000000000000000000000001378C60075CAEF000094
      DB000095DB000094DB000091DA00008FD900008FD9000091DA000094DB000096
      DC000096DC000096DC000096DC000094DB000091DA00008FD900008FD900008F
      D9000091DA000092DA000091DA00008FD900008FD900008FD900008FD9000090
      DA000091DA0074CAEF001378C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003479B7009DEAFF0079D9FD00CDF1FE0076D7FD0050B2DE0078D9
      FF0063BCE8004E87BA00C7D5E300C7D5E3005089BA0059B6E60062CBF7005CC6
      F6007FD8FC003E84BD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3B66C00B8823E00040A1400C6903F00FFE4A900F8DE9F00F6DA
      9C00F3D79A00F2D79900F2D79900F2D79900F2D79900F2D79900F4DBA000D89C
      4100000000000000000000000000000000000000000000000000000000000000
      0000E3B16500F8E1B100F6D79700F6D89B00F6D99B00F6D99B00F7D99D00F7DA
      9D00F8DB9F00F0C77E00FEF2DC00FFFFFF00FFFFFF00FFFFFF00DBAA6300FAE0
      A500F8DCA100F8DCA200F8DCA200F9DDA200F9DDA100F9DC9E00FEEFD300E1A7
      4F000000000000000000000000000000000000000000147BC8007ACCEE00008E
      D900008FD900008FD900008FD900008FD900008FD900008FD900008FD9000090
      DA000090DA000090DA000090DA00008FD900008FD900008FD900008ED900008F
      D900008FD900008FD900008FD900008FD900008ED900008ED900008FD900008E
      D900008ED90079CBEE00147AC800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003278B700B1F0FF0078D9FC0075D6FC004DB1DE0076D6FC0074D7
      FE00438AC300B0BFCD000000000000000000B0C0CD004591C8005FCAF90057C5
      F50095DEFD003A7EB90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4B97000B7833F000409140026211C0084745800907B5D00C8B1
      8200F4DCA600FEE8B000FAE4AD00F9E2AB00F7DFA900F6DFA700F7E2AF00DBA0
      4500000000000000000000000000000000000000000000000000000000000000
      0000D8913500FFFDF400F6DEA700F6D89B00F6D89C00F6D89C00F8DA9C00F8DA
      9C00F8DA9E00F0C77E00E2AF5900E2AF5900E2AF5900C98C4300DBAA6300F9DC
      9F00F9DC9F00F9DC9F00F9DE9F00F9DE9F00F9DDA000FCE9BF00F7E5C400E9BA
      7E00000000000000000000000000000000000000000059A1D20058AEE10084CC
      EF0084CCEE0085CCEF0085CCEF0085CCEF0085CCEF0085CCEF0085CCEF0085CC
      EF0085CCEF0085CCEF0085CCEF0085CCEF0085CCEF0085CCEF0085CCEF0085CC
      EF0085CCEF0085CCEF0085CCEF0085CCEF0085CCEF0085CCEF0085CCEF0084CC
      EE0083CCEF0071BDE600599FD200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000387BB600C2EBFB0074D7FD0073D4FA0074D4FB0071D3FA0070D5
      FC004691C800A0B0BD00D5D5D500D5D5D500A0B0BD004691C8005BC7F80052C3
      F500B3E1F8003E81B90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7BB7000D09B480070512E0075552F006D4F2C006B4D2B006749
      2900624527005C402400B28B4F00BF965500EDCA7B00F0D38F00F4D99B00DFA7
      4800000000000000000000000000000000000000000000000000000000000000
      0000F2DCC200E4B05600FFFEF700FEF2DC00FEF2DB00FEF2DB00FEF2DB00FEF1
      DC00FEF1DC00FEF1DE00FDF0DB00F6E5CC00F2E3C800FDF0DC00FEF4DE00FDF3
      DC00FDF3DC00FDF3DC00FDF2DC00FDF3DC00FEF4E300FEF8EE00E6A236000000
      00000000000000000000000000000000000000000000000000005DA4D600167F
      CD00157ECC00157ECC00157ECC00157ECC00157ECC00157ECC00157ECC00157E
      CC00157ECC00157ECC00157ECC00157ECC00157ECC00157ECC00157ECC00157E
      CC00157ECC00157ECC00157ECC00157ECC00157ECC00157ECC00157ECC00157E
      CC00157FCD005DA4D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006D9CC3009BC6E3009DE5FF006DD1F9006FD1F9006DCFF8006CD1
      FB005CB8E7004B82B30097A6B40098A6B4004D83B50052B2E40053C4F5008DD9
      FB0096C2E20073A1C70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7BF7400E6B35200EAB75500EBB85500EBB85500EBB85500EBB8
      5500EBB85500EAB75500E8B35100E6B15000E3AD4E00E3AC4D00E3AC4D00E4B0
      5000000000000000000000000000000000000000000000000000000000000000
      000000000000F3DEC300DE9B3800EABB6900EBC17700EBC07600EBC07600EBC3
      7600ECC37600ECC47700ECC47700ECC57800ECC57800EDC47700EDC57800EDC5
      7700EDC57800EFC57800EFC67800EFC77A00ECBC5E00E7AE5500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CBD8E4004188C000D7F4FF007ED9FC0067CDF80067CDF80068CD
      F80067CEF90059B6E6004591C8004591C80050B2E40053C5F60067CAF800CCEF
      FE004185BE000000000000000000000000000000000000000000000000000000
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
      0000000000000000000081AACC0076ABD500DEFBFF0098DFFC005FC9F7005FC8
      F6005EC9F7005DC8F7005AC9F70055C6F7004FC1F50081D4F900D5F5FF006AA4
      D00083ACCE000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000004687BD0074AAD500D7F4FE00C6F0FF0091DA
      FB0076D0F80074CFF70072CEF8008AD7F900C0EBFF00D2F0FE0069A3D00074A3
      CA00000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000076A4CB004089C00098C9E800CCF0
      FF00DFF9FF00DEF8FF00DDF8FF00C8EAFA0092C0E2003F84BE0085AFD1000000
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
      00000000000000000000000000000000000000000000D2DFEB0076A5CC00377E
      BA00357DB9003986C100357DB9003C83B90077A5CC0000000000000000000000
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
      0000D3D3D300BFBFBF00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BFBFBF00D3D3D3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D300BFBFBF00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BFBFBF00D3D3D300000000000000000000000000000000000000
      00007F7F7F006666660066666600666666006666660066666600666666006667
      6700666767006667670066666600666666006666660066676700666767006667
      67006666660066666600666666006666660066666600666666007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CBCBCB00BDBDBD00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BDBDBD00CBCBCB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CBCBCB00BDBDBD00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BDBDBD00CBCBCB0000000000000000000000
      00000000000000000000000000000000000000000000B9944A00B77F0F00B67D
      0A00B67C0900B67C0900B67C0900B67C0900B67C0900B67C0900B67C0900B67C
      0900B67C0900B67C0900B67C0900B67C0900B67C0900B67C0900B67C0900B67C
      0900B67C0900B67C0900B67C0900B67C0900B67C0900B67C0900B67C0900B67C
      0900B67D0A00B77F0F00B9944A00000000000000000000000000000000000000
      0000656565005A58580056545400565454006767670056545400575555005755
      5500575555005755550057545400626363005754540057555500575555005755
      550057555500565454006767670056545400565454005A585800656565000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBCBCB002A79AD000F6EAC000F6DAC000F6DAC000F6D
      AC000F6DAC000F6DAC000F6DAC000F6DAC000F6DAC000F6DAC000F6DAC000F6D
      AC000F6DAC000F6DAB000E6DAB000F6EAC002A79AD00CBCBCB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CBCBCB002A79AD000F6EAC000F6DAB000F6DAB000F6D
      AB000F6DAB000F6DAB000F6DAB000F6DAB000F6DAB000F6DAB000F6DAB000F6D
      AB000F6DAB000E6DAB000E6DAB000F6EAC002A79AD00CBCBCB00000000000000
      00000000000000000000000000000000000000000000B77F0F00F7FFFF00F3F8
      FF00F2F7FF00F2F7FF00F2F7FF00F2F7FF00F2F7FF00F2F7FF00F2F7FF00F2F7
      FF00F2F7FF00F2F7FF00F2F7FF00F2F7FF00F2F7FF00F2F7FF00F2F7FF00F2F7
      FF00F2F7FF00F2F7FF00F2F7FF00F2F7FF00F2F7FF00F2F7FF00F2F7FF00F2F7
      FF00F3F8FF00F7FFFF00B77F0F00000000000000000000000000000000000000
      000065656500676463005E5C5C005E5C5C00666767005E5C5C005F5D5D005F5D
      5D005F5D5D005F5D5D005E5C5C00666767005E5C5C005F5D5D005F5D5D005F5D
      5D005F5D5D005E5C5C00666767005E5C5C005E5C5C0067646300656565000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002C7CB1002D9BD60049C7FF0049C6FE004AC7FF004AC7
      FF004AC7FF004AC7FF004AC7FF004AC7FF004AC7FF004AC7FF004AC7FF004AC7
      FF004AC7FE0049C6FE0047C5FD0047C5FE002C9BD6002C7CB100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002C7CB1002D9BD60048C7FF0048C5FE0049C6FE0049C6
      FE0049C6FE0049C6FE0049C6FE0049C6FE0049C6FE0049C6FE0049C6FE0049C6
      FE0049C6FE0048C5FE0047C5FD0047C5FE002C9BD6002C7CB100000000000000
      00000000000000000000000000000000000000000000B67D0A00F4FAFF00EEEE
      F000EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EEEEF000F4FAFF00B67D0A00000000000000000000000000000000000000
      000064646400716F6F0063616100636162006565650064626200646262006462
      6200646262006463620065666600656565006565650064636200646262006462
      62006462620064626200656565006361620063616100716F6F00646464000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001172B00050CAFF0035B5F100189BD900098FCE000A90
      CF000A90CF000B91D0000B91D0000B91D0000B91D0000B91D0000C92D1000C92
      D1000C92D100179AD60035B2E80052C8FA004FC8FF001072B000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001172B00050CAFF0035B5F10022A4E000179AD800179B
      D800179BD800189CDA00189CDA00189CDA00189CDA00189CDA00189CDB00189D
      DB00189DDA0021A3DF0037B4EB0052C8F9004FC8FF001072B000000000000000
      00000000000000000000000000000000000000000000B67C0900F4F9FF00EAEA
      EC00EAE9E900EAE9E900EAE9E900EAE9E900EAE9E900EAE9E900EAE9E900EAE9
      E900EAE9E900E8E7E700E8E7E700E8E6E700E8E6E700E8E6E700E8E6E700E8E6
      E700E8E6E700E8E6E700E8E6E700E8E6E700E8E6E700E8E6E700E8E7E700E8E7
      E700EAEAEC00F4F9FF00B67C0900000000000000000000000000000000000000
      0000636363007D7A7A00696765006A6867006A6867006A6867006A6867006B69
      67006866660064646400707071005756560070706F0063646400686666006B69
      67006A6867006A6867006A6867006A686700696765007D7A7A00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001173B20057CBFE0034B3F00042BEF90044C0FA0045C0
      FB0045C0FB0045C0FB0045C0FB0045C1FB0045C1FB0045C0FB0045C0FB0044C0
      FB0043BFFA0042BEF9003DBBF70053C7F90054CAFD001073B200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001173B20056CBFE0033B3F00041BDF80042BEF90043BF
      FA0043BFFA0043BFFA0044C0FA0044C0FB0044C0FB0044C0FA0043BFFA0042BF
      F90042BEF90040BDF8003DBAF70052C7F90054CAFD001073B200000000000000
      00000000000000000000000000000000000000000000B67C0900F4FAFF00E8E8
      EA00E8E7E700E9E8E800E9E8E800E8E7E800E9E8E800E9E8E800E9E8E800E8E7
      E700E7E6E600FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFC
      FC00E7E7E900F4F9FF00B67C0900000000000000000000000000000000000000
      000062626200888685006D6B6A006F6D6C006F6D6C006F6D6C00706E6D006968
      680063646400626262008F8F8F0032323200A7A7A50061616100636364006968
      6800706E6D006F6D6C006F6D6C006F6D6C006D6B6A0088868500626262000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001273B4005FCFFD0034B3F000189BD8000A8FCE000A90
      CE000A90CE000D92D0000E93D2000F94D3000F94D3000E93D2000E93D1000D92
      D1000C91D0001799D60034B0E70052C7F9005DCDFC001273B400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001273B4005FCFFD0033B3F00021A3E000179AD700179A
      D700179AD8001A9DDA000E93D1000F95D3000F95D3000E93D1001A9DDB00199D
      DA00189CD90021A2DE0036B2EA0052C7F9005DCDFC001273B400000000000000
      00000000000000000000000000000000000000000000B67C0900F4FAFF00E8E7
      E800EAE9E800EDECEB00EDECEA00EBEAE800ECEBEA00EDECEB00ECEBEA00E9E8
      E700E6E5E400F0EFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0EE
      EF00E6E6E600F4F9FF00B67C0900000000000000000000000000000000000000
      00006262620092908F00737170007573720075737200767473006B6A68006363
      640061626200777777007C7C7B00323233009191900073737300616162006363
      64006B6A68007674730075737200757372007371700092908F00626262000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001375B70066D2FE0033B3F00042BEF90044C0FA0045C0
      FB0045C1FB0047C2FD001096D400139AD800139AD8001096D40046C2FC0045C0
      FB0043C0FA0042BEF9003DBBF70051C6F90063D1FD001275B700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001375B70066D2FE0032B2EF0041BDF80042BEF90043BF
      FA0043BFFA0045C1FB001097D4000F8ACC000F8ACC001096D40045C1FB0043BF
      F90042BEF90040BDF8003CBAF70051C6F90063D0FD001275B700000000000000
      00000000000000000000000000000000000000000000B67C0900F4FAFF00E6E6
      E700EBE9EA004E4E4E00908F8F00EDECEC008E8D8E00908F8F008E8D8D00E8E7
      E700E5E4E400E3E4E200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3
      E200E4E4E600F4FAFF00B67C0900000000000000000000000000000000000000
      0000616262009F9D9C007A787700797776007B7878007C7A7900666665006262
      62005C5C5C00D0D0D000494949003131310070706F00C3C3C1005C5C5D006262
      6200666665007C7A79007B787800797776007A7877009F9D9C00616262000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001377B9006FD6FE0033B3F000189BD8000A8FCE000A90
      CE000B90CE000E93D200129AD7000355A1000355A100129AD7000F95D3000D92
      D1000C91D0001799D60033B0E70051C6F9006CD4FD001377B900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001377B9006FD6FE0032B2EF0021A3E000179AD700179A
      D700189AD8001B9EDB00119AD7000356A2000356A200119AD7001B9EDC00199D
      DA00189CD90021A2DE0036B2EA0051C6F9006CD4FD001377B900000000000000
      00000000000000000000000000000000000000000000B67C0900F4FAFF00E5E3
      E500EAE7E700F1EFEF00F1EEEF00EEEBEC00EDEBEB00EDEBEB00ECEAEA00E7E5
      E500E5E2E300D9D8D500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8D7
      D500E4E2E400F4FAFF00B67C0900000000000000000000000000000000000000
      0000818181007B797A00A3A19E0085828000787776007A797800717070005F5F
      5F006C6C6C00FFFFFF00BCBCBB002E2E2E00C2C2C000FDFDF8006B6B6B006060
      6000717070007A7978007877760085828000A3A19E007B797A00818181000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001479BB0075D9FD0032B2F00042BEF90044C0FA0045C0
      FB0045C1FB0047C3FE00129CD9000453970004539700129CD90047C3FD0045C0
      FB0043C0FA0042BEF9003DBBF70050C6F90073D7FD001379BB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001479BB0075D9FD0031B2EF0040BDF80042BEF90043BF
      FA0043C0FA0046C3FD00129BD9000453970004539700129BD90046C3FD0043BF
      FA0042BEF90040BDF8003CBAF70050C6F90073D7FD001379BB00000000000000
      00000000000000000000000000000000000000000000B67C0900F4FAFF00E2E2
      E300E7E6E5004E4D4D0091908F008F8E8D008D8C8B00E9E8E70089898700E5E4
      E300E4E3E200CDCCCA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CDCC
      CA00E2E2E300F5FBFF00B67C0900000000000000000000000000000000000000
      0000000000006D6D6D0079797800B0AEAC006B6B6A0062626200626262005A59
      5900C8C8C800FFFFFF0062605F00302F2F005F5E5D00FAF9F400B9B9B5005C5B
      5C0062626200626262006B6B6A00B0AEAC007979780078787800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000147ABE007EDDFF0031B2F000179BD8000A8FCE000A90
      CE000C91CF001096D400139FDD00044F8C00044F8C00139FDD001197D5000E93
      D1000C92D0001799D60033B0E7004FC6F9007CDBFE00147ABD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000147ABE007EDCFE0031B1EF0021A3E000179AD700179A
      D800199CD9000F95D400139FDD00044C8900044F8D00139EDD001096D5001A9E
      DB00189CDA0021A2DE0036B2EA004FC6F9007CDBFE00147ABD00000000000000
      00000000000000000000000000000000000000000000B67C0900F5FBFF00E0DF
      E100E2E1E200E6E5E500E7E6E600E6E5E500E5E4E400E3E2E200E3E2E200E2E1
      E100E2E1E100C4C2BF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C1
      BF00E1E1E300F5FBFF00B67C0900000000000000000000000000000000000000
      00000000000000000000A8A8A800676766007575740063636300606060006E6D
      6D00FFFFFF00FFFFFF00655F5B00322C2900645F5B00FEFAF300F6F3ED006D6C
      6C0061616100636363007575740067676600A8A8A80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000157CC10085DFFE0030B1EF0041BEF90044C0FA0045C1
      FB0047C3FD001199D7000D76B30005518E0005518E000D76B300129AD90046C2
      FD0044C0FA0042BEF9003DBBF7004FC5F90083DDFE00147CC100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000157CC10085DFFE0030B1EF0040BDF80042BEF90043BF
      FA0045C2FC001199D7000D76B30005518E0005518E000D76B300129AD80045C1
      FB0042BEF90040BDF8003CBAF7004FC5F80083DDFD00147CC100000000000000
      00000000000000000000000000000000000000000000B67C0900F5FBFF00DEDD
      DF00DFDDDD00E0DEDE00E1DEDE00E0DEDE00E0DEDE00E0DDDE00E0DDDE00E0DD
      DD00E1DFDF00B2B2B300B2B2B200B0B1B100B0B0B000B0B0B000B0B0B000B0B0
      B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B1B100B2B2B200B2B2
      B200E0DFE100F5FBFF00B67C0900000000000000000000000000000000000000
      0000000000000000000000000000000000009292920064646400605F5F00D8D5
      D300C6E4F3008CBED70069A9CA0062A2C4005394B700649AB50096B6C300C3C0
      BA00626160006464640092929200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000167EC3008CE2FE0030B1F000179BD8000A8FCE000A90
      CE000C92D100129CDA0004498100055089000550890004498100139DDB000F95
      D3000C92D0001799D60033B0E7004EC5F9008AE1FD00167EC300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000167EC3008DE2FE0030B1EF0021A3E000179AD700189A
      D8001A9DDA00119BDA0004498100055089000550890004488100139CDB001B9F
      DD00189CDA0021A2DE0035B2EA004EC5F9008BE1FD00167EC300000000000000
      00000000000000000000000000000000000000000000B67C0900F5FBFF00DCDC
      DD00DDDCDB00DDDCDB00DDDCDB00DDDCDB00DDDCDB00DDDCDB00DDDCDB00DDDC
      DB00DEDDDC00DFDEDD00DFDEDD00DFDEDD00DFDEDD00DFDEDD00DFDEDD00DFDE
      DD00DFDEDD00DFDEDD00DFDEDD00DFDEDD00DFDEDD00DFDEDD00DFDEDD00DFDE
      DD00DDDCDD00F5FBFF00B67C0900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A8A6A4005856
      550083C2E00074B0CE0069A0BD00598EA900477A93003B6C8800295E78005A5B
      5E00A8A6A6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001780C50095E6FF002FB1EF0041BEF90044C0FA0045C1
      FB0047C3FE00129CDA0004437700054B7F00054B7F0004437700139DDB0047C3
      FD0044C0FA0042BEF9003DBBF7004EC5F90092E4FE001780C500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001780C50095E6FF002FB1EF0040BDF80042BEF90043BF
      FA0046C2FD00119BDA0004437700054B7F00054B7F0004437700129CDB0045C2
      FC0042BEF90040BDF8003CBAF7004DC4F80092E4FE001780C500000000000000
      00000000000000000000000000000000000000000000B67C0900F5FBFF00DBDA
      DA00DCDAD900DCDAD900DCDAD900DCDAD900DCDAD900DCDAD900DCDAD900DCDA
      D900DBD9D800DAD8D700D9D7D600D9D7D500D9D7D500D9D7D500D9D7D500D9D7
      D500D9D7D500D9D7D500D9D7D500D9D7D500D9D7D500D9D7D500D9D7D600DAD7
      D600DAD9D900F5FBFF00B67C0900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004B6B
      8E006EA2C1007CBAD80079B8DA0074B2D3006FADCF005B94B300325C77003359
      8700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001881C7009CE9FF002FB1EF00179BD8000A8FCE000A90
      CE000C92D0001199D8000C6EA600043F6D00043F6D000C6EA600139BD9000F94
      D3000C92D0001799D60033B0E7004DC4F90099E7FE001781C700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001881C7009DE9FF002FB0EF0021A3E000179AD700189B
      D8001A9DDA001199D8000C6EA600043F6D00043F6D000C6EA600129AD9001B9F
      DC00189CDA0021A2DE0035B2EA004DC4F9009AE7FE001781C700000000000000
      00000000000000000000000000000000000000000000B67C0A00F6FBFF00D9D9
      D900DAD9D800DBDAD900DBDAD900DBDAD900DBDAD900DBDAD900DBDAD900DAD9
      D800D8D7D600FDFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00D7D6D700F5FBFF00B67C0A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9D9D900264B
      790079B5D80085C5E5007CBCDC0076B4D60071AECF006EABCC00629CBF00254F
      7E00D6D6D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001883CB00A4EDFF002DB0EF003FBDF90042BFFA0043C0
      FB0045C2FD000F95D400119AD900129CDC00129CDC00119AD9001096D60045C1
      FC0042BFFA0040BDF9003BBAF7004CC4F900A2EBFE001883CB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001883CB00A4EDFF002DB0EF003FBDF80042BEFA0042BF
      FA0045C1FC000E95D400119AD900129CDC00129CDC00119AD9001096D50044C0
      FC0042BEFA003FBDF8003ABAF7004CC4F900A2EBFE001883CB00000000000000
      00000000000000000000000000000000000000000000B67C0A00F6FBFF00D7D7
      D700DAD9D800DEDDDC00DEDDDC00DDDCDB00DBDAD900DCDBDA00DCDBDA00D9D9
      D800D6D5D400EEEDED00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDEC
      EC00D4D4D400F5FBFF00B67C0A00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008898AB00497C
      A70094D7F50087C8E80080BFDF007AB9D90074B2D30070ACCD006EABCB004577
      A0007C8FA4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001A86CE00ACF1FF0030B3EF000E97D800018BCD00028C
      CE00038DCF00058FD1000691D2000791D3000791D3000691D2000791D200058F
      D100038ED0000F96D5002BADE7004EC5F800AAF0FF001A86CD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001A86CE00ADF1FF0030B3EF000E97D800018BCD00018C
      CE00028DCE00058FD1000691D2000791D3000791D3000691D2000791D200058F
      D100038ED0000F96D5002BADE7004EC5F800ABF0FF001A86CD00000000000000
      00000000000000000000000000000000000000000000B67D0A00F6FBFF00D6D5
      D500DCDAD900494A48008988870086858400DFDCDB008584830084848200DAD8
      D700D6D4D200DFDEDE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDD
      DE00D4D2D300F6FBFF00B67D0A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000466287008BCB
      ED0095D9F9008BCDED0085C6E6007EBEDE0078B7D90073B2D30070AECF006BA9
      C900405E86000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003F97D20066BEE900B3F5FF00B2F4FF00B4F5FF00B5F6
      FF00B6F6FF00B7F6FF00B7F6FF00B7F6FF00B7F6FF00B7F6FF00B7F6FF00B6F6
      FF00B4F5FF00B2F4FF00B1F3FF00B2F4FF0066BEE9003F97D200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003F97D20066BEE900B3F5FF00B2F4FF00B4F5FF00B5F6
      FF00B6F6FF00B7F6FF00B7F6FF00B7F6FF00B7F6FF00B7F6FF00B7F6FF00B6F6
      FF00B6F5FF00B5F5FF00B3F3FF00B3F4FF0066BEE8003F97D200000000000000
      00000000000000000000000000000000000000000000B67D0A00F6FCFF00D4D3
      D400DAD8D800E1DFDF00E2E0E000E0DDDE00DEDCDC00DFDCDD00DDDBDB00D8D6
      D600D5D3D300D2D1D000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D1D0
      CF00D2D1D300F6FCFF00B67D0A00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DADADA00174A7D00AEF9
      FF009EE9FF0096DFFF008ED3F50086C8EA007FC3E4007ABDE20078BBDF0071B1
      D500193F6E00D9D9D90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000419AD6001387D6000C84D4000D85D5001388
      D7001888D5001B88D2001C88D2001C88D2001C88D2001C88D2001B88D2001888
      D4001287D6000D84D4000D84D5001388D700419AD60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000419AD6001387D6000C84D4000D85D5001388
      D7001888D5001B88D2001C88D2001C88D2001C88D2001C88D2001C88D2001B88
      D2001B88D3001A88D3001A88D3001B89D300409AD50000000000000000000000
      00000000000000000000000000000000000000000000B67D0A00F6FCFF00D3D2
      D200D9D7D600494848008887860086868500868584008685840083828100D7D5
      D400D5D3D200C4C3C100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3C2
      C000D2D1D100F6FCFF00B67D0A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000009BA7B5001B3E5E00887F
      7900150C0C00170D0C00475B680091D9FE0041546100857D7800181010002017
      1400193353008E9DAF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008B796C00FFF8F200C5B7AE008D7B
      6F00000000000000000000000000000000000000000000000000000000000000
      00008B796C00F6EAE100D3C7C0008D7B6E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008B796C00FFF8F200C5B7AE008D7B
      6F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B67D0A00F6FCFF00D0CF
      CF00D4D2D100D8D6D500D8D6D500D8D6D500D8D6D500D8D5D400D6D4D300D4D2
      D100D4D1D100B9B6B400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B8B5
      B300D1D0D000F7FCFF00B67D0A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000004F7193002E3F4C002C27
      2500A7A5A4002B2626002A221F009DEDFF0029221F0029252500A8A6A4002E2A
      2700293544004F6F920000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000847D7700F8F6F500BAB6B2008780
      7B00000000000000000000000000000000000000000000000000000000000000
      0000857D7700EAE7E500C7C5C400867F79000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000847D7700F8F6F500BAB6B2008780
      7B00000000000000000000000000000000000000000000000000000000000000
      0000D7D7D700C1C1C100C1C1C100D7D7D7000000000000000000000000000000
      00000000000000000000000000000000000000000000B67D0A00F6FCFF00CDCD
      CE00D0CFCE00D0D0CF00D0D0CF00D0D0CF00D0D0CE00D0CFCE00D0CFCE00D0CF
      CE00D2D0D000A3A3A400A2A2A200A0A1A100A0A0A000A0A0A000A0A0A000A0A0
      A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A1A100A2A2A200A2A3
      A300CFCFD000F7FCFF00B67D0A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000001B518200473A30004238
      32003D3430008B8580003E353000312824003F3631003D3631003B342F008D88
      8200473B310018477C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000083807D00F5F5F500B7B5B3008683
      8100000000000000000000000000000000000000000000000000000000000000
      000083807E00E7E6E500C4C4C400868380000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000083807D00F5F5F500B7B5B3008683
      8100000000000000000000000000000000000000000000000000000000000000
      0000A5A19F008883800088848000A5A2A0000000000000000000000000000000
      00000000000000000000000000000000000000000000B67D0A00F6FCFF00CAC9
      CB00CCCACA00CCCACA00CCCACA00CCCACA00CCCACA00CCCACA00CCCACA00CCCA
      CA00CDCBCB00CECDCC00CECDCD00CECDCD00CECDCD00CECDCD00CECDCD00CECD
      CD00CECDCD00CECDCD00CECDCD00CECDCD00CECDCD00CECDCD00CECDCD00CDCC
      CC00CBCACC00F6FCFF00B67D0A00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000174B7E0024699A002D70
      A1003877A6004077A700336492001C487700467DA6006EAED40069A7CD002247
      720012487E001546790000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086838100F5F4F500B6B4B2008986
      8400DEDEDE00000000000000000000000000000000000000000000000000DEDE
      DE008A888600E6E5E400CACACA00888683000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000086838100F5F4F500B6B4B2008986
      8400DEDEDE00000000000000000000000000000000000000000000000000DEDE
      DE008D8A8800EBEAE900CECECF008A8785000000000000000000000000000000
      00000000000000000000000000000000000000000000B67D0C00F4FDFF00F2F7
      FF00F2F8FF00F3F8FF00F3F8FF00F3F8FF00F3F8FF00F3F8FF00F3F8FF00F3F8
      FF00F3F8FF00F3F9FF00F3F9FF00F3F9FF00F3F9FF00F3F9FF00F3F9FF00F3F9
      FF00F3F9FF00F3F9FF00F3F9FF00F3F9FF00F3F9FF00F3F9FF00F3F9FF00F3F8
      FF00F2F7FF00F4FDFF00B67D0C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000174A7C002C75A2003A7E
      AA004886B000538AB300608FB6006B8FB6004A709A002C507A002A4E7A00244E
      800017487B001746780000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000089878500F4F4F400B5B3B1009795
      9300C1C1C000000000000000000000000000000000000000000000000000C1C1
      C1009F9C9A00E4E3E200D3D3D3008B8886000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000089878500F4F4F400B5B3B1009795
      9300C1C1C000000000000000000000000000000000000000000000000000C1C1
      C100A09C9A00E4E3E200D3D4D4008B8886000000000000000000000000000000
      00000000000000000000000000000000000000000000B67F0F00FAE3C200E3AB
      5200E3AC5500E3AD5600E3AD5600E3AD5600E3AD5600E3AD5600E3AD5600E3AD
      5600E3AD5600E3AD5600E3AD5600E3AD5600E3AD5600E3AD5600E3AD5600E3AD
      5600E3AD5600E3AD5600E3AD5600E3AD5600E3AD5600E3AD5600E3AD5600E3AC
      5500E3AB5200FAE3C200B67F0F00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000154476002973A1003980
      AC004687B0005089B200598DB5005E8BB3005882AB004975A000386491002754
      8400154779001746780000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8A8800F5F4F500B4B2B0009F9B
      9900A4A4A300DBDBDB0000000000000000000000000000000000DBDBDB00A4A3
      A100AAA6A500E1E0DF00E0E0E1008D8B89000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8A8800F5F4F500B4B2B0009F9B
      9900A4A4A300DBDBDB0000000000000000000000000000000000DBDBDB00A4A3
      A100AAA6A500E1E0DF00E0E0E1008D8B89000000000000000000000000000000
      00000000000000000000000000000000000000000000B6801200F5DDB800D99E
      3900DAA13F00DAA14000DAA14000DAA14000DAA14000DAA14000DAA14000DAA1
      4000DAA14000DAA14000DAA14000DAA14000DAA14000DAA14000DAA14000DAA1
      4000DAA14000DAA14000DAA14000DAA14000DAA14000DAA14000DAA14000DAA1
      3F00D99E3900F5DDB800B6801200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018437500246897003680
      AC004183AF004A86B0005189B2005287B0004D7FA90042739F00346491002353
      8300134678001B48790000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9A00D9D9D800C8C5C500B2B0
      AE0095949200B6B6B600CFCFCF00DCDCDC00DCDCDC00CFCFCF00B6B6B6009593
      9100D1CFCE00E1E0DF00E4E3E3009C9C99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9A00D9D9D800C8C5C500B2B0
      AE0095949200B6B6B600CFCFCF00DCDCDC00DCDCDC00CFCFCF00B6B6B6009593
      9100D1CFCE00E0DFDE00E6E7E7009C9B99000000000000000000000000000000
      00000000000000000000000000000000000000000000B6811400F1D6A900D18B
      1700D28E1B00D28E1C00D28E1C00D28E1C00D28E1C00D28E1C00D28E1C00D28E
      1C00D28E1C00D28E1C00D28E1C00D28E1C00D28E1C00D28E1C00D28E1C00D28E
      1C00D28E1C00D28E1C00D28E1C00D28E1C00D28E1C00D28E1C00D28E1C00D28E
      1B00D18B1700F1D6A900B6811400000000000000000000000000000000000000
      000000000000000000000000000000000000000000007892AB00184C7D00307C
      A8003A81AD004284AF004786B0004883AE00437BA7003A709D002C6291001C50
      8100144477007A92AD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBCACA00ADABAA00E8E7E600B4B2
      B000A9A8A50099979500A2A1A000AFAEAE00AFAEAE00A2A0A00098969400BAB7
      B500D6D4D300F2F2F100C3C0BF00CACACA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CBCACA00ADABAA00E8E7E600B4B2
      B000A9A8A50099979500A2A1A000AFAEAE00AFAEAE00A2A0A00098969400BAB7
      B500D6D4D300F2F2F100C4C3C200CACACA000000000000000000000000000000
      00000000000000000000000000000000000000000000B8821700EECF9B00ECCD
      9800ECCE9A00ECCE9A00ECCE9A00ECCE9A00ECCE9A00ECCE9A00ECCE9A00ECCE
      9A00ECCE9A00ECCE9A00ECCE9A00ECCE9A00ECCE9A00ECCE9A00ECCE9A00ECCE
      9A00ECCE9A00ECCE9A00ECCE9A00ECCE9A00ECCE9A00ECCE9A00ECCE9A00ECCE
      9A00ECCD9800EECF9B00B8821700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000114072001D58
      8800317DAA003982AF003E83AF003E7FAB003877A300306C9A00245F8F001446
      7800144275000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E9C9A00D1CFCF00DBDB
      DA00B7B5B300B4B0AE00A4A19F00A19E9C00A09D9B00A9A6A400C2C0BE00CDCB
      CA00ECEBEB00EAEAE900A2A09E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E9C9A00D1CFCF00DBDB
      DA00B7B5B300B4B0AE00A4A19F00A19E9C00A09D9B00A9A6A400C2C0BE00CDCB
      CA00ECEBEB00EAEAE900A2A19F00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9A55C00B8831700B782
      1600B7811600B7811600B7811600B7811600B7811600B7811600B7811600B781
      1600B7811600B7811600B7811600B7811600B7811600B7811600B7811600B781
      1600B7811600B7811600B7811600B7811600B7811600B7811600B7811600B781
      1600B7821600B8831700C9A55C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DBE0E600113E
      7200174A7B00246090002F73A0002E74A000286A970021598B00184A7C001241
      7500DBE0E6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A979500CECC
      CC00EBEAEA00CFCCCB00C3C0BF00C3C0BF00C4C1C000C9C7C500E0DFDE00F3F2
      F100E9E9E800A8A5A40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A979500CECC
      CC00EBEAEA00CFCCCB00C3C0BF00C3C0BF00C4C1C000C9C7C500E0DFDE00F3F2
      F100E9E9E800A8A5A40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006E88A6001644750011407200123F730013407300184476006E88A7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A3
      A100B2B0AF00D8D6D500F2F1F100F1F0F100F2F1F000F4F3F300E4E4E300C7C5
      C300A8A6A4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A3
      A100B2B0AF00D8D6D500F1F1F100F0F0F000F2F1F000F4F3F300E4E4E300C7C5
      C300A8A6A4000000000000000000000000000000000000000000000000000000
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
      0000D7D7D600AEABAA00A29E9C00A19E9C00A19E9C00A19E9C00ADABA900D7D6
      D500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D7D7D600AEABAA00A19E9C00AAA7A500A09D9B00A19E9C00ADABA900D7D6
      D500000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000D5D5
      D500C6C6C600BDBDBD00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BDBDBD00C6C6
      C600D5D5D5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D0D000C1C1C100BCBCBC00BBBBBB00BCBCBC00C1C1C100D0D0D0000000
      000000000000000000000000000000000000000000000000000000000000CBCB
      CB00BDBDBD00BBBBBB00C0C0C000D1D1D1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D000C2C2
      C200D0D0D0000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00C9C9C900BAB5B200B08D
      6F00AE6B3300AF5D1700AF5D1700AF5D1700AF5D1700B05D1800B05E1800AE6C
      3300B08D6F00BAB5B200C9C9C900DEDEDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CFCFCF00BFBFBF00BBBBBB00BBBB
      BB00BBBBBB00BFBFBF00CECECE00000000000000000000000000DBDBDB00C0C0
      C00094939100817F7D00817E7C00817E7C00817E7C00817F7D0094939100C0C0
      C000DADADA000000000000000000000000000000000000000000CBCBCB00B589
      3200B7831900B7841B00B8851C00B6965900CCCCCC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00B5924C00BE89
      1F00B5924C00CCCCCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000D0D0D000B9AEA700AD6B3100B15D1700BA6C
      2500BF732C00C47B3100C47A2F00C1772C00C0752800BF732600BD702400B96A
      1E00B6651C00B15E1800AD6C3300B9AEA700D0D0D00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEDEDE00C5C5C5006FACD5004EABE9004CAAE9004EAB
      E90051ABE90054ADE90070ADD500CACACA0000000000DBDBDB00ACABAA008683
      8100AFAEAD00D1CFCF00DCDBDC00DBDBDB00DCDBDC00D1CFCF00AFAEAD008683
      8100ACABAA00DADADA0000000000000000000000000000000000B68A3200EACB
      8D00EBB25600E8AB4A00DBA03B00B9861E00B5934E00CCCCCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCCCCC00B4934F00C88F2500E7A6
      3E00C9932C00B4924D00D0D0D000000000000000000000000000000000000000
      00000000000000000000C6C6C600AF805800B05E1800C1793100CF8B4500DCA2
      6300EABB8300F5D09E00F9D3A200F8D2A100F8D1A000F7D09F00F3CB9600E5B1
      7600D1924F00BF732700B7661C00B15E1800B0805800C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000985D3200D7961F00DCAC5900E8CA
      9500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECECE00BFBF
      BF00BBBBBB00BBBBBB00B6B6B60059ABE1005ECAF20085E2FB00AEEEFE0089E6
      FE0059DAFE0046D3FD0047C8FA0058B0EA00D1D1D100B4B1B1008E8B8900C7C7
      C500C5C3C200ACA9A600A29F9C00A29E9C00A29F9C00ACA9A600C5C3C200C7C7
      C5008E8B8900B1B0AF0000000000000000000000000000000000C08E2A00FFE1
      B000E5AC4E00E5AB4C00E5AA4900DEA23D00B9861D00B5934F00CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CCCCCC00B4934F00C78E2500E4A43C00E5AA
      4700E8B25700CC9A3A00B9964F00000000000000000000000000000000000000
      000000000000C4C4C400AC622500B96B2600CE8B4500E5B27700F9D4A400F2CA
      9600EABD8500E3B47800E0B07100E0B07100E0B07200E0B17200E3B47800E9BC
      8100F0C48E00F2C99500D99E5D00BB6B1D00B3621900AD652700C4C4C4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A6683700D7971F00D2901C00D290
      1C00D2901C00D2901C00DDAD5A00EACE9C00F7EFE20000000000000000000000
      00000000000000000000000000000000000000000000CACACA006EACD5004EAB
      E9004CAAE9004EABE90050ACE9004CAAE900D6FAFE00F5FFFF00F4FFFF00D5F8
      FF00A7EDFF007CE3FF004FDCFF004DB0F300BDBDBD00918C8900C3C1BF00BAB6
      B400ADABA800E7E6E700FFFFFF00FFFFFF00FFFFFF00E7E6E700ADABA800BAB6
      B400C3C1BF008F8C8A00D0D0D000000000000000000000000000CA9B4200FFDD
      AE00E5AE5200E5AD5000E4AB4C00E5AA4900DEA23D00B9861D00B6944F00D5D5
      D500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CCCCCC00B4934F00C78E2500E4A43B00E4A94600E5AE
      5100EEBE7100FFECCB00B6821600000000000000000000000000000000000000
      0000C6C6C600AC622500C47C3800D89C5A00F5CD9D00F5CF9C00E1B17400DFAC
      6E00DFAD6E00E0AD6E00DFAD6E00DFAC6E00DFAC6E00E0AD6E00E0AD6F00E0AD
      6F00DFAE6F00E2B27400F0C58E00ECBC8400C3772E00B7661C00AE652900C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBBDA300BEA088008B8D9400894B1900D8991F00D2901C00D290
      1C00D2901C00D2901C00D2901C00D2901C00D2901C00D2932500E3BA6D00CEA9
      8D0000000000000000000000000000000000000000005AB1E5005ECAF20085E2
      FB00AEEEFE0088E6FE0059DCFF004BA8E90096CDF20077BDEF009FCFF2007FC0
      EE0059ADEA0052ABE90053BEF3004DB0F300A49E9A00B0ABA900BEBBB900ACA9
      A800FFFEFE00FFFFFF00FFFFFF004C4C4C00FFFFFF00FFFFFF00FFFEFE00ACA9
      A800BEBBB900AFACAB00A7A5A400000000000000000000000000BA861D00FFE7
      C400ECBA6B00E5AF5400E5AE5100E4AB4C00E5AA4900DEA23D00B9861E00B8A7
      8300D7D7D7000000000000000000000000000000000000000000000000000000
      000000000000CCCCCC00B4934F00C78E2500E4A43B00E4A94600E4AD5100EDBD
      6E00FFE7C400D5A75600C6A25B0000000000000000000000000000000000D0D0
      D000AD642500C67F3C00DEA56600FBDBAB00EBBF8700DDAA6A00DFAB6B00DFAC
      6C00DFAC6C00DFAA6A00DDA76500DCA46000DCA46000DDA76500DFAA6A00DFAC
      6D00DFAC6D00DFAC6C00DEAC6C00E9B97F00F3C89400C67F3600B7671D00AE66
      2800D0D0D0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B7794300864B1F000B101B006F370200D9991F00D2901D00D290
      1D00D2901D00D2901D00D2901D00D2901D00D2901D00D2901D00D5951D00A458
      1F0000000000000000000000000000000000000000004CABEA00D6FAFE00F5FF
      FF00F4FFFF00D5F9FF00A8F0FF0049A8E90058C7F1007EDFFA00A7EBFD0083E3
      FD0056D8FE0045D2FC0046C6FA004CB0F200A0948D00C1BCBA00A8A5A300E3E2
      E100FEFEFD00FBFBFA00FFFFFE00FFFFFF00FFFFFE00FBFCFA00FEFEFD00E3E2
      E100A8A5A300C0BDBC0098949300000000000000000000000000CAAB6C00E4BA
      7800FFE5C000ECBA6B00E5AF5400E5AE5100E5AB4C00E5AA4900D89E3800B784
      1B00B8A68200D8D8D80000000000000000000000000000000000000000000000
      0000CCCCCC00B4934F00C78E2500E4A43B00E4A94600E4AD5100EDBD6E00FFE7
      C300D4A65400C6A45E000000000000000000000000000000000000000000B283
      5900BB6F2A00DFA56700FCDDAE00E8BB8100DBA66700DDA86900DDA96A00DDA9
      6A00DDA86900DBA46200EFD6B900FFFFFF00FFFFFF00EFD6B900DBA46200DDA8
      6900DDA96A00DDA96A00DDA96900DCA86800E6B57900F3C89400C47A3000B363
      1A00B3855B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD804D00894E20000A0F1B00743A0200DA992000D3901E00D390
      1E00D3901E00D3901E00D3901E00D3901E00D3901E00D3901E00D6941D00A75D
      230000000000000000000000000000000000000000004DACEA0096CDF20077BD
      EF009FCFF2007FC0EF0058AEEA0049A8E900D5FAFE00F4FFFF00F3FEFF00D4F8
      FF00A7EDFF007CE3FF004FDBFF004CAFF100A5989000C1BEBB00A19D9B00FFFF
      FF00FDFDFC00FCFCFB00FFFFFF0056565600FFFFFF00FEFEFD00FDFDFC00FFFF
      FF00A19E9C00C0BEBC009D9A980000000000000000000000000000000000C5A2
      5A00E9C18200FFE5C000ECBA6B00E5AF5400E5AE5100E5AB4C00E6AA4900D49C
      3500B7841B00BAA88300DDDDDD0000000000000000000000000000000000D0D0
      D000B4934F00C78E2400E4A33B00E4A94600E4AD5100EDBD6E00FFE7C300D4A6
      5400C6A45E000000000000000000000000000000000000000000C5BCB400B05D
      1700DB9F6000F8D7A600E9BD8500DAA46300DBA66600DCA76700DCA76700DCA7
      6700DBA66500D99F5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D99F5A00DBA6
      6500DCA76700DCA76700DCA76700DCA76600DBA66500E6B77C00ECBC8500BD6F
      2200B05E1800C5BCB40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C1844E008D512200090F1B00783D0200DB992100D4911F00D491
      1F00D4911F00D4911F00D4911F00D4911F00D4911F00D4911F00D7951E00AA61
      250000000000000000000000000000000000000000004EACEA0059C7F2007EDF
      FA00A7EBFD0082E3FD0056DAFE004AA8E90095CDF20077BDEF009FCFF2007FC0
      EE0059ADEA0052ABE90053BDF3004BAFF100AA9C9400C0BCB9009F9C9A00FFFF
      FE004F4F4F00FEFEFC0057575700A5A5A6005A5A5A007F7F8000A7A7A800D5D4
      D400A09D9B00BFBCBA00A29E9C00000000000000000000000000000000000000
      0000C6A25C00E9C18200FFE5C000ECBB6B00E5AF5400E5AE5100E5AB4C00E6AA
      4900D49C3500B7841B00BEB8AC0000000000000000000000000000000000B995
      4C00C78C1F00E4A13800E3A84500E4AD5100EDBD6E00FFE7C300D4A65400C6A4
      5E00000000000000000000000000000000000000000000000000AF6C3200CE8C
      4A00F0C59000F6D3A000D9A05E00DAA36100DBA46300DBA46300DBA46300DBA4
      6300DBA26100D89C5500FFFFFF00FFFFFF00FFFFFF00FFFFFF00D89C5500DBA2
      6100DBA46300DBA46300DBA46300DBA46300DBA36200DAA26100EFC38C00DAA0
      6100BA6B2100B06D350000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001513CD000000
      000000000000CD904D008D552500090F1B007B410200DB9A2300D4922000D492
      2000D4922000D4922000D4922000D4922000D4922000D4922000D7961F00AD65
      280000000000000000000000000000000000000000004CABEA00D5FAFE00F4FF
      FF00F3FEFF00D5F8FF00A7F0FF0049A8E80058C6F1007EDEF900A8EAFD0083E3
      FD0057D8FD0045D1FC0046C6F9004BAEF100ADA19900CAC6C4009E9A9800FAFA
      F900F6F6F500F6F6F500FEFEFD005B5B5B00FFFFFF00F8F8F700F6F7F600FAFA
      F9009E9B9900C9C6C500A5A2A100000000000000000000000000000000000000
      000000000000C6A35C00E3B97700FFE6C200ECBB6C00E5AF5400E5AE5100E5AB
      4C00E6AA4900D49C3500B7841B00BCB6AB00DCDCDC0000000000CBCBCB00C792
      2600FFF2CA00E9B25800E3AC4D00EDBC6D00FFE7C300D4A65400C6A45E000000
      00000000000000000000000000000000000000000000D4CFCC00B05E1700E6B0
      7400FFE3B600DBA66400D8A05D00D9A26000D9A26000D9A26000D9A26000D9A2
      6000D9A15F00D79D5700EDD2B300FFFFFF00FFFFFF00EDD2B300D79D5700D9A1
      5F00D9A26000D9A26000D9A26000D9A26000D9A26000D8A15E00DBA56500F3C9
      9500C37A3000B05F1700D4CFCC00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001513CD001B1B
      E40000000000D69D560092582600090E1B0080460600DC9B2500D6952200D594
      2300D5942300D5942300D5942300D5942300D5942300D5942300D7972200B068
      2C0000000000000000000000000000000000000000004DACEA0096CDF20077BD
      EF009FCFF2007FC0EF0058AEEA0047A7E800D2F7FD00F4FDFF00F6FDFF00D8F6
      FF00A8EAFD007CDFFE004ED9FF004BACF000A9A69900CFCBC800A7A3A100DAD8
      D700F2F1F000F0EFEE00F6F5F4007E7E7F00F6F5F400F1F0EF00F2F1F000DAD8
      D700A7A4A200CECBCA00A6A6A300000000000000000000000000000000000000
      00000000000000000000DBC9A400D4A55300FFE7C300EDBB6C00E5AF5400E5AE
      5100E5AB4C00E6AA4900D49C3500B8841A00B9B3A900C0C0C00080828700B490
      4700D5A64C00FFE9C000F2C67E00FFE6C200D4A65300C6A45E00000000000000
      00000000000000000000000000000000000000000000BB987900C57F3D00F0C4
      8E00F2CF9C00D69C5700D89F5C00D8A05D00D8A05D00D8A05D00D8A05D00D8A0
      5D00D8A05C00D79D5800D4974D00D2904200D2904200D4974E00D79D5800D8A0
      5D00D8A05D00D8A05D00D8A05D00D8A05D00D8A05D00D8A05C00D69E5A00EDBF
      8800D5985600B8682000BC987C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001513CD00242C
      F8001519E8007E4E6400A1621F00090E190086490A00D7911F00C4872700D796
      2300D5952500D5952500D5952500D5952500D5952500D5952500D7992400B36B
      2D0000000000000000000000000000000000000000004EACEA0059C7F2007EDF
      FA00A7EBFD0082E3FD0055DAFE0047A6E800E8FDFF0082E4FC004ED6FB0050D7
      FC0051D8FC0062DCFE0056DBFF004BAAF000BECBB600C7C0C000C8C6C400A4A2
      A000ECEBEA00EFEEED00F1F0EF00A3A3A300F1F0EF00EFEEED00ECEBEA00A4A2
      A000C9C6C400C6C1C2008FAD9D00000000000000000000000000000000000000
      0000000000000000000000000000DBC9A300D4A65400FFE7C400EDBB6D00E5AF
      5500E5AE5100E5AB4C00E6AA4900D59C3400BC85140082828200A4A6AC00BCBE
      C600B5904800D2A34900FFECCA00D5A65400C6A45E0000000000000000000000
      00000000000000000000000000000000000000000000AF6E3300D6985800FAD8
      A800E4B67A00D59A5600D79D5A00D79D5A00D79D5A00D79D5A00D79D5A00D79D
      5A00D79D5900D5995400E3BB8B00FFFFFF00FFFFFF00DCAB7100D69A5500D79D
      5A00D79D5A00D79D5A00D79D5A00D79D5A00D79D5A00D79D5A00D69B5800E1AE
      7100E7B57C00BD702700B16F3700000000000000000000000000000000000000
      00001F2CEB001F2CEB00222DEB00222CEB00212CEB00212BEB00222CEC002532
      F4002331F6001925F700362482000D110E00884B0B00EAD09500C4CBDC00C079
      1700D7992900D7972800D7972800D7972800D7972800D7972800D99B2700B770
      2F0000000000000000000000000000000000000000004CABEA00D5FAFE00F4FF
      FF00F3FEFF00D4F8FF00A7EFFF005DB5EC0063E4FC0063E1FB0065E0FA0067E0
      FA0068E1FA0068E2FB006AE6FE004EB5F6006FB18600B1ADAB00DCD8D900BFBD
      BB00A2A09E00D5D2D200F0EFEE00CAC9C900F0EFEE00D5D2D200A2A09E00BEBD
      BB00DBD8D800B6B1AF0069AF8A00000000000000000000000000000000000000
      000000000000000000000000000000000000DCCBA500CE9F4900FFE0B700EEBC
      6E00E5B05500E5AE5100E5AB4C00E6AA4900D69B3100B7892D00BCBBBE00BABC
      C100EAEFF800C4A15900C28D2400CAA55C000000000000000000000000000000
      00000000000000000000000000000000000000000000AD591200E7B27800FFE8
      BC00D79F5C00D4995400D59B5700D59B5700D59B5700D59B5700D59B5700D59B
      5700D59B5600D3964F00EBD0B000FFFFFF00FFFFFF00E0B48100D2954D00D49A
      5500D59B5700D59B5700D59B5700D59B5700D59B5700D59B5700D49A5500D89E
      5C00F4CC9900C37A3100AF5D1700000000000000000000000000000000000000
      00006D76EF00263DF4002A3FF4002A3FF4002A3EF400293DF400293CF400273A
      F3002739F3002839F500202FF8000B098F0090510600EAC87500DEC39100D494
      2500D7992C00D79A2C00D79A2C00D79A2C00D79A2C00D79A2C00DA9E2C00B974
      310000000000000000000000000000000000000000004DACEA0096CDF20077BD
      EF009FCFF2007FC0EF0059ADEA0051ABE90069D1F20077E6F70079EBF70079EB
      F80079EBF80076E7F90065D2F70053AFE1006BB0870086B09800BDB4B500E3DF
      E100D2D1D000A7A5A300979492009895920097949200A7A5A300D2D1D000E2DF
      E100BBB2B300C0DFCE0066AC8700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EEE9DD00C5933400FFE0
      B800EEBC6E00E5B05500E5AE5100E5AB4C00E6AA4800D5992D00B3852900E7E9
      EB00DBDEE300A9ABB30000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AC581000EDBB8100FFEB
      C100D0914B00D3965200D4985400D4985400D4985400D4985400D4985400D498
      5400D4985300D2944E00DDAE7600FFFFFF00FFFFFF00FAF2E900D2944B00D293
      4C00D4965200D4985400D4985400D4985400D4985400D4985400D4975300D194
      4F00F8D2A100C6803700AF5C1600000000000000000000000000000000000000
      00006F78EF002A44F4002D46F4002D45F4002C45F4002C44F4002C42F4002C42
      F4002B41F400293EF4002F48F6005C6FFF004F2B7D00E8B84D00DFAD4D00E0B0
      5400DDA74500D99E3200D99B2F00D99C3000D99C3100D99C3100DCA03100BC78
      330000000000000000000000000000000000000000004EACEA0059C7F2007EDE
      F900A8EAFD0083E3FD0057D8FE0044D1FD0049B7F1004FA8EA004BA7ED0049A7
      EF004BA8F1004DA8EB0069B8D8009BD1B3009FD4B40082C2A00083AF9800B9B4
      B300D7D3D300ECE9E900F4F2F300F4F2F300F4F2F300EBE9E900D7D2D200B4B0
      AF006D9D8000C8F2DD0064A98500000000000000000000000000000000000000
      0000D0D0D000C2C2C200D3D3D300000000000000000000000000EEE8DC00C694
      3400FFE1B900EEBD6F00E6B05500E5AE5100E5AB4C00E6AA4700D5992C00C696
      3600A6A7AC000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AC571000EFBD8600FFEC
      C300CF8F4700D2954E00D3965000D3965000D3965000D3965000D3965000D396
      5000D3965000D2944D00CF8D4100FCF5EF00FFFFFF00FFFFFF00FAF2EA00D8A3
      6500D1904600D3944E00D3965000D3965000D3965000D3965000D3954F00D092
      4A00F9D3A200C9833A00AF5C1600000000000000000000000000000000000000
      0000707BF2002A45F4002C48F4002C47F4002C46F4002C45F4002C46F3002F48
      F4002C45F4003852F50095A7FF001B1ACF0096581900E7BB5A00E0B25600E0B2
      5600E0B35700E1B45A00DEAC4B00D9A03600D99F3600DAA03700DCA43700C17D
      350000000000000000000000000000000000000000004BAAE900D3F8FD00F4FD
      FF00F6FDFF00D8F6FF00A8EAFD007CE0FE004ED8FF004DA8EC00BAE7BD00B7E7
      C20085BF960081BB940099D0AC0096CEAE0096CEAF0096D0B2007BBC9A007CBC
      9A00B7CCC000BEBDB900C3B9BB00C4BBBC00C3B9BB00BDBDB900B4C9BD00AEE4
      C8005BA37C00CCF2DF0062A7830000000000000000000000000000000000CCCC
      CC00959392008A8785009695950000000000000000000000000000000000E0DA
      D000C28D2400F8D49E00EFBD6E00E6B05500E5AE5100E6AD4D00E7A94300B37F
      1800C4C4C4000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AC570F00F1C08900FFED
      C400CC8D4300D0934B00D1944D00D1944D00D1944D00D1944D00D1944D00D194
      4C00D1944C00D1934B00CF904700D0904700F9F4EC00FFFFFF00FFFFFF00FFFF
      FF00D7A26400CF904600D1944C00D1944D00D1944D00D1944D00D1934C00CE90
      4700F9D4A400CB853F00AF5C1600000000000000000000000000000000000000
      00007480F40084A0FA00849EF900849EF900839CF900849CF9008BA0FA002E4B
      F4003D5BF60091A7FF002620D6000B0D11009A5E1D00E8BC6500E2B45D00E2B4
      5D00E2B45D00E2B45D00E2B65E00E3B45E00DFAB4B00DDA33B00DFA73E00C480
      360000000000000000000000000000000000000000004AA9E900E8FEFF0082E4
      FC004ED6FB0050D7FC0051D8FC0062DDFE0056DBFF004BA7ED00B2E2BF00AFE3
      C70064A67F008EC8A80092CBAD0090CAAC0090CAAC0092CBAE008DC8A90062A7
      8100ACE3C900AAE3C8006FB4900062AC87006FB49000A9E3C800A7E0C500ACE2
      C9005AA07900CFF2E10061A58000000000000000000000000000CCCCCC009695
      93009B989600B7B4B20088858300C7C7C700DBDBDB0000000000DBDBDB00C9C9
      C90083838400B98A2F00F8D29B00EFBD6F00E7B15700E9B05200C88D1E00A490
      6A0070707300BBBBBB00BEBEBE00BCBCBC00B7B7B700BBBBBB00BFBFBF00CECE
      CE000000000000000000000000000000000000000000AC570F00F4C58F00FFEF
      C600CB893F00CF8F4800D0914A00D0914A00D0914A00D0914A00CF8F4800CE8D
      4400CE8C4200CE8D4400CF8F4600CE8C4200CE8D4500F9F2EB00FFFFFF00FFFF
      FF00F6ECDF00CD893C00D08F4800D0914A00D0914A00D0914A00D0904800CD8C
      4300FAD5A500CD894300AF5C1500000000000000000000000000000000000000
      00003A3AED004D50EF004B4EEF004A4EEF004A4EEF004B50EF00363BEF004467
      F70094ACFE006245B700A56B2C00070C14009E652400E9C16C00E4B96500E4B9
      6500E4B96500E4B96500E4B96500E4B96500E4BA6700E4B66000DFAA4600C884
      3900000000000000000000000000000000000000000060B9F00063E5FD0063E1
      FB0065E0FA0067E0FA0068E1FA0068E2FB0069E5FD004BB1F300ABE0BE00AAE2
      C6005B9F7A008FCAAC008DC7AA008CC7A9008CC7A9008DC7AA008FCAAC005B9F
      7A00A9E2C700A9E2C8005B9D78005FA17C005B9D7800A8E1C700A5DEC300A8E1
      C600589C7500D2F2E4005FA47E000000000000000000D0D0D00096959300A09C
      9B00C2C1BE00BCBBB9009A97950094929200ABABAB00AEACAC00ABABAB007F7F
      8200A4A5AA00BBB9BA00B6882C00F9D39D00EDBA6700D49C3200BB975000B9BB
      C200A5A4A400797775007D7B79007A7875008482800077757300777573008989
      8600C2C2C20000000000000000000000000000000000AC581000F0C28A00FFEE
      C500D0934D00CE8C4400CF8F4700CF8F4700CF8F4700CF8E4600CD8A3F00DAA9
      7200E5C29B00DEB28100CD893D00CE8C4300CC893E00CC883A00FBF7F100FFFF
      FF00FFFFFF00CA843500CE8D4400CF8F4700CF8F4700CF8F4700CE8D4400D193
      4C00F8D3A100CD8A4400AF5C1600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292BEF008DA1
      F9002527FA00E7B66000AB713200060B1600A46A2700ECC47500E6BC6D00E6BC
      6D00E6BC6D00E6BC6D00E6BC6D00E6BC6D00E6BC6D00E6BC6F00E8C07100CA89
      3700000000000000000000000000000000000000000055AEDA0065D3F70076E7
      F90079EBF80079EBF80079EBF80076E6F90064D1F6005BB5E700A6DDBD00A6DF
      C400599C75008AC6A80088C4A60087C4A50087C4A50088C4A6008AC6A800599C
      7500A6E0C500A5DFC5005FA07900509269005FA07900A5DEC400A2DCC100A5DF
      C400559A7200D3F4E7005EA17C0000000000000000009B999800ADABAA00D6D4
      D300C8C7C6009F9C9B0093908F009996940082817F0083817F0082807E00908E
      8D00C1BFBE00BBBBBD00E6E7E700C2923300B4801300B5A47F00F0F3FB00C5C4
      C500B9B8B600AEACAA00BEBCBB00D4D2D200D3D1D100D4D2D100CFCDCC00A7A5
      A3007E7C7A00BDBDBD00000000000000000000000000B26F3600DFA76C00FFE5
      B800E0AC6E00CA873E00CD8B4300CD8C4400CD8C4400CC8A4200C9833600FFFF
      FF00FFFFFF00FEFCFA00CA873B00CA843700C9843700C57B2800F8EDE200FFFF
      FF00FFFFFF00C8813100CC8A4100CD8C4400CD8C4400CD8C4400CB894000DBA5
      6400EFC28B00C67F3A00B4723900000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002B27F1001B17
      F10000000000E3AF5B00AB753600060A1600AA6F2B00EDC97B00E8C27400E8C2
      7400E8C27400E8C27400E8C27400E8C27400E8C27400E8C27400EAC67900CD8C
      3B00000000000000000000000000000000000000000060A1780082C7ED004CA8
      EA004BA8F1004AA7F00049A7EF004FA9EC006ABADC009DD7BC00A0DABC00A2DD
      C2005B9C75007FBE9F0085C2A40083C1A20083C1A20085C2A4007FBE9F005B9C
      7500A2DDC300A0DAC000A2DCC200A3DDC300A2DCC2009FDABF009FDABF00A2DD
      C30052976E00D7F5EA005CA0790000000000000000008A878500FFFFFF00FFFF
      FF00C0BEBD009E9C9B009E9D9C00BFBDBB00B7B5B300B1AEAD00B0ADAB00908C
      8A0092908E00F1F0F000DCDEE000AAACB30000000000A3A4AA00C6C5C800EFEF
      EF00C3C1BF00B7B5B300C4C2C000C8C6C400CECCCA00D5D3D200DDDBDA00E0E0
      DF00C8C6C60087868400000000000000000000000000CCA88B00CD8A4C00FCDA
      AB00F1CF9A00C8823700CB883F00CC8A4100CC8A4100CC893F00C9823400F6EB
      DF00FFFFFF00FFFFFF00F4E7D800D49E6000D59E6100F0DDC800FFFFFF00FFFF
      FF00FFFDFC00C8813200CC893F00CC8A4100CC8A4100CB893F00C9853A00EBBF
      8700E2AE7200BE742F00CCA98C00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001812F1000000
      000000000000DEAB6500AF783800050A1500AF752E00EFCD8400EAC67D00EAC6
      7D00EAC67D00EAC67D00EAC67D00EAC67D00EAC67D00EAC67D00EDCA8300D090
      3C0000000000000000000000000000000000000000005C9E7500DFF7E8005495
      6400A7DFBE00A5DCBB00A2DAB900A0D9B8009FD8B9009CD7BB009BD7BC009ED9
      C0006FAF8D006BAB880080C0A2007FBFA0007FBFA00080C0A2006BAB88006FAF
      8D009ED9C0009BD7BD009BD7BD009BD7BD009BD7BD009CD7BE009ED9C000A1DD
      C40050946B00DCF6EC005A9E77000000000000000000A9A8A6009E9B9900BBB9
      B800DDDCDC00BFBDBC00CBC9C800C4C2BF00BDBBB900B7B3B100B0ADAB00ADAA
      A8008C888600A09E9D00AAA8A80000000000000000000000000092919000CBC9
      C800DCDAD900B8B6B400BCBAB800C3C1C000ACAAA80077757300797775007977
      75007A7876007C7A780000000000000000000000000000000000B05C1500FCD3
      A100FFF0C900CC8B4200C9843900CB883D00CB883E00CB883D00C9833700D197
      5700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D1965600C9833600CB883D00CB883E00CB883E00C9853A00CD8C4200FAD7
      A800D99D5C00B05E170000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFAE6800B17B3A00040A1500B27A3200F1D18F00EDCA8600EDCA
      8600EDCA8600EDCA8600EDCA8600EDCA8600EDCA8600EDCA8600EFCE8D00D394
      3D000000000000000000000000000000000000000000589C7400E0F7EF0062A5
      7F006AAC880072B28F009CD8BD0099D6BB0099D5BB0098D5BB0098D5BC009AD7
      BD0099D5BC0056976E006AAB88007DBF9F007DBF9F006AAB880056976E0099D5
      BC009AD7BD0098D5BC0098D5BB0098D5BB0098D5BC009BD7BE0071B18F0069AC
      890061A58000E0F7EF00589C750000000000000000000000000000000000A5A3
      A200B3B1B000E7E6E500D0CECD00CAC8C600C3C1C000BDBBB900B6B4B200AFAC
      AA00BFBDBB007A7876000000000000000000000000000000000088878600C9C8
      C800BDBAB900B2B0AE00B8B6B400C0BFBC008E8B8A0000000000000000000000
      0000000000000000000000000000000000000000000000000000B4703700DEA3
      6A00FFE1B400F6D6A400C47C2E00C7823700C9853A00C9853A00C8833800C67F
      3000CC8B4400F1E0CD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F1E0CC00D095
      5400C67F2F00C8833700C9853A00C9853A00C8833700C57E3100EFC69000EBBD
      8500C9834100B672390000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1B26A00B37E3B0004091400B8803700F4D79700EFD08F00EFD0
      8F00EFD08F00EFD08F00EFD08F00EFD08F00EFD08F00EFD08F00F1D49600D699
      3F000000000000000000000000000000000000000000559B7200E3F9F200599E
      78005FA27D005EA07B009BD9C10099D7BE0098D7BD0098D7BD0098D7BD0099D7
      BE009BD9C0008ECEB30065A5810052936B0052936B0065A581008ECEB3009BD9
      C00099D7BE0098D7BD0098D7BD0098D7BD0099D7BE009BD9C1005EA07B005FA2
      7D00599E7800E3F9F200559B7200000000000000000000000000000000000000
      0000837F7D00FFFFFF00DEDEDD00D0D0CF00CBC9C800C5C2C200BDBBB900C4C2
      C100FFFFFF007B7977000000000000000000000000000000000083807E00EBE9
      E900A8A5A300AEABA900B4B3B100BDBBB900908D8B0000000000000000000000
      0000000000000000000000000000000000000000000000000000E8DFD800AF5D
      1600F8CD9900FFEEC300E0AE6F00C37B2D00C7813400C8833700C8833700C882
      3500C67F3000C47B2900C3782400C2762200C2762200C3782400C47A2900C67E
      2F00C7813500C8833700C8833700C7813500C57D2F00DCA66600F7D3A200DA9D
      5C00AF5E1700E8DFD80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3B66C00B8823E00040A1400C6903F00FFE4A900F8DE9F00F6DA
      9C00F3D79A00F2D79900F2D79900F2D79900F2D79900F2D79900F4DBA000D89C
      4100000000000000000000000000000000000000000054987000E7F9F400478D
      61004D9267004C906600478C6000468B5E00468B5E00468B5E00468B5E00468B
      5E00478B5F00488D61004A8F63004B9064004B9064004A8F6300488D6100478B
      5F00468B5E00468B5E00468B5E00468B5E00468B5E00478C60004C9066004D92
      6700478D6100E7F9F40054987000000000000000000000000000000000000000
      0000A5A3A200B2B0AF00FFFFFF00DFDEDD00D3D0CF00CCCAC900D0CFCD00FFFF
      FF00AEADAC009E9D9B000000000000000000000000000000000084817F00E7E6
      E500A8A5A200ABA8A600B0ADAB00B8B6B4008F8D8B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C597
      6E00C47D3C00FED9A700FFF3CA00DAA46300C2782A00C57D3100C77F3300C780
      3400C77F3300C77E3200C67E3100C67E3100C67E3100C67E3100C77E3200C77F
      3300C7803400C77F3300C67E3100C37A2B00D89F5D00FDDEB000E3AC7100BC70
      2C00C7976E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4B97000B7833F000409140026211C0084745800907B5D00C8B1
      8200F4DCA600FEE8B000FAE4AD00F9E2AB00F7DFA900F6DFA700F7E2AF00DBA0
      4500000000000000000000000000000000000000000053986E00E8F8F400E3F5
      F000E4F5F000E4F5F000E3F5EF00E3F5EF00E3F5EF00E3F5EF00E3F5EF00E3F5
      EF00E3F5EF00E4F5F000E4F5F000E4F6F000E4F6F000E4F5F000E4F5F000E3F5
      EF00E3F5EF00E3F5EF00E3F5EF00E3F5EF00E3F5EF00E3F5EF00E4F5F000E4F5
      F000E3F5F000E8F8F40053986E00000000000000000000000000000000000000
      000000000000A5A3A200B1AFAE00FFFFFF00E1E0DF00D3D2D100D9D8D700ACAB
      A90094939300000000000000000000000000000000000000000085828000F4F3
      F300A7A4A200AAA7A500ADAAA800B3B0AE008F8D8B00D7D7D700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B0652600DB9F6400FFDAAA00FFF3CA00DDAB6B00BF742400C2792B00C47C
      2F00C57D3000C57E3100C57E3100C57E3100C57E3100C57E3100C57E3100C57D
      3000C47C2F00C37A2C00C0762600DBA56400FEE0B200E7B47B00CB884500B269
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7BB7000D09B480070512E0075552F006D4F2C006B4D2B006749
      2900624527005C402400B28B4F00BF965500EDCA7B00F0D38F00F4D99B00DFA7
      4800000000000000000000000000000000000000000085B095007EC0A1009AD9
      BF0096D6BB0095D5BA0095D5BA0095D5BA0095D5BA0095D5BA0095D5BA0095D5
      BA0095D5BA0095D5BA0095D5BA0095D5BA0095D5BA0095D5BA0095D5BA0095D5
      BA0095D5BA0095D5BA0095D5BA0095D5BA0095D5BA0095D5BA0095D5BA0096D6
      BB009AD9BF007EC0A10085B09500000000000000000000000000000000000000
      00000000000000000000A4A3A200B0ADAC00FFFFFF00E3E1E000D8D7D5009A98
      960083817F00C4C4C400000000000000000000000000000000008F8C8A00DFDF
      DD00BFBCBA00A9A6A400ACA8A600AFACAA008F8C8A00B6B6B600BBBBBB00BBBB
      BB00BBBBBB00CCCCCC0000000000000000000000000000000000000000000000
      000000000000B1652500DB9F6400FFDAAA00FFEEC500F5D4A200C5803200BF73
      2200C1762700C2792900C37A2B00C37A2C00C37A2C00C37A2B00C2792A00C177
      2700BF742300C67F3200F0CA9400FBDCAD00E9B77E00CD8A4900B16829000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E7BF7400E6B35200EAB75500EBB85500EBB85500EBB85500EBB8
      5500EBB85500EAB75500E8B35100E6B15000E3AD4E00E3AC4D00E3AC4D00E4B0
      500000000000000000000000000000000000000000000000000085B0960093CA
      AC00BDEED400BBECD200BBECD200BBECD200BBECD200BBECD200BBECD200BBEC
      D200BBECD200BBECD200BBECD200BBECD200BBECD200BBECD200BBECD200BBEC
      D200BBECD200BBECD200BBECD200BBECD200BBECD200BBECD200BBECD200BDEE
      D40093CAAC0085B0960000000000000000000000000000000000000000000000
      0000000000000000000000000000A4A2A100AEAEAB00FFFFFF00EDECEC00DCDB
      DA009D9B99007F7D7B00BEBEBE00D3D3D3000000000000000000C6C5C400A29E
      9E00EAEAE900ADAAA700A9A6A400ACA9A7009E9B990081807E00817F7C007F7D
      7B00807D7B0082807E0000000000000000000000000000000000000000000000
      00000000000000000000B1652700C57C3C00FBCF9D00FFE4B800FFF3CA00EFCA
      9300D89F5C00C57D3100BD6D1C00BD6E1D00BD6E1D00BD6E1C00C57E3000D79C
      5A00EDC38D00FFE6BA00F6D09D00E6B17600BF743000B3682900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000085B1
      9500509269004F9168004F9168004F9168004F9168004F9168004F9168004F91
      68004F9168004F9168004F9168004F9168004F9168004F9168004F9168004F91
      68004F9168004F9168004F9168004F9168004F9168004F9168004F9168005092
      690085B195000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3A2A000AFADAC00FCFCFC00FEFE
      FD00F3F2F300B4B2B100777573009F9E9E00AEAEAC00CECECE0000000000918E
      8D00AFACAB00EBEAE900BFBCBA00A7A4A200A9A6A400ABA8A600C1BFBC00EBEA
      E900E3E3E200817F7D0000000000000000000000000000000000000000000000
      0000000000000000000000000000C9996F00AF5D1600E0A76E00FFD9A800FFDF
      B100FFE8BD00FFF0C600FFF0C800FFEFC700FFEEC600FFEDC400FFEAC000FDDF
      B100F7D09D00F1C18B00D6975900AF5D1700CA99720000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AEADAC0082807E00D1D0
      CF00FDFDFE00FFFFFF00E5E5E400AEADAC009593910091908E00000000000000
      0000928F8E00A29E9E00DFDFDD00F3F3F200F2F2F100F3F3F200ECECEB00C9C7
      C60088858300E6E6E60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFE5DE00B7733900AF5D1600D08F
      5000E4AD7400F8CC9800FBD19E00FACE9B00F7CC9900F6CA9600F1C18B00DDA2
      6800CA864700B05E1600B7743C00EFE5DE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAB
      AA0083817F0099979500B3B2B100BEBDBC00C1C0BF009E9D9B00969593000000
      000000000000C5C4C300918F8D0084817F0099969400827F7D0082807E00A6A5
      A400E9E8E8000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D5B2
      9400B7743A00AC570F00AB560E00AB560E00AB560E00AC570F00AC581000B775
      3B00D6B294000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000CCCCCC00BBBBBB00BBBBBB00BBBB
      BB00C7C7C7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CDCDCD00BCBCBC00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BCBCBC00CDCDCD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CDCDCD00BFBFBF00BBBBBB00BBBB
      BB00BBBBBB00BFBFBF00CFCFCF00D1D1D1002375BE002C73B5002F73B3003073
      B4003077B600C7C7C70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0D0
      D000C1C1C100BCBCBC00BBBBBB00BCBCBC00C1C1C100D0D0D000000000000000
      00000000000000000000000000000000000000000000B2B2B000AFAFAD00AEAE
      AB00ADADAB00ADADAB00ADADAB00ADADAB00ADADAB00ADADAB00ADADAB00ADAD
      AB00ADADAB00ADADAB00ADADAB00ADADAB00ADADAB00ADADAB00ADADAB00ADAD
      AB00ADADAB00ADADAB00AEAEAB00AFAFAD00B2B2B00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DBDBDB00BDBBBB009D8F800095806900947E6800937E
      6800947E6800957F69009E908100B3B3B3002173BD004CC7FE004DC3F8004DC4
      F8003887C5003378B600D7D7D700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CDCDCD00BCBCBC00BBBB
      BB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BFBFBF00D3D3
      D300000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00BCBCBC00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BBBBBB00BFBFBF00D3D3D300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DADADA00C0C0C0004899
      740004894900008B4700008A4700008B47000489490048997400C0C0C000DADA
      DA000000000000000000000000000000000000000000B0B0AD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B0B0AD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B7B1AA009D8A7200C5B7A500E7E2D600F4F0E400F3F0
      E400F4F0E400E7E2D600C7B9A700A3896D00507A9F00328FD3004AC1F8004BBE
      F4004DC3F8003376B500B6B6B600BBBBBB00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BFBFBF00D3D3D300000000000000000000000000C3935200C38F4A00C28E
      4900C28F4A00C28F4A00C28F4A00C28F4A00C28F4A00C28E4900C38F4A00C19E
      6C00000000000000000000000000000000000000000000000000000000000000
      0000A9A9A900A6A6A700A4A4A500A3A4A400A3A4A400A3A4A400A3A4A400A3A4
      A400A4A4A500A6A6A700AFAFAF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9D9D90087AE9B00008A460007A5
      79000AB89E000CBEA9000CBDA9000CBEA9000AB89E0007A57900008A460087AE
      9B00DADADA0000000000000000000000000000000000AEAEAB00FFFFFF00FFFF
      FF00FFFEFF00FFFFFF00FFFFFF00FFFFFF00FFFEFF00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00AEAEAB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009F8A7400D8CFBD00DED5C100D3C6AE00CEC1A700CEC0
      A700CEC1A700D3C6AE00DFD5C100DED1BF00A7886A0051759700338FCF0050C4
      F90052C5F8002F72B0003277B6002E7BBF00A88561009C836700988169009781
      690097826A00A2948500000000000000000000000000C38F4900FFE29600FFD2
      7000FFD37200FFD47300FFD47300FFD47300FFD37200FFD27000FFE29600C38F
      4900000000000000000000000000000000000000000000000000000000000000
      0000A6A6A700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A6A6A700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007AAC9400008D4D0018BB9E001DC4
      AE000FBFA40004BB9F0004BB9F0006BCA00010BFA4001DC4AE0018BB9E00008D
      4D008BB1A00000000000000000000000000000000000ADADAB00FFFFFF00FDFD
      FD00FEFDFD00FFFFFF00FFFFFF00FFFFFF00FEFDFD00FCFCFC00FDFDFD00FDFD
      FD00FCFCFC00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FDFD
      FD00FDFDFD00FCFCFC00FDFDFD00FFFFFF00ADADAB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A28E7800C9BAA200C0AF9400BEAC9100BDAB9000BDAB
      9000BDAB9000BEAC9100C0AF9400C9B9A000A38B7200DCC8AB00668FB100368F
      CF005BCBFC005CCAFA005DCDFD002F73B5002776BD00E4CBAA00DECAAC00DCC9
      AD00DCCCB3009D846800000000000000000000000000C28F4800FFD58A00FEC4
      6100FFC66400BA894700FFC86500BA894700FFC66400FEC46100FFD58A00C28F
      4800000000000000000000000000000000000000000000000000000000000000
      0000A4A4A600FFFFF700FFF9EA00FFF8E900FFF8E900FFF8E900FFF8E900FFF8
      E900FFF9EA00FFFFF700A4A4A600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0D0D0000089460026C2A2002BCCB10004BF
      9E0000BB980000BA960000BB980000BC9A0000BD9A0005BF9E002BCCB10026C2
      A20000894600D0D0D000000000000000000000000000ADADAB00FFFFFF00FEFD
      FD00FFFEFF00FFFFFF00007F3F00FFFFFF00FFFFFF00FFFEFE00FFFFFF00FFFF
      FF00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FEFEFE00FCFCFC00FCFCFC00FFFFFF00ADADAB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A7937E00B29E8100B09B7E00DACFB600E4DCCB00E4DB
      CA00E4DCCB00DACFB600B09B7E00B19C8000A6927B00D3C4AE00DAC4A900678E
      B1003B93D10065D1FD0065CEFB0066D1FD0052B0E4002B73B7002874B9003F80
      B90087A3B800A9846100000000000000000000000000C28F4800FFCC8100FBB7
      5400BA884400FEBB5700BB894500FEBB5700BA884400FBB75400FFCC8100C28F
      4800000000000000000000000000000000000000000000000000000000000000
      0000A4A4A600FFFDEA00FFF3D800FFF2D800FFF2D800FFF2D800FFF2D800FFF2
      D800FFF3D800FFFDEA00A4A4A600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DADADA004E9E76001DB0810040D4BB0006C29F0000BF
      990000BB9400FFFFFF0000B9900000BD960000BF9A0000C09A0006C29F0040D4
      BB001EB0820050A07A00000000000000000000000000ADADAB00FFFFFF00FFFD
      FF00FFFFFF0000804000FFFFFF0000804000FFFFFF00FFFFFF0097959600C2C2
      C200FFFFFF0097979700C3C3C300C3C3C300C2C2C200C1C1C100FFFFFF009595
      9500C1C1C100FCFCFD00FBFBFB00FFFFFF00ADADAB0000000000000000000000
      00000000000000000000000000000000000000000000D3D3D300BFBFBF00BBBB
      BB00BBBBBB00BABABA00B2AFAA00A8968200A9927700CFC2AA00BCA98800BCA9
      8800BCA98800CFC2AA00A9927700AE9A8400C6B8A500D2C7B200D4C7AF00DDC9
      AD006C94B5004397D20071D5FD005FC6F80048B2F4004CB7F7004CB8F9003FA9
      F100358ACE004C7FAB00D1D1D1000000000000000000C6904500FFC57500FFD2
      9600FFD29600FFD39600FFD39600FFD39600FFD29600FFD29600FFC57500C690
      4500000000000000000000000000000000000000000000000000000000000000
      0000A5A6A700FFFEE300FFFFF200FFFFF100FFFFF100FFFFF100FFFFF100FFFF
      F100FFFFF200FFFEE300A5A6A700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CDCDCD00C0C0C000BCBC
      BC00BBBBBB00BBBBBB00B6B6B6000A8A470045D2B5002FD0B00000C2990000C2
      990000BD9100FFFFFF00FFFFFF0000BB8E0000C0970000C29A0000C299002FD0
      B00047D2B50005894800000000000000000000000000ADADAB00FFFFFF00FFFE
      FF00007E3D00FFFFFF00FFFFFF00FFFFFF0000804000FFFFFF00FFFFFF00FEFD
      FC00FCFCFB00FDFEFC00FEFEFD00FDFDFC00FDFDFC00FCFCFB00FCFCFB00FDFE
      FC00FCFCFB00FAFBF900FAFAF800FFFFFF00ADADAB0000000000000000000000
      00000000000000000000000000000000000000000000A294850097836C009581
      6B0095816A0094806A0094806900937F6900927E670099867100917C6600917D
      6600917C660099867100927E6700927E6800917D6600917C6500917C6400957D
      6300A17F5D002974B9006BD1FE0058BDF60075D5FB0079D8FC007AD9FC0077D8
      FE005CC5FD003D8FCD007DA0BE000000000000000000B9905400DDA96A00CB8A
      3700CB8B3800CC8B3800CC8B3800CC8B3800CB8B3800CB8A3700DDA96A00B990
      5400000000000000000000000000000000000000000000000000000000000000
      0000A7A7A800C0C1C2009C9D9F009C9DA0009C9EA0009C9EA0009C9EA0009C9D
      A0009C9D9F00C0C1C200A7A7A800000000000000000000000000000000000000
      0000000000000000000000000000C9C9C900B1B1B100908E8E0082807E00827E
      7C00817E7C00847E7E00917D810000883E0062E3CB0017CCA50000C5990000C5
      990000C09000FFFFFF00FFFFFF00FFFFFF0000BF8F0000C4980000C5990017CC
      A50065E3CC0000884400000000000000000000000000ADADAB00FFFFFF00FEF9
      FA00FFFBFD00FFFAFB00FCF9F900FFFAFC00FFFFFF00007F3E00FFFDFF00FBF9
      F900F9F8F800F9F8F800F9F8F800F9F8F800F9F8F800F9F7F800F8F7F700F9F8
      F800F9F7F800F8F7F700F8F7F700FFFFFF00ADADAB0000000000000000000000
      0000000000000000000000000000000000000000000097836E00D1BA9D00C7AF
      8F00C6AD8E00C5AD8E00C5AD8E00C4AD8E00C4AC8D00C4AC8D00C4AC8D00C4AC
      8D00C4AC8D00C4AC8D00C4AC8D00C4AC8D00C4AC8D00C4AC8D00C5AD8D00C8AE
      8D00D8B58E002773BA0060C9FE0081DCFE007FDBFD007FDBFE007FDDFF0081DE
      FF0084E1FF005ABFF6003C80B9000000000000000000268FE50099D4E60070BF
      DB0071C1DC0073C2DD0073C2DD0073C2DD0071C1DC0070BFDB0099D4E600268F
      E500000000000000000000000000000000000000000000000000000000000000
      0000A6A6A700FAF9F500EDEBE600EDEBE600EDEBE600EDEBE600EDEBE600EDEB
      E600EDEBE600FAF9F500A6A6A700000000000000000000000000000000000000
      000000000000DADADA00BBBBBB008A888600888583009C999700A39F9F00ABA7
      A500AAA7A400ADA7A600BBA8AC0000843A0074E7D00014CEA30000C8980000C8
      980000C38F00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000C6940000C8970014CE
      A30077E8D20000874400000000000000000000000000ADADAB00FFFFFF00F9F7
      F700F9F7F700F9F7F700F9F7F700FAF7F800FFF9FB00FFFCFF00FFFEFF00FFFC
      FC00FBF9F900F9F7F700F7F6F600F7F6F600F7F6F600F7F6F600F7F6F600F7F6
      F600F7F6F600F7F6F600F7F6F600FFFFFF00ADADAB0000000000000000000000
      0000000000000000000000000000000000000000000098846D00D2BDA100D9D1
      BD00ECECE700EBECE900EAECE900EAEBE900E9EAE900E9EAE900E8EAE900E8E9
      E900E8EAE900E9EAE900E9EAE900E9EBE900EAECE900EBECE900ECECE700DBD2
      BC00D8B893002C7ABE006DD4FF007CDAFD007BDAFD006BC7F1004191CA004292
      CC006FCCF40070D8FF003C7EB8000000000000000000278EE4007CDCFF0046C9
      FF0049CBFF002389E3004BCEFF002389E30049CBFF0046C9FF007CDCFF00278E
      E400000000000000000000000000000000000000000000000000000000000000
      0000A4A5A600FFFFF800FFFBEB00FFFAEB00FFFAEB00FFFAEB00FFFAEB00FFFA
      EB00FFFBEB00FFFFF800A4A5A600000000000000000000000000000000000000
      0000DADADA00ACABAB00868381009C989800AEACAA00BCBAB800CECDCA00D6D5
      D300D5D4D200D8D5D400E8D9DD00007F340084ECD60020D3A80000CB980000CB
      980000C78F00FFFFFF00FFFFFF00FFFFFF0000C68E0000CA970000CA970020D3
      A80088EED90000874300000000000000000000000000ADADAB00FFFFFF00F6F5
      F500F8F6F600FDF8F900FFF9FC00FDF8F900FAF7F800FFFCFC00747D8200B5C5
      CE00FFFFFF00FFFCFA00FBF8F700F8F7F600F7F6F600F7F6F600F7F6F600F7F6
      F600F7F5F500F6F5F500F6F5F500FFFFFF00ADADAB0000000000000000000000
      0000000000000000000000000000000000000000000099846E00D6C2A800D2CB
      B800E18E2400E3911E00E9982200ED9D2200F3A42200F7AA2200FCB02300FFB3
      2300FDB12300F8AB2200F4A52200EEA02200EA992200E6932000E1891900D3CC
      B800DBBE9B002A7ABF0072DAFF0077D8FC0077D9FD003F90CA00FFFFE900E8C6
      A2004395CE0076DFFF003D7FBA000000000000000000288EE2006FD7FF0034C2
      FF002386DF0037C6FF002488E00037C6FF002386DF0034C2FF006FD7FF00288E
      E300000000000000000000000000D3D3D300C9C9C90000000000000000000000
      0000A4A5A600FFFFED00FFF3D800FFF2D800FFF2D800FFF2D800FFF2D800FFF2
      D800FFF3D800FFFFED00A4A4A600000000000000000000000000000000000000
      0000B0AEAD008C898600A9A7A500B4B2B100CCCBC900E3E2E100F8F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00018D4C0079E2C60056E1BF0000CD960000CE
      970000CA9000FFFFFF00FFFFFF0000C98D0000CD950000CE980000CD960057E2
      C00082E5CC0006884800000000000000000000000000ADADAB00FFFFFF00F6F5
      F500FCF7F900FFFCFF0000814100FFFCFF00FDF8FA00FEFCFC00BACAD400463F
      3C00415B7100AAC5D800FFFFFB00FFFDFA00FCFAF900F9F9F800F8F8F800F7F7
      F700F7F7F700F5F5F500F4F4F400FFFFFF00ADADAB0000000000000000000000
      0000000000000000000000000000000000000000000099857000DAC8B200CCC4
      B300E3953100E79E3A00E89D2F00ECA12E00F1A82F00F5AD2F00FAB33000FEB8
      3000FBB53000F6AF2F00F2A92F00EEA42F00E99E2F00E5982C00E18F2300CEC5
      B400DFC3A4003677B1006BD1FA0072D8FC0072D9FD004192CC00BAB2A900BBB3
      AB004498CF0072D7FC003F82BB0000000000000000001D8FEE0055D3FF0072DC
      FF0072DCFF0072DDFF0072DDFF0072DDFF0072DCFF0072DCFF0056D3FF001D8F
      EE000000000000000000DBDBDB00B9946800B9844400C1C1C100000000000000
      0000A5A6A800FFFFE700FFFFF100FFFFF000FFFFF100FFFFF100FFFFF100FFFF
      F000FFFFF100FFFFE700A5A6A70000000000000000000000000000000000C6C6
      C6008D8A8800AAA7A500B4B1B000CFCECB00F9FAF800FFFFFF00FFFFFF00FFFF
      FF00BEBEBE00C0BFBF00FFFFFF0061B8900034B7850093F1DA000FD6A20000D0
      960000CE9200FFFFFF0000CC8E0000D0950000D1980000D197000FD6A20096F2
      DC0044BE91005FAE8800000000000000000000000000ADADAB00FFFFFF00FAF5
      F700FFFAFF0000824200FFFEFF0000824200FFFCFF00FFFCFE00A7A3A2004866
      7900566D7A0060B4E7003373A5006D819200D2CBC600C7C5C300C2C1C100C0C0
      C000BEBEBE00F5F5F500F3F3F300FFFFFF00ADADAB0000000000000000000000
      000000000000000000000000000000000000000000009C877000DFCFB900C7BE
      AC00E2953200E5A04100EAA64400ECA53700F0A63000F3AC3100F7B03100FAB2
      3300F7B13300F4AD3200F1A83200ECA33200E89E3200E4982F00E18F2500C8BF
      AD00E0CAAF00667E92004297D2006EDAFF006ED8FD0062C6F0004295CD004496
      D00064CCF6004C9ED3008DB1CE000000000000000000BA8F5200E1AB6D00CC87
      3500CB883700CC893700CC893700CC893700CB883700CC873400E2AB6C009E91
      7300DBDBDB00D3D3D300B9B9B900B8834400F8C87D00B6814100C1C1C100CCCC
      CC00A6A8AB00C5C6C9009A9B9E009B9C9E009B9C9E009B9C9E009B9C9E009B9C
      9E009A9B9E00C5C6C800A5A5A600000000000000000000000000DDDDDD009290
      8E00A19E9C00B2B0AE00C7C7C400FFFFFE00FFFFFE00FFFFFC00FDFDFC00FFFF
      FF00BEBEBE00BFBEBE00FFFFFF00FFFDFE0000823C006EDEBB008AF0D4000DD9
      A00000D2930000D2910000D3930000D4960000D395000FD9A0008CF1D50078E2
      C2000086430000000000000000000000000000000000ADADAB00FFFFFF00FCF6
      F70000803E00FFFAFD00FFF8FA00FFFAFE0000824200FFFCFF00FFFEFC00AFCA
      DD0067BDE900A4E1FF007BC9FA00408ECC00235E9600FFFFFB00FEFBF700F7F7
      F500F5F5F400F3F3F200F2F2F100FFFFFF00ADADAB0000000000000000000000
      000000000000000000000000000000000000000000009C887200E4D5C100C1B7
      A400E1913000E39E3D00E8A64500EEAC4D00EFAC4500F1A93300F3AA2F00F4AC
      3000F3AC3000F1A93100EEA53100EBA13100E79C3000E2962E00E08D2400C1B7
      A500E2D0B900A48668004D88BE003F95D00061CCF7006AD9FF006BDBFF0063D0
      FA00459BD3004D82B000000000000000000000000000C68F4400FFE39B00FFD1
      6C00FFD26F00FFD37000FFD37000FFD37000FFD26F00FFD16C00FFE39A00C88F
      4300D3D3D300BA966B00B8824300B5804100E9B86D00EAB86E00B7813F00B0B0
      B000A4A8AE00FFFFFF00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFFFE00FFFF
      FE00FFFFFE00FFFFFF00A5A5A600000000000000000000000000BFBEBE00928F
      8D00B0ADAC00B6B6B300F5F5F300FFFFFC00345AFF00F3F5F900FFFFF900FEFC
      FB00FEFDFC00FEFDFD00FEFCFC00FFFFFF009CD0B70000823A006EDFBB0093F4
      D80055E7BE0022DFA80019DDA40023DFA90057E8BE0096F5DA0078E3C200008D
      4C00AFD4C30000000000000000000000000000000000ADADAB00FFFFFF00F6F3
      F300FBF4F600F8F4F400F5F3F200FAF4F500FFF9FB0000813F00FFF8F800FFFA
      F6006B9DC200EFFDFF00A9DEFB0054B4FB000C95FF00265D9100FFFFF600FAF7
      F300F3F3F100F1F1F000F1F1F000FFFFFF00ADADAB0000000000000000000000
      000000000000000000000000000000000000000000009D897300E8DCC900BCB1
      9D00DF8E2E00E1993C00E6A14200EAA84900EDAF4F00F0B45500F1B55300F1AF
      4400F0AB3B00ECA22C00EBA02D00E79B2C00E3972B00DF912900DF892100BCB0
      9C00E4D6C1009E856C00E6CFB40088A2B7004483BA00307ABB00307ABB004484
      B90093B1CA00AB8B6B00000000000000000000000000C28E4700FFDA9300FEC3
      6000FFC66300BA894700FFC86500BA894700FFC66300FEC36000FFDA9300C38F
      4700D2D2D200C38E4B00EABF7F00E1AC5F00DDA95C00DEAA5E00E2AD5F00B97F
      3800A2A7AF00FFFFFC00FFF9E900FFF8E900FFF8E900FFF8E900FFF8E900FFF8
      E900FFF9E900FFFFFA00A4A4A500000000000000000000000000A09E9D00A3A1
      9F00B2B0AE00CFCCCB00FEFEFE00FEFDF900F1F3F800395EFD00F5F6F800FFFF
      F800FCFBF800F9F9F900F9F9F900FDFAFB00FFFFFF00AFD8C50000823C0034B9
      86007AE8C50093F8DB0095F8DC0096F9DD0081EBCA0044C0910000864300B1D6
      C4000000000000000000000000000000000000000000ADADAB00FFFFFF00F0F0
      EF00F2F0F000F2F1F000F2F1F000F3F1F100F7F3F300FBF4F500F6F3F200F9F5
      F200A3BDD00074B7D900EBFBFF005DBCFF001296FF000F96FF00265D9100FFFE
      F400F8F5F100F1F1EF00F0F0EF00FFFFFF00ADADAB0000000000000000000000
      000000000000000000000000000000000000000000009F8B7500EDE2D000B7A9
      9500DC8C2C00DF973A00E39D4000E7A34500EAA94B00ECAD5100EEB25700EFB5
      5D00EFB86200F0B96800EFBA6E00EBB66A00EBB66E00EBB97800EAB57300B6A7
      9200E9DCC900A1877200E9CFBD00EBCEB800EBD0B200EFD5AD00EED4AC00E4CE
      AD00F3E8D800A18A7100000000000000000000000000C28F4800FFD18C00FBB7
      5300BA884400FEBB5700BB894500FEBB5700BA884400FBB75300FFD28C00C38F
      4800D8D8D800BF8A4500E9CCA100ECD4B000DAAE6B00D39E4F00E5BF8500BA7F
      3700A4A8AF00FFFFF100FFF3D700FFF2D700FFF2D700FFF2D700FFF2D700FFF2
      D700FFF3D700FFFFF000A5A4A500000000000000000000000000918D8B00ABA9
      A700ACA9A700EAE9E800F9FAFA00F8F8F700FEFCF600F5F5F500001FFF00CFD7
      F700FFFFF600FAF9F700F7F7F700F7F6F700FAF8F900FFFBFF00FCF8F80060B5
      8E00018D4D00008036000082390000853D000D8B4A0065B48D00000000000000
      00000000000000000000000000000000000000000000ADADAB00FFFFFF00EFED
      EE00F1EEEF00F6F0F200FAF2F400F6F0F200F2EFF000F1EFF000F1EFEF00F4F1
      F000FFF6F100166CC30077DBFF00DDF6FF0062BDFF001497FF000F96FF00265D
      9100FFFCF300F7F3F000F0EEEE00FFFFFF00ADADAB0000000000000000000000
      00000000000000000000000000000000000000000000A08B7500F2E9D800B1A3
      8E00DA862900DC923800E0993F00E39F4300E6A44800E8A84D00EAAC5200EBAF
      5700EBB15D00EBB26200EBB46600EAB46C00E9B57100E8B37300E9AF6F00B0A0
      8800F0E2D100AA897600008E4200008C3D00F0D2B6000019E7000018E500E1CE
      AD00EFE7DA009F8A7300000000000000000000000000C68F4500FFC98000FFD1
      9500FFD29600FFD39600FFD39600FFD39600FFD29600FFD19500FFCA8000C790
      450000000000BB8B5000B8824100B57E3B00E6CBA200E5C79900BB803B000000
      0000AFABAA00FFFFE600FFFFEC00FFFFEC00FFFFEC00FFFFEC00FFFFEC00FFFF
      EC00FFFFEC00FFFFE500AFA8A30000000000000000000000000094908E00B4B1
      AF00A1A19E00FFFFFE00FAFAF900F8F8F700F8F8F500FFFDF400CFD6F6000024
      FF00D2DAFC00FFFFFD00FBFBF900F6F6F500F6F6F400F9F7F700FFFBFC00FFFF
      FF00FFFFFF00B2A3A700C4B1B600A99097000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAB00FFFFFF00EFED
      ED00F6F0F200FFF4F90000834300FFF4F900F7F0F200F1EFF000F2F0F100F3F1
      F100F7F3F100FFF9F2001B6FC40079DCFF00DFF6FF0062BDFF001497FF000F96
      FF00265D9100FFFBF200F6F1EF00FFFFFF00ADADAB0000000000000000000000
      00000000000000000000000000000000000000000000A18C7700F8EEDF00AC9C
      8600D6822700D88E3500DC943D00E09A4100E29F4600E4A34B00E6A65000E7AA
      5500E8AC5A00E8AD5F00E7AE6300E7AF6800E6B06D00E6AF7100E6AD6E00AB98
      8000F4E8D900AA88780000C8560000C65200ECD0B6007966FF007665FF00DECD
      AE00F0E8DE009F897300000000000000000000000000B8905400E0B17500CA89
      3700CB8B3800CC8B3800CC8B3800CC8B3800CB8B3800CA893700E0B17500B890
      5500000000000000000000000000B8824000F1DFC700B9803C00000000000000
      00003092E2004BA1EA001483E0001584E0001684E0001684E0001684E0001584
      E0001483E0004AA1EA004E96CF0000000000000000000000000095929000B3B2
      AF009A989700FEFEFD00C0C0C100BFBFBF00F6F6F500F7F6F300FFFFF500D6DD
      FF002451FF002A282000FFFFFF00F8F8F700F4F4F300F6F6F500C0BFC000C2C1
      C200FFFFFF009D989800B7B2B1009D9393000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAB00FFFFFF00F3EE
      EE00FFF3F60000844400FFF7FC0000844400FFF4F700F8F2F2009B9A9A00BFBF
      BD00BEBEBC00F9F4F000ACA39B001C6FC40079DBFF00DEF6FF0062BDFF001497
      FF000F96FF00265D9100FFF9EF00FFFFFF00AFAFAC0000000000000000000000
      00000000000000000000000000000000000000000000A38E7700FBF4E700A796
      7E00D37D2600D6873200D98F3900DD943E00DF994500E29D4800E3A14D00E4A4
      5300E5A65800E5A85D00E5A96200E4AC6600E4AB6B00E4AD7000E5AC6E00A692
      7800F8EEE000A48A7600E9CFC200E7CDC000E1CEBA00E0D1B400DFD0B300D9CA
      B200F0EBE000A08A7400000000000000000000000000268FE400A2D9E8006FBF
      DA0071C0DC0073C2DD0073C2DD0073C2DD0071C0DC006FBFDA00A2D9E800248F
      E600000000000000000000000000CAA47700B984410000000000000000000000
      0000258EE4008BE1FF005CD1FF005FD2FF0061D4FF0061D4FF0061D4FF005FD2
      FF005CD1FF008AE1FF00258EE20000000000000000000000000097949200BEBC
      BA0092908E00FEFCFD00C1C1C100C0C0C000F5F4F400F6F4F400FFFFFC008E8D
      870034332B0033332F007E7E7D00FFFFFF00F7F5F600F6F4F400C0C0C000C1C1
      C100FEFCFD0092908E00BEBCBA00989493000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAB00FFFFFF00F5EE
      EF0000814000FFF2F500FBF0F200FFF3F60000844400FFF3F700F6F1F100F1EF
      EE00EFEEED00F0EEED00F6F1ED00FFF6ED001A6DC20078DBFF00DEF6FF0062BD
      FF001497FF000F96FF00265D9100FFFFFF00B6B3AE0000000000000000000000
      00000000000000000000000000000000000000000000A48E7900FFFAEE00A28D
      7300D3792000D47F2900D7863000DC8D3500DD913B00E1974100E29A4600E39D
      4C00E4A15100E4A35600E4A55B00E4A66100E4A76600E4A96C00E6A96D00A18A
      6F00FCF5E700A18B7700C6AB8C00C4AA8B00C2AA8A00C2AA8800C1A88600D8CA
      B600F2ECE400A08B7400000000000000000000000000268EE30087E0FF0045CA
      FF0049CDFF002389E3004BCFFF002389E30049CDFF0045CAFF0087E0FF00258E
      E400000000000000000000000000000000000000000000000000000000000000
      0000298EE1007FDCFF004AC9FF004ECCFF002887DC0050CEFF002887DC004ECC
      FF004AC9FF007FDCFF00298EE00000000000000000000000000099969400CAC8
      C7008A888600FBFBFA00F5F5F400F3F3F200F2F2F100F6F6F500C9C8C7002525
      24009E9E9B00838181002A2A2A00A4A2A200FBFCFA00F4F4F300F3F3F200F5F5
      F400FBFBFA008A888600CAC8C700999694000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAB00FFFFFF00EEEB
      EB00F4EDEE00F1ECED00EDEBEB00F2EDEE00FDF1F40000824100F5EEEF00ECEB
      EB00EAEAE900EAEAE900ECEBEA00F1EEEA00FEF4EB00196DC20078DAFF00DEF6
      FF0062BDFF001397FF001097FF002B629500C7BCAF00DCDCDC00000000000000
      00000000000000000000000000000000000000000000A6907A00FFFFF5009980
      61009B8669009B876C009A866C009A866B009A856B009A856A0099846A009984
      690099846900998368009983680099836700998367009A8366009A826400997F
      5F00FFF8EC00A28D7600C2A98800C0A78600BFA68600BFA68500BEA58300D8CA
      B600F4EFE800A18C7500000000000000000000000000278EE2007BDAFF0033C1
      FF002386DF0037C6FF002488E00037C6FF002386DF0033C1FF007CDAFF00288E
      E200000000000000000000000000000000000000000000000000000000000000
      0000288EE20072D8FF0034C1FF002386DE0038C5FF002487DF0038C5FF002386
      DE0034C1FF0072D8FF00288EE2000000000000000000000000009A979500C5C2
      C10095939000DBDAD900F4F3F200F0EFEE00F0EFEE00F5F4F3005F5E5E00D5D4
      D400FEFDFC00FFFFFE00B0B0AF0023232300C8C8C700F7F6F500F2F1F000F4F3
      F200DBDAD90095939000C3C1BE009A9795000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAB00FFFFFF00E9E8
      E700EAE9E900EAE9E800E9E9E800EBEAE900EFEBEC00F3EDEE00EEEBEB00EAE9
      E800E9E9E800E9E9E800E9E9E800EBEAE800F0ECE800FCF2E900196CC10078DB
      FF00DEF6FF0062BDFF001497FF001299FF0034689900C1C1C100000000000000
      00000000000000000000000000000000000000000000A8937D00FFFFF700FFFF
      F400FFFFF600FFFFF600FFFFF600FFFFF600FFFFF600FFFFF600FFFFF600FFFF
      F600FFFFF600FFFFF600FFFFF600FFFFF600FFFFF600FFFFF600FFFFF500FFFF
      F400FFFEF300A28C7600FFFFFF00FDFBFA00FCFAFA00FCFAFA00FDFAFA00D7C8
      B500F6F0EA00A28D76000000000000000000000000001C8EEE0063D8FF0071DB
      FF0072DCFF0072DDFF0072DDFF0072DDFF0072DCFF0071DBFF0063D8FF001E8E
      EC00000000000000000000000000000000000000000000000000000000000000
      00001D8FEE005AD6FF0071DCFF0072DDFF0072DDFF0072DDFF0072DDFF0072DD
      FF0072DCFF005BD6FF001E8FED00000000000000000000000000B1AFAE00B8B5
      B400B6B4B200A8A6A500F5F4F400EFEEEE00EEECED00F0EFEF00F3F2F200F2F1
      F200F0EFF000F2F1F100F8F6F700D4D4D30039393A00DEDEDD00F3F2F200F5F4
      F400A8A6A500B6B4B200B8B5B400B1AFAE000000000000000000000000000000
      00000000000000000000000000000000000000000000ADAEAB00FFFFFF00E7E5
      E600E8E7E700E8E7E700E8E7E700E8E7E700E9E7E800EAE7E800E9E7E800E8E7
      E700E8E7E700E8E7E700E8E7E700E8E7E700E8E7E600F9F5F200FFFFFF001B6F
      C30079DBFF00DEF6FF0062BDFF001498FF00169BFF003B6D9B00C1C1C1000000
      00000000000000000000000000000000000000000000BEB0A200A7927C00CFC2
      AD00CDC1AB00CDC0AB00CDC0AB00CDC0AB00CDC0AB00CDC0AB00CDC0AB00CDC0
      AB00CDC0AB00CDC0AA00CCC0AA00CCC0AA00CDC0AA00CDC0AB00CDC0AB00CEC2
      AC00A5907B00BBA99500DCCFBC00DACCB900D9CBB800D9CBB800D9CBB800D8C9
      B600F7F4EC00A38E7700000000000000000000000000BA8F5100E4B37800CB87
      3400CB883700CC893700CC893700CC893700CB883700CB873400E5B377009D90
      7100000000000000000000000000000000000000000000000000000000000000
      0000BA905300E2B17500CC893900CB8B3C00CC8B3D00CC8B3D00CC8B3D00CB8B
      3C00CC893900E3B174009D917200000000000000000000000000E4E3E300A3A0
      9E00D8D6D50076747200DCDCDB00F1F0EF00EEEDEC00EDECEB00EDECEB00EEED
      EC00EFEEED00EFEEED00EFEEED00F3F2F100EAE9E9006B6B6A00F7F6F500DDDC
      DB0076747200D8D6D500A3A09E00E4E3E3000000000000000000000000000000
      00000000000000000000000000000000000000000000AEAEAB00FFFFFF00E6E4
      E300E7E6E500E7E6E500E7E6E500E7E6E500E7E6E500E7E6E500E7E6E500E7E6
      E500E7E6E500E7E6E500E7E6E500E7E6E500E5E4E300FFFFFF00D3CFCB00B9AF
      A5001B6EC30078DBFF00DEF6FF0062BDFF001498FF00139CFF00326EA600C1C1
      C100000000000000000000000000000000000000000000000000C2B4A600AD99
      8300AC978200AC978200AC978200AC978200AC978200AC978200AC978200AC97
      8200AC978200AB968000A8937D00A8937D00A9947F00A9948000AA958000AA95
      8100B39E8600C4AB8C00C2A98A00C1A88900C1A88900C0A88800BFA68500DACC
      B900F9F5F000A48F7800000000000000000000000000C68E4300FFE7A300FFD0
      6B00FFD26F00FFD37000FFD37000FFD37000FFD26F00FFD06B00FFE7A200C78E
      4200000000000000000000000000000000000000000000000000000000000000
      0000C68F4600FFD37200FFB62C00FFB82F00FFB93000FFB93000FFB93000FFB8
      2F00FFB62B00FFD37100C88F450000000000000000000000000000000000A9A7
      A500C2C1BE00C3C1C00075747200ECEBEA00F0EFEE00ECEBEA00EBEAE900EDEC
      EA00C1C1C100C1C1C200EDECEB00ECEBEA00F0EFEE00F5F4F300EFEEED007575
      7200C3C1C000C2C1BE00A9A7A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AEAEAB00FFFFFF00E4E3
      E200E6E5E400E6E5E400E6E5E400E6E5E400E6E5E400E6E5E400E6E5E400E6E5
      E400E6E5E400E6E5E400E6E5E400E6E5E400E4E3E200FFFFFF00A8A7A500FFFF
      FF00FFFFF700186CC10078DBFF00DEF6FF005FBFFF000A9AFF008B7E71007B77
      7100C1C1C1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A58F7A00FEFBF600DECFBD00C0A78500C1A88600C1A88600C1A8
      8700C1A78600C0A78600BFA68600BFA68600BFA68600BFA68500BEA48300DBCB
      B900FBF7F200A48F7900000000000000000000000000C28E4700FFDD9E00FEC3
      6000FFC66300BA894700FFC86500BA894700FFC66300FEC36000FFDD9E00C28E
      4600000000000000000000000000000000000000000000000000000000000000
      0000C28F4A00FFCB7800FBAA2F00FDAC3200BB8E5200FFAE3100BB8E5200FDAC
      3200FBAA2F00FFCB7800C28F4A00000000000000000000000000000000000000
      0000A5A2A000DCDAD900BEBCBB006C6B6900D8D7D600F1F0F000EDECEC00EDEC
      EC00C4C4C400C4C4C400EDECEC00EDECED00F1F0F000D8D7D6006C6B6900BEBC
      BB00DCDAD900A5A2A00000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AEAEAB00FFFFFF00E3E2
      E100E5E4E300E5E4E300E5E4E300E5E4E300E5E4E300E5E4E300E5E4E300E5E4
      E300E5E4E300E5E4E300E5E4E300E5E4E300E3E2E100FFFFFF00A7A7A500FAF9
      F800F4EFEC00FFFFFF001B6FC40079DDFF00D7F9FF00AB9E9300A09997007371
      6F0075786C00C1C1C10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5907A00FCF9F600DACBB700FCFBF800FCFBF800FCFAF800FBFA
      F800FBFAF800FBFAF800FBFAF800FBFAF800FBFAF800FBFAF800FBFAF800DACA
      B600FBF8F400A5907900000000000000000000000000C28E4700FFD69500FBB7
      5300BA884400FEBB5700BB894500FEBB5700BA884400FBB75300FFD69500C28E
      4700000000000000000000000000000000000000000000000000000000000000
      0000C2904A00FDC57A00F79E2B00BB8D4C00FAA12D00BC8E4C00FAA12D00BB8D
      4C00F79E2B00FDC57A00C2904A00000000000000000000000000000000000000
      0000DBDADA00A5A2A000E8E7E600CACAC8005B5859008D8B8A00CAC9C800F4F3
      F200F5F4F300F5F4F300F4F3F200CAC9C8008D8B8A005B585900CACAC800E8E7
      E600A5A2A000DBDADA0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AEAEAB00FFFFFF00E2E1
      E000E3E2E100E4E3E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3E200E4E3
      E200E4E3E200E4E3E200E4E3E200E3E2E100E2E1E000FFFFFF00A7A7A400F0EF
      EF00FFFFFF00EDE9E600C3BBB0002077CC00BBAEA600E9E5E200C3C2C0009B9C
      98007B8072009A6ACD00C7C7C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A6917B00FCFAF700DACAB600DAC9B500DAC9B500DAC9B500DAC9
      B500DAC9B500DAC9B500DAC9B500DAC9B500DAC9B500DAC9B500DAC9B500DACA
      B600FCFAF700A6917B00000000000000000000000000C3904800FFD49900FFD2
      9700FFD39800FFD39900FFD39900FFD39900FFD39800FFD29700FFD49900C390
      4800000000000000000000000000000000000000000000000000000000000000
      0000C4914A00FCC48600FAC38500FBC38600FBC48600FBC48600FBC48600FBC3
      8600FAC38500FCC48600C4914A00000000000000000000000000000000000000
      000000000000DEDDDD00A3A09E00D4D4D100F8F8F700B5B3B2006C6A69004846
      45004946450049464500484645006C6A6900B5B3B200F8F8F700D4D4D100A3A0
      9E00DEDDDD000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AEAEAC00FFFFFF00E0DF
      DE00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E1E0
      DF00E1E0DF00E1E0DF00E1E0DF00E1E0DF00E0DFDE00FFFFFF00A5A5A300FFFF
      FF00E7E7E700B4B3AF000000000000000000B0A69D00D9D7D300E7E8E500868A
      8100CA8CC900C184BA00986BC800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A9947D00FFFFFD00FDFAF700FCF9F500FCF9F500FCF9F500FCF9
      F500FCF9F500FCF9F500FCF9F500FCF9F500FCF9F500FCF9F500FCF9F500FDFA
      F700FFFFFD00A9947D00000000000000000000000000C5955400C3904800C28F
      4700C28F4700C28F4700C28F4700C28F4700C28F4700C28F4700C3904800D1AE
      7E00000000000000000000000000000000000000000000000000000000000000
      0000D1AF7E00C4914A00C3904900C2904900C2904900C3904900C2904900C290
      4900C3904900C4914A00D1AF7E00000000000000000000000000000000000000
      0000000000000000000000000000B0AEAC00B0ACAA00DAD8D700F7F6F500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F6F500DAD8D700B0ACAA00B0AEAC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AFAFAD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9E9
      E900C1C1C00000000000000000000000000000000000A8A6A000999C9200DBA2
      DB00D099CE00C88FC2009F70CA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFB0A200A9937D00CEC1AB00CCC0A900CCBFA900CCBFA900CCBF
      A900CCBFA900CCBFA900CCBFA900CCBFA900CCBFA900CCBFA900CCC0A900CEC1
      AB00A9937D00BFB0A20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7E6E600BFBDBC00A6A3A100A7A4
      A200A7A4A100A7A4A100A7A4A200A6A3A100C0BEBC00EFEEEE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5C5C300B0B0AD00AEAE
      AC00AEAEAB00AEAEAB00AEAEAB00AEAEAB00AEAEAB00AEAEAB00AEAEAB00AEAE
      AB00AEAEAB00AEAEAB00AEAEAB00AEAEAB00ADAEAB00AEAEAB00AFAFAD00C4C4
      C200000000000000000000000000000000000000000000000000C186D700E6B1
      E300DAA7D600AB7BCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C2B4A600AD988300AC978200AC978200AC978200AC97
      8200AC978200AC978200AC978200AC978200AC978200AC978200AC978200AD98
      8300C2B4A6000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000BE8A
      D100B987D000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200100000100010000000000001200000000000000000000
      000000000000000000000000FFFFFF00FFF8000F000000000000000000000000
      8000000000000000000000000000000080000000000000000000000000000000
      8000000000000000000000000000000080000000000000000000000000000000
      8000000000000000000000000000000080000000000000000000000000000000
      8000000000000000000000000000000080000000000000000000000000000000
      8000000000000000000000000000000080000000000000000000000000000000
      8000000000000000000000000000000080000000000000000000000000000000
      8000000000000000000000000000000080000000000000000000000000000000
      8000000000000000000000000000000080000000000000000000000000000000
      8000000000000000000000000000000080000000000000000000000000000000
      8000001F0000000000000000000000008000001F000000000000000000000000
      8000001F0000000000000000000000008000001F000000000000000000000000
      8000001F0000000000000000000000008000001F000000000000000000000000
      8000001F0000000000000000000000008000001F000000000000000000000000
      8000001F0000000000000000000000008000001F000000000000000000000000
      8000001F0000000000000000000000008000001F000000000000000000000000
      8000001F000000000000000000000000FFFFFFFF07FFFFFFFFFFFFFFFFFFFFFF
      FE007FFF0001FFFFFF0000FFFFFF0003FC003FFF0001FFFFFF0000FFFFFE0001
      F80000010001FFFFFF0000FFE00000018000000100018001FF8001FFE0000001
      8000000180000001FFC003FFE00000018000000180000001FFFE7FFFC0000001
      8000000180000001FFFE7FFF800000018000000180000001F01E780F80000001
      8000000180000001E00E7007E00000018000000180000001C0066003C0000003
      8000000180000001800000018000000780000001800000018000000180000007
      800000018000000180000001E000000780000001C000000180000001C0000007
      80000001F0000001800000018000000780000001F0000001BFFA5FFD80000007
      80000003F00000039FF24FF9E00000078000003FF000001FDFF66FFBC0000007
      8000003FF000001FCFE667F3800000078000003FF000001FEFEE77F780000007
      8000003FF000001FE7CE73E7E00000078000003FF000001FF7DE7BEFC0000007
      8000003FF000001FF39E79CF800000078000003FF000001FF93E7C9F80000007
      8000003FF000001FF83E7C1FE00000078000003FF000001FF83C3C1FC0000007
      8000003FF000001FF000000F800000078000003FF000001FF000000F80000007
      8000003FF000001FFFFE7FFFE00000078000003FF000001FFFFE7FFFE0000007
      8000003FF000001FFFFE7FFFE0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF0000FFC00000018001FFFFFFFC01FFFF0000FFC00000018001FFFFFFF80003
      FF0000FFC00000018001FFFFFFF80001FF0000FFC000000180018001FFF80001
      FF0000FFC000000180000001FFF00001FF0000FFC00000018000000180000001
      FE00007FC0000001800000018000000180000001C00000018000000180000001
      80000001C0000001800000018000000180000001C00000018000000180000001
      80000001C0000001800000018000000180000001C00000018000000180000001
      80000001C0000001800000018000000180000001C0000001C000000180000001
      80000001C0000001F00000018000000180000001C0000001F000000180000001
      C0000003C0000001F000000380000001F000000FC0000001F000001F80000003
      FC00003FC0000001F000001F8000003FF800001FC0000001F000001F8000003F
      F800001FC0000001F000001F8000003FF000000FC0000001F000001F8000003F
      F000000FC0000001F000001F8000003FF000000FC0000001F000001F8000003F
      F003C00FC0000001F000001F8000003FF003C00FC0000001F000001F8000003F
      F003C00FC0000001F000001F8000003FF003C00FC0000001F000001F8000003F
      F003C00FC0000001F000001F8000003FF807E01FC0000001F000001F8000003F
      FC0FF03FC0000001F000001F8000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFCFFFFFFFFFFFFFFFFFFC3FFF8C18FFFF81FFFFE0FFFFC7FFFFE007FF8000FF
      80000007C07FFF83F0000003FF8000FF80000007C03FFF01C0000003FF8000FF
      80000007C01FFE0180000003FFFC1FFF80000007C00FFC0180000001FFFC1FFF
      80000007C007F80180000001FFF80FFF80000007C003F00380000001F800001F
      80000007E001E00780000001F800001F80000007F001E00F80000001F800001F
      80000007F800401F80000003F800001F80000007FC00003F80000003F800001F
      80000007FE00007F80000003F800001F80000007FF0000FF80000027F800001F
      80000007FF8003FF8000003FF800001F80000003F1C007FF8000007FF800001F
      80000003E1E007FF8000007FF800001F80000001C040000F8000007FF800001F
      80000001800000078000007FFC00003F80000001800000038000007FFE00007F
      80000003800080038000007FFF0000FF800000078001C0038000007FFF0000FF
      80000007E003C07F8000007FFF0000FF80000007F003C07F8000007FFF0000FF
      80000007F003C07F8000007FFF0000FF80000007F807C03F8000007FFF0000FF
      80000007FC03C0038000007FFF0000FF80000007FE00C0038000007FFF0000FF
      80000007FF0020038000007FFF0000FF80000007FF803003C00000FFFF0000FF
      80000007FFE01807F00003FFFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFE0003FFFF07FFFFFFF01FFFFFFFFFFFFC0001FFFE03FFFFFFC007F0000003
      FFFC0001C00001FF80000003F0000003FFFC0001800000FF80000003F0000003
      FFF800018000003F80000001E0000003800000018000000780000001C0000003
      800000018000000380000001C0000003800000018000100180000001F0000003
      800000018000000180000001E0000003800000018000000180000001C0000003
      800000018000000180000001C00000038000000180000001C0000001F0000003
      80000001C0000001E0000003E000000380000001F0000001E0000003C0000003
      80000001F8000003E0000007C000000380000001F8000007E0000007F0000003
      80000001F0000007E0000007E000000380000001F0000007E0000007C0000003
      80000001F000000FE0000007C0000003C0000003F000003FE0000007F0000003
      E0000007F000007FE0000007E0000003F000000FF000007FE0000007C0000003
      F000000FF000003FE0000007C0000003F000000FF000003FE0000007F0000003
      F000000FF000003FE0000007E0000003F000000FF801003FE0000007C0000003
      F000000FFC03003FE0000007C0000003F800001FFFFF003FE0000007F0000003
      F800001FFFFF003FE0000007F0000003FC00003FFFFF807FE0000007F0000003
      FC00003FFFFFC0FFE0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC003FFFFFFFFFFFFFFFFFFFFFFFFFFFFC003
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC003FFFF0FFFFFFFFCFFFFFFFFFF807FC003
      FFFF007FFFFFF8FFC0000003803FC003FFF8000FFFFFF0FF80000001801FC003
      FFF8000FFFFFE0FF80000001800FC003FFF8000FFFFFC0FF800000018007C003
      FFF8000FFC00003F80000001C007C003FFD8000FF800001F80000001E003C003
      FFC8000FF000000F80000001F00063C7FFC0000FF000000F80000001F8000187
      F000000FF000000F80000001FC000007F000000FF000000F80000001FE000007
      F000000FF000000F80000001FF00000FF000000FF000000F80000001FF80000F
      F000000FF000000F80000001FFC00007F000000FF000000F80000001FFE00003
      FFC0000FF000000F80000001FFF00003FFC8000FF000000F80000001FFF80003
      FFD8000FF000000F80000001FFF80003FFF8000FF000000F80000001FFF80003
      FFF8000FF000000F80000001FFF80003FFF8000FF000000F80000001FFF80303
      FFF8000FF000000F80000001FFF80003FFF8000FF000001FC0000003FFF80003
      FFF8000FF800003FFFFFFFFFFFF80007FFFFFFFFFFFFFFFFFFFFFFFFFFFC0007
      FFFFFFFFFFFFFFFFFFFFFFFFFFFE000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF001F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF807FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF000001FFFFFFFFFFFFFFFFF80000001F000001FFE00007FFE00007F
      80000001F000001FFC00003FFC00003F80000001F000001FFC00003FFC00003F
      80000001F000001FFC00003FFC00003F80000001F000001FFC00003FFC00003F
      80000001F000001FFC00003FFC00003F80000001F000001FFC00003FFC00003F
      80000001F000001FFC00003FFC00003F80000001F000001FFC00003FFC00003F
      80000001F800003FFC00003FFC00003F80000001FC00007FFC00003FFC00003F
      80000001FF0001FFFC00003FFC00003F80000001FFC007FFFC00003FFC00003F
      80000001FFE00FFFFC00003FFC00003F80000001FFC007FFFC00003FFC00003F
      80000001FFC007FFFC00003FFC00003F80000001FFC007FFFC00003FFC00003F
      80000001FF8003FFFE00007FFE00007F80000001FF8003FFFF0FF0FFFF0FFFFF
      80000001FF8003FFFF0FF0FFFF0FF0FF80000001FF8003FFFF0FF0FFFF0FF0FF
      80000001FF8003FFFF07E0FFFF07E0FF80000001FF8003FFFF07E0FFFF07E0FF
      80000001FF8003FFFF03C0FFFF03C0FF80000001FF8003FFFF0000FFFF0000FF
      80000001FF8003FFFF0000FFFF0000FF80000001FFC007FFFF8001FFFF8001FF
      80000001FFC007FFFFC003FFFFC003FFFFFFFFFFFFF01FFFFFE007FFFFE007FF
      FFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFE007FFFFFFFFFFFFFFF01FE0FFFFC7FF0000FFFFFFFFFF
      FF01C007C07FFF83FE00007FFFFFFFFFFC008003C03FFF01FC00003FFFFF0FFF
      C0000003C01FFE01F800001FFFFF007F80000001C00FFC01F000000FFFF8000F
      80000001C007F801E0000007FFF8000F80000001C003F003E0000007FFF8000F
      80000001E001E007C0000003FFF8000F80000001F001E00FC0000003FFD8000F
      80000001F800401F80000001FFC8000F80000001FC00003F80000001FFC0000F
      80000001FE00007F80000001F000000F80000001FF0000FF80000001F000000F
      80000001FF8003FF80000001F000000F80000001F1C007FF80000001F000000F
      80000001E1E007FF80000001F000000F80000001C040000F80000001F000000F
      800000018000000780000001FFC0000F800000018000000380000001FFC8000F
      800000018000800380000001FFD8000F800000018001C003C0000003FFF8000F
      80000001E003C07FC0000003FFF8000F80000001F003C07FC0000003FFF8000F
      80000001F003C07FE0000007FFF8000F80000001F807C03FF000000FFFF8000F
      80000001FC03C003F800001FFFF8000FC0000003FE00C003FC00003FFFFFFFFF
      E0000007FF002003FE00007FFFFFFFFFFFFFFFFFFF803003FF0000FFFFFFFFFF
      FFFFFFFFFFE01807FFE007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF07FFFFFFFFFFFFFFFFFF8000007FFF0003FFFFFFFFFFFFFFE03F8000007F
      FC0001FF800FF001FFFF800F8000007FFC000003800FF001FFFF00078000007F
      FC000003800FF001FFFF00078000007FFC000003800FF001FFFE00038000007F
      FC000003800FF001FFFC00038000007F80000001800FF001FF8000038000007F
      80000001800FF001FE0000038000007F80000001800FF001F80000038000007F
      80000001800FF001F00000038000007F80000001800E7001F00000038000007F
      80000001800C3001E00000038000007F8000000180000001C00000078000007F
      8000000380000001C00000078000007F8000000380000001C000000F8000007F
      8000000380000001C000003F8000007F8000000380081001C00000FF8000007F
      80000003800E3001C00000FF8000007F80000003800E7001C00000FF8000007F
      80000003800FF001C00000FF8000003F80000003800FF001C00000FF8000003F
      80000003800FF001C00000FF8000001F80000003800FF001C00000FF8000000F
      C0000003800FF001E00001FF80000007FFF80003800FF001F00003FF80000003
      FFF80003800FF001F00003FF80000001FFF80003800FF001F80007FF80000301
      FFF80003800FF001FE001FFF80000781FFF80003FFFFFFFFFF003FFF80000FC3
      FFFC0007FFFFFFFFFFFFFFFFFFFFFFE700000000000000000000000000000000
      000000000000}
  end
end
