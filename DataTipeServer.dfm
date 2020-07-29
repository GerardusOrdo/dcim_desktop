inherited frmDataTipeServer: TfrmDataTipeServer
  Left = 187
  Top = 105
  Caption = 'Data Tipe Perangkat'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitle: TPanel
    ExplicitWidth = 784
    inherited pnlClose: TPanel
      ExplicitLeft = 755
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
            FieldName = 'id_servermachine'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jenisperangkat'
            Footers = <>
            Title.Caption = 'Jenis'
            Width = 75
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'servername'
            Footers = <>
            Title.Caption = 'Tipe Perangkat'
            Width = 126
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'u_count'
            Footers = <>
            Title.Caption = 'Ukuran'
            Width = 91
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jenis_factor'
            Footers = <>
            Title.Caption = 'Jenis Factor'
            Width = 102
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'processor'
            Footers = <>
            Title.Caption = 'Processor'
            Width = 119
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'memory'
            Footers = <>
            Title.Caption = 'Memory'
            Width = 69
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'storage'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'power_supply'
            Footers = <>
            Visible = False
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
          ExplicitLeft = 442
          TMSStyle = 0
        end
        inherited btnPilih: TAdvToolButton
          ExplicitLeft = 442
          TMSStyle = 0
        end
        inherited edtKeyword: TEdit
          Width = 211
          ExplicitWidth = 211
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
        object lbl2: TLabel
          Left = 17
          Top = 54
          Width = 79
          Height = 15
          Caption = 'Tipe Perangkat'
          FocusControl = edtservername
        end
        object lbl3: TLabel
          Left = 17
          Top = 146
          Width = 39
          Height = 15
          Caption = 'Ukuran'
          FocusControl = edtu_count
        end
        object lbl4: TLabel
          Left = 17
          Top = 238
          Width = 52
          Height = 15
          Caption = 'Processor'
          FocusControl = edtprocessor
        end
        object lbl5: TLabel
          Left = 17
          Top = 284
          Width = 44
          Height = 15
          Caption = 'Memory'
          FocusControl = edtmemory
        end
        object lbl6: TLabel
          Left = 17
          Top = 330
          Width = 41
          Height = 15
          Caption = 'Storage'
          FocusControl = edtstorage
        end
        object lbl7: TLabel
          Left = 17
          Top = 376
          Width = 73
          Height = 15
          Caption = 'Power Supply'
          FocusControl = edtpower_supply
        end
        object lblMerkServer: TLabel
          Left = 17
          Top = 100
          Width = 84
          Height = 15
          Caption = 'Merk Perangkat'
          FocusControl = edtMerkServer
        end
        object btnCariMerkServer: TAdvToolButton
          Left = 331
          Top = 117
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
          OnClick = btnCariMerkServerClick
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        object lblJenisPerangkat: TLabel
          Left = 17
          Top = 8
          Width = 81
          Height = 15
          Caption = 'Jenis Perangkat'
          FocusControl = edtJenisPerangkat
        end
        object btnCariJenisPerangkat: TAdvToolButton
          Left = 331
          Top = 21
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
          OnClick = btnCariJenisPerangkatClick
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        object lblJenisFactor: TLabel
          Left = 17
          Top = 192
          Width = 60
          Height = 15
          Caption = 'Jenis Factor'
          FocusControl = edtprocessor
        end
        object edtservername: TDBEdit
          Left = 17
          Top = 73
          Width = 353
          Height = 23
          DataField = 'servername'
          DataSource = dsDaftar
          TabOrder = 0
        end
        object edtu_count: TDBEdit
          Left = 17
          Top = 165
          Width = 353
          Height = 23
          DataField = 'u_count'
          DataSource = dsDaftar
          TabOrder = 1
        end
        object edtprocessor: TDBEdit
          Left = 17
          Top = 257
          Width = 353
          Height = 23
          DataField = 'processor'
          DataSource = dsDaftar
          TabOrder = 2
        end
        object edtmemory: TDBEdit
          Left = 17
          Top = 303
          Width = 353
          Height = 23
          DataField = 'memory'
          DataSource = dsDaftar
          TabOrder = 3
        end
        object edtstorage: TDBEdit
          Left = 17
          Top = 349
          Width = 353
          Height = 23
          DataField = 'storage'
          DataSource = dsDaftar
          TabOrder = 4
        end
        object edtpower_supply: TDBEdit
          Left = 17
          Top = 395
          Width = 353
          Height = 23
          DataField = 'power_supply'
          DataSource = dsDaftar
          TabOrder = 5
        end
        object edtMerkServer: TDBEdit
          Left = 17
          Top = 119
          Width = 310
          Height = 23
          DataField = 'merkserver'
          DataSource = dsDaftar
          TabOrder = 6
        end
        object edtJenisPerangkat: TDBEdit
          Left = 17
          Top = 27
          Width = 310
          Height = 23
          DataField = 'jenisperangkat'
          DataSource = dsDaftar
          TabOrder = 7
        end
        object cbbJenisFactor: TDBComboBox
          Left = 17
          Top = 211
          Width = 352
          Height = 23
          DataField = 'jenis_factor'
          DataSource = dsDaftar
          Items.Strings = (
            'Rack Mounted'
            'Tower'
            'Blade Enclosure'
            'Blade Server')
          TabOrder = 8
        end
      end
    end
  end
  inherited qryDaftar: TZQuery
    Connection = ArDB.FDBCon
    UpdateObject = udtDaftar
    SQL.Strings = (
      
        'SELECT dsm.*, dm.merkserver, djp.jenisperangkat FROM dc_serverma' +
        'chine dsm '
      'LEFT JOIN dc_merkserver dm ON dm.id_merkserver=dsm.id_merkserver'
      
        'LEFT JOIN dc_jenisperangkat djp ON djp.id_jenisperangkat=dsm.id_' +
        'jenisperangkat')
  end
  object udtDaftar: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM dc_servermachine'
      'WHERE'
      '  dc_servermachine.id_servermachine = :OLD_id_servermachine')
    InsertSQL.Strings = (
      'INSERT INTO dc_servermachine'
      
        '  (id_servermachine, id_merkserver, id_jenisperangkat, servernam' +
        'e, u_count, '
      '   jenis_factor, processor, memory, storage, power_supply)'
      'VALUES'
      
        '  (:id_servermachine, :id_merkserver, :id_jenisperangkat, :serve' +
        'rname, '
      
        '   :u_count, :jenis_factor, :processor, :memory, :storage, :powe' +
        'r_supply)')
    ModifySQL.Strings = (
      'UPDATE dc_servermachine SET'
      '  id_servermachine = :id_servermachine,'
      '  id_merkserver = :id_merkserver,'
      '  id_jenisperangkat = :id_jenisperangkat,'
      '  servername = :servername,'
      '  u_count = :u_count,'
      '  jenis_factor = :jenis_factor,'
      '  processor = :processor,'
      '  memory = :memory,'
      '  storage = :storage,'
      '  power_supply = :power_supply'
      'WHERE'
      '  dc_servermachine.id_servermachine = :OLD_id_servermachine')
    UseSequenceFieldForRefreshSQL = False
    Left = 128
    Top = 131
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_servermachine'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_merkserver'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_jenisperangkat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servername'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'u_count'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'jenis_factor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'processor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'memory'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'storage'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'power_supply'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id_servermachine'
        ParamType = ptUnknown
      end>
  end
end
