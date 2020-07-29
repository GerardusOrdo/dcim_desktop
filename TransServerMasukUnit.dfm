inherited frmTransServerMasuk: TfrmTransServerMasuk
  Left = 147
  Top = 45
  Caption = 'Server Masuk'
  ClientHeight = 637
  ClientWidth = 1008
  OldCreateOrder = True
  ExplicitWidth = 1024
  ExplicitHeight = 676
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitle: TPanel
    Width = 1008
    ExplicitWidth = 1008
    inherited pnlClose: TPanel
      Left = 979
      ExplicitLeft = 979
      inherited btnClose: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
  inherited pnlButton: TPanel
    Top = 593
    Width = 1008
    ExplicitTop = 593
    ExplicitWidth = 1008
    DesignSize = (
      1008
      44)
    inherited btnSimpan: TAdvToolButton
      Left = 823
      Top = 6
      OnClick = btnSimpanClick
      ExplicitLeft = 823
      ExplicitTop = 6
      TMSStyle = 0
    end
    inherited btnBatal: TAdvToolButton
      Left = 912
      Top = 6
      ExplicitLeft = 912
      ExplicitTop = 6
      TMSStyle = 0
    end
  end
  inherited pnlTrans: TPanel
    Width = 1008
    Height = 565
    ExplicitWidth = 1008
    ExplicitHeight = 565
    object pnlAtas: TPanel
      Left = 0
      Top = 0
      Width = 1008
      Height = 270
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object grpDataServer: TGroupBox
        Left = 0
        Top = 0
        Width = 602
        Height = 270
        Align = alClient
        Caption = 'Data Perangkat'
        TabOrder = 0
        DesignSize = (
          602
          270)
        object lblSN: TLabel
          Left = 14
          Top = 56
          Width = 91
          Height = 17
          Caption = 'Serial Number *'
        end
        object lblUAwal: TLabel
          Left = 14
          Top = 137
          Width = 23
          Height = 17
          Caption = 'U- *'
        end
        object lblJumlahU: TLabel
          Left = 14
          Top = 110
          Width = 41
          Height = 17
          Caption = 'Ukuran'
        end
        object lblRak: TLabel
          Left = 14
          Top = 83
          Width = 30
          Height = 17
          Caption = 'Rak *'
        end
        object lblIPManagement: TLabel
          Left = 14
          Top = 164
          Width = 89
          Height = 17
          Caption = 'IP Management'
        end
        object lblUserManagement: TLabel
          Left = 14
          Top = 191
          Width = 105
          Height = 17
          Caption = 'User Management'
        end
        object lblPasswordManagement: TLabel
          Left = 14
          Top = 218
          Width = 132
          Height = 17
          Caption = 'Password Management'
        end
        object lblTipeServer: TLabel
          Left = 16
          Top = 29
          Width = 94
          Height = 17
          Caption = 'Tipe Perangkat *'
        end
        object btnCariTipeServer: TAdvToolButton
          Left = 560
          Top = 19
          Width = 36
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
          OnClick = btnCariTipeServerClick
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        object btnCariRak: TAdvToolButton
          Left = 560
          Top = 73
          Width = 36
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
          OnClick = btnCariRakClick
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        object btnRevealPwdMgt: TAdvToolButton
          Left = 560
          Top = 215
          Width = 36
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
          ImageIndex = 19
          Images = ilBtn
          ParentFont = False
          OnMouseDown = btnRevealPwdMgtMouseDown
          OnMouseUp = btnRevealPwdMgtMouseUp
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        object btnCariBladeEncosure: TAdvToolButton
          Left = 560
          Top = 131
          Width = 36
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
          OnClick = btnCariBladeEncosureClick
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        object edtSN: TEdit
          Left = 167
          Top = 52
          Width = 387
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          Text = 'edtTipeServer'
        end
        object edtRak: TEdit
          Left = 167
          Top = 80
          Width = 387
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Enabled = False
          TabOrder = 2
          Text = 'edtTipeServer'
        end
        object edtUAwal: TEdit
          Left = 167
          Top = 136
          Width = 387
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 5
          Text = 'edtTipeServer'
        end
        object edtJumlahU: TEdit
          Left = 167
          Top = 108
          Width = 387
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Enabled = False
          TabOrder = 3
          Text = 'edtTipeServer'
        end
        object edtIPManagement: TEdit
          Left = 167
          Top = 164
          Width = 387
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 6
          Text = 'edtTipeServer'
        end
        object edtUserManagement: TEdit
          Left = 167
          Top = 192
          Width = 387
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 7
          Text = 'edtTipeServer'
        end
        object edtPasswordManagement: TEdit
          Left = 167
          Top = 220
          Width = 387
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          PasswordChar = '*'
          TabOrder = 8
          Text = 'edtTipeServer'
          OnKeyDown = edtPasswordManagementKeyDown
        end
        object edtTipeServer: TEdit
          Left = 167
          Top = 24
          Width = 387
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Enabled = False
          TabOrder = 0
          Text = 'edtTipeServer'
        end
        object edtBladeEnclosure: TEdit
          Left = 167
          Top = 136
          Width = 387
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Enabled = False
          TabOrder = 4
          Text = 'edtTipeServer'
        end
      end
      object grpKelistrikan: TGroupBox
        Left = 602
        Top = 0
        Width = 406
        Height = 270
        Align = alRight
        Caption = 'Kelistrikan'
        TabOrder = 1
        object pnlToolbar: TPanel
          Left = 2
          Top = 19
          Width = 402
          Height = 135
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            402
            135)
          object btnTambahMCB: TAdvToolButton
            Left = 316
            Top = 35
            Width = 36
            Height = 28
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
            ImageIndex = 1
            Images = ilBtn
            ParentFont = False
            OnClick = btnTambahMCBClick
            Version = '1.6.2.0'
            TMSStyle = 0
          end
          object btnHapusMCB: TAdvToolButton
            Left = 354
            Top = 35
            Width = 36
            Height = 28
            Anchors = [akTop, akRight]
            AutoThemeAdapt = False
            Color = 3425267
            ColorDown = 3027154
            ColorHot = 5460991
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Noto Sans'
            Font.Style = []
            ImageIndex = 3
            Images = ilBtn
            ParentFont = False
            OnClick = btnHapusMCBClick
            Version = '1.6.2.0'
            TMSStyle = 0
          end
          object lblMCB: TLabel
            Left = 7
            Top = 8
            Width = 27
            Height = 17
            Caption = 'MCB'
          end
          object btnCariMCB: TAdvToolButton
            Left = 355
            Top = 0
            Width = 35
            Height = 31
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
            OnClick = btnCariMCBClick
            Version = '1.6.2.0'
            TMSStyle = 0
          end
          object lblPower: TLabel
            Left = 4
            Top = 39
            Width = 35
            Height = 17
            Caption = 'Power'
          end
          object lblAmpere: TLabel
            Left = 7
            Top = 71
            Width = 45
            Height = 17
            Caption = 'Ampere'
          end
          object lblWatt: TLabel
            Left = 7
            Top = 99
            Width = 26
            Height = 17
            Caption = 'Watt'
          end
          object edtMCB: TEdit
            Left = 57
            Top = 6
            Width = 295
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Enabled = False
            TabOrder = 0
            Text = 'edtTipeServer'
          end
          object cbbPower: TComboBox
            Left = 57
            Top = 37
            Width = 250
            Height = 25
            ItemIndex = 0
            TabOrder = 1
            Text = 'primary'
            Items.Strings = (
              'primary'
              'secondary'
              'tertiary'
              'quarternary')
          end
          object edtAmpere: TEdit
            Left = 58
            Top = 68
            Width = 332
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 2
            Text = 'edtAmpere'
          end
          object edtWatt: TEdit
            Left = 58
            Top = 99
            Width = 332
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 3
            Text = 'edtWatt'
          end
        end
        object dbgMCB: TDBGridEh
          Left = 2
          Top = 154
          Width = 402
          Height = 114
          Align = alClient
          AutoFitColWidths = True
          BorderStyle = bsNone
          DataSource = dsTempKelistrikan
          DynProps = <>
          FixedColor = clWindow
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Noto Sans'
          Font.Style = []
          IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
          ParentFont = False
          ReadOnly = True
          RowDetailPanel.Color = clBtnFace
          RowHeight = 2
          RowLines = 1
          RowSizingAllowed = True
          SearchPanel.FilterOnTyping = True
          SumList.Active = True
          TabOrder = 1
          TitleParams.Color = 16119285
          TitleParams.Font.Charset = DEFAULT_CHARSET
          TitleParams.Font.Color = clWindowText
          TitleParams.Font.Height = -11
          TitleParams.Font.Name = 'Noto Sans'
          TitleParams.Font.Style = []
          TitleParams.HorzLines = True
          TitleParams.MultiTitle = True
          TitleParams.ParentFont = False
          VertScrollBar.SmoothStep = True
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'power'
              Footers = <>
              Title.Caption = 'Power'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'panel_name'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Caption = 'Panel'
              Width = 79
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'mcb_name'
              Footers = <>
              Title.Caption = 'MCB'
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'pdu_name'
              Footers = <>
              Title.Caption = 'PDU'
              Width = 84
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object grpOS: TGroupBox
      Left = 0
      Top = 270
      Width = 602
      Height = 295
      Align = alClient
      Caption = 'Operating System'
      TabOrder = 1
      object dbgOS: TDBGridEh
        Left = 2
        Top = 150
        Width = 598
        Height = 143
        Align = alClient
        AutoFitColWidths = True
        BorderStyle = bsNone
        DataSource = dsTempOS
        DynProps = <>
        FixedColor = clWindow
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Noto Sans'
        Font.Style = []
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghAutoFitRowHeight, dghExtendVertLines]
        ParentFont = False
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        RowHeight = 2
        RowLines = 1
        RowSizingAllowed = True
        SearchPanel.FilterOnTyping = True
        SumList.Active = True
        TabOrder = 1
        TitleParams.Color = 16119285
        TitleParams.Font.Charset = DEFAULT_CHARSET
        TitleParams.Font.Color = clWindowText
        TitleParams.Font.Height = -11
        TitleParams.Font.Name = 'Noto Sans'
        TitleParams.Font.Style = []
        TitleParams.HorzLines = True
        TitleParams.MultiTitle = True
        TitleParams.ParentFont = False
        VertScrollBar.SmoothStep = True
        OnKeyDown = dbgOSKeyDown
        OnKeyPress = dbgOSKeyPress
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_os'
            Footers = <>
            Visible = False
            Width = 64
          end
          item
            CellButtons = <>
            Color = cl3DLight
            DynProps = <>
            EditButtons = <>
            FieldName = 'os'
            Footers = <>
            ReadOnly = False
            Title.Caption = 'OS'
            Width = 147
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ip_os'
            Footers = <>
            ReadOnly = False
            Title.Caption = 'IP'
            Width = 78
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'hostname'
            Footers = <>
            ReadOnly = False
            Title.Caption = 'Hostname'
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'sistem_terpasang'
            Footers = <>
            ReadOnly = False
            Title.Caption = 'Sistem Terpasang'
            Width = 168
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'user'
            Footers = <>
            ReadOnly = False
            Title.Caption = 'User'
            Width = 73
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'password'
            Footers = <>
            ReadOnly = False
            Title.Caption = 'Password'
            Visible = False
            Width = 148
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object pnlOS: TPanel
        Left = 2
        Top = 19
        Width = 598
        Height = 131
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          598
          131)
        object lblOS: TLabel
          Left = 273
          Top = 13
          Width = 16
          Height = 17
          Caption = 'OS'
        end
        object btnTambahOS: TAdvToolButton
          Left = 521
          Top = 97
          Width = 35
          Height = 28
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
          ImageIndex = 1
          Images = ilBtn
          ParentFont = False
          OnClick = btnTambahOSClick
          Version = '1.6.2.0'
          ExplicitLeft = 509
          TMSStyle = 0
        end
        object btnHapusOS: TAdvToolButton
          Left = 558
          Top = 97
          Width = 36
          Height = 28
          Anchors = [akTop, akRight]
          AutoThemeAdapt = False
          Color = 3425267
          ColorDown = 3027154
          ColorHot = 5460991
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Noto Sans'
          Font.Style = []
          ImageIndex = 3
          Images = ilBtn
          ParentFont = False
          OnClick = btnHapusOSClick
          Version = '1.6.2.0'
          ExplicitLeft = 546
          TMSStyle = 0
        end
        object lblIP: TLabel
          Left = 12
          Top = 13
          Width = 11
          Height = 17
          Caption = 'IP'
        end
        object lblHostname: TLabel
          Left = 12
          Top = 43
          Width = 58
          Height = 17
          Caption = 'Hostname'
        end
        object lblSistem: TLabel
          Left = 273
          Top = 43
          Width = 38
          Height = 17
          Caption = 'Sistem'
        end
        object lblUser: TLabel
          Left = 12
          Top = 73
          Width = 27
          Height = 17
          Caption = 'User'
        end
        object lblPassword: TLabel
          Left = 273
          Top = 73
          Width = 54
          Height = 17
          Caption = 'Password'
        end
        object btnRevealPwd: TAdvToolButton
          Left = 559
          Top = 61
          Width = 35
          Height = 31
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
          ImageIndex = 19
          Images = ilBtn
          ParentFont = False
          OnMouseDown = btnRevealPwdMouseDown
          OnMouseUp = btnRevealPwdMouseUp
          Version = '1.6.2.0'
          ExplicitLeft = 547
          TMSStyle = 0
        end
        object btnCariOS: TAdvToolButton
          Left = 559
          Top = 5
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
          OnClick = btnCariOSClick
          Version = '1.6.2.0'
          ExplicitLeft = 547
          TMSStyle = 0
        end
        object cbxOS: TDBLookupComboboxEh
          Left = 332
          Top = 7
          Width = 221
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          DynProps = <>
          DataField = ''
          DropDownBox.ListSourceAutoFilterType = lsftContainsEh
          EditButtons = <>
          TabOrder = 1
          Visible = True
          WordWrap = True
          OnKeyPress = cbxOSKeyPress
        end
        object edtIP: TEdit
          Left = 78
          Top = 7
          Width = 177
          Height = 25
          TabOrder = 0
          Text = 'edtTipeServer'
        end
        object edtHostname: TEdit
          Left = 78
          Top = 35
          Width = 177
          Height = 25
          TabOrder = 2
          Text = 'edtTipeServer'
        end
        object edtSistem: TEdit
          Left = 332
          Top = 35
          Width = 221
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 3
          Text = 'edtTipeServer'
        end
        object edtUser: TEdit
          Left = 78
          Top = 63
          Width = 177
          Height = 25
          TabOrder = 4
          Text = 'edtTipeServer'
        end
        object edtPassword: TEdit
          Left = 332
          Top = 63
          Width = 221
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          PasswordChar = '*'
          TabOrder = 5
          Text = 'edtTipeServer'
        end
      end
    end
    object grpDataLainnya: TGroupBox
      Left = 602
      Top = 270
      Width = 406
      Height = 295
      Align = alRight
      Caption = 'Data Lainnya'
      TabOrder = 2
      DesignSize = (
        406
        295)
      object lblPemilik: TLabel
        Left = 16
        Top = 24
        Width = 40
        Height = 17
        Caption = 'Pemilik'
      end
      object lblATS: TLabel
        Left = 16
        Top = 78
        Width = 22
        Height = 17
        Caption = 'ATS'
      end
      object lblTahunPemeliharaan: TLabel
        Left = 16
        Top = 132
        Width = 116
        Height = 17
        Caption = 'Tahun Pemeliharaan'
      end
      object lblTglEndOfSupport: TLabel
        Left = 16
        Top = 159
        Width = 104
        Height = 17
        Caption = 'Tgl End Of Support'
      end
      object lblNotes: TLabel
        Left = 16
        Top = 239
        Width = 207
        Height = 17
        Caption = 'Notes (Ctrl+Enter untuk pindah baris)'
      end
      object btnCariPemilik: TAdvToolButton
        Left = 357
        Top = 15
        Width = 36
        Height = 31
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
        OnClick = btnCariPemilikClick
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object btnCariATS: TAdvToolButton
        Left = 357
        Top = 67
        Width = 36
        Height = 31
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
        OnClick = btnCariATSClick
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object lblTglMasukServer: TLabel
        Left = 16
        Top = 186
        Width = 97
        Height = 17
        Caption = 'Tgl Masuk Server'
      end
      object lblNoTiket: TLabel
        Left = 16
        Top = 105
        Width = 46
        Height = 17
        Caption = 'No Tiket'
      end
      object lblStatusColo: TLabel
        Left = 16
        Top = 213
        Width = 63
        Height = 17
        Caption = 'Status Colo'
      end
      object lblpicserver: TLabel
        Left = 16
        Top = 51
        Width = 59
        Height = 17
        Caption = 'PIC Server'
      end
      object btnCariPICServer: TAdvToolButton
        Left = 357
        Top = 42
        Width = 36
        Height = 31
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
        OnClick = btnCariPICServerClick
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object edtPemilik: TEdit
        Left = 144
        Top = 19
        Width = 209
        Height = 25
        Enabled = False
        TabOrder = 0
        Text = 'edtTipeServer'
      end
      object edtATS: TEdit
        Left = 144
        Top = 73
        Width = 209
        Height = 25
        Enabled = False
        TabOrder = 2
        Text = 'edtTipeServer'
      end
      object edtTahunPemeliharaan: TEdit
        Left = 144
        Top = 127
        Width = 249
        Height = 25
        TabOrder = 4
        Text = 'edtTipeServer'
      end
      object dtpTglEndOfSupport: TDateTimePicker
        Left = 144
        Top = 154
        Width = 249
        Height = 23
        Date = 43357.000000000000000000
        Time = 0.361202638887334600
        TabOrder = 5
      end
      object mmoNotes: TMemo
        Left = 16
        Top = 256
        Width = 377
        Height = 28
        Anchors = [akLeft, akTop, akRight, akBottom]
        Lines.Strings = (
          'mmoNotes')
        TabOrder = 8
      end
      object dtpTglMasukServer: TAdvDateTimePicker
        Left = 144
        Top = 181
        Width = 249
        Height = 26
        Date = 43361.000000000000000000
        Format = ''
        Time = 0.469618055554747100
        DoubleBuffered = True
        Kind = dkDateTime
        ParentDoubleBuffered = False
        TabOrder = 6
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 43361.469618055550000000
        TimeFormat = 'HH : mm'
        Version = '1.3.3.0'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
      end
      object edtNoTiket: TEdit
        Left = 144
        Top = 100
        Width = 249
        Height = 25
        TabOrder = 3
        Text = 'edtTipeServer'
      end
      object cbbStatusColo: TComboBox
        Left = 144
        Top = 211
        Width = 249
        Height = 25
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 7
        Text = 'Colocation'
        OnChange = cbbStatusColoChange
        Items.Strings = (
          'Colocation'
          'Non-Colocation')
      end
      object edtPICServer: TEdit
        Left = 144
        Top = 46
        Width = 209
        Height = 25
        Enabled = False
        TabOrder = 1
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
  object qryLookup: TZReadOnlyQuery
    Connection = ArDB.FDBCon
    Params = <>
    Left = 72
  end
  object dsOS: TDataSource
    Left = 362
    Top = 291
  end
  object tblOS: TMemTableEh
    Params = <>
    Options = [mtoTextFieldsCaseInsensitive]
    Left = 394
    Top = 291
  end
  object dsTempKelistrikan: TDataSource
    DataSet = qryTempKelistrikan
    Left = 1048
    Top = 282
  end
  object dsTempOS: TDataSource
    DataSet = qryTempOS
    Left = 560
    Top = 506
  end
  object qryTempOS: TZQuery
    Connection = ArDB.FDBCon
    Params = <>
    Left = 528
    Top = 506
  end
  object qryTempKelistrikan: TZQuery
    Connection = ArDB.FDBCon
    Params = <>
    Left = 928
    Top = 202
  end
end
