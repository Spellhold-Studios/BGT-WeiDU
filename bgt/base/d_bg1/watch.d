BEGIN ~watch~

IF ~Global("Criminal","GLOBAL",1)~ THEN BEGIN 0
  SAY @15195
  IF ~~ THEN REPLY @15196 DO ~ForceSpell(Player1,SAREVOK_STRIKE)
Wait(3)
Kill(Player1)~ EXIT
  IF ~~ THEN REPLY @15197 DO ~SetGlobal("Arrested","GLOBAL",1)
ActionOverride(Player1,LeaveAreaLUAPanic("AR6531","",[351.184],12))
ActionOverride(Player1,LeaveAreaLUA("AR6531","",[351.184],12))
ActionOverride(Player1,SetMasterArea("AR6526"))
ActionOverride(Player2,LeaveAreaLUA("AR6531","",[344.222],12))
ActionOverride(Player3,LeaveAreaLUA("AR6531","",[412.190],12))
ActionOverride(Player4,LeaveAreaLUA("AR6531","",[411.235],12))
ActionOverride(Player5,LeaveAreaLUA("AR6531","",[502.197],12))
ActionOverride(Player6,LeaveAreaLUA("AR6531","",[493.241],12))
~ EXIT
  IF ~Dead("RIELTAR")
~ THEN REPLY @11846 DO ~SetGlobal("Arrested","GLOBAL",1)
ActionOverride(Player1,LeaveAreaLUAPanic("AR6531","",[351.184],12))
ActionOverride(Player1,LeaveAreaLUA("AR6531","",[351.184],12))
ActionOverride(Player1,SetMasterArea("AR6526"))
ActionOverride(Player2,LeaveAreaLUA("AR6531","",[344.222],12))
ActionOverride(Player3,LeaveAreaLUA("AR6531","",[412.190],12))
ActionOverride(Player4,LeaveAreaLUA("AR6531","",[411.235],12))
ActionOverride(Player5,LeaveAreaLUA("AR6531","",[502.197],12))
ActionOverride(Player6,LeaveAreaLUA("AR6531","",[493.241],12))
~ EXIT
END

IF ~RandomNum(5,1)~ THEN BEGIN 1
  SAY @15198
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)~ THEN BEGIN 2
  SAY @15926
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)~ THEN BEGIN 3
  SAY @15927
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)~ THEN BEGIN 4
  SAY @15928
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)~ THEN BEGIN 5
  SAY @15953
  IF ~~ THEN EXIT
END
