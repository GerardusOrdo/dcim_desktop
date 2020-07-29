inherited frmDataLogUser: TfrmDataLogUser
  Left = 256
  Top = 227
  Caption = 'Data Log User'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitle: TPanel
    inherited pnlClose: TPanel
      inherited btnClose: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
  inherited pnlData: TPanel
    ExplicitWidth = 595
    inherited pnlGrid: TPanel
      Width = 595
      inherited dbgDaftar: TDBGridEh
        PopupMenu = nil
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_log'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_user'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nama'
            Footers = <>
            Title.Caption = 'Nama User'
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'time'
            Footers = <>
            Title.Caption = 'Waktu'
            Width = 86
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'activity'
            Footers = <>
            Title.Caption = 'Aktivitas'
            Width = 141
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'targetmenu'
            Footers = <>
            Title.Caption = 'Menu'
            Width = 101
          end>
      end
    end
    inherited pnlBottom: TPanel
      Width = 595
      ExplicitWidth = 595
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
        Width = 591
        ExplicitWidth = 591
        inherited btnRefresh: TAdvToolButton
          TMSStyle = 0
        end
        inherited btnPilih: TAdvToolButton
          TMSStyle = 0
        end
      end
    end
  end
  inherited pnlOption: TPanel
    inherited pnlOptButton: TPanel
      inherited btnOptHapus: TAdvToolButton
        TMSStyle = 0
      end
      inherited btnOptUbah: TAdvToolButton
        TMSStyle = 0
      end
      inherited btnOptTambah: TAdvToolButton
        TMSStyle = 0
      end
      inherited btnOptLihat: TAdvToolButton
        TMSStyle = 0
      end
      inherited btnOptCetak: TAdvToolButton
        TMSStyle = 0
      end
      inherited btnOptReprint: TAdvToolButton
        TMSStyle = 0
      end
    end
    inherited pnlOptTanggal: TPanel
      inherited btnThisMonth: TAdvToolButton
        TMSStyle = 0
      end
      inherited btnFilter: TAdvToolButton
        TMSStyle = 0
      end
      inherited btnPrevMonth: TAdvToolButton
        TMSStyle = 0
      end
      inherited btnNextMonth: TAdvToolButton
        TMSStyle = 0
      end
      inherited btnPrevDay: TAdvToolButton
        TMSStyle = 0
      end
      inherited btnToday: TAdvToolButton
        TMSStyle = 0
      end
      inherited btnNextDay: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
  inherited qryDaftar: TZQuery
    Connection = ArDB.FDBCon
    SQL.Strings = (
      'select lu.*, u.`nama` from log_user lu'
      'left join `user` u on u.`iduser`=lu.`id_user`')
    Left = 104
  end
  inherited dsDaftar: TDataSource
    Left = 136
  end
  inherited actDaftar: TActionList
    inherited _Filter: TAction
      OnExecute = _FilterExecute
    end
    object _ServerMasuk: TAction
      Category = 'Data'
      Caption = 'Server Masuk'
    end
    object _PindahServer: TAction
      Category = 'Data'
      Caption = 'Pindah Server'
    end
    object _ServerKeluar: TAction
      Category = 'Data'
      Caption = 'Server Keluar'
    end
  end
end
