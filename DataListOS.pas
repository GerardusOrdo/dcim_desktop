unit DataListOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataDtlForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ExtCtrls, ImgList, StdCtrls, Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, ComCtrls, AdvToolBtn, Mask, DBCtrls, Types, TypeTrans;

type
  TDataListOS = record
    id_os : Variant;
    os : String;
  end;
  TfrmDataListOS = class(TfrmDataDtl)
    lblOS: TLabel;
    edtOS: TDBEdit;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataListOS: TfrmDataListOS;
  procedure ShowDataListOS;
  function ShowCariDataListOS (kw,flt:string):TDataListOS;
  function GetDataListOS(id: Cardinal): TDataListOS;

implementation

uses ArDBModule, ArFunctions, ArComponents, MenuUtamaUnit, DataForm, BaseForm, StrUtils, TypeUnit;

{$R *.dfm}

procedure ShowDataListOS;
begin
  if not BolehAkses(mnListOS) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataListOS do
     begin
          if not IsFormClassActive ('TfrmDataListOS', Application) then
          begin
               frmDataListOS := TfrmDataListOS.Create(Application);
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;
          Show;
     end;
end;

function ShowCariDataListOS (kw,flt:string):TDataListOS;
begin
  Result.id_os := null;
     with TfrmDataListOS.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnListOS);
          ShowPilih(True);

          qryDaftar.SQL.Text := SQLBase + flt;

          if kw = 'NewData' then
          begin
               edtKeyword.Text := '';
               ShowData (qryDaftar, ptFirst);
               if BolehAkses(mnListOS, [haTambah]) then _Insert.Execute;
               ActiveControl := edtOS;
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
                    id_os  := FieldByName('id_os').Value;
                    os     := FieldByName('os').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

function GetDataListOS (id:Cardinal):TDataListOS;
begin
  Result.id_os := null;
     with Query ('SELECT dos.* FROM dc_os dos where dos.id_os='+IntToStr(id)), Result do
     try
          First;
          if not eof then
          begin                                                       
            id_os  := FieldByName('id_os').Value;
            os     := FieldByName('os').AsString;
          end;
     finally
          Close;Free;
     end;
end;

procedure TfrmDataListOS.dsDaftarStateChange(Sender: TObject);
begin
  inherited;
  if edtOS.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) and
  Showing then edtOS.SetFocus;
end;

procedure TfrmDataListOS.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._ListOS.ImageIndex);
//  SetReport (PathReport +'DataPasien.fr3', 'Pasien');
  MenuAkses := mnListOS;

  //     ChangeDateEditor([edtTglLahir]);
//  SetGlyph(btnCariKota, ibFind);
end;

procedure TfrmDataListOS.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
  HarusDiisi(edtOS, 'OS', trim(edtOS.Text) = '');
end;

end.
