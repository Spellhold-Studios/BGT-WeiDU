BEGIN ~brilla~

IF WEIGHT #2 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7456
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @7465 GOTO 1
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @7466 GOTO 2
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN REPLY @7467 GOTO 3
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)~ THEN REPLY @7468 GOTO 4
  IF ~~ THEN REPLY @7469 GOTO 5
  IF ~ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
Gender(LastTalkedToBy,MALE)~ THEN REPLY @7470 GOTO 6
  IF ~ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
Gender(LastTalkedToBy,MALE)~ THEN REPLY @7471 GOTO 7
END

IF ~~ THEN BEGIN 1
  SAY @7457
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7458
  IF ~~ THEN DO ~CreateCreature("GUARD",[1482.933],0)
CreateCreature("GUARD",[1482.933],0)
CreateCreature("GUARD",[1482.933],0)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7459
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @7460
  IF ~~ THEN DO ~CreateCreature("GUARD",[1482.933],0)
CreateCreature("GUARD",[1482.933],0)
CreateCreature("GUARD",[1482.933],0)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @7461
  IF ~~ THEN DO ~CreateCreature("GUARD",[1482.933],0)
CreateCreature("GUARD",[1482.933],0)
CreateCreature("GUARD",[1482.933],0)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @7462
  IF ~~ THEN DO ~CreateCreature("GUARD",[1482.933],0)
CreateCreature("GUARD",[1482.933],0)
CreateCreature("GUARD",[1482.933],0)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @7463
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~NumTimesTalkedTo(1)~ THEN BEGIN 8
  SAY @7464
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 9
  SAY @7472
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @8951
  IF ~~ THEN EXIT
END
