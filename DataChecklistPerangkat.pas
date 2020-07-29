unit DataChecklistPerangkat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataTransForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ZSqlUpdate, ActnList, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ExtCtrls, ImgList, ComCtrls, StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, AdvToolBtn, System.Actions, System.ImageList;

type
  TJenisPindah = (Masuk, Keluar, Pindah, Lainnya);
  TDataChecklistPerangkat = record
     id_log : Variant;
     id_user : Variant;
     times : TDateTime;
     activity : String;
     targetmenu : String;
     namauser : String;
  end;
  TfrmDataChecklistPerangkat = class(TfrmDataTrans)
    _ServerMasuk: TAction;
    _PindahServer: TAction;
    _ServerKeluar: TAction;
    Panel1: TPanel;
    cbxKondisi: TComboBox;
    Label1: TLabel;
    btnCloseTiket: TAdvToolButton;
    _CloseTiket: TAction;
    procedure FormCreate(Sender: TObject);
    procedure _FilterExecute(Sender: TObject);
    procedure dbgDaftarDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure cbxKondisiChange(Sender: TObject);
    procedure _CloseTiketExecute(Sender: TObject);
    procedure dsDaftarDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    IDChecklist : Variant;
    IDNoTiket : Variant;
  public
    { Public declarations }
  end;

var
  frmDataChecklistPerangkat: TfrmDataChecklistPerangkat;
  procedure ShowDataChecklistPerangkat;
  function ShowCariDataChecklistPerangkat(kw: string): TDataChecklistPerangkat;
  
implementation

uses ArDBModule, BaseForm, MenuUtamaUnit, ArComponents,
  ArFunctions, TypeUnit, DataForm, ZDbcIntfs, TransServerKeluarUnit, TransServerMasukUnit, TransPindahServerUnit, ArManager,
  Style;

{$R *.dfm}

procedure ShowDataChecklistPerangkat;
begin
  if not BolehAkses(mnDataChecklistPerangkat) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataChecklistPerangkat do
     begin
          if not IsFormClassActive ('TfrmDataChecklistPerangkat', Application) then
               frmDataChecklistPerangkat := TfrmDataChecklistPerangkat.Create(Application);
          FormStyle := fsMDIChild;
          WindowState := wsMaximized;
                                  
          pnlOption.Visible := True;
//          pnlSort.Collapsed := True;

          _Filter.Execute;

          Show;
     end;
end;

function ShowCariDataChecklistPerangkat(kw:string):TDataChecklistPerangkat;
begin
  Result.id_log := null;
     with TfrmDataChecklistPerangkat.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnDataChecklistPerangkat);
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

procedure TfrmDataChecklistPerangkat.cbxKondisiChange(Sender: TObject);
begin
  inherited;
  _Filter.Execute;
end;

procedure TfrmDataChecklistPerangkat.dbgDaftarDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  Field: TField;
begin
  inherited;
  Field := Column.Field;

  if Assigned(Field) and SameText(Field.FieldName, 'Kondisi') then
    if qryDaftar.FieldByName('kondisi').AsString = 'Amber' then
    dbgDaftar.Canvas.Brush.Color := GetButtonColor(tsRed, bcHot) else
    dbgDaftar.Canvas.Brush.Color := GetButtonColor(tsGreen, bcHot);

  dbgDaftar.DefaultDrawColumnCell(Rect, 11, Column, State);

end;

procedure TfrmDataChecklistPerangkat.dsDaftarDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  IDChecklist := qryDaftar.FieldByName('id_checklist').AsVariant;
  IDNoTiket := qryDaftar.FieldByName('id_notiket').AsVariant;
end;

procedure TfrmDataChecklistPerangkat.FormCreate(Sender: TObject);
begin
  inherited;
  dtp1.Date := ArDB.ServerTime;
  dtp2.Date := dtp1.Date;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._DataChecklistPerangkat.ImageIndex);
  MenuAkses := mnDataChecklistPerangkat;

  pnlOptButton.Visible := False;
  cbxKondisi.ItemIndex := 2;

//  _Lihat.Visible := False;
//  _Edit.Visible := False;
//  _Delete.Visible := False;

//  SetGlyph(btnFilterLap, ibFilter);
end;

procedure TfrmDataChecklistPerangkat._CloseTiketExecute(Sender: TObject);
var
  Disimpan: Boolean;
  ASQL: TArSQL;
  _ID: string;
  a : Variant;
begin
  inherited;
  if (IDNoTiket = null) then Peringatan('Silakan pilih checklist yang ada no tikenya', True);
  
  if not Konfirmasi('Apakah anda yakin ingin close tiket?') then Abort;

  Disimpan := False;

  try
    Screen.Cursor := crHourGlass;
    ArDB.FDBCon.AutoCommit := False;
    _CloseTiket.Enabled := False;
    ASQL := TArSQL.Create;
    with ASQL do
    try
      if not ArDB.FDBCon.InTransaction then
        ArDB.FDBCon.StartTransaction;

      //update data dc_notiket set status jadi 2(closed)
      ExecQry('update dc_notiket set status = 2 where id_notiket='+VarToStr(IDNoTiket));

      //log_user
      CreateLogData('close tiket', 'Data Checklist Perangkat');

      if ArDB.FDBCon.InTransaction then
        ArDB.FDBCon.Commit;
      Disimpan := True;
      Informasi('Tiket berhasil diclose');
    except
      on e: Exception do
      begin
        if ArDB.FDBCon.InTransaction then
          ArDB.FDBCon.Rollback;
        Modalresult := mrNone;
        DoHandleException(Self, e);
      end;
    end;

  finally
    if Assigned(ASQL) then
      FreeAndNil(ASQL);
    _CloseTiket.Enabled := True;
    ArDB.FDBCon.AutoCommit := True;
    Screen.Cursor := crDefault;
  end;
  _Refresh.Execute;
end;

procedure TfrmDataChecklistPerangkat._FilterExecute(Sender: TObject);
var
  FilterKondisi : string;
//  SortSesi : string;
begin
  inherited;
  case cbxKondisi.ItemIndex of
    0 : FilterKondisi := '';
    1 : FilterKondisi := ' and kondisi = 1 ';
    2 : FilterKondisi := ' and kondisi = 0 ';
  end;

//  SortSesi := ', dch.sesi_checklist desc';

  SQLFilter := ' where date(dch.`waktu`) between '+fDateStr(dtp1.date)+
                  ' and '+fDateStr(dtp2.date)+
                  FilterKondisi +
                  ' order by dch.`waktu` asc ';

  qryDaftar.Close;
  qryDaftar.SQL.Text := SQLBase + SQLFilter;
  ShowData(qryDaftar, ptNone);
end;

end.
