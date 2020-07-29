unit DataEOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataDtlForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ExtCtrls, ImgList, StdCtrls, Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, ComCtrls, AdvToolBtn, Mask, DBCtrls, Types, TypeTrans,
  ZSqlUpdate;

type
  TDataEOS = record
    id_EOS : Variant;
    id_ats : Variant;
    nama   : String;
    no_hp  : String;
    email  : string;
    ats_name : string;
  end;
  TfrmDataEOS = class(TfrmDataDtl)
    udtDaftar: TZUpdateSQL;
    btnCariATS: TAdvToolButton;
    lblNama: TLabel;
    edtNama: TDBEdit;
    lblNoHP: TLabel;
    edtNoHP: TDBEdit;
    lblATS: TLabel;
    edtATS: TDBEdit;
    lblEmail: TLabel;
    edtEmail: TDBEdit;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
    procedure btnCariATSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataEOS: TfrmDataEOS;
  procedure ShowDataEOS;
  function ShowCariDataEOS(kw, flt: string): TDataEOS;
  function GetDataEOS(id: Cardinal): TDataEOS;

implementation

uses ArDBModule, ArFunctions, ArComponents, MenuUtamaUnit, DataForm, BaseForm, StrUtils, TypeUnit, DataATS;

{$R *.dfm}

procedure ShowDataEOS;
begin
  if not BolehAkses(mnEOS) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataEOS do
     begin
          if not IsFormClassActive ('TfrmDataEOS', Application) then
          begin
               frmDataEOS := TfrmDataEOS.Create(Application);
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;
          Show;
     end;
end;

function ShowCariDataEOS (kw,flt:string):TDataEOS;
begin
  Result.id_EOS := null;
     with TfrmDataEOS.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnEOS);
          ShowPilih(True);

          qryDaftar.SQL.Text := SQLBase + flt;

          if kw = 'NewData' then
          begin
               edtKeyword.Text := '';
               ShowData (qryDaftar, ptFirst);
               if BolehAkses(mnEOS, [haTambah]) then _Insert.Execute;
               ActiveControl := edtNama;
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
                    id_EOS   := FieldByName('id_eos').Value;
                    id_ats   := FieldByName('id_ats').Value;
                    nama     := FieldByName('nama').AsString;
                    no_hp    := FieldByName('no_hp').AsString;
                    email    := FieldByName('email').AsString;
                    ats_name := FieldByName('ats_name').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

function GetDataEOS (id:Cardinal):TDataEOS;
begin
  Result.id_EOS := null;
     with Query ('SELECT de.*,da.ats_name FROM dc_eos de '+
                ' LEFT JOIN dc_ats da ON da.id_ats=de.id_ats '+
                ' where de.id_eos='+IntToStr(id)), Result do
     try
          First;
          if not eof then
          begin
            id_EOS   := FieldByName('id_eos').Value;
            id_ats   := FieldByName('id_ats').Value;
            nama     := FieldByName('nama').AsString;
            no_hp    := FieldByName('no_hp').AsString;
            email    := FieldByName('email').AsString;
            ats_name := FieldByName('ats_name').AsString;
          end;
     finally
          Close;Free;
     end;
end;

procedure TfrmDataEOS.dsDaftarStateChange(Sender: TObject);
begin
  inherited;
  if edtNama.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) and
  Showing then edtNama.SetFocus;
end;

procedure TfrmDataEOS.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._EOS.ImageIndex);
//  SetReport (PathReport +'DataPasien.fr3', 'Pasien');
  MenuAkses := mnEOS;

  //     ChangeDateEditor([edtTglLahir]);
//  SetGlyph(btnCariPanel, ibFind);
end;

procedure TfrmDataEOS.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
  HarusDiisi(edtNama, 'Nama EoS', trim(edtNama.Text) = '');
  HarusDiisi(edtNoHP, 'No HP', trim(edtNoHP.Text) = '');
end;

procedure TfrmDataEOS.btnCariATSClick(Sender: TObject);
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
