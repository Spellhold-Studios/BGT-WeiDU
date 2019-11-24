BEGIN ~hephis~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @19505
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @19506
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN 2
  SAY @19507
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(3)~ THEN BEGIN 3
  SAY @19508
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(4)~ THEN BEGIN 4
  SAY @19509
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
