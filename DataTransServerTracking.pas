unit DataTransServerTracking;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataTransForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ZSqlUpdate, ActnList, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ExtCtrls, ImgList, ComCtrls, StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, AdvToolBtn, System.Actions, System.ImageList;

type
  TJenisPindah = (Masuk, Keluar, Pindah, Lainnya);
  TDataServerTracking = record
     id_servertracking : Variant;
     id_server : Variant;
     servername : string;
     sn : String;
     pemilik : String;
     jenis_pindah : String;
     waktu : TDateTime;
     rak_name : String;
     u : String;
  end;
  TfrmDataTransServerTracking = class(TfrmDataTrans)
    _ServerMasuk: TAction;
    _PindahServer: TAction;
    _ServerKeluar: TAction;
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvToolButton3: TAdvToolButton;
    procedure FormCreate(Sender: TObject);
    procedure _FilterExecute(Sender: TObject);
    procedure _ServerKeluarExecute(Sender: TObject);
    procedure _ServerMasukExecute(Sender: TObject);
    procedure _PindahServerExecute(Sender: TObject);
    procedure _LihatExecute(Sender: TObject);
    procedure dsDaftarDataChange(Sender: TObject; Field: TField);
    procedure _EditExecute(Sender: TObject);
    procedure _DeleteExecute(Sender: TObject);
  private
    { Private declarations }
    JenisPindah : TJenisPindah;
    IDServerTracking : Variant;
    procedure HapusServerMasuk;
    procedure HapusPindahServer;
    procedure HapusServerKeluar;
  public
    { Public declarations }
  end;

var
  frmDataTransServerTracking: TfrmDataTransServerTracking;
  procedure ShowDataServerTracking;
  function ShowCariDataServerTracking(kw: string): TDataServerTracking;
  
implementation

uses ArDBModule, BaseForm, MenuUtamaUnit, ArComponents,
  ArFunctions, TypeUnit, DataForm, ZDbcIntfs, TransServerKeluarUnit, TransServerMasukUnit, TransPindahServerUnit, ArManager;

{$R *.dfm}

procedure ShowDataServerTracking;
begin
  if not BolehAkses(mnDataServerTracking) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataTransServerTracking do
     begin
          if not IsFormClassActive ('TfrmDataTransServerTracking', Application) then
               frmDataTransServerTracking := TfrmDataTransServerTracking.Create(Application);
          FormStyle := fsMDIChild;
          WindowState := wsMaximized;
                                  
          pnlOption.Visible := True;
//          pnlSort.Collapsed := True;

          _Filter.Execute;

          Show;
     end;
end;

function ShowCariDataServerTracking(kw:string):TDataServerTracking;
begin
  Result.id_servertracking := null;
     with TfrmDataTransServerTracking.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnDataServerTracking);
          pnlOptButton.Visible := False;
          
          ShowPilih(True);
          pnlBottom.Align:=alTop;
          pnlBottom.Visible:=True;
     
          if kw = '' then
          begin
               edtKeyword.Text := kw;
               ShowData(qryDaftar, ptFirst);
//               ShowData(qryDtl, ptFirst);
//               ShowData(qryDtlPenukaran, ptFirst);
               ActiveControl := edtKeyword;
          end;

          Position := poMainFormCenter;
          with qryDaftar, Result  do
          case ShowModal of
          mrOK : 
               begin
                   id_servertracking := FieldByName('id_servertracking').Value;
                   id_server := FieldByName('id_server').AsVariant;
                   servername := FieldByName('servername').AsString;
                   sn := FieldByName('sn').AsString;
                   pemilik := FieldByName('pemilik').AsString;
                   jenis_pindah := FieldByName('jenis_pindah').AsString;
                   waktu := FieldByName('waktu').AsDateTime;
                   rak_name := FieldByName('rak_name').AsString;
                   u := FieldByName('posisi_u').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

procedure TfrmDataTransServerTracking.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._DataServerTracking.ImageIndex);
  MenuAkses := mnDataServerTracking;

//  _Lihat.Visible := False;
//  _Edit.Visible := False;
//  _Delete.Visible := False;

//  SetGlyph(btnFilterLap, ibFilter);
end;

procedure TfrmDataTransServerTracking._FilterExecute(Sender: TObject);
begin
  inherited;
  SQLFilter := ' where date(dst.`waktu`) between '+fDateStr(dtp1.date)+
                  ' and '+fDateStr(dtp2.date)+
                  ' order by dst.`waktu` asc';
//  if pnlSort.Collapsed = false then CheckSortir;

  qryDaftar.Close;
  qryDaftar.SQL.Text := SQLBase + SQLFilter;
  ShowData(qryDaftar, ptNone);
//  ShowData(qryDtl, ptNone);
//  ShowData(qryDtl2, ptNone);
end;

procedure TfrmDataTransServerTracking._ServerKeluarExecute(
  Sender: TObject);
begin
  inherited;
  TransServerKeluar(Null, _FilterExecute);
end;

procedure TfrmDataTransServerTracking._ServerMasukExecute(Sender: TObject);
begin
  inherited;
  TransServerMasuk(Null, _FilterExecute);
end;

procedure TfrmDataTransServerTracking._PindahServerExecute(
  Sender: TObject);
begin
  inherited;
  TransPindahServer(Null, _FilterExecute);
end;

procedure TfrmDataTransServerTracking._LihatExecute(Sender: TObject);
begin
  inherited;
  if not BolehAkses(mnServerMasuk) then PesanError('Anda tidak diperkenankan mengakses perintah ini');
  case JenisPindah of
    Masuk  : LihatServerMasuk (Self, IDServerTracking, True);
    Pindah : LihatPindahServer(Self, IDServerTracking, True);
    Keluar : LihatServerKeluar(Self, IDServerTracking, True);
    Lainnya: LihatPindahServer(Self, IDServerTracking, True);
  end;
//  Informasi(qryDaftar.FieldByName('id_servertracking').AsVariant);
end;

procedure TfrmDataTransServerTracking.dsDaftarDataChange(Sender: TObject;
  Field: TField);
var
  jp : string;
begin
  inherited;
  IDServerTracking := qryDaftar.FieldByName('id_servertracking').AsVariant;
  jp := qryDaftar.FieldByName('jenis_pindah').AsString;
  if jp = 'masuk' then JenisPindah := Masuk else
  if jp = 'pindah' then JenisPindah := Pindah else
  if jp = 'keluar' then JenisPindah := Keluar else
  if jp = 'lainnya' then JenisPindah := Lainnya;

end;

procedure TfrmDataTransServerTracking._EditExecute(Sender: TObject);
var
  a : Integer;
  _idserver : Variant;
begin
  inherited;
  if not BolehAkses(mnServerMasuk) then PesanError('Anda tidak diperkenankan mengakses perintah ini');
  _idserver := qryDaftar.fieldbyname('id_server').AsVariant;
  a := GetQryData('SELECT MAX(`kali_perpindahan`) FROM `dc_servertracking` WHERE id_server='+VarToStr(_idserver), ftInteger);

  if not (qryDaftar.fieldbyname('kali_perpindahan').AsInteger = a) then
    Peringatan('Data Server Tracking ini tidak bisa diedit karena telah mengalami perubahan. Jika ingin mengedit, silakan edit '+
                'history perubahannya di server tracking', True);
  case JenisPindah of
    Masuk  : TransServerMasuk (IDServerTracking, _RefreshExecute);
    Pindah : TransPindahServer(IDServerTracking, _RefreshExecute);
    Keluar : TransServerKeluar(IDServerTracking, _RefreshExecute);
    Lainnya: TransPindahServer(IDServerTracking, _RefreshExecute);
  end;
end;

procedure TfrmDataTransServerTracking._DeleteExecute(Sender: TObject);
begin
  inherited;
  if not BolehAkses(mnServerMasuk) then PesanError('Anda tidak diperkenankan mengakses perintah ini');
  case JenisPindah of
    Masuk  : HapusServerMasuk;
    Pindah : HapusPindahServer;
    Keluar : HapusServerKeluar;
    Lainnya: HapusPindahServer;
  end;
end;

procedure TfrmDataTransServerTracking.HapusServerMasuk;
var
  ASQL: TArSQL;
  a : Integer;
  _idserver : Variant;
begin
  _idserver := qryDaftar.fieldbyname('id_server').AsVariant;
  a := GetQryData('SELECT MAX(`kali_perpindahan`) FROM `dc_servertracking` WHERE id_server='+VarToStr(_idserver), ftInteger);

  if a > 1 then
    Peringatan('Data Server Tracking ini tidak bisa dihapus karena telah mengalami perubahan. Jika ingin menghapus, silakan hapus '+
                'history perubahannya di server tracking', True);

  try
    Screen.Cursor := crHourGlass;
    ArDB.FDBCon.AutoCommit := False;
    ASQL := TArSQL.Create;
    with ASQL do
    try
      if not ArDB.FDBCon.InTransaction then
        ArDB.FDBCon.StartTransaction;

      //dc_location
      ClearParams;
      TableName := 'dc_location';
      Quoted := False;
      
      SetKeyFieldNames(['id_server']);
      SetKeyFieldValues([VarToStr(_idserver)]);

      ExecQuery(SQLDelete);

      //dc_servertracking
      ClearParams;
      TableName := 'dc_servertracking';
      Quoted := False;

      SetKeyFieldNames(['id_servertracking']);
      SetKeyFieldValues([IDServerTracking]);

      ExecQuery(SQLDelete);

      //dc_pemeliharaan
      ClearParams;
      TableName := 'dc_pemeliharaan';
      Quoted := False;

      SetKeyFieldNames(['id_server']);
      SetKeyFieldValues([VarToStr(_idserver)]);

      ExecQuery(SQLDelete);

      //dc_osserver
      ClearParams;
      TableName := 'dc_osserver';
      Quoted := False;

      SetKeyFieldNames(['id_server']);
      SetKeyFieldValues([VarToStr(_idserver)]);

      ExecQuery(SQLDelete);

      //dc_server
      ClearParams;
      TableName := 'dc_server';
      Quoted := False;

      SetKeyFieldNames(['id_server']);
      SetKeyFieldValues([VarToStr(_idserver)]);

      ExecQuery(SQLDelete);

      //log_user
      CreateLogData('delete data', 'Data Server Masuk');

      if ArDB.FDBCon.InTransaction then
        ArDB.FDBCon.Commit;
      Informasi('Data Server Masuk berhasil dihapus');
    except
      on e: Exception do
      begin
        if ArDB.FDBCon.InTransaction then
          ArDB.FDBCon.Rollback;
        DoHandleException(Self, e);
      end;
    end;

  finally
    if Assigned(ASQL) then
      FreeAndNil(ASQL);
    ArDB.FDBCon.AutoCommit := True;
    Screen.Cursor := crDefault;
    _Refresh.Execute;
  end;
end;

procedure TfrmDataTransServerTracking.HapusPindahServer;
var
  ASQL: TArSQL;
  a, b : Integer;
  _idserver : Variant;
  _lokasiterisi : Variant;
  _raklama : Variant;
  _ulama : String;
  isBladeServer : Boolean;
begin
  if not Konfirmasi('Menghapus data ini akan mengembalikan server ke rak dan u sebelumnya, apakah anda yakin ingin melanjutkan?') then Abort;
  
  _idserver := qryDaftar.fieldbyname('id_server').AsVariant;
  a := GetQryData('SELECT MAX(`kali_perpindahan`) FROM `dc_servertracking` WHERE id_server='+VarToStr(_idserver), ftInteger);
  b := qryDaftar.FieldByName('kali_perpindahan').AsInteger;

  _raklama := qryDaftar.FieldByName('rak_lama').AsString;
  _ulama := _Q(qryDaftar.FieldByName('u_lama').AsString);
  _lokasiterisi := GetQryData('select id_location from dc_location where id_rak='+_raklama+' and u = '+_ulama+' and states = "fix"', ftVariant);

  if qryDaftar.fieldbyname('jenis_factor').AsString = 'Blade Server' then isBladeServer := True else isBladeServer := False;

  if a > b then
    Peringatan('Data Server Tracking ini tidak bisa dihapus karena telah mengalami perubahan. Jika ingin menghapus, silakan hapus '+
                'history perubahannya di server tracking', True);

  if (_lokasiterisi <> Null) and (not isBladeServer) then
    Peringatan('Tidak bisa menghapus data pindah server karena lokasi rak dan u server ini sudah ada yang mengisi. '+
    'Silakan pindah dulu server yang telah mengisi lokasi rak dan u ini', True);

  try
    Screen.Cursor := crHourGlass;
    ArDB.FDBCon.AutoCommit := False;
    ASQL := TArSQL.Create;
    with ASQL do
    try
      if not ArDB.FDBCon.InTransaction then
        ArDB.FDBCon.StartTransaction;

      //dc_location
      ClearParams;
      TableName := 'dc_location';
      Quoted := False;

      SetFieldNames(['id_rak', 'u', 'states']);

      AddFieldValues([qryDaftar.FieldByName('rak_lama').AsString,
                      qryDaftar.FieldByName('u_lama').AsString, '"fix"']);

      SetKeyFieldNames(['id_server']);
      SetKeyFieldValues([VarToStr(_idserver)]);

      ExecQuery(SQLUpdate);

      //dc_servertracking
      ClearParams;
      TableName := 'dc_servertracking';
      Quoted := False;

      SetKeyFieldNames(['id_servertracking']);
      SetKeyFieldValues([IDServerTracking]);

      ExecQuery(SQLDelete);

      //log_user
      CreateLogData('delete data', 'Data Server Pindah');

      if ArDB.FDBCon.InTransaction then
        ArDB.FDBCon.Commit;
      Informasi('Data Server Masuk berhasil dihapus');
    except
      on e: Exception do
      begin
        if ArDB.FDBCon.InTransaction then
          ArDB.FDBCon.Rollback;
        DoHandleException(Self, e);
      end;
    end;

  finally
    if Assigned(ASQL) then
      FreeAndNil(ASQL);
    ArDB.FDBCon.AutoCommit := True;
    Screen.Cursor := crDefault;
    _Refresh.Execute;
  end;
end;

procedure TfrmDataTransServerTracking.HapusServerKeluar;
var
  ASQL: TArSQL;
  _idserver : Variant;
  _lokasiterisi : Variant;
  _raklama : Variant;
  _ulama : String;
  _idserverada : Variant;
  isBladeServer : Boolean;
begin
  if not Konfirmasi('Menghapus data ini akan mengembalikan server ke rak dan u sebelumnya, apakah anda yakin ingin melanjutkan?') then Abort;

  _raklama := qryDaftar.FieldByName('rak_lama').AsString;
  _ulama := _Q(qryDaftar.FieldByName('u_lama').AsString);
  _idserver := qryDaftar.fieldbyname('id_server').AsVariant;

  _idserverada := GetQryData('select id_server from dc_location where id_server='+VarToStr(_idserver), ftVariant);
  _lokasiterisi := GetQryData('select id_location from dc_location where id_rak='+_raklama+' and u = '+_ulama+' and states = "fix"', ftVariant);

  if qryDaftar.fieldbyname('jenis_factor').AsString = 'Blade Server' then isBladeServer := True else isBladeServer := False;

  if (_lokasiterisi <> Null) and (not isBladeServer) then
    Peringatan('Tidak bisa menghapus data server keluar karena lokasi rak dan u server ini sudah ada yang mengisi. '+
    'Silakan pindah dulu server yang telah mengisi lokasi rak dan u ini', True);

  if (_idserverada <> Null) then
    Peringatan('Server ini masih terpasang di rak', True);


  try
    Screen.Cursor := crHourGlass;
    ArDB.FDBCon.AutoCommit := False;
    ASQL := TArSQL.Create;
    with ASQL do
    try
      if not ArDB.FDBCon.InTransaction then
        ArDB.FDBCon.StartTransaction;

      //dc_servertracking
      ClearParams;
      TableName := 'dc_servertracking';
      Quoted := False;
      
      SetKeyFieldNames(['id_servertracking']);
      SetKeyFieldValues([IDServerTracking]);

      ExecQuery(SQLDelete);

      //dc_location
      ClearParams;
      TableName := 'dc_location';
      Quoted := False;

      SetFieldNames(['id_rak', 'id_server', 'u', 'states']);

      AddFieldValues([_raklama,
                    _idserver,
                    _ulama,
                    '"fix"']);

      ExecQuery(SQLInsert);

      //log_user
      CreateLogData('delete data', 'Data Server Keluar');

      //update data dc_server set deleted jadi false
      ExecQry('update dc_server set deleted = false where id_server='+VarToStr(_idserver));

      if ArDB.FDBCon.InTransaction then
        ArDB.FDBCon.Commit;
      Informasi('Data Server Keluar berhasil dihapus');
    except
      on e: Exception do
      begin
        if ArDB.FDBCon.InTransaction then
          ArDB.FDBCon.Rollback;
//        Modalresult := mrNone;
        DoHandleException(Self, e);
      end;
    end;

  finally
    if Assigned(ASQL) then
      FreeAndNil(ASQL);
    ArDB.FDBCon.AutoCommit := True;
    Screen.Cursor := crDefault;
    _Refresh.Execute;
  end;
end;

end.
