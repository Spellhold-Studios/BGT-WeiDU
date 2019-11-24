BEGIN ~jebado~

IF WEIGHT #2 ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1111
  IF ~~ THEN DO ~ActionOverride("Sonner",SetNumTimesTalkedTo(1))
ActionOverride("Telman",SetNumTimesTalkedTo(1))~ EXTERN ~SONNER~ 1
END

IF WEIGHT #3 ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @1112
  IF ~~ THEN DO ~ActionOverride("Sonner",SetNumTimesTalkedTo(1))
ActionOverride("Telman",SetNumTimesTalkedTo(1))~ EXTERN ~SONNER~ 2
END

IF WEIGHT #4 ~ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
NumTimesTalkedTo(0)~ THEN BEGIN 2
  SAY @1113
  IF ~~ THEN DO ~ActionOverride("Sonner",SetNumTimesTalkedTo(1))
ActionOverride("Telman",SetNumTimesTalkedTo(1))~ EXTERN ~SONNER~ 3
END

IF ~~ THEN BEGIN 3
  SAY @1114
  IF ~~ THEN EXTERN ~TELMAN~ 1
END

IF ~~ THEN BEGIN 4
  SAY @1115
  IF ~~ THEN EXTERN ~SONNER~ 7
END

IF ~~ THEN BEGIN 5
  SAY @1116
  IF ~~ THEN EXTERN ~SONNER~ 12
END

IF ~~ THEN BEGIN 6
  SAY @1117
  IF ~~ THEN EXTERN ~SONNER~ 14
END

IF ~~ THEN BEGIN 7
  SAY @6278
  IF ~~ THEN DO ~ActionOverride("Telman",EscapeArea())
ActionOverride("Sonner",EscapeArea())
EscapeArea()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 8
  SAY @6923
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @9002
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~Global("HelpJebadoh","GLOBAL",0)~ THEN BEGIN 10
  SAY @962
  IF ~~ THEN EXTERN ~SONNER~ 9
END

IF WEIGHT #6 ~Global("HelpJebadoh","GLOBAL",1)~ THEN BEGIN 11
  SAY @1034
  IF ~~ THEN EXTERN ~TELMAN~ 3
END
