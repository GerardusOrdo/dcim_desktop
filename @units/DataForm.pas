unit DataForm;

interface

uses
  TypeUnit, ArReports, Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, BaseForm, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ExtCtrls, ActnList, Menus, DB, StdCtrls, Buttons, Grids, DBGrids,
  ImgList, ComCtrls, AdvMetroButton, AdvToolBtn,
  AdvObj, BaseGrid, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, EhLibVCL,
  System.Actions, System.ImageList;

type
  TfrmData = class(TfrmBase)
    qryDaftar: TZQuery;
    dsDaftar: TDataSource;
    pmDaftar: TPopupMenu;
    mniRefresh: TMenuItem;
    mniSep: TMenuItem;
    mniTambah: TMenuItem;
    mniUbah: TMenuItem;
    mniHapus: TMenuItem;
    _Refresh: TAction;
    pnlData: TPanel;
    tmrCari: TTimer;
    _Cetak: TAction;
    _Layout: TAction;
    mniN1: TMenuItem;
    mniCetak: TMenuItem;
    pnlGrid: TPanel;
    _Pilih: TAction;
    _Insert: TAction;
    pnlBottom: TPanel;
    pnlCari: TPanel;
    lblKeyword: TLabel;
    edtKeyword: TEdit;
    pnlButton: TPanel;
    _Edit: TAction;
    _Delete: TAction;
    _OnGetTotal: TAction;
    _OnDelete: TAction;
    _OnPrepareReport: TAction;
    ftrDaftar: TStatusBar;
    _Lihat: TAction;
    btnTambah: TAdvToolButton;
    actDaftar: TActionList;
    btnUbah: TAdvToolButton;
    btnHapus: TAdvToolButton;
    btnCetak: TAdvToolButton;
    btnPilih: TAdvToolButton;
    btnRefresh: TAdvToolButton;
    dbgDaftar: TDBGridEh;
    procedure _RefreshExecute(Sender: TObject);
    procedure qryDaftarAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure btnCloseClick(Sender: TObject);
    procedure tmrCariTimer(Sender: TObject);
    procedure dbgDaftarDblClick(Sender: TObject);
    procedure edtKeywordKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure qryDaftarAfterPost(DataSet: TDataSet);
    procedure dsDaftarStateChange(Sender: TObject);
    procedure _LayoutExecute(Sender: TObject);
    procedure _CetakExecute(Sender: TObject);
    procedure pnlDataResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtKeywordKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pmDaftarPopup(Sender: TObject);
    procedure qryDaftarFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryDaftarAfterRefresh(DataSet: TDataSet);
    procedure _PilihExecute(Sender: TObject);
    procedure dsDaftarDataChange(Sender: TObject; Field: TField);
    procedure _InsertExecute(Sender: TObject);
    procedure _EditExecute(Sender: TObject);
    procedure _DeleteExecute(Sender: TObject);
    procedure _OnGetTotalExecute(Sender: TObject);
    procedure qryDaftarAfterDelete(DataSet: TDataSet);
    procedure edtKeywordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgDaftarKeyPress(Sender: TObject; var Key: Char);
    procedure _OnPrepareReportExecute(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure dbgDaftarColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure dbgDaftarDrawColumnTitle(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; AColumn: TColumn; var ASortMarker: TBitmap;
      IsDown: Boolean; var Offset: Integer; var DefaultDrawText,
      DefaultDrawSortMarker: Boolean);
    procedure edtKeywordChange(Sender: TObject);
    procedure dbgDaftarTitleClick(Column: TColumnEh);
  private
    FReport : TArReport;
    FMenuAkses: NMenu;
    FFilterText: string;
    FCanInsert: Boolean;
    FCanView: Boolean;
    FCanEdit: Boolean;
    FCanPrint: Boolean;
    FCanDelete: Boolean;
    procedure SetMenuAkses(const Value: NMenu);
    procedure SetFilterText(const Value: string);
    function GetReportData: TDataSet;
    procedure SetReportData(const Value: TDataSet);
    { Private declarations }
  protected
    MenuName : string;
    SQLBase, SQLFilter : string;
    FQCompany : TZReadOnlyQuery;
    procedure SetReport(AFileReport, AAlias: string;ADataset:TDataset=nil);
	procedure SetReportClear;
    procedure ShowPilih (b: Boolean=False);
    procedure SetGridFooter (AFields,AValues: array of string;
                             AAlignments:array of TAlignment;
                             ASimple:Boolean=False);
    property Filter : string read FFilterText write SetFilterText;
    property MenuAkses   : NMenu read FMenuAkses write SetMenuAkses;
    property ReportData  : TDataSet read GetReportData write SetReportData;
    property Report      : TArReport read FReport;
  public
    property CanView     : Boolean read FCanView;
    property CanInsert   : Boolean read FCanInsert;
    property CanEdit     : Boolean read FCanEdit;
    property CanDelete   : Boolean read FCanDelete;
    property CanPrint    : Boolean read FCanPrint;
    { Public declarations }
  end;

var
  frmData: TfrmData;

implementation

uses ArDBModule, ArFunctions, ArComponents, Style, ArManager;

{$R *.dfm}

procedure TfrmData._RefreshExecute(Sender: TObject);
begin
  inherited;
     tmrCari.Enabled := False;
     ShowData (dsDaftar.DataSet, ptBookmark);
//     dbgDaftar.SelectedRows.Clear;
end;

procedure TfrmData.qryDaftarAfterOpen(DataSet: TDataSet);
begin
  inherited;
     SetDisplayFormat (DataSet, [], []);
     _OnGetTotal.Execute;
end;

procedure TfrmData.FormCreate(Sender: TObject);
var i : word;
begin
  inherited;
     qryDaftar.Connection := ArDB.FDBCon;
     SQLBase := qryDaftar.SQL.Text;

     actDaftar.Images := ilBtn;
     pmDaftar.Images := ilBtn;

     if pnlButton.Visible then
     begin                         
          SetGlyphBtns([ btnTambah, btnUbah, btnHapus,
                         btnCetak]);
     end;
     SetGlyph(btnPilih, ibOK);
     SetGlyph(btnRefresh, ibRefresh);

     for i := 0 to dbgDaftar.Columns.Count -1 do
          ftrDaftar.Panels.Add.Bevel := pbNone;   
     ftrDaftar.Panels.Add.Bevel := pbNone;
end;

procedure TfrmData.qryDaftarPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  inherited;
     Action := daAbort;
     DBHandleException (DataSet, Exception(E));
end;

procedure TfrmData.btnCloseClick(Sender: TObject);
begin
     if dsDaftar.DataSet.State in [dsInsert, dsEdit] then dsDaftar.DataSet.Cancel
     else if Assigned(FReport) and FReport.Showing then FReport.Close
     else inherited;
end;

procedure TfrmData.tmrCariTimer(Sender: TObject);
begin
  inherited;
     tmrCari.Enabled := False;
     _Pilih.Enabled := True;
     //Screen.Cursor := crDefault;

     ShowData (dsDaftar.DataSet, ptBookmark);
end;

procedure TfrmData.dbgDaftarDblClick(Sender: TObject);
begin
  inherited;
     if _Pilih.Visible and _Pilih.Enabled then _Pilih.Execute else
     if _Edit.Visible and _Edit.Enabled then _Edit.Execute;
end;

procedure TfrmData.edtKeywordKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
     if (Key = #13) then
     begin     
          Key := #0;
          if(not _Pilih.Enabled) then
          begin
               if edtKeyword.CanFocus then edtKeyword.SetFocus;
          end else
//          if _Pilih.Enabled and _Pilih.Visible and btnPilih.CanFocus then
//               btnPilih.SetFocus;
     end;
end;

procedure TfrmData.edtKeywordKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
     _Pilih.Enabled := False;
     tmrCari.Enabled := False;
     tmrCari.Enabled := True;
end;

procedure TfrmData.FormShow(Sender: TObject);
begin
  inherited;
     pnlBottom.Visible := pnlButton.Visible or pnlCari.Visible;
     if Assigned(qryDaftar.UpdateObject) then
          qryDaftar.UpdateObject.RefreshSQL.Text := qryDaftar.SQL.Text;
end;

procedure TfrmData.qryDaftarAfterPost(DataSet: TDataSet);
begin                         
     if Assigned(qryDaftar.UpdateObject) then
          ShowData(DataSet, ptBookmark);
     if Trim(edtKeyword.Text) <> '' then
     begin
          edtKeyword.Text := '';
          Filter := '';
     end;
end;

procedure TfrmData.dsDaftarStateChange(Sender: TObject);
begin
  inherited;
     _Pilih.Enabled := not (dsDaftar.State in [dsInsert, dsEdit]);
end;

procedure TfrmData._LayoutExecute(Sender: TObject);
begin
  inherited;
     if Assigned(FReport) then FReport.ShowDesign;
end;

procedure TfrmData._CetakExecute(Sender: TObject);
begin
  inherited;
     if Assigned(FReport) and Assigned(FReport.Dataset) then _Refresh.Execute;{
     begin
          if (not FReport.Dataset.Active) then FReport.Dataset.Open else FReport.Dataset.Refresh;
     end;}
     if (FReport.Dataset.IsEmpty) then Exit;

     if not CanPrint then PesanError('Anda tidak diperkenankan mengakses menu ini');

     if Assigned(FReport) then FReport.ShowPreview;
end;

procedure TfrmData.pnlDataResize(Sender: TObject);
begin
  inherited;
     if Assigned(FReport) then FReport.Resize;
end;      

procedure TfrmData.SetReport (AFileReport, AAlias: string;ADataset:TDataset=nil);
begin
     if (AFileReport = '') then exit;
	 if ADataset = nil then ADataset := dsDaftar.DataSet;

     _Cetak.Visible := True;
     if (not Assigned(FReport)) then
     begin
          FReport := TArReport.Create(Self);
          FReport.OnPrepare := _OnPrepareReport.OnExecute;
          FReport.FileName  := AFileReport;
          FReport.Alias     := AAlias;
          FReport.PreviewIn := pnlData;
          FReport.Dataset   := ADataset;
          FReport.ControlEnable := False;
     end;
end;    

procedure TfrmData.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;       
     if Assigned(FReport) then
          FReport.MouseWheelScroll(WheelDelta, False, ssCtrl in Shift);
end;

procedure TfrmData.SetReportClear;
begin
	if Assigned(FReport) then
	begin
		if FReport.Showing then FReport.Close;
		FreeAndNil(FReport);
	end;
end;

procedure TfrmData.FormDestroy(Sender: TObject);
begin
  inherited;
	SetReportClear;
     {if Assigned(FReport) then
     begin
          if FReport.Showing then FReport.Close;
          FreeAndNil(FReport);
     end;}
end;

procedure TfrmData.pmDaftarPopup(Sender: TObject);
begin
  inherited;
     Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmData.qryDaftarFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var AllValues : string; i : Byte;
begin
  inherited;    
     DataSet.FilterOptions := [foCaseInsensitive];
     AllValues := '';
     for i := 0 to Dataset.FieldCount -1 do
          AllValues := AllValues + Dataset.Fields[i].AsString+'|';
     Accept := (trim(edtKeyword.Text) = '') or (pos(UpperCase(edtKeyword.Text), UpperCase(AllValues)) > 0);
end;

procedure TfrmData.qryDaftarAfterRefresh(DataSet: TDataSet);
begin
  inherited;
     _OnGetTotal.Execute;
end;

procedure TfrmData._PilihExecute(Sender: TObject);
begin
  inherited;
     if dsDaftar.DataSet.Active and (not dsDaftar.DataSet.IsEmpty) then
          ModalResult := mrOK
     else if edtKeyword.CanFocus then edtKeyword.SetFocus;
end;

procedure TfrmData.ShowPilih(b: Boolean);
begin
     _Pilih.Visible := b;       
//     btnPilih.TabStop := b;
     btnRefresh.Visible := not b;
end;

procedure TfrmData.dsDaftarDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not Showing then Exit;
     _Insert.Enabled:= _Insert.Visible and CanInsert;        
     _Lihat.Enabled := _Lihat.Visible and CanView and (not dsDaftar.DataSet.IsEmpty);
     _Edit.Enabled  := _Edit.Visible and CanEdit and (not dsDaftar.DataSet.IsEmpty);
     _Delete.Enabled:= _Delete.Visible and CanDelete and (not dsDaftar.DataSet.IsEmpty);
     _Cetak.Enabled := _Cetak.Visible and CanPrint and (Assigned(FReport) and (FReport.FileName<>'')) and (not dsDaftar.DataSet.IsEmpty);
end;

procedure TfrmData._InsertExecute(Sender: TObject);
begin
  inherited;
     if not CanInsert then PesanError('Anda tidak diperkenankan mengakses menu ini');
end;

procedure TfrmData._EditExecute(Sender: TObject);
begin
  inherited;
     if (not dsDaftar.DataSet.Active) or (dsDaftar.DataSet.IsEmpty) then Exit;
     if not CanEdit then PesanError('Anda tidak diperkenankan mengakses menu ini');
end;

procedure TfrmData._DeleteExecute(Sender: TObject);
begin
  inherited;                    
     if (not dsDaftar.DataSet.Active) or (dsDaftar.DataSet.IsEmpty) then Exit;
     if not CanDelete then PesanError('Anda tidak diperkenankan mengakses menu ini');  
     if not Konfirmasi('Yakin ingin menghapus data?') then Abort;
     //if Assigned(_OnDelete.OnExecute) then _OnDelete.Execute else qryDaftar.Delete;
end;

procedure TfrmData.SetMenuAkses(const Value: NMenu);
begin
     FMenuAkses := Value;
     FCanView   := BolehAkses(FMenuAkses, [haStatus]);
     FCanInsert := BolehAkses(FMenuAkses, [haTambah]);
     FCanEdit   := BolehAkses(FMenuAkses, [haUbah]);
     FCanDelete := BolehAkses(FMenuAkses, [haHapus]);
     FCanPrint  := BolehAkses(FMenuAkses, [haCetak]);
end;

procedure TfrmData._OnGetTotalExecute(Sender: TObject);
begin
  inherited;
     if dsDaftar.DataSet.Active then
     SetGridFooter ( [dbgDaftar.Columns[0].FieldName]
                    ,[IntToStr(dsDaftar.DataSet.RecordCount)+' data']
                    ,[taLeftJustify], True);
end;

procedure TfrmData.qryDaftarAfterDelete(DataSet: TDataSet);
begin
  inherited;
     _OnGetTotal.Execute;
end;

procedure TfrmData.SetFilterText(const Value: string);
begin
  FFilterText := Value;
     TZQuery(dsDaftar.DataSet).Filter := FFilterText;
     _OnGetTotal.Execute;
end;

procedure TfrmData.edtKeywordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
     if (Key = VK_DOWN) and dbgDaftar.CanFocus then dbgDaftar.SetFocus;
end;

procedure TfrmData.dbgDaftarKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
     if ((key = #13)or((ActiveControl is TDBGrid) and (Key = chr(VK_TAB))))
          and _Pilih.Visible and _Pilih.Enabled then
          _Pilih.Execute;
end;

procedure TfrmData._OnPrepareReportExecute(Sender: TObject);
begin
     if Assigned(FReport) then
     begin
          FReport.SetParValues
               (['NamaPerusahaan','AlamatPerusahaan','TelpPerusahaan','Judul','NamaUser'],
                [__Company[cpNama], __Company[cpAlamat], __Company[cpTelp], Caption, User.Nama]
               );
          if not Assigned (FQCompany) then
               FQCompany:=ROQry(' select "'+__Company[cpNama]+'" NamaPerusahaan '+
                               '   , "'+__Company[cpAlamat]+'" AlamatPerusahaan '+
                               '   , "'+__Company[cpTelp]+'" TelpPerusahaan '+
                               '   , nilai Logo from setting where nama="logo" ')
          else if FQCompany.Active then FQCompany.Refresh else FQCompany.Open;
          FReport.AddMoreData(FQCompany, 'Company');
     end;
end;

procedure TfrmData.dbgDaftarColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
var s : string;
begin
  inherited;
     s := ftrDaftar.Panels[ToIndex].Text;
     ftrDaftar.Panels[ToIndex].Text := ftrDaftar.Panels[FromIndex].Text;
     ftrDaftar.Panels[FromIndex].Text := s;
end;

procedure TfrmData.dbgDaftarDrawColumnTitle(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; AColumn: TColumn;
  var ASortMarker: TBitmap; IsDown: Boolean; var Offset: Integer;
  var DefaultDrawText, DefaultDrawSortMarker: Boolean);
begin
  inherited;
     with ftrDaftar.Panels[AColumn.Index] do
     begin
//          Width := AColumn.Width+dbgDaftar.LeftCol;
//          if (AColumn.Index = 0) and (dgIndicator in dbgDaftar.Options) then
//               Width := Width + IndicatorWidth+dbgDaftar.LeftCol;
     end;
end;

procedure TfrmData.SetGridFooter(AFields, AValues: array of string;
  AAlignments: array of TAlignment; ASimple: Boolean);
var i, n, l : Word;
begin
     l := Length(AFields);
     if (l=0)or(l <> Length(AValues)) or (l <> Length(AAlignments)) then Exit;

     ftrDaftar.SimplePanel := ASimple;
     if ASimple then
          ftrDaftar.SimpleText := AValues[0]
     else
     for n := 0 to Length(AFields) -1 do
     begin
          for i := 0 to dbgDaftar.Columns.Count -1 do
          if CompareText(AFields[n], dbgDaftar.Columns[i].FieldName)=0 then
          begin
               ftrDaftar.Panels[i].Text := AValues[n];
               ftrDaftar.Panels[i].Alignment := AAlignments[n];
               ftrDaftar.Panels[i].Bevel := pbLowered;
               Break;
          end;
     end;
end;

function TfrmData.GetReportData: TDataSet;
begin
     Result := FReport.Dataset;
end;

procedure TfrmData.SetReportData(const Value: TDataSet);
begin
     if FReport.Dataset <> Value then
     FReport.Dataset := Value;
end;

procedure TfrmData.edtKeywordChange(Sender: TObject);
begin
  inherited;
     if dsDaftar.DataSet.Filtered <> (edtKeyword.Text <> '') then
         dsDaftar.DataSet.Filtered := (edtKeyword.Text <> '');
end;

procedure TfrmData.dbgDaftarTitleClick(Column: TColumnEh);
begin
  inherited;
     SortByFieldName (TZQuery(Column.Grid.Datasource.Dataset), Column.FieldName);
end;

end.
