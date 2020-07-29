unit SettingDBUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogUnit, StdCtrls, Buttons, ExtCtrls, ZSqlProcessor, Mask,
  //JvExMask, JvToolEdit,
  ImgList, AdvToolBtn, System.ImageList;

type
  TfrmSettingDB = class(TfrmDialog)
    procDB: TZSQLProcessor;
    chkServerDefault: TCheckBox;
    grpKeterangan: TGroupBox;
    mmoKeterangan: TMemo;
    btnFillDemoData: TBitBtn;
    btnEmptyData: TBitBtn;
    grpStatus: TGroupBox;
    mmoStatus: TMemo;
    grpBackupRestore: TGroupBox;
    lblDirectory: TLabel;
    odlgRestore: TOpenDialog;
    pnlSetDB: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    lbl4: TLabel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    edtDatabase: TEdit;
    edtServer: TEdit;
    edtPort: TEdit;
    btnReset: TBitBtn;
    btnBackupData: TAdvToolButton;
    btnRestoreData: TAdvToolButton;
    btnTestKoneksi: TAdvToolButton;
    btnBuatDB: TAdvToolButton;
    btnFillMasterData: TAdvToolButton;
    procedure btnOKClick(Sender: TObject);
    procedure procDBError(Processor: TZSQLProcessor;
      StatementIndex: Integer; E: Exception;
      var ErrorHandleAction: TZErrorHandleAction);
    procedure btnBuatDBClick(Sender: TObject);
    procedure edtPortKeyPress(Sender: TObject; var Key: Char);
    procedure btnTestKoneksiClick(Sender: TObject);
    procedure chkServerDefaultClick(Sender: TObject);
    procedure btnFillMasterDataClick(Sender: TObject);
    procedure btnFillDemoDataClick(Sender: TObject);
    procedure btnEmptyDataClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBackupDataClick(Sender: TObject);
    procedure btnRestoreDataClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
  private
    { Private declarations }     
    CreateDatabaseStatement, CreateProcedureStatement, EmptyDatabaseStatement,
    FillMasterDataStatement, FillDemoDataStatement : string;
  public
    { Public declarations }
    procedure HandleStatus (var e:Exception);
  end;

var
  frmSettingDB: TfrmSettingDB;
function ShowSettingDB:Boolean;
function RestructureTables:Boolean;
implementation

uses ArDBModule, TypeUnit, ZDbcIntfs, ArFunctions, ZConnection, IniFiles,
  BaseForm, DB, UserLevelUnit, MenuUtamaUnit;
const
     AppDefault  = 'DCIM';
     UserDefault = 'root';
     PassDefault = 'P@ssw0rd';
     PortDefault = 9393;
     DBDefault   = 'dcim';

{$R *.dfm}
function ShowSettingDB:Boolean;
begin
     frmSettingDB := TfrmSettingDB.Create (Application);
     with frmSettingDB, ArDB.FDBCon do
     begin
          if HostName <> '' then edtServer.Text := HostName else edtServer.Text := 'localhost';
          if Database <> '' then edtDatabase.Text := Database else edtDatabase.Text := DBDefault;
          edtPort.Text := IntToStr(Port);
          edtUsername.Text := User ;
          edtPassword.Text := Password;

          chkServerDefault.Checked := ( (User = '')or(User = UserDefault) )
                                  and ( (Port = 0 )or(Port = PortDefault) )
                                  and ( (Password = '')or(Password = PassDefault) );
          chkServerDefaultClick(chkServerDefault);

          Result := ShowModal=mrOK;
     end;
end;

function RestructureTables;
var  i, n : Word; sError, LVer : string;
     LUpdate, ThisUpdate : TDateTime;
     Scripts : array of string;
     procedure AddS (s: string);
     begin
          Inc(n);
          SetLength (Scripts, n);
          Scripts[n-1] := s;
     end;
begin    
     n := 0;
     try
          LUpdate := ArDB.GetData('select aupdate from applog where aid=1', ftDateTime);  
          LVer    := ArDB.GetData('select aver from applog where aid=1', ftString);
     except
          on e : Exception do
          begin            
               LUpdate := 0;
               if e is EZSQLException then
               case EZSQLException(e).ErrorCode of
               1146 :
                    AddS(' CREATE TABLE `applog` ( '+#13#10+
                         '    `aid` int(10) unsigned NOT NULL auto_increment, '+#13#10+
                         '    `aname` varchar(20) NOT NULL default '''', '+#13#10+      
                         '    `aver` varchar(10) NOT NULL default '''', '+#13#10+
                         '    `adate` timestamp NOT NULL default CURRENT_TIMESTAMP,'+#13#10+
                         '    `alog` text,'+#13#10+
                         '    `aupdate` timestamp NULL default NULL,'+#13#10+
                         '    `h` char(32) default NULL,'+#13#10+
                         ' PRIMARY KEY  (`aid`),'+#13#10+
                         ' KEY `adate` (`adate`)'+#13#10+
                         ' ) ENGINE=InnoDB DEFAULT CHARSET=utf8;' );
               end else
               if e is EVariantTypeCastError then
                    AddS(' INSERT INTO `applog` (aid,aname,aver,adate,aupdate,h) VALUES '+#13#10+
                         '    (1,''dcim'','+_Q(AppVersion)+',current_timestamp,current_timestamp,'+#13#10+
                         '    md5(concat_ws(''|'',aname,aver,(cast(time_to_sec(current_timestamp)as char) ) ) ) )'+#13#10+
                         ' ON DUPLICATE KEY UPDATE aupdate=values(aupdate), h=values(h);' );
          end;
     end;

     {ThisUpdate := EncodeDate(2014,10,10);
     if ThisUpdate > LUpdate then
     begin             
          //;
     end; }

     sError := '';
     if n > 0 then
     for i := 0 to n -1 do
     try
          ExecScript(Scripts[i]);
     except      
          on e : exception do sError := sError+#13#10+e.Message;
     end;
     
     if n > 0 then
     ExecQuery(' INSERT INTO `applog` (aid, aname, aver, aupdate, h) VALUES '+
               '    (1,''dcim'','+_Q(AppVersion)+',current_timestamp,'+
               '   md5(concat_ws(''|'',aname,aver,(cast(time_to_sec(current_timestamp)as char) ) ) ) ) '+
               ' ON DUPLICATE KEY UPDATE aupdate=current_timestamp, h=values(h);');

     {if sError <> '' then
     with TIniFile.Create(PathApp+'err.log') do
     try
          WriteString('log', fDateTime(Now, 'yyyy-mm-dd HH:nn'), sError);
     finally
          Free;
     end; }
end;

function Status (s:string;n:Integer=-1):Integer;
begin
     with frmSettingDB.mmoStatus do
     begin
          //Lines.BeginUpdate;
          if n = -1 then
               Result := Lines.Add(s)
          else
          begin
               Lines[n] := Lines[n] + ' '+s;
               Result := n;
          end;
          //Lines.EndUpdate;
     end;
end;

procedure TfrmSettingDB.btnOKClick(Sender: TObject);
var n : Integer;
begin
  inherited;
     try
          Screen.Cursor := crHourGlass;
          TBitBtn(Sender).Enabled := false;

          n := Status('Mencoba terkoneksi dengan database....');
          try
               if ArDB.Connect (edtServer.Text, edtUsername.Text, edtPassword.Text, edtDatabase.Text, StrToInt(edtPort.Text)) then
               begin
                    Status('Database terhubung.', n);

                    {Server := edtServer.Text;
                    PortDB := strToInt(edtPort.Text);
                    UserDB := edtUsername.Text;
                    PassDB := edtPassword.Text;
                    DBName := edtDatabase.Text;
                    dm.WriteINI;    }
                    ArDB.SaveDBSetToINI;
                    InsertHakAksesMenu(1);

                    Status('Setting disimpan');
                    Informasi('Setting disimpan');
                    ModalResult := mrOk;
               end;
          except
               on e : exception do HandleStatus(e);
          end;
     finally
          TBitBtn(Sender).Enabled := True;
          Screen.Cursor := crDefault;
          Status ('');
     end;
end;

procedure TfrmSettingDB.procDBError(Processor: TZSQLProcessor;
  StatementIndex: Integer; E: Exception;
  var ErrorHandleAction: TZErrorHandleAction);
begin
  inherited;
     Status('Pesan kesalahan : '+e.Message+#13#10+procDB.Statements[StatementIndex]);
end;

procedure TfrmSettingDB.btnBuatDBClick(Sender: TObject);
var n : integer;
begin
  inherited;
     try
          Screen.Cursor := crHourGlass;
          TBitBtn(Sender).Enabled := false;
          btnOK.Enabled := False;

          try                                              
               n := Status('Mencoba terkoneksi dengan database....');  
               {if ArDB.Connect (edtServer.Text, edtUsername.Text, edtPassword.Text, 'mysql', StrToInt(edtPort.Text)) then
               try
                    procDB.Script.Clear;    
                    procDB.Script.Add('GRANT ALL PRIVILEGES ON *.* TO '+QuotedStr(UserDefault)+'@''localhost'' IDENTIFIED BY '+QuotedStr(PassDefault)+' WITH GRANT OPTION; ');
                    procDB.Script.Add('GRANT ALL PRIVILEGES ON *.* TO '+QuotedStr(UserDefault)+'@''%'' IDENTIFIED BY '+QuotedStr(PassDefault)+' WITH GRANT OPTION; ');
                    procDB.Script.Add('FLUSH PRIVILEGES; ');   
                    procDB.Execute;
                    edtUsername.Text := UserDefault;
                    edtPassword.Text := PassDefault;
               except
               end;}
               if ArDB.Connect (edtServer.Text, edtUsername.Text, edtPassword.Text, 'mysql', StrToInt(edtPort.Text)) then
               begin
                    Status('Database terhubung.', n);
                                 
                    n := Status('Mencoba membuat database...');
                    procDB.Script.Text := 'CREATE DATABASE IF NOT EXISTS `'+edtDatabase.Text+'` CHARACTER SET ''utf8'' COLLATE ''utf8_general_ci''; ';
                    procDB.Script.Add('USE `'+edtDatabase.Text+'` ;');
                    procDB.Script.Add(CreateDatabaseStatement);
                    procDB.Execute;
                    try
                    procDB.Delimiter := '$$';
                    procDB.Script.Text := CreateProcedureStatement;
                    procDB.Execute;
                    finally procDB.Delimiter := ';'; end;
                    
                    RestructureTables;

                    procDB.Script.Text := 'SET FOREIGN_KEY_CHECKS=0;'#13#10+EmptyDatabaseStatement+#13#10'SET FOREIGN_KEY_CHECKS=1;';
                    procDB.Execute;

                    //set default hak akses user
                    InsertHakAksesMenu(1);

                    Status('Database berhasil dibuat', n);
                    
                    Informasi('Database berhasil dibuat.'+#13#10+
                              'Agar komputer lain bisa terkoneksi dengan database ini,'#13#10+
                              'setting Nama Server diisi dengan '+GetCompName);
                    TBitBtn(Sender).Enabled := false;
                    btnOK.Enabled := true;       
                    btnEmptyData.Enabled := True;
                    btnFillMasterData.Enabled := True;
                    btnFillDemoData.Enabled := True;
                    //ModalResult := mrOk;
               end
          except
               on e : exception do
               begin
                    TBitBtn(Sender).Enabled := True;
                    HandleStatus(e);
               end;
          end;
      finally
          Screen.Cursor := crDefault;
          Status ('');
      end;
end;

procedure TfrmSettingDB.edtPortKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
     if not (key in ['0'..'9', #8]) then key := #0;
end;

procedure TfrmSettingDB.btnTestKoneksiClick(Sender: TObject);
var n : integer;
begin
  inherited;
     try
          Screen.Cursor := crHourGlass;
          TBitBtn(Sender).Enabled := false;

          n := Status('Mencoba terkoneksi dengan database....');
          try
               btnBackupData.Enabled := False;
               btnRestoreData.Enabled := False;
               if Trim(edtUsername.Text) <> 'root' then ArDB.FDBCon.AfterConnect := nil;
               if ArDB.Connect (edtServer.Text, edtUsername.Text, edtPassword.Text,edtDatabase.Text, StrToInt(edtPort.Text)) then
               begin
                    Status('Database terhubung.', n);
                    btnOK.Enabled := True;
                    btnBackupData.Enabled := True;
                    btnRestoreData.Enabled := User.IDUser = 1;
               end else
               begin
                    btnEmptyData.Enabled := False;
                    btnFillMasterData.Enabled := False;
                    btnFillDemoData.Enabled := False;
               end;
          except
               on e : exception do HandleStatus(e);
          end;
     finally
          TBitBtn(Sender).Enabled := True;
          Screen.Cursor := crDefault;
          Status ('');
     end;
end;

procedure TfrmSettingDB.chkServerDefaultClick(Sender: TObject);
begin
  inherited;
     if chkServerDefault.Checked then
     begin
          edtPort.Text := '3306';
          edtUsername.Text := 'root';
          edtPassword.Text := 'P@ssw0rd';
     end;
     edtPort.Enabled := not chkServerDefault.Checked;
     edtUsername.Enabled := not chkServerDefault.Checked;
     edtPassword.Enabled := not chkServerDefault.Checked;
end;

procedure TfrmSettingDB.HandleStatus(var e: Exception);
begin                                
     btnBuatDB.Enabled := False;
     btnOK.Enabled := False;       
     btnEmptyData.Enabled := False;
     btnFillMasterData.Enabled := False;
     btnFillDemoData.Enabled := False;
     case EZSQLException(e).ErrorCode of
     18: Status ('Tidak dapat terkonesi dengan database');
     1049: begin                                                         
               btnBuatDB.Enabled := True; btnRestoreData.Enabled := True;
               Status ('Server terhubung tetapi database tidak ditemukan');
           end;
     2003: Status ('Tidak dapat terkoneksi ke server');
     else Status ('Terjadi kesalahan '+#13#10+'Pesan : '+E.Message+#13#10+'Kode : '+IntToStr(EZSQLException(e).ErrorCode));
     end;
end;

procedure TfrmSettingDB.btnFillMasterDataClick(Sender: TObject);
var n : integer;
begin
  inherited;
     try
          Screen.Cursor := crHourGlass;
          TBitBtn(Sender).Enabled := false;

          try
               n := Status('Mencoba terkoneksi dengan database...');
               if ArDB.Connect (edtServer.Text, edtUsername.Text, edtPassword.Text, edtDatabase.Text, StrToInt(edtPort.Text)) then
               begin
                    Status('Database terhubung.', n);
                    n := Status('Mengosongkan data....');
                    procDB.Script.Text := 'SET FOREIGN_KEY_CHECKS=0;'#13#10+EmptyDatabaseStatement+#13#10'SET FOREIGN_KEY_CHECKS=1;';
                    procDB.Execute;     

                    n := Status('Mengisi contoh data master...');
                    procDB.Script.Text := 'SET FOREIGN_KEY_CHECKS=0;'#13#10+FillMasterDataStatement+#13#10'SET FOREIGN_KEY_CHECKS=1;';
                    procDB.Execute;
                    Status('Selesai', n);
                    Informasi('Pengisian contoh data master selesai');
               end
          except
               on e : exception do HandleStatus(e);
          end;
     finally
          TBitBtn(Sender).Enabled := True;
          Screen.Cursor := crDefault;
          Status ('');
     end;
end;

procedure TfrmSettingDB.btnFillDemoDataClick(Sender: TObject);
var n : integer;
begin
  inherited;
     try
          Screen.Cursor := crHourGlass;
          TBitBtn(Sender).Enabled := false;

          try
               n := Status('Mencoba terkoneksi dengan database....');
               if ArDB.Connect (edtServer.Text, edtUsername.Text, edtPassword.Text, edtDatabase.Text, StrToInt(edtPort.Text)) then
               begin
                    Status('Database terhubung.', n);
                                                      
                    n := Status('Mengosongkan data....');
                    procDB.Script.Text := 'SET FOREIGN_KEY_CHECKS=0;'#13#10+EmptyDatabaseStatement+#13#10'SET FOREIGN_KEY_CHECKS=1;';
                    procDB.Execute;     

                    n := Status('Mengisi contoh data master...');
                    procDB.Script.Text := 'SET FOREIGN_KEY_CHECKS=0;'#13#10+FillMasterDataStatement+#13#10'SET FOREIGN_KEY_CHECKS=1;';
                    procDB.Execute;

                    n := Status('Mengisi contoh data proses...');
                    procDB.Script.Text := 'SET FOREIGN_KEY_CHECKS=0;'#13#10+FillDemoDataStatement+#13#10'SET FOREIGN_KEY_CHECKS=1;';
                    procDB.Execute;

                    Status('Selesai', n);
                    Informasi('Pengisian contoh data master selesai');
               end
          except
               on e : exception do HandleStatus(e);
          end;
      finally              
          TBitBtn(Sender).Enabled := True;
          Screen.Cursor := crDefault;
          Status ('');
      end;
end;

procedure TfrmSettingDB.btnEmptyDataClick(Sender: TObject);
var n : integer;
begin
  inherited;
     if Konfirmasi('Yakin ingin mengosongkan data?') then
     try
          Screen.Cursor := crHourGlass;
          TBitBtn(Sender).Enabled := false;

          try
               n := Status('Mencoba terkoneksi dengan database....');
               if ArDB.Connect (edtServer.Text, edtUsername.Text, edtPassword.Text, edtDatabase.Text, StrToInt(edtPort.Text)) then
               begin
                    Status('Database terhubung.', n);
                                                    
                    n := Status('Mengosongkan data....');
                    procDB.Script.Text := 'SET FOREIGN_KEY_CHECKS=0;'#13#10+EmptyDatabaseStatement+#13#10'SET FOREIGN_KEY_CHECKS=1;';
                    procDB.Execute;

                    Status('Berhasil dikosongkan', n);   
                    Informasi('Data berhasil dikosongkan');
               end
          except
               on e : exception do HandleStatus(e);
          end;
      finally              
          TBitBtn(Sender).Enabled := True;
          Screen.Cursor := crDefault;
          Status ('');
      end;
end;

procedure TfrmSettingDB.FormCreate(Sender: TObject);
var INI : TIniFile;
begin
  inherited;
     procDB.Delimiter := ';';
     SetGlyph(btnOK, ibSave);

     CreateDatabaseStatement  := frmMenuUtama.mmoSQLCreateDatabase.Text;
     CreateProcedureStatement := frmMenuUtama.mmoSQLCreateProcedure.Text;
     EmptyDatabaseStatement   := frmMenuUtama.mmoSQLKosongkan.Text;
     FillMasterDataStatement  := frmMenuUtama.mmoSQLIsiMaster.Text;
     FillDemoDataStatement    := frmMenuUtama.mmoSQLIsiProses.Text;

//     if not FileExists (PathApp+FILE_INI) then
//          edtDirBackup.Directory := ExtractFileDir(PathApp) else
//     try
//          INI := TIniFile.Create (PathApp+FILE_INI);
//          edtDirBackup.Directory := INI.ReadString('backup', 'directory', ExtractFileDir(PathApp));
//     finally
//          if INI <> nil then INI.Free;
//     end;
end;

procedure TfrmSettingDB.FormClose(Sender: TObject;
  var Action: TCloseAction);  
var INI : TIniFile;
begin
  inherited;
//     if ModalResult = mrok then
//     try
//          INI := TIniFile.Create (PathApp+FILE_INI);
//          INI.WriteString('backup', 'directory', edtDirBackup.Directory);
//     finally
//          if INI <> nil then INI.Free;
//     end;
end;

procedure TfrmSettingDB.btnBackupDataClick(Sender: TObject);   
var n : Integer;
begin
  inherited;
//     if not ArDB.Connected then Exit;
//     try
//          TBitBtn(Sender).Enabled := False;
//          n := Status('Mencoba proses backup database....');
//          ArDB.Backup(edtDirBackup.Directory+'\'+edtServer.Text+'_'+edtPort.Text+'_'+
//                         edtDatabase.Text+'_'+FormatDateTime('yyyymmdd_HHnn', Now)+'.sql',
//                         edtServer.Text, edtUsername.Text, edtPassword.Text,
//                         edtDatabase.Text, StrToInt(edtPort.Text), True);
//          n := Status('Selesai', n);
//     finally
//          TBitBtn(Sender).Enabled := True;
//     end;
end;

procedure TfrmSettingDB.btnRestoreDataClick(Sender: TObject);
var n : Integer;
begin
  inherited;
     if not Konfirmasi('Proses ini akan mengganti isi database dengan isi file backup.'#13#10+
                   'Data yang sudah ditimpa tidak dapat dikembalikan'#13#10+
                   'Sebaiknya lakukan proses backup terlebih dahulu'#13#10+
                   'Anda yakin melanjutkan proses?') then exit;

//     odlgRestore.InitialDir := edtDirBackup.Directory;
//     if odlgRestore.Execute then
//     try
//          TBitBtn(Sender).Enabled := False;
//          n := Status('Mencoba proses restore database....');
//          ArDB.Restore(odlgRestore.FileName,
//                         edtServer.Text, edtUsername.Text, edtPassword.Text,
//                         edtDatabase.Text, StrToInt(edtPort.Text));
//          n := Status('Selesai', n);
//     finally
//          TBitBtn(Sender).Enabled := True;
//     end;
end;

procedure TfrmSettingDB.btnResetClick(Sender: TObject);
begin
  inherited;
     pnlSetDB.Enabled := True;
end;



end.
