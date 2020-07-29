inherited frmLogin: TfrmLogin
  Left = 498
  Top = 280
  BorderIcons = []
  Caption = 'Login'
  ClientHeight = 348
  ClientWidth = 372
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitle: TPanel
    Width = 372
    inherited pnlClose: TPanel
      Left = 340
    end
  end
  inherited pnlButton: TPanel
    Top = 301
    Width = 372
    DesignSize = (
      372
      47)
    inherited btnBatal: TAdvToolButton
      Left = 276
    end
    inherited btnOK: TAdvToolButton
      Left = 184
      OnClick = btnOKClick
    end
    inherited btn1: TBitBtn
      Left = 88
    end
  end
  inherited pnlData: TPanel
    Width = 372
    Height = 271
    BevelInner = bvNone
    BevelOuter = bvNone
    object lbl1: TLabel
      Left = 14
      Top = 113
      Width = 67
      Height = 19
      Caption = 'Password'
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 14
      Top = 58
      Width = 71
      Height = 19
      Caption = 'Username'
      Color = clMenu
      FocusControl = edtUsername
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 150
      Top = 18
      Width = 64
      Height = 33
      Caption = 'Login'
      Color = clMenu
      FocusControl = edtUsername
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object edtPassword: TEdit
      Left = 14
      Top = 131
      Width = 339
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
      OnKeyDown = edtPasswordKeyDown
    end
    object edtUsername: TEdit
      Left = 14
      Top = 77
      Width = 339
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited tmr1: TTimer
    Interval = 1
  end
end
