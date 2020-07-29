unit ArDBModule;

interface

uses
  SysUtils, Classes, Dialogs, Controls, ExtCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, DBGrids,
  ZStoredProcedure, ZSqlProcessor, ZScriptParser;

type
  TWhenDuplicate = (wdAbort, wdIgnore, wdUpdate, wdAddValue);
  TPointTo = (ptBookmark, ptLocate, ptFirst, ptNone);
  TArSQL = class (TObject)
  private
    FFields : TStrings;
    FValues: array of TStrings;
    FValueCount: Word;
    FTableName: string;
    FKeyValues: TStrings;
    FKeyFields: TStrings;
    FCondition: string;
    FFieldOffset: TStrings;
    FSQLSelect: string;
    FQuoted: Boolean;
    FWhenDuplicate: TWhenDuplicate;
    function ReadValues(Index: Integer): TStrings;
    procedure WriteValues(Index: Integer; const Value: TStrings);
  public
    constructor Create;
    destructor Destroy; override;

    procedure ClearParams;
    procedure SetFieldNames  (Values: array of string);
    procedure SetFieldOffset (Values: array of string);
    procedure SetFieldValues (Index: Integer; Values: array of string);
    procedure SetKeyFieldNames (Values: array of string);
    procedure SetKeyFieldValues (Values: array of string);
    procedure ClearFieldValues;
    procedure RemoveFieldValues (Index: Integer);
    function AddFieldValues (Values: TStrings):Integer; overload;
    function AddFieldValues (Values: array of string):Integer; overload;

    function SQLInsert: string;
    function SQLInsertSelect: string;
    function SQLUpdate: string; overload;
    function SQLUpdate(ATable:string; AFields, AValues:array of string;
               AKeyFields, AKeyValues:array of string; AQuoted:Boolean=False;
               AWhenDuplicate:TWhenDuplicate=wdAbort): string; overload;
    function SQLDelete: string; overload;
    function SQLDelete(ATable:string; AKeyFields, AKeyValues:array of string;
               ACondition:string='';AQuoted:Boolean=False): string; overload;
    property FieldValues[Index:Integer] : TStrings read ReadValues write WriteValues;
    property ValueCount: Word read FValueCount;
  published
    property TableName : string read FTableName write FTableName;
    property FieldNames : TStrings read FFields write FFields;
    property FieldOffset : TStrings read FFieldOffset write FFieldOffset;
    property KeyFieldNames : TStrings read FKeyFields write FKeyFields;
    property KeyFieldValues : TStrings read FKeyValues write FKeyValues;
    property Quoted : Boolean read FQuoted write FQuoted default False;
    property WhenDuplicate : TWhenDuplicate read FWhenDuplicate write FWhenDuplicate;
    property SQLCondition : string read FCondition write FCondition;
    property SQLSelect : string read FSQLSelect write FSQLSelect;
  end;
  TArDB = class(TDataModule)
    FDBCon: TZConnection;
    FAkCon: TZConnection;
    FQuery: TZQuery;
    FTimer: TTimer;
    FProc: TZStoredProc;
    FROQuery: TZReadOnlyQuery;
    FProcDB: TZSQLProcessor;
    procedure DataModuleCreate(Sender: TObject);
    procedure FTimerTimer(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure FDBConAfterConnect(Sender: TObject);
    procedure FAkConAfterConnect(Sender: TObject);
  private
     { Private declarations }
     FPathApp, FFileIni, //FSection,
     FIniServer, FIniDatabase, FIniUsername, FIniPassword, FIniPort : string;
     FServerTime : TDateTime;
     function GetConnected: Boolean;
  public
    { Public declarations }
     function GetData (SQLText:string;AFieldType:TFieldType=ftVariant;AConnection:TZConnection=nil):Variant;
     function GetTimeServer(AConnection:TZConnection=nil):TDateTime;

     function LoadDBSetFromINI(ASection:string='database';AConnection:TZConnection=nil):Boolean;
     procedure SaveDBSetToINI (fn:string='';ASection:string='database';AConnection:TZConnection=nil);

     function Connect(AConnection:TZConnection=nil):Boolean; overload;
     function Connect(dbserver, dbuser, dbpass, dbname :string;dbport:integer;AConnection:TZConnection=nil):Boolean; overload;
     function Backup (FBackup:string; dbserver,dbuser,dbpass,dbname:string;
					dbport:integer;Compressed:Boolean=False): Boolean; overload;
     function Backup (FBackup:string;Compressed: Boolean=False;AConnection:TZConnection=nil):Boolean; overload;
     function Restore (FRestore:string; dbserver,dbuser,dbpass,dbname:string;
                    dbport:integer):Boolean; overload;
     function Restore (FRestore:string;Compressed: Boolean=False;AConnection:TZConnection=nil):Boolean; overload;
     procedure Disconnect(AConnection:TZConnection=nil);
  published
     property ServerTime : TDateTime read FServerTime write FServerTime;
     property Connected : Boolean read GetConnected;
  end;

function ROQry(s: string; AConnection:TZConnection=nil):TZReadOnlyQuery;
function Query(s: string; AConnection:TZConnection=nil):TZQuery;
function ExecQry(SQLText: string; AConnection:TZConnection=nil):Boolean; //alias
function ExecQuery(SQLText: string; AConnection:TZConnection=nil):Boolean;
function ExecScript(SQLScript: string;ADelimiter:string=';';AConnection:TZConnection=nil):Boolean;

function StoredProc (ASPName :string;AParams:array of Variant;AConnection:TZConnection=nil):TZStoredProc;
function ExecSP     (ASPName :string;AParams:array of Variant;AConnection:TZConnection=nil):Boolean;
function GetSPData  (ASPName :string;AParams:array of Variant;AFieldType:TFieldType=ftVariant;AConnection:TZConnection=nil):Variant;
function GetQryData (ASQLText:string;AFieldType:TFieldType=ftVariant;AConnection:TZConnection=nil):Variant;

procedure DoHandleException(Sender: TObject; E: Exception);
function  DBHandleException (Sender: TObject; E: Exception):Boolean;
procedure CloseAllDatasets (AOwner:TComponent);
procedure SortByFieldName (AQry:TZAbstractRODataset;AFieldName:string);
procedure SortByColumn (const Column:TColumn);
procedure ShowData (ADataset:TDataset;APointTo:TPointTo=ptBookmark);
procedure SetDisplayLabel(const ADataset:TDataset; ALabels: array of string);

//temporary --------------------------------
function DoInsert (ATable:string; AFields, AValues:array of string;
               wQuoted:Boolean=False; AConnection:TZConnection=nil):string;
function DoUpdate (ATable:string; AFields, AValues:array of string;
               AKeyFields,AKeyValues:array of string;wQuoted:Boolean=False;
               AConnection:TZConnection=nil):string;
function DoDelete (ATable:string;
               AKeyFields, AKeyValues: array of string; wQuoted:Boolean=False;
               AConnection:TZConnection=nil):string;
var
  ArDB: TArDB;

implementation

uses Variants, IniFiles, Forms, Windows, ArFunctions, ZDbcIntfs, TypeUnit;

{$R *.dfm}
//temporary --------------------------------
function ExecQry(SQLText: string; AConnection:TZConnection=nil): Boolean;
begin Result := ExecQuery (SQLText, AConnection); end;

function DoInsert (ATable:string; AFields, AValues:array of string;
               wQuoted:Boolean=False; AConnection:TZConnection=nil):string;
begin
     with TArSQL.Create do
     try
          ClearParams;
          Quoted := wQuoted;
          TableName := ATable;
          SetFieldNames(AFields);
          AddFieldValues(AValues);
          ExecQuery (SQLInsert, AConnection);
     finally
          Free;
     end;
end;

function DoUpdate (ATable:string; AFields, AValues:array of string;
               AKeyFields,AKeyValues:array of string;wQuoted:Boolean=False;
               AConnection:TZConnection=nil):string;
begin
     with TArSQL.Create do
     try
          ClearParams;
          Quoted := wQuoted;
          TableName := ATable;
          SetFieldNames(AFields);
          AddFieldValues(AValues);
          SetKeyFieldNames(AKeyFields);
          SetKeyFieldValues(AKeyValues);
          ExecQuery (SQLUpdate, AConnection);
     finally
          Free;
     end;
end;

function DoDelete (ATable:string;
               AKeyFields, AKeyValues: array of string; wQuoted:Boolean=False;
               AConnection:TZConnection=nil):string;
begin
     with TArSQL.Create do
     try
          ClearParams;
          Quoted := wQuoted;
          TableName := ATable;
          SetKeyFieldNames(AKeyFields);
          SetKeyFieldValues(AKeyValues);
          ExecQuery (SQLDelete, AConnection);
     finally
          Free;
     end;
end;

{ ========================================= }
procedure DoHandleException(Sender: TObject; E: Exception);
begin
     if not DBHandleException (Sender, E) then
     begin
          //if (E is EAccessViolation) then Abort else 
		  Peringatan(E.Message);
          {
		  if (Sender is TForm) and (fsModal in TForm(Sender).FormState) then
               Peringatan(E.Message) Else Peringatan(E.Message, True); }
          //ShowException(ExceptObject, ExceptAddr);
     end;
end;

function DBHandleException (Sender: TObject; E: Exception):Boolean;
var sMsg : string;
begin
     Result := (E is EZSQLException) or (E is EZSQLWarning) or (E is EZSQLThrowable)
               or (E is EZDatabaseError)or (E is EDatabaseError)or (E is EUpdateError);
     sMsg := '';
     if Result then
     //if (E is EZSQLException) or (E is EZSQLWarning) or (E is EZSQLThrowable) then
          case EZSQLException(e).ErrorCode of
          18, 2003  : sMsg := 'Tidak dapat terkonesi dengan database';
          //26  : ;//DBWarning ('Dibatalkan');
          1048: sMsg := 'Data masih kosong'#13#10+'Pesan : '+E.Message;
          1062: sMsg := 'Terjadi duplikasi data'#13#10+'Pesan : '+E.Message;
          1451: sMsg := 'Data tidak dapat dihapus karena sudah digunakan dalam proses';
          2006, 2013, 1317: if (Sender is TDataSet)or(Sender is TZAbstractRODataset) then
                begin
                    if Assigned(TZAbstractRODataset(Sender).Connection) then
                    begin
                         //TZAbstractRODataset(Sender).Connection.Connected := False;
                         TZAbstractRODataset(Sender).Connection.Reconnect;
                         if TZAbstractRODataset(Sender).Connection.Connected then
                              TDataSet(Sender).Open
                         else sMsg := 'Database terputus, sedang mencoba koneksi ulang';
                    end;
                    //Peringatan('Database terputus, sedang mencoba koneksi ulang');
                end;
          else sMsg := 'Terjadi kesalahan '+#13#10+
                       'Pesan : '+E.Message+#13#10+
                       'Kode : '+IntToStr(EZSQLException(e).ErrorCode)
                       ;
          end;
     if sMsg <> '' then
     begin
          Peringatan(sMsg);
          {if (Sender is TForm) and (fsModal in TForm(Sender).FormState) then
               Peringatan(sMsg) else Peringatan(sMsg, True);  }
     end;
     {else if (E is EZSQLWarning) then
          DBWarning ('Terjadi kesalahan '+#13#10+'Pesan : '+E.Message+#13#10+
                            'Kode : '+IntToStr(EZSQLWarning(e).ErrorCode))
     else if (E is EZSQLThrowable) then
          DBWarning ('Terjadi kesalahan '+#13#10+'Pesan : '+E.Message+#13#10+
                            'Kode : '+IntToStr(EZSQLThrowable(e).ErrorCode))
     else if (E is EZDatabaseError) or (E is EDatabaseError) then
          DBWarning ('Terjadi kesalahan '+#13#10+'Pesan : '+E.Message+#13#10+
                            'Kode : '+IntToStr(EZDatabaseError(e).ErrorCode))
     else if (E is EUpdateError) then
          DBWarning ('Terjadi kesalahan '+#13#10+'Pesan : '+E.Message+#13#10+
                            'Kode : '+IntToStr(EUpdateError(e).ErrorCode))
     };
end;

function ROQry(s: string; AConnection:TZConnection=nil):TZReadOnlyQuery;
begin
     Result := nil;
     if (not Assigned (ArDB.FDBCon))and(not Assigned(AConnection)) then exit;
     if AConnection = nil then AConnection := ArDB.FDBCon;
     Result := TZReadOnlyQuery.Create(nil);
     with Result do
     begin
          Connection := AConnection;
          DisableControls;
          Close;
          SQL.Text := s;
          if s <> '' then Open;
     end;
end;

function Query(s: string; AConnection:TZConnection=nil):TZQuery;
begin
     Result := nil;
     if (not Assigned (ArDB.FDBCon))and(not Assigned(AConnection)) then exit;
     if AConnection = nil then AConnection := ArDB.FDBCon;

     Result := TZQuery.Create(nil);
     with Result do
     begin
          Connection := AConnection;
          DisableControls;
          Close;
          SQL.Text := s;
          if s <> '' then Open;
     end;
end;

function ExecQuery(SQLText: string; AConnection:TZConnection=nil): Boolean;
begin
     Result := False;
     if (not Assigned (ArDB.FDBCon))and(not Assigned(AConnection)) then exit;
     if AConnection = nil then AConnection := ArDB.FDBCon;

     AConnection.ExecuteDirect(SQLText);
     Result := True;
end;

function ExecScript(SQLScript: string; ADelimiter:string=';'; AConnection:TZConnection=nil): Boolean;
begin
     Result := False;
     if (not Assigned (ArDB.FDBCon))and(not Assigned(AConnection)) then exit;
     if AConnection = nil then AConnection := ArDB.FDBCon;

     with TZSQLProcessor.Create (AConnection) do
     try
          Connection := AConnection;
          DelimiterType := dtDelimiter;
          Delimiter := ADelimiter;
          Script.Text := SQLScript;
          Execute;
          Result := True;
     finally
          Free;
     end;
end;

function StoredProc (ASPName :string;AParams:array of Variant;AConnection:TZConnection=nil):TZStoredProc;
var i,n : Word;
begin
     Result := nil;
     if (not Assigned (ArDB.FDBCon))and(not Assigned(AConnection)) then exit;
     if AConnection = nil then AConnection := ArDB.FDBCon;

     Result := TZStoredProc.Create(nil);
     with Result do
     begin
          Connection := AConnection;
          DisableControls;
          Close;
          StoredProcName := ASPName;
          n := Length(AParams);
          if n > 0 then
          for i := 0 to Length(AParams) -1 do
               Params[i].Value := AParams[i];
          if ASPName <> '' then ExecProc;
     end;
end;

function ExecSP (ASPName :string;AParams:array of Variant;AConnection:TZConnection=nil):Boolean;
begin
     Result := False;
     if (not Assigned (ArDB.FDBCon))and(not Assigned(AConnection)) then exit;
     if AConnection = nil then AConnection := ArDB.FDBCon;

     if Assigned(AConnection) then
     with StoredProc(ASPName, AParams, AConnection) do
     try
          Result := True;
     finally
          Close; Free;
     end;
end;

function GetSPData (ASPName :string;AParams:array of Variant;AFieldType:TFieldType=ftVariant;AConnection:TZConnection=nil):Variant;
var i : Word;
begin
     if (not Assigned (ArDB.FDBCon))and(not Assigned(AConnection)) then exit;
     if AConnection = nil then AConnection := ArDB.FDBCon;
     case AFieldType of
     ftString : Result := '';
     ftBoolean : Result := False;
     ftDate, ftDateTime, ftTime : Result := 0;
     ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftLargeint : Result := 0;
     else Result := null;
     end;
     with StoredProc(ASPName, AParams, AConnection) do
     try
          First;
          if not Eof then
          begin
               if Fields.Count = 1 then
                    case AFieldType of
                    ftString  : Result := Fields[0].AsString;
                    ftBoolean : Result := Fields[0].AsBoolean;
                    ftSmallint, ftInteger, ftWord, ftLargeint : Result := Fields[0].AsInteger;
                    ftFloat, ftCurrency : Result := Fields[0].AsFloat;
                    ftDate, ftDateTime, ftTime : Result := Fields[0].AsDateTime;
                    else Result := Fields[0].Value;
                    end
               else if Fields.Count > 1 then
               begin
                    Result := VarArrayCreate([0, Fields.Count-1], varVariant);
                    for I := 0 to Fields.Count -1 do
                    case AFieldType of
                    ftString  : Result[I] := Fields[I].AsString;
                    ftBoolean : Result[I] := Fields[I].AsBoolean;
                    ftSmallint, ftInteger, ftWord, ftLargeint : Result[I] := Fields[I].AsInteger;
                    ftFloat, ftCurrency : Result[I] := Fields[I].AsFloat;
                    ftDate, ftDateTime, ftTime : Result[I] := Fields[I].AsDateTime;
                    else Result[I] := Fields[I].Value;
                    end;
               end;
          end;
     finally
          Close;
          Free;
     end;
end;

function GetQryData (ASQLText:string;AFieldType:TFieldType=ftVariant;AConnection:TZConnection=nil):Variant;
var i : Word;
begin
     if (not Assigned (ArDB.FDBCon))and(not Assigned(AConnection)) then exit;
     if AConnection = nil then AConnection := ArDB.FDBCon;
     case AFieldType of
     ftString : Result := '';
     ftBoolean : Result := False;
     ftDate, ftDateTime, ftTime : Result := 0;
     ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftLargeint : Result := 0;
     else Result := null;
     end;
     with ROQry(ASQLText, AConnection) do
     try
          First;
          if not Eof then
          begin
               if Fields.Count = 1 then
                    case AFieldType of
                    ftString  : Result := Fields[0].AsString;
                    ftBoolean : Result := Fields[0].AsBoolean;
                    ftSmallint, ftInteger, ftWord, ftLargeint : Result := Fields[0].AsInteger;
                    ftFloat, ftCurrency : Result := Fields[0].AsFloat;
                    ftDate, ftDateTime, ftTime : Result := Fields[0].AsDateTime;
                    else Result := Fields[0].Value;
                    end
               else if Fields.Count > 1 then
               begin
                    Result := VarArrayCreate([0, Fields.Count-1], varVariant);
                    for I := 0 to Fields.Count -1 do
                    case AFieldType of
                    ftString  : Result[I] := Fields[I].AsString;
                    ftBoolean : Result[I] := Fields[I].AsBoolean;
                    ftSmallint, ftInteger, ftWord, ftLargeint : Result[I] := Fields[I].AsInteger;
                    ftFloat, ftCurrency : Result[I] := Fields[I].AsFloat;
                    ftDate, ftDateTime, ftTime : Result[I] := Fields[I].AsDateTime;
                    else Result[I] := Fields[I].Value;
                    end;
               end;
          end;
     finally
          Close;
          Free;
     end;
end;

procedure CloseAllDatasets(AOwner: TComponent);
var i : Word;
begin
     for i := 0 to AOwner.ComponentCount -1 do
     if AOwner.Components[i] is TZQuery then
          TZQuery(AOwner.Components[i]).Close
     else if AOwner.Components[i] is TZTable then
          TZTable(AOwner.Components[i]).Close;
end;

procedure ShowData (ADataset:TDataset;APointTo:TPointTo=ptBookmark);
var b : TBookmark;
    v : Variant;
begin
     with ADataset do
     try
          //DisableControls;
          if Active then
               case APointTo of
               ptBookmark: b := GetBookmark;
               ptLocate  : v := Fields[0].Value;
               end;
          try
		     if Assigned(TZAbstractDataset(ADataset).Connection) then
               with TZAbstractConnection(TZAbstractDataset(ADataset).Connection) do
               if not Ping then Reconnect;

               if Active then Refresh else Open;
          except
               on E : Exception do DBHandleException (ADataset, E);
          end;
          case APointTo of
          ptBookmark:
			begin
               if BookmarkValid(b) then ADataset.GotoBookmark (b);
               ADataset.FreeBookmark(b);
            end;//if b <> '' then Bookmark := b;
          ptLocate  : Locate (Fields[0].FieldName, Fields[0].Value, []);
          ptFirst   : if Active then First;
          end;
     finally
          //b := '';
          //EnableControls;
     end;
end;

procedure SortByFieldName (AQry:TZAbstractRODataset;AFieldName:string);
begin
     with AQry do
     begin
          if SortedFields <> AFieldName then
               SortedFields := AFieldName
          else SortType := TSortType ((Integer(SortType)+1)mod 2);
     end;
end;

procedure SortByColumn (const Column:TColumn);
begin
     SortByFieldName(TZQuery(Column.Grid.DataSource.DataSet), Column.FieldName);
end;

procedure SetDisplayLabel(const ADataset:TDataset; ALabels: array of string);
var i : Word;
begin
     for i := 0 to Length(ALabels)-1 do
     if Assigned (ADataset.Fields[i]) then
          ADataset.Fields[i].DisplayLabel := ALabels[i];
end;

{ TArDB }
// ----- private --------------------------------------------//
function TArDB.GetConnected:Boolean;
begin
     Result := FDBCon.Connected;
end;

// ----- public --------------------------------------------//
function TArDB.LoadDBSetFromINI(ASection:string='database';AConnection:TZConnection=nil):Boolean;
var INI : TINIFile;
begin
     Result := False;
     if (not Assigned (ArDB.FDBCon))and(not Assigned(AConnection)) then exit;
     if AConnection = nil then AConnection := ArDB.FDBCon;

     try
          AConnection.Port    := 3306;
          INI := TIniFile.Create (FPathApp+FFileINI);
          if FileExists (FPathApp+FFileINI) then
          begin
               AConnection.HostName:= ini.ReadString(ASection, FIniServer, '');
               AConnection.User    := {EnDeCrypt}(ini.ReadString(ASection, FIniUsername, ''));
               AConnection.Password:= EnDeCrypt(ini.ReadString(ASection, FIniPassword, ''));
//               AConnection.Password:= (ini.ReadString(ASection, FIniPassword, ''));
               AConnection.Database:= ini.ReadString(ASection, FIniDatabase, '');
               AConnection.Port    := ini.ReadInteger(ASection, FIniPort, 3306);

               Result := AConnection.Database <> '';
          end;
     finally
          if Assigned(INI) then FreeAndNil(INI);
     end;
end;

procedure TArDB.SaveDBSetToINI(fn:string='';ASection:string='database';AConnection:TZConnection=nil);
var INI : TINIFile;
begin
     if (not Assigned (ArDB.FDBCon))and(not Assigned(AConnection)) then exit;
     if AConnection = nil then AConnection := ArDB.FDBCon;
     try
          if fn = '' then
               INI := TIniFile.Create (FPathApp+FFileINI)
          else INI := TIniFile.Create (fn);

          ini.WriteString (ASection, FIniServer,  AConnection.HostName);
          ini.WriteString (ASection, FIniUsername,{EnDeCrypt}(AConnection.User));
          ini.WriteString (ASection, FIniPassword,EnDeCrypt(AConnection.Password));
//          ini.WriteString (ASection, FIniPassword, AConnection.Password);
          ini.WriteString (ASection, FIniDatabase,AConnection.Database);
          ini.WriteInteger(ASection, FIniPort,    AConnection.Port);
     finally
          if Assigned(INI) then FreeAndNil(INI);
     end;
end;

function TArDB.GetData (SQLText:string; AFieldType:TFieldType=ftVariant; AConnection:TZConnection=nil):Variant;
var i : Word;
begin
     if (not Assigned (ArDB.FDBCon))and(not Assigned(AConnection)) then exit;
     if AConnection = nil then AConnection := ArDB.FDBCon;

     case AFieldType of
     ftString : Result := '';
     ftBoolean : Result := False;
     ftDate, ftDateTime, ftTime : Result := 0;
     ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftLargeint : Result := 0;
     else Result := null;
     end;
     with FROQuery do
     try
          Connection := AConnection;
          DisableControls;
          Close;
          SQL.Text := SQLText;
          Open;
          First;
          if not Eof then
          begin
               if Fields.Count = 1 then
                    case AFieldType of
                    ftString  : Result := Fields[0].AsString;
                    ftBoolean : Result := Fields[0].AsBoolean;
                    ftSmallint, ftInteger, ftWord, ftLargeint : Result := Fields[0].AsInteger;
                    ftFloat, ftCurrency : Result := Fields[0].AsFloat;
                    ftDate, ftDateTime, ftTime : Result := Fields[0].AsDateTime;
                    else Result := Fields[0].Value;
                    end
               else if Fields.Count > 1 then
               begin
                    Result := VarArrayCreate([0, Fields.Count-1], varVariant);
                    for I := 0 to Fields.Count -1 do
                    case AFieldType of
                    ftString  : Result[I] := Fields[I].AsString;
                    ftBoolean : Result[I] := Fields[I].AsBoolean;
                    ftSmallint, ftInteger, ftWord, ftLargeint : Result[I] := Fields[I].AsInteger;
                    ftFloat, ftCurrency : Result[I] := Fields[I].AsFloat;
                    ftDate, ftDateTime, ftTime : Result[I] := Fields[I].AsDateTime;
                    else Result[I] := Fields[I].Value;
                    end;
               end;
          end;
     finally
          Close;
          EnableControls;
     end;
end;

function TArDB.GetTimeServer(AConnection:TZConnection=nil): TDateTime;
begin
     FServerTime := GetData ('select current_timestamp',ftDateTime,AConnection);
     Result := FServerTime;
end;

function TArDB.Connect(AConnection:TZConnection=nil):Boolean;
begin
     Result := False;
     if (not Assigned (ArDB.FDBCon))and(not Assigned(AConnection)) then exit;
     if AConnection = nil then AConnection := ArDB.FDBCon;
     AConnection.Connect;
     Result := AConnection.Connected;
end;

procedure TArDB.Disconnect(AConnection:TZConnection=nil);
begin
     if (not Assigned (ArDB.FDBCon))and(not Assigned(AConnection)) then exit;
     if AConnection = nil then AConnection := ArDB.FDBCon;
     AConnection.Disconnect;
end;

function TArDB.Connect(dbserver, dbuser, dbpass, dbname: string;
  dbport: integer;AConnection:TZConnection=nil): Boolean;
begin
     Result := False;
     if (not Assigned (ArDB.FDBCon))and(not Assigned(AConnection)) then exit;
     if AConnection = nil then AConnection := ArDB.FDBCon;
     with AConnection do
     begin
          Disconnect;
          HostName  := dbserver;
          Port      := dbport;
          User      := dbuser;
          Password  := dbpass;
          Database  := dbname;
          Connect;
          Result := AConnection.Connected;
     end;
end;

// ----- component event --------------------------------------------//
procedure TArDB.FTimerTimer(Sender: TObject);
begin
     //FServerTime   := FServerTime + (1 / 24 / 60 /60);
     FServerTime   := AddSeconds(FServerTime, 1);
end;

procedure TArDB.FDBConAfterConnect(Sender: TObject);
begin
     //TZConnection(Sender).ExecuteDirect('set GLOBAL group_concat_max_len = 2048');  //notaris only
     TZConnection(Sender).ExecuteDirect('set GLOBAL group_concat_max_len = 1024');
     GetTimeServer;
end;

procedure TArDB.DataModuleCreate(Sender: TObject);
//var Connected : Boolean;
begin
     FServerTime := Now;
     FTimer.Enabled := True;

     FPathApp       := ExtractFilePath(Application.ExeName);
     FFileIni       := FILE_INI;
     //FSection       := 'database';
     FIniServer     := 'server';
     FIniDatabase   := 'databasename';
     FIniUsername   := 'username';
     FIniPassword   := 'password';
     FIniPort       := 'port';
     //LoadDBSetFromINI;
     {
     repeat
          try
               Connected := KonekDatabase (cnDB, Server, UserDB, PassDB, DBName, PortDB);
          except
               on e : exception do HandleError (e);
          end;
     until Connected or
           (not (Konfirmasi ('Ganti setting database kemudian mencoba terkoneksi dengan database lagi?')and ShowSettingDB));

     if cnDB.Connected then
     begin
          Setting := LoadSettings;
          CheckForUpdate;
     end else
     begin
          Application.Terminate;
          Abort;
     end; }
end;

procedure TArDB.DataModuleDestroy(Sender: TObject);
begin
     if FDBCon.Connected then
     begin
          //CloseAllDatasets(Self);
          FDBCon.Disconnect;
     end;
end;

{ TArSQL }
function TArSQL.AddFieldValues(Values: array of string): Integer;
var i : Word;
begin
     FValueCount := Length(FValues)+1;
     SetLength(FValues, FValueCount);
     FValues[FValueCount-1] := TStringList.Create;
     for i := 0 to Length(Values)-1 do
          FValues[FValueCount-1].Add(Values[i]);
     Result := FValueCount-1;
end;

function TArSQL.AddFieldValues(Values: TStrings): Integer;
begin
     FValueCount := Length(FValues)+1;
     SetLength(FValues, FValueCount);
     FValues[FValueCount-1] := TStringList.Create;
     FValues[FValueCount-1].Text := Values.Text;
     Result := FValueCount-1;
end;

procedure TArSQL.ClearFieldValues;
begin
     while FValueCount > 0 do
          RemoveFieldValues(FValueCount-1);
end;

procedure TArSQL.ClearParams;
begin
     FTableName := '';
     FFields.Clear;
     FKeyFields.Clear;
     FKeyValues.Clear;
     FFieldOffset.Clear;
     ClearFieldValues;
     FQuoted := False;
     FWhenDuplicate := wdAbort;
     FCondition := '';
     FSQLSelect := '';
end;

constructor TArSQL.Create;
begin
     inherited Create;
     FFields := TStringList.Create;
     FKeyFields := TStringList.Create;
     FKeyValues := TStringList.Create;
     FFieldOffset := TStringList.Create;
end;

destructor TArSQL.Destroy;
begin
     if Assigned (FValues) then ClearFieldValues;
     if Assigned (FFields) then FreeAndNil(FFields);
     if Assigned (FKeyFields) then FreeAndNil(FKeyFields);
     if Assigned (FKeyValues) then FreeAndNil(FKeyValues);
     if Assigned (FFieldOffset) then FreeAndNil(FFieldOffset);
  inherited;
end;

function TArSQL.ReadValues(Index: Integer): TStrings;
begin
     Result := FValues[Index];
end;

procedure TArSQL.RemoveFieldValues(Index: Integer);
var i : Word;
begin
     Assert(FValueCount > 0);
     Assert(Index < FValueCount);
     for i := Index + 1 to FValueCount - 1 do
          FValues[i - 1] := FValues[i];

     FValueCount := FValueCount -1;
     SetLength(FValues, FValueCount);
end;

procedure TArSQL.SetFieldNames(Values: array of string);
var i : word;
begin
     FFields.Clear;
     if Length(Values) > 0 then
     for i := 0 to Length(Values)-1 do
          FFields.Add(Values[i]);
end;

procedure TArSQL.SetFieldOffset(Values: array of string);
var i : word;
begin
     FFieldOffset.Clear;
     if Length(Values) > 0 then
     for i := 0 to Length(Values)-1 do
          FFieldOffset.Add(Values[i]);
end;

procedure TArSQL.SetFieldValues(Index: Integer; Values: array of string);
var i : Word;
begin
     if Assigned (FValues[Index]) then
     begin
          FValues[Index].Clear;
          if Length(Values) > 0 then
          for i := 0 to Length(Values)-1 do
               FValues[Index].Add(Values[i]);
     end;
end;

procedure TArSQL.SetKeyFieldNames(Values: array of string);
var i : word;
begin
     FKeyFields.Clear;
     if Length(Values) > 0 then
     for i := 0 to Length(Values)-1 do
          FKeyFields.Add(Values[i]);
end;

procedure TArSQL.SetKeyFieldValues(Values: array of string);
var i : word;
begin
     FKeyValues.Clear;
     if Length(Values) > 0 then
     for i := 0 to Length(Values)-1 do
          FKeyValues.Add(Values[i]);
end;

function TArSQL.SQLDelete: string;
var AWhere : string;
    i, ln : Word;
begin
     Result := '';
     if (trim(FTableName)='') then Exit;
     if (FKeyFields.Count <> FKeyValues.Count) then exit;

     AWhere := '';  ln := 0;
     for i := 0 to FKeyFields.Count -1 do
     begin
          if ln > 50 then begin AWhere := AWhere + #13#10#9; ln := 0; end;
          if AWhere <> ''  then AWhere := AWhere + ' AND ';

          if (fQuoted)and(CompareText('null',FKeyValues.Strings[i]) <> 0) then
               AWhere := AWhere+ FKeyFields.Strings[i]+'='+QuotedStr(FKeyValues.Strings[i])
          else
               AWhere := AWhere+ FKeyFields.Strings[i]+'='+FKeyValues.Strings[i] ;
          ln := ln + Length(FKeyFields.Strings[i]+'='+FKeyValues.Strings[i]);
     end;
     if AWhere <> '' then AWhere := #13#10+ 'WHERE '+AWhere;

     Result := 'DELETE FROM '+FTableName+' '+AWhere+#13#10#9+' '+FCondition;
     //AFlag := AFlag + [qfSQLOnly]; Peringatan (Result);
     //if not (qfSQLOnly in AFlag) then ExecQuery (Result);
end;

function TArSQL.SQLDelete(ATable: string; AKeyFields, AKeyValues: array of string;
               ACondition:string='';AQuoted:Boolean=False): string;
begin
     ClearParams;
     FTableName := ATable;
     SetKeyFieldNames(AKeyFields);
     SetKeyFieldValues(AKeyValues);
     FCondition := ACondition;
     FQuoted := AQuoted;
     Result := SQLDelete;
end;

function TArSQL.SQLInsert: string;
var AValues, AFields, AUpdates, s : string;
     i, j, ln : Word;
begin
     Result := '';
     if (trim(FTableName)='')or(FFields.Count=0)or(FValues=nil) then Exit;

     AValues := '';
     for j := 0 to Length(FValues)-1 do
     with FValues[j] do
     begin
          if AValues <> '' then AValues := AValues+', '#13#10#9;

          s := ''; ln := 0;
          for i := 0 to Count -1 do
          begin
               if s <> '' then s := s + ', ';
               if ln > 50 then begin s := s + #13#10#9; ln := 0; end;
               if (FQuoted)and(CompareText('null',Strings[i]) <> 0) then
                    s := s + QuotedStr(Strings[i]) else s := s + Strings[i];
               ln := ln + Length(Strings[i]);
          end;
          if s <> '' then AValues := AValues+'('+s+')';
     end;

     AFields := '';
     for i := 0 to FFields.Count -1 do
     begin
          if AFields <> '' then AFields := AFields + ', ';
          AFields := AFields + FFields.strings[i];
     end;
     if AFields <> '' then AFields := '('+AFields+')';

     AUpdates := '';
     if (FWhenDuplicate in [wdUpdate, wdAddValue]) then
     begin
          ln := 0;
          for i := 0 to FFields.Count-1 do
          if FFieldOffset.IndexOf(FFields[i]) = -1 then
          begin
               //Peringatan (FFields[i]+' '+FFieldsOffset.Text);
               if AUpdates <> '' then AUpdates := AUpdates + ', ';
               if ln > 50 then begin AUpdates := AUpdates + #13#10#9; ln := 0; end;
               if (FWhenDuplicate = wdUpdate) then
                    AUpdates := AUpdates +FFields.Strings[i]+'=VALUES('+FFields.Strings[i]+')'
               else if (FWhenDuplicate = wdAddValue) then
                    AUpdates := AUpdates + FFields.Strings[i]+'='+FFields.Strings[i]+'+VALUES('+FFields.Strings[i]+')';
               ln := ln + Length(FFields.Strings[i]+'=VALUES('+FFields.Strings[i]+')');
          end;
          if AUpdates <> '' then
               AUpdates := #13#10+'ON DUPLICATE KEY UPDATE '+#13#10#9+AUpdates;
     end;

     if FWhenDuplicate = wdIgnore then Result := 'INSERT IGNORE ' else Result := 'INSERT ';
     Result := Result + 'INTO '+FTableName+' '+#13#10#9+AFields+#13#10+
               ' VALUES '+#13#10#9+AValues+AUpdates;

     //AFlag := AFlag + [qfSQLOnly]; Peringatan (Result);
     //if not (qfSQLOnly in AFlag) then ExecQuery (Result);
end;

function TArSQL.SQLInsertSelect: string;
var AFields, AUpdates : string;
     i, ln : Word;
begin
     Result := '';
     if (trim(FTableName)='')or(FFields.Count=0) then Exit;

     AFields := '';
     for i := 0 to FFields.Count -1 do
     begin
          if AFields <> '' then AFields := AFields + ', ';
          AFields := AFields + FFields.strings[i];
     end;
     if AFields <> '' then AFields := '('+AFields+')';

     AUpdates := '';
     if (FWhenDuplicate in [wdUpdate, wdAddValue]) then
     begin
          ln := 0;
          for i := 0 to FFields.Count-1 do
          if FFieldOffset.IndexOf(FFields[i]) = -1 then
          begin
               //Peringatan (FFields[i]+' '+FFieldsOffset.Text);
               if AUpdates <> '' then AUpdates := AUpdates + ', ';
               if ln > 50 then begin AUpdates := AUpdates + #13#10#9; ln := 0; end;

               if (FWhenDuplicate = wdUpdate) then
                    AUpdates := AUpdates +FTableName+'.'+FFields.Strings[i]+'=VALUES('+FTableName+'.'+FFields.Strings[i]+')'
               else if (FWhenDuplicate = wdAddValue) then
                    AUpdates := AUpdates + FTableName+'.'+FFields.Strings[i]+'='+
                                        FTableName+'.'+FFields.Strings[i]+'+VALUES('+FTableName+'.'+FFields.Strings[i]+')';
               ln := ln + Length(FTableName+'.'+FFields.Strings[i]+'=VALUES('+FTableName+'.'+FFields.Strings[i]+')');
          end;
          if AUpdates <> '' then
               AUpdates := #13#10+'ON DUPLICATE KEY UPDATE '+#13#10#9+AUpdates;
     end;

     if FWhenDuplicate = wdIgnore then Result := 'INSERT IGNORE ' else Result := 'INSERT ';
     Result := Result + 'INTO '+FTableName+' '+#13#10#9+AFields+#13#10+
               FSQLSelect+#13#10+ AUpdates;

     //AFlag := AFlag + [qfSQLOnly]; Peringatan (Result);
     //if not (qfSQLOnly in AFlag) then ExecQuery (Result);
end;

function TArSQL.SQLUpdate(ATable: string; AFields, AValues, AKeyFields,
               AKeyValues: array of string; AQuoted:Boolean=False;
               AWhenDuplicate:TWhenDuplicate=wdAbort): string;
begin
     ClearParams;
     FTableName := ATable;
     SetFieldNames(AFields);
     AddFieldValues(AValues);
     SetKeyFieldNames(AKeyFields);
     SetKeyFieldValues(AKeyValues);
     FQuoted := AQuoted;
     FWhenDuplicate := AWhenDuplicate;
     Result := SQLUpdate;
end;

function TArSQL.SQLUpdate: string;
var AUpdates, AWhere : string;
    i, ln : Word;
begin
     Result := '';
     if (trim(FTableName)='')or(FFields.Count=0)or(FFields.Count<>FValues[0].Count) then Exit;
     AUpdates := ''; ln := 0;
     for i := 0 to FFields.Count -1 do
     begin
          if AUpdates <> '' then AUpdates := AUpdates + ', ';
          if ln > 50 then  begin AUpdates := AUpdates + #13#10#9; ln := 0; end;

          if (FQuoted)and(CompareText('null',FValues[0].Strings[i]) <> 0) then
               AUpdates := AUpdates+FFields.Strings[i]+'='+QuotedStr(FValues[0].Strings[i])
          else
               AUpdates := AUpdates+FFields.Strings[i]+'='+FValues[0].Strings[i] ;
          ln := ln + Length(FFields.Strings[i]+'='+FValues[0].Strings[i]);
     end;

     if (FKeyFields.Count <> FKeyValues.Count) then exit;
     AWhere := '';  ln := 0;
     if FKeyFields.Count > 0 then
     for i := 0 to FKeyFields.Count -1 do
     begin
          if AWhere <> ''  then AWhere := AWhere + ' AND ';
          if ln > 50 then begin AWhere := AWhere + #13#10#9; ln := 0; end;

          if (FQuoted)and(CompareText('null',FKeyFields.Strings[i]) <> 0) then
               AWhere := AWhere+FKeyFields.Strings[i]+'='+QuotedStr(FKeyValues.Strings[i])
          else
               AWhere := AWhere+FKeyFields.Strings[i]+'='+FKeyValues.Strings[i] ;
          ln := ln + Length(FKeyFields.Strings[i]+'='+FKeyValues.Strings[i]);
     end;
     if AWhere <> '' then AWhere := #13#10+ 'WHERE '+AWhere;

     if FCondition <> '' then AWhere := #13#10+ FCondition;

     Result := 'UPDATE '+FTableName+' SET '#13#10#9+AUpdates+AWhere;
end;

procedure TArSQL.WriteValues(Index: Integer; const Value: TStrings);
begin
     if Index < FValueCount then
          FValues[Index] := Value;
end;

function TArDB.Backup(FBackup, dbserver, dbuser, dbpass, dbname: string;
  dbport: integer; Compressed: Boolean): Boolean;
var fList : TStringList;
    TempDir, FTemp: string;
begin
     Result := False;
     TempDir := GetEnvVarValue  ('TEMP');
     if not Compressed then FTemp := FBackup else FTemp := TempDir+'\backupdatabase.sql';

     try
          ShellExecute_AndWait('mysqldump',
                               ' --host='+dbserver+
                               ' --user='+dbuser+
                               ' --password='+dbpass+
                               ' --port='+IntToStr(dbport)+
                               ' '+dbname+ //--databases
                               ' --routines --quick --single-transaction --skip-comments '+
                               //' --no-create-db '+
                               ' --result-file="'+FTemp+'"'
                               );
                               //' --no-autocommit '+ //  --compaq  --no-create-db
                               // --no-data  &&  --no-create-info
                               //--disable-keys isam only
         if Compressed then
         begin
              fList := TStringList.Create;
              fList.Add(FTemp);
              CompressFiles(fList, FBackup+'.geb');
         end;
         Result := True;
     Finally
         if assigned(fList) then FreeAndNil(fList);
         if Compressed and FileExists (FTemp) then DeleteFile(PChar(FTemp));
     end;
end;

function TArDB.Restore(FRestore, dbserver, dbuser, dbpass, dbname: string;
                         dbport: Integer): Boolean;
var TempDir, FTemp : string;
     Compressed : Boolean;
begin
     Result := False;
     if (CompareText (ExtractFileExt(FRestore), '.sql') <> 0)
          and (CompareText (ExtractFileExt(FRestore), '.geb') <> 0) then Exit;

     TempDir := GetEnvVarValue  ('TEMP');
     FTemp := TempDir+'\backupdatabase.sql';
     Compressed := CompareText (ExtractFileExt(FRestore), '.sql') <> 0;
     try
         if not Compressed then
               CopyFile(PChar(fRestore), PChar(FTemp), False)
         else DecompressFiles(fRestore, TempDir);

         ShellExecute_AndWait('mysql',
                               ' --host='+dbserver+
                               ' --user='+dbuser+
                               ' --password='+dbpass+
                               ' --port='+IntToStr(dbport)+
                               ' -e "drop database if exists '+dbname+'" '
                               );
         ShellExecute_AndWait('mysql',
                               ' --host='+dbserver+
                               ' --user='+dbuser+
                               ' --password='+dbpass+
                               ' --port='+IntToStr(dbport)+
                               ' -e "create database if not exists '+dbname+'" '
                               );
         ShellExecute_AndWait('mysql',
                               ' --host='+dbserver+
                               ' --user='+dbuser+
                               ' --password='+dbpass+
                               ' --port='+IntToStr(dbport)+
                               ' '+dbname+   //--databases
                               ' -e "source '+FTemp+'" '
                               );
         Result := True;
     Finally
         if Compressed and FileExists (FTemp) then DeleteFile(PChar(FTemp));
     end;
end;

function TArDB.Backup(FBackup: string;Compressed: Boolean=False;AConnection:TZConnection=nil): Boolean;
begin
     if (not Assigned (ArDB.FDBCon))and(not Assigned(AConnection)) then exit;
     if AConnection = nil then AConnection := ArDB.FDBCon;

     with AConnection do
     Result := Backup(FBackup, HostName, User, Password, Database, Port, Compressed);
end;

function TArDB.Restore(FRestore: string;Compressed: Boolean=False;AConnection:TZConnection=nil): Boolean;
begin
     if (not Assigned (ArDB.FDBCon))and(not Assigned(AConnection)) then exit;
     if AConnection = nil then AConnection := ArDB.FDBCon;

     with AConnection do
     Result := Restore(FRestore, HostName, User, Password, Database, Port);
end;

procedure TArDB.FAkConAfterConnect(Sender: TObject);
begin
     TZConnection(Sender).ExecuteDirect('set GLOBAL group_concat_max_len = 1024');
end;

end.