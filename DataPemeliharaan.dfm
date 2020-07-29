inherited frmDataPemeliharaan: TfrmDataPemeliharaan
  Caption = 'Data Pemeliharaan'
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
            FieldName = 'id_pemeliharaan'
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
            FieldName = 'id_ats'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'servername'
            Footers = <>
            Title.Caption = 'Server'
            Width = 125
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'sn'
            Footers = <>
            Title.Caption = 'SN'
            Width = 130
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ats_name'
            Footers = <>
            Title.Caption = 'ATS'
            Width = 115
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tahun'
            Footers = <>
            Title.Caption = 'Tahun'
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
      inherited pnlPostCancel: TPanel
        inherited btnCancel: TAdvToolButton
          TMSStyle = 0
        end
        inherited btnPost: TAdvToolButton
          TMSStyle = 0
        end
      end
      inherited pnlDtl: TPanel
        object btnCariServer: TAdvToolButton
          Left = 331
          Top = 20
          Width = 38
          Height = 33
          AutoThemeAdapt = False
          Color = 5288012
          ColorDown = 4034105
          ColorHot = 7791873
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Noto Sans'
          Font.Style = [fsBold]
          ImageIndex = 11
          Images = ilBtn
          ParentFont = False
          OnClick = btnCariServerClick
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        object lblTahun: TLabel
          Left = 16
          Top = 100
          Width = 108
          Height = 15
          Caption = 'Tahun Pemeliharaan'
          FocusControl = edtTahun
        end
        object lblServer: TLabel
          Left = 16
          Top = 8
          Width = 34
          Height = 15
          Caption = 'Server'
          FocusControl = edtServer
        end
        object lblATS: TLabel
          Left = 16
          Top = 54
          Width = 19
          Height = 15
          Caption = 'ATS'
          FocusControl = edtATS
        end
        object btnCariATS: TAdvToolButton
          Left = 331
          Top = 68
          Width = 38
          Height = 33
          AutoThemeAdapt = False
          Color = 5288012
          ColorDown = 4034105
          ColorHot = 7791873
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Noto Sans'
          Font.Style = [fsBold]
          ImageIndex = 11
          Images = ilBtn
          ParentFont = False
          OnClick = btnCariATSClick
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        object edtTahun: TDBEdit
          Left = 16
          Top = 119
          Width = 353
          Height = 23
          DataField = 'tahun'
          DataSource = dsDaftar
          TabOrder = 0
        end
        object edtServer: TDBEdit
          Left = 16
          Top = 27
          Width = 313
          Height = 23
          DataField = 'servername'
          DataSource = dsDaftar
          TabOrder = 1
        end
        object edtATS: TDBEdit
          Left = 16
          Top = 73
          Width = 313
          Height = 23
          DataField = 'ats_name'
          DataSource = dsDaftar
          TabOrder = 2
        end
      end
    end
  end
  inherited qryDaftar: TZQuery
    Connection = ArDB.FDBCon
    UpdateObject = udtDaftar
    SQL.Strings = (
      
        'SELECT dp.*,dsm.`servername`, ds.`sn`,dats.`ats_name` FROM `dc_p' +
        'emeliharaan` dp'
      
        'LEFT JOIN `dc_server` ds ON ds.`id_pemeliharaan`=dp.`id_pemeliha' +
        'raan`'
      
        'LEFT JOIN `dc_servermachine` dsm ON dsm.`id_servermachine`=ds.`i' +
        'd_servermachine`'
      'LEFT JOIN `dc_ats` dats ON dats.`id_ats`=dp.`id_ats`')
  end
  object udtDaftar: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM `dc_pemeliharaan`'
      'WHERE'
      '  `dc_pemeliharaan`.id_pemeliharaan = :OLD_id_pemeliharaan')
    InsertSQL.Strings = (
      'INSERT INTO `dc_pemeliharaan`'
      '  (id_pemeliharaan, id_server, id_ats, tahun)'
      'VALUES'
      '  (:id_pemeliharaan, :id_server, :id_ats, :tahun)')
    ModifySQL.Strings = (
      'UPDATE `dc_pemeliharaan` SET'
      '  id_pemeliharaan = :id_pemeliharaan,'
      '  id_server = :id_server,'
      '  id_ats = :id_ats,'
      '  tahun = :tahun'
      'WHERE'
      '  `dc_pemeliharaan`.id_pemeliharaan = :OLD_id_pemeliharaan')
    UseSequenceFieldForRefreshSQL = False
    Left = 120
    Top = 131
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_Pemeliharaan'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_server'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_ats'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tahun'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id_Pemeliharaan'
        ParamType = ptUnknown
      end>
  end
end
