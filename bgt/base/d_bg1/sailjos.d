BEGIN ~sailjos~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @19629
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @19630
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN 2
  SAY @19631
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(3)~ THEN BEGIN 3
  SAY @19632
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 4
  SAY @19633
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
