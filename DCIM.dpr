program DCIM;

uses
  Forms,
  SysUtils,
  windows,
  messages,
  ArComponents in '@units\ArComponents.pas',
  ArConsts in '@units\ArConsts.pas',
  ArDBModule in '@units\ArDBModule.pas' {ArDB: TDataModule},
  ArFunctions in '@units\ArFunctions.pas',
  ArReports in '@units\ArReports.pas',
  BaseForm in '@units\BaseForm.pas' {frmBase},
  DataDtlForm in '@units\DataDtlForm.pas' {frmDataDtl},
  DataDtlOptForm in '@units\DataDtlOptForm.pas' {frmDataDtlOpt},
  DataForm in '@units\DataForm.pas' {frmData},
  DataTransForm in '@units\DataTransForm.pas' {frmDataTrans},
  DialogUnit in '@units\DialogUnit.pas' {frmDialog},
  LapForm in '@units\LapForm.pas' {frmLap},
  TransaksiForm in '@units\TransaksiForm.pas' {frmTransaksi},
  AboutUnit in 'AboutUnit.pas' {frmAbout},
  KaryawanUnit in 'KaryawanUnit.pas' {frmKaryawan},
  LoginUnit in 'LoginUnit.pas' {frmLogin},
  MenuUtamaUnit in 'MenuUtamaUnit.pas' {frmMenuUtama},
  SettingDBUnit in 'SettingDBUnit.pas' {frmSettingDB},
  SettingProgramUnit in 'SettingProgramUnit.pas' {frmSettingProgram},
  TypeUnit in 'TypeUnit.pas',
  GantiPasswordUnit in 'GantiPasswordUnit.pas' {frmGantiPassword},
  UserLevelUnit in 'UserLevelUnit.pas' {frmDataUserLevel},
  UserUnit in 'UserUnit.pas' {frmDataUser},
  RegisterUnit in 'RegisterUnit.pas' {frmRegister},
  Style in '@units\Style.pas',
  DataServerUnit in 'DataServerUnit.pas' {frmDataServer},
  TransServerMasukUnit in 'TransServerMasukUnit.pas' {frmTransServerMasuk},
  DataTransServerTracking in 'DataTransServerTracking.pas' {frmDataTransServerTracking},
  TransServerKeluarUnit in 'TransServerKeluarUnit.pas' {frmTransServerKeluarUnit},
  TransPindahServerUnit in 'TransPindahServerUnit.pas' {frmTransPindahServerUnit},
  DataTipeServer in 'DataTipeServer.pas' {frmDataTipeServer},
  DataListOS in 'DataListOS.pas' {frmDataListOS},
  DataPanel in 'DataPanel.pas' {frmDataPanel},
  DataPemilik in 'DataPemilik.pas' {frmDataPemilik},
  DataATS in 'DataATS.pas' {frmDataATS},
  DataRak in 'DataRak.pas' {frmDataRak},
  DataPemeliharaan in 'DataPemeliharaan.pas' {frmDataPemeliharaan},
  DataLokasi in 'DataLokasi.pas' {frmDataLokasi},
  DataOSServer in 'DataOSServer.pas' {frmDataOSServer},
  DataMerk in 'DataMerk.pas' {frmDataMerk},
  DataEOS in 'DataEOS.pas' {frmDataEOS},
  DataJenisPerangkat in 'DataJenisPerangkat.pas' {frmDataJenisPerangkat},
  TransServerEditUnit in 'TransServerEditUnit.pas' {frmTransServerEditUnit},
  LaporanUnit in 'LaporanUnit.pas' {frmLaporan},
  DataPICServer in 'DataPICServer.pas' {frmDataPICServer},
  ArManager in '@units\ArManager.pas',
  DataLogUser in 'DataLogUser.pas' {frmDataLogUser},
  DataMCBLegrand in 'DataMCBLegrand.pas' {frmDataMCBLegrand},
  DataChecklistPerangkat in 'DataChecklistPerangkat.pas' {frmDataChecklistPerangkat};

{$R *.res}
{$R UACXP.REC}
var dir : string;
begin          
  if (CompareText(ExtractFileExt(ParamStr(1)),'.geb')=0) then
  begin
     dir := ExtractFileDir(ParamStr(1));
     DecompressFiles(ParamStr(1), dir);
     RenameFile(dir+'\backupdatabase.sql', dir+'\'+StringReplace(ExtractFileName(ParamStr(1)), ExtractFileExt(ParamStr(1)), '', [rfReplaceAll]));
     exit;
  end;
  Application.Initialize;
  Application.Title := 'DCIM';

  PathApp   := ExtractFilePath(Application.ExeName);
  PathReport:= PathApp + 'report\';
  PathImg   := PathApp + 'images\';

  //font
  PathFont  := PathApp + 'font\';
  AddFontResource(PChar(PathApp+'font\NotoSans-Bold.ttf'));
  AddFontResource(PChar(PathApp+'font\NotoSans-BoldItalic.ttf'));
  AddFontResource(PChar(PathApp+'font\NotoSans-Italic.ttf'));
  AddFontResource(PChar(PathApp+'font\NotoSans-Regular.ttf'));
  SendMessage(HWND_BROADCAST,WM_FONTCHANGE,0,0);
     
  {MyReg := TRegware4.Create(Application);
  with MyReg do
  begin}
     //diganti disesuaikan dengan aplikasi;
     //ProgGUID    := '{4715F973-7EF1-429E-B77B-8B2FC1BA3B27}';
     {Seed1       := 368532215;
     Seed2       := 345234234;
     Seed3       := 345675676;
     RegCodeSize := 25;
     Days        := 14;
     Reload;
     ShowRegister;
  end;}
  Application.CreateForm(TfrmMenuUtama, frmMenuUtama);
  Application.CreateForm(TArDB, ArDB);
  Application.Run;
end.
