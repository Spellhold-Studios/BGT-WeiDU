BEGIN ~krumm~

IF ~~ THEN BEGIN 0
  SAY @712
  IF ~~ THEN REPLY @5053 EXTERN ~CALDO~ 4
  IF ~~ THEN REPLY @5054 EXTERN ~CALDO~ 8
END

IF ~~ THEN BEGIN 1
  SAY @713
  IF ~~ THEN DO ~ActionOverride("Caldo",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @714
  IF ~~ THEN EXTERN ~DRYAD~ 5
END

IF ~~ THEN BEGIN 3
  SAY @715
  IF ~~ THEN DO ~ActionOverride("Caldo",Enemy())
Enemy()~ EXIT
END
