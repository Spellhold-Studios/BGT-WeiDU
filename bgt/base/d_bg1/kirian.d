BEGIN ~kirian~

IF ~True()~ THEN BEGIN 0
  SAY @18490
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @18495
  IF ~~ THEN REPLY @18496 GOTO 4
  IF ~~ THEN REPLY @18501 GOTO 3
  IF ~~ THEN REPLY @18503 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @18505
  IF ~~ THEN DO ~ActionOverride("LINDIN",EscapeArea())
ActionOverride("BAERIN",EscapeArea())
ActionOverride("PETER",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @18511
  IF ~~ THEN REPLY @18515 GOTO 5
  IF ~~ THEN REPLY @18517 GOTO 2
END

IF ~~ THEN BEGIN 4
  SAY @18520
  IF ~~ THEN REPLY @18523 GOTO 3
  IF ~~ THEN REPLY @18524 GOTO 2
END

IF ~~ THEN BEGIN 5
  SAY @18525
  IF ~~ THEN DO ~ActionOverride("LINDIN",Enemy())
ActionOverride("BAERIN",Enemy())
ActionOverride("PETER",Enemy())
Enemy()~ EXIT
END
