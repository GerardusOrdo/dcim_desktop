unit DataTipeServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataDtlForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ExtCtrls, ImgList, StdCtrls, Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, ComCtrls, AdvToolBtn, Mask, DBCtrls, Types, TypeTrans,
  ZSqlUpdate, System.Actions, System.ImageList;

type
  TDataTipeServer = record
    id_servermachine : Variant;
    servername : String;
    u_count : Byte;
    jenis_factor : string;
    processor : String;
    memory : String;
    storage : String;
    power_supply : String;
  end;
  TfrmDataTipeServer = class(TfrmDataDtl)
    lbl2: TLabel;
    edtservername: TDBEdit;
    lbl3: TLabel;
    edtu_count: TDBEdit;
    lbl4: TLabel;
    edtprocessor: TDBEdit;
    lbl5: TLabel;
    edtmemory: TDBEdit;
    lbl6: TLabel;
    edtstorage: TDBEdit;
    lbl7: TLabel;
    edtpower_supply: TDBEdit;
    lblMerkServer: TLabel;
    edtMerkServer: TDBEdit;
    btnCariMerkServer: TAdvToolButton;
    udtDaftar: TZUpdateSQL;
    lblJenisPerangkat: TLabel;
    btnCariJenisPerangkat: TAdvToolButton;
    edtJenisPerangkat: TDBEdit;
    cbbJenisFactor: TDBComboBox;
    lblJenisFactor: TLabel;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
    procedure btnCariMerkServerClick(Sender: TObject);
    procedure btnCariJenisPerangkatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataTipeServer: TfrmDataTipeServer;
  procedure ShowDataTipeServer;
  function ShowCariDataTipeServer (kw,flt:string):TDataTipeServer;
  function GetDataTipeServer (id:Cardinal):TDataTipeServer;

implementation

uses ArDBModule, ArFunctions, ArComponents, MenuUtamaUnit, DataForm, BaseForm, StrUtils, TypeUnit, DataMerk, DataJenisPerangkat;

{$R *.dfm}

procedure ShowDataTipeServer;
begin
  if not BolehAkses(mnTipeServer) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataTipeServer do
     begin
          if not IsFormClassActive ('TfrmDataTipeServer', Application) then
          begin
               frmDataTipeServer := TfrmDataTipeServer.Create(Application);
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;
          Show;
     end;
end;

function ShowCariDataTipeServer (kw,flt:string):TDataTipeServer;
begin
  Result.id_servermachine := null;
     with TfrmDataTipeServer.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnTipeServer);
          ShowPilih(True);

          qryDaftar.SQL.Text := SQLBase + flt;

          if kw = 'NewData' then
          begin
               edtKeyword.Text := '';
               ShowData (qryDaftar, ptFirst);
               if BolehAkses(mnTipeServer, [haTambah]) then _Insert.Execute;
               ActiveControl := edtservername;
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
                    id_servermachine  := FieldByName('id_servermachine').Value;
                    servername        := FieldByName('servername').AsString;
                    u_count           := FieldByName('u_count').AsInteger;
                    jenis_factor      := FieldByName('jenis_factor').AsString;
                    processor         := FieldByName('processor').AsString;
                    memory            := FieldByName('memory').AsString;
                    storage           := FieldByName('storage').AsString;
                    power_supply      := FieldByName('power_supply').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

function GetDataTipeServer (id:Cardinal):TDataTipeServer;
begin
  Result.id_servermachine := null;
     with Query ('SELECT dsm.* FROM dc_servermachine dsm where dsm.id_servermachine='+IntToStr(id)), Result do
     try
          First;
          if not eof then
          begin                                                       
            id_servermachine  := FieldByName('id_servermachine').Value;
            servername        := FieldByName('servername').AsString;
            u_count           := FieldByName('u_count').AsInteger;
            jenis_factor      := FieldByName('jenis_factor').AsString;
            processor         := FieldByName('processor').AsString;
            memory            := FieldByName('memory').AsString;
            storage           := FieldByName('storage').AsString;
            power_supply      := FieldByName('power_supply').AsString;
          end;
     finally
          Close;Free;
     end;
end;

procedure TfrmDataTipeServer.dsDaftarStateChange(Sender: TObject);
begin
  inherited;
  if edtservername.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) and
  Showing then edtservername.SetFocus;
end;

procedure TfrmDataTipeServer.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._TipeServer.ImageIndex);
//  SetReport (PathReport +'DataPasien.fr3', 'Pasien');
  MenuAkses := mnTipeServer;

  //     ChangeDateEditor([edtTglLahir]);
//  SetGlyph(btnCariKota, ibFind);
end;

procedure TfrmDataTipeServer.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
  HarusDiisi(edtservername, 'Tipe Perangkat', trim(edtservername.Text) = '');
  HarusDiisi(edtu_count, 'Jumlah U', trim(edtservername.Text) = '');
end;

procedure TfrmDataTipeServer.btnCariMerkServerClick(Sender: TObject);
var s : string;
begin
  inherited;
  if not (dsDaftar.State in [dsInsert, dsEdit]) then Exit;

  if Sender=btnCariMerkServer then s := edtMerkServer.Text else s := 'NewData';

  with ShowCariDataMerk (s,'') do
  if id_merk <> null then
  begin
      qryDaftar.FieldByName('id_merkserver').Value := id_merk;
      qryDaftar.FieldByName('merkserver').Value := merkserver;
  end;
end;

procedure TfrmDataTipeServer.btnCariJenisPerangkatClick(Sender: TObject);
var s : string;
begin
  inherited;
  if not (dsDaftar.State in [dsInsert, dsEdit]) then Exit;

  if Sender=btnCariJenisPerangkat then s := edtJenisPerangkat.Text else s := 'NewData';

  with ShowCariDataJenisPerangkat (s,'') do
  if id_jenisperangkat <> null then
  begin
      qryDaftar.FieldByName('id_jenisperangkat').Value := id_jenisperangkat;
      qryDaftar.FieldByName('jenisperangkat').Value := jenisperangkat;
  end;
end;

end.
