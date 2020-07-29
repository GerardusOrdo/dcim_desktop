unit DataATS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataDtlForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ExtCtrls, ImgList, StdCtrls, Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, ComCtrls, AdvToolBtn, Mask, DBCtrls, Types, TypeTrans;

type
  TDataATS = record
    id_ats : Variant;
    ats_name : String;
  end;
  TfrmDataATS = class(TfrmDataDtl)
    lblATSName: TLabel;
    edtATSName: TDBEdit;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataATS: TfrmDataATS;
  procedure ShowDataATS;
  function ShowCariDataATS (kw,flt:string):TDataATS;
  function GetDataATS(id: Cardinal): TDataATS;

implementation

uses ArDBModule, ArFunctions, ArComponents, MenuUtamaUnit, DataForm, BaseForm, StrUtils, TypeUnit;

{$R *.dfm}

procedure ShowDataATS;
begin
  if not BolehAkses(mnATS) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataATS do
     begin
          if not IsFormClassActive ('TfrmDataATS', Application) then
          begin
               frmDataATS := TfrmDataATS.Create(Application);
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;
          Show;
     end;
end;

function ShowCariDataATS (kw,flt:string):TDataATS;
begin
  Result.id_ats := null;
     with TfrmDataATS.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnATS);
          ShowPilih(True);

          qryDaftar.SQL.Text := SQLBase + flt;

          if kw = 'NewData' then
          begin
               edtKeyword.Text := '';
               ShowData (qryDaftar, ptFirst);
               if BolehAkses(mnATS, [haTambah]) then _Insert.Execute;
               ActiveControl := edtATSName;
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
                    id_ats    := FieldByName('id_ats').Value;
                    ats_name  := FieldByName('ats_name').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

function GetDataATS (id:Cardinal):TDataATS;
begin
  Result.id_ats := null;
     with Query ('SELECT dats.* FROM dc_ats dats where dats.id_ats='+IntToStr(id)), Result do
     try
          First;
          if not eof then
          begin                                                       
            id_ats    := FieldByName('id_ats').Value;
            ats_name  := FieldByName('ats_name').AsString;
          end;
     finally
          Close;Free;
     end;
end;

procedure TfrmDataATS.dsDaftarStateChange(Sender: TObject);
begin
  inherited;
  if edtATSName.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) and
  Showing then edtATSName.SetFocus;
end;

procedure TfrmDataATS.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._ListOS.ImageIndex);
//  SetReport (PathReport +'DataPasien.fr3', 'Pasien');
  MenuAkses := mnATS;

  //     ChangeDateEditor([edtTglLahir]);
//  SetGlyph(btnCariKota, ibFind);
end;

procedure TfrmDataATS.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
  HarusDiisi(edtATSName, 'ATS', trim(edtATSName.Text) = '');
end;

end.
