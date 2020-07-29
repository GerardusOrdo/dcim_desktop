unit DataDtlOptForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataDtlForm, ComCtrls,
  ExtCtrls, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ImgList, StdCtrls, Buttons, Grids, DBGrids,
  AdvToolBtn, AdvObj, BaseGrid, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh,
  DBGridEh, EhLibVCL, System.Actions, System.ImageList;

type
  TfrmDataDtlOpt = class(TfrmDataDtl)
    pnlOption: TPanel;
    pnlOptButton: TPanel;
    pnlOptTanggal: TPanel;
    lblDari: TLabel;
    lblSampai: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    _Filter: TAction;
    _ThisMonth: TAction;
    _PrevMonth: TAction;
    _Today: TAction;
    _NextDay: TAction;
    _PrevDay: TAction;
    _NextMonth: TAction;
    _Reprint: TAction;
    _LayoutNota: TAction;
    btnOptTambah: TAdvToolButton;
    btnOptLihat: TAdvToolButton;
    btnOptUbah: TAdvToolButton;
    btnOptHapus: TAdvToolButton;
    btnOptReprint: TAdvToolButton;
    btnOptCetak: TAdvToolButton;
    btnThisMonth: TAdvToolButton;
    btnFilter: TAdvToolButton;
    btnPrevMonth: TAdvToolButton;
    btnNextMonth: TAdvToolButton;
    btnPrevDay: TAdvToolButton;
    btnToday: TAdvToolButton;
    btnNextDay: TAdvToolButton;
    procedure _ThisMonthExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsDaftarDataChange(Sender: TObject; Field: TField);
    procedure _ReprintExecute(Sender: TObject);
    procedure _OnPrepareReportExecute(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }  
  public
    { Public declarations }
    Animating : Boolean;
  end;

var
  frmDataDtlOpt: TfrmDataDtlOpt;

implementation

uses TypeUnit, ArDBModule, ArFunctions, ArComponents, ArReports, Style;

{$R *.dfm}

procedure TfrmDataDtlOpt._ThisMonthExecute(Sender: TObject);
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
     _Filter.Execute;
end;

procedure TfrmDataDtlOpt.FormCreate(Sender: TObject);
var
  pnlcolor, pnlTextColor : TColor;
begin
  inherited;
     dtp1.date := FirstDateThisMonth(ArDB.ServerTime);
     dtp2.date := LastDateThisMonth(ArDB.ServerTime);

     if pnlOption.Visible then
     begin
          SetGlyphBtns([btnFilter,
                         btnPrevMonth, btnThisMonth, btnNextMonth,
                         btnPrevDay, btnToday, btnNextDay,
                         btnOptTambah, btnOptUbah, btnOptHapus,
                         btnOptCetak, btnOptLihat, btnOptReprint]);
     end;

     pnlcolor := CLR_BLACK;
     pnlTextColor := CLR_WHITE;

//     pnlOption.Colors.ButtonBottom := pnlcolor;
//     pnlOption.Colors.ButtonTop := pnlcolor;
//     pnlOption.Colors.ButtonColor := pnlcolor;
//     pnlOption.Colors.Color := pnlcolor;
//     pnlOption.Colors.FrameBottom := pnlcolor;
//     pnlOption.Colors.FrameTop := pnlcolor;
//
//     pnlOption.Colors.HotTrackText := pnlTextColor;
//     pnlOption.Font.Color := pnlTextColor;
//     pnlOption.ButtonFont.Color := pnlTextColor;
//     pnlOption.ButtonFont.Size := 10;
//     pnlOption.ButtonFont.Style := [];

     pnlDetail.Visible := False;
     pnlOption.Visible := False;
     pnlOption.Height := 1500;
end;

procedure TfrmDataDtlOpt.dsDaftarDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if not Showing then Exit;
     _Reprint.Enabled := _Reprint.Visible and CanPrint and (not dsDaftar.DataSet.IsEmpty);
end;

procedure TfrmDataDtlOpt._ReprintExecute(Sender: TObject);
begin
  inherited;
     if not CanPrint then PesanError('Anda tidak diperkenankan mengakses menu ini');
end;

procedure TfrmDataDtlOpt._OnPrepareReportExecute(Sender: TObject);
begin
     //inherited; 
     TArReport(Sender).SetParValues
          (['NamaPerusahaan','AlamatPerusahaan','TelpPerusahaan','Judul'
           ,'Tgl1','Tgl2','Tanggal1','Tanggal2','NamaUser'],
           [__Company[cpNama], __Company[cpAlamat], __Company[cpTelp], Caption
           ,dtp1.Date, dtp2.Date, dtp1.Date, dtp2.Date, User.Nama]
          );
end;

procedure TfrmDataDtlOpt.tmr1Timer(Sender: TObject);
var
  Pos : Integer;
begin
//  inherited;
  try
    Animating := True;
    tmr1.Enabled := False;
  //  AnimateWindow(pnlBottom.Handle, 600, AW_SLIDE or AW_VER_POSITIVE or AW_ACTIVATE);
    pnlOption.Align := alCustom;
    Pos := 600;
    pnlOption.Left := pnlOption.Left - Pos;
    pnlOption.Visible := True;
    Anim_Slide(pnlOption, QuintEaseOut, Horizontal, 600, Pos);
    pnlOption.Align := alLeft;
  finally
    Animating := False;
  end;
end;

procedure TfrmDataDtlOpt.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  CanClose := not (Animating);
end;

end.
