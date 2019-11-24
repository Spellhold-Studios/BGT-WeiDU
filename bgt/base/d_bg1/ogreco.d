BEGIN ~ogreco~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @15754
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @15753
  IF ~~ THEN DO ~Enemy()~ EXIT
END
