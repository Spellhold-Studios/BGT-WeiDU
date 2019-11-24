BEGIN ~kestor~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @17430
  IF ~~ THEN REPLY @17431 GOTO 1
  IF ~~ THEN REPLY @17432 GOTO 3
  IF ~~ THEN REPLY @17433 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @17434
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 2
  SAY @17435
  IF ~~ THEN DO ~ActionOverride("Bruno",Enemy())
ActionOverride("Rieltar",Enemy())
ActionOverride("Tuth",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @17436
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @17437
  IF ~~ THEN EXIT
END
