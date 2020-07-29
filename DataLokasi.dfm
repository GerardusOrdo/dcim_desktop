inherited frmDataLokasi: TfrmDataLokasi
  Caption = 'Data Lokasi'
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
            FieldName = 'id_location'
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
            Title.Caption = 'Server'
            Width = 186
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'sn'
            Footers = <>
            Title.Caption = 'SN'
            Width = 142
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'rak_name'
            Footers = <>
            Title.Caption = 'Rak'
            Width = 86
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'u'
            Footers = <>
            Title.Caption = 'U'
            Width = 74
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'states'
            Footers = <>
            Title.Caption = 'States'
            Width = 74
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
        object btnCariRak: TAdvToolButton
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
          OnClick = btnCariRakClick
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        object lblU: TLabel
          Left = 24
          Top = 100
          Width = 8
          Height = 15
          Caption = 'U'
          FocusControl = edtU
        end
        object lblRak: TLabel
          Left = 24
          Top = 54
          Width = 19
          Height = 15
          Caption = 'Rak'
          FocusControl = edtRak
        end
        object lblServer: TLabel
          Left = 24
          Top = 8
          Width = 34
          Height = 15
          Caption = 'Server'
          FocusControl = edtServer
        end
        object edtU: TDBEdit
          Left = 24
          Top = 119
          Width = 300
          Height = 23
          DataField = 'u'
          DataSource = dsDaftar
          TabOrder = 0
        end
        object edtRak: TDBEdit
          Left = 24
          Top = 73
          Width = 300
          Height = 23
          DataField = 'rak_name'
          DataSource = dsDaftar
          TabOrder = 1
        end
        object edtServer: TDBEdit
          Left = 24
          Top = 27
          Width = 300
          Height = 23
          DataField = 'servername'
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
      
        'SELECT dl.*, dr.`rak_name`, dsm.`servername`, ds.`sn` FROM `dc_l' +
        'ocation` dl'
      'LEFT JOIN `dc_rak` dr ON dr.`id_rak`=dl.`id_rak`'
      'LEFT JOIN `dc_server` ds ON ds.`id_server`=dl.`id_server`'
      
        'LEFT JOIN `dc_servermachine` dsm ON dsm.`id_servermachine`=ds.`i' +
        'd_servermachine`')
    Left = 80
    Top = 120
  end
  object udtDaftar: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM `dc_location`'
      'WHERE'
      '  `dc_location`.id_location = :OLD_id_location')
    InsertSQL.Strings = (
      'INSERT INTO `dc_location`'
      '  (id_location, id_rak, id_server, u, states)'
      'VALUES'
      '  (:id_location, :id_rak, :id_server, :u, :states)')
    ModifySQL.Strings = (
      'UPDATE `dc_location` SET'
      '  id_location = :id_location,'
      '  id_rak = :id_rak,'
      '  id_server = :id_server,'
      '  u = :u,'
      '  states = :states'
      'WHERE'
      '  `dc_location`.id_location = :OLD_id_location')
    UseSequenceFieldForRefreshSQL = False
    Left = 120
    Top = 131
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_location'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_rak'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_server'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'u'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'states'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id_location'
        ParamType = ptUnknown
      end>
  end
end
