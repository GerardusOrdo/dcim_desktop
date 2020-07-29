unit DataMerk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataDtlForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ExtCtrls, ImgList, StdCtrls, Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, ComCtrls, AdvToolBtn, Mask, DBCtrls, Types, TypeTrans,
  ZSqlUpdate;

type
  TDataMerk = record
    id_merk    : Variant;
    merkserver  : String;
  end;
  TfrmDataMerk = class(TfrmDataDtl)
    lblMerk: TLabel;
    edtMerk: TDBEdit;
    udtDaftar: TZUpdateSQL;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataMerk: TfrmDataMerk;
  procedure ShowDataMerk;
  function ShowCariDataMerk(kw, flt: string): TDataMerk;
  function GetDataMerk(id: Cardinal): TDataMerk;

implementation

uses ArDBModule, ArFunctions, ArComponents, MenuUtamaUnit, DataForm, BaseForm, StrUtils, TypeUnit, DataPanel, ArManager;

{$R *.dfm}

procedure ShowDataMerk;
begin
  if not BolehAkses(mnMerk) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataMerk do
     begin
          if not IsFormClassActive ('TfrmDataMerk', Application) then
          begin
               frmDataMerk := TfrmDataMerk.Create(Application);
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;
          Show;
     end;
end;

function ShowCariDataMerk (kw,flt:string):TDataMerk;
begin
  Result.id_merk := null;
     with TfrmDataMerk.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnMerk);
          ShowPilih(True);

          qryDaftar.SQL.Text := SQLBase + flt;

          if kw = 'NewData' then
          begin
               edtKeyword.Text := '';
               ShowData (qryDaftar, ptFirst);
               if BolehAkses(mnMerk, [haTambah]) then _Insert.Execute;
               ActiveControl := edtMerk;
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
                    id_merk    := FieldByName('id_merkserver').Value;
                    merkserver  := FieldByName('merkserver').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

function GetDataMerk (id:Cardinal):TDataMerk;
begin
  Result.id_merk := null;
     with Query ('SELECT dm.* FROM dc_merkserver dm '+
          ' where dm.id_merkserver='+IntToStr(id)), Result do
     try
          First;
          if not eof then
          begin
            id_merk    := FieldByName('id_merkserver').Value;
            merkserver  := FieldByName('merkserver').AsString;
          end;
     finally
          Close;Free;
     end;
end;

procedure TfrmDataMerk.dsDaftarStateChange(Sender: TObject);
begin
  inherited;
  if edtMerk.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) and
  Showing then edtMerk.SetFocus;
end;

procedure TfrmDataMerk.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._Merk.ImageIndex);
//  SetReport (PathReport +'DataPasien.fr3', 'Pasien');
  MenuAkses := mnMerk;

  //     ChangeDateEditor([edtTglLahir]);
//  SetGlyph(btnCariPanel, ibFind);
end;

procedure TfrmDataMerk.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
  HarusDiisi(edtMerk, 'Merk', trim(edtMerk.Text) = '');
end;

end.
