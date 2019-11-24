BEGIN ~lachlu~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @15479
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @15481
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN 2
  SAY @15482
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(3)~ THEN BEGIN 3
  SAY @15483
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
