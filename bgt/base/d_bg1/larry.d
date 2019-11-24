BEGIN ~larry~

IF ~True()~ THEN BEGIN 0
  SAY @18464
  IF ~~ THEN REPLY @18469 GOTO 1
  IF ~~ THEN REPLY @18472 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @18474
  IF ~~ THEN DO ~ActionOverride("DARRYL2",EscapeArea())
ActionOverride("DARRYL",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18475
  IF ~~ THEN DO ~GiveItem("SCRLAUTO",LastTalkedToBy)
ActionOverride("DARRYL2",EscapeArea())
ActionOverride("DARRYL",EscapeArea())
EscapeArea()~ EXIT
END
