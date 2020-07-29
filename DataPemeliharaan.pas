unit DataPemeliharaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataDtlForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ExtCtrls, ImgList, StdCtrls, Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, ComCtrls, AdvToolBtn, Mask, DBCtrls, Types, TypeTrans,
  ZSqlUpdate;

type
  TDataPemeliharaan = record
    id_pemeliharaan : Variant;
    id_server       : Variant;
    id_ats          : Variant;
    tahun           : Word;
    servername      : string;
    sn              : String;
    ats_name        : String;
  end;
  TfrmDataPemeliharaan = class(TfrmDataDtl)
    udtDaftar: TZUpdateSQL;
    btnCariServer: TAdvToolButton;
    lblTahun: TLabel;
    edtTahun: TDBEdit;
    lblServer: TLabel;
    edtServer: TDBEdit;
    lblATS: TLabel;
    edtATS: TDBEdit;
    btnCariATS: TAdvToolButton;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
    procedure btnCariServerClick(Sender: TObject);
    procedure btnCariATSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataPemeliharaan: TfrmDataPemeliharaan;
  procedure ShowDataPemeliharaan;
  function ShowCariDataPemeliharaan(kw, flt: string): TDataPemeliharaan;
  function GetDataPemeliharaan(id: Cardinal): TDataPemeliharaan;

implementation

uses ArDBModule, ArFunctions, ArComponents, MenuUtamaUnit, DataForm, BaseForm, StrUtils, TypeUnit, DataPanel, DataServerUnit, DataATS;

{$R *.dfm}

procedure ShowDataPemeliharaan;
begin
  if not BolehAkses(mnPemeliharaan) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataPemeliharaan do
     begin
          if not IsFormClassActive ('TfrmDataPemeliharaan', Application) then
          begin
               frmDataPemeliharaan := TfrmDataPemeliharaan.Create(Application);
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;
          Show;
     end;
end;

function ShowCariDataPemeliharaan (kw,flt:string):TDataPemeliharaan;
begin
  Result.id_Pemeliharaan := null;
     with TfrmDataPemeliharaan.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnPemeliharaan);
          ShowPilih(True);

          qryDaftar.SQL.Text := SQLBase + flt;

          if kw = 'NewData' then
          begin
               edtKeyword.Text := '';
               ShowData (qryDaftar, ptFirst);
               if BolehAkses(mnPemeliharaan, [haTambah]) then _Insert.Execute;
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
                    id_pemeliharaan := FieldByName('id_pemeliharaan').Value;
                    id_server       := FieldByName('id_server').AsVariant;
                    id_ats          := FieldByName('id_ats').AsVariant;
                    tahun           := FieldByName('tahun').AsInteger;
                    servername      := FieldByName('servername').AsString;
                    sn              := FieldByName('sn').AsString;
                    ats_name        := FieldByName('ats_name').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

function GetDataPemeliharaan (id:Cardinal):TDataPemeliharaan;
begin
  Result.id_Pemeliharaan := null;
     with Query ('SELECT dp.*,dsm.`servername`, ds.`sn`,dats.`ats_name` FROM `dc_pemeliharaan` dp '+
                ' LEFT JOIN `dc_server` ds ON ds.`id_pemeliharaan`=dp.`id_pemeliharaan` '+
                ' LEFT JOIN `dc_servermachine` dsm ON dsm.`id_servermachine`=ds.`id_servermachine` '+
                ' LEFT JOIN `dc_ats` dats ON dats.`id_ats`=dp.`id_ats` where dp.id_pemeliharaan='+IntToStr(id)), Result do
     try
          First;
          if not eof then
          begin
            id_pemeliharaan := FieldByName('id_pemeliharaan').Value;
            id_server       := FieldByName('id_server').AsVariant;
            id_ats          := FieldByName('id_ats').AsVariant;
            tahun           := FieldByName('tahun').AsInteger;
            servername      := FieldByName('servername').AsString;
            sn              := FieldByName('sn').AsString;
            ats_name        := FieldByName('ats_name').AsString;
          end;
     finally
          Close;Free;
     end;
end;

procedure TfrmDataPemeliharaan.dsDaftarStateChange(Sender: TObject);
begin
  inherited;
  if edtServer.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) and
  Showing then edtServer.SetFocus;
end;

procedure TfrmDataPemeliharaan.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._Pemeliharaan.ImageIndex);
//  SetReport (PathReport +'DataPasien.fr3', 'Pasien');
  MenuAkses := mnPemeliharaan;

  //     ChangeDateEditor([edtTglLahir]);
//  SetGlyph(btnCariPanel, ibFind);
end;

procedure TfrmDataPemeliharaan.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
  HarusDiisi(edtServer, 'Server', trim(edtServer.Text) = '');
  HarusDiisi(edtATS, 'ATS', trim(edtATS.Text) = '');
end;

procedure TfrmDataPemeliharaan.btnCariServerClick(Sender: TObject);
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

procedure TfrmDataPemeliharaan.btnCariATSClick(Sender: TObject);
var s : string;
begin
  inherited;
  if not (dsDaftar.State in [dsInsert, dsEdit]) then Exit;

  if Sender=btnCariATS then s := edtATS.Text else s := 'NewData';

  with ShowCariDataATS (s,'') do
  if id_ats <> null then
  begin
      qryDaftar.FieldByName('id_ats').Value := id_ats;
      qryDaftar.FieldByName('ats_name').Value := ats_name;
  end;
end;

end.
