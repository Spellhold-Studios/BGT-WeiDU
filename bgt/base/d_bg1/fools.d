BEGIN ~fools~

IF WEIGHT #2 ~True()~ THEN BEGIN 0
  SAY @19560
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~Dead("GORPEL")~ THEN BEGIN 1
  SAY @19612
  IF ~~ THEN DO ~ActionOverride("FARLUCK",EscapeArea())
ActionOverride("TURPIN",EscapeArea())
ActionOverride("NELIK",EscapeArea())~ EXIT
END

IF WEIGHT #1 ~Dead("GRETEK")
Dead("PARGUS")
Dead("WILF")
Dead("NADER")
Dead("ARLIN")
Dead("CATURAK")~ THEN BEGIN 2
  SAY @19613
  IF ~~ THEN DO ~ActionOverride("FARLUCK",EscapeArea())
ActionOverride("TURPIN",EscapeArea())
ActionOverride("NELIK",EscapeArea())
ActionOverride("GORPEL",EscapeArea())~ EXIT
END
