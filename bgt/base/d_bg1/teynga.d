BEGIN ~teynga~

IF ~True()~ THEN BEGIN 0
  SAY @18444
  IF ~~ THEN REPLY @18448 GOTO 2
  IF ~~ THEN REPLY @18450 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @18451
  IF ~~ THEN DO ~ActionOverride("JEMBY",Enemy())
ActionOverride("ZEKAR",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18452
  IF ~~ THEN REPLY @18453 GOTO 1
  IF ~~ THEN REPLY @18455 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @18457
  IF ~~ THEN DO ~TakePartyGold(300000)
ActionOverride("JEMBY",EscapeArea())
ActionOverride("ZEKAR",EscapeArea())
EscapeArea()~ EXIT
END
