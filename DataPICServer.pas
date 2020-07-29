unit DataPICServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataDtlForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ExtCtrls, ImgList, StdCtrls, Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, ComCtrls, AdvToolBtn, Mask, DBCtrls, Types, TypeTrans;

type
  TDataPICServer = record
    id_picserver : Variant;
    namapic : String;
    nohp : String;
    telp : String;
  end;
  TfrmDataPICServer = class(TfrmDataDtl)
    lblNamaPIC: TLabel;
    edtNamaPIC: TDBEdit;
    lblNoHP: TLabel;
    edtNoHP: TDBEdit;
    lblTelp: TLabel;
    edtTelp: TDBEdit;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataPICServer: TfrmDataPICServer;
  procedure ShowDataPICServer;
  function ShowCariDataPICServer (kw,flt:string):TDataPICServer;
  function GetDataPICServer(id: Cardinal): TDataPICServer;

implementation

uses ArDBModule, ArFunctions, ArComponents, MenuUtamaUnit, DataForm, BaseForm, StrUtils, TypeUnit;

{$R *.dfm}

procedure ShowDataPICServer;
begin
  if not BolehAkses(mnPICServer) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataPICServer do
     begin
          if not IsFormClassActive ('TfrmDataPICServer', Application) then
          begin
               frmDataPICServer := TfrmDataPICServer.Create(Application);
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;
          Show;
     end;
end;

function ShowCariDataPICServer (kw,flt:string):TDataPICServer;
begin
  Result.id_picserver := null;
     with TfrmDataPICServer.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnPICServer);
          ShowPilih(True);

          qryDaftar.SQL.Text := SQLBase + flt;

          if kw = 'NewData' then
          begin
               edtKeyword.Text := '';
               ShowData (qryDaftar, ptFirst);
               if BolehAkses(mnPICServer, [haTambah]) then _Insert.Execute;
               ActiveControl := edtNamaPIC;
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
                    id_picserver  := FieldByName('id_picserver').Value;
                    namapic       := FieldByName('namapic').AsString;
                    nohp          := FieldByName('nohp').AsString;
                    telp          := FieldByName('telp').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

function GetDataPICServer (id:Cardinal):TDataPICServer;
begin
  Result.id_picserver := null;
     with Query ('select dps.* from dc_picserver dps where dps.id_picserver='+IntToStr(id)), Result do
     try
          First;
          if not eof then
          begin                                                       
            id_picserver  := FieldByName('id_picserver').Value;
            namapic       := FieldByName('namapic').AsString;
            nohp          := FieldByName('nohp').AsString;
            telp          := FieldByName('telp').AsString;
          end;
     finally
          Close;Free;
     end;
end;

procedure TfrmDataPICServer.dsDaftarStateChange(Sender: TObject);
begin
  inherited;
  if edtNamaPIC.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) and
  Showing then edtNamaPIC.SetFocus;
end;

procedure TfrmDataPICServer.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._PICServer.ImageIndex);
//  SetReport (PathReport +'DataPasien.fr3', 'Pasien');
  MenuAkses := mnPICServer;

  //     ChangeDateEditor([edtTglLahir]);
//  SetGlyph(btnCariKota, ibFind);
end;

procedure TfrmDataPICServer.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
  HarusDiisi(edtNamaPIC, 'Nama PIC', trim(edtNamaPIC.Text) = '');
end;

end.
