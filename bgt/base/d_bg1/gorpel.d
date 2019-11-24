BEGIN ~gorpel~

IF WEIGHT #1 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @19535
  IF ~~ THEN REPLY @19539 GOTO 1
  IF ~~ THEN REPLY @19543 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @19545
  IF ~~ THEN DO ~CreateCreature("GRETEK",[743.1041],0)
CreateCreature("PARGUS",[681.1029],0)
CreateCreature("WILF",[775.1135],0)
CreateCreature("NADER",[845.992],0)
CreateCreature("ARLIN",[812.1057],0)
CreateCreature("CATURA",[376.1045],0)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @19554
  IF ~~ THEN DO ~CreateCreature("GRETEK",[743.1041],0)
CreateCreature("PARGUS",[681.1029],0)
CreateCreature("WILF",[775.1135],0)
CreateCreature("NADER",[845.992],0)
CreateCreature("ARLIN",[812.1057],0)
CreateCreature("CATURA",[376.1045],0)
ActionOverride("FARLUCK",EscapeArea())
ActionOverride("TURPIN",EscapeArea())
ActionOverride("NELIK",EscapeArea())
EscapeArea()~ EXIT
END

IF WEIGHT #0 ~Dead("GRETEK")
Dead("PARGUS")
Dead("WILF")
Dead("NADER")
Dead("ARLIN")
Dead("CATURAK")~ THEN BEGIN 3
  SAY @19610
  IF ~~ THEN DO ~ActionOverride("FARLUCK",EscapeArea())
ActionOverride("TURPIN",EscapeArea())
ActionOverride("NELIK",EscapeArea())
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @19611
  IF ~~ THEN EXIT
END
