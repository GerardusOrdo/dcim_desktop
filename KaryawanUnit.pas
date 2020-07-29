unit KaryawanUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, DataDtlForm, ZSqlUpdate, StdCtrls, DBCtrls, Mask,
  ExtCtrls, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ImgList, Buttons, Grids, DBGrids, 
  ComCtrls, AdvMetroButton, AdvToolBtn, AdvEdit, DBAdvEd, AdvObj, BaseGrid,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, EhLibVCL;

type    
  TDataKaryawan = record
     ID, IDJabatan : Variant;
     NIK, Nama, Alamat, TempatLahir, Jabatan,
     NoKTP : string;
  end;
  TfrmDataKaryawan = class(TfrmDataDtl)
    Label1: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl21: TLabel;
    edtNama: TDBEdit;
    edtKode: TDBEdit;
    mmoAlamat: TDBMemo;
    edtTptLahir: TDBEdit;
    edtTglLahir: TDBEdit;
    edtNoTelp: TDBEdit;
    cbxJnsKelamin: TDBComboBox;
    cbxGolDarah: TDBComboBox;
    lblNoKtp: TLabel;
    edtNoKTP: TDBEdit;
    udtDaftar: TZUpdateSQL;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
    procedure FormConstrainedResize(Sender: TObject; var MinWidth,
      MinHeight, MaxWidth, MaxHeight: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var frmDataKaryawan : TfrmDataKaryawan;

procedure ShowDataKaryawan;     
function ShowCariKaryawan (kw:string=''):TDataKaryawan;   
function GetDataKaryawan (id:Cardinal):TDataKaryawan;

implementation

uses ArDBModule, BaseForm, MenuUtamaUnit, ArComponents,
  ArFunctions, TypeUnit, DataForm;

{$R *.dfm}

procedure ShowDataKaryawan;
begin
     if not BolehAkses(mnKaryawan) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataKaryawan do
     begin
          if not IsFormClassActive ('TfrmDataKaryawan', Application) then
          begin
               frmDataKaryawan := TfrmDataKaryawan.Create(Application);
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;

          Show;
     end;
end;   

function ShowCariKaryawan (kw:string=''):TDataKaryawan;
begin
     Result.ID := null;
     with TfrmDataKaryawan.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnKaryawan);
          ShowPilih(True);

          if kw = 'NewData' then
          begin
               edtKeyword.Text := '';
               ShowData (qryDaftar, ptFirst);
               if BolehAkses(mnKaryawan, [haTambah]) then qryDaftar.Insert;
               ActiveControl := edtKode;
          end else
          begin
               edtKeyword.Text := kw;     
               ShowData (qryDaftar, ptFirst);
               ActiveControl := edtKeyword;
          end;
          
          Position := poMainFormCenter;
          with qryDaftar, Result  do
          case ShowModal of
          mrOK :
               begin
                    ID          := FieldValues['idkaryawan'];
                    Nik         := FieldByName('nik').AsString;
                    Nama        := FieldByName('nama').AsString;
                    Alamat      := FieldByName('alamat').AsString;
                    TempatLahir := FieldByName('tptlahir').AsString;
                    NoKTP       := FieldByName('noktp').AsString;
                    Jabatan     := FieldByName('jabatan').AsString;
                    IDJabatan   := FieldByName('idjabatan').Value;
               end;
          end;
     finally
          Free;
     end;
end;       

function GetDataKaryawan (id:Cardinal):TDataKaryawan;
begin
     Result.ID := null;
     with Query ('select k.*, j.nama jabatan'+
              ' from karyawan k'+
              ' left join jabatan j on j.id=k.idjabatan'+
              ' where k.idkaryawan='+IntToStr(id)), Result do
     try
          First;
          if not eof then
          begin
               ID     := FieldValues['idkaryawan'];           
               Nik         := FieldByName('nik').AsString;
               Nama        := FieldByName('nama').AsString;
               Alamat      := FieldByName('alamat').AsString;
               TempatLahir := FieldByName('tptlahir').AsString;
               NoKTP       := FieldByName('noktp').AsString;     
               Jabatan     := FieldByName('jabatan').AsString;
               IDJabatan   := FieldByName('idjabatan').Value;
          end;
     finally
          Close;
          Free;
     end;
end;

procedure TfrmDataKaryawan.dsDaftarStateChange(Sender: TObject);
begin                                                                                                 
  inherited;
     if edtKode.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) and Showing then edtKode.SetFocus;
end;

procedure TfrmDataKaryawan.FormCreate(Sender: TObject);
begin
  inherited;
     SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._Karyawan.ImageIndex);
     MenuAkses := mnKaryawan;
     SetReport (PathReport+'DataKaryawan.fr3', 'Karyawan');

     ChangeDateEditor([edtTglLahir]);
end;

procedure TfrmDataKaryawan.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
     HarusDiisi(edtKode, 'NIP', trim(edtKode.Text) = '');
     HarusDiisi(edtNama, 'Nama pegawai', trim(edtNama.Text) = '');
end;

procedure TfrmDataKaryawan.FormConstrainedResize(Sender: TObject;
  var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
     MinHeight := 500;
     MinWidth := 800;
end;

end.
