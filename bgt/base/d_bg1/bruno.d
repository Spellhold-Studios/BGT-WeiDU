BEGIN ~bruno~

IF WEIGHT #2 ~True()~ THEN BEGIN 0
  SAY @1650
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY @1651
  IF ~~ THEN DO ~ActionOverride("Kestor",Enemy())
ActionOverride("Rieltar",Enemy())
ActionOverride("Tuth",Enemy())
Enemy()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 2
  SAY @6070
  IF ~~ THEN UNSOLVED_JOURNAL @310136 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8952
  IF ~~ THEN EXIT
END
