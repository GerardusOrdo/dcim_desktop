inherited frmGantiPassword: TfrmGantiPassword
  Left = 360
  Top = 281
  Caption = 'Ganti Password'
  ClientHeight = 204
  ClientWidth = 429
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitle: TPanel
    Width = 429
    Height = 0
    TabOrder = 1
    inherited pnlClose: TPanel
      Left = 407
      Height = 0
    end
  end
  inherited pnlButton: TPanel
    Top = 157
    Width = 429
    inherited btnOK: TAdvToolButton
      Left = 241
      OnClick = btnOKClick
    end
    inherited btnBatal: TAdvToolButton
      Left = 333
    end
  end
  inherited pnlData: TPanel
    Top = 0
    Width = 429
    Height = 157
    Font.Height = -16
    ParentFont = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 20
      Top = 69
      Width = 115
      Height = 22
      Caption = 'Password Baru'
    end
    object lbl2: TLabel
      Left = 20
      Top = 32
      Width = 120
      Height = 22
      Caption = 'Password Lama'
      FocusControl = edtPwdLama
    end
    object lblUlangi: TLabel
      Left = 20
      Top = 106
      Width = 168
      Height = 22
      Caption = 'Ulangi password baru'
    end
    object edtPwdBaru: TEdit
      Left = 200
      Top = 65
      Width = 209
      Height = 27
      BevelKind = bkFlat
      BorderStyle = bsNone
      PasswordChar = '?'
      TabOrder = 1
    end
    object edtPwdLama: TEdit
      Left = 200
      Top = 28
      Width = 209
      Height = 27
      BevelKind = bkFlat
      BorderStyle = bsNone
      PasswordChar = '#'
      TabOrder = 0
    end
    object edtRePwd: TEdit
      Left = 200
      Top = 102
      Width = 209
      Height = 27
      BevelKind = bkFlat
      BorderStyle = bsNone
      PasswordChar = '?'
      TabOrder = 2
    end
  end
end
