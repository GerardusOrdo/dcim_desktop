unit ImportExcelUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TransaksiForm, ActnList, ImgList, StdCtrls, Buttons, ExtCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, QImport3Wizard, QImport3, QImport3XLS, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls, AdvToolBtn,
  EhLibVCL, System.Actions, System.ImageList;

type
  NPilihanInsert = (NTambahDataBaru = 0, NTambahDataBaruPKGantiData, NGantiSemuaData);
  TfrmImportExcel = class(TfrmTransaksi)
    pnlHeader: TPanel;
    lblCari: TLabel;
    edtPathExcel: TEdit;
    dbgData: TDBGridEh;
    ImportXLSTemp: TQImport3XLS;
    ImportWZDTemp: TQImport3Wizard;
    dlgOpenTemp: TOpenDialog;
    mmo1: TMemo;
    qryDaftar: TZQuery;
    dsDaftar: TDataSource;
    pb1: TProgressBar;
    cbbPilihanInsert: TComboBox;
    btnImport: TAdvToolButton;
    btnCariExcel: TAdvToolButton;
    procedure GetFieldNameFromTable(Table : String);
    procedure GetPrimaryKeyofTable(Table : String);
    procedure IsiMMOMap;
    procedure IsikolomExcel(JumlahKolom : Integer);
    procedure btnCariExcelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure _OnClearFormExecute(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure _OnValidasiInputExecute(Sender: TObject);
    procedure ImportXLSTempImportRecord(Sender: TObject);
    procedure ImportXLSTempBeforeImport(Sender: TObject);
    procedure dbgDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FMapImport : TStrings;
    FieldTable : array of string;
    PrimaryKeyValue : array of String;
    KolomExcel  : array of string;

    function FilterDataKosong(ArrayOfField : array of String) : String;
    function FilterDataDelete(ArrayOfField : array of String) : String;
  public
    { Public declarations }
  end;

const
  TempTable = 'z_import_temp';
  Alphabet : array [0..25] of string = ('A','B','C','D','E','F','G','H','I','J',
    'K','L','M','N','O','P','Q','R','S','T','U','V','V','X','Y','Z');

var
  FileExtension, TableN : String;
  frmImportExcel: TfrmImportExcel;
  procedure ImportExcel(NamaTabel : String);

implementation

uses
  TypeUnit, ArComponents, ArFunctions, MenuUtamaUnit, ArDBModule, Strutils,
  BaseForm;

{$R *.dfm}

procedure ImportExcel(NamaTabel : String);
begin
    CloseFormByClass('TfrmImportExcel', Application, False);

  with TfrmImportExcel.Create(Application) do
  try
    try
      if Assigned(FMapImport) then FMapImport.Free;
      FMapImport := TStringList.Create;

      ImportXLSTemp.DataSet := qryDaftar;
      ExecScript('drop temporary table if exists '+TempTable+';'+
                ' create temporary table if not exists '+TempTable+' like '+NamaTabel+';');
      _OnClearForm.Execute;
      TableN := NamaTabel;
      GetFieldNameFromTable(TableN);
      GetPrimaryKeyofTable(NamaTabel);
      IsikolomExcel(Length(FieldTable));
      dlgOpenTemp.Filter := 'Microsoft Office 2007 XLS|*.xls';
    except
      on e : Exception do
      begin
        Peringatan('Terjadi kesalahan, silakan tutup jendela ini dan buka kembali'+#13#10+
        'Pesan kesalahan : '+E.Message);
        btnClose.Click;
      end;
    end;
    
    ShowModal;
  finally
    if Assigned(FMapImport) then FMapImport.Free;
    Free;
  end;
end;

procedure TfrmImportExcel.btnCariExcelClick(Sender: TObject);
var
     direktoryFile : String;
begin
  inherited;
  try
  if dlgOpenTemp.Execute then
  begin
    direktoryFile := extractfiledir(dlgOpenTemp.FileName) + '\'+ ExtractFileName(dlgOpenTemp.FileName);
    edtPathExcel.Text := direktoryFile;
    ImportXLSTemp.FileName := direktoryFile;
    FileExtension := ExtractFileExt(edtPathExcel.Text);
    btnImport.Enabled := True;
  end
  except
     on e : Exception do
     Peringatan('Terjadi kesalahan, silakan tutup jendela ini dan buka kembali'+#13#10+
     'Pesan kesalahan : '+E.Message);
  end;
end;

procedure TfrmImportExcel.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader(pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._SettingDB.ImageIndex);
  SetGlyph(btnCariExcel, ibFileFind);
  SetGlyph(btnImport, ibLoad);
end;


procedure TfrmImportExcel._OnClearFormExecute(Sender: TObject);
begin
  inherited;
  edtPathExcel.Clear;
  ExecQry('truncate '+TempTable);
  ShowData(qryDaftar, ptNone);
end;

procedure TfrmImportExcel.GetFieldNameFromTable(Table: String);
var i : Word;
begin
    i := 0;
    with ROQry (' desc '+Table) do
    try
      SetLength(FieldTable, RecordCount);
      if Eof then
      begin
        Peringatan('Data tidak ditemukan');
      end else
      begin
        First;
        while not eof do
        begin
            FieldTable[i] := FieldByName('Field').AsString; //read the field value to the array
            Next; //next record
            inc(i);
        end;
      end;
    finally
      Close; Free;
    end;
end;

procedure TfrmImportExcel.btnImportClick(Sender: TObject);
var i : Word;
begin
  inherited;
  try
    HarusDiisi(edtPathExcel, 'Path Excel', edtPathExcel.Text = '');
    pb1.Visible := True;
    pb1.Position:= 0;

    FMapImport.Clear;

    IsiMMOMap;

    ImportXLSTemp.Map := mmo1.Lines;
    ExecQry('truncate '+TempTable);
    ImportXLSTemp.Execute;
  finally
    ShowData(qryDaftar, ptNone);
    btnImport.Enabled := False;
    pb1.Visible := False;
  end;
end;

procedure TfrmImportExcel.btnSimpanClick(Sender: TObject);
var
  Disimpan : Boolean;
  ASQL : TArSQL;
  noBayar : string;
begin
  inherited;
    _OnValidasiInput.Execute;

    if Konfirmasi('Apakah anda yakin akan mengimport data ini dengan pilihan '+cbbPilihanInsert.Text+' ?')=false then Abort;

    try
        Screen.Cursor := crHourGlass;
        ArDB.FDBCon.AutoCommit := False;
        btnSimpan.Enabled := False;
        ASQL := TArSQL.Create;
        with ASQL do
        try
          if not ArDB.FDBCon.InTransaction then ArDB.FDBCon.StartTransaction;

          with ArDB do
          begin
            if cbbPilihanInsert.ItemIndex = Ord(NTambahDataBaru) then
            ExecScript( 'SET FOREIGN_KEY_CHECKS = 0;'+
                        'insert ignore into '+TableN+' select * from '+TempTable + FilterDataKosong(PrimaryKeyValue)+';')
            else if cbbPilihanInsert.ItemIndex = Ord(NTambahDataBaruPKGantiData) then
            ExecScript( 'SET FOREIGN_KEY_CHECKS = 0;'+
                        'replace into '+TableN+' select * from '+TempTable + FilterDataKosong(PrimaryKeyValue)+';')
            else if cbbPilihanInsert.ItemIndex = Ord(NGantiSemuaData) then
            ExecScript( 'SET FOREIGN_KEY_CHECKS = 0;'+
                        'truncate '+TableN+';'+
                        'insert into '+TableN+' select * from '+TempTable + FilterDataKosong(PrimaryKeyValue)+';');
          end;

          if ArDB.FDBCon.InTransaction then ArDB.FDBCon.Commit;
          Disimpan := True;
          Informasi('Data berhasil diimport');
        except
          on e : Exception do
          begin
            if ArDB.FDBCon.InTransaction then ArDB.FDBCon.Rollback;
            Modalresult := mrNone;
            DoHandleException(Self, e);
          end;
        end;

    finally
        if Assigned(ASQL) then FreeAndNil(ASQL);
        btnSimpan.Enabled := True;
        ArDB.FDBCon.AutoCommit := True;
        Screen.Cursor := crDefault;
        btnClose.Click;
    end;
end;

procedure TfrmImportExcel._OnValidasiInputExecute(Sender: TObject);
begin
  inherited;
  if qryDaftar.IsEmpty then
  begin
    edtPathExcel.SetFocus;
    Peringatan('Data masih kosong, silakan import ulang');
    btnClose.Click;
  end;
end;

procedure TfrmImportExcel.GetPrimaryKeyofTable(Table: String);
var i : Word;
begin
  i := 0;
    with ROQry (' SHOW INDEX FROM '+Table+' WHERE key_name = "primary"') do
    try
      SetLength(PrimaryKeyValue, RecordCount);
      if not Eof then
      begin
        First;
        while not eof do
        begin
            PrimaryKeyValue[i] := FieldByName('column_name').AsString; //read the field value to the array
            Next; //next record
            inc(i);
        end;
      end;
    finally
      Close; Free;
    end;
end;


function TfrmImportExcel.FilterDataKosong(
  ArrayOfField: array of String): String;
var Filter : String;
i : Word;
begin
  Result := '';
  if Length(ArrayOfField) < 1 then Result := ''
  else
  begin
    for i:=0 to Length(ArrayOfField)-1 do
    begin
      if i = Length(ArrayOfField)-1 then
        Filter := Filter+' (('+ArrayOfField[i]+'<>"") and ('+ArrayOfField[i]+' is not null))'
      else
        Filter := Filter+' (('+ArrayOfField[i]+'<>"") and ('+ArrayOfField[i]+' is not null)) and';
      Result := ' where '+Filter;
    end;
  end;
end;

procedure TfrmImportExcel.ImportXLSTempImportRecord(Sender: TObject);
begin
  inherited;
  pb1.Position := ImportXLSTemp.CurrentLineNumber;
end;

procedure TfrmImportExcel.ImportXLSTempBeforeImport(Sender: TObject);
begin
  inherited;
  pb1.Max := ImportXLSTemp.TotalRecCount;
end;

procedure TfrmImportExcel.dbgDataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if(Key = vk_delete) then
  begin
    ExecQry('delete from '+TempTable+FilterDataDelete(PrimaryKeyValue));
    ShowData(qryDaftar, ptNone);
  end;
end;

function TfrmImportExcel.FilterDataDelete(
  ArrayOfField: array of String): String;
var Filter : String;
i : Word;
begin
  Result := '';
  if Length(ArrayOfField) < 1 then Result := ''
  else
  begin
    for i:=0 to Length(ArrayOfField)-1 do
    begin
      if i = Length(ArrayOfField)-1 then
        Filter := Filter+' ('+ArrayOfField[i]+'='+_Q(qryDaftar.fieldbyname(ArrayOfField[i]).AsString)+')'
      else
        Filter := Filter+' ('+ArrayOfField[i]+'='+_Q(qryDaftar.fieldbyname(ArrayOfField[i]).AsString)+') and ';
      Result := ' where '+Filter;
    end;
  end;
end;

procedure TfrmImportExcel.IsiMMOMap;
var i : Word;
begin
  for i:=0 to qryDaftar.FieldCount-1 do
    begin
      FMapImport.Add(FieldTable[i]+'='+kolomexcel[i]+'2-colfinish');
    end;
    mmo1.Lines.Clear;
    mmo1.Lines := FMapImport;
end;

procedure TfrmImportExcel.IsikolomExcel(JumlahKolom: Integer);
var i,j,k : Word;
begin
  SetLength(KolomExcel, JumlahKolom);
  j := 0;
  k := 0;
  for i := 0 to JumlahKolom-1 do
  begin
    if i <= 25 then KolomExcel[i] := alphabet[j]
    else if i>25 then KolomExcel[i] := alphabet[k]+alphabet[j];

    if j >= 25 then
    begin
      j := 0;
      k := k+1;
    end;
    j:=j+1;
  end;
end;

end.
