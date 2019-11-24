BEGIN ~brage~

IF ~Global("BrageRiddle","GLOBAL",0)~ THEN BEGIN 0
  SAY @731
  IF ~~ THEN REPLY @5074 DO ~SetGlobal("MetBrage","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @5076 DO ~SetGlobal("MetBrage","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @15472 DO ~SetGlobal("MetBrage","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @15473 DO ~SetGlobal("MetBrage","GLOBAL",1)
SetGlobal("BrageRiddle","GLOBAL",1)~ GOTO 2
  IF ~~ THEN REPLY @15474 DO ~SetGlobal("MetBrage","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @15475 DO ~SetGlobal("MetBrage","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @15476 DO ~SetGlobal("MetBrage","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @15477 DO ~SetGlobal("MetBrage","GLOBAL",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @732
  IF ~~ THEN DO ~SetGlobal("BrageRiddle","GLOBAL",3)
Enemy()~ UNSOLVED_JOURNAL @310058 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @733
  IF ~!Dead("NALIN")~ THEN REPLY @5079 GOTO 4
  IF ~~ THEN REPLY @5080 GOTO 5
END

IF ~~ THEN BEGIN 3
  SAY @734
  IF ~~ THEN UNSOLVED_JOURNAL @310059 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @735
  IF ~~ THEN DO ~DestroyItem("SW2H01")
GiveItem("SW2H03",LastTalkedToBy)
GiveItem("POTN12",LastTalkedToBy)
AddexperienceParty(1000)
ReputationInc(1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("Bragecut")~ UNSOLVED_JOURNAL @310059 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @736
  IF ~~ THEN DO ~Enemy()~ UNSOLVED_JOURNAL @310058 EXIT
END

IF ~Global("BrageRiddle","GLOBAL",1)~ THEN BEGIN 6
  SAY @737
  IF ~~ THEN DO ~SetGlobal("BrageRiddle","GLOBAL",2)~ EXTERN ~NALIN~ 3
END

IF ~~ THEN BEGIN 7
  SAY @738
  IF ~~ THEN EXTERN ~NALIN~ 4
END

IF ~~ THEN BEGIN 8
  SAY @5744
  IF ~~ THEN EXIT
END

IF ~Global("BrageRiddle","GLOBAL",2)~ THEN BEGIN 9
  SAY @16459
  IF ~~ THEN EXIT
END
