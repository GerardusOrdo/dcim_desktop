unit DataLokasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataDtlForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ExtCtrls, ImgList, StdCtrls, Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, ComCtrls, AdvToolBtn, Mask, DBCtrls, Types, TypeTrans,
  ZSqlUpdate;

type
  TDataLokasi = record
    id_location : Variant;
    id_rak      : Variant;
    id_server   : Variant;
    u           : Word;
    states      : string;
    rak_name    : String;
    servername  : String;
    sn          : String;
  end;
  TfrmDataLokasi = class(TfrmDataDtl)
    udtDaftar: TZUpdateSQL;
    btnCariServer: TAdvToolButton;
    btnCariRak: TAdvToolButton;
    lblU: TLabel;
    edtU: TDBEdit;
    lblRak: TLabel;
    edtRak: TDBEdit;
    lblServer: TLabel;
    edtServer: TDBEdit;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
    procedure btnCariServerClick(Sender: TObject);
    procedure btnCariRakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataLokasi: TfrmDataLokasi;
  procedure ShowDataLokasi;
  function ShowCariDataLokasi(kw, flt: string): TDataLokasi;
  function GetDataLokasi(id: Cardinal): TDataLokasi;

implementation

uses ArDBModule, ArFunctions, ArComponents, MenuUtamaUnit, DataForm, BaseForm, StrUtils, TypeUnit, DataPanel, DataServerUnit, DataATS, DataRak;

{$R *.dfm}

procedure ShowDataLokasi;
begin
  if not BolehAkses(mnLokasi) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataLokasi do
     begin
          if not IsFormClassActive ('TfrmDataLokasi', Application) then
          begin
               frmDataLokasi := TfrmDataLokasi.Create(Application);
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;
          Show;
     end;
end;

function ShowCariDataLokasi (kw,flt:string):TDataLokasi;
begin
  Result.id_location := null;
     with TfrmDataLokasi.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnLokasi);
          ShowPilih(True);

          qryDaftar.SQL.Text := SQLBase + flt;

          if kw = 'NewData' then
          begin
               edtKeyword.Text := '';
               ShowData (qryDaftar, ptFirst);
               if BolehAkses(mnLokasi, [haTambah]) then _Insert.Execute;
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
                    id_location := FieldByName('id_location').Value;
                    id_rak      := FieldByName('id_rak').AsVariant;
                    id_server   := FieldByName('id_server').AsVariant;
                    u           := FieldByName('u').AsInteger;
                    states      := FieldByName('states').AsString;
                    rak_name    := FieldByName('rak_name').AsString;
                    servername  := FieldByName('servername').AsString;
                    sn          := FieldByName('sn').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

function GetDataLokasi (id:Cardinal):TDataLokasi;
begin
  Result.id_location := null;
     with Query ('SELECT dl.*, dr.`rak_name`, dsm.`servername`, ds.`sn` FROM `dc_location` dl '+
                ' LEFT JOIN `dc_rak` dr ON dr.`id_rak`=dl.`id_rak` '+
                ' LEFT JOIN `dc_server` ds ON ds.`id_server`=dl.`id_server` '+
                ' LEFT JOIN `dc_servermachine` dsm ON dsm.`id_servermachine`=ds.`id_servermachine` where dl.id_lokasi='+IntToStr(id)), Result do
     try
          First;
          if not eof then
          begin
            id_location := FieldByName('id_location').Value;
            id_rak      := FieldByName('id_rak').AsVariant;
            id_server   := FieldByName('id_server').AsVariant;
            u           := FieldByName('u').AsInteger;
            states      := FieldByName('states').AsString;
            rak_name    := FieldByName('rak_name').AsString;
            servername  := FieldByName('servername').AsString;
            sn          := FieldByName('sn').AsString;
          end;
     finally
          Close;Free;
     end;
end;

procedure TfrmDataLokasi.dsDaftarStateChange(Sender: TObject);
begin
  inherited;
  if edtServer.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) and
  Showing then edtServer.SetFocus;
end;

procedure TfrmDataLokasi.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._Lokasi.ImageIndex);
//  SetReport (PathReport +'DataPasien.fr3', 'Pasien');
  MenuAkses := mnLokasi;

  //     ChangeDateEditor([edtTglLahir]);
//  SetGlyph(btnCariPanel, ibFind);
end;

procedure TfrmDataLokasi.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
  HarusDiisi(edtServer, 'Server', trim(edtServer.Text) = '');
  HarusDiisi(edtRak, 'Rak', trim(edtRak.Text) = '');
end;

procedure TfrmDataLokasi.btnCariServerClick(Sender: TObject);
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

procedure TfrmDataLokasi.btnCariRakClick(Sender: TObject);
var s : string;
begin
  inherited;
  if not (dsDaftar.State in [dsInsert, dsEdit]) then Exit;

  if Sender=btnCariRak then s := edtRak.Text else s := 'NewData';

  with ShowCariDataRak (s,'') do
  if id_rak <> null then
  begin
      qryDaftar.FieldByName('id_rak').Value := id_rak;
      qryDaftar.FieldByName('rak_name').Value := rak_name;
  end;
end;

end.
