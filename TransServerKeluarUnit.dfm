inherited frmTransServerKeluarUnit: TfrmTransServerKeluarUnit
  Caption = 'Server Keluar'
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
        Left = 14
        Top = 83
        Width = 81
        Height = 17
        Caption = 'Serial Number'
      end
      object lblPosisiU: TLabel
        Left = 14
        Top = 137
        Width = 44
        Height = 17
        Caption = 'Posisi U'
      end
      object lblRak: TLabel
        Left = 14
        Top = 110
        Width = 20
        Height = 17
        Caption = 'Rak'
      end
      object lblServer: TLabel
        Left = 14
        Top = 56
        Width = 47
        Height = 17
        Caption = 'Server *'
      end
      object lblNotes: TLabel
        Left = 14
        Top = 218
        Width = 33
        Height = 17
        Caption = 'Notes'
      end
      object lblPemilik: TLabel
        Left = 14
        Top = 164
        Width = 40
        Height = 17
        Caption = 'Pemilik'
      end
      object btnCariServer: TAdvToolButton
        Left = 630
        Top = 47
        Width = 35
        Height = 30
        Anchors = [akTop, akRight]
        AutoThemeAdapt = False
        Color = 5288012
        ColorDown = 4034105
        ColorHot = 7791873
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Noto Sans'
        Font.Style = [fsBold]
        ImageIndex = 11
        Images = ilBtn
        ParentFont = False
        OnClick = btnCariServerClick
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object lblWaktuKeluar: TLabel
        Left = 14
        Top = 191
        Width = 74
        Height = 17
        Caption = 'Waktu Keluar'
      end
      object lblNoTiket: TLabel
        Left = 14
        Top = 29
        Width = 46
        Height = 17
        Caption = 'No Tiket'
      end
      object edtSN: TEdit
        Left = 167
        Top = 78
        Width = 498
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 2
        Text = 'edtTipeServer'
      end
      object edtRak: TEdit
        Left = 167
        Top = 105
        Width = 498
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 3
        Text = 'edtTipeServer'
      end
      object edtPosisiU: TEdit
        Left = 167
        Top = 132
        Width = 498
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 4
        Text = 'edtTipeServer'
      end
      object edtServer: TEdit
        Left = 167
        Top = 51
        Width = 458
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 1
        Text = 'edtServer'
      end
      object mmoNotes: TMemo
        Left = 14
        Top = 240
        Width = 649
        Height = 146
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          'mmoNotes')
        TabOrder = 7
      end
      object edtPemilik: TEdit
        Left = 167
        Top = 159
        Width = 498
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Enabled = False
        TabOrder = 5
        Text = 'edtTipeServer'
      end
      object dtpWaktuKeluar: TAdvDateTimePicker
        Left = 167
        Top = 186
        Width = 498
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        Date = 43357.000000000000000000
        Format = ''
        Time = 0.577951388891961000
        DoubleBuffered = True
        Kind = dkDateTime
        ParentDoubleBuffered = False
        TabOrder = 6
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
      object edtNoTiket: TEdit
        Left = 167
        Top = 24
        Width = 498
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
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
