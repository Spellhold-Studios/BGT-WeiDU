BEGIN ~telman~

IF ~~ THEN BEGIN 0
  SAY @1118
  IF ~~ THEN EXTERN ~SONNER~ 0
END

IF ~~ THEN BEGIN 1
  SAY @1119
  IF ~~ THEN EXTERN ~SONNER~ 4
END

IF ~~ THEN BEGIN 2
  SAY @1120
  IF ~~ THEN REPLY @1801 DO ~IncrementGlobal("FisherPrice","GLOBAL",20)~ UNSOLVED_JOURNAL @310087 EXTERN ~SONNER~ 5
  IF ~~ THEN REPLY @1802 SOLVED_JOURNAL @310088 EXTERN ~JEBADO~ 4
END

IF WEIGHT #5 ~Global("HelpJebadoh","GLOBAL",1)~ THEN BEGIN 3
  SAY @1121
  IF ~Dead("Tenya")~ THEN REPLY @1803 GOTO 7
  IF ~Global("ReturnedToTelman","GLOBAL",0)
Global("TenyaStory","GLOBAL",1)~ THEN REPLY @1804 DO ~SetGlobal("ReturnedToTelman","GLOBAL",1)~ GOTO 4
  IF ~Global("ReturnedToTelman","GLOBAL",0)
Global("TenyaStory","GLOBAL",1)~ THEN REPLY @1805 DO ~SetGlobal("ReturnedToTelman","GLOBAL",1)~ UNSOLVED_JOURNAL @310093 GOTO 5
  IF ~~ THEN REPLY @1806 EXTERN ~SONNER~ 13
  IF ~~ THEN REPLY @16577 GOTO 14
END

IF ~~ THEN BEGIN 4
  SAY @1122
  IF ~~ THEN EXTERN ~SONNER~ 11
END

IF ~~ THEN BEGIN 5
  SAY @1123
  IF ~~ THEN EXTERN ~JEBADO~ 5
END

IF ~~ THEN BEGIN 6
  SAY @1124
  IF ~~ THEN EXTERN ~JEBADO~ 6
END

IF ~~ THEN BEGIN 7
  SAY @1125
  IF ~~ THEN EXTERN ~SONNER~ 18
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 8
  SAY @6924
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @9004
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 10
  SAY @768
  IF ~~ THEN DO ~ActionOverride("Jebadoh",SetNumTimesTalkedTo(1))
ActionOverride("Sonner",SetNumTimesTalkedTo(1))~ EXTERN ~JEBADO~ 0
END

IF WEIGHT #3 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 11
  SAY @866
  IF ~~ THEN DO ~ActionOverride("Jebadoh",SetNumTimesTalkedTo(1))
ActionOverride("Sonner",SetNumTimesTalkedTo(1))~ EXTERN ~JEBADO~ 1
END

IF WEIGHT #4 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 12
  SAY @959
  IF ~~ THEN DO ~ActionOverride("Jebadoh",SetNumTimesTalkedTo(1))
ActionOverride("Sonner",SetNumTimesTalkedTo(1))~ EXTERN ~JEBADO~ 2
END

IF WEIGHT #6 ~Global("HelpJebadoh","GLOBAL",2)~ THEN BEGIN 13
  SAY @1032
  IF ~~ THEN EXTERN ~SONNER~ 9
END

IF ~~ THEN BEGIN 14
  SAY @16578
  IF ~~ THEN EXIT
END
