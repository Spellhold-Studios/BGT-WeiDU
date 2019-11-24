BEGIN ~prat~

IF WEIGHT #2 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7739
  IF ~~ THEN REPLY @7743 GOTO 1
  IF ~~ THEN REPLY @7744 GOTO 2
  IF ~~ THEN REPLY @7745 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @7740
  IF ~~ THEN DO ~ActionOverride("SAKUL",Enemy())
ActionOverride("ROB",Enemy())
ActionOverride("TAM",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7741
  IF ~~ THEN DO ~ActionOverride("SAKUL",Enemy())
ActionOverride("ROB",Enemy())
ActionOverride("TAM",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7742
  IF ~~ THEN DO ~ActionOverride("SAKUL",Enemy())
ActionOverride("ROB",Enemy())
ActionOverride("TAM",Enemy())
Enemy()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 4
  SAY @7746
  IF ~~ THEN UNSOLVED_JOURNAL @310138 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9112
  IF ~~ THEN EXIT
END
