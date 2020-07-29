unit TypeUnit;

interface
uses Classes, Variants, SysUtils, Math, ArReports;

type
  NHakAction = (haStatus, haTambah, haUbah, haHapus, haCetak); //harus sama dg nama fields
  THakAction = set of NHakAction;
  NMenu = (
     mnUser=1, mnUserLevel, mnSetting,
     mnKaryawan,
     mnServer, mnTipeServer, mnListOS, mnOSServer, mnLokasi, mnRak,
     mnPanel, mnMCBLegrand, mnMerk, mnJenisPerangkat,
     mnPICServer, mnPemilikServer, mnATS, mnPemeliharaan, mnEoS,

     mnDataServerTracking, mnServerMasuk, mnPindahServer, mnServerKeluar,

     mnLaporan, mnDataLogUser, mnDataChecklistPerangkat);
  THak = array [NMenu] of THakAction;
  TUser = record
     IDUser, IDLevel, IDKaryawan : Integer;    
     SuperAdmin : Boolean;
     UserName, Password, Nama : string;  
     Hak : THak;
     IDLog : Cardinal;
     Login, Logout : TDateTime;
  end;
  NCompany   = (cpNama, cpAlamat, cpTelp, cpFax, cpPimpinan);
  NShowNota  = (snPreview, snPrint, snDesign);
  NNota      = (ntNota=1);

const
  APPVERSION = '1.0';
  FILE_INI = 'setting.ini';
  DEFAULT_LICENCE_ID = 'Gerardus Ordo';
  BASE_COLOR = $00B5513F;//$00fdce7e;
  //BASE_FONT_COLOR = $00F0F0F0;//$00080b0e;
  //TITLE_COLOR = $00FAFAFA;//$00ffffff;

//  CLR_BTN_RED : array of Variant = ($003443F3, $002E30D2, $005353FF);
  {FLAT_COLOR1 = $003bd076;
  FLAT_COLOR2 = $003fc58b;
  FLAT_COLOR3 = $002db3b1;
  FLAT_COLOR4 = $009ca600;
  FLAT_COLOR5 = $00F3E5DA;//$00ffc2f1;
  }
  DIALOGFORM_HEADER_VISIBLE = False;
  MENU_CAPTION : array [NMenu] of string =
     ('Pengguna', 'Grup Pengguna', 'Pengaturan Program',
     'Pegawai',
     'Server', 'Tipe Perangkat', 'List OS', 'OS Server', 'Lokasi', 'Rak',
     'Panel', 'MCB - Legrand', 'Merk', 'Jenis Perangkat',
     'PIC Server', 'Pemilik Server', 'ATS', 'Pemeliharaan', 'EoS',

     'Data Server Tracking', 'Server Masuk', 'Pindah Server', 'Server Keluar',

     'Laporan', 'Log User', 'Data Checklist Perangkat');
var
  User : TUser;
  PathApp, PathReport, PathImg, PathFont : string;  
  __Company : array [NCompany] of string;  
  __Logo    : TStream;

// ----- akta --------------------------      
procedure ClearHak(var AHak: THak);
function HakUser(Hak: Int64):THak; overload;
function HakUser(Hak: THak):Int64; overload;
function SetUserData(AIDUser, AIDLevel, AIDKaryawan:Integer; AUserName,APassword, ANama:string; AHak:THak):TUser;
function BolehAkses(AMenu: NMenu; AAction: THakAction = [ haStatus ]): Boolean;
procedure LoadSettings;
procedure SaveSettings;
                
function GetNoNota (ANota:NNota;n:Shortint=0):string;   
procedure ShowNota (ANota:NNota;id:Variant;AShow:NShowNota=snPreview);
procedure FillSettingNota;

implementation
uses ExtCtrls, ArFunctions, ArDBModule, TypInfo, DB, ZDataset;
const            
     NAMA_NOTA : array [NNota] of string =
          ('Nota');
     PREFIX_NOTA : array [NNota] of string =  //defaultnya saja
          ('NT');
     FILE_NOTA : array [NNota] of string =
          ('Nota.fr3');

procedure ClearHak(var AHak: THak);
var n : NMenu;
begin
     for n := Low(NMenu) to High(NMenu) do AHak[n] := [];
end;

function BolehAkses (AMenu:NMenu;AAction:THakAction=[haStatus]):Boolean;
var n : NHakAction;
begin
     Result := False;
     if AAction <> [] then Include(AAction, haStatus);
     if User.SuperAdmin then
     begin
          Result := True;Exit;
     end else
     Result := (AAction * User.Hak[AMenu]) = AAction;

     {
     for n := Low(NHakAction) to High(NHakAction) do
     if (n in AAction) and (n in User.Hak[AMenu]) then
     begin
          Result := True;Exit;
     end;} 
end;

function HakUser(Hak: Int64):THak; overload;
begin
     //Result := THak (Hak);
end;

function HakUser(Hak: THak):Int64; overload;
begin
     //Result := Int64(Hak);
end;

function SetUserData(AIDUser, AIDLevel, AIDKaryawan:Integer; AUserName,APassword, ANama:string; AHak:THak):TUser;
begin
     with Result do
     if AIDUser <> 0 then
     begin
          IDUser     := AIDUser;
          IDLevel    := AIDLevel;
          IDKaryawan := AIDKaryawan;
          UserName   := AUserName;
          Password   := APassword;
          Nama       := ANama;
          Hak        := AHak;
     end;
end;

procedure Get__Setting(sName, sValue:string);
     function EnumCompany(s:string) : NCompany;
     begin Result := NCompany(GetEnumValue(TypeInfo(NCompany), 'cp'+s));    end;
var
  List, Key: TStrings; i : SmallInt;
  cp : NCompany;
begin
     if CompareText(sName, 'company') = 0 then
          for cp := Low (NCompany) to High (NCompany) do __Company[cp] := ''
     else
     ;

     if Trim(sValue) <> '' then
     try
          List := TStringList.Create;
          List.Text := sValue;

          Key := TStringList.Create;
          for i := 0 to List.Count -1 do
          if List[i] <> '' then
          begin
               Key.Clear;
               ExtractStrings([''], [], PChar(List[i]), Key);

               if (Key.Count >= 2) then
               begin
                    if CompareText(sName, 'company') = 0 then
                         __Company[EnumCompany (Key[0])] := Key[1]
                    else
                    ;
               end;
          end;
     finally
          if Key <> nil then Key.Free;
          if List <> nil then List.Free;
     end;
end;

procedure LoadSettings;
begin
     with Query ('select nama, nilai from `setting` ') do
     try
          First;
          while not Eof do
          begin
               if CompareText(Fields[0].AsString, 'logo') = 0 then
               begin
                    if TBlobField(FieldByName('nilai')).AsString <> '' then
                    begin                                                    
                         if not Assigned(__Logo) then __Logo := TMemoryStream.Create;
                         __Logo := (CreateBlobStream (FieldByName('nilai'), bmRead));
                    end;
               end else Get__Setting (Fields[0].AsString, Fields[1].AsString);

               Next;
          end; 
     finally
         Close;
         Free;
     end;     
end;    
        
procedure SaveSettings;
var List: TStrings;
    cp : NCompany;  
    s  : string;
    ASQL : TArSQL;
begin
     try       
          List := TStringList.Create;

          ASQL := TArSQL.Create;
          ASQL.ClearParams;
          ASQL.TableName := '`setting`';
          ASQL.Quoted := True;
          ASQL.WhenDuplicate := wdUpdate;
          ASQL.SetFieldNames(['nama','nilai']);
          ASQL.SetFieldOffset(['nama']);

          List.Clear;
          for cp := Low (NCompany) to High(NCompany) do
          begin
               s := GetEnumName(TypeInfo(NCompany), Integer(cp));
               List.Add( Copy (s, 3, Length(s)) + ''+__Company[cp]);
          end;
          ASQL.AddFieldValues(['company',List.Text]);
          
          ExecQuery(ASQL.SQLInsert);

          //logo
          with Query ('') do
          try
               SQL.Text := ' insert into setting (nama, nilai)values(''logo'',:nilai) '+
                           ' on duplicate key update nilai=values(nilai)';
                           
               if not Assigned (__Logo) then ParamByName('nilai').Value := '' else
               begin
                    ParamByName('nilai').Value := '';
                    __Logo.Position := 0;
                    ParamByName('nilai').LoadFromStream(__Logo, ftBlob);
               end;
               ExecSQL;
          finally
               Close;Free;
          end;

     finally
          if Assigned(ASQL) then FreeAndNil(ASQL);   
          if Assigned(List) then FreeAndNil(List);
     end;
end; 
 
procedure FillSettingNota;
var n : NNota;
    ArSQL : TArSQL; 
begin
     ArSQL := TArSQL.Create;
     with ArSQL do
     try
          ClearParams;
          TableName := 'tempnomor';
          WhenDuplicate := wdUpdate; //
          SetFieldNames(['idnomor','noakhir', 'prefix', 'tabel']);
          SetFieldOffset(['idnomor','noakhir', 'prefix']); //
          for n := Low(NNota) to High(NNota) do
               AddFieldValues([IntToStr(Integer(n)),'0'
                              ,QuotedStr(PREFIX_NOTA[n])
                              ,QuotedStr(NAMA_NOTA[n])]);
          ExecQry(SQLInsert);
     finally
          if Assigned(ArSQL) then FreeAndNil(ArSQL);
     end;
end;

function GetNoNota (ANota:NNota;n:Shortint=0):string;
var  id  : word;
begin
     id := Integer(ANota);
     if n > 0 then
          ExecQuery(' insert into tempnomor (noakhir, idnomor, prefix)values('+
                    IntToStr(n)+','+InttoStr(id)+','+QuotedStr(PREFIX_NOTA[ANota])+')'+
                    ' on duplicate key update noakhir = noakhir+ '+IntToStr(n));
     with Query ('select noakhir, prefix from tempnomor where idnomor='+InttoStr(id)) do
     try
          First;
          if Eof then
          begin
               FillSettingNota;
               Refresh; First;
          end;   
          if not Eof then  
               Result := Format ('%s%.8d', [Fields[1].AsString, Fields[0].AsInteger+1]);
      finally
          Close;
          Free;
      end;
end;

procedure ShowNota (ANota:NNota;id:Variant;AShow:NShowNota);
     function QueryNota (N:NNota):string;
     begin
          case ANota of //query nota
              ntNota : Result := 'select * from nota where nonota='+QuotedStr(id);
          else Result := '';
          end;
     end;

var AReport : TArReport;
    QDataset: TZReadOnlyQuery;
    s : string;
begin
     if (id = Null)and(AShow <> snDesign) then exit;
     if id = null then id := 0;

     s := QueryNota(ANota);
     if s = '' then
     begin
          Peringatan ('Setting nota belum tersedia');
          Exit;
     end;
     
     AReport := TArReport.Create(nil);
     QDataset := ROQry (QueryNota(ANota));
     with QDataset do
     try
          AReport.Alias    := 'Nota';
          AReport.Dataset  := QDataset;
          AReport.FileName := PathReport+ FILE_NOTA[ANota];
          AReport.SetParValues
               (['NamaPerusahaan','AlamatPerusahaan','TelpPerusahaan'],
                [__Company[cpNama], __Company[cpAlamat], __Company[cpTelp]]
               );
          case AShow of
          snPreview : AReport.ShowFor := srPreview;
          snPrint   : AReport.ShowFor := srPrint;  
          snDesign  : AReport.ShowFor := srDesign;
          end;
          First;
          if Eof and (AShow <> snDesign) then
               Peringatan('Data tidak ditemukan') else
          AReport.Show;

     finally                                  
          if Assigned(QDataset) then begin QDataset.Close; FreeAndNil(QDataset); end;
          if Assigned(AReport) then FreeAndNil(AReport);
     end;
end;

end.
