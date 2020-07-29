unit DataRak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataDtlForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ExtCtrls, ImgList, StdCtrls, Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, ComCtrls, AdvToolBtn, Mask, DBCtrls, Types, TypeTrans,
  ZSqlUpdate, DbUtilsEh;

type
  TDataRak = record
    id_rak    : Variant;
    rak_name  : String;
  end;
  TfrmDataRak = class(TfrmDataDtl)
    lblRak: TLabel;
    edtRak: TDBEdit;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataRak: TfrmDataRak;
  procedure ShowDataRak;
  function ShowCariDataRak(kw, flt: string): TDataRak;
  function GetDataRak(id: Cardinal): TDataRak;

implementation

uses ArDBModule, ArFunctions, ArComponents, MenuUtamaUnit, DataForm, BaseForm, StrUtils, TypeUnit, DataPanel;

{$R *.dfm}

procedure ShowDataRak;
begin
  if not BolehAkses(mnRak) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataRak do
     begin
          if not IsFormClassActive ('TfrmDataRak', Application) then
          begin
               frmDataRak := TfrmDataRak.Create(Application);
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;
          Show;
     end;
end;

function ShowCariDataRak (kw,flt:string):TDataRak;
begin
  Result.id_rak := null;
     with TfrmDataRak.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnRak);
          ShowPilih(True);

          qryDaftar.SQL.Text := SQLBase + flt;

          if kw = 'NewData' then
          begin
               edtKeyword.Text := '';
               ShowData (qryDaftar, ptFirst);
               if BolehAkses(mnRak, [haTambah]) then _Insert.Execute;
               ActiveControl := edtRak;
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
                    id_rak    := FieldByName('id_rak').Value;
                    rak_name  := FieldByName('rak_name').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

function GetDataRak (id:Cardinal):TDataRak;
begin
  Result.id_rak := null;
     with Query ('SELECT dr.* FROM dc_rak dr '+
          ' where dr.id_rak='+IntToStr(id)), Result do
     try
          First;
          if not eof then
          begin
            id_rak    := FieldByName('id_rak').Value;
            rak_name  := FieldByName('rak_name').AsString;
          end;
     finally
          Close;Free;
     end;
end;

procedure TfrmDataRak.dsDaftarStateChange(Sender: TObject);
begin
  inherited;
  if edtRak.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) and
  Showing then edtRak.SetFocus;
end;

procedure TfrmDataRak.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._Rak.ImageIndex);
//  SetReport (PathReport +'DataPasien.fr3', 'Pasien');
  MenuAkses := mnRak;
  SQLFilterMarker := '1=1 AND';

  //     ChangeDateEditor([edtTglLahir]);
//  SetGlyph(btnCariPanel, ibFind);
end;

procedure TfrmDataRak.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
  HarusDiisi(edtRak, 'Rak', trim(edtRak.Text) = '');
end;

end.
