inherited frmAbout: TfrmAbout
  Caption = 'Tentang Program'
  ClientHeight = 399
  ClientWidth = 443
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitle: TPanel
    Width = 443
    Height = 0
    TabOrder = 1
    inherited pnlClose: TPanel
      Left = 412
      Height = 0
      inherited btnClose: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
  inherited pnlButton: TPanel
    Top = 352
    Width = 443
    inherited btnBatal: TAdvToolButton
      Left = 346
      Visible = False
      TMSStyle = 0
    end
    inherited btnOK: TAdvToolButton
      Left = 178
      OnClick = btnOKClick
      TMSStyle = 0
    end
  end
  inherited pnlData: TPanel
    Top = 0
    Width = 443
    Height = 352
    TabOrder = 0
    object shp1: TShape
      Left = 18
      Top = 15
      Width = 48
      Height = 47
      Brush.Style = bsClear
      Pen.Color = clWhite
      Pen.Width = 2
    end
    object lblAppName: TLabel
      Left = 74
      Top = 28
      Width = 91
      Height = 22
      Caption = 'AppName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Bookman Old Style'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object imgAppIcon: TImage
      Left = 23
      Top = 20
      Width = 37
      Height = 37
      AutoSize = True
    end
    object lbl2: TLabel
      Left = 18
      Top = 323
      Width = 162
      Height = 14
      Caption = #169' Gerardus Ordo Pratidina'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblUrl: TLabel
      Left = 391
      Top = 323
      Width = 26
      Height = 14
      Cursor = crHandPoint
      Alignment = taRightJustify
      Caption = 'OPD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Visible = False
      OnClick = lblUrlClick
    end
    object mmoText: TMemo
      Left = 18
      Top = 74
      Width = 399
      Height = 241
      BevelInner = bvLowered
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -17
      Font.Name = 'Georgia'
      Font.Style = []
      Lines.Strings = (
        'Aplikasi DCIM untuk Subbid OPD Pusintek'
        'Changelog :'
        '15/2/2019'
        '-Penambahan feature server blade dan enclosure'
        '-Penambahan fitur log user')
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      WantTabs = True
    end
  end
end
