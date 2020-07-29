unit DataJenisPerangkat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataDtlForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ExtCtrls, ImgList, StdCtrls, Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, ComCtrls, AdvToolBtn, Mask, DBCtrls, Types, TypeTrans,
  ZSqlUpdate, System.Actions, System.ImageList;

type
  TDataJenisPerangkat = record
    id_jenisperangkat : Variant;
    jenisperangkat    : String;
  end;
  TfrmDataJenisPerangkat = class(TfrmDataDtl)
    lblJenisPerangkat: TLabel;
    edtJenisPerangkat: TDBEdit;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataJenisPerangkat: TfrmDataJenisPerangkat;
  procedure ShowDataJenisPerangkat;
  function ShowCariDataJenisPerangkat(kw, flt: string): TDataJenisPerangkat;
  function GetDataJenisPerangkat(id: Cardinal): TDataJenisPerangkat;

implementation

uses ArDBModule, ArFunctions, ArComponents, MenuUtamaUnit, DataForm, BaseForm, StrUtils, TypeUnit, DataPanel;

{$R *.dfm}

procedure ShowDataJenisPerangkat;
begin
  if not BolehAkses(mnJenisPerangkat) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataJenisPerangkat do
     begin
          if not IsFormClassActive ('TfrmDataJenisPerangkat', Application) then
          begin
               frmDataJenisPerangkat := TfrmDataJenisPerangkat.Create(Application);
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;
          Show;
     end;
end;

function ShowCariDataJenisPerangkat (kw,flt:string):TDataJenisPerangkat;
begin
  Result.id_JenisPerangkat := null;
     with TfrmDataJenisPerangkat.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnJenisPerangkat);
          ShowPilih(True);

          qryDaftar.SQL.Text := SQLBase + flt;

          if kw = 'NewData' then
          begin
               edtKeyword.Text := '';
               ShowData (qryDaftar, ptFirst);
               if BolehAkses(mnJenisPerangkat, [haTambah]) then _Insert.Execute;
               ActiveControl := edtJenisPerangkat;
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
                    id_jenisperangkat  := FieldByName('id_jenisperangkat').Value;
                    jenisperangkat     := FieldByName('jenisperangkat').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

function GetDataJenisPerangkat (id:Cardinal):TDataJenisPerangkat;
begin
  Result.id_JenisPerangkat := null;
     with Query ('SELECT dtp.* FROM dc_jenisperangkat dtp '+
          ' where dtp.id_jenisperangkat='+IntToStr(id)), Result do
     try
          First;
          if not eof then
          begin
            id_jenisperangkat  := FieldByName('id_jenisperangkat').Value;
            jenisperangkat     := FieldByName('jenisperangkat').AsString;
          end;
     finally
          Close;Free;
     end;
end;

procedure TfrmDataJenisPerangkat.dsDaftarStateChange(Sender: TObject);
begin
  inherited;
  if edtJenisPerangkat.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) and
  Showing then edtJenisPerangkat.SetFocus;
end;

procedure TfrmDataJenisPerangkat.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._JenisPerangkat.ImageIndex);
//  SetReport (PathReport +'DataPasien.fr3', 'Pasien');
  MenuAkses := mnJenisPerangkat;

  //     ChangeDateEditor([edtTglLahir]);
//  SetGlyph(btnCariPanel, ibFind);
end;

procedure TfrmDataJenisPerangkat.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
  HarusDiisi(edtJenisPerangkat, 'JenisPerangkat', trim(edtJenisPerangkat.Text) = '');
end;

end.
