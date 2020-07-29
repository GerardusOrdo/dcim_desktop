unit Style;

interface
uses
  SysUtils, Classes, Windows, Graphics, DateUtils, Controls, Math, Forms,
  Dialogs, AdvToolBtn, IniFiles, TypeUnit, ImgList;
type
  NThemeStyle = (tsRed, tsPink, tsPurple, tsDeepPurple, tsDarkBlue, tsBlue,
                tsLightBlue, tsTeal, tsDarkTeal, tsDarkGreen, tsGreen, tsLightGreen,
                tsYellow, tsDarkYellow, tsOrange, tsDarkOrange);
  NIndexColor = (icMenuUtamaColor, icMenuUtamaTabColor, icMenuUtamaAppearanceColor
               , icMenuUtamaCaptionColor, icBaseFormColor, icMenuUtamaButtonColor
               , icBaseColorLight, icTitleFontColor);
  NButtonColor = (bcFontColor, bcDefault, bcDown, bcHot);
  NJenisAnimasi = (BackEaseIn, backEaseOut, BackEaseInOut,
                   BounceEaseIn, BounceEaseOut,
                   CircEaseIn, CircEaseOut, CircEaseInOut,
                   CubicEaseIn, CubicEaseOut, CubicEaseInOut,
                   ElasticEaseIn, ElasticEaseOut,
                   ExpoEaseIn, ExpoEaseOut, ExpoEaseInOut,
                   QuadEaseIn, QuadEaseOut, QuadEaseInOut,
                   QuartEaseIn, QuartEaseOut, QuartEaseInOut,
                   QuintEaseIn, QuintEaseOut, QuintEaseInOut,
                   SineEaseIn, SineEaseOut, SineEaseInOut);
  NArahSlide = (Vertical, Horizontal);
var
  WarnaMenuUtamaTerpilih, WarnaBaseTerpilih : NThemeStyle;

const
  CLR_WHITE = $00FAFAFA;
  CLR_BLACK = $00212121; // $00424242 $001E1E1E

  function St_backEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_backEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_backEaseInOut(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_bounceEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_bounceEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_circEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_circEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_circEaseInOut(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_cubicEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_cubicEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_cubicEaseInOut(p: Extended; firstNum: integer; diff: integer): Extended;
//  function St_elasticEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
//  function St_elasticEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_expoEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_expoEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
//  function St_expoEaseInOut(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_quadEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_quadEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_quadEaseInOut(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_quartEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_quartEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_quartEaseInOut(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_quintEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_quintEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_quintEaseInOut(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_sineEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_sineEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
  function St_sineEaseInOut(p: Extended; firstNum: integer; diff: integer): Extended;

  function SetAnimationSlideStyle(JenisAnimasi : NJenisAnimasi; Time: Extended; StartPos: Integer; Distance: Integer) : Extended;

  procedure Anim_Slide(ControlComp: TControl; JenisAnimasi: NJenisAnimasi; Arah: NArahSlide; AnimTime: Integer; Distance: Integer);

  function GetButtonColor (AThemeStyle: NThemeStyle; AButtonState: NButtonColor): TColor;
  function GetBaseColor   (AThemeStyle: NThemeStyle; AIndexColor: NIndexColor): TColor;

  procedure SetButtonStyle(AButton: TAdvToolButton; const AImgList: TCustomImageList; Idx: Integer);

  procedure LoadStyleSetting;
  procedure SaveStyleSetting;

  function WarnaThemeBase (AIndexColor: NIndexColor):TColor;                     
  function WarnaThemeMenuUtama (AIndexColor: NIndexColor):TColor;

implementation

uses ArComponents;
const  
  StRed         : array [NIndexColor] of TColor = ($001C1BB7, $002A29C7, $002E2FD3, $003539E6, $003443F3, $005054EF, $007572E5, $00FAFAFA);
  StPink        : array [NIndexColor] of TColor = ($004F0E89, $005714AD, $005B17C2, $00601AD8, $00631EEA, $007A40EC, $009262F0, $00FAFAFA);
  StPurple      : array [NIndexColor] of TColor = ($008C144B, $009A1B6A, $00A21F7A, $00AA248E, $00B1289C, $00BD48AB, $00C768B9, $00FAFAFA);
  StDeepPurple  : array [NIndexColor] of TColor = ($00921A32, $009F2845, $00A72D51, $00B0345E, $00B73B67, $00C1577E, $00CD7495, $00FAFAFA);
  StDarkBlue    : array [NIndexColor] of TColor = ($007E231A, $007E231A, $00A03F31, $00AB4939, $00B5513F, $00BD6B5C, $00CC8679, $00FAFAFA);
  StBlue        : array [NIndexColor] of TColor = ($00A1470C, $00C16516, $00D3751C, $00E6871F, $00F59621, $00F6A542, $00F6B465, $00FAFAFA);
  StLightBlue   : array [NIndexColor] of TColor = ($009A5702, $00BD7702, $00D28702, $00E69B03, $00F5AA02, $00F7B729, $00F6C250, $00FAFAFA);
  StTeal        : array [NIndexColor] of TColor = ($00646001, $00908301, $00A69800, $00C0AC01, $00D5BC00, $00DBC627, $00E2CF4E, $00FAFAFA);
  stDarkTeal    : array [NIndexColor] of TColor = ($003F4D00, $005B6900, $006A7900, $007A8800, $00879501, $009BA627, $00ADB74D, $00FAFAFA);
  stDarkGreen   : array [NIndexColor] of TColor = ($00205F1A, $00327D2F, $003D8E37, $0047A043, $0050B04C, $006ABB66, $0084C881, $00FAFAFA);
  stGreen       : array [NIndexColor] of TColor = ($001E6933, $002E8A55, $00399F68, $0043B37D, $004BC38C, $0064CD9C, $0082D5AF, $00FAFAFA);
  stLightGreen  : array [NIndexColor] of TColor = ($00177882, $00269D9F, $002CB4B0, $0035CAC0, $0039DCCD, $0058E0D4, $0076E7DD, $00FAFAFA);
  stYellow      : array [NIndexColor] of TColor = ($001980F4, $0026A9FA, $002EC0FA, $0036D7FD, $003BE9FF, $0056ECFF, $0077F2FF, $00FAFAFA);
  StDarkYellow  : array [NIndexColor] of TColor = ($000070FF, $000190FD, $0002A0FE, $0000B2FF, $0009C1FD, $0028C9FF, $0050D6FF, $00FAFAFA);
  StOrange      : array [NIndexColor] of TColor = ($000051E6, $00006DEE, $00017CF6, $00018BFB, $000099FE, $0025A7FC, $004EB7FF, $00FAFAFA);
  StDarkOrange  : array [NIndexColor] of TColor = ($000D37C0, $001543D7, $00194AE6, $001E51F5, $002257FE, $004470FF, $00668BFF, $00FAFAFA);

  BtnRed        : array [NButtonColor] of TColor = ($00FAFAFA, $003443F3, $002E2FD3, $005353FF);
  BtnPink       : array [NButtonColor] of TColor = ($00FAFAFA, $00631EEA, $005B19BF, $008141FF);
  BtnPurple     : array [NButtonColor] of TColor = ($00FAFAFA, $00B1289C, $00A21F7A, $00FC40E0);
  BtnDeepPurple : array [NButtonColor] of TColor = ($00FAFAFA, $00B73B67, $00A72D51, $00FF4E7D);
  BtnDarkBlue   : array [NButtonColor] of TColor = ($00FAFAFA, $00B5513F, $00A03F31, $00FE6D54);
  BtnBlue       : array [NButtonColor] of TColor = ($00FAFAFA, $00F59621, $00D37619, $00FE8946);
  BtnLightBlue  : array [NButtonColor] of TColor = ($00FAFAFA, $00F5A903, $00D28702, $00FFC341);
  BtnTeal       : array [NButtonColor] of TColor = ($00FAFAFA, $00D5BC00, $00A69800, $00FFFF19);
  BtnDarkTeal   : array [NButtonColor] of TColor = ($00FAFAFA, $00859700, $006A7900, $00DBFF65);
  BtnDarkGreen  : array [NButtonColor] of TColor = ($00FAFAFA, $0050B04C, $003D8E37, $00AEF069);
  BtnGreen      : array [NButtonColor] of TColor = ($00FAFAFA, $004BC38C, $00399F68, $0059FFB2);
  BtnLightGreen : array [NButtonColor] of TColor = ($00FAFAFA, $0039DCCD, $002CB4B0, $0042FFEF);
  BtnYellow     : array [NButtonColor] of TColor = ($00FAFAFA, $003BE9FF, $002EC0FA, $0000FFFF);
  BtnDarkYellow : array [NButtonColor] of TColor = ($00FAFAFA, $0007C1FE, $0000A1FE, $0042D7FF);
  BtnOrange     : array [NButtonColor] of TColor = ($00FAFAFA, $00019AFD, $00017CF6, $0041ABFF);
  BtnDarkOrange : array [NButtonColor] of TColor = ($00FAFAFA, $002257FE, $00194AE6, $00416EFF);

function St_backEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c, s: Extended;
begin
  c := diff;
  s := 1.70158;
  result :=  c*p*p*((s+1)*p - s) + firstNum;
end;

function St_backEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c, s: Extended;
begin
  c := diff;
  s := 1.70158;
  p := p - 1;
  result :=  c*(p*p*((s+1)*p + s) + 1) + firstNum;
end;

function St_backEaseInOut(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c, s: Extended;
begin
  c := diff;
  s := 1.70158 * 1.525;
  p := p / 0.5;
  if (p < 1) then
    result := c/2*(p*p*((s + 1)*p - s))  + firstNum
  else
  begin
    p := p - 2;
    result := c/2*(p*p*((s + 1)*p + s) + 2) + firstNum; 
  end;
end;

function St_bounceEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c, inv: Extended;
begin
  c := diff;
  inv := St_bounceEaseOut(1 - p, 0, diff);
  result := c - inv + firstNum;
end;

function St_bounceEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;
  if ( p < 1/2.75) then
    result := c*(7.5625*p*p) + firstNum
  else if (p < 2/2.75) then
  begin
    p := p - (1.5/2.75);
    result := c*(7.5625*p*p + 0.75) + firstNum;
  end
  else if (p < 2.5/2.75) then
  begin
    p := p - (2.25/2.75);
    result := c*(7.5625*p*p + 0.9375) + firstNum;
  end
  else
  begin
    p := p - (2.625/2.75);
    result := c*(7.5625*p*p + 0.984375) + firstNum;
  end;
end;

function St_circEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;
  result := -c * (sqrt(1 - p*p) - 1 ) + firstNum;
end;

function St_circEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;
  p := p - 1;
  result := c * sqrt(1 - p*p) + firstNum;
end;

function St_circEaseInOut(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;
  p := p / 0.5;
  if (p < 1) then
    result := -c/2 * (sqrt(1 - p*p) - 1) + firstNum
  else
  begin
    p := p - 2;
    result := c/2 * (sqrt(1 - p*p) + 1) + firstNum;
  end;
end;

function St_cubicEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;
  result := c * (p*p*p) + firstNum;
end;

function St_cubicEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;
  p := p -1;
  result := c * (p*p*p + 1) + firstNum;
end;

function St_cubicEaseInOut(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;
  p := p / 0.5;
  if (p < 1) then
    result := c/2*p*p*p + firstNum
  else
  begin
    p := p - 2;
    result := c/2*(p*p*p + 2) + firstNum; 
  end;
end;

//function St_elasticEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
//var
//  c, period, s, amplitude: Extended;
//begin
//  c := diff;
//
//  if p = 0 then Exit(firstNum);
//  if p = 1 then Exit(c);
//
//  period := 0.25;
//  amplitude := c;
//
//  if (amplitude < abs(c)) then
//  begin
//    amplitude := c;
//    s := period / 4;
//  end
//  else
//  begin
//    s := period/(2*PI) * Math.ArcSin(c/amplitude);
//  end;
//  p := p - 1;
//  result := -(amplitude*Math.Power(2, 10*p) * sin( (p*1-s)*(2*PI)/period)) + firstNum;
//end;

//function St_elasticEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
//var
//  c, period, s, amplitude: Extended;
//begin
//  c := diff;
//
//  if diff = 0 then Exit(c);
//  if p = 0 then Exit(firstNum);
//  if p = 1 then Exit(c);
//
//  period := 0.25;
//  amplitude := c;
//
//  if (amplitude < abs(c)) then
//  begin
//    amplitude := c;
//    s := period / 4;
//  end
//  else
//  begin
//    s := period/(2*PI) * Math.ArcSin(c/amplitude);
//  end;
//  result := -(amplitude*Math.Power(2, -10*p) * sin( (p*1-s)*(2*PI)/period)) + c + firstNum;
//end;

function St_expoEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;

  if (p = 0) then
    result := firstNum
  else
  begin
    p := p - 1;
    result := c * Math.Power(2, 10*p) + firstNum - c * 0.001;
  end;
end;

function St_expoEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;

  if (p = 1) then
    result := c
  else
  begin
    result := diff * 1.001 * (-Math.Power(2, -10*p) + 1) + firstNum;
  end;
end;

//function St_expoEaseInOut(p: Extended; firstNum: integer; diff: integer): Extended;
//var
//  c: Extended;
//begin
//  c := diff;
//
//  if (p = 0) then Exit(firstNum);
//  if (p = 1) then Exit(c);
//
//  p := p / 0.5;
//  if p < 1 then
//    result := c/2 * Math.Power(2, 10 * (p-1)) + firstNum - c * 0.0005
//  else
//  begin
//    p := p - 1;
//    result := c/2 * 1.0005 * (-Math.Power(2, -10 * p) + 2) + firstNum;
//  end;
//end;

function St_quadEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;

  result := c * p*p + firstNum;
end;

function St_quadEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;

  result := -c * p*(p-2) + firstNum;
end;

function St_quadEaseInOut(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;

  p := p / 0.5;
  if p < 1 then
    result := c/2*p*p + firstNum
  else
  begin
    p := p - 1;
    result := -c/2 * (p*(p-2) - 1) + firstNum;
  end;
end;

function St_quartEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;

  result := c * p*p*p*p + firstNum;
end;

function St_quartEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;

  p := p - 1;
  result := -c * (p*p*p*p - 1) + firstNum;
end;

function St_quartEaseInOut(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;

  p := p / 0.5;
  if p < 1 then
    result := c/2*p*p*p*p + firstNum
  else
  begin
    p := p - 2;
    result := -c/2 * (p*p*p*p - 2) + firstNum;
  end;
end;

function St_quintEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;

  result := c * p*p*p*p*p + firstNum;
end;

function St_quintEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;

  p := p - 1;
  result := c * (p*p*p*p*p + 1) + firstNum;
end;

function St_quintEaseInOut(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;

  p := p / 0.5;
  if p < 1 then
    result := c/2*p*p*p*p*p + firstNum
  else
  begin
    p := p - 2;
    result := c/2 * (p*p*p*p*p + 2) + firstNum;
  end;
end;

function St_sineEaseIn(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;

  result := -c * cos(p*(PI/2)) + c + firstNum;
end;

function St_sineEaseOut(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;

  result := c * sin(p*(PI/2)) + firstNum;
end;

function St_sineEaseInOut(p: Extended; firstNum: integer; diff: integer): Extended;
var
  c: Extended;
begin
  c := diff;

  result := -c/2 * (cos(PI*p) - 1) + firstNum;
end;

function SetAnimationSlideStyle(JenisAnimasi : NJenisAnimasi; Time: Extended; StartPos: Integer; Distance: Integer) : Extended;
begin
  case JenisAnimasi of
  BackEaseIn :
    begin
      Result := St_backEaseIn(Time, StartPos, Distance);
    end;
  backEaseOut :
    begin
      Result := St_backEaseOut(Time, StartPos, Distance);
    end;
  BackEaseInOut :
    begin
      Result := St_backEaseInOut(Time, StartPos, Distance);
    end;
  BounceEaseIn :
    begin
      Result := St_bounceEaseIn(Time, StartPos, Distance);
    end;
  BounceEaseOut :
    begin
      Result := St_bounceEaseOut(Time, StartPos, Distance);
    end;
  CircEaseIn :
    begin
      Result := St_circEaseIn(Time, StartPos, Distance);
    end;
  CircEaseOut :
    begin
      Result := St_circEaseOut(Time, StartPos, Distance);
    end;
  CircEaseInOut :
    begin
      Result := St_circEaseInOut(Time, StartPos, Distance);
    end;
  CubicEaseIn :
    begin
      Result := St_cubicEaseIn(Time, StartPos, Distance);
    end;
  CubicEaseOut :
    begin
      Result := St_cubicEaseOut(Time, StartPos, Distance);
    end;
  CubicEaseInOut :
    begin
      Result := St_cubicEaseInOut(Time, StartPos, Distance);
    end;
  ElasticEaseIn :
    begin
//      Result := St_ElasticEaseIn(Time, StartPos, Distance);
      Exit;
    end;
  ElasticEaseOut :
    begin
//      Result := St_ElasticEaseOut(Time, StartPos, Distance);
      Exit;
    end;
  ExpoEaseIn :
    begin
      Result := St_expoEaseIn(Time, StartPos, Distance);
    end;
  ExpoEaseOut :
    begin
      Result := St_expoEaseOut(Time, StartPos, Distance);
    end;
  ExpoEaseInOut :
    begin
//      Result := St_ExpoEaseInOut(Time, StartPos, Distance);
      Exit;
    end;
  QuadEaseIn :
    begin
      Result := St_quadEaseIn(Time, StartPos, Distance);
    end;
  QuadEaseOut :
    begin
      Result := St_quadEaseOut(Time, StartPos, Distance);
    end;
  QuadEaseInOut :
    begin
      Result := St_quadEaseInOut(Time, StartPos, Distance);
    end;
  QuartEaseIn :
    begin
      Result := St_quartEaseIn(Time, StartPos, Distance);
    end;
  QuartEaseOut :
    begin
      Result := St_quartEaseOut(Time, StartPos, Distance);
    end;
  QuartEaseInOut :
    begin
      Result := St_quartEaseInOut(Time, StartPos, Distance);
    end;
  QuintEaseIn :
    begin
      Result := St_quintEaseIn(Time, StartPos, Distance);
    end;
  QuintEaseOut :
    begin
      Result := St_quintEaseOut(Time, StartPos, Distance);
    end;
  QuintEaseInOut :
    begin
      Result := St_quintEaseInOut(Time, StartPos, Distance);
    end;
  SineEaseIn :
    begin
      Result := St_sineEaseIn(Time, StartPos, Distance);
    end;
  SineEaseOut :
    begin
      Result := St_sineEaseOut(Time, StartPos, Distance);
    end;
  SineEaseInOut :
    begin
      Result := St_sineEaseInOut(Time, StartPos, Distance);
    end;
  else
    begin
      Result := St_sineEaseInOut(Time, StartPos, Distance);
    end;
  end;
end;


procedure Anim_Slide(ControlComp: TControl; JenisAnimasi: NJenisAnimasi; Arah: NArahSlide; AnimTime: Integer; Distance: Integer);
var
  startPos: integer;
  startTime: TDateTime;
begin
  startTime := Now;
  startPos := ControlComp.Left;
  case Arah of
  Vertical :
    begin
      while dateUtils.MilliSecondsBetween(StartTime, Now) < AnimTime do
      begin
        if not(Assigned(ControlComp)) then Exit;
        ControlComp.Top := Round( SetAnimationSlideStyle(JenisAnimasi,
          MilliSecondsBetween(StartTime, Now) / AnimTime, startPos, distance));
        Application.ProcessMessages;
      end;
    end;
  else
    begin
      while dateUtils.MilliSecondsBetween(StartTime, Now) < AnimTime do
      begin
        if not(Assigned(ControlComp)) then Exit;
        ControlComp.Left := Round( SetAnimationSlideStyle(JenisAnimasi,
          MilliSecondsBetween(StartTime, Now) / AnimTime, startPos, distance));
        Application.ProcessMessages;
      end;
    end;
  end;
end;

function GetButtonColor (AThemeStyle: NThemeStyle; AButtonState: NButtonColor): TColor;
begin
  case AThemeStyle of
  tsRed         : Result := btnRed[AButtonState];
  tsPink        : Result := btnPink[AButtonState];
  tsPurple      : Result := btnPurple[AButtonState];
  tsDeepPurple  : Result := btnDeepPurple[AButtonState];
  tsDarkBlue    : Result := btnDarkBlue[AButtonState];
  tsBlue        : Result := btnBlue[AButtonState];
  tsLightBlue   : Result := btnLightBlue[AButtonState];
  tsTeal        : Result := btnTeal[AButtonState];
  tsDarkTeal    : Result := btndarkTeal[AButtonState];
  tsDarkGreen   : Result := btnDarkGreen[AButtonState];
  tsGreen       : Result := btnGreen[AButtonState];
  tsLightGreen  : Result := btnLightGreen[AButtonState];
  tsYellow      : Result := btnYellow[AButtonState];
  tsDarkYellow  : Result := btnDarkYellow[AButtonState];
  tsOrange      : Result := btnOrange[AButtonState];
  tsDarkOrange  : Result := btnDarkOrange[AButtonState]
  else
  Result := btnred[AButtonState];
  end;
end;    

function GetBaseColor   (AThemeStyle: NThemeStyle; AIndexColor: NIndexColor): TColor;
begin
  case AThemeStyle of
  tsRed         : Result := StRed[AIndexColor];
  tsPink        : Result := StPink[AIndexColor];
  tsPurple      : Result := StPurple[AIndexColor];
  tsDeepPurple  : Result := StDeepPurple[AIndexColor];
  tsDarkBlue    : Result := StDarkBlue[AIndexColor];
  tsBlue        : Result := StBlue[AIndexColor];
  tsLightBlue   : Result := StLightBlue[AIndexColor];
  tsTeal        : Result := StTeal[AIndexColor];
  tsDarkTeal    : Result := StdarkTeal[AIndexColor];
  tsDarkGreen   : Result := StDarkGreen[AIndexColor];
  tsGreen       : Result := StGreen[AIndexColor];
  tsLightGreen  : Result := StLightGreen[AIndexColor];
  tsYellow      : Result := StYellow[AIndexColor];
  tsDarkYellow  : Result := StDarkYellow[AIndexColor];
  tsOrange      : Result := StOrange[AIndexColor];
  tsDarkOrange  : Result := StDarkOrange[AIndexColor]
  else
  Result := Stred[AIndexColor];
  end;
end;

procedure SetButtonStyle(AButton: TAdvToolButton; const AImgList: TCustomImageList; Idx: Integer);
type 
  NImgBase = (ibClose, ibAdd, ibEdit, ibDelete, ibRefresh, ibDetail,
             ibPrint, ibSave, ibOK, ibCancel, ibPreview, ibFind,
             ibLayout, ibDate, ibDatePrev, ibDateNext, ibLoad,
             ibFilter, ibCheck, ibNone, ibDb, ibGo, ibClear,
             ibFileFind, ibSetting, ibReplace, ibCapture);
var
     AButtonStyle: NThemeStyle;
begin
     case NImgBase(Idx) of
     ibCancel, ibDelete, ibDetail : AButtonStyle := tsRed;
     //: AButtonStyle := tsPink;
     ibPrint, ibPreview, ibDatePrev, ibDateNext : AButtonStyle := tsPurple;
     //: AButtonStyle := tsDarkBlue;
     ibOK, ibEdit : AButtonStyle := tsBlue;
     ibSave, ibDate : AButtonStyle := tsLightBlue;
     //6 : AButtonStyle := tsTeal;
     ibSetting : AButtonStyle := tsDarkTeal;
     ibAdd : AButtonStyle := tsDarkGreen;
     //9 : AButtonStyle := tsGreen;
     //10: AButtonStyle := tsLightGreen;
     //11: AButtonStyle := tsYellow;
     //12: AButtonStyle := tsDarkYellow;
     ibRefresh: AButtonStyle := tsOrange;
     //ib: AButtonStyle := tsDarkOrange;
     else AButtonStyle := tsDarkGreen;
     end;
     AButton.Font.Color := GetButtonColor(AButtonStyle, bcFontColor);
     AButton.Color      := GetButtonColor(AButtonStyle, bcDefault);
     AButton.ColorDown  := GetButtonColor(AButtonStyle, bcDown);
     AButton.ColorHot   := GetButtonColor(AButtonStyle, bcHot);

     AButton.Images := AImgList;
     AButton.ImageIndex := idx;
     AButton.GlyphDisabled := AButton.Glyph;
     AddDisabledImage(AButton.GlyphDisabled);
     
     //AImgList.GetBitmap (idx, AButton.Glyph);
     //AImgList.GetBitmap (idx, AButton.GlyphDisabled);
     //AImgList.GetBitmap (idx, AButton.GlyphHot);
     //AImgList.GetBitmap (idx, AButton.GlyphDown);

end;

procedure LoadStyleSetting;
var INI : TIniFile;
begin
     WarnaMenuUtamaTerpilih := tsDarkBlue;
     WarnaBaseTerpilih      := tsDarkBlue;
     if FileExists (PathApp+FILE_INI) then
     try
          INI := TIniFile.Create (PathApp+FILE_INI);
          WarnaMenuUtamaTerpilih := NThemeStyle(INI.ReadInteger('Display', 'MenuUtama', 4));
          WarnaBaseTerpilih      := NThemeStyle(INI.ReadInteger('Display', 'Base', 4));
     finally
          if INI <> nil then INI.Free;
     end;
end;

procedure SaveStyleSetting;
var INI : TIniFile;
begin
     if FileExists (PathApp+FILE_INI) then
     try
          INI := TIniFile.Create (PathApp+FILE_INI);
          INI.WriteInteger('Display', 'MenuUtama', Integer(WarnaMenuUtamaTerpilih));
          INI.WriteInteger('Display', 'Base', Integer(WarnaBaseTerpilih));
     finally
          if INI <> nil then INI.Free;
     end;
end;

function WarnaThemeBase (AIndexColor: NIndexColor):TColor;
begin
     Result := GetBaseColor(WarnaBaseTerpilih, AIndexColor);
end;

function WarnaThemeMenuUtama (AIndexColor: NIndexColor):TColor;
begin
     Result := GetBaseColor(WarnaMenuUtamaTerpilih, AIndexColor);
end;

end.
