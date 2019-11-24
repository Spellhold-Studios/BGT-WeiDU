BEGIN ~vax~

IF ~True()~ THEN BEGIN 0
  SAY @18276
  IF ~~ THEN REPLY @18281 GOTO 1
  IF ~~ THEN REPLY @18284 GOTO 2
  IF ~~ THEN REPLY @18286 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @18287
  IF ~~ THEN DO ~ActionOverride("ZAL",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18290
  IF ~~ THEN DO ~TakePartyGold(250000)
ActionOverride("ZAL",EscapeArea())
EscapeArea()~ EXIT
END
