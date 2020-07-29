inherited frmSettingDB: TfrmSettingDB
  Left = 197
  Top = 122
  Caption = 'Setting Database'
  ClientHeight = 550
  ClientWidth = 872
  OldCreateOrder = True
  ExplicitWidth = 878
  ExplicitHeight = 579
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitle: TPanel
    Width = 872
    Align = alNone
    TabOrder = 1
    ExplicitWidth = 872
    inherited pnlClose: TPanel
      Left = 843
      ExplicitLeft = 843
      inherited btnClose: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
  inherited pnlButton: TPanel
    Top = 503
    Width = 872
    ExplicitTop = 503
    ExplicitWidth = 872
    DesignSize = (
      872
      47)
    inherited btnBatal: TAdvToolButton
      Left = 777
      ExplicitLeft = 777
      TMSStyle = 0
    end
    inherited btnOK: TAdvToolButton
      Left = 684
      Caption = 'Simpan'
      Enabled = False
      OnClick = btnOKClick
      ExplicitLeft = 684
      TMSStyle = 0
    end
  end
  inherited pnlData: TPanel
    Top = 0
    Width = 872
    Height = 503
    TabOrder = 0
    ExplicitTop = 0
    ExplicitWidth = 872
    ExplicitHeight = 503
    object btnTestKoneksi: TAdvToolButton
      Left = 143
      Top = 231
      Width = 122
      Height = 41
      Anchors = [akTop, akRight]
      AutoThemeAdapt = False
      Color = 16094753
      ColorDown = 10501937
      ColorHot = 16761919
      Caption = 'TEST KONEKSI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Noto Sans'
      Font.Style = []
      ParentFont = False
      OnClick = btnTestKoneksiClick
      Version = '1.6.2.0'
      TMSStyle = 0
    end
    object btnBuatDB: TAdvToolButton
      Left = 271
      Top = 231
      Width = 106
      Height = 41
      Anchors = [akTop, akRight]
      AutoThemeAdapt = False
      Color = 11610268
      ColorDown = 10624890
      ColorHot = 16531680
      Caption = 'BUAT DATABASE'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Noto Sans'
      Font.Style = []
      ParentFont = False
      OnClick = btnBuatDBClick
      Version = '1.6.2.0'
      TMSStyle = 0
    end
    object btnFillMasterData: TAdvToolButton
      Left = 143
      Top = 279
      Width = 234
      Height = 41
      Anchors = [akTop, akRight]
      AutoThemeAdapt = False
      Color = 2447612
      ColorDown = 1723110
      ColorHot = 4288255
      Caption = 'ISI CONTOH DATA MASTER'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Noto Sans'
      Font.Style = []
      ParentFont = False
      OnClick = btnFillMasterDataClick
      Version = '1.6.2.0'
      TMSStyle = 0
    end
    object chkServerDefault: TCheckBox
      Left = 18
      Top = 18
      Width = 380
      Height = 20
      TabStop = False
      Caption = 'Menggunakan server bawaan dari aplikasi (Direkomendasikan)'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Noto Sans'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      OnClick = chkServerDefaultClick
    end
    object grpKeterangan: TGroupBox
      Left = 9
      Top = 323
      Width = 371
      Height = 167
      Caption = ' Keterangan '
      TabOrder = 6
      object mmoKeterangan: TMemo
        Left = 9
        Top = 18
        Width = 352
        Height = 140
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Noto Sans'
        Font.Style = []
        Lines.Strings = (
          'Bila menggunakan server bawaan, maka '
          'USERNAME, PASSWORD dan PORT tidak perlu '
          'diganti.'
          ''
          'Bila aplikasi berada di server, NAMA SERVER diisi '
          'localhost, bila sebagai komputer klien, maka NAMA '
          'SERVER diisi nama komputer yang sudah terinstall '
          'server database.')
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object btnFillDemoData: TBitBtn
      Left = 18
      Top = 278
      Width = 103
      Height = 37
      Caption = 'Isi data contoh proses'
      Enabled = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        825B1EA383529E7D489E7D499E7D499E7D499E7D499E7D499E7D499E7D499E7C
        4B9975448D6733FFFFFFFFFFFFFFFFFFA08052FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF997745FFFFFFFFFFFFFFFFFF
        A68556FFFFFFF5F4ECF3F1E8F3F1E9F3F1E9F2F0E7EFE8DEEEE9E0EFEBE2F6F3
        EDF0EBE2997238FFFFFFFFFFFFFFFFFFAD9164FFFFFFF6F4EFF5F2EFF5F2EFF5
        F2EFF5F2EFF6F5EDF3F4E8F3F0EAFCFCF9EFE9E099733AFFFFFFFFFFFFFFFFFF
        B39669FFFFFFF6F4EFF5F2EDF5F2EDF5F2EDF5F3EEF5F2EEF7F3EFF5F2EDFDFD
        FAEFE8E099733AFFFFFFFFFFFFFFFFFFB19667FFFFFFF6F4EFF5F2EDF5F2EDF5
        F2EDF7F6EFF6F1EEFCF6F4FAF3F2FEFBFDEFE9DF997339FFFFFFFFFFFFFFFFFF
        B19666FFFFFFF6F4EFF5F2EDF4F1ECF4F0ECF9F3F2FBFAF0FBF9F5FBF4F3FCF7
        F3EFEAE399733BFFFFFFFFFFFFFFFFFFB0956DFFFFFFF7F4EDF4F1ECF6F2EDF9
        F2F2FAFAF4FBFDF6FCFAF9F4EFE7F5F1ECF0EAE29A743CFFFFFFFFFFFFFFFFFF
        B19E7CFFFFFFFCFEF8F9F9F0FBFAF9FAF9FCFBFCFBFAFAFCF3F1E9EAE5DDECE7
        E0E6D8CB9A763CFFFFFFFFFFFFFFFFFFBDA787FFFFFFFDFEFCFAFBF8FAFAFCFA
        FBFEFCFBF9F5F2EAF0EEE7E9E2DAE6DDD4D6CBB49B773EFFFFFFFFFFFFFFFFFF
        C5B190FFFFFFFCFDFDFAF9F9FAFBFDFBFDFAF9F7F0F3EEE4DDD4C5D4BEABD0BC
        A1BEA7849B783FFFFFFFFFFFFFFFFFFFC7B596FFFFFFF8FDFDFAFBFBFBFDFAF6
        F7EBF3F1E9E3D9CAC9B493EBE3DCE1D9C6B79D739D773FFFFFFFFFFFFFFFFFFF
        C8B599FFFFFFFBFDFFFDFDFDF6F7F2EDE7E0EFE4DDD1BEA6CDB99AFFFFFFCFBB
        A1B3966AFAF8F5FFFFFFFFFFFFFFFFFFC9B89BFFFFFFFCFFFFFCF8F3F4EBE5E5
        DFD7E3D6C6CDB696BCAA89D6C8B4AA8A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CBBDA2FFFFFFFFFFFFFAF7F6F0E8DFDFD7C7D8C6B1C1AA859F824CB2966AFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4B393CFBDA4CDBCA1C9B79BC8B69AC5
        AF8DC3AB85AA9161AA8C5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 4
      TabStop = False
      Visible = False
      OnClick = btnFillDemoDataClick
    end
    object btnEmptyData: TBitBtn
      Left = 18
      Top = 278
      Width = 103
      Height = 37
      Caption = 'Kosongkan data'
      Enabled = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        825B1EA383529E7D489E7D499E7D499E7D499E7D499E7D499E7D499E7D499E7C
        4B9975448D6733FFFFFFFFFFFFFFFFFFA08052FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF997745FFFFFFFFFFFFFFFFFF
        A68556FFFFFFF5F4ECF3F1E8F3F1E9F3F1E9F2F0E7EFE8DEEEE9E0EFEBE2F6F3
        EDF0EBE2997238FFFFFFFFFFFFFFFFFFAD9164FFFFFFF6F4EFF5F2EFF5F2EFF5
        F2EFF5F2EFF6F5EDF3F4E8F3F0EAFCFCF9EFE9E099733AFFFFFFFFFFFFFFFFFF
        B39669FFFFFFF6F4EFF5F2EDF5F2EDF5F2EDF5F3EEF5F2EEF7F3EFF5F2EDFDFD
        FAEFE8E099733AFFFFFFFFFFFFFFFFFFB19667FFFFFFF6F4EFF5F2EDF5F2EDF5
        F2EDF7F6EFF6F1EEFCF6F4FAF3F2FEFBFDEFE9DF997339FFFFFFFFFFFFFFFFFF
        B19666FFFFFFF6F4EFF5F2EDF4F1ECF4F0ECF9F3F2FBFAF0FBF9F5FBF4F3FCF7
        F3EFEAE399733BFFFFFFFFFFFFFFFFFFB0956DFFFFFFF7F4EDF4F1ECF6F2EDF9
        F2F2FAFAF4FBFDF6FCFAF9F4EFE7F5F1ECF0EAE29A743CFFFFFFFFFFFFFFFFFF
        B19E7CFFFFFFFCFEF8F9F9F0FBFAF9FAF9FCFBFCFBFAFAFCF3F1E9EAE5DDECE7
        E0E6D8CB9A763CFFFFFFFFFFFFFFFFFFBDA787FFFFFFFDFEFCFAFBF8FAFAFCFA
        FBFEFCFBF9F5F2EAF0EEE7E9E2DAE6DDD4D6CBB49B773EFFFFFFFFFFFFFFFFFF
        C5B190FFFFFFFCFDFDFAF9F9FAFBFDFBFDFAF9F7F0F3EEE4DDD4C5D4BEABD0BC
        A1BEA7849B783FFFFFFFFFFFFFFFFFFFC7B596FFFFFFF8FDFDFAFBFBFBFDFAF6
        F7EBF3F1E9E3D9CAC9B493EBE3DCE1D9C6B79D739D773FFFFFFFFFFFFFFFFFFF
        C8B599FFFFFFFBFDFFFDFDFDF6F7F2EDE7E0EFE4DDD1BEA6CDB99AFFFFFFCFBB
        A1B3966AFAF8F5FFFFFFFFFFFFFFFFFFC9B89BFFFFFFFCFFFFFCF8F3F4EBE5E5
        DFD7E3D6C6CDB696BCAA89D6C8B4AA8A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CBBDA2FFFFFFFFFFFFFAF7F6F0E8DFDFD7C7D8C6B1C1AA859F824CB2966AFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4B393CFBDA4CDBCA1C9B79BC8B69AC5
        AF8DC3AB85AA9161AA8C5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 5
      TabStop = False
      Visible = False
      OnClick = btnEmptyDataClick
    end
    object grpStatus: TGroupBox
      Left = 398
      Top = 18
      Width = 462
      Height = 362
      Caption = 'Status '
      TabOrder = 1
      object mmoStatus: TMemo
        Left = 2
        Top = 17
        Width = 458
        Height = 343
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object grpBackupRestore: TGroupBox
      Left = 398
      Top = 388
      Width = 462
      Height = 102
      Caption = 'Backup Restore '
      TabOrder = 7
      Visible = False
      DesignSize = (
        462
        102)
      object lblDirectory: TLabel
        Left = 9
        Top = 32
        Width = 49
        Height = 15
        Caption = 'Directory'
      end
      object btnBackupData: TAdvToolButton
        Left = 216
        Top = 56
        Width = 111
        Height = 42
        Anchors = [akTop, akRight]
        AutoThemeAdapt = False
        Color = 16094753
        ColorDown = 10501937
        ColorHot = 16761919
        Caption = 'BACK UP DATA'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
        OnClick = btnOKClick
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object btnRestoreData: TAdvToolButton
        Left = 336
        Top = 56
        Width = 113
        Height = 42
        Anchors = [akTop, akRight]
        AutoThemeAdapt = False
        Color = 5288012
        ColorDown = 4034105
        ColorHot = 7791873
        Caption = 'RESTORE DATA'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
        OnClick = btnRestoreDataClick
        Version = '1.6.2.0'
        TMSStyle = 0
      end
    end
    object pnlSetDB: TPanel
      Left = 18
      Top = 38
      Width = 371
      Height = 195
      BevelOuter = bvNone
      TabOrder = 2
      object lbl1: TLabel
        Left = 0
        Top = 125
        Width = 79
        Height = 22
        Caption = 'Username'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 0
        Top = 162
        Width = 75
        Height = 22
        Caption = 'Password'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 0
        Top = 51
        Width = 121
        Height = 22
        Caption = 'Nama Database'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 0
        Top = 14
        Width = 98
        Height = 22
        Caption = 'Nama Server'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 0
        Top = 88
        Width = 33
        Height = 22
        Caption = 'Port'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
      end
      object edtUsername: TEdit
        Left = 128
        Top = 120
        Width = 233
        Height = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Noto Sans'
        Font.Style = [fsBold]
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 3
      end
      object edtPassword: TEdit
        Left = 128
        Top = 158
        Width = 233
        Height = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Noto Sans'
        Font.Style = [fsBold]
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 4
      end
      object edtDatabase: TEdit
        Left = 128
        Top = 46
        Width = 233
        Height = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Noto Sans'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = 'ge_tenderproject'
      end
      object edtServer: TEdit
        Left = 128
        Top = 9
        Width = 233
        Height = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Noto Sans'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = 'localhost'
      end
      object edtPort: TEdit
        Left = 128
        Top = 83
        Width = 233
        Height = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Noto Sans'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnKeyPress = edtPortKeyPress
      end
    end
    object btnReset: TBitBtn
      Left = 18
      Top = 231
      Width = 103
      Height = 38
      Caption = 'Reset'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        825B1EA383529E7D489E7D499E7D499E7D499E7D499E7D499E7D499E7D499E7C
        4B9975448D6733FFFFFFFFFFFFFFFFFFA08052FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF997745FFFFFFFFFFFFFFFFFF
        A68556FFFFFFF5F4ECF3F1E8F3F1E9F3F1E9F2F0E7EFE8DEEEE9E0EFEBE2F6F3
        EDF0EBE2997238FFFFFFFFFFFFFFFFFFAD9164FFFFFFF6F4EFF5F2EFF5F2EFF5
        F2EFF5F2EFF6F5EDF3F4E8F3F0EAFCFCF9EFE9E099733AFFFFFFFFFFFFFFFFFF
        B39669FFFFFFF6F4EFF5F2EDF5F2EDF5F2EDF5F3EEF5F2EEF7F3EFF5F2EDFDFD
        FAEFE8E099733AFFFFFFFFFFFFFFFFFFB19667FFFFFFF6F4EFF5F2EDF5F2EDF5
        F2EDF7F6EFF6F1EEFCF6F4FAF3F2FEFBFDEFE9DF997339FFFFFFFFFFFFFFFFFF
        B19666FFFFFFF6F4EFF5F2EDF4F1ECF4F0ECF9F3F2FBFAF0FBF9F5FBF4F3FCF7
        F3EFEAE399733BFFFFFFFFFFFFFFFFFFB0956DFFFFFFF7F4EDF4F1ECF6F2EDF9
        F2F2FAFAF4FBFDF6FCFAF9F4EFE7F5F1ECF0EAE29A743CFFFFFFFFFFFFFFFFFF
        B19E7CFFFFFFFCFEF8F9F9F0FBFAF9FAF9FCFBFCFBFAFAFCF3F1E9EAE5DDECE7
        E0E6D8CB9A763CFFFFFFFFFFFFFFFFFFBDA787FFFFFFFDFEFCFAFBF8FAFAFCFA
        FBFEFCFBF9F5F2EAF0EEE7E9E2DAE6DDD4D6CBB49B773EFFFFFFFFFFFFFFFFFF
        C5B190FFFFFFFCFDFDFAF9F9FAFBFDFBFDFAF9F7F0F3EEE4DDD4C5D4BEABD0BC
        A1BEA7849B783FFFFFFFFFFFFFFFFFFFC7B596FFFFFFF8FDFDFAFBFBFBFDFAF6
        F7EBF3F1E9E3D9CAC9B493EBE3DCE1D9C6B79D739D773FFFFFFFFFFFFFFFFFFF
        C8B599FFFFFFFBFDFFFDFDFDF6F7F2EDE7E0EFE4DDD1BEA6CDB99AFFFFFFCFBB
        A1B3966AFAF8F5FFFFFFFFFFFFFFFFFFC9B89BFFFFFFFCFFFFFCF8F3F4EBE5E5
        DFD7E3D6C6CDB696BCAA89D6C8B4AA8A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CBBDA2FFFFFFFFFFFFFAF7F6F0E8DFDFD7C7D8C6B1C1AA859F824CB2966AFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4B393CFBDA4CDBCA1C9B79BC8B69AC5
        AF8DC3AB85AA9161AA8C5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 3
      TabStop = False
      Visible = False
      OnClick = btnResetClick
    end
  end
  object procDB: TZSQLProcessor
    ParamCheck = False
    Params = <>
    Script.Strings = (
      'CREATE TABLE `ak_coa` ('
      '  `kode` varchar(10) NOT NULL,'
      '  `namaakun` varchar(50) DEFAULT NULL,'
      '  `kodekelas` varchar(10) DEFAULT NULL,'
      
        '  `tgledit` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE C' +
        'URRENT_TIMESTAMP,'
      '  PRIMARY KEY (`kode`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `ak_alokasikas` ('
      '  `idalokasikas` int(11) NOT NULL AUTO_INCREMENT,'
      '  `nama` varchar(30) DEFAULT NULL,'
      '  `nominal` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `urutan` smallint(6) NOT NULL DEFAULT '#39'0'#39','
      
        '  `jenis` smallint(6) NOT NULL DEFAULT '#39'1'#39' COMMENT '#39'1 = setoran'#39 +
        ','
      '  `kodeakun` varchar(10) NOT NULL,'
      '  PRIMARY KEY (`idalokasikas`),'
      '  KEY `idakun` (`kodeakun`),'
      
        '  CONSTRAINT `ak_alokasikas_akun` FOREIGN KEY (`kodeakun`) REFER' +
        'ENCES `ak_coa` (`kode`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384;'
      ''
      'CREATE TABLE `ak_coa_kelas` ('
      '  `kodekelas` varchar(10) NOT NULL,'
      '  `namakelas` varchar(50) DEFAULT NULL,'
      '  `jeniscoa` enum('#39'NR'#39','#39'LR'#39') DEFAULT NULL,'
      
        '  `tipe` enum('#39'Aktiva'#39','#39'Kewajiban'#39','#39'Modal'#39','#39'Pendapatan'#39','#39'Biaya'#39')' +
        ' DEFAULT NULL,'
      '  `keterangan` enum('#39'Akun Debit'#39','#39'Akun Kredit'#39') DEFAULT NULL,'
      '  PRIMARY KEY (`kodekelas`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `ak_jurnal` ('
      '  `nojurnal` varchar(20) NOT NULL,'
      '  `tanggal` datetime DEFAULT NULL,'
      '  `notrans` varchar(20) DEFAULT NULL,'
      '  `nama_transaksi` varchar(80) DEFAULT NULL,'
      '  `nobukti` varchar(30) DEFAULT NULL,'
      
        '  `jenis` tinyint(4) DEFAULT '#39'0'#39' COMMENT '#39'0=Jurnal Umum\r\n1=Jur' +
        'nal Penyesuaian\r\n2=Jurnal Ikhtisar Laba Rugi\r\n3=Jurnal SHU'#39','
      '  `iduser` int(11) DEFAULT NULL,'
      
        '  `tgledit` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE C' +
        'URRENT_TIMESTAMP,'
      '  PRIMARY KEY (`nojurnal`),'
      '  KEY `tanggal` (`tanggal`,`nojurnal`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `ak_jurnal_detail` ('
      '  `nojurnal` varchar(20) NOT NULL,'
      '  `kodeAkun` varchar(10) NOT NULL,'
      '  `jumlah_debit` decimal(19,4) DEFAULT '#39'0.0000'#39','
      '  `jumlah_kredit` decimal(19,4) DEFAULT '#39'0.0000'#39','
      
        '  `jenispst` enum('#39'AS'#39','#39'PP'#39') DEFAULT '#39'PP'#39' COMMENT '#39'AS=Saldo Awal' +
        ', PP=Posting Periode yang bersangkutan.'#39','
      
        '  `status` tinyint(4) DEFAULT '#39'2'#39' COMMENT '#39'1 = Saldo Awal memula' +
        'i program , 2 = Posting setelah aplikasi digunakan'#39','
      '  PRIMARY KEY (`nojurnal`,`kodeAkun`),'
      '  KEY `nojurnal` (`nojurnal`),'
      
        '  CONSTRAINT `ak_jurnal_detail_fk_new` FOREIGN KEY (`nojurnal`) ' +
        'REFERENCES `ak_jurnal` (`nojurnal`) ON DELETE CASCADE ON UPDATE ' +
        'CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `ak_laba` ('
      '  `tahun` int(11) NOT NULL,'
      '  `id` int(11) NOT NULL,'
      '  `kodeakun` varchar(10) DEFAULT NULL,'
      '  `persen` decimal(19,4) DEFAULT NULL,'
      '  `nominal` decimal(19,4) DEFAULT NULL,'
      '  `dibagi` tinyint(4) DEFAULT '#39'0'#39','
      '  `jenis` enum('#39'SHU Simpanan'#39','#39'SHU Pinjaman'#39','#39'-'#39') DEFAULT '#39'-'#39','
      '  PRIMARY KEY (`tahun`,`id`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `ak_laba_item` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `kodeakun` varchar(10) DEFAULT NULL,'
      '  `persen` decimal(19,4) DEFAULT NULL,'
      '  `dibagi` tinyint(4) DEFAULT '#39'0'#39','
      '  `jenis` enum('#39'SHU Simpanan'#39','#39'SHU Pinjaman'#39','#39'-'#39') DEFAULT NULL,'
      '  PRIMARY KEY (`id`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `ak_periode` ('
      '  `bulan` int(11) NOT NULL,'
      '  `tahun` int(11) DEFAULT NULL,'
      '  `aktif` tinyint(4) DEFAULT '#39'0'#39','
      '  `posting` tinyint(4) DEFAULT '#39'0'#39','
      '  PRIMARY KEY (`bulan`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `ak_saldo_awal` ('
      '  `periode` date NOT NULL,'
      '  `kodeakun` varchar(10) NOT NULL,'
      '  `debit` decimal(19,4) DEFAULT '#39'0.0000'#39','
      '  `kredit` decimal(19,4) DEFAULT '#39'0.0000'#39','
      '  `saldo` decimal(19,4) DEFAULT '#39'0.0000'#39','
      '  `posting` tinyint(4) DEFAULT '#39'0'#39','
      '  `aktif` tinyint(4) DEFAULT '#39'0'#39','
      '  `iduser` int(11) DEFAULT NULL,'
      '  PRIMARY KEY (`periode`,`kodeakun`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `ak_set_akun` ('
      '  `tahun` int(11) NOT NULL,'
      '  `akun_kas` varchar(20) DEFAULT NULL,'
      '  `akun_laba` varchar(20) DEFAULT NULL,'
      '  `akun_ikhtisar` varchar(20) DEFAULT NULL,'
      '  PRIMARY KEY (`tahun`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `ak_setting` ('
      '  `nama` varchar(20) NOT NULL,'
      '  `nilai` blob,'
      '  PRIMARY KEY (`nama`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `ak_settingakun` ('
      '  `idsetting` int(11) NOT NULL,'
      '  `kodeakun` varchar(10) DEFAULT NULL,'
      '  `kelompok` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `nama` varchar(50) DEFAULT '#39#39','
      '  PRIMARY KEY (`idsetting`),'
      '  KEY `idakun` (`kodeakun`),'
      
        '  CONSTRAINT `ak_settingakun_akun` FOREIGN KEY (`kodeakun`) REFE' +
        'RENCES `ak_coa` (`kode`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `ak_tahun_buku` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `tahun` int(11) NOT NULL,'
      '  `aktif` enum('#39'Ya'#39','#39'Tidak'#39') NOT NULL DEFAULT '#39'Tidak'#39','
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `tahun` (`tahun`),'
      '  UNIQUE KEY `tahun_2` (`tahun`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `jabatan` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `nama` varchar(50) DEFAULT NULL,'
      
        '  `tgledit` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE C' +
        'URRENT_TIMESTAMP,'
      '  PRIMARY KEY (`id`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `karyawan` ('
      '  `idkaryawan` int(11) NOT NULL AUTO_INCREMENT,'
      '  `nik` varchar(20) NOT NULL,'
      '  `noktp` varchar(30) DEFAULT '#39#39','
      '  `nama` varchar(40) DEFAULT '#39#39','
      '  `jnskelamin` enum('#39'Laki-laki'#39','#39'Perempuan'#39') DEFAULT NULL,'
      '  `alamat` varchar(100) DEFAULT '#39#39','
      '  `notelp` varchar(20) DEFAULT '#39#39','
      '  `idjabatan` int(11) DEFAULT NULL,'
      
        '  `tgledit` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE C' +
        'URRENT_TIMESTAMP,'
      '  `tptlahir` varchar(30) DEFAULT '#39#39','
      '  `tgllahir` date DEFAULT NULL,'
      '  `goldarah` varchar(2) DEFAULT '#39#39','
      '  `img` blob,'
      '  PRIMARY KEY (`idkaryawan`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `setting` ('
      '  `nama` varchar(20) NOT NULL,'
      '  `nilai` blob,'
      '  PRIMARY KEY (`nama`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tempnomor` ('
      '  `idnomor` int(11) NOT NULL AUTO_INCREMENT,'
      '  `tabel` varchar(20) DEFAULT NULL,'
      '  `noakhir` int(11) DEFAULT NULL,'
      '  `prefix` varchar(5) DEFAULT NULL,'
      '  PRIMARY KEY (`idnomor`),'
      '  UNIQUE KEY `prefix` (`prefix`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_bengkel` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `nama` varchar(60) DEFAULT '#39#39','
      '  `alamat` varchar(150) DEFAULT '#39#39','
      '  `jenis` tinyint(1) DEFAULT '#39'0'#39','
      '  PRIMARY KEY (`id`),'
      '  KEY `internal` (`jenis`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_pemilik` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `noanggota` varchar(20) DEFAULT NULL,'
      '  `noktp` varchar(20) NOT NULL,'
      '  `nama` varchar(50) DEFAULT NULL,'
      '  `jnskelamin` enum('#39'Laki-laki'#39','#39'Perempuan'#39') DEFAULT NULL,'
      '  `alamat` varchar(100) DEFAULT NULL,'
      '  `notelp` varchar(20) DEFAULT NULL,'
      '  `pekerjaan` varchar(50) DEFAULT NULL,'
      
        '  `tgledit` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE C' +
        'URRENT_TIMESTAMP,'
      '  `tptlahir` varchar(30) DEFAULT '#39#39','
      '  `tgllahir` date DEFAULT NULL,'
      '  `goldarah` varchar(2) DEFAULT '#39#39','
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `noanggota` (`noanggota`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384;'
      ''
      'CREATE TABLE `tx_sopir` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `nosopir` varchar(10) NOT NULL,'
      '  `nosim` varchar(20) NOT NULL,'
      '  `nama` varchar(40) DEFAULT NULL,'
      '  `jnskelamin` enum('#39'Laki-laki'#39','#39'Perempuan'#39') DEFAULT NULL,'
      '  `alamat` varchar(100) DEFAULT NULL,'
      '  `notelp` varchar(20) DEFAULT NULL,'
      '  `idpemilik` int(11) DEFAULT NULL,'
      '  `nonaktif` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `tptlahir` varchar(30) DEFAULT '#39#39','
      '  `tgllahir` date DEFAULT NULL,'
      '  `goldarah` varchar(2) DEFAULT '#39#39','
      '  `img` blob,'
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `nosim` (`nosim`),'
      '  KEY `nosopir` (`nosopir`),'
      '  KEY `nama` (`nama`),'
      '  KEY `nonaktif` (`nonaktif`),'
      '  KEY `idpemilik` (`idpemilik`),'
      
        '  CONSTRAINT `sopir_pemilik_new` FOREIGN KEY (`idpemilik`) REFER' +
        'ENCES `tx_pemilik` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE'
      
        ') ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LE' +
        'NGTH=8192;'
      ''
      'CREATE TABLE `user_level` ('
      '  `idlevel` int(11) NOT NULL AUTO_INCREMENT,'
      '  `namalevel` varchar(30) DEFAULT NULL,'
      '  PRIMARY KEY (`idlevel`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;'
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
      
        '  CONSTRAINT `user_fk` FOREIGN KEY (`idlevel`) REFERENCES `user_' +
        'level` (`idlevel`)'
      
        ') ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LE' +
        'NGTH=16384 PACK_KEYS=0;'
      ''
      'CREATE TABLE `tx_blokir` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `idsopir` int(11) NOT NULL,'
      '  `nomor` varchar(15) NOT NULL,'
      '  `tanggal` datetime NOT NULL,'
      '  `idkaryawan` int(11) NOT NULL,'
      '  `iduser` int(11) NOT NULL,'
      '  `blokir` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `bukablokir` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `keterangan` varchar(80) NOT NULL DEFAULT '#39#39','
      
        '  `sumber` enum('#39'input'#39','#39'pelanggaran'#39','#39'setoran'#39') DEFAULT '#39'input'#39 +
        ','
      '  `idsumber` int(11) unsigned DEFAULT NULL,'
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `nomor` (`nomor`),'
      '  UNIQUE KEY `tanggal` (`tanggal`),'
      '  KEY `tx_blokir_karyawan` (`idkaryawan`),'
      '  KEY `tx_blokir_sopir` (`idsopir`),'
      '  KEY `tx_blokir_user` (`iduser`),'
      
        '  CONSTRAINT `tx_blokir_karyawan` FOREIGN KEY (`idkaryawan`) REF' +
        'ERENCES `karyawan` (`idkaryawan`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_blokir_sopir` FOREIGN KEY (`idsopir`) REFERENCE' +
        'S `tx_sopir` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_blokir_user` FOREIGN KEY (`iduser`) REFERENCES ' +
        '`user` (`iduser`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_taksi` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `notaksi` varchar(10) NOT NULL,'
      '  `idpemilik` int(11) NOT NULL,'
      '  `nopolisi` varchar(12) NOT NULL,'
      '  `namastnk` varchar(30) DEFAULT NULL,'
      '  `alamatstnk` varchar(60) DEFAULT NULL,'
      '  `merk` varchar(30) DEFAULT NULL,'
      '  `tipe` varchar(30) DEFAULT NULL,'
      '  `jenis` varchar(30) DEFAULT NULL,'
      '  `model` varchar(30) DEFAULT NULL,'
      '  `warna` varchar(30) DEFAULT NULL,'
      '  `tahun` int(11) DEFAULT NULL,'
      '  `norangka` varchar(30) DEFAULT NULL,'
      '  `nomesin` varchar(20) DEFAULT NULL,'
      '  `bahanbakar` varchar(20) DEFAULT NULL,'
      '  `tglpajakterakhir` date DEFAULT NULL,'
      '  `nonaktif` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      
        '  `tgledit` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE C' +
        'URRENT_TIMESTAMP,'
      '  `targetsetoran` decimal(19,4) DEFAULT '#39'0.0000'#39','
      '  `kmgantioli` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `maxksharian` decimal(19,4) DEFAULT '#39'0.0000'#39','
      '  `maxksbulanan` decimal(19,4) DEFAULT '#39'0.0000'#39','
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `notaksi` (`notaksi`),'
      '  KEY `nopolisi` (`nopolisi`),'
      '  KEY `idpemilik` (`idpemilik`),'
      
        '  CONSTRAINT `taksi_pemilik` FOREIGN KEY (`idpemilik`) REFERENCE' +
        'S `tx_pemilik` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_cekfisik` ('
      '  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,'
      '  `idtaksi` int(11) NOT NULL,'
      '  `nomor` varchar(15) NOT NULL,'
      '  `tanggal` datetime NOT NULL,'
      '  `idkaryawan` int(11) NOT NULL,'
      '  `iduser` int(11) NOT NULL,'
      '  `kmjalan1` int(11) DEFAULT '#39'0'#39','
      '  `kmjalan2` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `kmisi1` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `kmisi2` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `rit1` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `rit2` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `pulsa1` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `pulsa2` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `argo1` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `argo2` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `kmspeedo1` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `kmspeedo2` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `kmspeedopom` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `idsopirsblm` int(11) NOT NULL,'
      '  `idsopirstlh` int(11) NOT NULL,'
      '  `pemakaianbbm` decimal(10,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `ratiobbm` decimal(10,4) NOT NULL DEFAULT '#39'0.0000'#39','
      
        '  `kondisi` enum('#39'Baik'#39','#39'Perlu Perbaikan'#39','#39'Perlu Perawatan'#39') NOT' +
        ' NULL DEFAULT '#39'Baik'#39','
      '  `catatanteknis` varchar(80) NOT NULL DEFAULT '#39#39','
      
        '  `digunakandi` set('#39'SuratJalan'#39','#39'Setoran'#39','#39'Perbaikan'#39') NOT NULL' +
        ','
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `taksitanggal` (`tanggal`,`idtaksi`),'
      '  KEY `idtaksi` (`idtaksi`),'
      '  KEY `idkaryawan` (`idkaryawan`),'
      '  KEY `iduser` (`iduser`),'
      '  KEY `idsopirsblm` (`idsopirsblm`),'
      '  KEY `idsopirstlh` (`idsopirstlh`),'
      
        '  CONSTRAINT `tx_cekfisik_karyawan` FOREIGN KEY (`idkaryawan`) R' +
        'EFERENCES `karyawan` (`idkaryawan`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_cekfisik_sopirsblm` FOREIGN KEY (`idsopirsblm`)' +
        ' REFERENCES `tx_sopir` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_cekfisik_sopirstlh` FOREIGN KEY (`idsopirstlh`)' +
        ' REFERENCES `tx_sopir` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_cekfisik_taksi` FOREIGN KEY (`idtaksi`) REFEREN' +
        'CES `tx_taksi` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_cekfisik_user` FOREIGN KEY (`iduser`) REFERENCE' +
        'S `user` (`iduser`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_jaminan` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `idsopir` int(11) NOT NULL,'
      '  `nomor` varchar(15) NOT NULL,'
      '  `tanggal` datetime NOT NULL,'
      '  `idkaryawan` int(11) NOT NULL,'
      '  `iduser` int(11) NOT NULL,'
      '  `masuk` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `keluar` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      
        '  `jenis` enum('#39'Daftar'#39','#39'Penambahan'#39','#39'Pengambilan'#39') DEFAULT '#39'Daf' +
        'tar'#39','
      '  `posted` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `nojurnal` varchar(20) DEFAULT NULL,'
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `nomor` (`nomor`),'
      '  UNIQUE KEY `tanggal` (`tanggal`),'
      '  KEY `tx_jaminan_karyawan` (`idkaryawan`),'
      '  KEY `tx_jaminan_sopir` (`idsopir`),'
      '  KEY `tx_jaminan_user` (`iduser`),'
      '  KEY `idjurnal` (`nojurnal`),'
      
        '  CONSTRAINT `tx_jaminan_jurnal` FOREIGN KEY (`nojurnal`) REFERE' +
        'NCES `ak_jurnal` (`nojurnal`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_jaminan_karyawan` FOREIGN KEY (`idkaryawan`) RE' +
        'FERENCES `karyawan` (`idkaryawan`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_jaminan_sopir` FOREIGN KEY (`idsopir`) REFERENC' +
        'ES `tx_sopir` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_jaminan_user` FOREIGN KEY (`iduser`) REFERENCES' +
        ' `user` (`iduser`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_jnspelanggaran` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `nama` varchar(30) NOT NULL,'
      '  `denda` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `blokirsopir` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  PRIMARY KEY (`id`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_suratjalan` ('
      '  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,'
      '  `idtaksi` int(11) NOT NULL,'
      '  `idsopir` int(11) NOT NULL,'
      '  `nomor` varchar(15) NOT NULL,'
      '  `tanggal` datetime NOT NULL,'
      '  `idkaryawan` int(11) NOT NULL,'
      '  `iduser` int(11) NOT NULL,'
      '  `idcekfisik` int(11) unsigned DEFAULT NULL,'
      '  `kmjalan1` int(11) DEFAULT '#39'0'#39','
      '  `kmisi1` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `rit1` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `pulsa1` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `argo1` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `kmspeedo1` int(11) NOT NULL DEFAULT '#39'0'#39','
      
        '  `kondisi` enum('#39'Baik'#39','#39'Perlu Perbaikan'#39','#39'Perlu Perawatan'#39') NOT' +
        ' NULL DEFAULT '#39'Baik'#39','
      '  `catatanteknis` varchar(80) NOT NULL DEFAULT '#39#39','
      '  `idsopirdiganti` int(11) DEFAULT NULL,'
      '  `sudahsetor` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `uangtitip` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `posted` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `nojurnal` varchar(20) DEFAULT NULL,'
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `nomor` (`nomor`),'
      '  KEY `tx_suratjalan_sopirdiganti` (`idsopirdiganti`),'
      '  KEY `tx_suratjalan_karyawan` (`idkaryawan`),'
      '  KEY `tx_suratjalan_sopir` (`idsopir`),'
      '  KEY `tx_suratjalan_taksi` (`idtaksi`),'
      '  KEY `tx_suratjalan_user` (`iduser`),'
      '  KEY `tx_suratjalan_jurnal` (`nojurnal`),'
      
        '  CONSTRAINT `tx_suratjalan_jurnal` FOREIGN KEY (`nojurnal`) REF' +
        'ERENCES `ak_jurnal` (`nojurnal`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_suratjalan_karyawan` FOREIGN KEY (`idkaryawan`)' +
        ' REFERENCES `karyawan` (`idkaryawan`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_suratjalan_sopir` FOREIGN KEY (`idsopir`) REFER' +
        'ENCES `tx_sopir` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_suratjalan_sopirdiganti` FOREIGN KEY (`idsopird' +
        'iganti`) REFERENCES `tx_sopir` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_suratjalan_taksi` FOREIGN KEY (`idtaksi`) REFER' +
        'ENCES `tx_taksi` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_suratjalan_user` FOREIGN KEY (`iduser`) REFEREN' +
        'CES `user` (`iduser`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_lokasitaksi` ('
      '  `idsuratjalan` int(11) unsigned NOT NULL,'
      '  `idx` smallint(5) NOT NULL DEFAULT '#39'0'#39','
      '  `idtaksi` int(11) NOT NULL,'
      '  `tanggal` datetime NOT NULL,'
      '  `iduser` int(11) NOT NULL,'
      '  `keterangan` varchar(50) DEFAULT '#39#39','
      '  PRIMARY KEY (`idsuratjalan`,`idx`),'
      '  KEY `tanggal` (`tanggal`),'
      '  KEY `lokasitaksi_taksi` (`idtaksi`),'
      '  KEY `lokasitaksi_user` (`iduser`),'
      
        '  CONSTRAINT `lokasitaksi_suratjalan` FOREIGN KEY (`idsuratjalan' +
        '`) REFERENCES `tx_suratjalan` (`id`) ON DELETE CASCADE ON UPDATE' +
        ' CASCADE,'
      
        '  CONSTRAINT `lokasitaksi_taksi` FOREIGN KEY (`idtaksi`) REFEREN' +
        'CES `tx_taksi` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,'
      
        '  CONSTRAINT `lokasitaksi_user` FOREIGN KEY (`iduser`) REFERENCE' +
        'S `user` (`iduser`) ON DELETE NO ACTION ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192;'
      ''
      'CREATE TABLE `tx_nota` ('
      '  `idnomor` int(11) NOT NULL AUTO_INCREMENT,'
      '  `tabel` varchar(20) DEFAULT NULL,'
      '  `noakhir` int(11) DEFAULT NULL,'
      '  `prefix` varchar(5) DEFAULT NULL,'
      '  PRIMARY KEY (`idnomor`),'
      '  UNIQUE KEY `prefix` (`prefix`)'
      ') ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_pelanggan` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `nama` varchar(60) DEFAULT '#39#39','
      '  `alamat` varchar(150) DEFAULT '#39#39','
      
        '  `jenis` tinyint(1) DEFAULT '#39'0'#39' COMMENT '#39'0 = hotel\r\n1 = perso' +
        'nal'#39','
      '  `img` blob,'
      '  PRIMARY KEY (`id`),'
      '  KEY `jenis` (`jenis`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_piutang` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `idsopir` int(11) NOT NULL,'
      '  `nomor` varchar(15) NOT NULL,'
      '  `tanggal` datetime NOT NULL,'
      '  `idkaryawan` int(11) NOT NULL,'
      '  `iduser` int(11) NOT NULL,'
      '  `nominal` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `jmlbayar` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `jmlbunga` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `lama` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      
        '  `periodepinjam` enum('#39'Bulanan'#39','#39'Mingguan'#39','#39'Harian'#39') NOT NULL D' +
        'EFAULT '#39'Bulanan'#39','
      '  `jangkawaktu` smallint(6) NOT NULL DEFAULT '#39'1'#39','
      '  `jatuhtempo` date DEFAULT NULL,'
      '  `posted` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `lunas` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      
        '  `jenis` enum('#39'Pinjaman'#39','#39'Pelanggaran'#39','#39'Perbaikan'#39') NOT NULL DE' +
        'FAULT '#39'Pinjaman'#39','
      '  `nojurnal` varchar(20) DEFAULT NULL,'
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `nomor` (`nomor`),'
      '  KEY `tx_piutang_karyawan` (`idkaryawan`),'
      '  KEY `tx_piutang_sopir` (`idsopir`),'
      '  KEY `tx_piutang_user` (`iduser`),'
      '  KEY `tanggal` (`tanggal`),'
      '  KEY `tx_piutang_jurnal` (`nojurnal`),'
      
        '  CONSTRAINT `tx_piutang_jurnal` FOREIGN KEY (`nojurnal`) REFERE' +
        'NCES `ak_jurnal` (`nojurnal`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_piutang_karyawan` FOREIGN KEY (`idkaryawan`) RE' +
        'FERENCES `karyawan` (`idkaryawan`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_piutang_sopir` FOREIGN KEY (`idsopir`) REFERENC' +
        'ES `tx_sopir` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_piutang_user` FOREIGN KEY (`iduser`) REFERENCES' +
        ' `user` (`iduser`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_pelanggaran` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `idsopir` int(11) NOT NULL,'
      '  `nomor` varchar(15) NOT NULL,'
      '  `tanggal` datetime NOT NULL,'
      '  `idkaryawan` int(11) NOT NULL,'
      '  `iduser` int(11) NOT NULL,'
      '  `idjnspelanggaran` int(11) NOT NULL,'
      '  `keterangan` varchar(80) NOT NULL DEFAULT '#39#39','
      '  `blokirsopir` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `totaldenda` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `uangmuka` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `totalbayar` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `lunas` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `posted` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `idpiutang` int(11) DEFAULT NULL,'
      '  `nojurnal` varchar(20) DEFAULT NULL,'
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `nomor` (`nomor`),'
      '  UNIQUE KEY `tanggal` (`tanggal`),'
      '  KEY `tx_pelanggaran_karyawan` (`idkaryawan`),'
      '  KEY `tx_pelanggaran_sopir` (`idsopir`),'
      '  KEY `tx_pelanggaran_jenispelanggaran` (`idjnspelanggaran`),'
      '  KEY `tx_pelanggaran_user` (`iduser`),'
      '  KEY `idpiutang` (`idpiutang`),'
      '  KEY `tx_pelanggaran_jurnal` (`nojurnal`),'
      
        '  CONSTRAINT `tx_pelanggaran_jurnal` FOREIGN KEY (`nojurnal`) RE' +
        'FERENCES `ak_jurnal` (`nojurnal`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_pelanggaran_jnspelanggaran` FOREIGN KEY (`idjns' +
        'pelanggaran`) REFERENCES `tx_jnspelanggaran` (`id`) ON UPDATE CA' +
        'SCADE,'
      
        '  CONSTRAINT `tx_pelanggaran_karyawan` FOREIGN KEY (`idkaryawan`' +
        ') REFERENCES `karyawan` (`idkaryawan`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_pelanggaran_piutang` FOREIGN KEY (`idpiutang`) ' +
        'REFERENCES `tx_piutang` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_pelanggaran_sopir` FOREIGN KEY (`idsopir`) REFE' +
        'RENCES `tx_sopir` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_pelanggaran_user` FOREIGN KEY (`iduser`) REFERE' +
        'NCES `user` (`iduser`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_perbaikan` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `idsopir` int(11) NOT NULL,'
      '  `idtaksi` int(11) NOT NULL,'
      '  `nomor` varchar(15) NOT NULL,'
      '  `tanggal` datetime NOT NULL,'
      '  `idkaryawan` int(11) NOT NULL,'
      '  `idbengkel` int(11) NOT NULL,'
      '  `iduser` int(11) NOT NULL,'
      '  `idcekfisik` int(11) unsigned DEFAULT NULL,'
      '  `kmspeedo` int(11) NOT NULL DEFAULT '#39'0'#39','
      
        '  `kondisimasuk` enum('#39'Baik'#39','#39'Perlu Perbaikan'#39','#39'Perlu Perawatan'#39 +
        ') NOT NULL DEFAULT '#39'Perlu Perawatan'#39','
      '  `keteranganmasuk` varchar(80) NOT NULL DEFAULT '#39#39','
      '  `keluar` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `tglkeluar` datetime NOT NULL,'
      '  `nomornota` varchar(15) NOT NULL,'
      '  `idkaryawan2` int(11) DEFAULT NULL,'
      
        '  `kondisikeluar` enum('#39'Baik'#39','#39'Perlu Perbaikan'#39','#39'Perlu Perawatan' +
        #39') NOT NULL DEFAULT '#39'Baik'#39','
      '  `keterangankeluar` varchar(80) NOT NULL DEFAULT '#39#39','
      '  `gantioli` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `totalbiaya` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `idpenanggung` int(11) NOT NULL,'
      '  `ditanggungsopir` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      
        '  `ditanggungperusahaan` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39 +
        ','
      '  `uangmuka` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `totalbayar` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `lunas` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `posted` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `idpiutang` int(11) DEFAULT NULL,'
      '  `nojurnal` varchar(20) DEFAULT NULL,'
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `nomor` (`nomor`),'
      '  UNIQUE KEY `tanggal` (`tanggal`),'
      '  KEY `tx_perbaikan_karyawan` (`idkaryawan`),'
      '  KEY `tx_perbaikan_sopir` (`idsopir`),'
      '  KEY `tx_perbaikan_user` (`iduser`),'
      '  KEY `idbengkel` (`idbengkel`),'
      '  KEY `idcekfisik` (`idcekfisik`),'
      '  KEY `idsopirpenanggung` (`idpenanggung`),'
      '  KEY `idpiutang` (`idpiutang`),'
      '  KEY `tx_perbaikan_jurnal` (`nojurnal`),'
      
        '  CONSTRAINT `tx_perbaikan_jurnal` FOREIGN KEY (`nojurnal`) REFE' +
        'RENCES `ak_jurnal` (`nojurnal`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_perbaikan_bengkel` FOREIGN KEY (`idbengkel`) RE' +
        'FERENCES `tx_bengkel` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_perbaikan_cekfisik` FOREIGN KEY (`idcekfisik`) ' +
        'REFERENCES `tx_cekfisik` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_perbaikan_karyawan` FOREIGN KEY (`idkaryawan`) ' +
        'REFERENCES `karyawan` (`idkaryawan`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_perbaikan_penanggung` FOREIGN KEY (`idpenanggun' +
        'g`) REFERENCES `tx_sopir` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_perbaikan_piutang` FOREIGN KEY (`idpiutang`) RE' +
        'FERENCES `tx_piutang` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_perbaikan_sopir` FOREIGN KEY (`idsopir`) REFERE' +
        'NCES `tx_sopir` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_perbaikan_user` FOREIGN KEY (`iduser`) REFERENC' +
        'ES `user` (`iduser`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_perbaikanbayar` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `idperbaikan` int(11) NOT NULL,'
      '  `nomor` varchar(15) NOT NULL,'
      '  `tanggal` datetime NOT NULL,'
      '  `idkaryawan` int(11) NOT NULL,'
      '  `iduser` int(11) NOT NULL,'
      '  `bayar` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `posted` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `nojurnal` varchar(20) DEFAULT NULL,'
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `nomor` (`nomor`),'
      '  UNIQUE KEY `tanggal` (`tanggal`),'
      '  KEY `tx_perbaikanbayar_karyawan` (`idkaryawan`),'
      '  KEY `tx_perbaikanbayar_perbaikan` (`idperbaikan`),'
      '  KEY `tx_perbaikanbayar_user` (`iduser`),'
      '  KEY `tx_perbaikanbayar_jurnal` (`nojurnal`),'
      
        '  CONSTRAINT `tx_perbaikanbayar_jurnal` FOREIGN KEY (`nojurnal`)' +
        ' REFERENCES `ak_jurnal` (`nojurnal`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_perbaikanbayar_karyawan` FOREIGN KEY (`idkaryaw' +
        'an`) REFERENCES `karyawan` (`idkaryawan`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_perbaikanbayar_perbaikan` FOREIGN KEY (`idperba' +
        'ikan`) REFERENCES `tx_perbaikan` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_perbaikanbayar_user` FOREIGN KEY (`iduser`) REF' +
        'ERENCES `user` (`iduser`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_piutangangsur` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `idpiutang` int(11) NOT NULL,'
      '  `idsopir` int(11) NOT NULL,'
      '  `nomor` varchar(15) NOT NULL,'
      '  `tanggal` datetime NOT NULL,'
      '  `idkaryawan` int(11) NOT NULL,'
      '  `iduser` int(11) NOT NULL,'
      '  `bayar` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `bunga` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `posted` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `nojurnal` varchar(20) DEFAULT NULL,'
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `nomor` (`nomor`),'
      '  UNIQUE KEY `tanggal` (`tanggal`),'
      '  KEY `tx_piutangangsur_piutang` (`idpiutang`),'
      '  KEY `tx_piutangangsur_karyawan` (`idkaryawan`),'
      '  KEY `tx_piutangangsur_sopir` (`idsopir`),'
      '  KEY `tx_piutangangsur_user` (`iduser`),'
      '  KEY `tx_piutangangsur_jurnal` (`nojurnal`),'
      
        '  CONSTRAINT `tx_piutangangsur_jurnal` FOREIGN KEY (`nojurnal`) ' +
        'REFERENCES `ak_jurnal` (`nojurnal`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_piutangangsur_karyawan` FOREIGN KEY (`idkaryawa' +
        'n`) REFERENCES `karyawan` (`idkaryawan`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_piutangangsur_piutang` FOREIGN KEY (`idpiutang`' +
        ') REFERENCES `tx_piutang` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_piutangangsur_sopir` FOREIGN KEY (`idsopir`) RE' +
        'FERENCES `tx_sopir` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_piutangangsur_user` FOREIGN KEY (`iduser`) REFE' +
        'RENCES `user` (`iduser`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_setoran` ('
      '  `id` int(11) unsigned NOT NULL,'
      '  `idcekfisik` int(11) unsigned DEFAULT NULL,'
      '  `idsuratjalan` int(11) unsigned NOT NULL,'
      '  `nomor` varchar(15) NOT NULL,'
      '  `idsopir` int(11) NOT NULL,'
      '  `idtaksi` int(11) NOT NULL,'
      '  `tanggal` datetime NOT NULL,'
      '  `idkaryawan` int(11) NOT NULL,'
      '  `iduser` int(11) NOT NULL,'
      '  `catatan` varchar(80) DEFAULT '#39#39','
      '  `kmjalan` int(11) DEFAULT '#39'0'#39','
      '  `kmisi` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `rit` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `pulsa` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `argo` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `kmspeedo` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `kmspeedomasuk` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `kmspeedopom` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `selisihspeedo` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `targetsetoran` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `dendasetoran` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `diskonsetoran` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `setorantunai` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `daritabungan` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `hasilsetoran` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `selisihsetoran` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `angsuranks` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `titipuang` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `posted` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `uangdiambil` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      
        '  `idsuratjalanstlh` int(11) unsigned DEFAULT NULL COMMENT '#39'sura' +
        't jalan yg ambil uang bensin'#39','
      '  `nojurnal` varchar(20) DEFAULT NULL,'
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `nomor` (`nomor`),'
      '  KEY `idkaryawan` (`idkaryawan`),'
      '  KEY `idsopir` (`idsopir`),'
      '  KEY `idtaksi` (`idtaksi`),'
      '  KEY `iduser` (`iduser`),'
      '  KEY `idsuratjalan` (`idsuratjalan`),'
      '  KEY `idsuratjalanstlh` (`idsuratjalanstlh`),'
      '  KEY `tx_setoran_jurnal` (`nojurnal`),'
      
        '  CONSTRAINT `tx_setoran_jurnal` FOREIGN KEY (`nojurnal`) REFERE' +
        'NCES `ak_jurnal` (`nojurnal`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_setoran_karyawan` FOREIGN KEY (`idkaryawan`) RE' +
        'FERENCES `karyawan` (`idkaryawan`) ON DELETE NO ACTION ON UPDATE' +
        ' CASCADE,'
      
        '  CONSTRAINT `tx_setoran_sopir` FOREIGN KEY (`idsopir`) REFERENC' +
        'ES `tx_sopir` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_setoran_suratjalan` FOREIGN KEY (`idsuratjalan`' +
        ') REFERENCES `tx_suratjalan` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_setoran_suratjalanstlh` FOREIGN KEY (`idsuratja' +
        'lanstlh`) REFERENCES `tx_suratjalan` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_setoran_taksi` FOREIGN KEY (`idtaksi`) REFERENC' +
        'ES `tx_taksi` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_setoran_user` FOREIGN KEY (`iduser`) REFERENCES' +
        ' `user` (`iduser`) ON DELETE NO ACTION ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_setoranalokasi` ('
      '  `idsetoran` int(11) unsigned NOT NULL,'
      '  `idx` smallint(6) NOT NULL DEFAULT '#39'0'#39','
      '  `idalokasikas` int(11) NOT NULL,'
      '  `nominal` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  PRIMARY KEY (`idsetoran`,`idx`),'
      '  KEY `idsetoran` (`idsetoran`),'
      '  KEY `idalokasikas` (`idalokasikas`),'
      
        '  CONSTRAINT `tx_setoranalokasi_alokasikas` FOREIGN KEY (`idalok' +
        'asikas`) REFERENCES `ak_alokasikas` (`idalokasikas`) ON UPDATE C' +
        'ASCADE,'
      
        '  CONSTRAINT `tx_setorandtl_setoran` FOREIGN KEY (`idsetoran`) R' +
        'EFERENCES `tx_setoran` (`id`) ON DELETE CASCADE ON UPDATE CASCAD' +
        'E'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_tabunganks` ('
      '  `id` int(11) NOT NULL AUTO_INCREMENT,'
      '  `idsopir` int(11) NOT NULL,'
      '  `nomor` varchar(15) NOT NULL,'
      '  `tanggal` datetime NOT NULL,'
      '  `idkaryawan` int(11) NOT NULL,'
      '  `iduser` int(11) NOT NULL,'
      '  `masuk` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      '  `keluar` decimal(19,4) NOT NULL DEFAULT '#39'0.0000'#39','
      
        '  `jenis` enum('#39'Tabungan'#39','#39'Kurang Setor'#39','#39'Pengambilan'#39') DEFAULT ' +
        #39'Tabungan'#39','
      '  `idsetoran` int(11) unsigned DEFAULT NULL,'
      '  `posted` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  `nojurnal` varchar(20) DEFAULT NULL,'
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `nomor` (`nomor`),'
      '  UNIQUE KEY `tanggal` (`tanggal`),'
      '  KEY `tx_tabunganks_setoran` (`idsetoran`),'
      '  KEY `tx_tabunganks_karyawan` (`idkaryawan`),'
      '  KEY `tx_tabunganks_sopir` (`idsopir`),'
      '  KEY `tx_tabunganks_user` (`iduser`),'
      '  KEY `tx_tabunganks_jurnal` (`nojurnal`),'
      
        '  CONSTRAINT `tx_tabunganks_jurnal` FOREIGN KEY (`nojurnal`) REF' +
        'ERENCES `ak_jurnal` (`nojurnal`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_tabunganks_karyawan` FOREIGN KEY (`idkaryawan`)' +
        ' REFERENCES `karyawan` (`idkaryawan`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_tabunganks_setoran` FOREIGN KEY (`idsetoran`) R' +
        'EFERENCES `tx_setoran` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_tabunganks_sopir` FOREIGN KEY (`idsopir`) REFER' +
        'ENCES `tx_sopir` (`id`) ON UPDATE CASCADE,'
      
        '  CONSTRAINT `tx_tabunganks_user` FOREIGN KEY (`iduser`) REFEREN' +
        'CES `user` (`iduser`) ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_telp` ('
      '  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,'
      '  `nomor` varchar(20) NOT NULL,'
      '  `idpelanggan` int(11) DEFAULT NULL,'
      '  `fixed` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `nomor` (`nomor`),'
      '  KEY `idklien` (`idpelanggan`),'
      
        '  CONSTRAINT `telp_pelanggan` FOREIGN KEY (`idpelanggan`) REFERE' +
        'NCES `tx_pelanggan` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_telpline` ('
      '  `id` tinyint(4) unsigned NOT NULL,'
      '  `nomor` varchar(20) DEFAULT NULL,'
      '  PRIMARY KEY (`id`),'
      '  KEY `nomor` (`nomor`)'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_telphistory` ('
      '  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,'
      '  `idtelp` int(10) unsigned NOT NULL,'
      '  `tanggal` datetime NOT NULL,'
      '  `idline` tinyint(4) unsigned DEFAULT NULL,'
      '  `dipesan` tinyint(4) unsigned NOT NULL DEFAULT '#39'1'#39','
      '  `dikirim` tinyint(4) unsigned NOT NULL DEFAULT '#39'0'#39','
      '  `mengantar` tinyint(4) unsigned NOT NULL DEFAULT '#39'0'#39','
      '  `dibatalkan` tinyint(4) unsigned NOT NULL DEFAULT '#39'0'#39','
      '  `iduser` int(11) DEFAULT NULL,'
      '  `feedibayar` tinyint(1) NOT NULL DEFAULT '#39'0'#39','
      '  PRIMARY KEY (`id`),'
      '  UNIQUE KEY `telptanggal` (`idtelp`,`tanggal`),'
      '  KEY `idtelp` (`idtelp`),'
      '  KEY `tanggal` (`tanggal`),'
      '  KEY `idline` (`idline`),'
      '  KEY `iduser` (`iduser`),'
      
        '  CONSTRAINT `telphistory_line` FOREIGN KEY (`idline`) REFERENCE' +
        'S `tx_telpline` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,'
      
        '  CONSTRAINT `telphistory_telp` FOREIGN KEY (`idtelp`) REFERENCE' +
        'S `tx_telp` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,'
      
        '  CONSTRAINT `telphistory_user` FOREIGN KEY (`iduser`) REFERENCE' +
        'S `user` (`iduser`) ON DELETE NO ACTION ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
      ''
      'CREATE TABLE `tx_telphistorydtl` ('
      '  `idtelphistory` int(10) unsigned NOT NULL,'
      '  `idtaksidikirim` int(11) NOT NULL,'
      '  `idtaksiantar` int(11) DEFAULT NULL,'
      '  `waktuantar` datetime DEFAULT NULL,'
      '  `batal` tinyint(1) NOT NULL DEFAULT '#39'-1'#39','
      '  `iduser` int(11) DEFAULT NULL,'
      '  PRIMARY KEY (`idtelphistory`,`idtaksidikirim`),'
      '  KEY `idtaksidikirim` (`idtaksidikirim`),'
      '  KEY `idtaksiantar` (`idtaksiantar`),'
      '  KEY `iduser` (`iduser`),'
      
        '  CONSTRAINT `telphistorydtl_taksiantar` FOREIGN KEY (`idtaksian' +
        'tar`) REFERENCES `tx_taksi` (`id`) ON DELETE NO ACTION ON UPDATE' +
        ' CASCADE,'
      
        '  CONSTRAINT `telphistorydtl_taksidikirim` FOREIGN KEY (`idtaksi' +
        'dikirim`) REFERENCES `tx_taksi` (`id`) ON DELETE NO ACTION ON UP' +
        'DATE CASCADE,'
      
        '  CONSTRAINT `telphistorydtl_telphistory` FOREIGN KEY (`idtelphi' +
        'story`) REFERENCES `tx_telphistory` (`id`) ON DELETE CASCADE ON ' +
        'UPDATE CASCADE,'
      
        '  CONSTRAINT `telphistorydtl_user` FOREIGN KEY (`iduser`) REFERE' +
        'NCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE CASCADE'
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;'
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
      ') ENGINE=InnoDB DEFAULT CHARSET=utf8;')
    Connection = ArDB.FDBCon
    DelimiterType = dtDelimiter
    Delimiter = ';'
    OnError = procDBError
    Left = 24
    Top = 368
  end
  object odlgRestore: TOpenDialog
    Filter = 'Backup Database (*.geb)|*.geb;*.sql'
    Title = 'Buka File Backup'
    Left = 560
    Top = 304
  end
end
