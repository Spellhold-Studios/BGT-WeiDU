BEGIN ~innke3~

IF ~NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)~ THEN BEGIN 0
  SAY @8352
  IF ~~ THEN REPLY @15404 DO ~StartStore("inn0105",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15405 EXIT
END

IF ~NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)~ THEN BEGIN 1
  SAY @8353
  IF ~~ THEN REPLY @15406 DO ~StartStore("inn0105",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15408 EXIT
END

IF ~True()~ THEN BEGIN 2
  SAY @8354
  IF ~~ THEN REPLY @15409 DO ~StartStore("inn0105",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15410 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8355
  IF ~~ THEN DO ~StartStore("inn0105",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8357
  IF ~~ THEN EXIT
END
