unit DataServerUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ExtCtrls, ImgList, StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, ComCtrls, AdvToolBtn, System.Actions, System.ImageList;

type
  TDataServer = record
    ID: Variant;
    id_pemilik : Variant;
    id_picserver : Variant;
    ServerMachine : string;
    Jenis_factor : string;
    SN : string;
    IDrak : string;
    Rak : string;
    U : Byte;
    JumlahU : Byte;
    PosisiU : string;
    IPmanagement : string;
    UserMgt : string;
    PasswordMgt : string;
    Pemilik : string;
    ATS : string;
    TahunPemeliharaan : string;
    TglEndOfSupport : TDate;
    port_nic : string;
    namapic : string;
    ampere : Double;
    watt : Double;
  end;
  TfrmDataServer = class(TfrmData)
    procedure FormCreate(Sender: TObject);
    procedure _InsertExecute(Sender: TObject);
    procedure _DeleteExecute(Sender: TObject);
    procedure _EditExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataServer: TfrmDataServer;

  procedure ShowDataServer;
  function ShowCariServer(kw, flt: string): TDataServer;
  function GetDataServer(id: Cardinal): TDataServer;

implementation

uses
  ArDBModule, ArFunctions, ArComponents, MenuUtamaUnit, TypeUnit, TransServerMasukUnit, TransServerKeluarUnit, TransServerEditUnit;

{$R *.dfm}

procedure ShowDataServer;
begin
  if not BolehAkses(mnServer) then
    PesanError('Anda tidak diperkenankan mengakses menu ini');

  with frmDataServer do
  begin
    if not IsFormClassActive('TfrmDataServer', Application) then
    begin
      frmDataServer := TfrmDataServer.Create(Application);
      ChangeWindowState := wsMaximized;
      FormStyle := fsMDIChild;

      ShowData(qryDaftar, ptFirst);
    end;
    Show;
  end;
end;

function ShowCariServer(kw, flt: string): TDataServer;
begin
  Result.ID := null;
  with TfrmDataServer.Create(nil) do
  try
    pnlButton.Visible := BolehAkses(mnServer);
    ShowPilih(True);

    qryDaftar.SQL.Text := SQLBase + flt;
    
    if kw = 'NewData' then
    begin
         edtKeyword.Text := '';
         ShowData (qryDaftar, ptFirst);
         if BolehAkses(mnServer, [haTambah]) then _Insert.Execute;
//         ActiveControl := edtRak;
    end else
    begin
         edtKeyword.Text := kw;
         ShowData (qryDaftar, ptFirst);
         ActiveControl := edtKeyword;
    end;

    Position := poOwnerFormCenter;
    with qryDaftar, Result do
      case ShowModal of
        mrOK:
          begin
            ID            := FieldValues['id_server'];
            id_pemilik    := FieldValues['id_pemilik'];
            id_picserver  := FieldValues['id_picserver'];
            ServerMachine := FieldByName('servername').AsString;
            Jenis_factor  := FieldByName('jenis_factor').AsString;
            SN            := FieldByName('sn').AsString;
            IDrak         := FieldByName('id_rak').AsString;
            Rak           := FieldByName('rak_name').AsString;
            U             := FieldByName('u').AsInteger;
            JumlahU       := FieldByName('u_count').AsInteger;
            PosisiU       := FieldByName('posisi_u').AsString;
            IPmanagement  := FieldByName('ip_management').AsString;
            UserMgt       := FieldByName('user').AsString;
            PasswordMgt   := FieldByName('password').AsString;
            Pemilik       := FieldByName('pemilik').AsString;
            ATS           := FieldByName('ats_name').AsString;
            TahunPemeliharaan := FieldByName('tahun').AsString;
            TglEndOfSupport := FieldByName('tgl_endofsupport').AsDateTime;
            port_nic      := FieldByName('port_nic').AsString;
            namapic       := FieldByName('namapic').AsString;
            ampere        := FieldByName('ampere').AsFloat;
            watt          := FieldByName('watt').AsFloat;
          end;
      end;
  finally
    Free;
  end;
end;

function GetDataServer(id: Cardinal): TDataServer;
begin
  Result.ID := null;
  with Query('SELECT '+
      '  ds.id_server, '+
      '  ds.id_servermachine, '+
      '  ds.id_pemilik, '+
      '  ds.id_pemeliharaan, '+
      '  ds.id_picserver, '+
      '  dsm.`servername`, '+
      '  dsm.jenis_factor, '+
      '  ds.`sn`, '+
      '  dr.`id_rak`, '+
      '  dr.`rak_name`, '+
      '  dl.`u`, '+
      '  dsm.`u_count`, '+
      '  CONCAT(dl.`u`," - ", dl.`u`+dsm.`u_count`) posisi_u, '+
      '  ds.ip_management, '+
      '  ds.`user`, '+
      '  ds.`password`, '+
      '  dp.`pemilik`, '+
      '  dats.`ats_name`, '+
      '  dpm.`tahun`, '+
      '  ds.tgl_endofsupport, '+
      '  ds.port_nic, '+
      '  dps.namapic, '+
      '  ds.ampere, '+
      '  ds.watt '+
      'FROM '+
      '  `dc_server` ds '+
      '  LEFT JOIN dc_servermachine dsm ON dsm.`id_servermachine`=ds.`id_servermachine` '+
      '  LEFT JOIN dc_location dl ON dl.`id_server`=ds.`id_server` '+
      '  LEFT JOIN dc_rak dr ON dr.`id_rak`=dl.`id_rak` '+
      '  LEFT JOIN `dc_pemilik` dp ON dp.`id_pemilik`=ds.`id_pemilik` '+
      '  LEFT JOIN dc_pemeliharaan dpm ON dpm.`id_pemeliharaan`=ds.`id_pemeliharaan` '+
      '  LEFT JOIN dc_picserver dps ON dps.`id_picserver`=ds.`id_picserver` '+
      '  LEFT JOIN dc_ats dats ON dats.`id_ats`=dpm.`id_ats` where ds.id_server=' + IntToStr(id)), Result do
  try
    First;
    if not eof then
    begin
      ID            := FieldValues['id_server'];
      id_pemilik    := FieldValues['id_pemilik'];
      id_picserver  := FieldValues['id_picserver'];
      ServerMachine := FieldByName('servername').AsString;
      Jenis_factor  := FieldByName('jenis_factor').AsString;
      SN            := FieldByName('sn').AsString;
      IDrak         := FieldByName('id_rak').AsString;
      Rak           := FieldByName('rak_name').AsString;
      U             := FieldByName('u').AsInteger;
      JumlahU       := FieldByName('u_count').AsInteger;
      PosisiU       := FieldByName('posisi_u').AsString;
      IPmanagement  := FieldByName('ip_management').AsString;
      UserMgt       := FieldByName('user').AsString;
      PasswordMgt   := FieldByName('password').AsString;
      Pemilik       := FieldByName('pemilik').AsString;
      ATS           := FieldByName('ats_name').AsString;
      TahunPemeliharaan := FieldByName('tahun').AsString;
      TglEndOfSupport := FieldByName('tgl_endofsupport').AsDateTime;
      port_nic      := FieldByName('port_nic').AsString;
      namapic       := FieldByName('namapic').AsString;
      ampere        := FieldByName('ampere').AsFloat;
      watt          := FieldByName('watt').AsFloat;
    end;
  finally
    Close;
    Free;
  end;
end;

procedure TfrmDataServer.FormCreate(Sender: TObject);
begin
  SetHeader(pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._Server.ImageIndex);
//  SetReport(PathReport + 'DataDokter.fr3', 'Dokter');
  MenuAkses := mnServer;
//  ChangeDateEditor([edttgl_aktif]);
  inherited;
end;

procedure TfrmDataServer._InsertExecute(Sender: TObject);
begin
  inherited;
  TransServerMasuk(Null, _RefreshExecute);
end;

procedure TfrmDataServer._DeleteExecute(Sender: TObject);
begin
  inherited;
  TransHapusServer(qryDaftar.fieldbyname('id_server').AsVariant, _RefreshExecute);
end;

procedure TfrmDataServer._EditExecute(Sender: TObject);
var
  s : Variant;
begin
  inherited;
  s := GetQryData('SELECT id_servertracking FROM dc_servertracking WHERE id_server='+
      qryDaftar.fieldbyname('id_server').AsString+' ORDER BY `id_servertracking` DESC LIMIT 1', ftVariant);
  TransServerEdit(s, _RefreshExecute);
end;

end.
