BEGIN ~lamalh~

IF ~True()~ THEN BEGIN 0
  SAY @18181
  IF ~~ THEN REPLY @18182 GOTO 1
  IF ~~ THEN REPLY @18183 GOTO 2
  IF ~~ THEN REPLY @18184 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @18185
  IF ~~ THEN DO ~ActionOverride("ZEELA",Enemy())
ActionOverride("TELKA",Enemy())
ActionOverride("MANEIRA",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18186
  IF ~~ THEN DO ~ActionOverride("ZEELA",Enemy())
ActionOverride("TELKA",Enemy())
ActionOverride("MANEIRA",Enemy())
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @18187
  IF ~~ THEN DO ~ActionOverride("ZEELA",Enemy())
ActionOverride("TELKA",Enemy())
ActionOverride("MANEIRA",Enemy())
Enemy()~ EXIT
END
