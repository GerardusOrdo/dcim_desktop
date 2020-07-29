inherited frmDataTransServerTracking: TfrmDataTransServerTracking
  Left = 256
  Top = 227
  Caption = 'Data Server Tracking'
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
      inherited dbgDaftar: TDBGridEh
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_servertracking'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_tiket'
            Footers = <>
            Title.Caption = 'No Tiket'
            Width = 83
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
            FieldName = 'servername'
            Footers = <>
            Title.Caption = 'Tipe Server'
            Width = 145
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'sn'
            Footers = <>
            Title.Caption = 'SN'
            Width = 145
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'pemilik'
            Footers = <>
            Title.Caption = 'Pemilik'
            Width = 80
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jenis_pindah'
            Footers = <>
            Title.Caption = 'Jenis Pindah'
            Width = 80
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'waktu'
            Footers = <>
            Title.Caption = 'Tanggal'
            Width = 76
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'rak'
            Footers = <>
            Title.Caption = 'Rak'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'posisi_u'
            Footers = <>
            Title.Caption = 'Posisi U'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jenis_factor'
            Footers = <>
            Title.Caption = 'Jenis Factor'
            Width = 68
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
  end
  inherited pnlOption: TPanel
    inherited pnlOptButton: TPanel
      inherited btnOptHapus: TAdvToolButton
        Left = 140
        Top = 81
        ExplicitLeft = 140
        ExplicitTop = 81
        TMSStyle = 0
      end
      inherited btnOptUbah: TAdvToolButton
        Left = 11
        Top = 81
        ExplicitLeft = 11
        ExplicitTop = 81
        TMSStyle = 0
      end
      inherited btnOptTambah: TAdvToolButton
        Left = 13
        Top = 7
        Action = _ServerMasuk
        ExplicitLeft = 13
        ExplicitTop = 7
        TMSStyle = 0
      end
      inherited btnOptLihat: TAdvToolButton
        Left = 140
        Top = 44
        ExplicitLeft = 140
        ExplicitTop = 44
        TMSStyle = 0
      end
      inherited btnOptCetak: TAdvToolButton
        Left = 11
        Top = 115
        ExplicitLeft = 11
        ExplicitTop = 115
        TMSStyle = 0
      end
      inherited btnOptReprint: TAdvToolButton
        Left = 140
        Top = 115
        ExplicitLeft = 140
        ExplicitTop = 115
        TMSStyle = 0
      end
      object AdvToolButton1: TAdvToolButton
        Tag = 2
        Left = 140
        Top = 6
        Width = 122
        Height = 31
        Action = _PindahServer
        AutoThemeAdapt = False
        Color = 11882815
        ColorDown = 10501937
        ColorHot = 16674132
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object AdvToolButton2: TAdvToolButton
        Tag = 3
        Left = 12
        Top = 44
        Width = 122
        Height = 31
        Action = _ServerKeluar
        AutoThemeAdapt = False
        Color = 3425267
        ColorDown = 3026644
        ColorHot = 5460991
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object AdvToolButton3: TAdvToolButton
        Tag = 1
        Left = 12
        Top = 7
        Width = 122
        Height = 31
        Action = _ServerMasuk
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
    SQL.Strings = (
      'SELECT'
      '  dst.`no_tiket`,'
      '  dst.`id_servertracking`,'
      '  dst.id_server,'
      '  dsm.`servername`,'
      '  ds.`sn`,'
      '  dpm.`pemilik`,'
      '  dps.`namapic`,'
      '  dst.`jenis_pindah`,'
      '  dst.waktu,'
      '  dst.`rak_lama`,'
      '  dst.`u_lama`,'
      '  drb.`rak_name` rak,'
      '  dst.`u_baru` uawal,'
      '  dsm.`u_count`,'
      '  dst.`kali_perpindahan`,'
      
        '  CONCAT(dst.`u_baru`,'#39' - '#39', dst.`u_baru`+dsm.`u_count`-1) posis' +
        'i_u,'
      '  dsm.`jenis_factor`'
      'FROM'
      '  dc_servertracking dst'
      '  LEFT JOIN dc_server ds ON ds.`id_server`=dst.`id_server`'
      
        '  LEFT JOIN dc_servermachine dsm ON dsm.`id_servermachine`=ds.`i' +
        'd_servermachine`'
      '  LEFT JOIN `dc_pemilik` dpm ON dpm.`id_pemilik`=ds.`id_pemilik`'
      '  LEFT JOIN dc_location dlb ON dlb.`id_server`=ds.`id_server`'
      '  LEFT JOIN dc_rak drb ON drb.`id_rak`=dst.`rak_baru`'
      
        '  LEFT JOIN dc_picserver dps ON dps.`id_picserver`=ds.`id_picser' +
        'ver`')
    Left = 104
  end
  inherited dsDaftar: TDataSource
    Left = 136
  end
  inherited actDaftar: TActionList
    inherited _Filter: TAction
      OnExecute = _FilterExecute
    end
    inherited _Lihat: TAction
      OnExecute = _LihatExecute
    end
    object _ServerMasuk: TAction
      Category = 'Data'
      Caption = 'SERVER MASUK'
      OnExecute = _ServerMasukExecute
    end
    object _PindahServer: TAction
      Category = 'Data'
      Caption = 'PINDAH SERVER'
      OnExecute = _PindahServerExecute
    end
    object _ServerKeluar: TAction
      Category = 'Data'
      Caption = 'SERVER KELUAR'
      OnExecute = _ServerKeluarExecute
    end
  end
end
