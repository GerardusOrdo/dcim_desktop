unit DataPanel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataDtlForm, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, ActnList, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ExtCtrls, ImgList, StdCtrls, Buttons, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, ComCtrls, AdvToolBtn, Mask, DBCtrls, Types, TypeTrans;

type
  TDataPanel = record
    id_panel : Variant;
    panel_name : String;
  end;
  TfrmDataPanel = class(TfrmDataDtl)
    lblPanelName: TLabel;
    edtPanelName: TDBEdit;
    procedure dsDaftarStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryDaftarBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataPanel: TfrmDataPanel;
  procedure ShowDataPanel;
  function ShowCariDataPanel (kw,flt:string):TDataPanel;
  function GetDataPanel(id: Cardinal): TDataPanel;

implementation

uses ArDBModule, ArFunctions, ArComponents, MenuUtamaUnit, DataForm, BaseForm, StrUtils, TypeUnit;

{$R *.dfm}

procedure ShowDataPanel;
begin
  if not BolehAkses(mnListOS) then
          PesanError('Anda tidak diperkenankan mengakses menu ini');

     with frmDataPanel do
     begin
          if not IsFormClassActive ('TfrmDataPanel', Application) then
          begin
               frmDataPanel := TfrmDataPanel.Create(Application);
               ChangeWindowState := wsMaximized;
               FormStyle := fsMDIChild;

               ShowData(qryDaftar, ptFirst);
          end;
          Show;
     end;
end;

function ShowCariDataPanel (kw,flt:string):TDataPanel;
begin
  Result.id_panel := null;
     with TfrmDataPanel.Create(nil) do
     try
          pnlButton.Visible := BolehAkses(mnListOS);
          ShowPilih(True);

          qryDaftar.SQL.Text := SQLBase + flt;

          if kw = 'NewData' then
          begin
               edtKeyword.Text := '';
               ShowData (qryDaftar, ptFirst);
               if BolehAkses(mnListOS, [haTambah]) then _Insert.Execute;
               ActiveControl := edtPanelName;
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
                    id_panel    := FieldByName('id_panel').Value;
                    panel_name  := FieldByName('panel_name').AsString;
               end;
          end;
     finally
          Free;
     end;
end;

function GetDataPanel (id:Cardinal):TDataPanel;
begin
  Result.id_panel := null;
     with Query ('SELECT dp.* FROM dc_panel dp where dp.id_panel='+IntToStr(id)), Result do
     try
          First;
          if not eof then
          begin                                                       
            id_panel    := FieldByName('id_panel').Value;
            panel_name  := FieldByName('panel_name').AsString;
          end;
     finally
          Close;Free;
     end;
end;

procedure TfrmDataPanel.dsDaftarStateChange(Sender: TObject);
begin
  inherited;
  if edtPanelName.CanFocus and (dsDaftar.State in [dsInsert, dsEdit]) and
  Showing then edtPanelName.SetFocus;
end;

procedure TfrmDataPanel.FormCreate(Sender: TObject);
begin
  inherited;
  SetHeader (pnlTitle, Caption, frmMenuUtama.ilMain, frmMenuUtama._ListOS.ImageIndex);
//  SetReport (PathReport +'DataPasien.fr3', 'Pasien');
  MenuAkses := mnListOS;

  //     ChangeDateEditor([edtTglLahir]);
//  SetGlyph(btnCariKota, ibFind);
end;

procedure TfrmDataPanel.qryDaftarBeforePost(DataSet: TDataSet);
begin
  inherited;
  HarusDiisi(edtPanelName, 'Panel', trim(edtPanelName.Text) = '');
end;

end.
