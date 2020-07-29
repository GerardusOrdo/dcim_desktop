unit DataOSServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataDtlForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ExtCtrls, ImgList, StdCtrls, Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, ComCtrls, AdvToolBtn, Mask, DBCtrls, Types, TypeTrans,
  ZSqlUpdate;

type
  TDataOSServer = record
    id_osserver       : Variant;
    id_server         : Variant;
    id_os             : Variant;
    ip_os             : string;
    hostname          : string;
    sistem_terpasang  : String;
    user              : String;
    password          : String;
    servername        : String;
    sn                : String;
    os                : String;
  end;
  TfrmDataOSServer = class(TfrmDataDtl)
    udtDaftar: TZUpdateSQL;
    btnCariServer: TAdvToolButton;
    btnCariOS: TAdvToolButton;
    lblIP: TLabel;
    edtIP: TDBEdit;
    lblHostname: TLabel;
    edtHostname: TDBEdit;
    lblSistem: TLabel;
    edtSistem: TDBEdit;
    lblUser: TLabel;
    edtUser: TDBEdit;
    lblPassword: TLabel;
    edtPassword: TDBEdit;
    lblServer: TLabel;
    edtServer: TDBEdit;
    lblOS: TLabel;
    edtOS: TDBEdit;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
    procedure btnCariServerClick(Sender: TObject);
    procedure btnCariOSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataOSServer: TfrmDataOSServer;
  procedure ShowDataOSServer;
  function ShowCariDataOSServer(kw, flt: string): TDataOSServer;
  function GetDataOSServer(id: Cardinal): TDataOSServer;

implementation

uses ArDBModule, ArFunctions, ArComponents, MenuUtamaUnit, DataForm, BaseForm, StrUtils, TypeUnit, DataPanel, DataServerUnit, DataATS, DataRak, DataListOS;

{$R *.dfm}

procedure ShowDataOSServer;
begin
  if not BolehAkses(mnOSServer) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataOSServer do
     begin
          if not IsFormClassActive ('TfrmDataOSServer', Application) then
          begin
               frmDataOSServer := TfrmDataOSServer.Create(Application);
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;
          Show;
     end;
end;

function ShowCariDataOSServer (kw,flt:string):TDataOSServer;
begin
  Result.id_osserver := null;
     with TfrmDataOSServer.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnOSServer);
          ShowPilih(True);

          qryDaftar.SQL.Text := SQLBase + flt;

          if kw = 'NewData' then
          begin
               edtKeyword.Text := '';
               ShowData (qryDaftar, ptFirst);
               if BolehAkses(mnOSServer, [haTambah]) then _Insert.Execute;
               ActiveControl := edtServer;
          end else
          begin
               edtKeyword.Text := kw;
               ShowData (qryDaftar, ptFirst);
               ActiveControl := edtKeyword;
          end;

          Position := poOwnerFormCenter;
          with qryDaftar, Result  do
          case ShowModal of
          mrOK:begin
                    id_osserver       := FieldByName('id_osserver').Value;
                    id_server         := FieldByName('id_server').AsVariant;
                    id_os             := FieldByName('id_os').AsVariant;
                    ip_os             := FieldByName('ip_os').AsString;
                    hostname          := FieldByName('hostname').AsString;
                    sistem_terpasang  := FieldByName('sistem_terpasang').AsString;
                    user              := FieldByName('user').AsString;
                    password          := FieldByName('password').AsString;
                    servername        := FieldByName('servername').AsString;
                    sn                := FieldByName('sn').AsString;
                    os                := FieldByName('os').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

function GetDataOSServer (id:Cardinal):TDataOSServer;
begin
  Result.id_osserver := null;
     with Query ('SELECT doss.*, dsm.`servername`, ds.`sn`, dos.`os` FROM `dc_osserver` doss '+
                ' LEFT JOIN `dc_server` ds ON ds.`id_server`=doss.`id_server` '+
                ' LEFT JOIN `dc_servermachine` dsm ON dsm.`id_servermachine`=ds.`id_servermachine` '+
                ' LEFT JOIN `dc_os` dos ON dos.`id_os`=doss.`id_os` where doss.id_osserver='+IntToStr(id)), Result do
     try
          First;
          if not eof then
          begin
            id_osserver       := FieldByName('id_osserver').Value;
            id_server         := FieldByName('id_server').AsVariant;
            id_os             := FieldByName('id_os').AsVariant;
            ip_os             := FieldByName('ip_os').AsString;
            hostname          := FieldByName('hostname').AsString;
            sistem_terpasang  := FieldByName('sistem_terpasang').AsString;
            user              := FieldByName('user').AsString;
            password          := FieldByName('password').AsString;
            servername        := FieldByName('servername').AsString;
            sn                := FieldByName('sn').AsString;
            os                := FieldByName('os').AsString;
          end;
     finally
          Close;Free;
     end;
end;

procedure TfrmDataOSServer.dsDaftarStateChange(Sender: TObject);
begin
  inherited;
  if edtServer.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) and
  Showing then edtServer.SetFocus;
end;

procedure TfrmDataOSServer.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._OSServer.ImageIndex);
//  SetReport (PathReport +'DataPasien.fr3', 'Pasien');
  MenuAkses := mnOSServer;

  //     ChangeDateEditor([edtTglLahir]);
//  SetGlyph(btnCariPanel, ibFind);
end;

procedure TfrmDataOSServer.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
  HarusDiisi(edtServer, 'Server', trim(edtServer.Text) = '');
  HarusDiisi(edtOS, 'OS', trim(edtOS.Text) = '');
end;

procedure TfrmDataOSServer.btnCariServerClick(Sender: TObject);
var s : string;
begin
  inherited;
  if not (dsDaftar.State in [dsInsert, dsEdit]) then Exit;

  if Sender=btnCariServer then s := edtServer.Text else s := 'NewData';

  with ShowCariServer (s,'') do
  if ID <> null then
  begin
      qryDaftar.FieldByName('id_server').Value := ID;
      qryDaftar.FieldByName('servername').Value := ServerMachine;
      qryDaftar.FieldByName('sn').Value := SN;
  end;
end;

procedure TfrmDataOSServer.btnCariOSClick(Sender: TObject);
var s : string;
begin
  inherited;
  if not (dsDaftar.State in [dsInsert, dsEdit]) then Exit;

  if Sender=btnCariOS then s := edtOS.Text else s := 'NewData';

  with ShowCariDataListOS (s,'') do
  if id_os <> null then
  begin
      qryDaftar.FieldByName('id_os').Value := id_os;
      qryDaftar.FieldByName('os').Value := os;
  end;
end;

end.
