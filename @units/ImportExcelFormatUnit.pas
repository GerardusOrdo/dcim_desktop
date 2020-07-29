unit ImportExcelFormatUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TransaksiForm, ActnList, ImgList, StdCtrls, Buttons, ExtCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, QImport3Wizard, QImport3, QImport3XLS, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls, AdvToolBtn,
  EhLibVCL;
type
  NPilihanInsert = (NTambahDataBaru = 0, NTambahDataBaruPKGantiData, NGantiSemuaData);
  TfrmImportExcelFormat = class(TfrmTransaksi)
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
    btnCariExcel: TAdvToolButton;
    btnImport: TAdvToolButton;
    procedure GetFieldNameFromTable;
    procedure btnCariExcelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure _OnClearFormExecute(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure _OnValidasiInputExecute(Sender: TObject);
    procedure ImportXLSTempImportRecord(Sender: TObject);
    procedure ImportXLSTempBeforeImport(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FieldTable : array of string;
    function FilterDataDelete(ArrayOfField : array of String) : String;
  public
    { Public declarations }
  end;

var
  FileExtension, TableN, TempTable : String;
  frmImportExcelFormat: TfrmImportExcelFormat;

implementation

uses
  TypeUnit, ArComponents, ArFunctions, MenuUtamaUnit, ArDBModule, Strutils,
  BaseForm;

{$R *.dfm}

procedure TfrmImportExcelFormat.btnCariExcelClick(Sender: TObject);
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
    GetFieldNameFromTable;
  end
  except
     on e : Exception do
     Peringatan('Terjadi kesalahan, silakan tutup jendela ini dan buka kembali'+#13#10+
     'Pesan kesalahan : '+E.Message);
  end;
end;

procedure TfrmImportExcelFormat.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader(pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._SettingDB.ImageIndex);
  SetGlyph(btnCariExcel, ibFileFind);
  SetGlyph(btnImport, ibLoad);
  ImportXLSTemp.DataSet := qryDaftar;
end;

procedure TfrmImportExcelFormat._OnClearFormExecute(Sender: TObject);
begin
  inherited;
  edtPathExcel.Clear;
end;


procedure TfrmImportExcelFormat.btnImportClick(Sender: TObject);
begin
  inherited;
  try
    HarusDiisi(edtPathExcel, 'Path Excel', edtPathExcel.Text = '');
    pb1.Visible := True;
    pb1.Position:= 0;

    ImportXLSTemp.Map := mmo1.Lines;
    ImportXLSTemp.Execute;
  finally
    btnImport.Enabled := False;
    pb1.Visible := False;
  end;
end;

procedure TfrmImportExcelFormat._OnValidasiInputExecute(Sender: TObject);
begin
  inherited;
  if qryDaftar.IsEmpty then
  begin
    edtPathExcel.SetFocus;
    Peringatan('Data masih kosong, silakan import ulang');
    btnClose.Click;
  end;
end;

procedure TfrmImportExcelFormat.ImportXLSTempImportRecord(Sender: TObject);
begin
  inherited;
  pb1.Position := ImportXLSTemp.CurrentLineNumber;
end;

procedure TfrmImportExcelFormat.ImportXLSTempBeforeImport(Sender: TObject);
begin
  inherited;
  pb1.Max := ImportXLSTemp.TotalRecCount;
end;

procedure TfrmImportExcelFormat.FormShow(Sender: TObject);
begin
  inherited;
  dlgOpenTemp.Filter := 'Microsoft Office 2007 XLS|*.xls';
end;

procedure TfrmImportExcelFormat.dbgDataKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if(Key = vk_delete) then
  begin
//    Peringatan(FilterDataDelete(FieldTable), True);
    ExecQry('delete from '+TempTable + FilterDataDelete(FieldTable));
    ShowData(qryDaftar, ptNone);
  end;
end;

procedure TfrmImportExcelFormat.GetFieldNameFromTable;
var i : Word;
begin
  i := 0;
  SetLength(FieldTable, dbgData.FieldCount);
  for i:=0 to Length(FieldTable)-1 do
  begin
    FieldTable[i] := dbgData.Columns.Items[i].FieldName;
  end;
end;

function TfrmImportExcelFormat.FilterDataDelete(
  ArrayOfField: array of String): String;
  var i : Word;
  Filter : String;
begin
Result := '';
  if Length(ArrayOfField) < 1 then Result := ''
  else
  begin
    for i:=0 to Length(ArrayOfField)-1 do
    begin
      if i = Length(ArrayOfField)-1 then
        Filter := Filter+' ('+ArrayOfField[i]+'='+_Q(qryDaftar.fieldbyname(dbgData.Columns.Items[i].FieldName).AsString)+')'
      else
        Filter := Filter+' ('+ArrayOfField[i]+'='+_Q(qryDaftar.fieldbyname(dbgData.Columns.Items[i].FieldName).AsString)+') and ';
      Result := ' where '+Filter;
    end;
  end;
end;

end.
