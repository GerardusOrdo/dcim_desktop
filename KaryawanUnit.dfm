inherited frmDataKaryawan: TfrmDataKaryawan
  Caption = 'Data Pegawai'
  Constraints.MinHeight = 0
  Constraints.MinWidth = 0
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 175
    Top = 120
    Width = 34
    Height = 15
    Caption = 'Label1'
  end
  inherited pnlTitle: TPanel
    inherited pnlClose: TPanel
      inherited btnClose: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
  inherited pnlData: TPanel
    inherited pnlGrid: TPanel
      Width = 375
      inherited ftrDaftar: TStatusBar
        Width = 375
      end
      inherited dbgDaftar: TDBGridEh
        Tag = 1
        Width = 375
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nik'
            Footers = <>
            Title.Caption = 'NIP'
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nama'
            Footers = <>
            Title.Caption = 'Nama'
            Width = 46
          end>
      end
    end
    inherited pnlBottom: TPanel
      inherited pnlButton: TPanel
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
      inherited pnlCari: TPanel
        inherited btnRefresh: TAdvToolButton
          TMSStyle = 0
        end
        inherited btnPilih: TAdvToolButton
          TMSStyle = 0
        end
        inherited edtKeyword: TEdit
          Height = 27
        end
      end
    end
    inherited pnlDetail: TPanel
      Left = 375
      Width = 517
      inherited pnlPostCancel: TPanel
        Top = 267
        Width = 517
        Height = 176
        inherited btnCancel: TAdvToolButton
          Left = 459
          TMSStyle = 0
        end
        inherited btnPost: TAdvToolButton
          Left = 413
          TMSStyle = 0
        end
        inherited btn1: TBitBtn
          Left = 522
        end
      end
      inherited pnlDtl: TPanel
        Width = 517
        Height = 267
        object lbl10: TLabel
          Left = 18
          Top = 9
          Width = 19
          Height = 15
          Caption = 'NIK'
          FocusControl = edtKode
          Transparent = False
        end
        object lbl11: TLabel
          Left = 18
          Top = 55
          Width = 30
          Height = 15
          Caption = 'Nama'
          FocusControl = edtNama
          Transparent = False
        end
        object lbl12: TLabel
          Left = 18
          Top = 148
          Width = 36
          Height = 15
          Caption = 'Alamat'
          FocusControl = mmoAlamat
          Transparent = False
        end
        object lbl15: TLabel
          Left = 18
          Top = 102
          Width = 69
          Height = 15
          Caption = 'Tempat Lahir'
          FocusControl = edtTptLahir
          Transparent = False
        end
        object lbl16: TLabel
          Left = 342
          Top = 102
          Width = 46
          Height = 15
          Caption = 'Tgl Lahir'
          FocusControl = edtTglLahir
          Transparent = False
        end
        object lbl17: TLabel
          Left = 258
          Top = 222
          Width = 69
          Height = 15
          Caption = 'Jenis Kelamin'
          FocusControl = cbxJnsKelamin
          Transparent = False
        end
        object lbl18: TLabel
          Left = 406
          Top = 222
          Width = 53
          Height = 15
          Caption = 'Gol Darah'
          FocusControl = cbxGolDarah
          Transparent = False
        end
        object lbl21: TLabel
          Left = 18
          Top = 222
          Width = 54
          Height = 15
          Caption = 'No Telpon'
          FocusControl = edtNoTelp
          Transparent = False
        end
        object lblNoKtp: TLabel
          Left = 342
          Top = 55
          Width = 38
          Height = 15
          Caption = 'No KTP'
          FocusControl = edtNoKTP
        end
        object edtNama: TDBEdit
          Left = 18
          Top = 74
          Width = 315
          Height = 23
          DataField = 'nama'
          DataSource = dsDaftar
          ReadOnly = True
          TabOrder = 1
        end
        object edtKode: TDBEdit
          Left = 18
          Top = 28
          Width = 168
          Height = 23
          DataField = 'nik'
          DataSource = dsDaftar
          ReadOnly = True
          TabOrder = 0
        end
        object mmoAlamat: TDBMemo
          Left = 18
          Top = 166
          Width = 482
          Height = 52
          DataField = 'alamat'
          DataSource = dsDaftar
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 5
          WantReturns = False
        end
        object edtTptLahir: TDBEdit
          Left = 18
          Top = 120
          Width = 315
          Height = 23
          DataField = 'tptlahir'
          DataSource = dsDaftar
          ReadOnly = True
          TabOrder = 3
        end
        object edtTglLahir: TDBEdit
          Left = 342
          Top = 120
          Width = 158
          Height = 23
          Hint = 'dd/mm/yyyy'
          DataField = 'tgllahir'
          DataSource = dsDaftar
          ReadOnly = True
          TabOrder = 4
        end
        object edtNoTelp: TDBEdit
          Left = 18
          Top = 240
          Width = 232
          Height = 23
          DataField = 'notelp'
          DataSource = dsDaftar
          ReadOnly = True
          TabOrder = 6
        end
        object cbxJnsKelamin: TDBComboBox
          Left = 258
          Top = 240
          Width = 140
          Height = 23
          Style = csDropDownList
          DataField = 'jnskelamin'
          DataSource = dsDaftar
          ItemHeight = 15
          Items.Strings = (
            'Laki-laki'
            'Perempuan')
          ReadOnly = True
          TabOrder = 7
        end
        object cbxGolDarah: TDBComboBox
          Left = 406
          Top = 240
          Width = 94
          Height = 23
          Style = csDropDownList
          DataField = 'goldarah'
          DataSource = dsDaftar
          ItemHeight = 15
          Items.Strings = (
            'A'
            'B'
            'AB'
            'O')
          ReadOnly = True
          TabOrder = 8
        end
        object edtNoKTP: TDBEdit
          Left = 342
          Top = 74
          Width = 158
          Height = 23
          DataField = 'noktp'
          DataSource = dsDaftar
          ReadOnly = True
          TabOrder = 2
        end
      end
    end
  end
  inherited qryDaftar: TZQuery
    UpdateObject = udtDaftar
    SQL.Strings = (
      'select k.*, j.nama jabatan'
      'from karyawan k'
      'left join jabatan j on j.id=k.idjabatan'
      '')
  end
  object udtDaftar: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM karyawan'
      'WHERE'
      '  karyawan.idkaryawan = :OLD_idkaryawan')
    InsertSQL.Strings = (
      'INSERT INTO karyawan'
      
        '  (idkaryawan, nik, noktp, nama, jnskelamin, alamat, notelp, idj' +
        'abatan, '
      '   tgledit, tptlahir, tgllahir, goldarah)'
      'VALUES'
      
        '  (:idkaryawan, :nik, :noktp, :nama, :jnskelamin, :alamat, :note' +
        'lp, :idjabatan, '
      '   :tgledit, :tptlahir, :tgllahir, :goldarah)')
    ModifySQL.Strings = (
      'UPDATE karyawan SET'
      '  idkaryawan = :idkaryawan,'
      '  nik = :nik,'
      '  noktp = :noktp,'
      '  nama = :nama,'
      '  jnskelamin = :jnskelamin,'
      '  alamat = :alamat,'
      '  notelp = :notelp,'
      '  idjabatan = :idjabatan,'
      '  tgledit = :tgledit,'
      '  tptlahir = :tptlahir,'
      '  tgllahir = :tgllahir,'
      '  goldarah = :goldarah'
      'WHERE'
      '  karyawan.idkaryawan = :OLD_idkaryawan')
    UseSequenceFieldForRefreshSQL = False
    Left = 320
    Top = 150
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idkaryawan'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nik'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'noktp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nama'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'jnskelamin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'alamat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'notelp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idjabatan'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgledit'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tptlahir'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgllahir'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'goldarah'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idkaryawan'
        ParamType = ptUnknown
      end>
  end
end
