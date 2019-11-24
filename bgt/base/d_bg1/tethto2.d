BEGIN ~tethto2~

IF WEIGHT #1 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @16803
  IF ~~ THEN DO ~SetGlobal("PartyCured","GLOBAL",1)~ EXIT
END

IF WEIGHT #0 ~Global("Arrested","GLOBAL",1)~ THEN BEGIN 1
  SAY @16804
  IF ~Global("TalkedToKoveras","GLOBAL",1)~ THEN REPLY @16808 GOTO 2
  IF ~~ THEN REPLY @16809 GOTO 3
  IF ~Dead("RIELTAR")~ THEN REPLY @11845 GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @16807
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @16893
  IF ~~ THEN REPLY @9747 DO ~EndCutSceneMode()
SetGlobal("PartyCured","GLOBAL",1)
SetGlobal("Teth","GLOBAL",1)
ActionOverride(Player1,LeaveAreaLUAPanic("AR6513","",[133.278],12))
ActionOverride(Player1,LeaveAreaLUA("AR6513","",[133.278],12))
ActionOverride(Player1,SetMasterArea("AR6526"))
ActionOverride(Player2,LeaveAreaLUA("AR6513","",[179.225],12))
ActionOverride(Player3,LeaveAreaLUA("AR6513","",[248.199],12))
ActionOverride(Player4,LeaveAreaLUA("AR6513","",[323.199],12))
ActionOverride(Player5,LeaveAreaLUA("AR6513","",[361.224],12))
ActionOverride(Player6,LeaveAreaLUA("AR6513","",[192.344],12))
~ EXIT
  IF ~~ THEN REPLY @9748 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @9749
  IF ~~ THEN DO ~EndCutSceneMode()
SetGlobal("Teth","GLOBAL",1)
ActionOverride(Player1,LeaveAreaLUAPanic("AR6513","",[133.278],12))
ActionOverride(Player1,LeaveAreaLUA("AR6513","",[133.278],12))
ActionOverride(Player1,SetMasterArea("AR6526"))
ActionOverride(Player2,LeaveAreaLUA("AR6513","",[179.225],12))
ActionOverride(Player3,LeaveAreaLUA("AR6513","",[248.199],12))
ActionOverride(Player4,LeaveAreaLUA("AR6513","",[323.199],12))
ActionOverride(Player5,LeaveAreaLUA("AR6513","",[361.224],12))
ActionOverride(Player6,LeaveAreaLUA("AR6513","",[192.344],12))
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @11844
  IF ~~ THEN GOTO 3
END
