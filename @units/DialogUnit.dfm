inherited frmDialog: TfrmDialog
  Left = 243
  Top = 182
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmDialog'
  ClientHeight = 288
  ClientWidth = 474
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  ExplicitWidth = 480
  ExplicitHeight = 317
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitle: TPanel
    Width = 474
    Visible = False
    ExplicitWidth = 474
    inherited pnlClose: TPanel
      Left = 452
      ExplicitLeft = 452
      inherited btnClose: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
  object pnlButton: TPanel [1]
    Left = 0
    Top = 241
    Width = 474
    Height = 47
    Align = alBottom
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      474
      47)
    object btnBatal: TAdvToolButton
      Left = 376
      Top = 8
      Width = 89
      Height = 30
      Anchors = [akTop, akRight]
      AutoThemeAdapt = False
      Color = 3425267
      ColorDown = 3027154
      ColorHot = 5460991
      Caption = 'BATAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Noto Sans'
      Font.Style = []
      ParentFont = False
      OnClick = btnBatalClick
      Version = '1.6.2.0'
      TMSStyle = 0
    end
    object btnOK: TAdvToolButton
      Left = 280
      Top = 8
      Width = 89
      Height = 30
      Anchors = [akTop, akRight]
      AutoThemeAdapt = False
      Color = 16094753
      ColorDown = 10501937
      ColorHot = 16565313
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Noto Sans'
      Font.Style = []
      ParentFont = False
      Version = '1.6.2.0'
      TMSStyle = 0
    end
    object btn1: TBitBtn
      Left = 397
      Top = 51
      Width = 65
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'btn1'
      TabOrder = 0
      Visible = False
    end
  end
  object pnlData: TPanel [2]
    Left = 0
    Top = 28
    Width = 474
    Height = 213
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitTop = 30
    ExplicitHeight = 211
  end
end
