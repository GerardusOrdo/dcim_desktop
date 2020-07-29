inherited frmDataTrans: TfrmDataTrans
  Left = 306
  Caption = '@Data For Transaksi'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitle: TPanel
    ExplicitWidth = 784
    inherited pnlClose: TPanel
      Left = 755
      ExplicitLeft = 755
      inherited btnClose: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
  inherited pnlData: TPanel
    Left = 273
    Width = 511
    TabOrder = 2
    ExplicitLeft = 297
    ExplicitWidth = 487
    inherited pnlGrid: TPanel
      Width = 511
      ExplicitWidth = 487
      ExplicitHeight = 387
      inherited ftrDaftar: TStatusBar
        Top = 367
        Width = 511
        ExplicitTop = 367
        ExplicitWidth = 487
      end
      inherited dbgDaftar: TDBGridEh
        Width = 511
        Height = 367
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Width = 12
          end>
      end
    end
    inherited pnlBottom: TPanel
      Width = 511
      ExplicitWidth = 487
      inherited pnlButton: TPanel [0]
        Left = 202
        Height = 34
        Align = alNone
        Visible = False
        ExplicitLeft = 202
        ExplicitHeight = 34
        inherited btnTambah: TAdvToolButton
          TMSStyle = 0
        end
        inherited btnUbah: TAdvToolButton
          TMSStyle = 0
        end
        inherited btnHapus: TAdvToolButton
          TMSStyle = 0
        end
        inherited btnCetak: TAdvToolButton
          TMSStyle = 0
        end
      end
      inherited pnlCari: TPanel [1]
        Width = 507
        ExplicitWidth = 483
        DesignSize = (
          507
          45)
        inherited btnRefresh: TAdvToolButton
          Left = 348
          ExplicitLeft = 432
          TMSStyle = 0
        end
        inherited btnPilih: TAdvToolButton
          Left = 348
          ExplicitLeft = 432
          TMSStyle = 0
        end
        inherited edtKeyword: TEdit
          Width = 261
          Height = 26
          ExplicitWidth = 237
          ExplicitHeight = 26
        end
      end
    end
  end
  object pnlOption: TPanel [2]
    Left = 0
    Top = 28
    Width = 273
    Height = 436
    Align = alLeft
    TabOrder = 1
    object pnlOptButton: TPanel
      Left = 1
      Top = 131
      Width = 271
      Height = 228
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 295
      object btnOptHapus: TAdvToolButton
        Tag = 3
        Left = 141
        Top = 35
        Width = 122
        Height = 31
        Action = _Delete
        AutoThemeAdapt = False
        Color = 3425267
        ColorDown = 3026644
        ColorHot = 5460991
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object btnOptUbah: TAdvToolButton
        Tag = 2
        Left = 12
        Top = 35
        Width = 122
        Height = 31
        Action = _Edit
        AutoThemeAdapt = False
        Color = 11882815
        ColorDown = 10501937
        ColorHot = 16674132
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object btnOptTambah: TAdvToolButton
        Tag = 1
        Left = 12
        Top = 0
        Width = 122
        Height = 31
        Action = _Insert
        AutoThemeAdapt = False
        Color = 5418828
        ColorDown = 4034103
        ColorHot = 11464809
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object btnOptLihat: TAdvToolButton
        Tag = 1
        Left = 141
        Top = 0
        Width = 122
        Height = 31
        Action = _Lihat
        AutoThemeAdapt = False
        Color = 6495978
        ColorDown = 5969858
        ColorHot = 8471039
        Caption = 'LIHAT DETAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object btnOptCetak: TAdvToolButton
        Tag = 1
        Left = 12
        Top = 69
        Width = 122
        Height = 31
        Action = _Cetak
        AutoThemeAdapt = False
        Color = 12008295
        ColorDown = 10956113
        ColorHot = 16731773
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object btnOptReprint: TAdvToolButton
        Tag = 1
        Left = 141
        Top = 69
        Width = 122
        Height = 31
        Action = _Reprint
        AutoThemeAdapt = False
        Color = 16099587
        ColorDown = 13731842
        ColorHot = 16761919
        Caption = 'CETAK NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
        Version = '1.6.2.0'
        TMSStyle = 0
      end
    end
    object pnlOptTanggal: TPanel
      Left = 1
      Top = 1
      Width = 271
      Height = 130
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 295
      object lblDari: TLabel
        Left = 12
        Top = 13
        Width = 22
        Height = 15
        Caption = 'Dari'
        FocusControl = dtp1
      end
      object lblSampai: TLabel
        Left = 12
        Top = 39
        Width = 38
        Height = 15
        Caption = 'Sampai'
        FocusControl = dtp2
      end
      object btnThisMonth: TAdvToolButton
        Left = 73
        Top = 61
        Width = 129
        Height = 26
        Action = _ThisMonth
        AutoThemeAdapt = False
        Color = 16094753
        ColorDown = 13858329
        ColorHot = 16681539
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object btnFilter: TAdvToolButton
        Left = 210
        Top = 8
        Width = 53
        Height = 49
        Action = _Filter
        AutoThemeAdapt = False
        Color = 2250750
        ColorDown = 1657574
        ColorHot = 4288255
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Noto Sans'
        Font.Style = []
        Layout = blGlyphTop
        ParentFont = False
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object btnPrevMonth: TAdvToolButton
        Left = 12
        Top = 61
        Width = 53
        Height = 26
        Action = _PrevMonth
        AutoThemeAdapt = False
        Color = 11610268
        ColorDown = 10624890
        ColorHot = 16531680
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object btnNextMonth: TAdvToolButton
        Left = 210
        Top = 61
        Width = 53
        Height = 26
        Action = _NextMonth
        AutoThemeAdapt = False
        Color = 11610268
        ColorDown = 10624890
        ColorHot = 16531680
        Layout = blGlyphTop
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object btnPrevDay: TAdvToolButton
        Left = 12
        Top = 95
        Width = 53
        Height = 26
        Action = _PrevDay
        AutoThemeAdapt = False
        Color = 11610268
        ColorDown = 10624890
        ColorHot = 16531680
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object btnToday: TAdvToolButton
        Left = 73
        Top = 95
        Width = 129
        Height = 26
        Action = _Today
        AutoThemeAdapt = False
        Color = 16094753
        ColorDown = 13858329
        ColorHot = 16681539
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object btnNextDay: TAdvToolButton
        Left = 210
        Top = 95
        Width = 53
        Height = 26
        Action = _NextDay
        AutoThemeAdapt = False
        Color = 11610268
        ColorDown = 10624890
        ColorHot = 16531680
        Layout = blGlyphTop
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object dtp1: TDateTimePicker
        Left = 73
        Top = 8
        Width = 129
        Height = 21
        Date = 41571.000000000000000000
        Time = 0.429345138887583700
        DateFormat = dfLong
        TabOrder = 0
      end
      object dtp2: TDateTimePicker
        Left = 73
        Top = 35
        Width = 129
        Height = 21
        Date = 41571.000000000000000000
        Time = 0.429383009257435300
        DateFormat = dfLong
        TabOrder = 1
      end
    end
  end
  inherited tmr1: TTimer
    OnTimer = tmr1Timer
  end
  inherited pmDaftar: TPopupMenu
    object mniLihat: TMenuItem [1]
      Action = _Lihat
    end
  end
  inherited actDaftar: TActionList
    object _ThisMonth: TAction [5]
      Category = 'Option'
      Caption = 'Bulan ini'
      Hint = 'Bulan ini'
      ImageIndex = 13
      OnExecute = _ThisMonthExecute
    end
    object _PrevMonth: TAction [6]
      Category = 'Option'
      Hint = 'Bulan sebelumnya'
      ImageIndex = 14
      OnExecute = _ThisMonthExecute
    end
    object _NextMonth: TAction [7]
      Category = 'Option'
      Hint = 'Bulan berikutnya'
      ImageIndex = 15
      OnExecute = _ThisMonthExecute
    end
    object _Today: TAction [8]
      Category = 'Option'
      Caption = 'Hari ini'
      Hint = 'Hari ini'
      ImageIndex = 13
      OnExecute = _ThisMonthExecute
    end
    object _PrevDay: TAction [9]
      Category = 'Option'
      Hint = 'Hari sebelumnya'
      ImageIndex = 14
      OnExecute = _ThisMonthExecute
    end
    object _NextDay: TAction [10]
      Category = 'Option'
      Hint = 'Hari berikutnya'
      ImageIndex = 15
      OnExecute = _ThisMonthExecute
    end
    object _Filter: TAction [11]
      Category = 'Option'
      Caption = 'Filter'
      Hint = 'Filter data'
      ImageIndex = 17
    end
    object _Reprint: TAction [16]
      Category = 'Cetak'
      Caption = 'Cetak Nota'
      ImageIndex = 6
      Visible = False
      OnExecute = _ReprintExecute
    end
    object _LayoutNota: TAction [17]
      Category = 'Cetak'
      Caption = 'Layout'
      Hint = 'Atur Layout Laporan'
      ImageIndex = 12
      ShortCut = 24698
    end
  end
  object udtDaftar: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 352
    Top = 144
  end
end
