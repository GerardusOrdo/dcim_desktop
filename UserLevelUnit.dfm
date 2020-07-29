inherited frmDataUserLevel: TfrmDataUserLevel
  Left = 232
  Top = 165
  Caption = 'Data Grup Pengguna'
  ClientHeight = 521
  Constraints.MinHeight = 560
  Constraints.MinWidth = 766
  ExplicitHeight = 560
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
    ExplicitWidth = 784
    inherited pnlClose: TPanel
      Left = 755
      ExplicitLeft = 755
      inherited btnClose: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
  inherited pnlData: TPanel
    Height = 493
    ExplicitHeight = 493
    inherited pnlGrid: TPanel
      Width = 458
      Height = 444
      ExplicitWidth = 458
      ExplicitHeight = 444
      inherited ftrDaftar: TStatusBar
        Top = 424
        Width = 458
        ExplicitTop = 424
        ExplicitWidth = 458
      end
      inherited dbgDaftar: TDBGridEh
        Width = 458
        Height = 424
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'namalevel'
            Footers = <>
            Title.Caption = 'Nama Grup'
            Width = 380
          end>
      end
    end
    inherited pnlBottom: TPanel
      inherited pnlButton: TPanel
        ExplicitLeft = 399
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
          Left = 306
          ExplicitLeft = 272
          TMSStyle = 0
        end
        inherited btnPilih: TAdvToolButton
          Left = 306
          ExplicitLeft = 272
          TMSStyle = 0
        end
        inherited edtKeyword: TEdit
          Width = 216
          ExplicitWidth = 216
        end
      end
    end
    inherited pnlDetail: TPanel
      Left = 458
      Width = 326
      Height = 444
      ExplicitLeft = 458
      ExplicitWidth = 326
      ExplicitHeight = 444
      inherited pnlPostCancel: TPanel
        Top = 57
        Width = 326
        Align = alTop
        ExplicitTop = 57
        ExplicitWidth = 326
        inherited btnCancel: TAdvToolButton
          Left = 272
          ExplicitLeft = 272
          TMSStyle = 0
        end
        inherited btnPost: TAdvToolButton
          Left = 226
          ExplicitLeft = 226
          TMSStyle = 0
        end
        object btnSetting: TAdvToolButton [2]
          Left = 8
          Top = 2
          Width = 145
          Height = 33
          Action = _SettingHak
          AutoThemeAdapt = False
          Color = 12008295
          ColorDown = 10956113
          ColorHot = 16731773
          Caption = 'Setting Hak Akses'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Noto Sans'
          Font.Style = [fsBold]
          ImageIndex = 24
          ParentFont = False
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        inherited btn1: TBitBtn
          Left = 331
          ExplicitLeft = 331
        end
      end
      inherited pnlDtl: TPanel
        Width = 326
        Height = 57
        Align = alTop
        ExplicitWidth = 326
        ExplicitHeight = 57
        object lblNama: TLabel
          Left = 18
          Top = 9
          Width = 60
          Height = 15
          Caption = 'Nama Grup'
          FocusControl = edtNama
        end
        object edtNama: TDBEdit
          Left = 18
          Top = 28
          Width = 455
          Height = 23
          DataField = 'namalevel'
          DataSource = dsDaftar
          ReadOnly = True
          TabOrder = 0
        end
      end
      object pnl1: TPanel
        Left = 0
        Top = 103
        Width = 326
        Height = 341
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        OnResize = pnlDetailResize
        object grpHakAkses: TGroupBox
          Left = 0
          Top = 0
          Width = 326
          Height = 341
          Align = alClient
          Caption = 'Double klik untuk mengecek / uncheck semua'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object dbgDtl: TDBGridEh
            Left = 2
            Top = 16
            Width = 322
            Height = 323
            Align = alClient
            DataSource = dsDtl
            DynProps = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            OnColEnter = dbgDtlColEnter
            OnDblClick = dbgDtlDblClick
            OnExit = dbgDtlExit
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
  end
  inherited qryDaftar: TZQuery
    UpdateObject = udtDaftar
    BeforeEdit = qryDaftarBeforeEdit
    BeforeDelete = qryDtlBeforeDelete
    SQL.Strings = (
      'select * from user_level')
    Left = 88
    Top = 112
  end
  inherited dsDaftar: TDataSource
    Left = 120
    Top = 112
  end
  inherited pmDaftar: TPopupMenu
    Left = 120
    Top = 144
  end
  inherited actDaftar: TActionList
    Left = 88
    Top = 144
    object _SettingHak: TAction
      Caption = 'Pengaturan Hak Akses'
      ImageIndex = 24
      OnExecute = _SettingHakExecute
    end
  end
  inherited tmrCari: TTimer
    Left = 88
    Top = 176
  end
  object udtDaftar: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM user_level'
      'WHERE'
      '  user_level.idlevel = :OLD_idlevel')
    InsertSQL.Strings = (
      'INSERT INTO user_level'
      '  (idlevel, namalevel)'
      'VALUES'
      '  (:idlevel, :namalevel)')
    ModifySQL.Strings = (
      'UPDATE user_level SET'
      '  idlevel = :idlevel,'
      '  namalevel = :namalevel'
      'WHERE'
      '  user_level.idlevel = :OLD_idlevel')
    UseSequenceFieldForRefreshSQL = False
    Left = 120
    Top = 174
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idlevel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'namalevel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idlevel'
        ParamType = ptUnknown
      end>
  end
  object qryDtl: TZQuery
    Connection = ArDB.FDBCon
    SortedFields = 'idmenu'
    Filtered = True
    BeforeInsert = qryDtlBeforeInsert
    BeforeDelete = qryDtlBeforeDelete
    SQL.Strings = (
      'select * '
      'from user_hakakses')
    Params = <>
    MasterFields = 'idlevel'
    MasterSource = dsDaftar
    LinkedFields = 'idlevel'
    IndexFieldNames = 'idmenu Asc'
    Left = 488
    Top = 296
  end
  object dsDtl: TDataSource
    DataSet = qryDtl
    Left = 520
    Top = 296
  end
end
