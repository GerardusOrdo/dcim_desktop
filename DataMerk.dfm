inherited frmDataMerk: TfrmDataMerk
  Caption = 'Data Merk'
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
            FieldName = 'id_merkserver'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'merkserver'
            Footers = <>
            Title.Caption = 'Merk Server'
            Width = 432
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
        object lblMerk: TLabel
          Left = 16
          Top = 16
          Width = 27
          Height = 15
          Caption = 'Merk'
          FocusControl = edtMerk
        end
        object edtMerk: TDBEdit
          Left = 16
          Top = 38
          Width = 353
          Height = 23
          DataField = 'merkserver'
          DataSource = dsDaftar
          TabOrder = 0
        end
      end
    end
  end
  inherited qryDaftar: TZQuery
    UpdateObject = udtDaftar
    SQL.Strings = (
      'SELECT id_merkserver, merkserver FROM dc_merkserver')
    Left = 104
  end
  object udtDaftar: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM dc_merkserver'
      'WHERE'
      '  dc_merkserver.id_merkserver = :OLD_id_merkserver')
    InsertSQL.Strings = (
      'INSERT INTO dc_merkserver'
      '  (id_merkserver, merkserver)'
      'VALUES'
      '  (:id_merkserver, :merkserver)')
    ModifySQL.Strings = (
      'UPDATE dc_merkserver SET'
      '  id_merkserver = :id_merkserver,'
      '  merkserver = :merkserver'
      'WHERE'
      '  dc_merkserver.id_merkserver = :OLD_id_merkserver')
    UseSequenceFieldForRefreshSQL = False
    Left = 120
    Top = 131
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_merkserver'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'merkserver'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id_merkserver'
        ParamType = ptUnknown
      end>
  end
end
