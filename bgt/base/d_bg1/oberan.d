BEGIN ~oberan~

IF WEIGHT #2 ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 0
  SAY @8209
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @8210
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8211
  IF ~~ THEN DO ~CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8212
  IF ~~ THEN DO ~CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
CreateCreature("GUARD",[0.0],0)
~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 4
  SAY @9121
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9122
  IF ~~ THEN EXIT
END
