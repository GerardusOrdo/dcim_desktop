inherited frmDataMCBLegrand: TfrmDataMCBLegrand
  Caption = 'Data MCB - Legrand'
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
            FieldName = 'id_mcbpdu'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_panel'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'panel_name'
            Footers = <>
            Title.Caption = 'Panel'
            Width = 86
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'rak_name'
            Footers = <>
            Title.Caption = 'Rak'
            Width = 93
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'mcb_name'
            Footers = <>
            Title.Caption = 'MCB'
            Width = 104
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'pdu_name'
            Footers = <>
            Title.Caption = 'PDU'
            Width = 111
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'beban_max'
            Footers = <>
            Title.Caption = 'Beban Max'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jenisphase'
            Footers = <>
            Title.Caption = 'Jenis Phase'
            Width = 81
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
        object btnCariPanel: TAdvToolButton
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
          OnClick = btnCariPanelClick
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        object lblMCB: TLabel
          Left = 16
          Top = 110
          Width = 24
          Height = 15
          Caption = 'MCB'
          FocusControl = edtMCB
        end
        object lblLegrand: TLabel
          Left = 16
          Top = 156
          Width = 44
          Height = 15
          Caption = 'Legrand'
          FocusControl = edtLegrand
        end
        object lblPanel: TLabel
          Left = 16
          Top = 16
          Width = 29
          Height = 15
          Caption = 'Panel'
          FocusControl = edtPanel
        end
        object btnCariRak: TAdvToolButton
          Left = 331
          Top = 76
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
        object lblRak: TLabel
          Left = 16
          Top = 64
          Width = 19
          Height = 15
          Caption = 'Rak'
          FocusControl = edtRak
        end
        object lblPhase: TLabel
          Left = 16
          Top = 252
          Width = 58
          Height = 15
          Caption = 'Jenis Phase'
          FocusControl = edtLegrand
        end
        object lblBebanMax: TLabel
          Left = 16
          Top = 204
          Width = 108
          Height = 15
          Caption = 'Beban Max (Ampere)'
          FocusControl = edtBebanMax
        end
        object edtMCB: TDBEdit
          Left = 16
          Top = 129
          Width = 353
          Height = 23
          DataField = 'mcb_name'
          DataSource = dsDaftar
          TabOrder = 0
        end
        object edtLegrand: TDBEdit
          Left = 16
          Top = 175
          Width = 353
          Height = 23
          DataField = 'legrand_name'
          DataSource = dsDaftar
          TabOrder = 1
        end
        object edtPanel: TDBEdit
          Left = 16
          Top = 35
          Width = 313
          Height = 23
          DataField = 'panel_name'
          DataSource = dsDaftar
          TabOrder = 2
        end
        object edtRak: TDBEdit
          Left = 16
          Top = 83
          Width = 313
          Height = 23
          DataField = 'rak_name'
          DataSource = dsDaftar
          TabOrder = 3
        end
        object cbbPhase: TDBComboBox
          Left = 16
          Top = 272
          Width = 353
          Height = 23
          Style = csDropDownList
          DataField = 'jenisphase'
          DataSource = dsDaftar
          ItemHeight = 15
          Items.Strings = (
            '1-phase'
            '3-phase')
          TabOrder = 4
        end
        object edtBebanMax: TDBEdit
          Left = 16
          Top = 223
          Width = 353
          Height = 23
          DataField = 'beban_max'
          DataSource = dsDaftar
          TabOrder = 5
        end
      end
    end
  end
  inherited qryDaftar: TZQuery
    Connection = ArDB.FDBCon
    UpdateObject = udtDaftar
    SQL.Strings = (
      
        'SELECT dml.*, dp.`panel_name`, dr.`rak_name` FROM dc_mcb_legrand' +
        ' dml'
      'LEFT JOIN dc_panel dp ON dp.`id_panel`=dml.`id_panel`'
      'LEFT JOIN dc_rak dr ON dr.`id_rak`=dml.`id_rak`')
    Left = 96
  end
  object udtDaftar: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM dc_mcb_legrand'
      'WHERE'
      '  dc_mcb_legrand.id_mcblegrand = :OLD_id_mcblegrand')
    InsertSQL.Strings = (
      'INSERT INTO dc_mcb_legrand'
      
        '  (id_mcblegrand, id_panel, id_rak, mcb_name, legrand_name, beba' +
        'n_max, '
      '   jenisphase)'
      'VALUES'
      
        '  (:id_mcblegrand, :id_panel, :id_rak, :mcb_name, :legrand_name,' +
        ' :beban_max, '
      '   :jenisphase)')
    ModifySQL.Strings = (
      'UPDATE dc_mcb_legrand SET'
      '  id_mcblegrand = :id_mcblegrand,'
      '  id_panel = :id_panel,'
      '  id_rak = :id_rak,'
      '  mcb_name = :mcb_name,'
      '  legrand_name = :legrand_name,'
      '  beban_max = :beban_max,'
      '  jenisphase = :jenisphase'
      'WHERE'
      '  dc_mcb_legrand.id_mcblegrand = :OLD_id_mcblegrand')
    UseSequenceFieldForRefreshSQL = False
    Left = 144
    Top = 131
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_mcblegrand'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_panel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_rak'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mcb_name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'legrand_name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'beban_max'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'jenisphase'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id_mcblegrand'
        ParamType = ptUnknown
      end>
  end
end
