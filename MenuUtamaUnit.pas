{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit MenuUtamaUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  TypeUnit, JPEG, AdvToolBar, AdvToolBarStylers, ImgList, AppEvnts, DBGrids,
  ExtCtrls, ActnList, ComCtrls, StdCtrls, Grids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZStoredProcedure, AdvMenuStylers, AdvMenus, Style,
  AdvAppStyler, IniFiles, ListActns, System.ImageList, System.Actions;

type
  TfrmMenuUtama = class(TForm)
    actlstn: TActionList;
    _Karyawan: TAction;
    _Login: TAction;
    _Logout: TAction;
    _User: TAction;
    _About: TAction;
    _Setting: TAction;
    _Registrasi: TAction;
    tmrMain: TTimer;
    _Jabatan: TAction;
    _GantiPassword: TAction;
    imgBg: TImage;
    _UserLevel: TAction;
    stlMenu: TAdvToolBarOfficeStyler;
    statMain: TStatusBar;
    ilStat: TImageList;
    aevMain: TApplicationEvents;
    _SettingDB: TAction;
    _Keluar: TAction;
    ilMain: TImageList;
    pagerMenu: TAdvToolBarPager;
    pageFile: TAdvPage;
    tlbLogin: TAdvToolBar;
    tlbSetting: TAdvToolBar;
    tlbKeluar: TAdvToolBar;
    tlbUser: TAdvToolBar;
    pageMaster: TAdvPage;
    pagePanduan: TAdvPage;
    tlbPanduan: TAdvToolBar;
    mmoSQLCreateDatabase: TMemo;
    mmoSQLCreateProcedure: TMemo;
    mmoSQLIsiMaster: TMemo;
    mmoSQLIsiProses: TMemo;
    mmoSQLKosongkan: TMemo;
    AdvToolBar2: TAdvToolBar;
    btnLogin: TAdvToolBarButton;
    btnLogout: TAdvToolBarButton;
    btn: TAdvToolBarButton;
    btnSettingDB: TAdvToolBarButton;
    btnSettingPerusahaan: TAdvToolBarButton;
    btnExit: TAdvToolBarButton;
    btnOperator: TAdvToolBarButton;
    btnGantiPassword: TAdvToolBarButton;
    btnUserLevel: TAdvToolBarButton;
    btnKaryawan: TAdvToolBarButton;
    btnAbout: TAdvToolBarButton;
    btnRegistrasi: TAdvToolBarButton;
    AdvToolBar1: TAdvToolBar;
    AdvToolBar3: TAdvToolBar;
    AdvToolBarButton2: TAdvToolBarButton;
    AdvToolBar4: TAdvToolBar;
    AdvToolBarButton3: TAdvToolBarButton;
    _Server: TAction;
    _TipeServer: TAction;
    _OSServer: TAction;
    _ListOS: TAction;
    _Lokasi: TAction;
    _Rak: TAction;
    _Panel: TAction;
    _MCBLegrand: TAction;
    _PemilikServer: TAction;
    _ATS: TAction;
    _Pemeliharaan: TAction;
    _DataServerTracking: TAction;
    AdvToolBarButton4: TAdvToolBarButton;
    AdvToolBarButton5: TAdvToolBarButton;
    AdvToolBarButton8: TAdvToolBarButton;
    AdvToolBarButton9: TAdvToolBarButton;
    btnPemeliharaan: TAdvToolBarButton;
    btnATS: TAdvToolBarButton;
    btnPemilikServer: TAdvToolBarButton;
    AdvPage1: TAdvPage;
    AdvToolBar5: TAdvToolBar;
    btnDataServerTracking: TAdvToolBarButton;
    btnServerMasuk: TAdvToolBarButton;
    btnServerKeluar: TAdvToolBarButton;
    btnPindahServer: TAdvToolBarButton;
    _ServerMasuk: TAction;
    _PindahServer: TAction;
    _ServerKeluar: TAction;
    btnMerk: TAdvToolBarButton;
    _Merk: TAction;
    advtlbr1: TAdvToolBar;
    btnactCnPrefixWizard: TAdvToolBarButton;
    btnactCnPrefixWizard1: TAdvToolBarButton;
    _EoS: TAction;
    btnEos: TAdvToolBarButton;
    _JenisPerangkat: TAction;
    _Laporan: TAction;
    advpgLaporan: TAdvPage;
    advtlbr2: TAdvToolBar;
    btnactCnPrefixWizard2: TAdvToolBarButton;
    btnPICServer: TAdvToolBarButton;
    _PICServer: TAction;
    _DataLogUser: TAction;
    advtlbr3: TAdvToolBar;
    AdvToolbarDataChecklist: TAdvToolBarButton;
    AdvToolBarButton1: TAdvToolBarButton;
    _DataChecklistPerangkat: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure _AboutExecute(Sender: TObject);
    procedure _LogoutExecute(Sender: TObject);
    procedure _LoginExecute(Sender: TObject);
    procedure _KaryawanExecute(Sender: TObject);
    procedure _UserExecute(Sender: TObject);
    procedure _SettingExecute(Sender: TObject);
    procedure _GantiPasswordExecute(Sender: TObject);
    procedure _SettingDBExecute(Sender: TObject);
    procedure _KeluarExecute(Sender: TObject);
    procedure tmrMainTimer(Sender: TObject);
    procedure statMainDrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel; const Rect: TRect);
    procedure aevMainMessage(var Msg: tagMSG; var Handled: Boolean);
    procedure _UserLevelExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure LoadMenuUtamaDisplayColor(AStyle: NThemeStyle);
    procedure _ServerExecute(Sender: TObject);
    procedure _DataServerTrackingExecute(Sender: TObject);
    procedure _TipeServerExecute(Sender: TObject);
    procedure _ListOSExecute(Sender: TObject);
    procedure _PanelExecute(Sender: TObject);
    procedure _PemilikServerExecute(Sender: TObject);
    procedure _ATSExecute(Sender: TObject);
    procedure _RakExecute(Sender: TObject);
    procedure _MCBLegrandExecute(Sender: TObject);
    procedure _ServerMasukExecute(Sender: TObject);
    procedure _PindahServerExecute(Sender: TObject);
    procedure _ServerKeluarExecute(Sender: TObject);
    procedure _PemeliharaanExecute(Sender: TObject);
    procedure _LokasiExecute(Sender: TObject);
    procedure _OSServerExecute(Sender: TObject);
    procedure _MerkExecute(Sender: TObject);
    procedure _EoSExecute(Sender: TObject);
    procedure _LaporanExecute(Sender: TObject);
    procedure _PICServerExecute(Sender: TObject);
    procedure _DataLogUserExecute(Sender: TObject);
    procedure _DataChecklistPerangkatExecute(Sender: TObject);
  private
    { Private declarations }
    procedure SetMenuLogin(Login: Boolean = false);
    procedure HandleException(Sender: TObject; E: Exception);
    procedure CheckAppVersion;
  public
    { Public declarations }
  end;

var
  frmMenuUtama: TfrmMenuUtama;

implementation

uses
  ArFunctions, ArComponents, ArDBModule, TypInfo, SettingDBUnit, AboutUnit,
  LoginUnit, GantiPasswordUnit, UserLevelUnit, UserUnit, KaryawanUnit,
  SettingProgramUnit, RegisterUnit, DataServerUnit, DataTransServerTracking, DataTipeServer, DataListOS, DataPanel, DataPemilik, DataATS, DataRak,
  TransServerMasukUnit, TransPindahServerUnit, TransServerKeluarUnit, DataPemeliharaan, DataLokasi, DataOSServer, DataMerk, DataEOS,
  LaporanUnit, ArConsts, DataPICServer, DataLogUser, DataMCBLegrand,
  DataChecklistPerangkat;

{$R *.dfm}

procedure TfrmMenuUtama.SetMenuLogin(Login: Boolean = false);
begin
  if not Login then
  begin
    CloseAnotherForms(Self);
    User.Superadmin := False;
  end;
     //if user.IDUser=1 then User.Superadmin := True;

     //EnableActions;
  _UserLevel.Enabled := Login and BolehAkses(mnUserLevel);
  _User.Enabled := Login and BolehAkses(mnUser);
  _Setting.Enabled := Login and BolehAkses(mnSetting);

  _Karyawan.Enabled := Login and BolehAkses(mnKaryawan);

  _Login.Enabled := not Login;
  _Logout.Enabled := Login;
  _GantiPassword.Enabled := Login;

  _SettingDB.Enabled := True;
  _Keluar.Enabled := True;

  if Login then
  begin
    statMain.Panels[4].Text := 'Login : ' + User.Nama;
    if BolehAkses(mnSetting) and (trim(__Company[cpNama]) = '') then
      _Setting.Execute;

  end
  else
  begin
    FillChar(User, SizeOf(User), 0);
    statMain.Panels[4].Text := 'Login : ';
  end;
end;

procedure TfrmMenuUtama.HandleException(Sender: TObject; E: Exception);
begin
  DoHandleException(Sender, E);
end;

procedure TfrmMenuUtama.statMainDrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel; const Rect: TRect);
begin
  with StatusBar.Canvas do
  begin
    Font.Style := [fsBold];
    case Panel.Index of
      0:
        Font.Color := clNavy; //
      1:
        Font.Color := $00a7882f; //clTeal;
      2:
        Font.Color := $00a7882f;
      4:
        Font.Color := $005f4729; //clBlue;
    end;
          //Panel background color
    FillRect(Rect);
          //Panel Text
    if Panel.Index = (StatusBar.Panels.Count - 1) then
      TextRect(Rect, Rect.Right - TextWidth(Panel.Text) - 2, Rect.Top, Panel.Text)
    else
      TextRect(Rect, 2 + frmMenuUtama.ilStat.Width + Rect.Left, Rect.Top, Panel.Text);
  end;

     //draw graphics
  if Panel.Index = (StatusBar.Panels.Count - 1) then
    frmMenuUtama.ilStat.Draw(statMain.Canvas, Rect.Right - frmMenuUtama.ilStat.Width, Rect.Top, Panel.Index)
  else
    frmMenuUtama.ilStat.Draw(statMain.Canvas, Rect.Left, Rect.Top, Panel.Index);
end;

procedure TfrmMenuUtama.aevMainMessage(var Msg: tagMSG; var Handled: Boolean);
var
  i: Smallint;
  Ctrl: TWinControl;
begin
  if (Msg.message = WM_MOUSEWHEEL) then
  begin
    Ctrl := FindVCLWindow(Mouse.CursorPos);
    if Ctrl is TDBGrid then
    begin
      Msg.message := WM_KEYDOWN;
      Msg.lParam := 0;
      i := HiWord(Msg.wParam);
      if i > 0 then
        Msg.wParam := VK_UP
      else
        Msg.wParam := VK_DOWN;

      Handled := False;
    end;
  end;
end;

procedure TfrmMenuUtama.FormCreate(Sender: TObject);
var
  i: Byte;
begin
  pagerMenu.Caption.Caption := Caption;
  pagerMenu.ActivePageIndex := 0;
     //pagerMenu.Collaps;

  Constraints.MinHeight := 680;
  Constraints.MinWidth := 980;
     //Constraints.MaxHeight := 768;

  SetBahasaIndonesia;

  imgBg.Align := alClient;
  if FileExists(PathImg + 'bg.jpg') then
    imgBg.Picture.LoadFromFile(PathImg + 'bg.jpg');

  for i := 0 to statMain.Panels.Count - 1 do
    statMain.Panels[i].Style := psOwnerDraw;
  Application.OnException := HandleException;

  LoadStyleSetting;
  LoadMenuUtamaDisplayColor(WarnaMenuUtamaTerpilih);

     //color office menu style
    {with stlMenu do
    begin
      //background color
      Style:=bsCustom;

      TabAppearance.BackGround.Color := BASE_COLOR;
      TabAppearance.BackGround.ColorTo:=BASE_COLOR;

      //font color
      TabAppearance.TextColor:= clBlack;
      TabAppearance.TextColorHot:= BASE_COLOR;
      TabAppearance.TextColorSelected:= BASE_COLOR;

      PageAppearance.Color:=FLAT_COLOR5;
      PageAppearance.ColorTo:=FLAT_COLOR5;
      PageAppearance.ColorMirror:=FLAT_COLOR5;
      PageAppearance.ColorMirrorTo:=FLAT_COLOR5;
      PageAppearance.BorderColor:=FLAT_COLOR5;
      PageAppearance.ShadowColor:=FLAT_COLOR5;
      frmMenuUtama.Color:=FLAT_COLOR5;
    end; }
end;

procedure TfrmMenuUtama.FormShow(Sender: TObject);
//var JPG : TGraphic;
begin
  SetMenuLogin();

  statMain.Panels[0].Text := 'Terputus';
  statMain.Panels[1].Text := '';
  statMain.Panels[2].Text := FormatDateTime('dd mmmm yyyy', ArDB.ServerTime);
  statMain.Panels[3].Text := FormatDateTime('HH:nn', ArDB.ServerTime);
  statMain.Panels[4].Text := 'Login : ';

     {if MyReg.LicenseID <> '' then
          statMain.Panels[4].Text := 'User Lisensi : '+MyReg.LicenseID
     else
     }
//statMain.Panels[5].Text := 'Copyright : ' + DEFAULT_LICENCE_ID;

  tmrMain.Enabled := True;
  WindowState := wsMaximized;
  Update;

  repeat
    if ArDB.LoadDBSetFromINI then
    try
      ArDB.Connect;
    except
               //on e : Exception do DoHandleException (Self, e);
    end;
  until ArDB.Connected or (not (Konfirmasi('Ganti setting database kemudian mencoba terkoneksi dengan database lagi?') and ShowSettingDB));

  if ArDB.Connected then
  begin
    LoadSettings;
          //LoadGLSettings;
    statMain.Panels[1].Text := ''; //tahun fiskal
    if __Company[cpNama] <> '' then
      Caption := 'DCIM - ' + __Company[cpNama]+' v '+GetAppVersion;

          //RestructureTables;
    if User.IDUser = 0 then
    begin
      _LoginExecute(Sender);
//      CheckAppVersion;
    end;
    CheckAppVersion;
  end
  else
  begin
    Application.Terminate;
    Abort;
  end;

     //imgBg.Picture.Assign(__Logo);
end;

procedure TfrmMenuUtama.FormDestroy(Sender: TObject);
begin
  if Assigned(__Logo) then
    FreeAndNil(__Logo);
end;

procedure TfrmMenuUtama._AboutExecute(Sender: TObject);
begin
  ShowAbout;
end;

procedure TfrmMenuUtama._LogoutExecute(Sender: TObject);
begin
  if Konfirmasi('Anda yakin untuk logout?') then
    SetMenuLogin();
end;

procedure TfrmMenuUtama._LoginExecute(Sender: TObject);
begin
  SetMenuLogin(ShowLogin);
end;

procedure TfrmMenuUtama._KaryawanExecute(Sender: TObject);
begin
  ShowDataKaryawan;
end;

procedure TfrmMenuUtama._UserExecute(Sender: TObject);
begin
  ShowDataUser;
end;

procedure TfrmMenuUtama._SettingExecute(Sender: TObject);
begin
  ShowSettingProgram;
  if __Company[cpNama] <> '' then
    Caption := 'DCIM - ' + __Company[cpNama];
end;

procedure TfrmMenuUtama._GantiPasswordExecute(Sender: TObject);
begin
  ShowGantiPassword; //(User.IDUser);
end;

procedure TfrmMenuUtama._SettingDBExecute(Sender: TObject);
begin
  ShowSettingDB;
end;

procedure TfrmMenuUtama.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := Konfirmasi('Anda yakin ingin keluar dari aplikasi?');
end;

procedure TfrmMenuUtama._KeluarExecute(Sender: TObject);
begin
  Application.MainForm.Close;
end;

procedure TfrmMenuUtama.tmrMainTimer(Sender: TObject);
begin
  statMain.Panels[2].Text := FormatDateTime('dd mmmm yyyy', ArDB.ServerTime);
  statMain.Panels[3].Text := FormatDateTime('HH:nn', ArDB.ServerTime);

  if ArDB.Connected then
    statMain.Panels[0].Text := 'Terhubung'
  else
  begin
    statMain.Panels[0].Text := 'Terputus';
    Exit;
  end;
end;

procedure TfrmMenuUtama._UserLevelExecute(Sender: TObject);
begin
  ShowDataUserLevel;
end;

procedure TfrmMenuUtama.LoadMenuUtamaDisplayColor(AStyle: NThemeStyle);
begin
//  stlMenu.TabAppearance.Font.Size := 8;
//  stlMenu.CaptionFont.Size := 8;

  stlMenu.TabAppearance.TextColor := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.TabAppearance.TextColorSelected := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.TabAppearance.TextColorHot := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.TabAppearance.Font.Color := WarnaThemeMenuUtama(icTitleFontColor);

  stlMenu.CaptionFont.Color := WarnaThemeMenuUtama(icTitleFontColor);

  stlMenu.CaptionAppearance.CaptionTextColor := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.CaptionAppearance.CaptionTextColorHot := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.CaptionAppearance.CaptionColor := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.CaptionAppearance.CaptionColorTo := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.CaptionAppearance.CaptionColorHot := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.CaptionAppearance.CaptionColorHotTo := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.CaptionAppearance.CaptionBorderColor := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.CaptionAppearance.CaptionBorderColorHot := WarnaThemeMenuUtama(icTitleFontColor);

  stlMenu.PagerCaption.TextColor := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.PagerCaption.TextColorExtended := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.PagerCaption.Font.Color := WarnaThemeMenuUtama(icTitleFontColor);

  stlMenu.ButtonAppearance.CaptionTextColor := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.ButtonAppearance.CaptionTextColorHot := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.ButtonAppearance.CaptionTextColorDown := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.ButtonAppearance.CaptionTextColorChecked := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.ButtonAppearance.CaptionFont.Color := WarnaThemeMenuUtama(icTitleFontColor);

  stlMenu.GlowButtonAppearance.TextColorChecked := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.GlowButtonAppearance.TextColorDown := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.GlowButtonAppearance.TextColorHot := WarnaThemeMenuUtama(icTitleFontColor);

  stlMenu.CompactGlowButtonAppearance.TextColorChecked := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.CompactGlowButtonAppearance.TextColorDown := WarnaThemeMenuUtama(icTitleFontColor);
  stlMenu.CompactGlowButtonAppearance.TextColorHot := WarnaThemeMenuUtama(icTitleFontColor);

  stlMenu.Font.Color := WarnaThemeMenuUtama(icTitleFontColor);

     //0 = menu utama background color
  frmMenuUtama.Color := WarnaThemeMenuUtama(icMenuUtamaColor);

  stlMenu.TabAppearance.BackGround.Color := WarnaThemeMenuUtama(icMenuUtamaTabColor);
  stlMenu.TabAppearance.BackGround.ColorTo := WarnaThemeMenuUtama(icMenuUtamaTabColor);
  stlMenu.TabAppearance.ShadowColor := WarnaThemeMenuUtama(icMenuUtamaTabColor);
  stlMenu.TabAppearance.BorderColor := WarnaThemeMenuUtama(icMenuUtamaTabColor);
  stlMenu.TabAppearance.BorderColorHot := WarnaThemeMenuUtama(icMenuUtamaTabColor);
  stlMenu.TabAppearance.BorderColorSelected := WarnaThemeMenuUtama(icMenuUtamaTabColor);
  stlMenu.TabAppearance.BorderColorSelectedHot := WarnaThemeMenuUtama(icMenuUtamaTabColor);

  stlMenu.BorderColor := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.BorderColorHot := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);

  stlMenu.TabAppearance.BorderColorHot := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.TabAppearance.BorderColorSelectedHot := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.TabAppearance.BorderColorSelected := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.TabAppearance.BorderColorDown := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.TabAppearance.ColorSelected := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.TabAppearance.ColorSelectedTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.TabAppearance.ColorMirrorSelected := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.TabAppearance.ColorMirrorSelectedTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.TabAppearance.ColorMirror := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.TabAppearance.ColorMirrorTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.TabAppearance.ColorTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.TabAppearance.Color := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.TabAppearance.ColorHot := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.TabAppearance.ColorHotTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.TabAppearance.ColorMirrorHot := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.TabAppearance.ColorMirrorHotTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);

  stlMenu.CaptionAppearance.CaptionColor := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.CaptionAppearance.CaptionColorTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);

  stlMenu.PagerCaption.BorderColor := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.PagerCaption.Color := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.PagerCaption.ColorTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.PagerCaption.ColorMirror := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.PagerCaption.ColorMirrorTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);

  stlMenu.ButtonAppearance.Color := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);

  stlMenu.PageAppearance.Color := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.PageAppearance.ColorTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.PageAppearance.ColorMirror := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.PageAppearance.ColorMirrorTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.PageAppearance.BorderColor := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.PageAppearance.ShadowColor := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.PageAppearance.HighLightColor := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);

  stlMenu.RightHandleColor := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.RightHandleColorDown := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.RightHandleColorDownTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.RightHandleColorHot := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.RightHandleColorHotTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.RightHandleColorTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);

  stlMenu.QATAppearance.BorderColor := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.QATAppearance.Color := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.QATAppearance.ColorTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.QATAppearance.FullSizeBorderColor := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.QATAppearance.FullSizeColor := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.QATAppearance.FullSizeColorTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);

  stlMenu.ButtonAppearance.BorderColor := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.ButtonAppearance.Color := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.ButtonAppearance.ColorTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);

  stlMenu.Color.Color := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.Color.ColorTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.Color.Mirror.Color := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.Color.Mirror.ColorTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.Color.Mirror.ColorMirror := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);
  stlMenu.Color.Mirror.ColorMirrorTo := WarnaThemeMenuUtama(icMenuUtamaAppearanceColor);

  stlMenu.CaptionAppearance.CaptionColorHot := WarnaThemeMenuUtama(icMenuUtamaCaptionColor);
  stlMenu.CaptionAppearance.CaptionColorHotTo := WarnaThemeMenuUtama(icMenuUtamaCaptionColor);
  stlMenu.CaptionAppearance.CaptionBorderColor := WarnaThemeMenuUtama(icMenuUtamaCaptionColor);
  stlMenu.CaptionAppearance.CaptionBorderColorHot := WarnaThemeMenuUtama(icMenuUtamaCaptionColor);

  stlMenu.ColorHot.Color := WarnaThemeMenuUtama(icMenuUtamaCaptionColor);
  stlMenu.ColorHot.ColorTo := WarnaThemeMenuUtama(icMenuUtamaCaptionColor);
  stlMenu.ColorHot.Mirror.Color := WarnaThemeMenuUtama(icMenuUtamaCaptionColor);
  stlMenu.ColorHot.Mirror.ColorTo := WarnaThemeMenuUtama(icMenuUtamaCaptionColor);
  stlMenu.ColorHot.Mirror.ColorMirror := WarnaThemeMenuUtama(icMenuUtamaCaptionColor);
  stlMenu.ColorHot.Mirror.ColorMirrorTo := WarnaThemeMenuUtama(icMenuUtamaCaptionColor);

  stlMenu.DockColor.Color := WarnaThemeMenuUtama(icMenuUtamaCaptionColor);
  stlMenu.DockColor.ColorTo := WarnaThemeMenuUtama(icMenuUtamaCaptionColor);

  stlMenu.FloatingWindowBorderColor := WarnaThemeMenuUtama(icMenuUtamaCaptionColor);

  stlMenu.ButtonAppearance.BorderCheckedColor := WarnaThemeMenuUtama(icMenuUtamaButtonColor);
  stlMenu.ButtonAppearance.BorderDownColor := WarnaThemeMenuUtama(icMenuUtamaButtonColor);
  stlMenu.ButtonAppearance.BorderHotColor := WarnaThemeMenuUtama(icMenuUtamaButtonColor);
  stlMenu.ButtonAppearance.ColorChecked := WarnaThemeMenuUtama(icMenuUtamaButtonColor);
  stlMenu.ButtonAppearance.ColorCheckedTo := WarnaThemeMenuUtama(icMenuUtamaButtonColor);
  stlMenu.ButtonAppearance.ColorDown := WarnaThemeMenuUtama(icMenuUtamaButtonColor);
  stlMenu.ButtonAppearance.ColorDownTo := WarnaThemeMenuUtama(icMenuUtamaButtonColor);
  stlMenu.ButtonAppearance.ColorHot := WarnaThemeMenuUtama(icMenuUtamaButtonColor);
  stlMenu.ButtonAppearance.ColorHotTo := WarnaThemeMenuUtama(icMenuUtamaButtonColor);
end;

procedure TfrmMenuUtama._ServerExecute(Sender: TObject);
begin
  ShowDataServer;
end;

procedure TfrmMenuUtama._DataServerTrackingExecute(Sender: TObject);
begin
  ShowDataServerTracking;
end;

procedure TfrmMenuUtama._TipeServerExecute(Sender: TObject);
begin
  ShowDataTipeServer;
end;

procedure TfrmMenuUtama._ListOSExecute(Sender: TObject);
begin
  ShowDataListOS;
end;

procedure TfrmMenuUtama._PanelExecute(Sender: TObject);
begin
  ShowDataPanel;
end;

procedure TfrmMenuUtama._PemilikServerExecute(Sender: TObject);
begin
  ShowDataPemilik;
end;

procedure TfrmMenuUtama._ATSExecute(Sender: TObject);
begin
  ShowDataATS;
end;

procedure TfrmMenuUtama._RakExecute(Sender: TObject);
begin
  ShowDataRak;
end;

procedure TfrmMenuUtama._MCBLegrandExecute(Sender: TObject);
begin
  ShowDataMCBLegrand;
end;

procedure TfrmMenuUtama._ServerMasukExecute(Sender: TObject);
begin
  TransServerMasuk(Null, nil);
end;

procedure TfrmMenuUtama._PindahServerExecute(Sender: TObject);
begin
  TransPindahServer(Null, nil);
end;

procedure TfrmMenuUtama._ServerKeluarExecute(Sender: TObject);
begin
  TransServerKeluar(Null, nil);
end;

procedure TfrmMenuUtama._PemeliharaanExecute(Sender: TObject);
begin
  ShowDataPemeliharaan;
end;

procedure TfrmMenuUtama._LokasiExecute(Sender: TObject);
begin
  ShowDataLokasi;
end;

procedure TfrmMenuUtama._OSServerExecute(Sender: TObject);
begin
  ShowDataOSServer;
end;

procedure TfrmMenuUtama._MerkExecute(Sender: TObject);
begin
  ShowDataMerk;
end;

procedure TfrmMenuUtama._EoSExecute(Sender: TObject);
begin
  ShowDataEOS;
end;

procedure TfrmMenuUtama._LaporanExecute(Sender: TObject);
begin
  ShowLaporan;
end;

procedure TfrmMenuUtama.CheckAppVersion;
var AppVersionInDB : string;
begin
  AppVersionInDB := ArDB.GetData('SELECT aver FROM applog ORDER BY aver DESC LIMIT 1', ftString);
  if GetAppVersion <> AppVersionInDB then
  begin
    Peringatan('Aplikasi ini versi '+GetAppVersion+' dan sudah tidak update, silakan install aplikasi versi '+AppVersionInDB);
    Application.Terminate;
    Abort;
  end;
end;

procedure TfrmMenuUtama._PICServerExecute(Sender: TObject);
begin
  ShowDataPICServer;
end;

procedure TfrmMenuUtama._DataChecklistPerangkatExecute(Sender: TObject);
begin
  ShowDataChecklistPerangkat;
end;

procedure TfrmMenuUtama._DataLogUserExecute(Sender: TObject);
begin
  ShowDataLogUser;
end;

end.
