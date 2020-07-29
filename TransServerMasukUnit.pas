unit TransServerMasukUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TransaksiForm, ActnList, ExtCtrls, ImgList, AdvToolBtn, StdCtrls,
  ComCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Buttons, Mask, DBCtrlsEh,
  DBLookupEh, DB, ZAbstractRODataset, ZDataset, MemTableDataEh, MemTableEh,
  vCardBase64, ZAbstractDataset, AdvDateTimePicker, System.Actions,
  System.ImageList;

type
  TfrmTransServerMasuk = class(TfrmTransaksi)
    pnlAtas: TPanel;
    grpDataServer: TGroupBox;
    lblSN: TLabel;
    edtSN: TEdit;
    edtRak: TEdit;
    lblUAwal: TLabel;
    edtUAwal: TEdit;
    lblJumlahU: TLabel;
    edtJumlahU: TEdit;
    lblRak: TLabel;
    lblIPManagement: TLabel;
    edtIPManagement: TEdit;
    lblUserManagement: TLabel;
    edtUserManagement: TEdit;
    lblPasswordManagement: TLabel;
    edtPasswordManagement: TEdit;
    grpOS: TGroupBox;
    lblTipeServer: TLabel;
    edtTipeServer: TEdit;
    dbgOS: TDBGridEh;
    btnCariTipeServer: TAdvToolButton;
    btnCariRak: TAdvToolButton;
    qryLookup: TZReadOnlyQuery;
    pnlOS: TPanel;
    lblOS: TLabel;
    btnTambahOS: TAdvToolButton;
    btnHapusOS: TAdvToolButton;
    cbxOS: TDBLookupComboboxEh;
    dsOS: TDataSource;
    tblOS: TMemTableEh;
    dsTempKelistrikan: TDataSource;
    dsTempOS: TDataSource;
    qryTempOS: TZQuery;
    lblIP: TLabel;
    edtIP: TEdit;
    lblHostname: TLabel;
    edtHostname: TEdit;
    lblSistem: TLabel;
    edtSistem: TEdit;
    lblUser: TLabel;
    edtUser: TEdit;
    lblPassword: TLabel;
    edtPassword: TEdit;
    grpKelistrikan: TGroupBox;
    grpDataLainnya: TGroupBox;
    lblPemilik: TLabel;
    lblATS: TLabel;
    lblTahunPemeliharaan: TLabel;
    lblTglEndOfSupport: TLabel;
    lblNotes: TLabel;
    btnCariPemilik: TAdvToolButton;
    btnCariATS: TAdvToolButton;
    edtPemilik: TEdit;
    edtATS: TEdit;
    edtTahunPemeliharaan: TEdit;
    dtpTglEndOfSupport: TDateTimePicker;
    mmoNotes: TMemo;
    lblTglMasukServer: TLabel;
    dtpTglMasukServer: TAdvDateTimePicker;
    lblNoTiket: TLabel;
    edtNoTiket: TEdit;
    btnRevealPwdMgt: TAdvToolButton;
    btnRevealPwd: TAdvToolButton;
    lblStatusColo: TLabel;
    cbbStatusColo: TComboBox;
    qryTempKelistrikan: TZQuery;
    pnlToolbar: TPanel;
    btnTambahMCB: TAdvToolButton;
    btnHapusMCB: TAdvToolButton;
    lblMCB: TLabel;
    btnCariMCB: TAdvToolButton;
    lblPower: TLabel;
    edtMCB: TEdit;
    cbbPower: TComboBox;
    dbgMCB: TDBGridEh;
    btnCariOS: TAdvToolButton;
    lblpicserver: TLabel;
    btnCariPICServer: TAdvToolButton;
    edtPICServer: TEdit;
    edtBladeEnclosure: TEdit;
    btnCariBladeEncosure: TAdvToolButton;
    lblAmpere: TLabel;
    edtAmpere: TEdit;
    lblWatt: TLabel;
    edtWatt: TEdit;
    procedure btnBatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure _OnClearFormExecute(Sender: TObject);
    procedure _OnLoadExecute(Sender: TObject);
    procedure btnCariTipeServerClick(Sender: TObject);
    procedure btnCariRakClick(Sender: TObject);
    procedure btnCariPemilikClick(Sender: TObject);
    procedure btnCariATSClick(Sender: TObject);
    procedure btnTambahOSClick(Sender: TObject);
    procedure dbgOSKeyPress(Sender: TObject; var Key: Char);
    procedure btnHapusOSClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure _OnValidasiInputExecute(Sender: TObject);
    procedure edtPasswordManagementKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgOSKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRevealPwdMgtMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnRevealPwdMgtMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnRevealPwdMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnRevealPwdMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cbbStatusColoChange(Sender: TObject);
    procedure btnCariMCBClick(Sender: TObject);
    procedure btnHapusMCBClick(Sender: TObject);
    procedure btnTambahMCBClick(Sender: TObject);
    procedure btnCariOSClick(Sender: TObject);
    procedure cbxOSKeyPress(Sender: TObject; var Key: Char);
    procedure btnCariPICServerClick(Sender: TObject);
    procedure btnCariBladeEncosureClick(Sender: TObject);
  private
    { Private declarations }
    TempTableMCBLegrand: string;
    TempTableOS: string;
    IDserver_Load : Variant;
    IDTipeServer_Load : Variant;
    IDPemeliharaan_Load : Variant;
    SNServer_Load : Variant;
    UBladeEnclosure : Byte;
    U_Load : Variant;
    procedure SetReadOnly(b: Boolean = True);
    procedure CreateTempTable;
    procedure TruncateTableTempTable;
    procedure FillKelistrikanData(idrak: Variant);
    function GetPower : string;
    procedure OpenQryLookupOS;
    procedure CheckisBladeServer;
  public
    { Public declarations }
  protected
    ServerEditModes : Boolean;
    isBladeServer   : Boolean;
    isBladeEnclosure: Boolean;
  end;

var
  frmTransServerMasuk: TfrmTransServerMasuk;

procedure TransServerMasuk(id: Variant; DoOnSaved: TNotifyEvent);

procedure LihatServerMasuk(AOWner: TComponent; id: Variant; iShow: Boolean = False);

implementation

uses
  TypeUnit, ArComponents, ArFunctions, ArConsts, MenuUtamaUnit, ArDBModule, Strutils,
  BaseForm, DataTipeServer, DataRak, DataPemilik, DataATS, DataPanel, DataListOS, DataPICServer, ArManager, DataMCBLegrand, DataServerUnit;

{$R *.dfm}

procedure TransServerMasuk(id: Variant; DoOnSaved: TNotifyEvent);
begin
  if not BolehAkses(mnServerMasuk) then
    PesanError('Anda tidak diperkenankan mengakses menu ini');

  CloseFormByClass('TfrmTransServerMasukUnit', Application, False);

  with TfrmTransServerMasuk.Create(Application) do
  try
    _OnAfterSaved.OnExecute := DoOnSaved;
    ThisID := id;
    ServerEditModes := False;
    if ThisID = null then
      _OnClearForm.Execute
    else
      _OnLoad.Execute;

    ShowModal;
  finally
    Free;
  end;
end;

procedure LihatServerMasuk(AOWner: TComponent; id: Variant; iShow: Boolean = False);
var
  SedangTampil: Boolean;
begin
  SedangTampil := IsFormClassActive('TfrmTransServerMasuk', AOWner);
  if iShow and (not SedangTampil) then
    frmTransServerMasuk := TfrmTransServerMasuk.Create(AOWner);

  if iShow or SedangTampil then
    with frmTransServerMasuk do
    try
      ThisID := id;
      _OnLoad.Execute;
      SetReadOnly(True);

      //FormStyle := fsStayOnTop;
      Position := poDesktopCenter;
      Left := Screen.Width - Width;
      Top := Screen.Height - Height - 60;
      ShowModal;
    finally
      Free;
    end;
end;

{ TfrmTransServerMasuk }

procedure TfrmTransServerMasuk.SetReadOnly(b: Boolean);
begin
  btnSimpan.Enabled := not b;
  btnSimpan.Visible := not b;
  //chkNota.Visible := not b;

  if b then
  begin
    grpDataServer.Enabled := not b;
    grpDataLainnya.Enabled := not b;
    pnlOS.Enabled := not b;
    pnlToolbar.Enabled := not b;
    btnBatal.Caption := 'Tutup';
//      ActiveControl := btnBatal;
    dbgMCB.ReadOnly := b;
    dbgOS.ReadOnly := b;
  end
  else
    btnBatal.Caption := 'Batal';
end;

procedure TfrmTransServerMasuk.btnBatalClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTransServerMasuk.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader(pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._ServerMasuk.ImageIndex);

  OpenQryLookupOS;

  CreateTempTable;

  qryTempKelistrikan.SQL.Text := 'Select * from ' + TempTableMCBLegrand;
  if qryTempKelistrikan.Active then
    qryTempKelistrikan.Refresh
  else
    qryTempKelistrikan.Open;

  qryTempOS.SQL.Text := 'Select * from ' + TempTableOS;
  if qryTempOS.Active then
    qryTempOS.Refresh
  else
    qryTempOS.Open;

  SetClear(pnlOS);
end;

procedure TfrmTransServerMasuk._OnClearFormExecute(Sender: TObject);
begin
  inherited;
  SetClear(pnlAtas);
  SetClear(pnlOS);
  SetClear(grpDataLainnya);
  SetClear(pnlToolbar);

  isBladeServer := False;
  isBladeEnclosure := False;
  CheckisBladeServer;

  dtpTglEndOfSupport.DateTime := ArDB.ServerTime;
  dtpTglMasukServer.DateTime := ArDB.ServerTime;
  ClearAllEditID([edtTipeServer, edtRak, edtPemilik, edtATS]);
  ThisID := Null;
  IDserver_Load := Null;
  SNServer_Load := Null;
  U_Load := Null;
//  UBladeEnclosure := Null;
  IDTipeServer_Load := Null;
  IDPemeliharaan_Load := Null;
  cbbStatusColo.ItemIndex := 0;
  cbbPower.ItemIndex := 0;
  edtAmpere.Text := '0';
  edtWatt.Text := '0';
  TruncateTableTempTable;
//  ClearEditID(edtNoRM);
//  ExecQry('truncate '+TempTable);
//  OpenAllDBGrid;
end;

procedure TfrmTransServerMasuk._OnLoadExecute(Sender: TObject);
var a : Integer;
    b,c : String;
begin
  inherited;
  with ROQry(' SELECT dst.`id_server`, dsm.`id_servermachine`,dsm.`servername`,ds.`sn`, '+
            ' dst.`rak_baru`,dr.`rak_name`,dsm.`u_count`, '+
            ' dst.`u_baru`,ds.`ip_management`,ds.`user`, '+
            ' '+MySQLAESDecrypt('ds.`password`',SecretKeyAES1)+' password,ds.`id_pemilik`,dp.`pemilik`, '+
            ' dpml.`id_ats`,dats.`ats_name`,dpml.`tahun`, '+
            ' ds.`tgl_endofsupport`,dst.`waktu`,dst.notes, dpml.id_pemeliharaan, dst.no_tiket, '+
            ' ds.status_colo, ds.id_picserver, dps.namapic, dsm.`jenis_factor`, `id_enclosure`, '+
            ' ds.ampere, ds.watt '+
            ' from `dc_servertracking` dst '+
            ' LEFT JOIN dc_server ds ON ds.`id_server`=dst.`id_server` '+
            ' LEFT JOIN `dc_servermachine` dsm ON dsm.`id_servermachine`=ds.`id_servermachine` '+
            ' LEFT JOIN dc_rak dr ON dr.`id_rak`=dst.`rak_baru` '+
            ' LEFT JOIN `dc_pemilik` dp ON dp.`id_pemilik`=ds.`id_pemilik` '+
            ' LEFT JOIN `dc_pemeliharaan` dpml ON dpml.`id_server`=ds.`id_server` '+
            ' LEFT JOIN `dc_ats` dats ON dats.`id_ats`=dpml.`id_ats` '+
            ' LEFT JOIN `dc_picserver` dps ON dps.`id_picserver`=ds.`id_picserver` '+
             ' where dst.id_servertracking= '+_Q(ThisID)) do
  try
    IDserver_Load := FieldByName('id_server').AsVariant;
    IDTipeServer_Load := FieldByName('id_servermachine').AsVariant;
    SNServer_Load := FieldByName('sn').AsVariant;
    IDPemeliharaan_Load := FieldByName('id_pemeliharaan').AsVariant;
    SetEditValue(edtTipeServer, FieldByName('id_servermachine').AsVariant, FieldByName('servername').AsString);
    edtSN.Text := VarToStr(SNServer_Load);
    SetEditValue(edtRak, FieldByName('rak_baru').AsVariant, FieldByName('rak_name').AsString);
    edtJumlahU.Text := FieldByName('u_count').AsString;
    edtUAwal.Text := FieldByName('u_baru').AsString;
    U_Load := FieldByName('u_baru').AsInteger;
    edtIPManagement.Text := FieldByName('ip_management').AsString;
    edtUserManagement.Text := FieldByName('user').AsString;
    edtPasswordManagement.Text := FieldByName('password').AsString;
    edtNoTiket.Text := FieldByName('no_tiket').AsString;
    edtAmpere.Text := FieldByName('ampere').AsString;
    edtWatt.Text := FieldByName('watt').AsString;
    if FieldByName('status_colo').AsString = 'Colocation' then cbbStatusColo.ItemIndex := 0 else cbbStatusColo.ItemIndex := 1; 

    SetEditValue(edtPemilik, FieldByName('id_pemilik').AsVariant, FieldByName('pemilik').AsString);
    SetEditValue(edtPICServer, FieldByName('id_picserver').AsVariant, FieldByName('namapic').AsString);
    SetEditValue(edtATS, FieldByName('id_ats').AsVariant, FieldByName('ats_name').AsString);
    edtTahunPemeliharaan.Text := FieldByName('tahun').AsString;
    dtpTglEndOfSupport.DateTime := FieldByName('tgl_endofsupport').AsDateTime;
    dtpTglMasukServer.DateTime := FieldByName('waktu').AsDateTime;
    mmoNotes.Lines.Text := FieldByName('notes').AsString;

    CheckisBladeServer;
    if FieldByName('jenis_factor').AsString = 'Blade Server' then
    begin
      isBladeServer := True;
      CheckisBladeServer;
      a := FieldByName('id_enclosure').AsInteger;
      b := ArDB.GetData('SELECT dsm.`servername` FROM dc_server ds '+
          ' LEFT JOIN dc_servermachine dsm ON dsm.`id_servermachine`=ds.`id_servermachine` '+
          ' WHERE ds.id_server = '+IntToStr(a), ftString);
      c := ArDB.GetData('SELECT sn FROM dc_server WHERE id_server = '+IntToStr(a), ftString);
      SetEditValue(edtBladeEnclosure, a, b+' - SN : '+c);
      UBladeEnclosure := ArDB.GetData('SELECT dl.`u` FROM dc_server ds '+
          ' LEFT JOIN dc_location dl ON dl.`id_server`=ds.`id_server` '+
          ' WHERE ds.`id_server`='+IntToStr(a), ftInteger);
    end else isBladeServer := False;

    if FieldByName('jenis_factor').AsString = 'Blade Enclosure' then isBladeEnclosure := True;

    ExecQry('insert into '+TempTableOS+'(id_osserver, id_os, os, ip_os, hostname, sistem_terpasang, user, password)'+
            ' SELECT doss.`id_osserver`, doss.`id_os`, dos.`os`, doss.`ip_os`, '+
            ' doss.`hostname`, doss.`sistem_terpasang`, doss.`user`, '+MySQLAESDecrypt('doss.`password`',SecretKeyAES1)+' password '+
            ' FROM dc_osserver doss '+
            ' LEFT JOIN `dc_os` dos ON dos.`id_os`=doss.`id_os`'+
            ' where doss.id_server = '+VarToStr(IDserver_Load));
    ShowData(qryTempOS, ptFirst);

    if isBladeServer then b := IntToStr(a) else b := VarToStr(IDserver_Load);

    ExecQry('insert into '+TempTableMCBLegrand+'(id_servermcb, id_mcblegrand, power, panel_name, mcb_name, legrand_name)'+
            ' SELECT dsm.id_servermcb, dsm.id_mcblegrand, dsm.`power`, dp.panel_name, dml.mcb_name, dml.legrand_name FROM dc_servermcb dsm '+
            ' LEFT JOIN dc_mcb_legrand dml ON dml.`id_mcblegrand`=dsm.`id_mcblegrand` '+
            ' LEFT JOIN dc_panel dp ON dp.`id_panel`=dml.`id_panel` '+
            ' WHERE dsm.`id_server` = '+b);
    ShowData(qryTempKelistrikan, ptFirst);
    ClearEditID(edtMCB);
  finally
      Close;Free;
  end;
end;

procedure TfrmTransServerMasuk.btnCariTipeServerClick(Sender: TObject);
var
  s: string;
begin
  inherited;
  if Sender = btnCariTipeServer then
    s := edtTipeServer.Text
  else
    s := '';

  with ShowCariDataTipeServer(s, '') do
    if id_servermachine <> null then
    begin
      SetEditValue(edtTipeServer, id_servermachine, servername);
      edtJumlahU.Text := IntToStr(u_count);
      if jenis_factor = 'Blade Server' then isBladeServer := True else isBladeServer := False;
      CheckisBladeServer;
    end;
end;

procedure TfrmTransServerMasuk.btnCariRakClick(Sender: TObject);
var
  s: string;
begin
  inherited;
  if Sender = btnCariRak then
    s := edtRak.Text
  else
    s := '';

  with ShowCariDataRak(s, '') do
    if id_rak <> null then
    begin
      ExecQry('truncate ' + TempTableMCBLegrand);
      ShowData(qryTempKelistrikan, ptBookmark);
      SetEditValue(edtRak, id_rak, rak_name);
      ClearEditID(edtBladeEnclosure);
    end;
end;

procedure TfrmTransServerMasuk.btnCariPemilikClick(Sender: TObject);
var
  s: string;
begin
  inherited;
  if Sender = btnCariPemilik then
    s := edtPemilik.Text
  else
    s := '';

  with ShowCariDataPemilik(s, '') do
    if id_pemilik <> null then
    begin
      SetEditValue(edtPemilik, id_pemilik, pemilik);
    end;
end;

procedure TfrmTransServerMasuk.btnCariATSClick(Sender: TObject);
var
  s: string;
begin
  inherited;
  if Sender = btnCariATS then
    s := edtATS.Text
  else
    s := '';

  with ShowCariDataATS(s, '') do
    if id_ats <> null then
    begin
      SetEditValue(edtATS, id_ats, ats_name);
    end;
end;

procedure TfrmTransServerMasuk.CreateTempTable;
var
  DDLText: string;
begin
  // Temptable MCB legrand
  TempTableMCBLegrand := 'temp_MCBlegrand';
  DDLText := 'create temporary table if not exists ' + TempTableMCBLegrand + ' ( ' +
  '`id` int(11) NOT NULL AUTO_INCREMENT, ' +
  '`id_servermcb` int(11) DEFAULT NULL, ' +
  '`id_mcblegrand` int(11) DEFAULT NULL, ' +
  '`power` varchar(10) DEFAULT NULL, ' +
  '`panel_name` varchar(12) DEFAULT NULL, ' +
  '`mcb_name` varchar(10) DEFAULT NULL, ' +
  '`legrand_name` varchar(10) DEFAULT NULL, '+
  'PRIMARY KEY (`id`))';
  ExecQry(DDLText);
  ExecQry('truncate ' + TempTableMCBLegrand);

  // Temptable OS
  TempTableOS := 'temp_OS';
  DDLText := 'create temporary table if not exists ' + TempTableOS + ' ( '+
  '`id` int(11) NOT NULL AUTO_INCREMENT, ' +
  '`id_osserver` int(11) DEFAULT NULL, ' +
  '`id_os` int(11) DEFAULT NULL, ' +
  '`os` varchar(50) DEFAULT NULL, ' +
  '`ip_os` varchar(15) DEFAULT NULL, ' +
  '`hostname` varchar(50) DEFAULT NULL, ' +
  '`sistem_terpasang` varchar(50) DEFAULT NULL, ' +
  '`user` varchar(50) DEFAULT NULL, ' +
  '`password` varbinary(255) DEFAULT NULL, ' +
  'PRIMARY KEY (`id`))';
  ExecQry(DDLText);
  ExecQry('truncate ' + TempTableOS);
end;

procedure TfrmTransServerMasuk.TruncateTableTempTable;
begin
  ExecQry('truncate ' + TempTableMCBLegrand);
  ExecQry('truncate ' + TempTableOS);
end;

procedure TfrmTransServerMasuk.FillKelistrikanData(idrak: Variant);
begin
  TruncateTableTempTable;
  ExecQry('insert into ' + TempTableMCBLegrand +
  ' SELECT dp.`panel_name`,dml.`mcb_name`, dml.`legrand_name` FROM dc_mcb_legrand dml ' +
  ' LEFT JOIN dc_panel dp ON dp.`id_panel`=dml.`id_panel` ' +
  ' LEFT JOIN dc_rak dr ON dr.`id_panel`=dp.`id_panel` ' +
  ' WHERE dr.`id_rak`=' + idrak);
  if qryTempKelistrikan.Active then
    qryTempKelistrikan.Refresh
  else
    qryTempKelistrikan.Open;
end;

procedure TfrmTransServerMasuk.btnTambahOSClick(Sender: TObject);
var
  Disimpan: Boolean;
  ASQL: TArSQL;
  _ID: string;
  nourut: Integer;
begin
  inherited;
  if cbxOS.KeyValue <> null then
  begin
    Disimpan := False;

    try
      Screen.Cursor := crHourGlass;
      ArDB.FDBCon.AutoCommit := False;
      ASQL := TArSQL.Create;
      with ASQL do
      try
        if not ArDB.FDBCon.InTransaction then
          ArDB.FDBCon.StartTransaction;

        ClearParams;
        TableName := TempTableOS;

        SetFieldNames(['id_os', 'os', 'ip_os', 'hostname', 'sistem_terpasang', 'user', 'password']);

        AddFieldValues([cbxOS.KeyValue, QuotedStr(Trim(cbxOS.Text)), QuotedStr(Trim(edtIP.Text)), QuotedStr(Trim(edtHostname.Text)), QuotedStr(Trim(edtSistem.Text)), QuotedStr(Trim(edtUser.Text)), QuotedStr(Trim(edtPassword.Text))]);

        ExecQuery(SQLInsert);

        if ArDB.FDBCon.InTransaction then
          ArDB.FDBCon.Commit;
        Disimpan := True;
      except
        on e: Exception do
        begin
          if ArDB.FDBCon.InTransaction then
            ArDB.FDBCon.Rollback;
//                    Modalresult := mrNone;
          DoHandleException(Self, e);
        end;
      end;

    finally
      if Assigned(ASQL) then
        FreeAndNil(ASQL);
      ArDB.FDBCon.AutoCommit := True;
      Screen.Cursor := crDefault;
      SetClear(pnlOS);
      ShowData(qryTempOS, ptBookmark);
    end;
  end
  else
    Peringatan('Operating System kosong');
end;

procedure TfrmTransServerMasuk.dbgOSKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (dsTempOS.State in [dsInsert, dsEdit]) then
    qryTempOS.Edit;
end;

procedure TfrmTransServerMasuk.btnHapusOSClick(Sender: TObject);
begin
  inherited;
  if qryTempOS.RecordCount > 0 then
    if Konfirmasi('Yakin ingin menghapus data OS ini?') then
    begin
      if not qryTempOS.Active then
        qryTempOS.Open;
      if not (dsTempOS.State in [dsInsert, dsEdit]) then
        qryTempOS.Delete;
    end;
end;

procedure TfrmTransServerMasuk.btnSimpanClick(Sender: TObject);
var
  Disimpan: Boolean;
  ASQL: TArSQL;
  _ID: string;
  _idserver: Variant;
  _idservertracking: Variant;
  _idpemeliharaan : Variant;
  _u : string;
begin
  inherited;
  _OnValidasiInput.Execute;

  Disimpan := False;

  try
    Screen.Cursor := crHourGlass;
    ArDB.FDBCon.AutoCommit := False;
    btnSimpan.Enabled := False;
    ASQL := TArSQL.Create;
    with ASQL do
    try
      if not ArDB.FDBCon.InTransaction then
        ArDB.FDBCon.StartTransaction;

      //dc_server
      ClearParams;
      TableName := 'dc_server';
      Quoted := False;
      WhenDuplicate := wdUpdate;
      SetFieldOffset(['id_server']);

      if ThisID <> Null then _idserver := IDserver_Load else _idserver := 'null';

      SetFieldNames(['id_server', 'id_servermachine', 'id_pemilik', 'id_picserver', 'ip_management', 'user', 'password', 'tgl_endofsupport', 'sn',
                    'status_colo', 'id_enclosure', 'ampere', 'watt']);

      AddFieldValues([VarToStr(_idserver), GetEditSID(edtTipeServer), IfNull(GetEditSID(edtPemilik), 'Null'), IfNull(GetEditSID(edtPICServer), 'Null'),
                    _Q(Trim(edtIPManagement.Text)), _Q(Trim(edtUserManagement.Text)), MySQLAESEncrypt(_Q(edtPasswordManagement.Text), SecretKeyAES1),
                    fDateStr(dtpTglEndOfSupport.Date), _Q(Trim(edtSN.Text)), _Q(cbbStatusColo.Text),
                    IfThen(isBladeServer, GetEditSID(edtBladeEnclosure),'Null'),
                    fFloat(StrToFloat(Trim(edtAmpere.Text))), fFloat(StrToFloat(Trim(edtWatt.Text)))]);

      ExecQuery(SQLInsert);

      //dc_location
      ClearParams;
      TableName := 'dc_location';
      Quoted := False;
      WhenDuplicate := wdUpdate;
      SetFieldOffset(['id_location']);
      if ThisID <> null then _idserver := IDserver_Load else
      _idserver := ArDB.GetData(' SELECT id_server FROM `dc_server` WHERE id_servermachine= '+_Q(GetEditSID(edtTipeServer)) +
                                ' AND deleted = 0 AND sn='+QuotedStr(Trim(edtSN.Text)));

      SetFieldNames(['id_rak', 'id_server', 'u']);

      if not isBladeServer then _u := Trim(edtUAwal.Text) else _u := IntToStr(IfNull(UBladeEnclosure, 0));

      AddFieldValues([GetEditSID(edtRak), IntToStr(_idserver), _u]);

      ExecQuery(SQLInsert);

      //dc_servertracking
      ClearParams;
      TableName := 'dc_servertracking';
      Quoted := False;
      WhenDuplicate := wdUpdate;
      SetFieldOffset(['id_servertracking']);
      //_idlocation := ArDB.GetData(' SELECT id_location FROM `dc_location` WHERE id_server= '+QuotedStr(IntToStr(_idserver)));
      if ThisID <> Null then _idservertracking := ThisID else _idservertracking := 'null';

      if ServerEditModes then
      begin
        SetFieldNames(['id_servertracking', 'id_server', 'rak_baru', 'u_baru', 'id_user']);

        AddFieldValues([VarToStr(_idservertracking), IntToStr(_idserver), GetEditSID(edtRak), _Q(_u),
        IntToStr(User.IDUser)]);
      end else
      begin
        SetFieldNames(['id_servertracking', 'id_server', 'waktu', 'jenis_pindah', 'rak_baru', 'u_baru', 'kali_perpindahan', 'id_user', 'notes', 
           'no_tiket']);

        AddFieldValues([VarToStr(_idservertracking), IntToStr(_idserver), fDateTimeStr(dtpTglMasukServer.DateTime), '"masuk"', GetEditSID(edtRak),
          _Q(_u), '1', IntToStr(User.IDUser), _Q(Trim(mmoNotes.Lines.Text)), _Q(Trim(edtNoTiket.Text))]);
      end;

      ExecQuery(SQLInsert);

      if GetEditID(edtATS)<>null then
      begin
        //dc_pemeliharaan
        ClearParams;
        TableName := 'dc_pemeliharaan';
        Quoted := False;
        WhenDuplicate := wdUpdate;
        SetFieldOffset(['id_pemeliharaan','id_server']);

        if ThisID <> null then _idpemeliharaan := IfNull(IDPemeliharaan_Load, 'null') else _idpemeliharaan := 'null';

        SetFieldNames(['id_pemeliharaan', 'id_server', 'id_ats', 'tahun']);

        AddFieldValues([_idpemeliharaan, IntToStr(_idserver), GetEditSID(edtATS), _Q(Trim(edtTahunPemeliharaan.Text))]);

//        Informasi(SQLInsert);
        ExecQuery(SQLInsert);

//        if ThisID = Null then
//        begin
          //dc_server - update pemeliharaan server
          _idpemeliharaan := GetQryData('SELECT id_pemeliharaan FROM `dc_pemeliharaan` '+
                            ' WHERE id_server='+IntToStr(_idserver)+' AND id_ats='+GetEditSID(edtATS)+' AND tahun='+Trim(edtTahunPemeliharaan.Text));

          ExecQry('update dc_server set id_pemeliharaan='+IntToStr(_idpemeliharaan)+' where id_server='+IntToStr(_idserver));
//        end;
      end;

      if qryTempOS.RecordCount > 0 then
      begin
        //dc_osserver
        ClearParams;
        TableName := 'dc_osserver';
        // bersihkan data osserver yang dimiliki oleh server dengan id ini
        ExecQry('delete from '+TableName+' where id_server = '+IntToStr(_idserver));
        // masukkan data server dari temptable os ke dc_osserver, hal ini dilakukan supaya ketika terjadi pengurangan jumlah OS dalam satu server,
        // data os yang lama juga hilang. Kelemahannya, jika user menghapus data OS tapi kemudian menambahkan data dg data yg sama persis,
        // akan terbentuk record baru
        ExecQry('insert into '+TableName+'(id_osserver, id_server, id_os, ip_os, hostname, sistem_terpasang, user, password) '+
                ' Select t.id_osserver, '+IntToStr(_idserver)+', t.id_os, t.ip_os, t.hostname, t.sistem_terpasang, t.user, '+
                MySQLAESEncrypt('t.password',SecretKeyAES1)+' from '+TempTableOS+' t');
      end;

      if (qryTempKelistrikan.RecordCount > 0) and (not isBladeServer)then
      begin
        //dc_servermcb
        ClearParams;
        TableName := 'dc_servermcb';
        // bersihkan data dc_servermcb yang dimiliki oleh server dengan id ini
        ExecQry('delete from '+TableName+' where id_server = '+IntToStr(_idserver));
        // masukkan data server dari temptable kelistrikan ke dc_servermcb, hal ini dilakukan supaya ketika terjadi pengurangan jumlah MCB dalam satu server,
        // MCB yang lama juga hilang. Kelemahannya, jika user menghapus data MCB tapi kemudian menambahkan data,
        // akan terbentuk record baru
        ExecQry('insert into '+TableName+'(id_servermcb, id_server, id_mcblegrand, power) '+
                ' Select t.id_servermcb, '+IntToStr(_idserver)+', t.id_mcblegrand, t.power from '+TempTableMCBLegrand+' t');
      end;

      //dc_location - update lokasi, pemilik dan pic server blade server yang menginduk pada enclosure ini
      if (ThisID <> Null)and(isBladeEnclosure) then
      begin
        //udpate pemilik dan pic server saat blade enclosure ini update
        ExecQry('INSERT INTO dc_server (id_server, id_pemilik, id_picserver) '+
          ' SELECT ds.id_server, ds2.`id_pemilik`, ds2.id_picserver FROM dc_server ds  '+
          ' LEFT JOIN dc_server ds2 ON ds2.id_server=ds.id_enclosure '+
          ' WHERE ds.id_enclosure= '+VarToStr(IDserver_Load)+
          ' ON DUPLICATE KEY UPDATE id_server=VALUES(id_server), id_pemilik=VALUES(id_pemilik), id_picserver=VALUES(id_picserver);');
        //update rak dan u saat lokasi blade enclosure ini update
        ExecQry('INSERT INTO dc_location (id_location, id_rak, u) '+
          ' SELECT dl.id_location, dl2.`id_rak`, dl2.`u` FROM dc_location dl '+
          ' LEFT JOIN dc_server ds ON ds.`id_server`=dl.`id_server` '+
          ' LEFT JOIN dc_server ds2 ON ds2.`id_server`=ds.`id_enclosure` '+
          ' LEFT JOIN dc_location dl2 ON dl2.`id_server`=ds2.`id_server` '+
          ' WHERE ds.`id_enclosure`= '+VarToStr(IDserver_Load)+
          ' ON DUPLICATE KEY UPDATE id_location=VALUES(id_location), id_rak=VALUES(id_rak), u=VALUES(u);')
      end;


      //log_user
      if ServerEditModes then CreateLogData('update data', 'Data Server') else
      begin
        if ThisID <> Null then CreateLogData('update data', 'Server Masuk') else CreateLogData('insert data', 'Server Masuk');
      end;

      if ArDB.FDBCon.InTransaction then
        ArDB.FDBCon.Commit;
      Disimpan := True;
      Informasi('Data Server Masuk berhasil disimpan');
    except
      on e: Exception do
      begin
        if ArDB.FDBCon.InTransaction then
          ArDB.FDBCon.Rollback;
        Modalresult := mrNone;
        DoHandleException(Self, e);
      end;
    end;

    if Disimpan then
      if not Assigned(_OnAfterSaved.OnExecute) then
        _OnClearForm.Execute
      else
      begin
        _OnAfterSaved.Execute;
        Close;
      end;

  finally
    if Assigned(ASQL) then
      FreeAndNil(ASQL);
    btnSimpan.Enabled := True;
    ArDB.FDBCon.AutoCommit := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmTransServerMasuk._OnValidasiInputExecute(Sender: TObject);
var
  serverada : Integer;
  locationada : Integer;
  s :string;
  ampere :Double;
  watt :Double;
begin
  inherited;
  try
    ampere := StrToFloat(edtAmpere.Text);
    watt := StrToFloat(edtWatt.Text);
  except
    on Exception : EConvertError do
      Peringatan('Ampere dan watt harus diisi dengan angka', True);
  end;
//  if BolehAkses(mnServerMasuk, [haTambah, haUbah]) then Peringatan('Anda tidak diperkenankan menyimpan data', True);
  HarusDiisi(edtSN, 'Tipe Server', GetEditID(edtTipeServer) = null);
  HarusDiisi(edtSN, 'Serial Number', Trim(edtSN.Text) = '');
  HarusDiisi(edtAmpere, 'Ampere', Trim(edtAmpere.Text) = '');
  HarusDiisi(edtWatt, 'Watt', Trim(edtWatt.Text) = '');
  HarusDiisi(edtUAwal, 'Rak', GetEditID(edtRak) = null);
  if not isBladeServer then HarusDiisi(edtUAwal, 'U awal', Trim(edtUAwal.Text)= '');
  if isBladeServer then HarusDiisi(edtSN, 'Blade Enclosure', GetEditID(edtBladeEnclosure) = null);
  serverada := GetQryData('SELECT COUNT(ds.id_server) FROM dc_server ds '+
              'WHERE ds.`id_servermachine`='+GetEditSID(edtTipeServer)+' AND ds.`sn`='+_Q(Trim(edtSN.Text))+' and deleted=0', ftInteger);

  if ThisID <> null then s := ' and id_server <> '+VarToStr(IDserver_Load) else s := '';


  locationada := GetQryData('SELECT COUNT(id_location) FROM dc_location WHERE id_rak = '+GetEditSID(edtRak)+' AND u = '
                  +_Q(Trim(edtUAwal.Text))+' '+s, ftInteger);
  // Tambah data server masuk -> jika ada server dg tipe server dan SN yang sama, abort
  // Ubah data server masuk -> jika dalam posisi load dan ada server dg tipe server dan SN yang sama
  // kecuali dengan Tipe Server dan SN server yang sudah tersimpan, abort
  if (((ThisID = Null) and (serverada > 0)) or
  ((ThisID<>null) and (serverada > 0) and ((edtSN.Text <> SNServer_Load) or (GetEditSID(edtTipeServer)<>IDTipeServer_Load)))) then
    Peringatan('Server ini telah ada di dalam Data Center, mohon cek kembali Tipe Server dan Serial Numbernya', True);

  if not isBladeServer then
    if (locationada > 0)
    //and (edtUAwal.Text <> IntToStr(U_Load))
    then
    Peringatan('Sudah ada server yang ditempatkan di rak dan u ini, silakan pindah ke rak atau u yang lain', True);

  if isBladeEnclosure then
    if not Konfirmasi('Melakukan perubahan Rak, U, Pemilik atau PIC Enclosure ini akan mengakibatkan perubahan property '+
      'yang sama di server blade di dalamnya, apakah anda yakin ingin melanjutkan?') then Abort;
end;

procedure TfrmTransServerMasuk.edtPasswordManagementKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = vk_f11 then CopyEdtToClipboard(edtPasswordManagement);
end;

procedure TfrmTransServerMasuk.dbgOSKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_f11 then
  CopyTextToClipboard(qryTempOS.fieldbyname('password').AsString);
end;

procedure TfrmTransServerMasuk.btnRevealPwdMgtMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  edtPasswordManagement.PasswordChar := #0;
end;

procedure TfrmTransServerMasuk.btnRevealPwdMgtMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  edtPasswordManagement.PasswordChar := '*';
end;

procedure TfrmTransServerMasuk.btnRevealPwdMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  edtPassword.PasswordChar := #0;
end;

procedure TfrmTransServerMasuk.btnRevealPwdMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  edtPassword.PasswordChar := '*';
end;

procedure TfrmTransServerMasuk.cbbStatusColoChange(Sender: TObject);
begin
  inherited;
  //Informasi(cbbStatusColo.Text);
end;

procedure TfrmTransServerMasuk.btnCariMCBClick(Sender: TObject);
var s : string;
begin
  inherited;
  HarusDiisi(edtSN, 'Rak', GetEditID(edtRak) = Null);

  if Sender = btnCariMCB then
    s := edtMCB.Text
  else
    s := '';

  with ShowCariDataMCBLegrand(s, ' WHERE dml.`id_rak`='+GetEditSID(edtRak)) do
    if id_mcblegrand <> null then
    begin
      SetEditValue(edtMCB, id_mcblegrand, mcb_name);
    end;
end;

procedure TfrmTransServerMasuk.btnHapusMCBClick(Sender: TObject);
begin
  inherited;
  if qryTempKelistrikan.RecordCount > 0 then
    if Konfirmasi('Yakin ingin menghapus data MCB ini?') then
    begin
      if not qryTempKelistrikan.Active then
        qryTempKelistrikan.Open;
      if not (dsTempKelistrikan.State in [dsInsert, dsEdit]) then
        qryTempKelistrikan.Delete;
    end;
end;

procedure TfrmTransServerMasuk.btnTambahMCBClick(Sender: TObject);
var
  Disimpan: Boolean;
  ASQL: TArSQL;
  _ID: string;
  nourut: Integer;
begin
  inherited;
  HarusDiisi(cbbPower, 'MCB', GetEditID(edtMCB) = null);
  if qryTempKelistrikan.RecordCount > 4 then Peringatan('Tidak support lebih dari 4 power');

  if GetEditSID(edtMCB) <> '' then
  begin
    Disimpan := False;

    try
      Screen.Cursor := crHourGlass;
      ArDB.FDBCon.AutoCommit := False;
      ASQL := TArSQL.Create;
      with ASQL do
      try
        if not ArDB.FDBCon.InTransaction then
          ArDB.FDBCon.StartTransaction;

        ClearParams;
        TableName := TempTableMCBLegrand;

        SetFieldNames(['id_mcblegrand', 'power', 'panel_name', 'mcb_name', 'legrand_name']);

        with GetDataMCBLegrand(GetEditID(edtMCB)) do
        begin
          AddFieldValues([GetEditSID(edtMCB), _Q(cbbPower.Text), _Q(panel_name), _Q(mcb_name), _Q(legrand_name)]);
        end;

        ExecQuery(SQLInsert);

        if ArDB.FDBCon.InTransaction then
          ArDB.FDBCon.Commit;
        Disimpan := True;
      except
        on e: Exception do
        begin
          if ArDB.FDBCon.InTransaction then
            ArDB.FDBCon.Rollback;
//                    Modalresult := mrNone;
          DoHandleException(Self, e);
        end;
      end;

    finally
      if Assigned(ASQL) then
        FreeAndNil(ASQL);
      ArDB.FDBCon.AutoCommit := True;
      Screen.Cursor := crDefault;
      SetClear(pnlToolbar);
      ShowData(qryTempKelistrikan, ptBookmark);
    end;
  end
  else
    Peringatan('Operating System kosong');
end;

function TfrmTransServerMasuk.GetPower: string;
begin
  case qryTempKelistrikan.RecordCount of
  0 : Result := 'primary';
  1 : Result := 'secondary';
  2 : Result := 'tertiary';
  3 : Result := 'quarternary';
  else Peringatan('Tidak support lebih dari 4 power', True);
  end;
end;

procedure TfrmTransServerMasuk.btnCariOSClick(Sender: TObject);
var
  s : string;
begin
  inherited;
    if Sender = btnCariOS then
    s := cbxOS.Text
  else
    s := '';

  with ShowCariDataListOS(s, '') do
    if id_os <> null then
    begin
      OpenQryLookupOS;
      cbxOS.KeyValue := id_os;
    end;
end;

procedure TfrmTransServerMasuk.OpenQryLookupOS;
begin
  with qryLookup do
  try
    DisableControls;
    Close;

    //OS
    Close;
    SQL.Text := 'SELECT * FROM dc_os';
    Open;
    SetLookupComboBoxEh(cbxOS, qryLookup, dsOS, tblOS, 'id_os', 'os', 'id_os;os', 'ID;OS', '20;200');
  finally
    Close;
    EnableControls;
  end;
end;

procedure TfrmTransServerMasuk.cbxOSKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Ord(Key) = vk_return then
  begin
    Key := #0;
    Informasi('yuhu');
  end;

end;

procedure TfrmTransServerMasuk.btnCariPICServerClick(Sender: TObject);
var s : string;
begin
  inherited;
    if Sender = btnCariPICServer then
    s := edtPICServer.Text
  else
    s := '';

  with ShowCariDataPICServer(s, '') do
    if id_picserver <> null then
    begin
      SetEditValue(edtPICServer, id_picserver, namapic);
    end;
end;

procedure TfrmTransServerMasuk.CheckisBladeServer;
begin
  edtBladeEnclosure.Visible := isBladeServer;
  edtUAwal.Visible := not isBladeServer;
  btnCariBladeEncosure.Visible := isBladeServer;
  if isBladeServer then lblUAwal.Caption := 'Blade enclosure' else lblUAwal.Caption := 'U- *';
  if isBladeServer then lblTipeServer.Caption := 'Tipe Perangkat * - Blade' else lblTipeServer.Caption := 'Tipe Perangkat *';
  ClearEditID(edtBladeEnclosure);
  edtUAwal.Enabled := not isBladeServer;
//  edtUAwal.Clear;
  pnlToolbar.Enabled := not isBladeServer;
end;

procedure TfrmTransServerMasuk.btnCariBladeEncosureClick(Sender: TObject);
var s : string;
begin
  inherited;
  if GetEditID(edtRak) = null then Peringatan('Silakan pilih rak terlebih dulu', True);
  if Sender = btnCariBladeEncosure then
    s := edtBladeEnclosure.Text
  else
    s := '';

  with ShowCariServer(s, ' and dsm.jenis_factor = "Blade Enclosure" AND dl.`id_rak`='+_Q(GetEditSID(edtRak))) do
    if ID <> null then
    begin
      SetEditValue(edtBladeEnclosure, ID, ServerMachine+' - SN : '+SN);
      UBladeEnclosure := U;
      ExecQry('truncate ' + TempTableMCBLegrand);
      ExecQry('insert into '+TempTableMCBLegrand+'(id_servermcb, id_mcblegrand, power, panel_name, mcb_name, legrand_name)'+
            ' SELECT dsm.id_servermcb, dsm.id_mcblegrand, dsm.`power`, dp.panel_name, dml.mcb_name, dml.legrand_name FROM dc_servermcb dsm '+
            ' LEFT JOIN dc_mcb_legrand dml ON dml.`id_mcblegrand`=dsm.`id_mcblegrand` '+
            ' LEFT JOIN dc_panel dp ON dp.`id_panel`=dml.`id_panel` '+
            ' WHERE dsm.`id_server` = '+IntToStr(ID));
      ShowData(qryTempKelistrikan, ptFirst);
      SetEditValue(edtPemilik, id_pemilik, Pemilik);
      SetEditValue(edtPICServer, id_picserver, namapic);
    end;
end;

end.

