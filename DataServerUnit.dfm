inherited frmDataServer: TfrmDataServer
  Caption = 'Data Server'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitle: TPanel
    inherited pnlClose: TPanel
      Left = 755
      ExplicitLeft = 755
      inherited btnClose: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
  inherited pnlData: TPanel
    inherited pnlGrid: TPanel
      inherited ftrDaftar: TStatusBar
        Top = 367
        Width = 784
        ExplicitTop = 367
        ExplicitWidth = 784
      end
      inherited dbgDaftar: TDBGridEh
        Width = 784
        Height = 367
        FooterRowCount = 1
        Columns = <
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
            FieldName = 'id_servermachine'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_pemilik'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_pemeliharaan'
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
            Width = 161
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'sn'
            Footers = <>
            Title.Caption = 'SN'
            Width = 157
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'rak_name'
            Footers = <>
            Title.Caption = 'Rak'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'u'
            Footers = <>
            Title.Caption = 'U'
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'u_count'
            Footers = <>
            Visible = False
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
            FieldName = 'ip_management'
            Footers = <>
            Title.Caption = 'IP Management'
            Width = 89
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'user'
            Footers = <>
            Title.Caption = 'User'
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'password'
            Footers = <>
            Title.Caption = 'Password'
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'pemilik'
            Footers = <>
            Title.Caption = 'Pemilik'
            Width = 97
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ats_name'
            Footers = <>
            Title.Caption = 'ATS'
            Width = 93
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tahun'
            Footers = <>
            Title.Caption = 'Tahun'
            Width = 55
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tgl_endofsupport'
            Footers = <>
            Title.Caption = 'Tgl End of Support'
            Width = 77
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'port_nic'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jenis_factor'
            Footers = <>
            Title.Caption = 'Jenis Factor'
          end
          item
            CellButtons = <>
            DisplayFormat = '#.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'ampere'
            Footer.Alignment = taRightJustify
            Footer.DisplayFormat = '#.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Ampere'
            Width = 51
          end
          item
            CellButtons = <>
            DisplayFormat = '#.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'watt'
            Footer.Alignment = taRightJustify
            Footer.DisplayFormat = '#.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Watt'
          end>
      end
    end
    inherited pnlBottom: TPanel
      inherited pnlCari: TPanel
        inherited btnRefresh: TAdvToolButton
          TMSStyle = 0
        end
        inherited btnPilih: TAdvToolButton
          TMSStyle = 0
        end
      end
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
    end
  end
  inherited qryDaftar: TZQuery
    SQL.Strings = (
      'SELECT'
      '  ds.id_server,'
      '  ds.id_servermachine,'
      '  ds.id_pemilik,'
      '  ds.id_pemeliharaan,'
      '  ds.`id_picserver`,'
      '  dsm.`servername`,'
      '  dsm.`jenis_factor`,'
      '  ds.`sn`,'
      '  dr.`id_rak`,'
      '  dr.`rak_name`,'
      '  dl.`u`,'
      '  dsm.`u_count`,'
      '  CONCAT(dl.`u`,'#39' - '#39', dl.`u`+dsm.`u_count`-1) posisi_u,'
      '  ds.ip_management,'
      '  ds.`user`,'
      '  ds.`password`,'
      '  dp.`pemilik`,'
      '  dats.`ats_name`,'
      '  dpm.`tahun`,'
      '  ds.tgl_endofsupport,'
      '  ds.port_nic,'
      '  dps.`namapic`,'
      '  ds.`ampere`,'
      '  ds.`watt`'
      'FROM'
      '  `dc_server` ds'
      
        '  LEFT JOIN dc_servermachine dsm ON dsm.`id_servermachine`=ds.`i' +
        'd_servermachine`'
      '  LEFT JOIN dc_location dl ON dl.`id_server`=ds.`id_server`'
      '  LEFT JOIN dc_rak dr ON dr.`id_rak`=dl.`id_rak`'
      '  LEFT JOIN dc_pemilik dp ON dp.`id_pemilik`=ds.`id_pemilik`'
      
        '  LEFT JOIN dc_pemeliharaan dpm ON dpm.`id_pemeliharaan`=ds.`id_' +
        'pemeliharaan`'
      '  LEFT JOIN dc_ats dats ON dats.`id_ats`=dpm.`id_ats`'
      
        '  LEFT JOIN dc_picserver dps ON dps.`id_picserver`=ds.`id_picser' +
        'ver`'
      'WHERE deleted = 0')
  end
  inherited dsDaftar: TDataSource
    Left = 152
  end
end
