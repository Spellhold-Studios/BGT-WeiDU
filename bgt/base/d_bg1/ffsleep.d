BEGIN ~ffsleep~

IF ~RandomNum(4,1)~ THEN BEGIN 0
  SAY @10163
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN 1
  SAY @10164
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~RandomNum(4,3)~ THEN BEGIN 2
  SAY @10169
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN 3
  SAY @10170
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
