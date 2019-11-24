BEGIN ~raemon~

IF ~True()~ THEN BEGIN 0
  SAY @20140
  IF ~~ THEN REPLY @20142 GOTO 2
  IF ~~ THEN REPLY @20143 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @20146
  IF ~~ THEN DO ~ActionOverride("HAKT",Enemy())
ActionOverride("BRITIK",Enemy())
ActionOverride("VENKT",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @20194
  IF ~~ THEN DO ~ActionOverride("HAKT",Enemy())
ActionOverride("BRITIK",Enemy())
ActionOverride("VENKT",Enemy())
Enemy()~ EXIT
END
