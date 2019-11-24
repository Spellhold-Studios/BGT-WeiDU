BEGIN ~fcook2~

IF ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)
Gender(LastTalkedToBy,MALE)~ THEN BEGIN 0
  SAY @920
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)~ THEN BEGIN 1
  SAY @921
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @6149
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8991
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)~ THEN BEGIN 4
  SAY @10674
  IF ~~ THEN EXIT
END
