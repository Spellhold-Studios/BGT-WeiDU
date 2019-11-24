BEGIN ~amsleep~

IF ~RandomNum(2,1)~ THEN BEGIN 0
  SAY @10165
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~RandomNum(2,2)~ THEN BEGIN 1
  SAY @10166
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
