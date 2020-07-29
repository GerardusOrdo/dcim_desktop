unit DataLogUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataTransForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ZSqlUpdate, ActnList, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ExtCtrls, ImgList, ComCtrls, StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, AdvToolBtn, System.Actions, System.ImageList;

type
  TJenisPindah = (Masuk, Keluar, Pindah, Lainnya);
  TDataLogUser = record
     id_log : Variant;
     id_user : Variant;
     times : TDateTime;
     activity : String;
     targetmenu : String;
     namauser : String;
  end;
  TfrmDataLogUser = class(TfrmDataTrans)
    _ServerMasuk: TAction;
    _PindahServer: TAction;
    _ServerKeluar: TAction;
    procedure FormCreate(Sender: TObject);
    procedure _FilterExecute(Sender: TObject);
    procedure dbgDaftarDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataLogUser: TfrmDataLogUser;
  procedure ShowDataLogUser;
  function ShowCariDataLogUser(kw: string): TDataLogUser;
  
implementation

uses ArDBModule, BaseForm, MenuUtamaUnit, ArComponents,
  ArFunctions, TypeUnit, DataForm, ZDbcIntfs, TransServerKeluarUnit, TransServerMasukUnit, TransPindahServerUnit, ArManager;

{$R *.dfm}

procedure ShowDataLogUser;
begin
  if not BolehAkses(mnDataLogUser) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataLogUser do
     begin
          if not IsFormClassActive ('TfrmDataLogUser', Application) then
               frmDataLogUser := TfrmDataLogUser.Create(Application);
          FormStyle := fsMDIChild;
          WindowState := wsMaximized;
                                  
          pnlOption.Visible := True;
//          pnlSort.Collapsed := True;

          _Filter.Execute;

          Show;
     end;
end;

function ShowCariDataLogUser(kw:string):TDataLogUser;
begin
  Result.id_log := null;
     with TfrmDataLogUser.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnDataLogUser);
          pnlOptButton.Visible := False;
          
          ShowPilih(True);
          pnlBottom.Align:=alTop;
          pnlBottom.Visible:=True;
     
          if kw = '' then
          begin
               edtKeyword.Text := kw;
               ShowData(qryDaftar, ptFirst);
//               ShowData(qryDtl, ptFirst);
//               ShowData(qryDtlPenukaran, ptFirst);
               ActiveControl := edtKeyword;
          end;

          Position := poMainFormCenter;
          with qryDaftar, Result  do
          case ShowModal of
          mrOK : 
               begin
                   id_log     := FieldByName('id_log').Value;
                   id_user    := FieldByName('id_user').Value;
                   times      := FieldByName('time').AsDateTime;
                   activity   := FieldByName('activity').AsString;
                   targetmenu := FieldByName('targetmenu').AsString;
                   namauser   := FieldByName('nama').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

procedure TfrmDataLogUser.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._DataLogUser.ImageIndex);
  MenuAkses := mnDataLogUser;

  pnlOptButton.Visible := False;

//  _Lihat.Visible := False;
//  _Edit.Visible := False;
//  _Delete.Visible := False;

//  SetGlyph(btnFilterLap, ibFilter);
end;

procedure TfrmDataLogUser._FilterExecute(Sender: TObject);
begin
  inherited;
  SQLFilter := ' where date(lu.time) between '+fDateStr(dtp1.date)+
                  ' and '+fDateStr(dtp2.date)+
                  ' order by lu.time asc';

  qryDaftar.Close;
  qryDaftar.SQL.Text := SQLBase + SQLFilter;
  ShowData(qryDaftar, ptNone);
end;

procedure TfrmDataLogUser.dbgDaftarDblClick(Sender: TObject);
begin
  //inherited;

end;

end.
