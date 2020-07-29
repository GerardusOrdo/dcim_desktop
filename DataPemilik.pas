unit DataPemilik;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataDtlForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ExtCtrls, ImgList, StdCtrls, Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, ComCtrls, AdvToolBtn, Mask, DBCtrls, Types, TypeTrans,
  DBCtrlsEh, ZSqlUpdate, DBLookupEh;

type
  TDataPemilik = record
    id_pemilik : Variant;
    pemilik : String;
  end;
  TfrmDataPemilik = class(TfrmDataDtl)
    lblPemilik: TLabel;
    edtPemilik: TDBEdit;
    lblUnitEselon1: TLabel;
    udtDaftar: TZUpdateSQL;
    cbbUnit: TDBComboBox;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
    procedure cbbUnitEselon1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataPemilik: TfrmDataPemilik;
  procedure ShowDataPemilik;
  function ShowCariDataPemilik (kw,flt:string):TDataPemilik;
  function GetDataPemilik(id: Cardinal): TDataPemilik;

implementation

uses ArDBModule, ArFunctions, ArComponents, MenuUtamaUnit, DataForm, BaseForm, StrUtils, TypeUnit;

{$R *.dfm}

procedure ShowDataPemilik;
begin
  if not BolehAkses(mnPemilikServer) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataPemilik do
     begin
          if not IsFormClassActive ('TfrmDataPemilik', Application) then
          begin
               frmDataPemilik := TfrmDataPemilik.Create(Application);
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;
          Show;
     end;
end;

function ShowCariDataPemilik (kw,flt:string):TDataPemilik;
begin
  Result.id_pemilik := null;
     with TfrmDataPemilik.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnPemilikServer);
          ShowPilih(True);

          qryDaftar.SQL.Text := SQLBase + flt;

          if kw = 'NewData' then
          begin
               edtKeyword.Text := '';
               ShowData (qryDaftar, ptFirst);
               if BolehAkses(mnPemilikServer, [haTambah]) then _Insert.Execute;
               ActiveControl := edtPemilik;
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
                    id_pemilik    := FieldByName('id_pemilik').Value;
                    pemilik  := FieldByName('pemilik').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

function GetDataPemilik (id:Cardinal):TDataPemilik;
begin
  Result.id_pemilik := null;
     with Query ('SELECT dp.* FROM `dc_pemilik` dp where dp.id_pemilik='+IntToStr(id)), Result do
     try
          First;
          if not eof then
          begin                                                       
            id_pemilik    := FieldByName('id_pemilik').Value;
            pemilik  := FieldByName('pemilik').AsString;
          end;
     finally
          Close;Free;
     end;
end;

procedure TfrmDataPemilik.dsDaftarStateChange(Sender: TObject);
begin
  inherited;
  if edtPemilik.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) and
  Showing then edtPemilik.SetFocus;
end;

procedure TfrmDataPemilik.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._ListOS.ImageIndex);
//  SetReport (PathReport +'DataPasien.fr3', 'Pasien');
  MenuAkses := mnPemilikServer;

  //     ChangeDateEditor([edtTglLahir]);
//  SetGlyph(btnCariKota, ibFind);
end;

procedure TfrmDataPemilik.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
  HarusDiisi(edtPemilik, 'Pemilik', trim(edtPemilik.Text) = '');
end;

procedure TfrmDataPemilik.cbbUnitEselon1Change(Sender: TObject);
begin
  inherited;
  qryDaftar.FieldByName('uniteselon1').AsString := 'SetJen';
end;

end.
