unit TransServerKeluarUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TransaksiForm, ActnList, ExtCtrls, ImgList, AdvToolBtn,
  StdCtrls, Buttons, ComCtrls, AdvDateTimePicker, System.Actions,
  System.ImageList;

type
  TfrmTransServerKeluarUnit = class(TfrmTransaksi)
    grpDataServer: TGroupBox;
    lblSN: TLabel;
    lblPosisiU: TLabel;
    lblRak: TLabel;
    lblServer: TLabel;
    edtSN: TEdit;
    edtRak: TEdit;
    edtPosisiU: TEdit;
    edtServer: TEdit;
    lblNotes: TLabel;
    mmoNotes: TMemo;
    lblPemilik: TLabel;
    edtPemilik: TEdit;
    btnCariServer: TAdvToolButton;
    lblWaktuKeluar: TLabel;
    dtpWaktuKeluar: TAdvDateTimePicker;
    lblNoTiket: TLabel;
    edtNoTiket: TEdit;
    procedure btnBatalClick(Sender: TObject);
    procedure _OnClearFormExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCariServerClick(Sender: TObject);
    procedure _OnValidasiInputExecute(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure _OnLoadExecute(Sender: TObject);
  private
    { Private declarations }
    IDserver_Load : Variant;
    SNServer_Load : Variant;
    KaliPerpindahan : Word;
    isBladeServer : Boolean;
    isBladeEnclosure : Boolean;
    procedure SetReadOnly(b: Boolean = True);
    procedure CheckisBladeServer;
  public
    { Public declarations }
  end;

var
  frmTransServerKeluarUnit: TfrmTransServerKeluarUnit;
  procedure TransServerKeluar(id: Variant; DoOnSaved: TNotifyEvent);
  procedure TransHapusServer(idserver: Variant; DoOnSaved: TNotifyEvent);
  procedure LihatServerKeluar(AOWner: TComponent; id: Variant; iShow: Boolean =
   False);

implementation

uses
  TypeUnit, ArComponents, ArFunctions, MenuUtamaUnit, ArDBModule, Strutils,
  BaseForm, DataServerUnit, DB, ArManager;

{$R *.dfm}

procedure TransServerKeluar(id: Variant; DoOnSaved: TNotifyEvent);
begin
  if not BolehAkses(mnServerKeluar) then
    PesanError('Anda tidak diperkenankan mengakses menu ini');

  CloseFormByClass('TfrmTransServerKeluarUnit', Application, False);

  with TfrmTransServerKeluarUnit.Create(Application) do
  try
    _OnAfterSaved.OnExecute := DoOnSaved;
    ThisID := id;
    if ThisID = null then
      _OnClearForm.Execute
    else begin
      _OnLoad.Execute;
    end;

    ShowModal;
  finally
    Free;
  end;
end;

procedure TransHapusServer(idserver: Variant; DoOnSaved: TNotifyEvent);
begin
  if not BolehAkses(mnServerKeluar) then
  PesanError('Anda tidak diperkenankan mengakses menu ini');

  CloseFormByClass('TfrmTransServerKeluarUnit', Application, False);

  with TfrmTransServerKeluarUnit.Create(Application) do
  try
    _OnAfterSaved.OnExecute := DoOnSaved;
    _OnClearForm.Execute;
    ThisID := Null;

    with GetDataServer(idserver) do
    if ID <> null then
    begin
      SetEditValue(edtServer, ID, ServerMachine);
      SetEditValue(edtRak, IDrak, Rak);
      edtSN.Text := SN;
      edtPemilik.Text := Pemilik;
      SetEditValue(edtPosisiU, U, IntToStr(U)+' - '+IntToStr(u+JumlahU-1));
    end;

    ShowModal;
  finally
    Free;
  end;
end;

procedure LihatServerKeluar(AOWner: TComponent; id: Variant; iShow: Boolean =
   False);
var
  SedangTampil: Boolean;
begin
  SedangTampil := IsFormClassActive('TfrmTransServerKeluarUnit', AOWner);
  if iShow and (not SedangTampil) then
    frmTransServerKeluarUnit := TfrmTransServerKeluarUnit.Create(AOWner);

  if iShow or SedangTampil then
    with frmTransServerKeluarUnit do
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

procedure TfrmTransServerKeluarUnit.btnBatalClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTransServerKeluarUnit.SetReadOnly(b: Boolean);
begin
  btnSimpan.Enabled := not b;
  btnSimpan.Visible := not b;
  //chkNota.Visible := not b;

  if b then
  begin
    grpDataServer.Enabled := not b;
    btnBatal.Caption := 'Tutup';
  end
  else
    btnBatal.Caption := 'Batal';
end;

procedure TfrmTransServerKeluarUnit._OnClearFormExecute(Sender: TObject);
begin
  inherited;
  SetClear(grpDataServer);
  dtpWaktuKeluar.DateTime := ArDB.ServerTime;
  ClearAllEditID([edtServer, edtPemilik, edtRak]);
  IDserver_Load := Null;
  SNServer_Load := Null;
  btnCariServer.Enabled := True;
  KaliPerpindahan := 0;
  isBladeServer := False;
  isBladeEnclosure := False;
end;

procedure TfrmTransServerKeluarUnit.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader(pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._ServerKeluar.ImageIndex);
  try
  if TryFtpConnect('10.242.65.3', 'root', 'P@ssw0rd') = True then Informasi('connection successfull');
  except
    on e: Exception do
    begin
//      Modalresult := mrNone;
      DoHandleException(Self, e);
    end;
  end;
end;

procedure TfrmTransServerKeluarUnit.btnCariServerClick(
  Sender: TObject);
var
  s: string;
begin
  inherited;
  if Sender = btnCariServer then
    s := edtServer.Text
  else
    s := '';

  with ShowCariServer(s, '') do
    if ID <> null then
    begin
      SetEditValue(edtServer, ID, ServerMachine);
      SetEditValue(edtRak, IDrak, Rak);
      edtSN.Text := SN;
      edtPemilik.Text := Pemilik;
      SetEditValue(edtPosisiU, U, IntToStr(U)+' - '+IntToStr(u+JumlahU-1));
      if jenis_factor = 'Blade Server' then isBladeServer := True else isBladeServer := False;
      if jenis_factor = 'Blade Enclosure' then isBladeEnclosure := True else isBladeEnclosure := False;
      CheckisBladeServer;
//      edtPosisiU.Text := IntToStr(U)+' - '+IntToStr(u+JumlahU-1);
    end;
end;

procedure TfrmTransServerKeluarUnit._OnValidasiInputExecute(
  Sender: TObject);
begin
  inherited;
//  if BolehAkses(mnServerKeluar, [haTambah, haUbah]) then Peringatan('Anda tidak diperkenankan menyimpan data', True);
  HarusDiisi(edtServer, 'Server', GetEditID(edtServer)=null);
  if isBladeEnclosure then
  begin
    if not Konfirmasi('Mengeluarkan enclosure ini akan mengeluarkan dan menghapus data enclosure dan blade server di dalamnya, '+
      'apakah anda yakin ingin melanjutkan?') then Abort;
  end
  else
    if not Konfirmasi('Mengeluarkan server ini akan menghapus server ini dari data server, apakah anda yakin ingin melanjutkan?') then Abort;
end;

procedure TfrmTransServerKeluarUnit.btnSimpanClick(Sender: TObject);
var
  Disimpan: Boolean;
  ASQL: TArSQL;
  _ID: string;
  _idservertracking : Variant;
  _idlocation : Integer;
  _kaliperpindahan : Integer;
  a : Variant;
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

      //dc_servertracking
      ClearParams;
      TableName := 'dc_servertracking';
      Quoted := False;
      WhenDuplicate := wdUpdate;
      SetFieldOffset(['id_servertracking']);

      if ThisID <> null then
      begin
        _idservertracking := ThisID;
      end
      else
      begin
        _idservertracking := 'null';
        KaliPerpindahan := ArDB.GetData('SELECT COUNT(id_server) FROM `dc_servertracking` WHERE `id_server`='+GetEditSID(edtServer)) + 1;
      end;

      _kaliperpindahan := ArDB.GetData('SELECT COUNT(id_server) FROM `dc_servertracking` WHERE `id_server`='+GetEditSID(edtServer));

      SetFieldNames(['id_servertracking', 'id_server', 'waktu', 'jenis_pindah', 'rak_lama', 'u_lama', 'kali_perpindahan', 'id_user', 'notes', 'no_tiket']);

      AddFieldValues([_idservertracking, GetEditSID(edtServer), fDateTimeStr(dtpWaktuKeluar.DateTime), '"Keluar"', GetEditSID(edtRak), _Q(GetEditSID(edtPosisiU)),
        IntToStr(KaliPerpindahan), IntToStr(User.IDUser), _Q(Trim(mmoNotes.Lines.Text)), _Q(Trim(edtNoTiket.Text))]);
//      Informasi(SQLInsert);
      ExecQuery(SQLInsert);

      if ThisID = null then
      begin
        //dc_location
        _idlocation := ArDB.GetData('SELECT id_location FROM `dc_location` WHERE id_server= '+QuotedStr(GetEditSID(edtServer)));

        ClearParams;
        TableName := 'dc_location';
        Quoted := False;

        SetFieldNames(['id_rak', 'u', 'states']);

        AddFieldValues([GetEditSID(edtRak), _Q(GetEditSID(edtPosisiU)),  '"fix"']);

        SetKeyFieldNames(['id_location']);
        SetKeyFieldValues([_Q(IntToStr(_idlocation))]);

        ExecQuery(SQLDelete);
      end;

      //update data dc_server set deleted jadi true
      ExecQry('update dc_server set deleted = true where id_server='+GetEditSID(
         edtServer));

      //log_user
      if ThisID <> Null then CreateLogData('update data', 'Server Keluar') else CreateLogData('insert data', 'Server Keluar');

      //jika ini adalah server enclosure, semua blade server di dalamnya juga dikeluarkan
      if isBladeEnclosure then
      begin
        with Query('SELECT id_server FROM dc_server WHERE id_enclosure = '+VarToStr(GetEditSID(edtServer))) do
        begin
          First;
          while not Eof do
          begin
            a := FieldValues['id_server'];
            //dc_servertracking
            ClearParams;
            TableName := 'dc_servertracking';
            Quoted := False;
            WhenDuplicate := wdUpdate;
            SetFieldOffset(['id_servertracking']);

            if ThisID <> null then
            begin
              _idservertracking := ArDB.GetData('SELECT id_servertracking FROM dc_servertracking WHERE id_server = '+QuotedStr(VarToStr(a))+
                ' and jenis_pindah = "keluar" ORDER BY id_servertracking DESC', ftVariant);
            end
            else
            begin
              _idservertracking := 'null';
              KaliPerpindahan := ArDB.GetData('SELECT COUNT(id_server) FROM `dc_servertracking` WHERE `id_server`='+VarToStr(a)) + 1;
            end;

            _kaliperpindahan := ArDB.GetData('SELECT COUNT(id_server) FROM `dc_servertracking` WHERE `id_server`='+QuotedStr(VarToStr(a)));

            SetFieldNames(['id_servertracking', 'id_server', 'waktu', 'jenis_pindah', 'rak_lama', 'u_lama', 'kali_perpindahan', 'id_user', 'notes', 'no_tiket']);

            AddFieldValues([_idservertracking, QuotedStr(VarToStr(a)), fDateTimeStr(dtpWaktuKeluar.DateTime), '"Keluar"', GetEditSID(edtRak), _Q(GetEditSID(edtPosisiU)),
              IntToStr(KaliPerpindahan), IntToStr(User.IDUser), _Q(Trim(mmoNotes.Lines.Text)), _Q(Trim(edtNoTiket.Text))]);
      //      Informasi(SQLInsert);
            ExecQuery(SQLInsert);

            if ThisID = null then
            begin
              //dc_location
              _idlocation := ArDB.GetData(' SELECT id_location FROM `dc_location` WHERE id_server= '+QuotedStr(VarToStr(a)));

              ClearParams;
              TableName := 'dc_location';
              Quoted := False;

              SetFieldNames(['id_rak', 'u', 'states']);

              AddFieldValues([GetEditSID(edtRak), _Q(GetEditSID(edtPosisiU)),  '"fix"']);

              SetKeyFieldNames(['id_location']);
              SetKeyFieldValues([_Q(IntToStr(_idlocation))]);

              ExecQuery(SQLDelete);
            end;

            //update data dc_server set deleted jadi true
            ExecQry('update dc_server set deleted = true where id_server='+QuotedStr(VarToStr(a)));

            //log_user
            if ThisID <> Null then CreateLogData('update data', 'Server Keluar') else CreateLogData('insert data', 'Server Keluar');

            Next;
          end;
        end;
      end;

      if ArDB.FDBCon.InTransaction then
        ArDB.FDBCon.Commit;
      Disimpan := True;
      Informasi('Data Server Keluar berhasil disimpan');
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

procedure TfrmTransServerKeluarUnit._OnLoadExecute(Sender: TObject);
var
  u : Integer;
  ucount : Integer;
begin
  inherited;
  with ROQry(' SELECT ds.id_server, ds.id_servermachine, dsm.servername, ds.sn, '+
              ' ds.id_pemilik, dpm.pemilik, dst.rak_lama, dr.rak_name, dst.u_lama, '+
              ' dst.waktu, dst.notes, dsm.u_count, dst.kali_perpindahan, dst.no_tiket, dsm.jenis_factor '+
              ' FROM dc_servertracking dst '+
              ' LEFT JOIN dc_server ds ON ds.id_server=dst.id_server '+
              ' LEFT JOIN dc_servermachine dsm ON dsm.id_servermachine=ds.id_servermachine '+
              ' LEFT JOIN dc_pemilik dpm ON dpm.id_pemilik=ds.id_pemilik '+
              ' LEFT JOIN dc_rak dr ON dr.id_rak=dst.rak_lama '+
             ' where dst.id_servertracking= '+_Q(ThisID)) do
  try
    IDserver_Load := FieldByName('id_server').AsVariant;
    SNServer_Load := FieldByName('sn').AsVariant;
    edtNoTiket.Text := FieldByName('no_tiket').AsString;
    // load id server, bukan id server machine
    SetEditValue(edtServer, IDserver_Load, FieldByName('servername').AsString);
    edtSN.Text := VarToStr(SNServer_Load);
    SetEditValue(edtRak, FieldByName('rak_lama').AsVariant, FieldByName('rak_name').AsString);
    u := FieldByName('u_lama').AsInteger;
    ucount := FieldByName('u_count').AsInteger;
    SetEditValue(edtPosisiU, IntToStr(u), IntToStr(u)+' - '+IntToStr(u+ucount-1));
    SetEditValue(edtPemilik, FieldByName('id_pemilik').AsVariant, FieldByName('pemilik').AsString);
    dtpWaktuKeluar.DateTime := FieldByName('waktu').AsDateTime;
    mmoNotes.Lines.Text := FieldByName('notes').AsString;
    KaliPerpindahan := FieldByName('kali_perpindahan').AsInteger;
    btnCariServer.Enabled := False;
    if FieldByName('jenis_factor').AsString = 'Blade Server' then isBladeServer := True else isBladeServer := False;
    CheckisBladeServer;
    if FieldByName('jenis_factor').AsString = 'Blade Enclosure' then isBladeEnclosure := True;
  finally
      Close;Free;
  end;
end;

procedure TfrmTransServerKeluarUnit.CheckisBladeServer;
begin
  if isBladeServer then lblServer.Caption := 'Server * - Blade' else lblServer.Caption := 'Server *';
end;

end.
