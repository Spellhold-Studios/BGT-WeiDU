BEGIN ~gatewa2~

IF ~~ THEN BEGIN 0
  SAY @16805
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @16806
  IF ~~ THEN DO ~EscapeArea()~ JOURNAL @310790 EXIT
END

IF ~Global("Criminal","GLOBAL",1)~ THEN BEGIN 2
  SAY @16810
  IF ~~ THEN REPLY @16814 GOTO 3
  IF ~~ THEN REPLY @16815 GOTO 5
  IF ~Dead("RIELTAR")~ THEN REPLY @11843 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @16811
  IF ~~ THEN REPLY @16812 GOTO 4
  IF ~~ THEN REPLY @16813 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @16816
  IF ~~ THEN DO ~ForceSpell(Player1,SAREVOK_STRIKE)
Wait(2)
Kill(Player1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @16817
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

IF ~True()~ THEN BEGIN 6
  SAY @11271
  IF ~~ THEN EXIT
END
