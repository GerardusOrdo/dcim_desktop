unit TransPindahServerUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TransaksiForm, ActnList, ExtCtrls, ImgList, AdvToolBtn,
  StdCtrls, Buttons, ComCtrls, AdvDateTimePicker, System.Actions,
  System.ImageList;

type
  TfrmTransPindahServerUnit = class(TfrmTransaksi)
    grpDataServer: TGroupBox;
    lblSN: TLabel;
    lblUawal: TLabel;
    lblRakAwal: TLabel;
    lblServer: TLabel;
    edtSN: TEdit;
    edtRak: TEdit;
    edtUawal: TEdit;
    edtServer: TEdit;
    lblNotes: TLabel;
    mmoNotes: TMemo;
    lblPemilik: TLabel;
    edtPemilik: TEdit;
    lblJenisPindah: TLabel;
    lblWaktuPindah: TLabel;
    cbbJenisPindah: TComboBox;
    dtpWaktuPindah: TAdvDateTimePicker;
    btnCariServer: TAdvToolButton;
    btnCariRak: TAdvToolButton;
    lblUPindah: TLabel;
    lblRakPindah: TLabel;
    edtUPindah: TEdit;
    edtRakPindah: TEdit;
    lblNoTiket: TLabel;
    edtNoTiket: TEdit;
    btnCariBladeEnclosure: TAdvToolButton;
    edtBladeEnclosure: TEdit;
    procedure btnBatalClick(Sender: TObject);
    procedure _OnClearFormExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCariServerClick(Sender: TObject);
    procedure btnCariRakClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure _OnValidasiInputExecute(Sender: TObject);
    procedure _OnLoadExecute(Sender: TObject);
    procedure btnCariBladeEnclosureClick(Sender: TObject);
  private
    { Private declarations }
    ServerFloating : Variant;
    FloatServerLama : Boolean;
    IDserver_Load : Variant;
    SNServer_Load : Variant;
    KaliPerpindahan : Word;
    isBladeEnclosure : Boolean;
    isBladeServer : Boolean;
    UBladeEnclosure : Byte;
    procedure SetReadOnly(b: Boolean);
    procedure CheckisBladeServer;
  public
    { Public declarations }
  end;

var
  frmTransPindahServerUnit: TfrmTransPindahServerUnit;
  procedure TransPindahServer(id: Variant; DoOnSaved: TNotifyEvent);
  procedure LihatPindahServer(AOWner: TComponent; id: Variant; iShow: Boolean =
   False);

implementation

uses
  TypeUnit, ArComponents, ArFunctions, MenuUtamaUnit, ArDBModule, Strutils,
  BaseForm, DataTipeServer, DataServerUnit, DataRak, DB, ArManager;

{$R *.dfm}

procedure TransPindahServer(id: Variant; DoOnSaved: TNotifyEvent);
begin
  if not BolehAkses(mnPindahServer) then
    PesanError('Anda tidak diperkenankan mengakses menu ini');

  CloseFormByClass('TfrmTransPindahServerUnit', Application, False);

  with TfrmTransPindahServerUnit.Create(Application) do
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

procedure LihatPindahServer(AOWner: TComponent; id: Variant; iShow: Boolean =
   False);
var
  SedangTampil: Boolean;
begin
  SedangTampil := IsFormClassActive('TfrmTransPindahServerUnit', AOWner);
  if iShow and (not SedangTampil) then
    frmTransPindahServerUnit := TfrmTransPindahServerUnit.Create(AOWner);

  if iShow or SedangTampil then
    with frmTransPindahServerUnit do
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

procedure TfrmTransPindahServerUnit.btnBatalClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTransPindahServerUnit.SetReadOnly(b: Boolean);
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

procedure TfrmTransPindahServerUnit._OnClearFormExecute(Sender: TObject);
begin
  inherited;
  SetClear(grpDataServer);
  dtpWaktuPindah.DateTime := ArDB.ServerTime;
  cbbJenisPindah.ItemIndex := 0;
  ClearAllEditID([edtServer, edtPemilik, edtRak, edtRakPindah]);
  IDserver_Load := Null;
  SNServer_Load := Null;
  btnCariServer.Enabled := True;
  KaliPerpindahan := 0;
  isBladeEnclosure := False;
  isBladeServer := False;
  CheckisBladeServer;
end;

procedure TfrmTransPindahServerUnit.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader(pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._PindahServer.ImageIndex);
end;

procedure TfrmTransPindahServerUnit.btnCariServerClick(
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
      // ID untuk edtserver bukan id server machine tapi id server
      SetEditValue(edtServer, ID, ServerMachine);
      SetEditValue(edtRak, IDrak, Rak);
      edtSN.Text := SN;
      edtPemilik.Text := Pemilik;
      edtUawal.Text := IntToStr(u);
      if Jenis_factor = 'Blade Enclosure' then isBladeEnclosure := True else isBladeEnclosure := False;
      if Jenis_factor = 'Blade Server' then isBladeServer := True else isBladeServer := False;
      CheckisBladeServer;
    end;
end;

procedure TfrmTransPindahServerUnit.btnCariRakClick(Sender: TObject);
var
  s: string;
begin
  inherited;
  if Sender = btnCariRak then
    s := edtRakPindah.Text
  else
    s := '';

  with ShowCariDataRak(s, '') do
    if id_rak <> null then
    begin
      SetEditValue(edtRakPindah, id_rak, rak_name);
    end;
end;

procedure TfrmTransPindahServerUnit.btnSimpanClick(Sender: TObject);
var
  Disimpan: Boolean;
  ASQL: TArSQL;
  _ID: string;
  _idservertracking : Variant;
  _idlocation : Variant;
  _jenispindah : string;
  a : Variant;
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

      //float server yang menempati lokasi yang lama
      if FloatServerLama then
      ExecQry('update dc_location set states="floating" where id_server='+VarToStr(ServerFloating));

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

      _idlocation := ArDB.GetData(' SELECT id_location FROM `dc_location` WHERE id_server= '+QuotedStr(GetEditSID(edtServer)));
      case cbbJenisPindah.ItemIndex of
      0: _jenispindah := 'pindah';
      else _jenispindah := 'lainnya';
      end;  

      SetFieldNames(['id_servertracking', 'id_server', 'waktu', 'jenis_pindah', 'rak_lama', 'u_lama', 'rak_baru', 'u_baru', 'kali_perpindahan',
                    'id_user', 'notes', 'no_tiket']);

      if not isBladeServer then _u := Trim(edtUPindah.Text) else _u := IntToStr(IfNull(UBladeEnclosure, 0));

      // ID untuk edtserver adalah id server, bukan id server machine 
      AddFieldValues([VarToStr(_idservertracking), GetEditSID(edtServer), fDateTimeStr(dtpWaktuPindah.DateTime), _Q(_jenispindah),
                      GetEditSID(edtRak), _Q(Trim(edtUawal.Text)), GetEditSID(edtRakPindah), _Q(_u),  IntToStr(KaliPerpindahan),
                      IntToStr(User.IDUser), _Q(Trim(mmoNotes.Lines.Text)), _Q(Trim(edtNoTiket.Text))]);

      ExecQuery(SQLInsert);

      if ThisID = null then
      begin
        //dc_location
        ClearParams;
        TableName := 'dc_location';
        Quoted := False;

        SetFieldNames(['id_rak', 'u', 'states']);

//        if not isBladeServer then _u := Trim(edtUPindah.Text) else _u := IntToStr(IfNull(UBladeEnclosure, 0));

        AddFieldValues([GetEditSID(edtRakPindah), _u,  '"fix"']);

        SetKeyFieldNames(['id_location']);
        SetKeyFieldValues([_Q(IntToStr(_idlocation))]);

        ExecQuery(SQLUpdate);
      end;
//      ExecQry('update dc_location set id_rak = '+GetEditSID(edtRak)+', u = '+_Q(Trim(edtUAwal.Text))+', states="fix" where id_server='+GetEditSID(
//         edtServer));

      //log_user
      if ThisID <> Null then CreateLogData('update data', 'Pindah Server') else CreateLogData('insert data', 'Pindah Server');

      //jika ini merupakan blade server, ubah id_enclosure dari server ini ke id_enclosure yg baru
      if isBladeServer then
      begin
        ExecQry('update dc_server set id_enclosure = '+IfThen(isBladeServer, GetEditSID(edtBladeEnclosure),'Null')+' where id_server = '+GetEditSID(edtServer));
      end;


      //jika server ini merupakan enclosure maka pindah juga elemen server blade yg berada di dalamnya
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
                ' and (jenis_pindah = "pindah" or jenis_pindah = "lainnya") ORDER BY id_servertracking DESC', ftVariant);
            end
            else
            begin
              _idservertracking := 'null';
              KaliPerpindahan := ArDB.GetData('SELECT COUNT(id_server) FROM `dc_servertracking` WHERE `id_server`='+QuotedStr(VarToStr(a))) + 1;
            end;

            _idlocation := ArDB.GetData(' SELECT id_location FROM `dc_location` WHERE id_server= '+QuotedStr(VarToStr(a)));
            case cbbJenisPindah.ItemIndex of
            0: _jenispindah := 'pindah';
            else _jenispindah := 'lainnya';
            end;  

            SetFieldNames(['id_servertracking', 'id_server', 'waktu', 'jenis_pindah', 'rak_lama', 'u_lama', 'rak_baru', 'u_baru', 'kali_perpindahan',
                          'id_user', 'notes', 'no_tiket']);

            // ID untuk edtserver adalah id server, bukan id server machine 
            AddFieldValues([VarToStr(_idservertracking), QuotedStr(VarToStr(a)), fDateTimeStr(dtpWaktuPindah.DateTime), _Q(_jenispindah),
                            GetEditSID(edtRak), _Q(Trim(edtUawal.Text)), GetEditSID(edtRakPindah), _Q(Trim(edtUPindah.Text)),  IntToStr(KaliPerpindahan),
                            IntToStr(User.IDUser), _Q(Trim(mmoNotes.Lines.Text)), _Q(Trim(edtNoTiket.Text))]);

            ExecQuery(SQLInsert);

            if ThisID = null then
            begin
              //dc_location
              ClearParams;
              TableName := 'dc_location';
              Quoted := False;

              SetFieldNames(['id_rak', 'u', 'states']);

              AddFieldValues([GetEditSID(edtRakPindah), Trim(edtUPindah.Text),  '"fix"']);

              SetKeyFieldNames(['id_location']);
              SetKeyFieldValues([_Q(IntToStr(_idlocation))]);

              ExecQuery(SQLUpdate);
            end;

            //log_user
            if ThisID <> Null then CreateLogData('update data', 'Pindah Server') else CreateLogData('insert data', 'Pindah Server');

            Next;
          end;
        end;
      end;


      if ArDB.FDBCon.InTransaction then
        ArDB.FDBCon.Commit;
      Disimpan := True;
      Informasi('Data Pindah Server berhasil disimpan');
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

procedure TfrmTransPindahServerUnit._OnValidasiInputExecute(
  Sender: TObject);
begin
  inherited;
//  if BolehAkses(mnPindahServer, [haTambah, haUbah]) then Peringatan('Anda tidak diperkenankan menyimpan data', True);
  HarusDiisi(edtServer, 'Server', GetEditID(edtServer)=null);
  HarusDiisi(edtNoTiket, 'Rak Pindah', GetEditID(edtRakPindah)=null);
  if not isBladeServer then HarusDiisi(edtNoTiket, 'U Pindah', Trim(edtUPindah.Text) = '');
  if (GetEditSID(edtRak) = GetEditSID(edtRakPindah)) and (Trim(edtUawal.Text) = Trim(edtUPindah.Text)) then
  Peringatan('Server tidak bisa dipindahkan ke tempat yang sama', True);

  ServerFloating := GetQryData('SELECT id_server FROM `dc_location` WHERE id_rak='+GetEditSID(edtRakPindah)+' AND u ='+_Q(Trim(edtUPindah.Text)),
     ftVariant);
//  Informasi('SELECT id_server FROM `dc_location` WHERE id_rak='+GetEditSID(edtRakPindah)+' AND u ='+Trim(edtUPindah.Text));
//  Informasi(VarToStr(ServerFloating));
//  Abort;
  FloatServerLama := False;
  if (ServerFloating <> Null) then
    if Konfirmasi('lokasi rak dan u ini telah ditempati oleh server  lain, apakah server tersebut akan difloating?') then
    FloatServerLama := True else
    begin
      FloatServerLama := False;
      Peringatan('Silakan ganti ke rak dan u yang lain', True);
    end;
    
  if isBladeEnclosure then
    if not Konfirmasi('Memindahkan enclosure ini akan memindahkan seluruh blade server di dalamnya ke lokasi yg baru, apakah anda yakin ingin melanjutkan?') 
    then Abort;

end;

procedure TfrmTransPindahServerUnit._OnLoadExecute(Sender: TObject);
var a : Integer;
    b,c : String;
begin
  inherited;
  with ROQry(' SELECT ds.id_server, ds.id_servermachine, dsm.servername, ds.sn, '+
              ' ds.id_pemilik, dpm.pemilik, dst.rak_lama, drl.rak_name raklama,  '+
              ' dst.rak_baru, drb.rak_name rakbaru, dst.u_lama, dst.u_baru, '+
              ' dst.jenis_pindah, dst.waktu, dst.notes, dst.kali_perpindahan, dst.no_tiket, dsm.jenis_factor, ds.id_enclosure '+
              ' FROM dc_servertracking dst '+
              ' LEFT JOIN dc_server ds ON ds.id_server=dst.id_server '+
              ' LEFT JOIN dc_servermachine dsm ON dsm.id_servermachine=ds.id_servermachine '+
              ' LEFT JOIN dc_pemilik dpm ON dpm.id_pemilik=ds.id_pemilik '+
              ' LEFT JOIN dc_rak drl ON drl.id_rak=dst.rak_lama '+
              ' LEFT JOIN dc_rak drb ON drb.id_rak=dst.rak_baru '+
             ' where dst.id_servertracking= '+_Q(ThisID)) do
  try
    IDserver_Load := FieldByName('id_server').AsVariant;
    SNServer_Load := FieldByName('sn').AsVariant;
    edtNoTiket.Text := FieldByName('no_tiket').AsString;
    // load id server, bukan id server machine
    SetEditValue(edtServer, IDserver_Load, FieldByName('servername').AsString);
    edtSN.Text := VarToStr(SNServer_Load);
    SetEditValue(edtPemilik, FieldByName('id_pemilik').AsVariant, FieldByName('pemilik').AsString);
    SetEditValue(edtRak, FieldByName('rak_lama').AsVariant, FieldByName('raklama').AsString);
    edtUawal.Text := FieldByName('u_lama').AsString;
    SetEditValue(edtRakPindah, FieldByName('rak_baru').AsVariant, FieldByName('rakbaru').AsString);
    edtUPindah.Text := FieldByName('u_baru').AsString;

    if FieldByName('jenis_pindah').AsString = 'pindah' then cbbJenisPindah.ItemIndex := 0 else cbbJenisPindah.ItemIndex := 1;

    dtpWaktuPindah.DateTime := FieldByName('waktu').AsDateTime;
    mmoNotes.Lines.Text := FieldByName('notes').AsString;
    KaliPerpindahan := FieldByName('kali_perpindahan').AsInteger;

    btnCariServer.Enabled := False;

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

  finally
      Close;Free;
  end;
end;

procedure TfrmTransPindahServerUnit.CheckisBladeServer;
begin
  edtBladeEnclosure.Visible := isBladeServer;
  edtUPindah.Visible := not isBladeServer;
  btnCariBladeEnclosure.Visible := isBladeServer;
  if isBladeServer then lblUPindah.Caption := 'Blade enclosure *' else lblUPindah.Caption := 'Pindah ke U *';
  if isBladeServer then lblServer.Caption := 'Server * - Blade' else lblServer.Caption := 'Server *';
  ClearEditID(edtBladeEnclosure);
  edtUPindah.Enabled := not isBladeServer;
//  edtUAwal.Clear;
//  pnlToolbar.Enabled := not isBladeServer;
end;

procedure TfrmTransPindahServerUnit.btnCariBladeEnclosureClick(
  Sender: TObject);
var s : string;
begin
  inherited;
  if GetEditID(edtRakPindah) = null then Peringatan('Silakan pilih rak terlebih dulu', True);
  if Sender = btnCariBladeEnclosure then
    s := edtBladeEnclosure.Text
  else
    s := '';

  with ShowCariServer(s, ' and dsm.jenis_factor = "Blade Enclosure" AND dl.`id_rak`='+_Q(GetEditSID(edtRakPindah))) do
    if ID <> null then
    begin
      SetEditValue(edtBladeEnclosure, ID, ServerMachine+' - SN : '+SN);
      UBladeEnclosure := U;
    end;
end;

end.
