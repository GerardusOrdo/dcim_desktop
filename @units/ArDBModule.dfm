object ArDB: TArDB
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 154
  Width = 354
  object FDBCon: TZConnection
    ControlsCodePage = cCP_UTF16
    ClientCodepage = 'utf8'
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF8'
      'codepage=utf8')
    TransactIsolationLevel = tiReadCommitted
    AfterConnect = FDBConAfterConnect
    HostName = 'localhost'
    Port = 3306
    Database = 'dcim'
    User = 'root'
    Password = 'P@ssw0rd123'
    Protocol = 'mysql'
    Left = 16
    Top = 16
  end
  object FQuery: TZQuery
    Connection = FDBCon
    ParamChar = '^'
    Params = <>
    Left = 72
    Top = 16
  end
  object FTimer: TTimer
    Enabled = False
    OnTimer = FTimerTimer
    Left = 128
    Top = 16
  end
  object FProc: TZStoredProc
    Connection = FDBCon
    Params = <>
    Left = 184
    Top = 16
  end
  object FROQuery: TZReadOnlyQuery
    Connection = FDBCon
    Params = <>
    Left = 232
    Top = 16
  end
  object FProcDB: TZSQLProcessor
    ParamCheck = False
    Params = <>
    Connection = FDBCon
    DelimiterType = dtDelimiter
    Delimiter = ';'
    Left = 288
    Top = 16
  end
  object FAkCon: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF8')
    TransactIsolationLevel = tiReadCommitted
    HostName = 'localhost'
    Port = 9393
    Database = 'ge_akuntansi'
    User = 'root'
    Password = 'admin93'
    Protocol = 'mysql'
    Left = 16
    Top = 64
  end
end
