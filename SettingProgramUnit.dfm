inherited frmSettingProgram: TfrmSettingProgram
  Left = 240
  Top = 254
  Caption = 'Setting Program'
  ClientHeight = 352
  ClientWidth = 560
  OldCreateOrder = True
  OnShow = FormShow
  ExplicitWidth = 566
  ExplicitHeight = 381
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitle: TPanel
    Width = 560
    ExplicitWidth = 560
    inherited pnlClose: TPanel
      Left = 531
      ExplicitLeft = 531
      inherited btnClose: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
  inherited pnlButton: TPanel
    Top = 305
    Width = 560
    ExplicitTop = 308
    ExplicitWidth = 560
    DesignSize = (
      560
      47)
    inherited btnBatal: TAdvToolButton
      Left = 469
      ExplicitLeft = 469
      TMSStyle = 0
    end
    inherited btnOK: TAdvToolButton
      Left = 385
      OnClick = btnOKClick
      ExplicitLeft = 385
      TMSStyle = 0
    end
  end
  inherited pnlData: TPanel
    Width = 560
    Height = 277
    ExplicitWidth = 560
    ExplicitHeight = 280
    object btnOptimasi: TBitBtn
      Left = 17
      Top = 552
      Width = 96
      Height = 27
      Caption = '&Optimasi DB'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCD0D0D0FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5D9D9D9CCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCC2188D23A92CECCCCCCF9F9F9FFFFFFFFFFFFFFFFFFE0E0E0C6C5C3
        B9B4ABB0AA9EAFA99DAEA89CAEA89CAFA99BB6AB9A719AB53998D63F99D5BCC5
        CDEDEDEDFFFFFFFFFFFFBDB9B2B4AEA2C5BEB3D4CAC2E1D7CFE8DED6EFE4DDEB
        E1D8E7D9CFDBCDC24EA7DC95F4FF469DD798B6CDE5E5E5FFFFFFB1AB9FC8C1B6
        CFC7BFD6CCC5DCD3CAE4D9D2EBE0D9E7DCD4E4D6CCEAD4C28AA9C36DCEF087EA
        FD459DD683ADCEDCDCDCB0AB9EC7C0B6CDC4BBD3CAC2DAD1C8E2D7CFECE1DAE6
        DBD1E8D6C92487D240A0DB50AFE17DE9FD81EFFF57B4E36BA5D1B0AA9ECAC3B9
        EAE5DDF7F3EBFFFBF4FDFAF3FDF9F2FFFAF3FFFFF32C88D38CECFD6CE1F95CC0
        E83F8CD04392D34595D5C1BDB6F9F3EDD8D1C9C2B8B0BFB6AEC5BAB2C8BEB5C7
        BCB3CBBBAD5997C989D5F27CE0F958CCEF4595D5A9BFD0FFFFFFBBB7AFA39A8F
        BAB2A7CAC1B8DED5CCE5DBD3ECE1DAE9DED5E8D8CC81A9CC57B7E7D9F9FE4DD3
        F44BB5E5509AD6EDEDEDB1AB9FC9C2B9CFC7BFD5CCC4DCD3CAE3D9D1EADFD8E7
        DCD3E4D6CBA6BACB3BA0DF90E8FA93E8F998E9FA4C98D79FBAD0B0AB9EC7C0B6
        CCC4BBD3C9C1DAD0C7E1D7CFEBE1DAE4D9D1E0D3C9C0C3C63A92DC4194DC4596
        DC4C99DB519CDB539EDBAFAA9DC8C1B7E8E3DBF5F0E8FDF8F2FCF8F1FBF7F0FC
        F7F1FEF9F1FBF2E9F3E5D8D5C5B5BEAB94FFFFFFFFFFFFFFFFFFAEA89CFBF5EF
        EEE7DEE0D8CEDDD5CCDDD4CBDDD4CBDDD4CBDDD5CBE1D8CEEFE7DDFDF7EEB3A9
        99FFFFFFFFFFFFFFFFFFAFA99DE1D8CEE1D7CEDFD6CCDFD5CBDFD5CBDFD5CBDF
        D5CBDFD5CBDFD6CCE1D7CEE1D8CEB0AA9DFFFFFFFFFFFFFFFFFFD0CDC5B6B0A4
        D6CFC4E6DED5EFE7DDEEE6DCEEE6DCEEE6DCEFE7DDE6DED5D6CFC4B6B0A4D0CD
        C5FFFFFFFFFFFFFFFFFFFFFFFFEFEEECC5C0B7AEA99CAEA89CAEA89CAEA89CAE
        A89CAEA89CAEA99CC5C0B7EFEEECFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 1
      Visible = False
    end
    object btnBackup: TBitBtn
      Left = 120
      Top = 552
      Width = 97
      Height = 27
      Caption = '&Backup DB'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCFCFCFFFFFFFF5F5F5D9D9D9CCCCCCCCCCCCCCCCCCC19B4FB7
        8216B68114B88010B9810FB87F0EB67E0FB68013B78218BB8928E0E0E0C6C5C3
        B9B4ABB0AA9EAFAA9FAEADAAB77D09F6CC89F3C275F9FCFF8B8D91F9F9F9F4F8
        FCF2C174F6CD8BB78218BDB9B2B4AEA2C5BEB3D4CAC2E1D8D1EBE4E7B37A04F3
        CB88EBB65CF2EDED7F7978F1E9E2EEE9E9EAB55BF3CC8BB68116B1AB9FC8C1B6
        CFC7BFD6CCC5DDD5CDE8E1E3B27803F2CD90E6AD4FEACFA9FFFFFFFDFFFFE8CE
        A7E6AD4EF3CE93B68115B0AB9EC7C0B6CDC4BBD3CAC2DBD2CBE6E0E1B17701F4
        D39BE4A641E3A43AE3A133E2A132E3A43AE3A641F4D49EB68114B0AA9ECAC3B9
        EAE5DDF7F3EBFFFCF7FFFFFFB17700F5D7A9E19E2FE7CAA1EBE2E0EBE2E0E7CA
        A1E19E2FF6D9ADB68014C1BDB6F9F3EDD8D1C9C2B8B0C0B7B0C7C1C2B27700F8
        E0B9DD9419EEE9E9EFE6DEEFE6DEEEE9E9DD9419F8E2BCB68012BBB7AFA39A8F
        BAB2A7CAC1B8DED6CFE8E2E3B27700FAE9CEDA8802F0EEECB2ADA7B2ADA7F0EE
        ECDA8802FBEAD1B67F12B1AB9FC9C2B9CFC7BFD5CCC4DDD5CDE7E0E1B17600FD
        E8C7FBE4C1FFFFFFFFFFFFFFFFFFFFFFFFFCE6C4FFECCEB78114B0AB9EC7C0B6
        CCC4BBD3C9C1DAD1C9E4DCD9C9A155B07400B07300B07200B17300B37500B579
        00B67D0AB78113BD8D29AFAA9DC8C1B7E8E3DBF5F0E8FDF9F3FDF9F4FEFCFBFF
        FEFFFFFFFFF8F6F8EBE7E8C9C7C7AEAEAFFFFFFFFFFFFFFFFFFFAEA89CFBF5EF
        EEE7DEE0D8CEDDD5CCDDD5CCDDD5CDDDD5CEDDD6CEE0D9D1EEE8E0FBF7F2AEAA
        A3FFFFFFFFFFFFFFFFFFAFA99DE1D8CEE1D7CEDFD6CCDFD5CBDFD5CBDFD5CBDF
        D5CBDFD5CBDFD6CCE1D7CEE1D8CEAFAA9EFFFFFFFFFFFFFFFFFFD0CDC5B6B0A4
        D6CFC4E6DED5EFE7DDEEE6DCEEE6DCEEE6DCEFE7DDE6DED5D6CFC4B6B0A4D0CD
        C5FFFFFFFFFFFFFFFFFFFFFFFFEFEEECC5C0B7AEA99CAEA89CAEA89CAEA89CAE
        A89CAEA89CAEA99CC5C0B7EFEEECFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 2
      Visible = False
    end
    object btnRestore: TBitBtn
      Left = 224
      Top = 552
      Width = 96
      Height = 27
      Caption = '&Restore DB'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCDCDCDCFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5D9D9D9CCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCC008B49429F71DADADAF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFE0E0E0C6C5C3
        B9B4ABB0AA9EB1AA9EB8ABA1CCAEA900864013C78F008641D4B9B6CEC8C7CCCC
        CCD5D5D5F8F8F8FFFFFFBDB9B2B4AEA2C5BEB3D5CBC2E8D9D2FFE5E400813935
        CC9B00DCA100BB7D009B58008641008946259762B2C4BCF8F8F8B1AB9FC8C1B6
        CFC7BFD7CDC6E8D7D1007D314FD2AC00D39C00D29C00D5A000D8A300DAA600DC
        A800C28B009050C0D3CAB0AB9EC7C0B6CDC4BBD4CAC2E2D3CCFDDFDD007C327C
        E7D600C59D00AE7C00823C00975800985A00B17E00B68944A277B0AA9ECAC3B9
        EAE5DDF8F3ECFFFDF9FFFFFFFFFFFF007E3497EAE6008239FFEBE9B1BAA996A4
        8E45AA7800A171009153C1BDB6F9F3EDD8D1C9C5B9B2BAB2A9007F337DAE8EF5
        C8CB00843A3D9768F9D9DA5EB68B008742CCCCCC9AD2B8008E4EBBB7AFA39A8F
        BAB2A7CEC2BAF1DBD6008F4B00A764369D6AB4C4B2AEB8A6E5BABC00823C12E6
        B1008644CCCCCCFFFFFFB1AB9FC9C2B9CFC7BFD8CDC6ECD8D24BA47700BD7E00
        B878009A58009B5800833E00BB7C00DAA03CE9BD008745CCCCCCB0AB9EC7C0B6
        CCC4BBD4CAC2E2D3CCC3CCBC008C4900BE8300D7A400D8A500D7A400D4A000D1
        9C00D39E61DBB7008C4AAFAA9DC8C1B7E8E3DBF5F0E9FFF9F3FFFBF8DBE7D92F
        A06900803900813A00813B00AF7C00C69F86DCC5008744FFFFFFAEA89CFBF5EF
        EEE7DEE0D8CEDDD5CCE0D5CDE6D8D1EFDBD6F4DDD9FAE0DDFFF1F00081399CE2
        D6008742FFFFFFFFFFFFAFA99DE1D8CEE1D7CEDFD6CCDFD5CBDFD5CBE0D6CCE1
        D6CDE2D7CEE5D8CFF0DCD547A77800863DFFFFFFFFFFFFFFFFFFD0CDC5B6B0A4
        D6CFC4E6DED5EFE7DDEEE6DCEEE6DCEEE6DCEFE7DDE7DFD5DAD0C6C2B3AADBCF
        CBFFFFFFFFFFFFFFFFFFFFFFFFEFEEECC5C0B7AEA99CAEA89CAEA89CAEA89CAE
        A89CAEA89CAEA99CC5C0B7F0EEECFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 3
      Visible = False
    end
    object pgcSetting: TPageControl
      Left = 2
      Top = 2
      Width = 556
      Height = 273
      ActivePage = tsPerusahaan
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 276
      object tsPerusahaan: TTabSheet
        Caption = 'Perusahaan'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        DesignSize = (
          548
          243)
        object lblAlamat: TLabel
          Left = 8
          Top = 51
          Width = 36
          Height = 15
          Caption = 'Alamat'
          FocusControl = mmoAlamatKantor
          Transparent = True
        end
        object lblTelp: TLabel
          Left = 8
          Top = 120
          Width = 22
          Height = 15
          Caption = 'Telp'
          FocusControl = edtTelpKantor
          Transparent = True
        end
        object lblFax: TLabel
          Left = 8
          Top = 163
          Width = 18
          Height = 15
          Caption = 'Fax'
          FocusControl = edtFaxKantor
          Transparent = True
        end
        object lblDaerah: TLabel
          Left = 8
          Top = 8
          Width = 74
          Height = 15
          Caption = 'Nama Instansi'
          FocusControl = edtNamaKantor
          Transparent = True
        end
        object btnHapusFoto: TAdvToolButton
          Left = 387
          Top = 179
          Width = 148
          Height = 28
          Anchors = [akTop, akRight]
          AutoThemeAdapt = False
          Color = 6495978
          ColorDown = 5969858
          ColorHot = 8471039
          Caption = 'HAPUS FOTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -9
          Font.Name = 'Noto Sans'
          Font.Style = []
          ParentFont = False
          OnClick = btnOKClick
          Version = '1.6.2.0'
          TMSStyle = 0
        end
        object edtTelpKantor: TEdit
          Left = 8
          Top = 138
          Width = 217
          Height = 22
          TabOrder = 3
        end
        object edtFaxKantor: TEdit
          Left = 8
          Top = 181
          Width = 217
          Height = 22
          TabOrder = 4
        end
        object mmoAlamatKantor: TMemo
          Left = 8
          Top = 69
          Width = 363
          Height = 49
          ScrollBars = ssVertical
          TabOrder = 2
          WantReturns = False
        end
        object edtNamaKantor: TEdit
          Left = 8
          Top = 26
          Width = 363
          Height = 22
          TabOrder = 0
        end
        object pnlLogo: TPanel
          Left = 387
          Top = 26
          Width = 148
          Height = 148
          BevelInner = bvLowered
          TabOrder = 1
          object imgLogo: TImage
            Left = 2
            Top = 2
            Width = 144
            Height = 144
            Align = alClient
            Center = True
            Proportional = True
            OnClick = imgLogoClick
          end
          object lblLogo: TLabel
            Left = 19
            Top = 112
            Width = 118
            Height = 30
            Alignment = taCenter
            Caption = 'Klik disini '#13#10'untuk mengganti logo'
            Transparent = True
            Layout = tlCenter
            OnClick = imgLogoClick
          end
        end
      end
      object tsNota: TTabSheet
        Caption = 'Nota'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dbgNota: TDBGridEh
          Left = 0
          Top = 0
          Width = 548
          Height = 247
          Align = alClient
          DataSource = dsNota
          DynProps = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'tabel'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Nama Nota'
              Width = 237
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'noakhir'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Nomor Nota'
              Width = 107
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'prefix'
              Footers = <>
              Title.Caption = 'Awalan Nota'
              Width = 185
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object tsStyle: TTabSheet
        Caption = 'Style'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object lbl1: TLabel
          Left = 8
          Top = 8
          Width = 143
          Height = 15
          Caption = 'Display Color  Menu Utama'
          FocusControl = edtNamaKantor
          Transparent = True
        end
        object lbl2: TLabel
          Left = 8
          Top = 31
          Width = 140
          Height = 15
          Caption = 'Display Color Warna Dasar'
          FocusControl = edtNamaKantor
          Transparent = True
        end
        object cbbWarnaMenuUtama: TAdvComboBox
          Left = 157
          Top = 7
          Width = 135
          Height = 23
          Color = clWindow
          Version = '1.9.1.0'
          Visible = True
          Style = csDropDownList
          EmptyTextStyle = []
          DropWidth = 0
          Enabled = True
          ItemIndex = 4
          Items.Strings = (
            'Red'
            'Pink'
            'Purple'
            'Deep Purple'
            'Dark Blue'
            'Blue'
            'Light Blue'
            'Teal'
            'Dark Teal'
            'Dark Green'
            'Green'
            'Light Green'
            'Yellow'
            'Dark Yellow'
            'Orange'
            'Dark Orange')
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          TabOrder = 0
          Text = 'Dark Blue'
        end
        object cbbWarnaBase: TAdvComboBox
          Left = 157
          Top = 30
          Width = 135
          Height = 23
          Color = clWindow
          Version = '1.9.1.0'
          Visible = True
          Style = csDropDownList
          EmptyTextStyle = []
          DropWidth = 0
          Enabled = True
          ItemIndex = 4
          Items.Strings = (
            'Red'
            'Pink'
            'Purple'
            'Deep Purple'
            'Dark Blue'
            'Blue'
            'Light Blue'
            'Teal'
            'Dark Teal'
            'Dark Green'
            'Green'
            'Light Green'
            'Yellow'
            'Dark Yellow'
            'Orange'
            'Dark Orange')
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          TabOrder = 1
          Text = 'Dark Blue'
        end
      end
    end
  end
  object odlgLogo: TOpenPictureDialog
    Filter = 'JPEG Image File Only (*.jpg,*.jpeg)|*.jpg;*.jpeg'
    Left = 424
    Top = 72
  end
  object qryNota: TZQuery
    Connection = ArDB.FDBCon
    SQL.Strings = (
      'select * '
      'from tempnomor')
    Params = <>
    Left = 168
    Top = 176
  end
  object dsNota: TDataSource
    DataSet = qryNota
    Left = 200
    Top = 176
  end
end
