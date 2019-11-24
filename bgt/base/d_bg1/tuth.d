BEGIN ~tuth~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @17438
  IF ~~ THEN REPLY @17439 GOTO 1
  IF ~~ THEN REPLY @17440 GOTO 3
  IF ~~ THEN REPLY @17444 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @17441
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 2
  SAY @17442
  IF ~~ THEN DO ~ActionOverride("Kestor",Enemy())
ActionOverride("Rieltar",Enemy())
ActionOverride("Bruno",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @17443
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @17445
  IF ~~ THEN EXIT
END
