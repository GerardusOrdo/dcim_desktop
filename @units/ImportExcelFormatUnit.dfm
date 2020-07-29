inherited frmImportExcelFormat: TfrmImportExcelFormat
  Left = 184
  Top = 165
  Width = 843
  Height = 591
  Caption = 'Import Excel'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlTitle: TPanel
    Width = 827
    inherited pnlClose: TPanel
      Left = 798
      inherited btnClose: TAdvToolButton
        TMSStyle = 0
      end
    end
  end
  inherited pnlButton: TPanel
    Top = 508
    Width = 827
    DesignSize = (
      827
      44)
    inherited btnSimpan: TAdvToolButton
      Left = 595
      TMSStyle = 0
    end
    inherited btnBatal: TAdvToolButton
      Left = 681
      TMSStyle = 0
    end
    object pb1: TProgressBar
      Left = 8
      Top = 8
      Width = 583
      Height = 27
      TabOrder = 0
      Visible = False
    end
  end
  inherited pnlTrans: TPanel
    Width = 827
    Height = 480
    object pnlHeader: TPanel
      Left = 0
      Top = 0
      Width = 827
      Height = 44
      Align = alTop
      TabOrder = 0
      DesignSize = (
        827
        44)
      object lblCari: TLabel
        Left = 17
        Top = 17
        Width = 55
        Height = 15
        Caption = 'Cari Excel'
      end
      object btnCariExcel: TAdvToolButton
        Left = 597
        Top = 7
        Width = 76
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
      object btnImport: TAdvToolButton
        Left = 679
        Top = 7
        Width = 76
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
      object edtPathExcel: TEdit
        Left = 77
        Top = 8
        Width = 514
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 0
      end
    end
    object dbgData: TDBGridEh
      Left = 0
      Top = 44
      Width = 827
      Height = 436
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
      Left = 561
      Top = 56
      Width = 200
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
  object ImportXLSTemp: TQImport3XLS
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = '.'
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue.Strings = (
      'True')
    Formats.BooleanFalse.Strings = (
      'False')
    Formats.NullValues.Strings = (
      'Null')
    Formats.ShortDateFormat = 'dd/MM/yyyy'
    Formats.LongDateFormat = 'dd MMMM yyyy'
    Formats.ShortTimeFormat = 'h:mm'
    Formats.LongTimeFormat = 'h:mm:ss'
    FieldFormats = <>
    ErrorLogFileName = 'error.log'
    AddType = qatInsert
    OnBeforeImport = ImportXLSTempBeforeImport
    OnImportRecord = ImportXLSTempImportRecord
    Left = 64
    Top = 102
  end
  object ImportWZDTemp: TQImport3Wizard
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = '.'
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue.Strings = (
      'True')
    Formats.BooleanFalse.Strings = (
      'False')
    Formats.NullValues.Strings = (
      'Null')
    Formats.ShortDateFormat = 'dd/MM/yyyy'
    Formats.LongDateFormat = 'dd MMMM yyyy'
    Formats.ShortTimeFormat = 'h:mm'
    Formats.LongTimeFormat = 'h:mm:ss'
    FieldFormats = <>
    HelpFile = 'AImportWizard.hlp'
    ErrorLogFileName = 'error.log'
    AddType = qatInsert
    Left = 24
    Top = 102
  end
  object dlgOpenTemp: TOpenDialog
    Left = 104
    Top = 102
  end
  object qryDaftar: TZQuery
    Connection = ArDB.FDBCon
    SQL.Strings = (
      'select * from :temptable')
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
