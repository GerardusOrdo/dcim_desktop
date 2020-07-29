inherited frmDataOSServer: TfrmDataOSServer
  Caption = 'Data OS Server'
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
            FieldName = 'id_osserver'
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
            FieldName = 'id_os'
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
            Width = 153
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'sn'
            Footers = <>
            Title.Caption = 'SN'
            Width = 87
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'os'
            Footers = <>
            Title.Caption = 'OS'
            Width = 119
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'hostname'
            Footers = <>
            Title.Caption = 'Hostname'
            Width = 107
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ip_os'
            Footers = <>
            Title.Caption = 'IP'
            Width = 87
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'sistem_terpasang'
            Footers = <>
            Title.Caption = 'Sistem'
            Width = 124
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'user'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'password'
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
        object btnCariOS: TAdvToolButton
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
          OnClick = btnCariOSClick
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        object lblIP: TLabel
          Left = 24
          Top = 146
          Width = 11
          Height = 15
          Caption = 'IP'
          FocusControl = edtIP
        end
        object lblHostname: TLabel
          Left = 24
          Top = 100
          Width = 53
          Height = 15
          Caption = 'Hostname'
          FocusControl = edtHostname
        end
        object lblSistem: TLabel
          Left = 24
          Top = 192
          Width = 92
          Height = 15
          Caption = 'Sistem Terpasang'
          FocusControl = edtSistem
        end
        object lblUser: TLabel
          Left = 24
          Top = 238
          Width = 24
          Height = 15
          Caption = 'User'
          FocusControl = edtUser
        end
        object lblPassword: TLabel
          Left = 24
          Top = 284
          Width = 51
          Height = 15
          Caption = 'Password'
          FocusControl = edtPassword
        end
        object lblServer: TLabel
          Left = 24
          Top = 8
          Width = 34
          Height = 15
          Caption = 'Server'
          FocusControl = edtServer
        end
        object lblOS: TLabel
          Left = 24
          Top = 54
          Width = 94
          Height = 15
          Caption = 'Operating System'
          FocusControl = edtOS
        end
        object edtIP: TDBEdit
          Left = 24
          Top = 165
          Width = 345
          Height = 23
          DataField = 'ip_os'
          DataSource = dsDaftar
          TabOrder = 0
        end
        object edtHostname: TDBEdit
          Left = 24
          Top = 119
          Width = 345
          Height = 23
          DataField = 'hostname'
          DataSource = dsDaftar
          TabOrder = 1
        end
        object edtSistem: TDBEdit
          Left = 24
          Top = 211
          Width = 345
          Height = 23
          DataField = 'sistem_terpasang'
          DataSource = dsDaftar
          TabOrder = 2
        end
        object edtUser: TDBEdit
          Left = 24
          Top = 257
          Width = 345
          Height = 23
          DataField = 'user'
          DataSource = dsDaftar
          TabOrder = 3
        end
        object edtPassword: TDBEdit
          Left = 24
          Top = 303
          Width = 345
          Height = 23
          DataField = 'password'
          DataSource = dsDaftar
          PasswordChar = '*'
          TabOrder = 4
        end
        object edtServer: TDBEdit
          Left = 24
          Top = 27
          Width = 305
          Height = 23
          DataField = 'servername'
          DataSource = dsDaftar
          TabOrder = 5
        end
        object edtOS: TDBEdit
          Left = 24
          Top = 73
          Width = 305
          Height = 23
          DataField = 'os'
          DataSource = dsDaftar
          TabOrder = 6
        end
      end
    end
  end
  inherited qryDaftar: TZQuery
    Connection = ArDB.FDBCon
    UpdateObject = udtDaftar
    SQL.Strings = (
      
        'SELECT doss.*, dsm.`servername`, ds.`sn`, dos.`os` FROM `dc_osse' +
        'rver` doss'
      'LEFT JOIN `dc_server` ds ON ds.`id_server`=doss.`id_server`'
      
        'LEFT JOIN `dc_servermachine` dsm ON dsm.`id_servermachine`=ds.`i' +
        'd_servermachine`'
      'LEFT JOIN `dc_os` dos ON dos.`id_os`=doss.`id_os`')
    Left = 80
    Top = 120
  end
  object udtDaftar: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM `dc_osserver`'
      'WHERE'
      '  `dc_osserver`.id_osserver = :OLD_id_osserver')
    InsertSQL.Strings = (
      'INSERT INTO `dc_osserver`'
      
        '  (id_osserver, id_server, id_os, ip_os, hostname, sistem_terpas' +
        'ang, user, '
      '   password)'
      'VALUES'
      
        '  (:id_osserver, :id_server, :id_os, :ip_os, :hostname, :sistem_' +
        'terpasang, '
      '   :user, :password)')
    ModifySQL.Strings = (
      'UPDATE `dc_osserver` SET'
      '  id_osserver = :id_osserver,'
      '  id_server = :id_server,'
      '  id_os = :id_os,'
      '  ip_os = :ip_os,'
      '  hostname = :hostname,'
      '  sistem_terpasang = :sistem_terpasang,'
      '  user = :user,'
      '  password = :password'
      'WHERE'
      '  `dc_osserver`.id_osserver = :OLD_id_osserver')
    UseSequenceFieldForRefreshSQL = False
    Left = 120
    Top = 131
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_osserver'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_server'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ip_os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hostname'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sistem_terpasang'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'user'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'password'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id_osserver'
        ParamType = ptUnknown
      end>
  end
end
