inherited frmDataDtl: TfrmDataDtl
  Left = 214
  Top = 177
  Caption = '@Data dg Dtl'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitle: TPanel
    inherited pnlClose: TPanel
      Left = 755
      ExplicitLeft = 755
      inherited btnClose: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
  inherited pnlData: TPanel
    inherited pnlGrid: TPanel
      Width = 399
      ExplicitWidth = 399
      ExplicitHeight = 387
      inherited ftrDaftar: TStatusBar
        Top = 367
        Width = 399
        ExplicitTop = 367
        ExplicitWidth = 399
      end
      inherited dbgDaftar: TDBGridEh
        Width = 399
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
      inherited pnlButton: TPanel [0]
        Left = 399
        Width = 383
        ParentBackground = False
        ExplicitLeft = 399
        ExplicitWidth = 383
        inherited btnTambah: TAdvToolButton
          ImageIndex = 1
          TMSStyle = 0
        end
        inherited btnUbah: TAdvToolButton
          ImageIndex = 2
          TMSStyle = 0
        end
        inherited btnHapus: TAdvToolButton
          ImageIndex = 3
          TMSStyle = 0
        end
        inherited btnCetak: TAdvToolButton
          ImageIndex = 6
          TMSStyle = 0
        end
      end
      inherited pnlCari: TPanel [1]
        Width = 397
        ExplicitWidth = 397
        DesignSize = (
          397
          45)
        inherited btnRefresh: TAdvToolButton
          Left = 299
          ExplicitLeft = 407
          TMSStyle = 0
        end
        inherited btnPilih: TAdvToolButton
          Left = 299
          ImageIndex = 8
          ExplicitLeft = 407
          TMSStyle = 0
        end
        inherited edtKeyword: TEdit
          Top = 13
          Height = 26
          ExplicitTop = 13
          ExplicitHeight = 26
        end
      end
    end
    object pnlDetail: TPanel
      Left = 399
      Top = 49
      Width = 385
      Height = 387
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      OnResize = pnlDetailResize
      object pnlPostCancel: TPanel
        Left = 0
        Top = 341
        Width = 385
        Height = 46
        Align = alBottom
        BevelOuter = bvNone
        Constraints.MinHeight = 43
        ParentBackground = False
        TabOrder = 1
        OnResize = pnlPostCancelResize
        ExplicitLeft = 6
        DesignSize = (
          385
          46)
        object btnCancel: TAdvToolButton
          Left = 336
          Top = 2
          Width = 38
          Height = 33
          Action = _Edit
          Anchors = [akTop, akRight]
          AutoThemeAdapt = False
          Color = 3488230
          ColorDown = 2763207
          ColorHot = 5460991
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Noto Sans'
          Font.Style = [fsBold]
          ImageIndex = 2
          ParentFont = False
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        object btnPost: TAdvToolButton
          Left = 288
          Top = 2
          Width = 38
          Height = 33
          Action = _Edit
          Anchors = [akTop, akRight]
          AutoThemeAdapt = False
          Color = 11882815
          ColorDown = 9647400
          ColorHot = 16674132
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Noto Sans'
          Font.Style = [fsBold]
          ImageIndex = 2
          ParentFont = False
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        object btn1: TBitBtn
          Left = 391
          Top = 8
          Width = 33
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'btn1'
          TabOrder = 0
          Visible = False
        end
      end
      object pnlDtl: TPanel
        Left = 0
        Top = 0
        Width = 385
        Height = 341
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        OnResize = pnlDetailResize
        ExplicitLeft = 6
        ExplicitTop = -3
      end
    end
  end
  inherited ilBtn: TImageList
    Left = 8
  end
  inherited tmr1: TTimer
    OnTimer = tmr1Timer
  end
  inherited qryDaftar: TZQuery
    BeforePost = qryDaftarBeforePost
    Top = 88
  end
  inherited dsDaftar: TDataSource
    Top = 88
  end
  inherited pmDaftar: TPopupMenu
    Top = 120
  end
  inherited actDaftar: TActionList
    Images = ilBtn
    Top = 120
  end
  inherited tmrCari: TTimer
    Top = 152
  end
end
