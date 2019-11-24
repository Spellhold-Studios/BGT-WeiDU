BEGIN ~osmadi~

IF ~True()~ THEN BEGIN 0
  SAY @19536
  IF ~~ THEN REPLY @19538 GOTO 1
  IF ~~ THEN REPLY @19540 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @19537
  IF ~~ THEN DO ~CreateCreature("CORSONE",[4677.625],4)
CreateCreature("BEARCA",[4371.625],6)
CreateCreature("BEARCA",[4122.648],10)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @19541
  IF ~~ THEN DO ~CreateCreature("CORSONE",[4677.625],3)
CreateCreature("BEARCA",[4371.625],6)
CreateCreature("BEARCA",[4122.648],12)
Enemy()~ EXIT
END
