BEGIN ~ithmee~

IF ~~ THEN BEGIN 0
  SAY @3008
  IF ~~ THEN EXTERN ~HELSHA~ 0
END

IF ~~ THEN BEGIN 1
  SAY @3009
  IF ~~ THEN UNSOLVED_JOURNAL @310386 EXTERN ~HELSHA~ 1
END

IF ~~ THEN BEGIN 2
  SAY @3010
  IF ~~ THEN EXTERN ~HELSHA~ 2
END

IF ~~ THEN BEGIN 3
  SAY @3011
  IF ~~ THEN EXTERN ~HELSHA~ 3
END

IF ~~ THEN BEGIN 4
  SAY @3012
  IF ~~ THEN DO ~CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
ActionOverride("HELSHARA",Enemy())
ActionOverride("DELORNA",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @3013
  IF ~~ THEN EXTERN ~HELSHA~ 4
END

IF ~Dead("Helshara")~ THEN BEGIN 6
  SAY @3014
  IF ~~ THEN DO ~GiveItem("MISC69",LastTalkedToBy)
GiveItem("MISC70",LastTalkedToBy)
GiveItem("MISC71",LastTalkedToBy)
SetGlobal("HelpAlatos","GLOBAL",1)~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 7
  SAY @7095
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @9116
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 9
  SAY @2820
  IF ~~ THEN DO ~ActionOverride("Helshara",SetNumTimesTalkedTo(1))~ EXTERN ~HELSHA~ 8
END
