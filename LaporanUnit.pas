unit LaporanUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LapForm, Menus, ActnList, ExtCtrls, ImgList, ComCtrls, StdCtrls,
  AdvToolBtn, Types, TypeTrans, StrUtils, Mask,
  DBCtrls, System.Actions, System.ImageList;

type
  NLaporan = (loDataServer, loFormChecklist);
  TfrmLaporan = class(TfrmLap)
    mniFormChecklist: TMenuItem;
    mniDataServer: TMenuItem;
    pnlJudul: TPanel;
    Label1: TLabel;
    cbxLaporan: TComboBox;
    pnlBulan: TPanel;
    lblBulan: TLabel;
    btnBulanIni: TAdvToolButton;
    btnBulanSebelum: TAdvToolButton;
    btnBulanSesudah: TAdvToolButton;
    dtpBulan: TDateTimePicker;
    pnlRak: TPanel;
    btnCariRak: TAdvToolButton;
    edtRak: TEdit;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure _PrepareDatasetExecute(Sender: TObject);
    procedure mniDataServerClick(Sender: TObject);
    procedure _ThisMonthExecute(Sender: TObject);
    procedure btnCariRakClick(Sender: TObject);
    procedure cbxLaporanChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    LapDipilih : NLaporan;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLaporan: TfrmLaporan;
  procedure ShowLaporan;

implementation

uses
  TypeUnit, MenuUtamaUnit, ArFunctions, ArComponents, ArDBModule, BaseForm, DataRak;

{$R *.dfm}

procedure ShowLaporan;
begin
  if not BolehAkses(mnLaporan) then
      PesanError('Anda tidak diperkenankan mengakses menu ini');

  with frmLaporan do
  begin
      if not IsFormClassActive ('TfrmLaporan', Application) then
      begin
           frmLaporan := TfrmLaporan.Create(Application);
           ChangeWindowState := wsMaximized;
           FormStyle := fsMDIChild;
      end;
      Show;
  end;
end;

{ TfrmLaporan }

procedure TfrmLaporan.cbxLaporanChange(Sender: TObject);
begin
  inherited;
  if cbxLaporan.ItemIndex = Ord(loDataServer) then LapDipilih := loDataServer;
  if cbxLaporan.ItemIndex = Ord(loFormChecklist) then LapDipilih := loFormChecklist;

  pnlOptTanggal.Visible := false;
  pnlBulan.Visible := False;
  pnlRak.Visible := False;

  pnlOptTanggal.Visible := (LapDipilih in [loDataServer]);
  pnlBulan.Visible      := (LapDipilih in [loFormChecklist]);
  pnlRak.Visible        := (LapDipilih in [loFormChecklist]);
end;

procedure TfrmLaporan.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._Laporan.ImageIndex);

  btnThisMonth.Click;
  btnBulanIni.Click;
end;

procedure TfrmLaporan.FormShow(Sender: TObject);
begin
  inherited;
  cbxLaporanChange(cbxLaporan);
end;

procedure TfrmLaporan._PrepareDatasetExecute(Sender: TObject);
var qryShowData : string;
begin
  inherited;
     ReportAlias := 'LaporanDCIM';
     case LapDipilih of
     // lap data server
     loDataServer :
          begin
               ReportFile := PathReport+'DataServer.fr3';

               qryShowData := ' SELECT '+
                              '   ds.id_server, '+
                              '   ds.id_servermachine, '+
                              '   ds.id_pemilik, '+
                              '   ds.id_pemeliharaan, '+
                              '   ds.`id_picserver`, '+
                              '   dsm.`servername`, '+
                              '   ds.`sn`, '+
                              '   dr.`id_rak`, '+
                              '   dr.`rak_name`, '+
                              '   dl.`u`, '+
                              '   dsm.`u_count`, '+
                              '   CONCAT(dl.`u`," - ", dl.`u`+dsm.`u_count`-1) posisi_u, '+
                              '   ds.ip_management, '+
                              '   ds.`user`, '+
                              '   ds.`password`, '+
                              '   dp.`pemilik`, '+
                              '   dats.`ats_name`, '+
                              '   dpm.`tahun`, '+
                              '   ds.tgl_endofsupport, '+
                              '   ds.port_nic, '+
                              '   dps.`namapic`, '+
                              '   dms.`merkserver`, '+
                              '   djp.`jenisperangkat`, '+
                              '   ds.`status_colo` '+
                              ' FROM '+
                              '   `dc_server` ds '+
                              '   LEFT JOIN dc_servermachine dsm ON dsm.`id_servermachine`=ds.`id_servermachine` '+
                              '   LEFT JOIN dc_location dl ON dl.`id_server`=ds.`id_server` '+
                              '   LEFT JOIN dc_rak dr ON dr.`id_rak`=dl.`id_rak` '+
                              '   LEFT JOIN dc_pemilik dp ON dp.`id_pemilik`=ds.`id_pemilik` '+
                              '   LEFT JOIN dc_pemeliharaan dpm ON dpm.`id_pemeliharaan`=ds.`id_pemeliharaan` '+
                              '   LEFT JOIN dc_ats dats ON dats.`id_ats`=dpm.`id_ats` '+
                              '   LEFT JOIN dc_picserver dps ON dps.`id_picserver`=ds.`id_picserver` '+
                              '   LEFT JOIN dc_merkserver dms ON dms.`id_merkserver`=dsm.`id_merkserver` '+
                              '   LEFT JOIN dc_jenisperangkat djp ON djp.`id_jenisperangkat`=dsm.`id_jenisperangkat` '+
                              ' WHERE deleted = 0 '+
                              ' ORDER BY dr.`rak_name` ASC, dl.`u` ASC';

               UseQuery(qryShowData);
          end;

     // lap form checklist
     loFormChecklist :
          begin
            HarusDiisi(dtpBulan, 'Rak', GetEditID(edtRak) = null);
//
               ReportFile := PathReport+'FormChecklist.fr3';

               qryShowData:= 'SELECT dr.`rak_name`,CONCAT(dl.`u`,"-",dl.`u`+dsm.`u_count`-1) u, dsm.`servername`, ds.`sn`,  '+
                ' CONCAT(dp.`uniteselon1`,"-",dp.`pemilik`) pemilik FROM (SELECT @rownum:=0) AS t, dc_server ds '+
                ' LEFT JOIN dc_servermachine dsm ON dsm.`id_servermachine`=ds.`id_servermachine` '+
                ' LEFT JOIN dc_location dl ON dl.`id_server`=ds.`id_server` '+
                ' LEFT JOIN dc_rak dr ON dr.`id_rak`=dl.`id_rak` '+
                ' LEFT JOIN dc_pemilik dp ON dp.`id_pemilik`=ds.`id_pemilik`  '+
                ' WHERE dr.`id_rak`= '+GetEditSID(edtRak)+
                ' ORDER BY dr.`rak_name`, dl.`u`, ds.`id_server`';

               UseQuery(qryShowData);

               ParValues(['bulan_cetak'], [dtpBulan.DateTime]);
          end;
     else Peringatan('Laporan belum dipilih', true);
     end;
end;

procedure TfrmLaporan.mniDataServerClick(Sender: TObject);
begin
  inherited;
  if Sender = mniDataServer then LapDipilih := loDataServer;
  if Sender = mniFormChecklist then LapDipilih := loFormChecklist;
  ReportTitle := TMenuItem(Sender).Caption;

//  pnlOptHari.Visible := false;
  pnlOptTanggal.Visible := false;
  pnlBulan.Visible := False;
  pnlRak.Visible := False;
//  pnlSort.Visible := False;

  pnlOptTanggal.Visible      := (LapDipilih in [loDataServer]);
  pnlBulan.Visible      := (LapDipilih in [loFormChecklist]);
  pnlRak.Visible     := (LapDipilih in [loFormChecklist]);
end;

procedure TfrmLaporan._ThisMonthExecute(Sender: TObject);
begin
  inherited;
  if Sender = btnBulanIni then
  begin
      dtpBulan.date := FirstDateThisMonth(date);
  end else
  if Sender = btnBulanSesudah then
  begin
      dtpBulan.date := FirstDateThisMonth(IncMonth(dtpBulan.Date, 1));
  end else
  if Sender = btnBulanSebelum then
  begin
      dtpBulan.date := FirstDateThisMonth(IncMonth(dtpBulan.Date, -1));
  end;
end;

procedure TfrmLaporan.btnCariRakClick(Sender: TObject);
var
  s : String;
begin
  inherited;
  if Sender = btnCariRak then
    s := edtRak.Text
  else
    s := '';

  with ShowCariDataRak(s, '') do
    if id_rak <> null then
    begin
      SetEditValue(edtRak, id_rak, rak_name);
    end;
end;

end.
