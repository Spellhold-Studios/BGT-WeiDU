BEGIN ~bgviconi~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @519
  IF ~~ THEN REPLY @529 GOTO 2
  IF ~~ THEN REPLY @530 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @520
  IF ~~ THEN DO ~CreateCreature("FLAM2",[605.901],14)
ActionOverride("FlamingFist2",SetInterrupt(FALSE))
ActionOverride("FlamingFist2",ChangeAIScript("INITDLG",OVERRIDE))
ActionOverride("FlamingFist2",MoveToPoint([507.806]))
ActionOverride("FlamingFist2",SetInterrupt(TRUE))
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @521
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @522
  IF ~~ THEN REPLY @542 EXTERN ~FLAM2~ 3
  IF ~~ THEN REPLY @543 EXTERN ~FLAM2~ 2
  IF ~~ THEN REPLY @544 EXTERN ~FLAM2~ 1
END

IF ~~ THEN BEGIN 4
  SAY @523
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~Dead("FlamingFist2")
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 5
  SAY @524
  IF ~~ THEN REPLY @531 GOTO 8
  IF ~~ THEN REPLY @532 GOTO 9
  IF ~~ THEN REPLY @533 GOTO 8
END

IF ~Dead("FlamingFist2")
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 6
  SAY @525
  IF ~~ THEN REPLY @534 GOTO 8
  IF ~~ THEN REPLY @535 GOTO 9
  IF ~~ THEN REPLY @536 GOTO 8
END

IF ~Dead("FlamingFist2")
ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)~ THEN BEGIN 7
  SAY @526
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @527
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @528
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 10
  SAY @6425
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 11
  SAY @6428
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 12
  SAY @3223
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~False()~ THEN BEGIN 13
  SAY @13756
  IF ~~ THEN DO ~LeaveParty()
SetDialog("viconip")~ EXIT
END