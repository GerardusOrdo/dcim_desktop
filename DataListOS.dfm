inherited frmDataListOS: TfrmDataListOS
  Caption = 'Data List OS'
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
            FieldName = 'id_os'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'os'
            Footers = <>
            Title.Caption = 'Operating System'
            Width = 440
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
        object lblOS: TLabel
          Left = 17
          Top = 17
          Width = 94
          Height = 15
          Caption = 'Operating System'
          FocusControl = edtOS
        end
        object edtOS: TDBEdit
          Left = 17
          Top = 38
          Width = 353
          Height = 23
          DataField = 'os'
          DataSource = dsDaftar
          TabOrder = 0
        end
      end
    end
  end
  inherited qryDaftar: TZQuery
    Connection = ArDB.FDBCon
    SQL.Strings = (
      'SELECT dos.* FROM dc_os dos')
  end
end
