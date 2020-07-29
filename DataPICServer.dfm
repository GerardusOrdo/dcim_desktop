inherited frmDataPICServer: TfrmDataPICServer
  Caption = 'Data PIC Server'
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
            FieldName = 'id_picserver'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'namapic'
            Footers = <>
            Title.Caption = 'Nama PIC'
            Width = 214
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nohp'
            Footers = <>
            Title.Caption = 'No HP'
            Width = 87
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'telp'
            Footers = <>
            Title.Caption = 'Telp'
            Width = 110
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
        object lblNamaPIC: TLabel
          Left = 17
          Top = 17
          Width = 51
          Height = 15
          Caption = 'Nama PIC'
          FocusControl = edtNamaPIC
        end
        object lblNoHP: TLabel
          Left = 16
          Top = 65
          Width = 33
          Height = 15
          Caption = 'No HP'
          FocusControl = edtNoHP
        end
        object lblTelp: TLabel
          Left = 16
          Top = 113
          Width = 22
          Height = 15
          Caption = 'Telp'
          FocusControl = edtTelp
        end
        object edtNamaPIC: TDBEdit
          Left = 17
          Top = 38
          Width = 353
          Height = 23
          DataField = 'namapic'
          DataSource = dsDaftar
          TabOrder = 0
        end
        object edtNoHP: TDBEdit
          Left = 16
          Top = 86
          Width = 353
          Height = 23
          DataField = 'nohp'
          DataSource = dsDaftar
          TabOrder = 1
        end
        object edtTelp: TDBEdit
          Left = 16
          Top = 134
          Width = 353
          Height = 23
          DataField = 'telp'
          DataSource = dsDaftar
          TabOrder = 2
        end
      end
    end
  end
  inherited qryDaftar: TZQuery
    Connection = ArDB.FDBCon
    SQL.Strings = (
      'select dps.* from dc_picserver dps')
  end
end
