BEGIN ~canto~

IF ~True()~ THEN BEGIN 0
  SAY @18447
  IF ~~ THEN REPLY @18454 GOTO 1
  IF ~~ THEN REPLY @18458 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @18459
  IF ~~ THEN DO ~ActionOverride("DRIBBEN",Enemy())
ActionOverride("BILLY",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18461
  IF ~~ THEN DO ~TakePartyGold(300000)
ActionOverride("DRIBBEN",EscapeArea())
ActionOverride("BILLY",EscapeArea())
EscapeArea()~ EXIT
END
