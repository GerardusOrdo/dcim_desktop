inherited frmDataChecklistPerangkat: TfrmDataChecklistPerangkat
  Left = 256
  Top = 227
  Caption = 'Data Checklist Perangkat'
  ExplicitTop = -76
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
    inherited pnlGrid: TPanel
      ExplicitWidth = 511
      inherited ftrDaftar: TStatusBar
        ExplicitWidth = 511
      end
      inherited dbgDaftar: TDBGridEh
        AutoFitColWidths = False
        PopupMenu = nil
        OnDrawColumnCell = dbgDaftarDrawColumnCell
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_checklist'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_servermachine'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_server'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_rak'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_location'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_notiket'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'namauser'
            Footers = <>
            Title.Caption = 'Petugas'
            Width = 180
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'waktu'
            Footers = <>
            Title.Caption = 'Waktu Checklist'
            Width = 121
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'servername'
            Footers = <>
            Title.Caption = 'Perangkat'
            Width = 218
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'sn'
            Footers = <>
            Title.Caption = 'Serial Number'
            Width = 148
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'rak_name'
            Footers = <>
            Title.Caption = 'Rak'
            Width = 84
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'u'
            Footers = <>
            Title.Caption = 'Posisi U'
            Width = 62
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kondisi'
            Footers = <>
            Title.Caption = 'Kondisi'
            Width = 88
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'keterangan'
            Footers = <>
            Title.Caption = 'Keterangan'
            Visible = False
            Width = 144
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'sesi_checklist'
            Footers = <>
            Title.Caption = 'Sesi Checklist'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'foto'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_tiket_insiden'
            Footers = <>
            Title.Caption = 'Tiket Insiden'
            Width = 114
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'pic_insiden'
            Footers = <>
            Title.Caption = 'PIC Insiden'
            Visible = False
            Width = 75
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_tiket_problem'
            Footers = <>
            Title.Caption = 'Tiket Problem'
            Visible = False
            Width = 102
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'pic_problem'
            Footers = <>
            Title.Caption = 'PIC Problem'
            Visible = False
            Width = 80
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'status'
            Footers = <>
            Title.Caption = 'Status Tiket'
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
          Left = 264
          ExplicitLeft = 264
          TMSStyle = 0
        end
        inherited btnPilih: TAdvToolButton
          Left = 264
          ExplicitLeft = 264
          TMSStyle = 0
        end
        inherited edtKeyword: TEdit
          Width = 177
          ExplicitWidth = 177
        end
      end
    end
  end
  inherited pnlOption: TPanel
    inherited pnlOptButton: TPanel
      Height = 102
      ExplicitWidth = 271
      ExplicitHeight = 102
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
      ExplicitWidth = 271
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
    object Panel1: TPanel
      Left = 1
      Top = 233
      Width = 271
      Height = 136
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object Label1: TLabel
        Left = 12
        Top = 19
        Width = 39
        Height = 15
        Caption = 'Kondisi'
      end
      object btnCloseTiket: TAdvToolButton
        Tag = 1
        Left = 12
        Top = 45
        Width = 251
        Height = 31
        Action = _CloseTiket
        AutoThemeAdapt = False
        Color = 5418828
        ColorDown = 4034103
        ColorHot = 11464809
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object cbxKondisi: TComboBox
        Left = 57
        Top = 16
        Width = 206
        Height = 23
        Style = csDropDownList
        TabOrder = 0
        OnChange = cbxKondisiChange
        Items.Strings = (
          'Semua'
          'Normal'
          'Amber')
      end
    end
  end
  inherited qryDaftar: TZQuery
    Connection = ArDB.FDBCon
    SQL.Strings = (
      'SELECT'
      '  dch.`id_checklist`,'
      '  dsm.`id_servermachine`,'
      '  ds.`id_server`,'
      '  dr.`id_rak`,'
      '  dl.`id_location`,'
      '  dch.`waktu`,'
      '  dsm.`servername`,'
      '  dnt.`id_notiket`,'
      '  ds.`sn`,'
      '  dr.`rak_name`,'
      '  CONCAT(dl.`u`,'#39' - '#39',dl.`u`+dsm.`u_count`) u,'
      '  IF(dch.`kondisi` = 1, '#39'Normal'#39', '#39'Amber'#39') kondisi,'
      '  dch.`keterangan`,'
      
        '  IF(dch.`sesi_checklist`=1,'#39'Pagi'#39',IF(dch.`sesi_checklist`=2,'#39'Si' +
        'ang'#39', '#39'Malam'#39')) sesi_checklist,'
      '  dch.`foto`,'
      '  dnt.`no_tiket_insiden`,'
      '  dnt.`pic_insiden`,'
      '  dnt.`no_tiket_problem`,'
      '  dnt.`pic_problem`,'
      
        '  IF(dnt.`status`=1, "Open", IF (dnt.`status`=2, "Solved", "Norm' +
        'al")) `status`,'
      '  dus.`nama` namauser'
      'FROM'
      '  `dc_checklist` dch'
      '  LEFT JOIN `dc_notiket` dnt'
      '    ON ('
      '      dch.`id_notiket` = dnt.`id_notiket`'
      '    )'
      '  LEFT JOIN `dc_server` ds'
      '    ON (dch.`id_server` = ds.`id_server`)'
      '  LEFT JOIN `dc_servermachine` dsm'
      '    ON ('
      '      ds.`id_servermachine` = dsm.`id_servermachine`'
      '    )'
      '  LEFT JOIN `dc_location` dl'
      '    ON (dl.`id_server` = ds.`id_server`)'
      '  LEFT JOIN `dc_rak` dr'
      '    ON (dl.`id_rak` = dr.`id_rak`)'
      '  LEFT JOIN `user` dus'
      '  ON dus.`iduser`=dch.`id_user`')
    Left = 96
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
    object _CloseTiket: TAction
      Category = 'Data'
      Caption = 'RESOLVE'
      OnExecute = _CloseTiketExecute
    end
  end
end
