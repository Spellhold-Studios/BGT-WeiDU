BEGIN ~ftobe5~

IF WEIGHT #2 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(),NEUTRAL_UPPER)~ THEN BEGIN 0
  SAY @8142
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(),FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @8143
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(),NEUTRAL_LOWER)~ THEN BEGIN 2
  SAY @8144
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~NumTimesTalkedTo(1)~ THEN BEGIN 3
  SAY @8145
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)
HasItem("RING01",Myself)
Global("A6Charmed","LOCALS",0)~ THEN BEGIN 4
  SAY @8146
  IF ~~ THEN DO ~GiveItem("RING01",LastTalkedToBy)
SetGlobal("A6Charmed","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9063
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~NumTimesTalkedTo(2)~ THEN BEGIN 6
  SAY @15755
  IF ~~ THEN DO ~CreateCreature("FLAMHUSB",[490.458],0)~ EXIT
END
