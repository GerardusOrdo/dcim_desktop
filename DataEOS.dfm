inherited frmDataEOS: TfrmDataEOS
  Caption = 'Data EOS'
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
            FieldName = 'id_eos'
            Footers = <>
            Visible = False
            Width = 30
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_ats'
            Footers = <>
            Visible = False
            Width = 30
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ats_name'
            Footers = <>
            Title.Caption = 'ATS'
            Width = 96
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nama'
            Footers = <>
            Title.Caption = 'Nama EoS'
            Width = 93
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_hp'
            Footers = <>
            Title.Caption = 'No HP'
            Width = 72
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'email'
            Footers = <>
            Title.Caption = 'Email'
            Width = 90
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
        object btnCariATS: TAdvToolButton
          Left = 331
          Top = 28
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
        object lblNama: TLabel
          Left = 16
          Top = 62
          Width = 51
          Height = 15
          Caption = 'Nama Eos'
          FocusControl = edtNama
        end
        object lblNoHP: TLabel
          Left = 16
          Top = 108
          Width = 33
          Height = 15
          Caption = 'No HP'
          FocusControl = edtNoHP
        end
        object lblATS: TLabel
          Left = 16
          Top = 16
          Width = 19
          Height = 15
          Caption = 'ATS'
          FocusControl = edtATS
        end
        object lblEmail: TLabel
          Left = 16
          Top = 156
          Width = 28
          Height = 15
          Caption = 'Email'
          FocusControl = edtEmail
        end
        object edtNama: TDBEdit
          Left = 16
          Top = 81
          Width = 353
          Height = 23
          DataField = 'nama'
          DataSource = dsDaftar
          TabOrder = 0
        end
        object edtNoHP: TDBEdit
          Left = 16
          Top = 127
          Width = 353
          Height = 23
          DataField = 'no_hp'
          DataSource = dsDaftar
          TabOrder = 1
        end
        object edtATS: TDBEdit
          Left = 16
          Top = 35
          Width = 313
          Height = 23
          DataField = 'ats_name'
          DataSource = dsDaftar
          TabOrder = 2
        end
        object edtEmail: TDBEdit
          Left = 16
          Top = 175
          Width = 353
          Height = 23
          DataField = 'email'
          DataSource = dsDaftar
          TabOrder = 3
        end
      end
    end
  end
  inherited qryDaftar: TZQuery
    Connection = ArDB.FDBCon
    UpdateObject = udtDaftar
    SQL.Strings = (
      'SELECT de.*,da.ats_name FROM dc_eos de'
      'LEFT JOIN dc_ats da ON da.id_ats=de.id_ats')
    Left = 64
    Top = 112
  end
  object udtDaftar: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM dc_eos'
      'WHERE'
      '  dc_eos.id_eos = :OLD_id_eos')
    InsertSQL.Strings = (
      'INSERT INTO dc_eos'
      '  (id_eos, id_ats, nama, no_hp, email)'
      'VALUES'
      '  (:id_eos, :id_ats, :nama, :no_hp, :email)')
    ModifySQL.Strings = (
      'UPDATE dc_eos SET'
      '  id_eos = :id_eos,'
      '  id_ats = :id_ats,'
      '  nama = :nama,'
      '  no_hp = :no_hp,'
      '  email = :email'
      'WHERE'
      '  dc_eos.id_eos = :OLD_id_eos')
    UseSequenceFieldForRefreshSQL = False
    Left = 112
    Top = 131
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_EOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_ats'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nama'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'no_hp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id_EOS'
        ParamType = ptUnknown
      end>
  end
end
