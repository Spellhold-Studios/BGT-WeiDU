BEGIN ~denak~

IF WEIGHT #1 ~True()~ THEN BEGIN 0
  SAY @18232
  IF ~~ THEN REPLY @18233 GOTO 1
  IF ~~ THEN REPLY @18234 GOTO 2
  IF ~~ THEN REPLY @18235 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @18236
  IF ~~ THEN DO ~ActionOverride("BRENDAN",Enemy())
ActionOverride("LASALA",Enemy())
ActionOverride("DIANA",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18237
  IF ~~ THEN DO ~ActionOverride("BRENDAN",Enemy())
ActionOverride("LASALA",Enemy())
ActionOverride("DIANA",Enemy())
Enemy()~ EXIT
END

IF WEIGHT #0 ~InParty("EDWIN")~ THEN BEGIN 3
  SAY @18770
  IF ~~ THEN DO ~ActionOverride("BRENDAN",EscapeArea())
ActionOverride("LASALA",EscapeArea())
ActionOverride("DIANA",EscapeArea())
EscapeArea()~ EXIT
END
