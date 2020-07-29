unit ArFunctions;

interface
uses
  SysUtils, Classes, Windows, Graphics, DateUtils, Controls;

type       
  NTextCase = (csNormal, csLowercase, csUpperCase, csProperCase, csSentenceCase);
  RVisualProperty = record Color : TColor; end;
  RUmur = record Tahun, Bulan, Hari : Word; end;
  RWaktu = record Tahun, Bulan, Hari, Jam, Menit, Detik, MDetik : Word; end;
  RMergeField = record Field, Format, Before, After : string; TextCase : NTextCase; end;
const
  OneDay         = 1.0;
  OneHour        = OneDay / 24.0;
  OneMinute      = OneHour / 60.0;
  OneSecond      = OneMinute / 60.0;
  OneMillisecond = OneSecond / 1000.0;
  NamaHari : array[1..7] of string =
     ('Ahad','Senin','Selasa','Rabu','Kamis','Jumat', 'Sabtu');
  NamaBulan: array[1..12] of string =
     ('Januari','Februari','Maret','April','Mei','Juni' ,
     'Juli','Agustus','September','Oktober','November', 'Desember');
  EnvVarValue : array [0..27]of string = ('ALLUSERSPROFILE',
     'APPDATA','CLIENTNAME','CommonProgramFiles','COMPUTERNAME','ComSpec','HOMEDRIVE',
     'HOMEPATH','LOGONSERVER','NUMBER_OF_PROCESSORS','OS','Path','PATHEXT','PCToolsDir',
     'PROCESSOR_ARCHITECTURE','PROCESSOR_IDENTIFIER','PROCESSOR_LEVEL','PROCESSOR_REVISION',
     'ProgramFiles','SESSIONNAME','SystemDrive','SystemRoot','TEMP','TMP','USERDOMAIN',
     'USERNAME','USERPROFILE','windir');

//------ validations ---------------------------------------------------------//
{ Fungsi untuk pengecekan validasi input
  Contoh : HarusDiisi (edtNama, 'Nama', edtNama.Text = '');
     Bila isian dari edtNama masih kosong, maka muncul peringatan '"Nama" masih Kosong',
     kursor difokuskan ke komponen edtNama, kemudian proses dihentikan (Abort)  }
function HarusDiisi(Komponen:TWinControl;Nama:string;KondisiDilarang:Boolean):Boolean;

{ Fungsi untuk memberikan output default jika input parameter bernilai NULL
  Contoh : edtNama.Text := IfNull(tbl1.FieldByName('nama').Value, 'anonim');
     Jika tbl1.FieldByName('nama').Value bernilai NULL, maka menghasilkan result 'anonim',
     Jika tbl1.FieldByName('nama').Value ada nilainya, maka resultnya adalah tbl1.FieldByName('nama').Value }
function IfNull (VarValue:Variant;DefaultValue:Variant):Variant;

{ Fungsi untuk menghasilkan nilai integer dari Boolean
  Contoh : tbl1.FieldByName('nonaktif').Value := iBool (chkNonAktif.Checked);
     Jika chkNonAktif dicentang, maka result iBool adalah 1, jika tidak result = 0}
function iBool (b:Boolean):SmallInt;

{ Fungsi untuk memeriksa parameter input di dalam array, 
}
function InArray (s:string;a:array of string):Boolean;
function _Q(s:string):string;
function _N(s:string):string;
//------ datetime ------------------------------------------------------------//
function AddSeconds(const D: TDateTime; const N: Int64): TDateTime;
function AddMinutes(const D: TDateTime; const N: Integer): TDateTime;
function AddHours(const D: TDateTime; const N: Integer): TDateTime;
function AddDays(const D: TDateTime; const N: Integer): TDateTime;
function DayNo (d:TDateTime):Byte;
function FirstDateThisMonth(d:TDateTime):TDateTime;
function LastDateThisMonth(d:TDateTime):TDateTime;
function FirstDateThisYear(d:TDateTime):TDateTime; 
function LastDateThisYear(d:TDateTime):TDateTime;
function IncYear (d:TDateTime;numYear:SmallInt=1):TDateTime;
function GetTanggal (d:TDate):word;
function GetBulan (d:TDate):word;
function GetTahun (d:TDate):Word;
function GetNamaHari(d:TDate):string;
function GetNamaBulan(d:TDate):string;
function GetNamaBulanFromNo(no:Byte):string;
function GetUmur(d:TDate;Present:TDate=0):RUmur;   
function SelisihWaktu(d1, d2:TDateTime):RWaktu;
function MergeDateTime(d:TDate;t:TTime):TDateTime;
function SecToTimeToStr (dt:int64):string;
function DiffDateTimeInSeconds(dt1,dt2:TDateTime):Int64;
function DiffDateTimeInMinutes(dt1,dt2:TDateTime):Int64;
//------ format datetime -----------------------------------------------------//
function fDate(d:TDate;AFormat:string='yyyy-mm-dd'):string;
function fTime(t:TTime;AFormat:string='hh:nn:ss'):string;
function fDateTime(dt:TDateTime;AFormat:string='yyyy-mm-dd hh:nn:ss'):string; overload;
function fDateTime(d:TDate;t:TTime;AFormat:string='yyyy-mm-dd hh:nn:ss'):string; overload;
function fDateStr(d:TDate;AFormat:string='yyyy-mm-dd'):string;
function fTimeStr(t:TTime;AFormat:string='hh:nn:ss'):string;
function fDateTimeStr(d:TDate;t:TTime):string; overload;
function fDateTimeStr(dt:TDateTime):string; overload;
function fVarDate(d:Variant;NullValue:string='null';AFormat:string='yyyy-mm-dd'):string;
function fVarTime(d:Variant;NullValue:string='null';AFormat:string='hh:nn:ss'):string;
//function fVarDateTime(d,t:Variant;NullValue:string='null'):string;
function fVarDateStr(d:Variant;NullValue:string='null';AFormat:string='yyyy-mm-dd'):string;
function fVarTimeStr(d:Variant;NullValue:string='null';AFormat:string='hh:nn:ss'):string;
//function fVarDateTimeStr(d,t:Variant;NullValue:string='null'):string;
function fZeroDateAsNullStr(d:TDateTime;NullValue:string='null';AFormat:string='yyyy-mm-dd'):string; 
function fValidDate(s:String;NullValue:string='null';AFormat:string='yyyy-mm-dd'):string;  
function fValidDateStr(s:String;NullValue:string='null';AFormat:string='yyyy-mm-dd'):string;
//------ conversion ----------------------------------------------------------//
function fStrToDates (s:string):TDate;
function fStrToFloat(s:string):Double;
function MmToPixel (mm:Double;ppi:SmallInt=96):Double;
function PixelToMm(px:Double;ppi:SmallInt=96):Double;
function MmToPixelInt (mm:Double;ppi:SmallInt=96):Integer;
function PixelToMmInt(px:Double;ppi:SmallInt=96):Integer;
function IntToBoolean (i:Integer):Boolean;                
function BooleanToInt (b:Boolean):Integer;
//------ format double -------------------------------------------------------//
function fMoney(e:Double;DecimalCount:Byte=0):string;
function fFloat(e:Double):string;
function fFloatStr(e:Double):string;     
function Date2S(d:Double):string;
function S2Date(s:string):Double;
function S2DateDef(s:string; Def:TDateTime):Double;   
function Float2S(d:Double):string;
function S2Float(s:string):Double;
function S2FloatDef(s:string; Def:Double):Double;
//------ string functions ----------------------------------------------------//   
function SentenceCase(sBuffer: string):string;
function ProperCase(sBuffer: string):string;                    
function GetReplaceBetween (var s:string;sFrom,sTo:string;sReplacement:string=''):string;
function GetStringBetween (s,sFrom,sTo:string;var iFrom, iTo:Integer):string; overload;
function GetStringBetween (s,sFrom,sTo:string;var iFrom:Integer):string; overload;
function GetStringBetween (s,sFrom,sTo:string):string; overload;     
function ReplaceStringBetween (s,sFrom,sTo:string;sReplacement:String):string;
function KalimatTanggal(d:TDate;ResultCase:NTextCase=csNormal;
                    PrefixBulan:string='';PrefixTahun:string=''):string;   
function KalimatWaktu(t:TTime;ResultCase:NTextCase=csNormal):string;
function Terbilang(e:Double;DecimalCount:byte=0):string;
function ArrToStr(AArray:array of string; ASeparator:string=','):string;
function PenuhiTeks (s:string;MaxWidth:Integer;chr:Char='-';
     FontName:TFontName='Bookman Old Style';FontSize:Integer=12):string;
function ExtractMergeField(VarName:string): RMergeField;
//------ security functions --------------------------------------------------//
function EnDeCrypt(const Value : String) : String;
function MD5 (const Value:string) : string;
function MySQLAESEncrypt(value, secretkey : string) : string;
function MySQLAESDecrypt(field, secretkey : string) : string;
//------ other functions -----------------------------------------------------//  
function GetAppVersion: string;
function GetEnvVarValue(const VarName: string): string;
function GetCompName :string;
procedure ShellExecute_AndWait(FileName, Parameter : String; Wait:Boolean=True);
procedure SetBahasaIndonesia;
procedure SetComputerDateTime(Year, Month, Day, Hour, Minu, Sec, MSec: Word); overload;
procedure SetComputerDateTime(dt:TDatetime); overload;     
procedure CompressFiles (Files : TStrings; const Filename : String);
procedure DecompressFiles(const Filename, DestDirectory : String);
//------ messages ------------------------------------------------------------//
function Konfirmasi (s : string) : Boolean;       
procedure Informasi (s : string);
procedure Peringatan (s : string;Aborted:Boolean=False);
procedure PesanError (s : string;Aborted:Boolean=True);
procedure Salah (s : string);
procedure ResizeBMP(b : TBitmap; New : integer);
procedure ResizeJpg(APict:TPicture; ASize: Integer);
//koneksi FTP            
procedure UploadFtp (AServer, AUsername, APassword,
          AFileSource, ADirectory, AFileDest:string);
function LoadImageFtp(AImage:TPicture;
          AServer, AUsername, APassword, ADirectory, AFileSource:string):Boolean;      
function LoadStreamFtp(AStream:TStream;
          AServer, AUsername, APassword, ADirectory, AFileSource:string):Boolean;
function TryFtpConnect(AServer, AUsername, APassword:string):Boolean;

implementation

uses ShellAPI, Dialogs, Variants, Messages, StrUtils, Forms,
     IdHashMessageDigest, idftp, Zlib, jpeg, idexception;

//------ validations ---------------------------------------------------------// 

function HarusDiisi(Komponen:TWinControl;Nama:string;KondisiDilarang:Boolean):Boolean;
begin
     Result := not KondisiDilarang;
     if KondisiDilarang then
     begin                  
          Komponen.Parent.Show;
          Komponen.SetFocus;
          //raise Exception.Create(Nama+' harus diisi');
          Peringatan (Nama+' harus diisi');
          Abort;
     end;
end;

function IfNull (VarValue:Variant;DefaultValue:Variant):Variant;
begin
     if VarIsNull(VarValue) then Result := DefaultValue else Result := VarValue;
end;

function iBool (b:Boolean):SmallInt;
begin
     if b then Result := 1 else Result := 0;
end;        

function InArray (s:string;a:array of string):Boolean;
var i : word;
begin
     Result := False;
     for i := Low(a) to High (a) do
     if CompareText(a[i], s)=0 then
     begin
          Result := True;
          Break;
     end;
end;

function _Q(s:string):string;
begin Result := QuotedStr(s); end;
                   
function _N(s:string):string;  
begin
     s := StringReplace(s,'&&','&', [rfReplaceAll]);  
     Result := StringReplace(s,'&','&&', [rfReplaceAll]);
end;

//------ datetime ------------------------------------------------------------//
function AddSeconds(const D: TDateTime; const N: Int64): TDateTime;
begin
     Result := D + OneSecond * N;
end;

function AddMinutes(const D: TDateTime; const N: Integer): TDateTime;
begin
     Result := D + OneMinute * N;
end;

function AddHours(const D: TDateTime; const N: Integer): TDateTime;
begin
     Result := D + OneHour * N;
end;

function AddDays(const D: TDateTime; const N: Integer): TDateTime;
begin
     Result := D + N;
end;

function DayNo (d:TDateTime):Byte;
begin
     Result := DayOfWeek (d) -1;
     if Result = 0 then Result := 7;
end;

function FirstDateThisMonth(d:TDateTime):TDateTime;
begin
     Result := d - StrToInt(FormatDateTime ('dd',d)) +1;
end;

function LastDateThisMonth(d:TDateTime):TDateTime;
begin
     Result := IncMonth (FirstDateThisMonth(d), 1) -1;
end;  

function FirstDateThisYear(d:TDateTime):TDateTime;
begin
     Result :=  EncodeDate(GetTahun(d), 1, 1);
end;

function LastDateThisYear(d:TDateTime):TDateTime;
begin
     Result :=  EncodeDate(GetTahun(d), 12, 31);
end;

function IncYear(d:TDateTime;numYear:SmallInt=1):TDateTime;
var ye, mo, da : Word;
begin
     DecodeDate(d,ye,mo,da);
     Result :=  EncodeDate(ye+numYear, mo, da);
end;

function GetTanggal (d:TDate):word;
var d1, d2 : Word; begin DecodeDate(d,d1,d2,Result); end;

function GetBulan (d:TDate):word;
var d1, d2 : Word; begin DecodeDate(d,d1,Result,d2); end;

function GetTahun (d:TDate):Word;
var d1, d2 : Word; begin DecodeDate(d,Result,d1,d2); end;

function GetNamaHari(d:TDate):string;
begin Result := NamaHari[DayOfWeek(d)]; end;

function GetNamaBulanFromNo(no:Byte):string; 
begin Result := NamaBulan[no]; end;

function GetNamaBulan(d:TDate):string;
begin Result := GetNamaBulanFromNo(GetBulan(d)); end;

function GetUmur(d:TDate;Present:TDate=0):RUmur;
begin
     if Present = 0 then Present := DateOf(Now);
     with Result do
     begin
          DecodeDate(trunc(Present-d), Tahun, Bulan, Hari);
          Tahun := tahun - 1900;
     end;
end;

function SelisihWaktu(d1, d2:TDateTime):RWaktu;
begin
     with Result do
     begin
          DecodeDateTime(Abs(d2-d1), Tahun, Bulan, Hari, Jam, Menit, Detik, MDetik);

          Tahun := Tahun - 1900;
     end;
end;

function MergeDateTime(d:TDate;t:TTime):TDateTime;
begin
     Result := Trunc(d)+frac(t);
end;

function SecToTimeToStr (dt:int64):string;
var h, m, s : Word;
    t : Int64;
begin
     Result := ''; if dt <= 0 then exit;
     t := dt; h := (t div (SecsPerMin * MinsPerHour));
     t := t - (h * (SecsPerMin * MinsPerHour));
     m := t div (SecsPerMin);
     s := t - (m * (SecsPerMin));
     Result := Format('%d:%.2d:%.2d', [h,m,s]);
end;

function DiffDateTimeInSeconds(dt1,dt2:TDateTime):Int64;
var dt : TDateTime;
begin
     if dt1 > dt2 then dt := dt1 - dt2 else dt := dt2 - dt1;
     Result := (Trunc(dt)*SecsPerDay)+SecondOfTheDay(dt);
end;

function DiffDateTimeInMinutes(dt1,dt2:TDateTime):Int64;
var dt : TDateTime;
begin
     if dt1 > dt2 then dt := dt1 - dt2 else dt := dt2 - dt1;
     Result := (Trunc(dt)*MinsPerDay)+MinuteOfTheDay(dt);
end;

//------ format datetime -----------------------------------------------------//
function fDate(d:TDate;AFormat:string='yyyy-mm-dd'):string;
begin Result := FormatDateTime(AFormat,Trunc(d)); end;

function fTime(t:TTime;AFormat:string='hh:nn:ss'):string;
begin Result := FormatDateTime(AFormat,frac(t)); end;

function fDateTime(dt:TDateTime;AFormat:string='yyyy-mm-dd hh:nn:ss'):string;overload;
begin  Result := FormatDateTime(AFormat,dt);end;

function fDateTime(d:TDate;t:TTime;AFormat:string='yyyy-mm-dd hh:nn:ss'):string;overload;
begin  Result := fDateTime(Trunc(d)+frac(t), AFormat);end;

function fDateStr(d:TDate;AFormat:string='yyyy-mm-dd'):string;
begin Result := _Q(fDate(d, AFormat)); end;

function fTimeStr(t:TTime;AFormat:string='hh:nn:ss'):string;
begin Result := _Q(fTime(t, AFormat)); end;

function fDateTimeStr(d:TDate;t:TTime):string;
begin Result := _Q(fDateTime(d,t)); end;

function fDateTimeStr(dt:TDateTime):string;
begin Result := _Q(fDateTime(dt)); end;
   
function fVarDate(d:Variant;NullValue:string='null';AFormat:string='yyyy-mm-dd'):string;
begin if VarIsNull(d) then Result := NullValue else Result := fDate(d,AFormat) end;

function fVarTime(d:Variant;NullValue:string='null';AFormat:string='hh:nn:ss'):string;
begin if VarIsNull(d) then Result := NullValue else Result := fTime(d,AFormat) end;

//ambiguous overloaded call
//function fVarDateTime(d,t:Variant;NullValue:string='null'):string;
//begin if VarIsNull(d) then Result := NullValue else Result := fDateTime(d,t) end;

function fVarDateStr(d:Variant;NullValue:string='null';AFormat:string='yyyy-mm-dd'):string;
begin if VarIsNull(d) then Result := NullValue else Result := _Q(fDate(d,AFormat)) end;

function fVarTimeStr(d:Variant;NullValue:string='null';AFormat:string='hh:nn:ss'):string;
begin if VarIsNull(d) then Result := NullValue else Result := _Q(fTime(d,AFormat)) end;

//ambiguous overloaded call
//function fVarDateTimeStr(d,t:Variant;NullValue:string='null'):string;
//begin if VarIsNull(d) then Result := NullValue else Result := _Q(fDateTime(d,t)) end;

function fZeroDateAsNullStr(d:TDateTime;NullValue:string='null';AFormat:string='yyyy-mm-dd'):string;
begin if (d=0) then Result := NullValue else Result := _Q(fDate(d,AFormat)) end;

function fValidDate(s:String;NullValue:string='null';AFormat:string='yyyy-mm-dd'):string;
var d : TDateTime;
begin
     d := StrToDateDef(s,0);
     if (d=0) then Result := NullValue else Result := fDate(d,AFormat)
end;

function fValidDateStr(s:String;NullValue:string='null';AFormat:string='yyyy-mm-dd'):string;
var d : TDateTime;  
begin
     d := StrToDateDef(s,0);
     if (d=0) then Result := NullValue else Result := _Q(fDate(d,AFormat))
end;
               
//------ conversion ----------------------------------------------------------//
function fStrToDates (s:string):TDate;
var ts : TStringlist;
begin
     Result := Now;
     if Pos ('-', s) > 0 then
     try
          ts := TStringList.Create;
          ExtractStrings(['-'], [], PChar(s), ts);
          Result := EncodeDate(StrToInt(ts[0]),StrToInt(ts[1]),StrToInt(ts[2]));
     finally
          if Assigned(ts) then FreeAndNil(ts);
     end;
end;     

function fStrToFloat(s:string):Double;
begin
     s := StringReplace(s, FormatSettings.ThousandSeparator, '', [rfReplaceAll]);
     //s := StringReplace(s, DecimalSeparator, '.', [rfReplaceAll]);
     Result := StrToFloat (s);
end;

function MmToPixel(mm:Double;ppi:SmallInt=96):Double;
begin
     Result := mm * ppi / 25.4;
end; 

function PixelToMm(px:Double;ppi:SmallInt=96):Double;
begin
     Result := px * 25.4 / ppi;
end;

function MmToPixelInt(mm:Double;ppi:SmallInt=96):Integer;
begin
     Result := Trunc(MmToPixel (mm, ppi));
end;

function PixelToMmInt(px:Double;ppi:SmallInt=96):Integer;
begin
     Result := Trunc(PixelToMm (px, ppi));
end;

function IntToBoolean (i:Integer):Boolean;
begin
     Result := i = 1;
end;

function BooleanToInt (b:Boolean):Integer;
begin
     if b then Result := 1 else Result := 0;
end;

//------ format double -------------------------------------------------------//
function fMoney(e:Double;DecimalCount:Byte=0):string;
var s : string;
    i : Byte;
begin
     s := '';
     for i := 1 to DecimalCount do s := s+'0';
     Result := FormatFloat(',0.'+s, e);
end;

function fFloat(e:Double):string;
begin
     Result := StringReplace(FloatToStr(e), FormatSettings.DecimalSeparator, '.', [rfReplaceAll]);
end; 

function fFloatStr(e:Double):string;
begin
     Result := _Q(fFloat(e));
end;

function Date2S(d:Double):string;
begin Result := FloatToStr(d); end;

function S2Date(s:string):Double;
begin Result := StrToFloat(s); end;

function S2DateDef(s:string; Def:TDateTime):Double;
begin Result := StrToFloatDef(s, Def); end;

function Float2S(d:Double):string;
begin Result := FloatToStr(d); end;

function S2Float(s:string):Double;
begin Result := StrToFloat(s); end;

function S2FloatDef(s:string; Def:Double):Double;
begin Result := StrToFloatDef(s, Def); end;

//------ string functions ----------------------------------------------------//  
function SentenceCase(sBuffer: string):string;
begin
     Result := LowerCase(sBuffer);
     if Result <> '' then  UpCase(Result[1])
end;

function ProperCase(sBuffer: string):string;
var iLen, iIndex: Word;
begin
    iLen := Length(sBuffer);
    sBuffer:= Uppercase(MidStr(sBuffer, 1, 1)) + Lowercase(MidStr(sBuffer,2, iLen));
    for iIndex := 0 to iLen do
    begin
      if MidStr(sBuffer, iIndex, 1) = ' ' then
          sBuffer := MidStr(sBuffer, 0, iIndex) + Uppercase(MidStr(sBuffer, iIndex + 1, 1)) + Lowercase(MidStr(sBuffer, iIndex + 2, iLen));
    end;
    Result := sBuffer;
end;

function GetStringBetween (s,sFrom,sTo:string;var iFrom, iTo:Integer):string;
var f, t, lnFrom : Integer;
begin
     Result := ''; f := iFrom; t := iTo; lnFrom := Length(sFrom);
     f := PosEX(sFrom,s, f);
     if f > 0 then
     begin
          t := PosEX(sTo, s, f+lnFrom) ;
          if t > 0 then
          begin
               Result := Copy (s, f+lnFrom, t-f-lnFrom);
               t := t + Length (sTo);
          end;
     end;
     iFrom := f; iTo := t;
end;     

function GetReplaceBetween (var s:string;sFrom,sTo:string;sReplacement:string=''):string;
var f, t, lnFrom, lnSto : Integer;
begin
     Result := ''; //f := Length(s); t := iTo;
     lnFrom := Length(sFrom); lnSto := Length(sTo);
     f := PosEX(sFrom,s);
     if f > 0 then
     begin
          t := PosEX(sTo, s, f+lnFrom) ;
          if t > 0 then
          begin
               Result := Copy (s, f+lnFrom, t-f-lnFrom);
               Delete (s, f, t-f+lnSto);
               Insert (sReplacement, s, f);
               //t := t + lnSto;
          end;
     end;
     //iFrom := f; iTo := t;
end;

function GetStringBetween (s,sFrom,sTo:string;var iFrom:Integer):string;
var iTo : Integer;
begin
     iTo := 0;
     Result := GetStringBetween (s,sFrom,sTo, ifrom, ito);
end;

function GetStringBetween (s,sFrom,sTo:string):string;
var ifrom, ito : Integer;
begin
     ifrom := 0; ito := 0;
     Result := GetStringBetween (s,sFrom,sTo, ifrom, ito);
end;   

function ReplaceStringBetween (s,sFrom,sTo:string;sReplacement:String):string;  
var iFrom, iTo : Integer;
begin
     iFrom := 0;    
     iFrom := PosEx(sFrom, s, iFrom);
     if iFrom > 0 then
     begin
          iTo := PosEx(sTo, s, iFrom) ; 
          if iTo > 0 then
          begin
               Delete (s, iFrom+length(sFrom), iTo-iFrom-length(sFrom));
               Insert (sReplacement, s, length(sFrom)+1);
          end;
     end;  
     Result := s;
end;

function Terbilang(e:Double;DecimalCount:byte=0):string;
     function Pangkat(x, y :extended) : extended; begin result := exp(y*ln(x)); end;
const
     Bil : array[0..11] Of string[15] =
          ('Nol','Satu','Dua','Tiga','Empat','Lima','Enam',
          'Tujuh','Delapan','Sembilan','Sepuluh','Sebelas');
     Satu : array [0..4] of string =
          ('Seribu','Sejuta','Semilyar','Setrilyun', 'Sekuadriliun');
          //, 'Sekuintiliun', 'Sesekstiliun', 'Seseptiliun', 'Seoktiliun', 'Senoniliun', 'Sedesiliun');
     Nol3 : array [0..4] of string =
          ('Ribu','Juta','Milyar','Trilyun', 'Kuadriliun');
          //'Kuintiliun', 'Sekstiliun', 'Septiliun', 'Oktiliun', 'Noniliun', 'Desiliun');
var
     i : Byte;
     Nolnya, Cacah : Int64;
     Dec : string;
Begin
     Cacah := Trunc(e);
     if Cacah < 0 then
     begin
          Result := 'Minus '+Terbilang (Abs(Cacah));
          exit;
     end;
     
     if (Cacah >= 1000) then
          for i := 0 to 4 do
          begin
               Nolnya := (1000 * trunc(Pangkat (1000,i)));
               if (Cacah div Nolnya) = 1 then
               begin
                    Result := Satu[i];
                    if (Cacah mod Nolnya) > 0 then
                         Result := Result+' '+Terbilang (Cacah mod Nolnya);
                    Break;
               end else
               if (Cacah div Nolnya) < 1000 then
               begin

                    Result := Terbilang(Cacah div Nolnya)+' '+Nol3[i];
                    if (Cacah mod Nolnya) > 0 then
                         Result := Result+' '+Terbilang(Cacah mod Nolnya);
                    Break;
               end;
          end
     else
     if Cacah >= 0 then
          case Cacah of
          0..11 : Result := Bil[Cacah];
          12..19 : Result := Terbilang(Cacah-10) + ' Belas';
          20..99 :
               begin
                    Result := Terbilang(Cacah div 10) + ' Puluh';
                    if (Cacah mod 10) > 0 then
                         Result := Result + ' ' + Terbilang(Cacah mod 10); 
               end;
          100..199 :
               begin
                    Result := 'Seratus';
                    if (Cacah-100) > 0 then
                         Result := Result + ' ' + Terbilang(Cacah-100);
               end;
          200..999 : 
               begin
                    Result := Terbilang(Cacah div 100) + ' Ratus';
                    if (Cacah mod 100) > 0 then
                         Result := Result + ' ' + Terbilang(Cacah mod 100);
               end;
          end
     ;

     if (DecimalCount > 0)and(Frac(e) > 0) then
     begin
          Dec := FloatToStr(e);
          Dec := Copy (Dec, Pos(FormatSettings.DecimalSeparator, Dec)+1, DecimalCount);
          if Length (Dec) > 0 then Result := Result + ' Koma';
          for i := 1 to Length (Dec) do
               Result := Result + ' '+Bil[StrToInt(Dec[i])];
     end;   

     Result := StringReplace(Result, '  ',' ', [rfReplaceAll]);
end;

function KalimatTanggal(d:TDate;ResultCase:NTextCase=csNormal;
          PrefixBulan:string='';PrefixTahun:string=''):string;
var ye, mo, da : Word;
begin
     DecodeDate(d,ye,mo,da);
     if PrefixBulan <> '' then PrefixBulan := PrefixBulan+' ';
     if PrefixTahun <> '' then PrefixTahun := PrefixTahun+' ';
     case ResultCase of
     csLowercase : Result := LowerCase(Terbilang(da)+ ' '+ PrefixBulan) + GetNamaBulanFromNo(mo)+ ' '+
                             LowerCase(PrefixTahun + Terbilang (ye));
     csUppercase : Result := UpperCase(Terbilang(da)+ ' '+
                              PrefixBulan + GetNamaBulanFromNo(mo)+ ' '+
                              PrefixTahun + Terbilang (ye));           
     csProperCase : Result := ProperCase(Terbilang(da)+ ' '+
                              PrefixBulan + GetNamaBulanFromNo(mo)+ ' '+
                              PrefixTahun + Terbilang (ye));       
     csSentenceCase : Result := SentenceCase(Terbilang(da)+ ' '+
                              PrefixBulan + GetNamaBulanFromNo(mo)+ ' '+
                              PrefixTahun + Terbilang (ye));
     else Result := Terbilang(da)+ ' '+
                    PrefixBulan + GetNamaBulanFromNo(mo)+ ' '+
                    PrefixTahun + Terbilang (ye);
     end;
end;

function KalimatWaktu(t:TTime;ResultCase:NTextCase=csNormal):string;
var h, m, s, ms : Word;
begin
     DecodeTime(t,h,m,s,ms);
     case ResultCase of
     csLowercase : Result := LowerCase(Terbilang(h)+ ' Lebih '+ Terbilang (m));
     csUppercase : Result := UpperCase(Terbilang(h)+ ' Lebih '+ Terbilang (m));
     csProperCase : Result := ProperCase(Terbilang(h)+ ' Lebih '+ Terbilang (m));
     csSentenceCase : Result := SentenceCase(Terbilang(h)+ ' Lebih '+ Terbilang (m));
     else Result := Terbilang(h)+ ' Lebih '+ Terbilang (m);
     end;
end;

function ArrToStr(AArray:array of string; ASeparator:string=','):string;
var i : word;
begin
     Result := '';
     for i := low(AArray) to High (AArray) do
     begin
          if Result <> '' then Result := Result + ASeparator;
          Result := Result + AArray[i];
     end;
end;

function ExtractMergeField(VarName:string): RMergeField;
var ACase : string;
begin
     //AField := Trim(GetStringBetween (VarName, 'MERGEFIELD', '\'));
     with Result do
     begin
          Field := Trim(GetReplaceBetween (VarName, 'MERGEFIELD', '\', '\'));
          if Field = '' then Exit;
          Format := Trim(GetReplaceBetween (VarName, '[', ']'));
          ACase  := Trim(GetReplaceBetween (VarName, '\* ', '\', '\'));
          Before := StringReplace( Trim(GetReplaceBetween (VarName, '\b ', '\', '\')) , '"','', [rfReplaceAll]);
          After  := StringReplace( Trim(GetReplaceBetween (VarName, '\f ', '\', '\')) , '"','', [rfReplaceAll]);

          if CompareText(ACase, 'Upper') = 0 then TextCase := csUpperCase else
          if CompareText(ACase, 'Lower') = 0 then TextCase := csLowercase else
          if CompareText(ACase, 'Caps') = 0  then TextCase := csProperCase else
          if CompareText(ACase, 'FirstCaps') = 0 then TextCase := csSentenceCase else
          TextCase := csNormal;
     end;
end;

function PenuhiTeks (s:string;MaxWidth:Integer;chr:Char='-';
     FontName:TFontName='Bookman Old Style';FontSize:Integer=12):string;
var bmp : TBitmap;
    List : TStrings;
    i : SmallInt;
    tmp : string;
begin
     MaxWidth := MmToPixelInt(MaxWidth);
     try
          bmp := TBitmap.Create;
          bmp.Canvas.Font.Name := FontName;
          bmp.Canvas.Font.Size := FontSize;

          List := TStringList.Create;
          ExtractStrings([' '], [], PChar(s), List);
          for i := 0 to List.Count -1 do
          begin
               if tmp <> '' then tmp := tmp+' ';
               if bmp.Canvas.TextWidth(tmp + List[i]) > MaxWidth then
               begin
                    Result := Result+tmp;
                    tmp := '';
               end;
               tmp := trim(tmp + List[i]);
          end;
          tmp := tmp + ';';
          while bmp.Canvas.TextWidth(tmp + chr+chr) < MaxWidth do tmp := tmp + chr+chr;
          Result := Result+tmp;
     finally
          if Assigned(bmp) then FreeAndNil(bmp);   
          if Assigned(List) then FreeAndNil(List);
     end;
end;

//------ security functions --------------------------------------------------//
function EnDeCrypt(const Value : String) : String;
var
     CharIndex : integer;
begin
     Result := Value;
     for CharIndex := 1 to Length(Value) do
          Result[CharIndex] := chr(not(ord(Value[CharIndex])));
end;

function MD5(const Value : string) : string;
 var
   idmd5 : TIdHashMessageDigest5;
   //fs : TFileStream;
   //hash : T4x4LongWordRecord;
 begin
   idmd5 := TIdHashMessageDigest5.Create;
   //fs := TFileStream.Create(fileName, fmOpenRead OR fmShareDenyWrite) ;
   try
//     result := idmd5.AsHex(idmd5.HashValue(Value)) ;
      result := idmd5.HashStringAsHex(Value);
   finally
     //fs.Free;
     idmd5.Free;
   end;
 end;

function MySQLAESEncrypt(value, secretkey : string) : string;
begin
  Result := 'AES_ENCRYPT('+value+', UNHEX(SHA2('+_Q(secretkey)+',512)))';
end;

function MySQLAESDecrypt(field, secretkey : string) : string;
begin
  Result := 'AES_DECRYPT('+field+', UNHEX(SHA2('+_Q(secretkey)+',512)))';
end;

//----------------------------- other functions ------------------------------//
procedure ShellExecute_AndWait(FileName, Parameter : String; Wait:Boolean=True);
var
     exInfo : TShellExecuteInfo;
     Ph     : DWORD;
begin
     FillChar(exInfo, Sizeof(exInfo), 0);
     with exInfo do
     begin
          cbSize:= Sizeof( exInfo );
          fMask := SEE_MASK_NOCLOSEPROCESS or SEE_MASK_FLAG_DDEWAIT;
          Wnd := GetActiveWindow();
          ExInfo.lpVerb := 'open';
          lpFile:= PChar(FileName);
          //lpDirectory := PChar(ExtractFilePath(FileName));
          lpParameters := PChar(Parameter);
          nShow := SW_SHOWNORMAL; //shellexecute
     end;
     if ShellExecuteEx(@exInfo) then
          Ph := exInfo.HProcess
     else
     begin
          raise Exception.Create(SysErrorMessage(GetLastError));
          exit;
     end;
     if Wait then
          while WaitForSingleObject(ExInfo.hProcess, 50) <> WAIT_OBJECT_0 do
               Application.ProcessMessages;
     CloseHandle(Ph);
end;

function GetAppVersion: string;
var
//  Rec: LongRec;
  VerInfoSize, VerValueSize, Dummy : DWORD;
  VerInfo : Pointer;
  VerValue : PVSFixedFileInfo;
  V1,       // Major Version
  V2,       // Minor Version
  V3,       // Release
  V4: Word; // Build Number
begin
//  Rec := LongRec(GetFileVersion(ParamStr(0)));
//  Result := Format('%d.%d.%d', [Rec.Hi, Rec.Lo, Rec.Lo]);
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  With VerValue^ do
  begin
    V1 := dwFileVersionMS shr 16;
    V2 := dwFileVersionMS and $FFFF;
    V3 := dwFileVersionLS shr 16;
    V4 := dwFileVersionLS and $FFFF;
  end;
  Result := IntToStr(V1) + '.'
          + IntToStr(V2) + '.'
          + IntToStr(V3);
  FreeMem(VerInfo, VerInfoSize);
end;

function GetEnvVarValue(const VarName: string): string;
var
  BufSize: Integer;  // buffer size required for value
begin
  // Get required buffer size (inc. terminal #0)
  BufSize := GetEnvironmentVariable(PChar(VarName), nil, 0);
  if BufSize > 0 then
  begin
    // Read env var value into result string
    SetLength(Result, BufSize - 1);
    GetEnvironmentVariable(PChar(VarName),
      PChar(Result), BufSize);
  end
  else
    // No such environment variable
    Result := '';
end;

function GetCompName:string;
begin
     Result := GetEnvVarValue('COMPUTERNAME');
end;

procedure SetBahasaIndonesia;
var i :integer;
begin
     for i:= 1 to 7 do FormatSettings.LongDayNames[i] := NamaHari[i];
     for i:= 1 to 12 do FormatSettings.LongMonthNames[i] := NamaBulan[i];
end;

procedure SetComputerDateTime(Year, Month, Day, Hour, Minu, Sec, MSec: Word);
var
     NewDateTime: TSystemTime;
begin
     FillChar(NewDateTime, SizeOf(NewDateTime), #0);
     NewDateTime.wYear := Year;
     NewDateTime.wMonth := Month;
     NewDateTime.wDay := Day;
     NewDateTime.wHour := Hour;
     NewDateTime.wMinute := Minu;
     NewDateTime.wSecond := Sec;
     NewDateTime.wMilliseconds := MSec;
     SetLocalTime(NewDateTime);
end;     

procedure SetComputerDateTime(dt:TDatetime);
var
     ye, mo, da, h, m, s, ms : Word;
begin
     DecodeDate (dt,ye, mo, da);
     DecodeTime (dt, h, m, s, ms);
     SetComputerDateTime (ye, mo, da, h, m, s, ms);
end;       

procedure CompressFiles(Files : TStrings; const Filename : String);
var
  infile, outfile, tmpFile : TFileStream;
  compr : TCompressionStream;
  i,l : Integer;
  s, TempDir : String;
begin
     TempDir := GetEnvVarValue  ('TEMP');
  if Files.Count > 0 then
  begin
    outFile := TFileStream.Create(Filename,fmCreate);
    try
      { the number of files }
      l := Files.Count;
      outfile.Write(l,SizeOf(l));
      for i := 0 to Files.Count-1 do
      begin
        infile := TFileStream.Create(Files[i],fmOpenRead);
        try
          { the original filename }
          s := ExtractFilename(Files[i]);
          l := Length(s);
          outfile.Write(l,SizeOf(l));
          outfile.Write(s[1],l);
          { the original filesize }
          l := infile.Size;
          outfile.Write(l,SizeOf(l));
          { compress and store the file temporary}
          tmpFile := TFileStream.Create(TempDir+'\tmpardb',fmCreate);
          compr := TCompressionStream.Create(clMax,tmpfile);
          try
            compr.CopyFrom(infile,l);
          finally
            compr.Free;
            tmpFile.Free;
          end;
          { append the compressed file to the destination file }
          tmpFile := TFileStream.Create(TempDir+'\tmpardb',fmOpenRead);
          try
            outfile.CopyFrom(tmpFile,0);
          finally
            tmpFile.Free;
          end;
        finally
          infile.Free;
        end;
      end;
    finally
      outfile.Free;
    end;
    DeleteFile(pcHAR(TempDir+'\tmpardb'));
  end;
end;

procedure DecompressFiles(const Filename, DestDirectory : String);
var
  dest,s : String;
  decompr : TDecompressionStream;
  infile, outfile : TFilestream;
  i,l,c : Integer;
begin
  // IncludeTrailingPathDelimiter (D6/D7 only)
  dest := IncludeTrailingPathDelimiter(DestDirectory);

  infile := TFileStream.Create(Filename,fmOpenRead);
  try
    { number of files }
    infile.Read(c,SizeOf(c));
    for i := 1 to c do
    begin
      { read filename }
      infile.Read(l,SizeOf(l));
      SetLength(s,l);
      infile.Read(s[1],l);
      { read filesize }
      infile.Read(l,SizeOf(l));
      { decompress the files and store it }
      s := dest+s; //include the path
      outfile := TFileStream.Create(s,fmCreate);
      decompr := TDecompressionStream.Create(infile);
      try
        outfile.CopyFrom(decompr,l);
      finally
        outfile.Free;
        decompr.Free;
      end;
    end;
  finally
    infile.Free;
  end;
end;
      
//------ messages ------------------------------------------------------------//
function Konfirmasi (s:string):Boolean;
begin
     Result := (MessageDlg(s, mtConfirmation, [mbYes, mbNo], 0) = mrYes);
     //Result := MessageBox(GetActiveWindow, PChar(s), PChar('Konfirmasi'), MB_YESNO + MB_ICONQUESTION)=idYes;
end;   

procedure Informasi (s : string);
begin
     MessageDlg(s, mtInformation, [mbOK], 0);
     //MessageBox(GetActiveWindow, PChar(s), PChar('Informasi'), MB_OK + MB_ICONINFORMATION);
end;

procedure Peringatan (s:string;Aborted:Boolean=False);
begin
     MessageDlg(s, mtWarning, [mbOK], 0);
     //MessageBox(GetActiveWindow, PChar(s), PChar('Peringatan'), MB_OK + MB_ICONWARNING);
     if Aborted then Abort;
end;

procedure PesanError (s:string;Aborted:Boolean=True);
begin                              
     MessageDlg(s, mtError, [mbOK], 0);
     //MessageBox(GetActiveWindow, PChar(s), PChar('Pesan Kesalahan'), MB_OK + MB_ICONERROR);
     if Aborted then Abort;
end;

procedure Salah (s : string);
begin
     raise Exception.Create(s);   
     //MessageBox(GetActiveWindow, PChar(pesan), PChar('Pesan Kesalahan'), MB_OK + MB_ICONERROR);
     //Abort;
end;

procedure ResizeBMP(b : TBitmap; New : integer);
var
tbmp : TBitmap;
persen : Double;
ARect: TRect;
wid, hei : Integer;
begin
  tbmp := TBitmap.Create;
  tbmp.Width := b.Width;
  tbmp.Height := b.Height;

  if (b.Height >= b.Width) and ((b.Height > New) or (b.Width > New)) then begin
    persen := New / b.Height;
    hei := New;
    wid := Trunc(persen * b.Width);
  end else if (b.Width >= b.Height) and ((b.Height > New) or (b.Width > New)) then begin
    persen := New / b.Width;
    wid := New;
    hei := Trunc(persen * b.Height);
  end else begin
    wid := b.Width;
    hei := b.Height
  end;

  ARect := Rect(0,0, wid, hei);

  tbmp.Width := wid;
  tbmp.Height := hei;
  tbmp.Canvas.StretchDraw(ARect, b);

  b.Assign(tbmp);

  tbmp.Free;
end;

procedure ResizeJpg(APict:TPicture; ASize: Integer);
var Jpg  : TJPEGImage;
	Scale : Double;
begin
	  try
		   Jpg := TJPEGImage.Create;
		   Jpg.Assign(APict);
		   if Jpg.Height > Jpg.Width then
				Scale := ASize / Jpg.Height
		   else Scale := ASize / Jpg.Width;

		   APict.Bitmap.Width := Round(Jpg.Width * Scale);
		   APict.Bitmap.Height:= Round(Jpg.Height * Scale);
		   APict.Bitmap.Canvas.StretchDraw(APict.Bitmap.Canvas.ClipRect, Jpg);
		   Jpg.Assign(APict.Bitmap);

		   APict.Assign(Jpg);
	  finally
		   if Assigned (Jpg) then FreeAndNil(Jpg);
	  end;
end;

//------ koneksi FTP ------------------------------------------------------------//
      
function TryFtpConnect(AServer, AUsername, APassword:string):Boolean;
begin  
     Result := False;
     with TIdFTP.Create(Application) do
     try
         Host := AServer;
         Username := AUsername;
         Password := APassword;
         Passive := True;
         try Connect; Result := True; except end;
     finally
     //quit = disconnect
         //Quit;
         Disconnect; Free;
     end;
end;

procedure UploadFtp (AServer, AUsername, APassword,
          AFileSource, ADirectory, AFileDest:string);
begin
     with TIdFTP.Create(Application) do
     try
         Host := AServer;
         Username := AUsername;
         Password := APassword;
         Passive := True; 
         Connect;

         try
             ChangeDir('/'+ADirectory+'/');
         except
              MakeDir(ADirectory); ChangeDir('/'+ADirectory+'/');
         end;
         Put(AFileSource, AFileDest);
     finally
     //quit = disconnect
//         Quit;
         Disconnect; Free;
     end;
end;   

function LoadStreamFtp(AStream:TStream;
          AServer, AUsername, APassword, ADirectory, AFileSource:string):Boolean;
var ts : Tstrings;
begin
     Result := False;
     with TIdFTP.Create(Application) do
     try
         if not Assigned(AStream) then AStream := TMemoryStream.Create;
         ts  := TStringList.Create;
         
         Host := AServer;
         Username := AUsername;
         Password := APassword;
         Passive := True;

         try
              Connect;     
              try
                  ChangeDir('/'+ADirectory+'/');
              except
                   MakeDir(ADirectory); ChangeDir('/'+ADirectory+'/');
              end;
              List(ts, '', false);
              if ts.IndexOf(AFileSource) <> -1 then
              begin
                   Get(AFileSource, AStream); AStream.Position := 0;
                   if AStream.Size > 0 then Result := True;
              end;
         except
         end;
     finally                                           
         if Assigned(ts) then FreeAndNil(ts);
         //quit = disconnect
         //Quit;
         Disconnect; Free;
     end;
end;

function LoadImageFtp(AImage:TPicture;
          AServer, AUsername, APassword, ADirectory, AFileSource:string):Boolean;
var AStream:TStream;
    Jpg : TJPEGImage;
    ts : Tstrings;
begin
     Result := False;
     with TIdFTP.Create(Application) do
     try         
         AStream := TMemoryStream.Create;
         Jpg := TJPEGImage.Create;
         ts  := TStringList.Create;
         
         Host := AServer;
         Username := AUsername;
         Password := APassword;
         Passive := True;

         try
              Connect;     
              try
                  ChangeDir('/'+ADirectory+'/');
              except
                   MakeDir(ADirectory); ChangeDir('/'+ADirectory+'/');
              end;
              List(ts, '', false);
              if ts.IndexOf(AFileSource) <> -1 then
              begin
                   Get(AFileSource, AStream); AStream.Position := 0;
                   if AStream.Size > 0 then
                   begin
                        Jpg.LoadFromStream(AStream);
                        AImage.Assign(Jpg);
                        Result := True;
                   end;
              end;
         except
         end;
     finally                                           
         if Assigned(ts) then FreeAndNil(ts);
         if Assigned(AStream) then FreeAndNil(AStream);
         if Assigned(Jpg) then FreeAndNil(Jpg);
         //quit = disconnect
         //Quit;
         Disconnect; Free;
     end;
end;

end.