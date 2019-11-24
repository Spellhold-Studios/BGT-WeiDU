BEGIN ~emerso~

IF WEIGHT #3 ~ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)~ THEN BEGIN 0
  SAY @766
  IF ~~ THEN DO ~SetGlobal("EmersonPermission","GLOBAL",1)
SetGlobal("SpokeToEmerson","GLOBAL",1)~ UNSOLVED_JOURNAL @310074 EXIT
END

IF WEIGHT #4 ~ReactionLT(LastTalkedToBy(),FRIENDLY_LOWER)~ THEN BEGIN 1
  SAY @767
  IF ~~ THEN DO ~SetGlobal("EmersonPermission","GLOBAL",1)
SetGlobal("SpokeToEmerson","GLOBAL",1)~ UNSOLVED_JOURNAL @310075 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @6133
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @6134
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 4
  SAY @6135
  IF ~~ THEN DO ~SetGlobal("EmersonPermission","GLOBAL",1)
SetGlobal("SpokeToEmerson","GLOBAL",1)~ UNSOLVED_JOURNAL @310076 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8982
  IF ~~ THEN EXIT
END
