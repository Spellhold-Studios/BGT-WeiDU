BEGIN ~gretek~

IF ~True()~ THEN BEGIN 0
  SAY @19561
  IF ~~ THEN REPLY @19562 GOTO 1
  IF ~~ THEN REPLY @19563 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @19564
  IF ~~ THEN DO ~ActionOverride("PARGUS",Enemy())
ActionOverride("WILF",Enemy())
ActionOverride("NADER",Enemy())
ActionOverride("ARLIN",Enemy())
ActionOverride("CATURAK",Enemy())
Enemy()
Shout(111)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @19565
  IF ~~ THEN DO ~ActionOverride("PARGUS",Enemy())
ActionOverride("WILF",Enemy())
ActionOverride("NADER",Enemy())
ActionOverride("ARLIN",Enemy())
ActionOverride("CATURAK",Enemy())
Enemy()
Shout(111)~ EXIT
END
