unit ArComponents;

interface
uses
  SysUtils, Controls, Classes, Windows, Forms, DBGrids, DB, ImgList, Graphics,
  ActnList, ComCtrls, CommCtrl, StdCtrls,
  DBCtrlsEh, DBLookupEh, MemTableDataEh, MemTableEh, ToolCtrlsEh, DBAxisGridsEh, AdvToolBtn, Clipbrd, ArFunctions;
                                
function IsFormClassActive (AFormClass:ShortString;AOwner:TComponent;AOwnedBy:Boolean=true):Boolean;
procedure CloseFormByClass (AFormClass:ShortString;AOwner:TComponent;AOwnedBy:Boolean=true);
procedure CloseAnotherForms (Sender: TForm);
procedure CloseAllMDIChilds (MDIMain: TForm);
                                                
//------ graphic functions ---------------------------------------------------//
procedure Bitmap2GrayScale(const BitMap: TBitmap);
procedure AddDisabledImage(const BitMap: TBitmap);    
procedure AddGrayImgBtn (ABtns: array of TControl);
procedure AddGrayImg (Bitmap: TBitmap);   
procedure SetGlyphBtn(const btn: TObject; const ImgList: TCustomImageList; idx: Integer);
procedure SetGlyphBtns(ABtns: array of TControl);

procedure SetVisual (Sender:TWinControl);
procedure SetClear (Sender:TWinControl);
procedure SetAlignRight(e: TWinControl);
procedure RoundCornerOf(Control: TWinControl);

function GetEditID (AEdit:TCustomEdit;AFieldIDName:string=''):Variant;   
function GetEditSID (AEdit:TCustomEdit;AFieldIDName:string=''):string;
procedure SetEditValue (AEdit:TCustomEdit;AID:Variant;AText:string;AFieldIDName:string='');
procedure ClearEditID (AEdit:TCustomEdit;AFieldIDName:string='');
procedure ClearAllEditID (AEdit:array of TCustomEdit); overload;
procedure ClearAllEditID (AEdit:array of TCustomEdit;AFieldIDName:array of string); overload;

procedure SetLookupComboBoxEh (AComboBoxEh: TDBLookupComboboxEh;
           ADataset : TDataSet; ADataSource : TDataSource;
           AMemTableEh : TMemTableEh; AKeyField, AListField: string;
           ADropDownColFields, ADropDownColTitles, ADropDownColWidths : string);
procedure CekComboboxEhKeyValueNull(ComboboxEh : TDBLookupComboboxEh; ButtonCari : TButton;
    ColorIfKeyValuesNull, ColorIfNotNull : TColor);

procedure ShowCheckInGrid (AFields:array of string; TrueStates:array of Boolean;
                         SenderGrid:TObject; Rect:TRect; const AColumn:TColumn);
procedure DrawColGrid (SenderGrid:TObject; Rect: TRect; const AColumn: TColumn);
procedure FitColGrid  (SenderGrid:TObject; ColIndex:Smallint=-1;ColMinWidth:Smallint=-1);   
procedure FixDBGridColumnsWidth(const DBGrid: TDBGrid);
procedure HideColsInGrid (const Grid:TDBGrid; Cols:array of Integer);     
procedure ShowColsInGrid (const Grid: TDBGrid; Cols:array of Integer);
procedure SetColWidthInGrid(const Grid: TDBGrid; AWidth: array of Integer);
procedure SetDisplayFormat (ADataset:TDataset; AField:array of string; AFormat:array of string);
function IsDateTimePickerChecked(ADateTimePicker: TDateTimePicker): Boolean;
procedure ChangeParent (AComp,ANewParent:TWinControl);
procedure CopyEdtToClipboard(Edt : TEdit);
procedure CopyTextToClipboard(Txt : string);

implementation
//StrUtils,
//ShellAPI, Dialogs, ZDbcIntfs, DateUtils, Messages,
//
uses Variants, Messages, 
     ExtCtrls, DBCtrls, Buttons,   //components
     //JvBaseEdits, JvValidateEdit,
     Style;

function IsFormClassActive (AFormClass:ShortString;AOwner:TComponent;AOwnedBy:Boolean=True):Boolean;
var i : Smallint;
begin
     Result := False;
     for i := Screen.FormCount -1 downto 0 do
     with Screen.Forms[i] do
     if ( ClassName= AFormClass) and (
          (AOwnedBy and (Owner = AOwner))or(Not AOwnedBy and (Owner <> AOwner))
          ) then
     begin
          Result := True; 
          Break;
     end;
end;    

procedure CloseFormByClass (AFormClass:ShortString;AOwner:TComponent;AOwnedBy:Boolean=True);
var i : Smallint;
begin
     for i := Screen.FormCount -1 downto 0 do
     with Screen.Forms[i] do
     if ( ClassName= AFormClass) and (
          (AOwnedBy and (Owner = AOwner))or(Not AOwnedBy and (Owner <> AOwner))
          ) then
     begin
          //ShowMessage (ClassName);
          Close;
     end;
end;

procedure CloseAnotherForms (Sender: TForm);
var i : integer;
begin
     for i := 1 to Application.ComponentCount-1 do
     begin
          if (Application.Components[i] is TForm) then
          with TForm(Application.Components[i]) do
          begin
               if(FormStyle <> fsMDIForm) and(TForm(Application.Components[i]) <> Sender) then
               begin
                    TForm(Application.Components[i]).Close;   
                    TForm(Application.Components[i]).Release;
                    //Sleep(10);
               end;
          end;
          //ShowMessage(Application.Components[i].);
     end;
end;
        
procedure CloseAllMDIChilds (MDIMain: TForm);
var i : Word;
begin
     for i := MDIMain.MDIChildCount - 1 downto 0 do
          MDIMain.ActiveMDIChild.Close;
          //ShowMessage(MDIMain.MDIChildren[i].Name);//.Close;
end;

procedure SetVisual (Sender:TWinControl);
var i : SmallInt;
    vColor : array [1..2] of TColor;
begin                              
     vColor[2] := $00F2E4D7;
     vColor[1] := clWindow;//$00FCF7F4;
     
     with Sender do
     for i := 0 to ControlCount -1 do
          //probably parent
          if Controls[i] is TPanel then
               SetVisual(TPanel(Controls[i]))
          else if Controls[i] is TPageControl then
               SetVisual(TPageControl(Controls[i]))
          else if Controls[i] is TTabSheet then
               SetVisual(TTabSheet(Controls[i]))
          //standard
          else if (Controls[i] is TEdit) then
               with TEdit(Controls[i]) do if (Tag > 0) and (Tag <= High(vColor) ) then
               begin
                    Color := vColor[Tag];
               end else
                    Color := clWindow
          else if Controls[i] is TDateTimePicker then
               with TDateTimePicker(Controls[i]) do if (Tag > 0) and (Tag <= High(vColor) ) then
               begin
                    Color := vColor[Tag];
                    DateFormat := dfLong;
               end else                        
                    Color := clWindow
          else if Controls[i] is TComboBox then
               with TComboBox(Controls[i]) do if (Tag > 0) and (Tag <= High(vColor) ) then
               begin
                    Color := vColor[Tag];
               end else            
                    Color := clWindow
          else if Controls[i] is TMemo then
               with TMemo(Controls[i]) do if (Tag > 0) and (Tag <= High(vColor) ) then
               begin
                    Color := vColor[Tag];
               end else            
                    Color := clWindow
          //db
          else if Controls[i] is TDBLookupComboBox then
               with TDBLookupComboBox(Controls[i]) do if (Tag > 0) and (Tag <= High(vColor) ) then
               begin
                    Color := vColor[Tag];
               end else                 
                    Color := clWindow
          else if Controls[i] is TDBLookupListBox then
               with TDBLookupListBox(Controls[i]) do if (Tag > 0) and (Tag <= High(vColor) ) then
               begin
                    Color := vColor[Tag];
               end else
                    Color := clWindow    
          else if Controls[i] is TDBGrid then
               with TDBGrid(Controls[i]) do if (Tag > 0) and (Tag <= High(vColor) ) then
               begin
                    Color := vColor[Tag];
               end else
                    Color := clWindow
end;

procedure SetClear (Sender:TWinControl);
var i : SmallInt;
begin                       
     with Sender do
     for i := 0 to ControlCount -1 do
          //probably parent
          if Controls[i] is TPanel then
               SetClear(TPanel(Controls[i]))      
          else if Controls[i] is TPageControl then
               SetClear(TPageControl(Controls[i]))
          else if Controls[i] is TTabSheet then
               SetClear(TTabSheet(Controls[i]))    
          else if Controls[i] is TGroupBox then
               SetClear(TGroupBox(Controls[i]))
          //standard
          else if Controls[i] is TEdit then
               TEdit(Controls[i]).Text := ''
          else if Controls[i] is TMemo then
               TMemo(Controls[i]).Text := ''
          else if Controls[i] is TDateTimePicker then
               TDateTimePicker(Controls[i]).DateTime := Now
          else if Controls[i] is TRadioGroup then
               TRadioGroup(Controls[i]).ItemIndex := 0
          else if Controls[i] is TCheckBox then
               TCheckBox(Controls[i]).Checked := false   
          else if Controls[i] is TComboBox then
          begin
               //TComboBox(Controls[i]).Text := '';
               TComboBox(Controls[i]).ItemIndex := -1;
          end
          //db
          else if Controls[i] is TDBLookupComboBox then
               TDBLookupComboBox(Controls[i]).KeyValue := null
          else if Controls[i] is TDBLookupListBox then
               TDBLookupListBox(Controls[i]).KeyValue := null
          //jv
//          else if Controls[i] is TJvCalcEdit then
//               TJvCalcEdit(Controls[i]).Value := 0
//          else if Controls[i] is TJvValidateEdit then
//               TJvValidateEdit(Controls[i]).Value := 0

          ;
end;

procedure SetGlyphBtn(const btn: TObject; const ImgList: TCustomImageList; idx: Integer);
begin
     if (ImgList <> nil)and(btn <> nil) then
     with ImgList do
     if btn is TSpeedButton then
          with TSpeedButton(btn) do
          begin
               Glyph := nil;
               GetBitmap(idx, Glyph);
               AddDisabledImage (Glyph);
               NumGlyphs := 2;
          end
     else if btn is TBitBtn then
          with TBitBtn(btn) do
		  begin
               Glyph := nil;
               GetBitmap(idx, Glyph);
               AddDisabledImage (Glyph); 
               NumGlyphs := 2;
          end
     else if btn is TImage then
          with TImage(btn).Picture do
          begin
               Bitmap := nil;
               GetBitmap(idx, Bitmap);
               //AddDisabledImage (Bitmap);
          end
     else if btn is TAdvToolButton then
          with TAdvToolButton(btn) do
		begin
               SetButtonStyle (TAdvToolButton(btn), ImgList, idx);
          end
end;

procedure SetGlyphBtns (ABtns: array of TControl);
var i, n : Word;
begin
     n := Length(ABtns);
     if n > 0 then for i := 0 to n -1 do
     if Assigned(ABtns[i].Action) and Assigned(TAction(ABtns[i].Action).ActionList.Images) then
     with TAction(ABtns[i].Action).ActionList.Images, TAction(ABtns[i].Action) do
     begin
          if (ABtns[i] is TSpeedButton) then
          with TSpeedButton(ABtns[i]) do
          begin
               GetBitmap(ImageIndex, Glyph);
               AddDisabledImage (Glyph);
               NumGlyphs := 2;
          end
          else if ABtns[i] is TBitBtn then
          with TBitBtn(ABtns[i]) do
          begin
               GetBitmap(ImageIndex, Glyph);
               AddDisabledImage (Glyph);
               NumGlyphs := 2;
          end
          else if ABtns[i] is TAdvToolButton then
          with TAdvToolButton(ABtns[i]) do
          begin                                  
               SetButtonStyle (TAdvToolButton(ABtns[i]), TAction(ABtns[i].Action).ActionList.Images, TAction(ABtns[i].Action).ImageIndex);
          end;
     end;
end;

procedure SetAlignRight(e: TWinControl);
begin
     SetWindowLong(e.Handle,GWL_STYLE,GetWindowLong(e.Handle,GWL_STYLE) or ES_RIGHT);
end;   

function MmToPixel(mm:Double;ppi:SmallInt=96):Double;
begin
     Result := mm * ppi / 25.4;
end; 

function PixelToMm(px:Double;ppi:SmallInt=96):Double;
begin
     Result := px * 25.4 / ppi;
end;

function MmToPixelInt(mm:Double;ppi:SmallInt=96):Integer;
begin
     Result := Trunc(MmToPixel (mm, ppi));
end;

function PixelToMmInt(px:Double;ppi:SmallInt=96):Integer;
begin
     Result := Trunc(PixelToMm (px, ppi));
end;

function PenuhiTeks (s:string;MaxWidth:Integer;chr:Char='-';
     FontName:TFontName='Bookman Old Style';FontSize:Integer=12):string;
var bmp : TBitmap;
    List : TStrings;
    i : SmallInt;
    tmp : string;
begin
     MaxWidth := MmToPixelInt(MaxWidth);
     try
          bmp := TBitmap.Create;
          bmp.Canvas.Font.Name := FontName;
          bmp.Canvas.Font.Size := FontSize;

          List := TStringList.Create;
          ExtractStrings([' '], [], PChar(s), List);
          for i := 0 to List.Count -1 do
          begin
               if tmp <> '' then tmp := tmp+' ';
               if bmp.Canvas.TextWidth(tmp + List[i]) > MaxWidth then
               begin
                    Result := Result+tmp;
                    tmp := '';
               end;
               tmp := trim(tmp + List[i]);
          end;
          tmp := tmp + ';';
          while bmp.Canvas.TextWidth(tmp + chr+chr) < MaxWidth do tmp := tmp + chr+chr;
          Result := Result+tmp;
     finally
          if bmp <> nil then bmp.Free;
          if List <> nil then List.Free;
     end;

end;

{procedure StrArray (var Ar: TStrArray; const Values: array of string);
var ln : word;
begin
     ln := Length(Values);
     SetLength (Ar, ln);
     if ln > 0 then
          Move (Values[0], Ar[0], ln*SizeOf(string)); //
     //ShowMessage (InttoStr(SizeOf(string)));
end;}
{
procedure StrArray (var ArResult: array of string; const Values: array of string);
var ln, i : word;
begin
     ln := Length(Values);
     SetLength (ArResult, ln);
     for i := low(Values) to High (Values) do
          ArResult[i] := Values[i];
     //if ln > 0 then
     //     Move (Values[0], Result[0], ln*SizeOf(string)); //*SizeOf(string)
     //ShowMessage (InttoStr(SizeOf(string)));
end;

procedure IntArray (var ArResult: TIntArray; const Values: array of Integer);
var ln, i : word;
begin
     ln := Length(Values);
     SetLength (ArResult, ln);
     for i := low(Values) to High (Values) do
          ArResult[i] := Values[i];
     //if ln > 0 then
     //     Move (Values[0], Result[0], ln*SizeOf(string)); //*SizeOf(Integer)
     //ShowMessage (InttoStr(SizeOf(string)));
end;
}    
function InArray (s:string;a:array of string):Boolean;
var i : word;
begin
     Result := False;
     for i := Low(a) to High (a) do
     if CompareText(a[i], s)=0 then
     begin
          Result := True;
          Break;
     end;
end;    

procedure RoundCornerOf(Control: TWinControl) ;
var
   R: TRect;
   Rgn: HRGN;
begin
   with Control do
   begin
     R := ClientRect;
     rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20) ;
     Perform(EM_GETRECT, 0, lParam(@r)) ;
     InflateRect(r, - 4, - 4) ;
     Perform(EM_SETRECTNP, 0, lParam(@r)) ;
     SetWindowRgn(Handle, rgn, True) ;
     Invalidate;
   end;
end;     

function GetEditID (AEdit:TCustomEdit;AFieldIDName:string=''):Variant;
begin
     Result := Null;
     if (AEdit is TEdit)and(AEdit.Hint <> '') then Result := AEdit.Hint else
     if (AEdit is TDBEdit)and(AFieldIDName<>'')
          and (TDBEdit(AEdit).DataSource.DataSet.FieldByName(AFieldIDName).AsString <> '') then
          Result := TDBEdit(AEdit).DataSource.DataSet.FieldByName(AFieldIDName).AsString;
end;

function GetEditSID (AEdit:TCustomEdit;AFieldIDName:string=''):string;
begin
     if GetEditID(AEdit, AFieldIDName) = null then Result := 'null' else
     Result := GetEditID(AEdit, AFieldIDName);
end;

procedure SetEditValue (AEdit:TCustomEdit;AID:Variant;AText:string;AFieldIDName:string='');
begin
     if AEdit is TEdit then
     begin
          TEdit(AEdit).Hint := VarToStr(AID);
          TEdit(AEdit).Text := AText;
     end else
     if AEdit is TDBEdit then
     begin
          if AFieldIDName <> '' then
               TDBEdit(AEdit).DataSource.DataSet.FieldByName(AFieldIDName).AsString := VarToStr(AID);  
          TDBEdit(AEdit).DataSource.DataSet.FieldByName(TDBEdit(AEdit).DataField).AsString := AText;
     end;
end;

procedure ClearEditID (AEdit:TCustomEdit;AFieldIDName:string='');
begin
     if AEdit is TEdit then
     begin
          AEdit.Hint := '';
          AEdit.Text := '';
     end else
     if AEdit is TDBEdit then
     begin
          TDBEdit(AEdit).DataSource.DataSet.FieldByName(AFieldIDName).AsString := '';
          TDBEdit(AEdit).DataSource.DataSet.FieldByName(TDBEdit(AEdit).DataField).AsString := '';
     end;
end;

procedure ClearAllEditID (AEdit:array of TCustomEdit);
var n : Word;
begin
     for n := Low(AEdit) to High(AEdit) do
          ClearEditID(AEdit[n]);
end;
  
procedure ClearAllEditID (AEdit:array of TCustomEdit;AFieldIDName:array of string);
var n : Word;
begin
     if Length (AEdit) <> Length (AFieldIDName) then Exit;
     
     for n := Low(AEdit) to High(AEdit) do
          ClearEditID(AEdit[n],AFieldIDName[n]);
end;

procedure SetLookupComboBoxEh (AComboBoxEh: TDBLookupComboboxEh;
           ADataset : TDataSet; ADataSource : TDataSource;
           AMemTableEh : TMemTableEh; AKeyField, AListField: string;
           ADropDownColFields, ADropDownColTitles, ADropDownColWidths : string);
var i : Word; sl : TStrings;
begin
     if not ADataset.Active then ADataset.Open;
     AMemTableEh.LoadFromDataSet(ADataset, ADataset.RecordCount, lmCopy, True);
     ADataSource.DataSet := AMemTableEh;
     with AComboBoxEh do
     try
          sl := TStringList.Create;
          
          EditButton.Visible := False;
          AlwaysShowBorder := True;  
          //Flat := True;
          Style := csDropDownEh;
                            
          KeyField := AKeyField;
          ListField := AListField;
          ListSource := ADataSource;

          with DropDownBox do
          begin            
               ListSource := ADataSource;

               ListSourceAutoFilter := True;
               ListSourceAutoFilterType := lsftContainsEh;
               Options := [dlgColumnResizeEh, dlgColLinesEh];
               UseMultiTitle := True;
               AutoDrop := True;
               Rows := 27;
               ShowTitles := True;
               Sizable := True;
               Width := -1;

               with Columns do
               begin
                    Columns.Clear;
                    //Fields                 
                    sl.Clear;
                    ExtractStrings([';'], [], PChar(ADropDownColFields), sl);
                    for i := 0 to sl.Count -1 do
                    if trim(sl[i]) <> '' then
                    begin
                         Add; Items[i].FieldName := sl[i];
                         Items[i].Title.Font.Style := Items[i].Title.Font.Style + [fsBold];
                    end;
                    //Titles
                    sl.Clear;
                    ExtractStrings([';'], [], PChar(ADropDownColTitles), sl);
                    for i := 0 to sl.Count -1 do
                    if (Assigned(Items[i]))and(trim(sl[i]) <> '') then
                         Items[i].Title.Caption := sl[i];
                    //Widths    
                    sl.Clear;
                    ExtractStrings([';'], [], PChar(ADropDownColWidths), sl);
                    for i := 0 to sl.Count -1 do
                    if (Assigned(Items[i]))and(trim(sl[i]) <> '') then
                         Items[i].Width := StrToIntDef(sl[i],-1);
               end;
          end;
     finally
          if Assigned(sl) then FreeAndNil(sl);
     end;
end;

procedure CekComboboxEhKeyValueNull(ComboboxEh : TDBLookupComboboxEh; ButtonCari : TButton;
    ColorIfKeyValuesNull, ColorIfNotNull : TColor);
begin
    if ComboboxEh.KeyValue = null then
  ButtonCari.Click;

  if ComboboxEh.KeyValue = null then
  ComboboxEh.Color := ColorIfKeyValuesNull else
  ComboboxEh.Color := ColorIfNotNull;
end;

procedure DrawColGrid (SenderGrid:TObject; Rect: TRect; const AColumn: TColumn);
const
   CtrlState: array[Boolean] of integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED) ;
var TrueState : Boolean;
begin
     if Assigned (AColumn) and Assigned (AColumn.Field) then
     with AColumn, TDBGrid(SenderGrid).Canvas do
     begin
          Title.Alignment := taCenter;
          TrueState := ((Field is TNumericField)and(Field.AsInteger <> 0)) or
                       ((Field is TBooleanField)and(Field.AsBoolean));
          FillRect(Rect) ;
          if Field.IsNull then
               DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_INACTIVE) //grayed
          else
               DrawFrameControl(Handle,Rect, DFC_BUTTON, CtrlState[TrueState]) ; //checked or unchecked
     end;
end;

procedure ShowCheckInGrid (AFields:array of string; TrueStates:array of Boolean;
                         SenderGrid:TObject; Rect:TRect; const AColumn:TColumn);
const
   CtrlState: array[Boolean] of integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED) ;
var TrueState : Boolean;
    i, n : Word;
begin
     n := Length(AFields);
     if not ((n > 0) and (n = Length(TrueStates))
          and Assigned (AColumn) and Assigned (AColumn.Field)) then exit;

     for i := 0 to n-1 do
     if CompareText(AFields[i], AColumn.FieldName)=0 then
          with AColumn, TDBGrid(SenderGrid).Canvas do
          begin
               TrueState := TrueStates[i];
               Title.Alignment := taCenter;
               FillRect(Rect) ;
               if Field.IsNull then
                    DrawFrameControl(Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_INACTIVE) //grayed
               else
                    DrawFrameControl(Handle,Rect, DFC_BUTTON, CtrlState[TrueState]) ; //checked or unchecked
               exit;
          end;
end;

procedure FixDBGridColumnsWidth(const DBGrid: TDBGrid);
var
  i : integer;
  TotWidth : integer;
  VarWidth : integer;
  ResizableColumnCount : integer;
  AColumn : TColumn;
begin
     //still error
  //total width of all columns before resize
  TotWidth := 0;
  //how to divide any extra space in the grid
  VarWidth := 0;
  //how many columns need to be auto-resized
  ResizableColumnCount := 0;

  for i := 0 to -1 + DBGrid.Columns.Count do
  begin
    TotWidth := TotWidth + DBGrid.Columns[i].Width;
    if DBGrid.Columns[i].Field.Tag <> 0 then 
      Inc(ResizableColumnCount);
  end;

  //add 1px for the column separator line
  if dgColLines in DBGrid.Options then
    TotWidth := TotWidth + DBGrid.Columns.Count;

  //add indicator column width
  if dgIndicator in DBGrid.Options then
    TotWidth := TotWidth + IndicatorWidth;

  //width vale "left"
  VarWidth :=  DBGrid.ClientWidth - TotWidth;

  //Equally distribute VarWidth
  //to all auto-resizable columns
  if ResizableColumnCount > 0 then
    VarWidth := varWidth div ResizableColumnCount;

  for i := 0 to -1 + DBGrid.Columns.Count do
  begin
    AColumn := DBGrid.Columns[i];
    if AColumn.Field.Tag <> 0 then
    begin
      AColumn.Width := AColumn.Width + VarWidth;
      if AColumn.Width < AColumn.Field.Tag then
        AColumn.Width := AColumn.Field.Tag;
    end;
  end;
end;
      
procedure FitColGrid (SenderGrid:TObject; ColIndex:Smallint=-1;ColMinWidth:Smallint=-1);
var i, n : byte;
     w : integer;
begin                    
     with TDBGrid(SenderGrid) do
     if Assigned (Columns) and (Columns.Count > 0) then
     begin
          w := ClientWidth;
          n := Columns.Count;
          if ColIndex < 0 then ColIndex := n-1;
          if n > 0 then
          for i := 0 to n -1 do
          begin
               if (i <> ColIndex) and Columns[i].Visible then
                    w := w - (Columns[i].Width+1);
          end;

          //ShowScrollBar(Handle,SB_VERT,True); //always show vertical scrollbar
          {ShowScrollBar(Handle,SB_HORZ,False);
          if DataSource.DataSet.Active and (DataSource.DataSet.RecordCount > 1) then
               Columns[ColIndex].Width := w - 22 - (Columns.Count*2)
          else Columns[ColIndex].Width := w - 6 - (Columns.Count*2); }
          if Columns.Count > ColIndex then
          begin
               if (w - 13) < ColMinWidth then
                    Columns[ColIndex].Width := ColMinWidth
               else
                  Columns[ColIndex].Width := (w - 13);
          end;
     end;
end;   

procedure HideColsInGrid(const Grid: TDBGrid; Cols:array of Integer);
var i : Smallint;
begin
     for i := 0 to Grid.Columns.Count -1 do
         Grid.Columns[i].Visible := True;
     for i := Low (Cols) to High (Cols) do 
     if Assigned (Grid.Columns[Cols[i]]) then
          Grid.Columns[Cols[i]] .Visible := False;
end;    

procedure ShowColsInGrid(const Grid: TDBGrid; Cols:array of Integer);
var i : Smallint;
begin
     for i := 0 to Grid.Columns.Count -1 do
         Grid.Columns[i].Visible := False;
     for i := Low (Cols) to High (Cols) do
     if Assigned (Grid.Columns[Cols[i]]) then
          Grid.Columns[Cols[i]] .Visible := True;
end;   

procedure SetColWidthInGrid(const Grid: TDBGrid; AWidth: array of Integer);
var i : Word;
begin
     for i := 0 to Length(AWidth)-1 do
     if Assigned (Grid.Columns[i]) then
          Grid.Columns[i].Width := AWidth[i];
end;

procedure SetDisplayFormat (ADataset:TDataset;AField:array of string; AFormat:array of string);
var i : SmallInt;
begin
     with ADataset do
     begin
          for i := 0 to FieldCount -1 do
          if Fields[i].DataType = ftDate then
               TDateField(Fields[i]).DisplayFormat := 'dd MMM yyyy'
          else if Fields[i].DataType = ftTime then
               TTimeField(Fields[i]).DisplayFormat := 'HH:nn'
          else if Fields[i].DataType = ftDateTime then
               TDateTimeField(Fields[i]).DisplayFormat := 'dd MMM yyyy HH:nn'
          else if Fields[i].DataType in [ftWord, ftInteger, ftLargeInt] then
          with TNumericField(Fields[i]) do
          begin
               DisplayFormat := ',0';
               EditFormat := '0';
          end
          else if Fields[i].DataType in [ftFloat, ftCurrency] then
          with TNumericField(Fields[i]) do
          begin                      
               //DisplayFormat := ',0.00';     
               DisplayFormat := ',0.';
               EditFormat := '0.####';
          end;

          if Length(AField) > 0 then
          for i := Low(AField) to High(AField) do
          if FieldByName(AField[i]) is TDateTimeField then
               TDateTimeField(FieldByName(AField[i])).DisplayFormat := AFormat[i]
          else if FieldByName(AField[i]) is TNumericField then
               TNumericField(FieldByName(AField[i])).DisplayFormat := AFormat[i] ;    
     end;
end;

//------ graphic functions ---------------------------------------------------//
procedure Bitmap2GrayScale(const BitMap: TBitmap);
type
  TRGBArray = array[0..32767] of TRGBTriple;
  PRGBArray = ^TRGBArray;
var
  x, y, Gray: Integer;
  Row       : PRGBArray;
begin
     BitMap.PixelFormat := pf24Bit;
     for y := 0 to BitMap.Height - 1 do
     begin
          Row := BitMap.ScanLine[y];
          for x := 0 to BitMap.Width - 1 do
          begin
               Gray             := (Row[x].rgbtRed + Row[x].rgbtGreen + Row[x].rgbtBlue) div 3;
               Row[x].rgbtRed   := Gray;
               Row[x].rgbtGreen := Gray;
               Row[x].rgbtBlue  := Gray;
          end;
     end;
end;

procedure AddDisabledImage(const BitMap: TBitmap);
type
  TRGBArray = array[0..32767] of TRGBTriple;
  PRGBArray = ^TRGBArray;
var
  x, y, Gray: Integer;
  Row       : PRGBArray;
  w : Integer;
begin
     if BitMap = nil then Exit;
     w := BitMap.Width;
     BitMap.Width := w *2;

     BitMap.PixelFormat := pf24Bit;
     for y := 0 to BitMap.Height - 1 do
     begin
          Row := BitMap.ScanLine[y];
          for x := 0 to w - 1 do
          begin
               Gray             := (Row[x].rgbtRed + Row[x].rgbtGreen + Row[x].rgbtBlue) div 3;
               Row[w+x].rgbtRed   := Gray;
               Row[w+x].rgbtGreen := Gray;
               Row[w+x].rgbtBlue  := Gray;
          end;
     end;
end;  

procedure AddGrayImg(Bitmap: TBitmap);
type
  TRGBArray = array[0..32767] of TRGBTriple;
  PRGBArray = ^TRGBArray;
var
  Gray : Integer;
  Row  : PRGBArray;
  x, y,
  h, w : Integer;
  bmp  : TBitmap;
begin
     if BitMap = nil then Exit;
     try
          w := BitMap.Width;
          h := BitMap.Height;

          bmp := TBitmap.Create;
          bmp.Width := w * 2;
          bmp.Height := h;
          
          bmp.Canvas.Draw(0,0, Bitmap);
                                       
          bmp.PixelFormat := pf24Bit;
          for y := 0 to h - 1 do
          begin
               Row := bmp.ScanLine[y];
               for x := 0 to w - 1 do
               begin
                    Gray             := (Row[x].rgbtRed + Row[x].rgbtGreen + Row[x].rgbtBlue) div 3;
                    Row[w+x].rgbtRed   := Gray;
                    Row[w+x].rgbtGreen := Gray;
                    Row[w+x].rgbtBlue  := Gray;
               end;
          end;
          Bitmap.Assign(bmp);
     finally
          FreeAndNil(bmp);
     end;
end;

procedure AddGrayImgBtn(ABtns: array of TControl);
var i, n : Word;
begin
     n := Length(ABtns);
     if n > 0 then for i := 0 to n -1 do
     begin
          if (ABtns[i] is TSpeedButton) then
          with TSpeedButton(ABtns[i]) do
          begin
               AddGrayImg(Glyph);
               NumGlyphs := 2;
          end
          else if ABtns[i] is TBitBtn then
          with TBitBtn(ABtns[i]) do
          begin
               AddGrayImg(Glyph);
               NumGlyphs := 2;
          end;
     end;
end;

function IsDateTimePickerChecked(ADateTimePicker: TDateTimePicker): Boolean;
var
  SysTime: SYSTEMTIME;
begin
  Result := DateTime_GetSystemTime(ADateTimePicker.Handle, SysTime) = GDT_VALID;
end;

procedure ChangeParent (AComp,ANewParent:TWinControl);
begin
     AComp.Parent.RemoveControl(AComp);
     ANewParent.InsertControl(AComp);
end;

procedure CopyEdtToClipboard(Edt : TEdit);
begin
  Clipboard.AsText := Edt.Text;
  Informasi('Telah dicopy ke clipboard');
end;

procedure CopyTextToClipboard(Txt : string);
begin
  Clipboard.AsText := Txt;
  Informasi('Telah dicopy ke clipboard');
end;

end.