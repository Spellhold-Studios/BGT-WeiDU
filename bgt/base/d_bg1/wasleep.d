BEGIN ~wasleep~

IF ~RandomNum(2,1)~ THEN BEGIN 0
  SAY @10167
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~RandomNum(2,2)~ THEN BEGIN 1
  SAY @10168
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
