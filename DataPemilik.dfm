inherited frmDataPemilik: TfrmDataPemilik
  Caption = 'Data Pemilik'
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
            FieldName = 'id_pemilik'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'uniteselon1'
            Footers = <>
            Title.Caption = 'Unit Eselon 1'
            Width = 212
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'pemilik'
            Footers = <>
            Title.Caption = 'Pemilik'
            Width = 230
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
        object lblPemilik: TLabel
          Left = 17
          Top = 64
          Width = 38
          Height = 15
          Caption = 'Pemilik'
          FocusControl = edtPemilik
        end
        object lblUnitEselon1: TLabel
          Left = 17
          Top = 17
          Width = 68
          Height = 15
          Caption = 'Unit Eselon 1'
          FocusControl = edtPemilik
        end
        object edtPemilik: TDBEdit
          Left = 17
          Top = 84
          Width = 353
          Height = 23
          DataField = 'pemilik'
          DataSource = dsDaftar
          TabOrder = 0
        end
        object cbbUnit: TDBComboBox
          Left = 16
          Top = 40
          Width = 353
          Height = 23
          Style = csDropDownList
          DataField = 'uniteselon1'
          DataSource = dsDaftar
          ItemHeight = 15
          Items.Strings = (
            'SetJen'
            'ItJen'
            'DJA'
            'DJP'
            'DJBC'
            'DJPB'
            'DJKN'
            'DJPK'
            'DJPPR'
            'BKF'
            'BPPK'
            'Lainnya')
          TabOrder = 1
        end
      end
    end
  end
  inherited qryDaftar: TZQuery
    Connection = ArDB.FDBCon
    UpdateObject = udtDaftar
    SQL.Strings = (
      'SELECT dp.* FROM `dc_pemilik` dp')
  end
  object udtDaftar: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM `dc_pemilik`'
      'WHERE'
      '  `dc_pemilik`.id_pemilik = :OLD_id_pemilik')
    InsertSQL.Strings = (
      'INSERT INTO `dc_pemilik`'
      '  (id_pemilik, uniteselon1, pemilik)'
      'VALUES'
      '  (:id_pemilik, :uniteselon1, :pemilik)')
    ModifySQL.Strings = (
      'UPDATE `dc_pemilik` SET'
      '  id_pemilik = :id_pemilik,'
      '  uniteselon1 = :uniteselon1,'
      '  pemilik = :pemilik'
      'WHERE'
      '  `dc_pemilik`.id_pemilik = :OLD_id_pemilik')
    UseSequenceFieldForRefreshSQL = False
    Left = 120
    Top = 131
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_pemilik'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'uniteselon1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pemilik'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id_pemilik'
        ParamType = ptUnknown
      end>
  end
end
