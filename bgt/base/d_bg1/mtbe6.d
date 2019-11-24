BEGIN ~mtbe6~

IF ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)~ THEN BEGIN 0
  SAY @8122
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(),FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @8123
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)~ THEN BEGIN 2
  SAY @8124
  IF ~~ THEN EXIT
END

IF ~GlobalTimerExpired("Galteran","GLOBAL")~ THEN BEGIN 3
  SAY @8127
  IF ~~ THEN DO ~SetGlobalTimer("Galteran","GLOBAL",30)~ EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 4
  SAY @8128
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9047
  IF ~~ THEN EXIT
END
