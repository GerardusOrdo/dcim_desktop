inherited frmTransPindahServerUnit: TfrmTransPindahServerUnit
  Left = 275
  Top = 111
  Caption = 'Pindah Server'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitle: TPanel
    inherited pnlClose: TPanel
      inherited btnClose: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
  inherited pnlButton: TPanel
    inherited btnSimpan: TAdvToolButton
      OnClick = btnSimpanClick
      TMSStyle = 0
    end
    inherited btnBatal: TAdvToolButton
      TMSStyle = 0
    end
  end
  inherited pnlTrans: TPanel
    object grpDataServer: TGroupBox
      Left = 0
      Top = 0
      Width = 684
      Height = 392
      Align = alClient
      Caption = 'Data Server'
      TabOrder = 0
      DesignSize = (
        684
        392)
      object lblSN: TLabel
        Left = 15
        Top = 86
        Width = 81
        Height = 17
        Caption = 'Serial Number'
      end
      object lblUawal: TLabel
        Left = 15
        Top = 176
        Width = 38
        Height = 17
        Caption = 'U awal'
      end
      object lblRakAwal: TLabel
        Left = 15
        Top = 147
        Width = 20
        Height = 17
        Caption = 'Rak'
      end
      object lblServer: TLabel
        Left = 17
        Top = 57
        Width = 47
        Height = 17
        Caption = 'Server *'
      end
      object lblNotes: TLabel
        Left = 15
        Top = 259
        Width = 207
        Height = 17
        Caption = 'Notes (Ctrl+Enter untuk pindah baris)'
      end
      object lblPemilik: TLabel
        Left = 15
        Top = 117
        Width = 40
        Height = 17
        Caption = 'Pemilik'
      end
      object lblJenisPindah: TLabel
        Left = 15
        Top = 201
        Width = 67
        Height = 17
        Caption = 'Jenis Pindah'
      end
      object lblWaktuPindah: TLabel
        Left = 15
        Top = 230
        Width = 76
        Height = 17
        Caption = 'Waktu Pindah'
      end
      object btnCariServer: TAdvToolButton
        Left = 639
        Top = 50
        Width = 38
        Height = 33
        Anchors = [akTop, akRight]
        AutoThemeAdapt = False
        Color = 5288012
        ColorDown = 4034105
        ColorHot = 7791873
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Noto Sans'
        Font.Style = [fsBold]
        ImageIndex = 11
        Images = ilBtn
        ParentFont = False
        OnClick = btnCariServerClick
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object btnCariRak: TAdvToolButton
        Left = 639
        Top = 138
        Width = 38
        Height = 32
        Anchors = [akTop, akRight]
        AutoThemeAdapt = False
        Color = 5288012
        ColorDown = 4034105
        ColorHot = 7791873
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Noto Sans'
        Font.Style = [fsBold]
        ImageIndex = 11
        Images = ilBtn
        ParentFont = False
        OnClick = btnCariRakClick
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object lblUPindah: TLabel
        Left = 368
        Top = 176
        Width = 76
        Height = 17
        Caption = 'Pindah ke U *'
      end
      object lblRakPindah: TLabel
        Left = 368
        Top = 147
        Width = 87
        Height = 17
        Caption = 'Pindah ke Rak *'
      end
      object lblNoTiket: TLabel
        Left = 17
        Top = 31
        Width = 46
        Height = 17
        Caption = 'No Tiket'
      end
      object btnCariBladeEnclosure: TAdvToolButton
        Left = 639
        Top = 168
        Width = 38
        Height = 32
        Anchors = [akTop, akRight]
        AutoThemeAdapt = False
        Color = 5288012
        ColorDown = 4034105
        ColorHot = 7791873
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Noto Sans'
        Font.Style = [fsBold]
        ImageIndex = 11
        Images = ilBtn
        ParentFont = False
        OnClick = btnCariBladeEnclosureClick
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object edtSN: TEdit
        Left = 179
        Top = 84
        Width = 495
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 2
        Text = 'edtTipeServer'
      end
      object edtRak: TEdit
        Left = 179
        Top = 141
        Width = 182
        Height = 25
        Enabled = False
        TabOrder = 4
        Text = 'edtTipeServer'
      end
      object edtUawal: TEdit
        Left = 179
        Top = 170
        Width = 182
        Height = 25
        Enabled = False
        TabOrder = 6
        Text = 'edtTipeServer'
      end
      object edtServer: TEdit
        Left = 179
        Top = 55
        Width = 446
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 1
        Text = 'edtServer'
      end
      object mmoNotes: TMemo
        Left = 15
        Top = 282
        Width = 659
        Height = 95
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          'mmoNotes')
        TabOrder = 10
      end
      object edtPemilik: TEdit
        Left = 179
        Top = 113
        Width = 495
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 3
        Text = 'edtTipeServer'
      end
      object cbbJenisPindah: TComboBox
        Left = 179
        Top = 199
        Width = 495
        Height = 25
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 8
        Items.Strings = (
          'Pindah Server'
          'Lainnya')
      end
      object dtpWaktuPindah: TAdvDateTimePicker
        Left = 179
        Top = 228
        Width = 495
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        Date = 43357.000000000000000000
        Format = ''
        Time = 0.577951388891961000
        DoubleBuffered = True
        Kind = dkDateTime
        ParentDoubleBuffered = False
        TabOrder = 9
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 43357.577951388890000000
        TimeFormat = 'HH : mm'
        Version = '1.3.3.0'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
      end
      object edtUPindah: TEdit
        Left = 467
        Top = 171
        Width = 158
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 7
        Text = 'edtTipeServer'
      end
      object edtRakPindah: TEdit
        Left = 467
        Top = 141
        Width = 166
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 5
        Text = 'edtTipeServer'
      end
      object edtNoTiket: TEdit
        Left = 179
        Top = 26
        Width = 495
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        Text = 'edtTipeServer'
      end
      object edtBladeEnclosure: TEdit
        Left = 467
        Top = 171
        Width = 166
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 11
        Text = 'edtTipeServer'
      end
    end
  end
  inherited actTrans: TActionList
    inherited _OnClearForm: TAction
      OnExecute = _OnClearFormExecute
    end
    inherited _OnLoad: TAction
      OnExecute = _OnLoadExecute
    end
    inherited _OnValidasiInput: TAction
      OnExecute = _OnValidasiInputExecute
    end
  end
end
