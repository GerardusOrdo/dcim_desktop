unit ArManager;

interface
uses
  SysUtils, Classes, Windows, Graphics, DateUtils, Controls, Types, TypeTrans;

procedure CreateLogData(activity, menu : string);

implementation

uses
  ArDBModule, ArFunctions, TypeUnit;

procedure CreateLogData(activity, menu : string);
begin
  //log_user
  ExecQry('insert into log_user(id_user, time, activity, targetmenu) values ('+
    _Q(IntToStr(User.IDUser))+', NOW(), '+_Q(activity)+', '+_Q(menu)+')');
end;

end.
