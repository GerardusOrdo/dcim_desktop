inherited frmDataUser: TfrmDataUser
  Caption = 'Data Pengguna'
  Constraints.MinWidth = 766
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
      Width = 400
      ExplicitWidth = 400
      inherited ftrDaftar: TStatusBar
        Width = 400
        ExplicitWidth = 400
      end
      inherited dbgDaftar: TDBGridEh
        Width = 400
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'uname'
            Footers = <>
            Title.Caption = 'Username'
            Width = 67
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nama'
            Footers = <>
            Title.Caption = 'Nama'
            Width = 48
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
      end
    end
    inherited pnlDetail: TPanel
      Left = 400
      Width = 384
      ExplicitLeft = 400
      ExplicitWidth = 384
      inherited pnlPostCancel: TPanel
        Top = 192
        Width = 384
        Height = 195
        ExplicitTop = 192
        ExplicitWidth = 384
        ExplicitHeight = 195
        DesignSize = (
          384
          195)
        inherited btnCancel: TAdvToolButton
          Left = 329
          Top = 9
          ExplicitLeft = 329
          ExplicitTop = 9
          TMSStyle = 0
        end
        inherited btnPost: TAdvToolButton
          Left = 283
          Top = 9
          ExplicitLeft = 283
          ExplicitTop = 9
          TMSStyle = 0
        end
        inherited btn1: TBitBtn
          Left = 386
          ExplicitLeft = 386
        end
      end
      inherited pnlDtl: TPanel
        Width = 384
        Height = 192
        ExplicitWidth = 384
        ExplicitHeight = 192
        object lblKode: TLabel
          Left = 18
          Top = 18
          Width = 53
          Height = 15
          Caption = 'Username'
          FocusControl = edtUsername
        end
        object lblNama: TLabel
          Left = 18
          Top = 65
          Width = 30
          Height = 15
          Caption = 'Nama'
          FocusControl = edtNama
        end
        object lblPassword: TLabel
          Left = 18
          Top = 203
          Width = 51
          Height = 15
          Caption = 'Password'
          FocusControl = edtPassword
        end
        object lblLevelAkses: TLabel
          Left = 18
          Top = 158
          Width = 59
          Height = 15
          Caption = 'Level Akses'
          FocusControl = edtPassword
        end
        object lblKaryawan: TLabel
          Left = 18
          Top = 111
          Width = 52
          Height = 15
          Caption = 'Karyawan'
          FocusControl = edtKaryawan
        end
        object btnCariKaryawan: TAdvToolButton
          Left = 340
          Top = 128
          Width = 28
          Height = 27
          AutoThemeAdapt = False
          ColorDown = 14210002
          ColorHot = 13289415
          OnClick = btnCariKaryawanClick
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        object btnCariUserLevel: TAdvToolButton
          Left = 248
          Top = 174
          Width = 27
          Height = 27
          AutoThemeAdapt = False
          ColorDown = 14210002
          ColorHot = 13289415
          OnClick = btnCariUserLevelClick
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        object edtNama: TDBEdit
          Left = 18
          Top = 83
          Width = 352
          Height = 23
          DataField = 'nama'
          DataSource = dsDaftar
          ReadOnly = True
          TabOrder = 2
        end
        object edtUsername: TDBEdit
          Left = 18
          Top = 38
          Width = 223
          Height = 23
          DataField = 'uname'
          DataSource = dsDaftar
          ReadOnly = True
          TabOrder = 0
        end
        object cbxLevelAkses: TDBLookupComboBox
          Left = 18
          Top = 175
          Width = 223
          Height = 23
          DataField = 'idlevel'
          DataSource = dsDaftar
          KeyField = 'idlevel'
          ListField = 'namalevel'
          ListSource = dsUserLevel
          TabOrder = 4
        end
        object chkGantiPassword: TCheckBox
          Left = 249
          Top = 222
          Width = 112
          Height = 19
          Caption = 'Ganti Password'
          TabOrder = 6
          Visible = False
          OnClick = chkGantiPasswordClick
        end
        object edtPassword: TEdit
          Left = 18
          Top = 222
          Width = 223
          Height = 23
          Color = clBtnFace
          Enabled = False
          PasswordChar = '#'
          TabOrder = 5
        end
        object edtKaryawan: TDBEdit
          Left = 18
          Top = 129
          Width = 315
          Height = 23
          TabStop = False
          DataField = 'namakaryawan'
          DataSource = dsDaftar
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
        object chkAktif: TDBCheckBox
          Left = 249
          Top = 38
          Width = 112
          Height = 19
          Caption = 'Aktif'
          DataField = 'aktif'
          DataSource = dsDaftar
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
  end
  inherited qryDaftar: TZQuery
    Connection = ArDB.FDBCon
    UpdateObject = udtDaftar
    BeforeEdit = qryDaftarBeforeEdit
    BeforeDelete = qryDaftarBeforeDelete
    OnNewRecord = qryDaftarNewRecord
    SQL.Strings = (
      'SELECT u.*, k.nama namakaryawan, ul.namalevel'
      'FROM user u'
      'LEFT JOIN karyawan k ON k.idkaryawan=u.idkaryawan'
      'LEFT JOIN user_level ul ON ul.idlevel=u.idlevel')
  end
  inherited dsDaftar: TDataSource
    Left = 152
  end
  object udtDaftar: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM user'
      'WHERE'
      '  user.iduser = :OLD_iduser')
    InsertSQL.Strings = (
      'INSERT INTO user'
      
        '  (iduser, uname, nama, idkaryawan, pwd, idlevel, aktif, tgledit' +
        ')'
      'VALUES'
      
        '  (:iduser, :uname, :nama, :idkaryawan, :pwd, :idlevel, :aktif, ' +
        ':tgledit)')
    ModifySQL.Strings = (
      'UPDATE user SET'
      '  iduser = :iduser,'
      '  uname = :uname,'
      '  nama = :nama,'
      '  idkaryawan = :idkaryawan,'
      '  pwd = :pwd,'
      '  idlevel = :idlevel,'
      '  aktif = :aktif,'
      '  tgledit = :tgledit'
      'WHERE'
      '  user.iduser = :OLD_iduser')
    UseSequenceFieldForRefreshSQL = False
    Left = 320
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'iduser'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'uname'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nama'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idkaryawan'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pwd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idlevel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'aktif'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgledit'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_iduser'
        ParamType = ptUnknown
      end>
  end
  object dsUserLevel: TDataSource
    DataSet = qryUserLevel
    Left = 224
    Top = 256
  end
  object qryUserLevel: TZReadOnlyQuery
    Connection = ArDB.FDBCon
    SortedFields = 'namalevel'
    SQL.Strings = (
      'select * from user_level')
    Params = <>
    IndexFieldNames = 'namalevel Asc'
    Left = 192
    Top = 256
  end
end
