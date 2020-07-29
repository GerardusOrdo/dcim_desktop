inherited frmImportExcel: TfrmImportExcel
  Left = 184
  Top = 165
  Caption = 'Import Excel'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitle: TPanel
    ExplicitWidth = 796
    inherited pnlClose: TPanel
      Left = 767
      ExplicitLeft = 767
      inherited btnClose: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
  inherited pnlButton: TPanel
    ExplicitTop = 508
    ExplicitWidth = 796
    inherited btnSimpan: TAdvToolButton
      Left = 567
      OnClick = btnSimpanClick
      ExplicitLeft = 567
      TMSStyle = 0
    end
    inherited btnBatal: TAdvToolButton
      Left = 652
      ExplicitLeft = 652
      TMSStyle = 0
    end
    object pb1: TProgressBar
      Left = 8
      Top = 8
      Width = 553
      Height = 27
      TabOrder = 0
      Visible = False
    end
  end
  inherited pnlTrans: TPanel
    ExplicitWidth = 796
    ExplicitHeight = 480
    object pnlHeader: TPanel
      Left = 0
      Top = 0
      Width = 684
      Height = 78
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 796
      DesignSize = (
        684
        78)
      object lblCari: TLabel
        Left = 17
        Top = 17
        Width = 55
        Height = 17
        Caption = 'Cari Excel'
      end
      object btnImport: TAdvToolButton
        Left = 642
        Top = 41
        Width = 91
        Height = 31
        AutoThemeAdapt = False
        Color = 11610268
        ColorDown = 10624890
        ColorHot = 16531680
        Caption = 'Import'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
        OnClick = btnImportClick
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object btnCariExcel: TAdvToolButton
        Left = 642
        Top = 7
        Width = 91
        Height = 31
        AutoThemeAdapt = False
        Color = 5288012
        ColorDown = 4165175
        ColorHot = 7792128
        Caption = 'Cari Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Noto Sans'
        Font.Style = []
        ParentFont = False
        OnClick = btnCariExcelClick
        Version = '1.6.2.0'
        TMSStyle = 0
      end
      object edtPathExcel: TEdit
        Left = 77
        Top = 8
        Width = 559
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 0
      end
      object cbbPilihanInsert: TComboBox
        Left = 17
        Top = 43
        Width = 620
        Height = 25
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        ItemIndex = 0
        TabOrder = 1
        Text = 
          'Tambahkan Data Baru (Data dengan primary key yg sama tidak akan ' +
          'dimasukkan)'
        Items.Strings = (
          
            'Tambahkan Data Baru (Data dengan primary key yg sama tidak akan ' +
            'dimasukkan)'
          
            'Tambahkan Data Baru (Data dengan primary key yg sama akan digant' +
            'ikan dengan data baru)'
          'Ganti Semua Data Lama dengan Data Baru')
      end
    end
    object dbgData: TDBGridEh
      Left = 0
      Top = 78
      Width = 684
      Height = 314
      Align = alClient
      AutoFitColWidths = True
      DataSource = dsDaftar
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ReadOnly = True
      TabOrder = 1
      TitleParams.Font.Charset = DEFAULT_CHARSET
      TitleParams.Font.Color = clWindowText
      TitleParams.Font.Height = -11
      TitleParams.Font.Name = 'Tahoma'
      TitleParams.Font.Style = [fsBold]
      TitleParams.ParentFont = False
      OnKeyDown = dbgDataKeyDown
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object mmo1: TMemo
      Left = 509
      Top = 86
      Width = 199
      Height = 371
      Lines.Strings = (
        'mmo1')
      TabOrder = 2
      Visible = False
    end
  end
  inherited actTrans: TActionList
    inherited _OnClearForm: TAction
      OnExecute = _OnClearFormExecute
    end
    inherited _OnValidasiInput: TAction
      OnExecute = _OnValidasiInputExecute
    end
  end
  object dlgOpenTemp: TOpenDialog
    Left = 104
    Top = 102
  end
  object qryDaftar: TZQuery
    Connection = ArDB.FDBCon
    SQL.Strings = (
      'select * from z_import_temp')
    ParamChar = '~'
    Params = <>
    Options = [doCalcDefaults, doDontSortOnPost]
    Left = 664
    Top = 472
  end
  object dsDaftar: TDataSource
    DataSet = qryDaftar
    Left = 696
    Top = 472
  end
end
