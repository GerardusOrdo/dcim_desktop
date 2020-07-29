unit GrafikForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, BaseForm, TeeGalleryPanel, DB, ZAbstractRODataset,
  ZDataset, TeeEdit, Series, TeEngine, TeeProcs, Chart, DBChart, TeeComma,
  Menus, ActnList, ComCtrls, ToolWin, StdCtrls, Buttons, JvExExtCtrls,
  JvExtComponent, JvRollOut, ImgList, ExtCtrls, JvExControls, JvButton,
  JvTransparentButton;

type
  TfrmGrafik = class(TfrmBase)
    pnlData: TPanel;
    pnlOption: TJvRollOut;
    pnlOptTanggal: TPanel;
    lblDari: TLabel;
    lblSampai: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    btnThisMonth: TBitBtn;
    btnPrevMonth: TBitBtn;
    btnNextMonth: TBitBtn;
    btnPrevDay: TBitBtn;
    btnToday: TBitBtn;
    btnNextDay: TBitBtn;
    actDaftar: TActionList;
    _Preview: TAction;
    _ThisMonth: TAction;
    _PrevMonth: TAction;
    _NextMonth: TAction;
    _Today: TAction;
    _PrevDay: TAction;
    _NextDay: TAction;
    pnlOptButton: TPanel;
    btnOptCetak: TBitBtn;
    pmLaporan: TPopupMenu;
    _PrepareDataset: TAction;
    tcmdGrafik: TTeeCommander;
    crtLaporan: TDBChart;
    barSeries: TBarSeries;
    pieSeries: TPieSeries;
    ceLaporan: TChartEditor;
    qryGrafik: TZReadOnlyQuery;
    cgalGrafik: TChartGalleryPanel;
    btnPilihan: TJvTransparentButton;
    procedure _ThisMonthExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure _PreviewExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPilihanClick(Sender: TObject);
    procedure cgalGrafikChangeChart(Sender: TObject);
  private
    { Private declarations }
    FGrafikTitle : string;
    procedure SetGrafikTitle(const Value: string);
  public
    procedure SetQuery (s:string);
    property GrafikTitle : string read FGrafikTitle write SetGrafikTitle;
    { Public declarations }
  end;

var
  frmGrafik: TfrmGrafik;

implementation

uses ArFunctions, ArComponents, ArDBModule, TypeUnit;

{$R *.dfm}
var BaseGrafikTitle : string;

{ TfrmGrafik }
procedure TfrmGrafik._ThisMonthExecute(Sender: TObject);
begin
  inherited;
     if Sender = _ThisMonth then
     begin
          dtp1.date := FirstDateThisMonth(date);
          dtp2.date := LastDateThisMonth(date);
     end else
     if Sender = _NextMonth then
     begin
          dtp1.date := FirstDateThisMonth(IncMonth(dtp1.Date, 1));
          dtp2.date := LastDateThisMonth(dtp1.Date);
     end else
     if Sender = _PrevMonth then
     begin
          dtp1.date := FirstDateThisMonth(IncMonth(dtp1.Date, -1));
          dtp2.date := LastDateThisMonth(dtp1.Date);
     end else
     if Sender = _Today then
     begin
          dtp1.date := Now;
          dtp2.date := Now;
     end else
     if Sender = _PrevDay then
     begin
          dtp1.date := dtp1.date -1;
          dtp2.date := dtp1.date;
     end else
     if Sender = _NextDay then
     begin
          dtp1.date := dtp1.date + 1;
          dtp2.date := dtp1.date;
     end;
end;

procedure TfrmGrafik.FormCreate(Sender: TObject);
begin
  inherited;
     dtp1.date := FirstDateThisMonth(date);
     dtp2.date := LastDateThisMonth(date);
     
     if pnlOption.Visible then
     begin                         
          SetGlyphBtns([ btnPrevMonth, btnThisMonth, btnNextMonth,
                         btnPrevDay, btnToday, btnNextDay]);
     end;   
     cgalGrafik.NumCols:=2;
     cgalGrafik.NumRows:=3;
     cgalGrafik.CreateChartList([TBarSeries,THorizBarSeries,TPieSeries,THorizLineSeries,TLineSeries,TAreaSeries]);
end;

procedure TfrmGrafik._PreviewExecute(Sender: TObject);
begin
  inherited;
     with qryGrafik do
     try
          Screen.Cursor := crHourGlass;
          _Preview.Enabled := False;

          DisableControls;
          _PrepareDataset.Execute;
          if not Active then Open;
          First;
          if Eof then
               Peringatan('Data tidak ditemukan', True);
         
          crtLaporan.RefreshData;
     finally
          EnableControls;
          _Preview.Enabled := True;
          Screen.Cursor := crDefault;
     end;
end;

procedure TfrmGrafik.FormShow(Sender: TObject);
begin
  inherited;
     BaseGrafikTitle := pnlTitle.Caption;
end;

procedure TfrmGrafik.btnPilihanClick(Sender: TObject);
begin
  inherited;
     pmLaporan.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TfrmGrafik.cgalGrafikChangeChart(Sender: TObject);
var tmpSeries : TChartSeries;
begin
  inherited;
  tmpSeries:=cgalGrafik.SelectedChart[0];
  ChangeAllSeriesType(crtLaporan,TChartSeriesClass(tmpSeries.ClassType));
end;

procedure TfrmGrafik.SetQuery(s: string);
begin
     with qryGrafik do begin Close; SQL.Text := s; Open;end;
end;

procedure TfrmGrafik.SetGrafikTitle(const Value: string);
begin
     FGrafikTitle := Value;
     pnlTitle.Caption := BaseGrafikTitle+' :: '+StripHotkey(Value);
end;

end.
