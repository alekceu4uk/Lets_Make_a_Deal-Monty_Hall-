program Project1;

uses
  System.SysUtils, System.Math, Windows;

var
  win1Count, win2Count, gamesCount, i, y: integer;
  auto: array[1..3] of boolean;
  percent: double;

const
  DOORS_COUNT = 3;

begin
  win1Count := 0;
  win2Count := 0;
  gamesCount := 10000000;
  Randomize;
  for i := 0 to gamesCount - 1 do
  begin
    for y := 1 to 3 do
      auto[y] := false;
    auto[Random(DOORS_COUNT)+1] := TRUE;

    if auto[Random(DOORS_COUNT)+1] = TRUE then
      inc(win1Count)
    else
      inc(win2Count);
  end;

  WriteLn('Number of doors: ' + IntToStr(DOORS_COUNT));

  percent := (100/GamesCount * win1Count);
  WriteLn(Format('%d games played, %d times won the car without changing the door (%.4f%%)', [GamesCount, win1Count, percent]));

  percent := (100/GamesCount * win2Count);
  WriteLn(Format('%d games played, %d times won the car by changing the door (%.4f%%)', [GamesCount, win2Count, percent]));
end.
