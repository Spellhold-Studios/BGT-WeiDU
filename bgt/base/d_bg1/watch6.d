BEGIN ~watch6~

IF ~True()~ THEN BEGIN 0
  SAY @20041
  IF ~~ THEN REPLY @20042 GOTO 1
  IF ~~ THEN REPLY @20044 GOTO 2
  IF ~Dead("Rieltar")~ THEN REPLY @11841 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @20043
  IF ~~ THEN REPLY @20045 GOTO 3
  IF ~~ THEN REPLY @20046 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @20047
  IF ~~ THEN DO ~SetGlobal("Arrested","GLOBAL",1)
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

IF ~~ THEN BEGIN 3
  SAY @20048
  IF ~~ THEN REPLY @20050 GOTO 2
END

IF ~~ THEN BEGIN 4
  SAY @20051
  IF ~~ THEN DO ~ForceSpell(Player1,SAREVOK_STRIKE)
Wait(3)
Kill(Player1)~ EXIT
END
